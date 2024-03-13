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
use Joomla\CMS\Form\Form;
use Joomla\CMS\Language\Associations;
use Joomla\CMS\Language\Multilanguage;
use Joomla\Registry\Registry;
use Joomla\Utilities\ArrayHelper;

/**
 * Prise en charge Component Prise en charge Model
 *
 * @since  4.0.0
 */
class Prise_en_charge_eModel extends \J4xSio\Component\Gilla\Administrator\Model\Prise_en_chargeModel
{
	/**
	 * Model typeAlias string. Used for version history.
	 *
	 * @var  string
	 * @since  4.0.0
	 */
	public $typeAlias = 'com_gilla.prise_en_charge';

	/**
	 * Name of the form
	 *
	 * @var string
	 * @since  4.0.0
	 */
	protected $formName = 'prise_en_charge_e';

	/**
	 * Method to get the row form.
	 *
	 * @param   array    $data      Data for the form.
	 * @param   boolean  $loadData  True if the form is to load its own data (default case), false if not.
	 *
	 * @return  \JForm|boolean  A \JForm object on success, false on failure
	 *
	 * @since   4.0.0
	 */
	public function getForm($data = [], $loadData = true)
	{
		$form = parent::getForm($data, $loadData);

		return $form;
	}

	/**
	 * Method to get Prise en charge data.
	 *
	 * @param   integer  $itemId  The id of the Prise en charge.
	 *
	 * @return  mixed  Prise en charge item data object on success, false on failure.
	 *
	 * @throws  Exception
	 *
	 * @since   4.0.0
	 */
	public function getItem($itemId = null)
	{
		$itemId = (int) (!empty($itemId)) ? $itemId : $this->getState('prise_en_charge.id');

		// Get a row instance.
		$table = $this->getTable();

		// Attempt to load the row.
		try {
			if (!$table->load($itemId)) {
				return false;
			}
		} catch (Exception $e) {
			Factory::getApplication()->enqueueMessage($e->getMessage());

			return false;
		}

		$properties = $table->getProperties();
		$value      = ArrayHelper::toObject($properties, 'JObject');

		// Convert field to Registry.
		// $value->params = new Registry($value->params);

		return $value;
	}

	/**
	 * Get the return URL.
	 *
	 * @return  string  The return URL.
	 *
	 * @since   4.0.0
	 */
	public function getReturnPage()
	{
		return base64_encode($this->getState('return_page'));
	}

	/**
	 * Method to save the form data.
	 *
	 * @param   array  $data  The form data.
	 *
	 * @return  boolean  True on success.
	 *
	 * @throws Exception
	 * @since   4.0.0
	 */
	public function save($data)
	{
		return parent::save($data);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @return  void
	 *
	 * @throws  Exception
	 *
	 * @since   4.0.0
	 */
	protected function populateState()
	{
		$app = Factory::getApplication();

		// Load state from the request.
		$pk = $app->input->getInt('id');
		$this->setState('prise_en_charge.id', $pk);

		// $this->setState('prise_en_charge.catid', $app->input->getInt('catid'));

		$return = $app->input->get('return', null, 'base64');
		$this->setState('return_page', base64_decode($return));

		// Load the parameters.
		$params = $app->getParams();

		$this->setState('params', $params);

		$this->setState('layout', $app->input->getString('layout'));
	}

	/**
	 * Allows preprocessing of the JForm object.
	 *
	 * @param   Form    $form   The form object
	 * @param   array   $data   The data to be merged into the form object
	 * @param   string  $group  The plugin group to be executed
	 *
	 * @return  Form
	 *
	 * @since   4.0.0
	 */
	protected function preprocessForm(Form $form, $data, $group = 'prise_en_charge')
	{
		return parent::preprocessForm($form, $data, $group);
	}

	/**
	 * Method to get a table object, load it if necessary.
	 *
	 * @param   string  $name     The table name. Optional.
	 * @param   string  $prefix   The class prefix. Optional.
	 * @param   array   $options  Configuration array for model. Optional.
	 *
	 * @return  Table	A Table object
	 *
	 * @since   4.0.0
	 * @throws  \Exception
	 */
	public function getTable($name = 'Prise_en_charges', $prefix = 'Administrator', $options = [])
	{
		return parent::getTable($name, $prefix, $options);
	}
}