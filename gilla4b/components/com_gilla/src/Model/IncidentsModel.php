<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Site\Model;

defined('_JEXEC') or die;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\MVC\Model\ListModel;
// use Joomla\Database\ParameterType;
// use Joomla\Registry\Registry;

/**
 * Gilla component incidents model.
 *
 * @since  1.6
 */
class IncidentsModel extends ListModel
{
	/**
	 * Constructor.
	 *
	 * @param   array  $config   An optional associative array of configuration settings.
	 *
	 * @see     \JController
	 * @since   1.6
	 */
	public function __construct($config = array())
	{
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'numero', 'a.numero',
				'types', 't.type',
				'emplacements', 'e.emplacement',
				'users', 'u.name',
				'date_heure_ouverture', 'a.date_heure_ouverture',
			);
		}

		parent::__construct($config);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @param   string  $ordering   An optional ordering field.
	 * @param   string  $direction  An optional direction (asc|desc).
	 *
	 * @return  void
	 *
	 * @since   4.0.0
	 */
	protected function populateState($ordering = null, $direction = null)
	{
		$app = Factory::getApplication();
		$params = ComponentHelper::getParams('com_gilla');

		// List state information
		$limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->get('list_limit'), 'uint');
		$this->setState('list.limit', $limit);

		$limitstart = $app->input->get('limitstart', 0, 'uint');
		$this->setState('list.start', $limitstart);

		$orderCol = $app->input->get('filter_order', 'ordering');

		if (!in_array($orderCol, $this->filter_fields)) {
			$orderCol = 'a.date_heure_ouverture';
		}
		$this->setState('list.ordering', $orderCol);

		$listOrder = $app->input->get('filter_order_Dir', 'ASC');

		if (!in_array(strtoupper($listOrder), ['ASC', 'DESC', ''])) {
			$listOrder = 'ASC';
		}
		$this->setState('list.direction', $listOrder);

		$user = Factory::getUser();

		if ((!$user->authorise('core.edit.state', 'com_gilla')) && (!$user->authorise('core.edit', 'com_gilla'))) {
			// Limit to published for people who can't edit or edit.state.
			$this->setState('filter.published', 1);

			// Filter by start and end dates.
			$this->setState('filter.publish_date_heure_ouverture', true);
		}

		$this->setState('filter.language', Multilanguage::isEnabled());

		// Load the parameters.
		$this->setState('params', $params);

		// Store filter_search.
		$search = $app->input->getString('filter_search');
		$this->setState('filter.search', $search);

		// Store Itemid (Incidents menu link).
		$Itemid = $app->input->getInt('Itemid');
		$this->setState('Itemid', $Itemid);

		// Store selector (GILLA list selector).
		$selector = $app->input->getString('selector');
		$this->setState('selector', $selector);
	}

	/**
	 * Method to get a store id based on model configuration state.
	 *
	 * This is necessary because the model is used by the component and
	 * different modules that might need different sets of data or different
	 * ordering requirements.
	 *
	 * @param   string  $id  A prefix for the store id.
	 *
	 * @return  string  A store id.
	 *
	 * @since   1.6
	 */
	protected function getStoreId($id = '')
	{
		// Compile the store id.

		return parent::getStoreId($id);
	}

	/**
	 * Get the master query for retrieving a list of walks subject to the model state.
	 *
	 * @return  \JDatabaseQuery
	 *
	 * @since   1.6
	 */
	protected function getListQuery()
	{
		// Get the current user for authorisation checks.
		$user = Factory::getUser();

		// Create a new query object.
		$db    = $this->getDbo();
		$query = $db->getQuery(true);

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				'a.*
				')
		);
		$query->from('#__gilla_incidents AS a');
		$query->select('t.type')->join('LEFT','#__gilla_types AS t ON a.types_id = t.id');
		$query->select('u.name')->join('LEFT','#__users AS u ON a.users_id = u.id');
		$query->select('e.emplacement')->join('LEFT','#__gilla_emplacements AS e ON a.emplacements_id = e.id');
		
		
		

		$params      = $this->getState('params');

		// Filter by selector (GILLA list selector).
		$selector = $this->getState('selector');
		if (!empty($selector))
		{
			if ($selector == "mien")
			{
				$query->where('(a.created_by = ' . $user->id . ')');
			}
			elseif ($selector == "ouvert")
			{
				$query->where('a.date_heure_fermeture IS NULL');
			}
			elseif ($selector == "affecte")
			{
				$query->join('INNER','#__gilla_affectations AS af ON af.types_id = t.id');
				$query->join('INNER','#__gilla_agents AS ag ON af.agents_id = ag.id');
				$query->where('a.date_heure_fermeture IS NULL'); // A changer par nom pris_en_charge
				// Requete a terminé a.id NOT IN (SELECT a.id FROM gilla4b_gilla_prise_en_charges
			}
		}

		// Filter by published state.
		$query->where('(' . $db->quoteName('a.state') . ' = 1)');

		// Filter by search in title.
		$search = $this->getState('filter.search');

		if (!empty($search))
		{
			$search = $db->quote('%' . str_replace(' ', '%', $db->escape(trim($search), true) . '%'));
			// Compile search clauses.
			$searches	= array();
			$searches[]	= 'a.numero LIKE '.$search;
			$searches[]	= 't.type LIKE '.$search;
			$searches[]	= 'e.emplacement LIKE '.$search;
			$searches[]	= 'u.name LIKE '.$search;
			$searches[]	= 'a.date_heure_ouverture LIKE '.$search;
			// Add search clauses to query.
			$query->where('('.implode(' OR ', $searches).')');
		}

		// Add the list ordering clause.
		$orderCol  = $this->state->get('list.ordering', 'a.date_heure_ouverture');
		$orderDirn = $this->state->get('list.direction', 'ASC');

		$query->order($db->escape($orderCol) . ' ' . $db->escape($orderDirn));

		//echo nl2br(str_replace('#__','gilla4b_',$query));		// TEST/DEBUG
		return $query;
	}

	/**
	 * Method to get a list of items.
	 *
	 * Overridden to inject convert the attribs field into a \JParameter object.
	 *
	 * @return  mixed  An array of objects on success, false on failure.
	 *
	 * @since   1.6
	 */
	public function getItems()
	{
		$items  = parent::getItems();
		return $items;
	}

	/**
	 * Method to get the starting number of items for the data set.
	 *
	 * @return  integer  The starting number of items available in the data set.
	 *
	 * @since   3.0.1
	 */
	public function getStart()
	{
		return $this->getState('list.start');
	}
}
