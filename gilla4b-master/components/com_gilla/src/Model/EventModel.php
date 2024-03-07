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

use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\Model\ItemModel;

/**
 * Gilla component event model.
 *
 * @since  1.5
 */
class EventModel extends ItemModel
{
	/**
	 * Model context string.
	 *
	 * @var        string
	 */
	protected $_context = 'com_gilla.event';

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @since   1.6
	 *
	 * @return void
	 */
	protected function populateState()
	{
		$app = Factory::getApplication();

		// Load state from the request.
		$pk = $app->input->getInt('id');
		$this->setState('event.id', $pk);

		$offset = $app->input->getUInt('limitstart');
		$this->setState('list.offset', $offset);

		// Load the parameters.
		$params = $app->getParams();
		$this->setState('params', $params);

		// Store Itemid (Events menu link).
		$Itemid = $app->input->getInt('Itemid');
		$this->setState('Itemid', $Itemid);
	}

	/**
	 * Method to get event data.
	 *
	 * @param   integer  $pk  The id of the item.
	 *
	 * @return  object|boolean  Menu item data object on success, boolean false
	 */
	public function getItem($pk = null)
	{
		$pk = (!empty($pk)) ? $pk : (int) $this->getState('event.id');

		try
		{
			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->select(
					$this->getState(
						'item.select', 'a.*'
					)
				);
			$query->from('#__gilla_events AS a')
				->where('a.id = ' . (int) $pk);

			$db->setQuery($query);

			$data = $db->loadObject();

			if (empty($data))
			{
				throw new \Exception(Text::_('COM_GILLA_ERROR_EVENT_NOT_FOUND'), 404);
			}
		}
		catch (\Exception $e)
		{
			if ($e->getCode() == 404)
			{
				// Need to go through the error handler to allow Redirect to work.
				throw new \Exception($e->getMessage(), 404);
			}
			else
			{
				$this->setError($e);
				$this->_item[$pk] = false;
			}
		}

		return $data;
	}
	/**
	 * Method to get event comment data.
	 *
	 * @param   integer  $pk  The id of the event.
	 *
	 * @return  object|boolean  Menu item data object on success, boolean false
	 */
	public function getReports($pk = null)
	{
		$pk = (!empty($pk)) ? $pk : (int) $this->getState('event.id');

		try
		{
			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->select('b.*')
				->from('#__gilla_events_users AS b')
				->where('b.events_id = ' . (int) $pk)
				->order('`created` DESC');

			$db->setQuery($query);

			$data = $db->loadObjectList();

			// It is OK to have an event without comment data - handle it the view.
		}
		catch (\Exception $e)
		{
			if ($e->getCode() == 404)
			{
				// Need to go through the error handler to allow Redirect to work.
				throw new \Exception($e->getMessage(), 404);
			}
			else
			{
				$this->setError($e);
				$this->_item[$pk] = false;
			}
		}

		return $data;
	}
}
