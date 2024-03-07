<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Site\View\Agent_e;

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use J4xSio\Component\Gilla\Administrator\Helper\GillaHelper;

/**
 * HTML Agent_e View class for the Agent component
 *
 * @since  4.0.0
 */
class HtmlView extends BaseHtmlView
{
	/**
	 * @var    \Joomla\CMS\Form\Form
	 * @since  4.0.0
	 */
	protected $form;

	/**
	 * @var    object
	 * @since  4.0.0
	 */
	protected $item;

	/**
	 * @var    string
	 * @since  4.0.0
	 */
	protected $return_page;

	/**
	 * @var    string
	 * @since  4.0.0
	 */
	protected $pageclass_sfx;

	/**
	 * @var    \Joomla\Registry\Registry
	 * @since  4.0.0
	 */
	protected $state;

	/**
	 * @var    \Joomla\Registry\Registry
	 * @since  4.0.0
	 */
	protected $params;

	/**
	 * Execute and display a template script.
	 *
	 * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
	 *
	 * @return  mixed  A string if successful, otherwise an Error object.
	 *
	 * @throws Exception
	 * @since  4.0.0
	 */
	public function display($tpl = null)
	{
		$user = Factory::getUser();
		$app  = Factory::getApplication();

		// Get model data.
		$this->state = $this->get('State');
		$this->item = $this->get('Item');
		$this->form = $this->get('Form');
		$this->return_page = $this->get('ReturnPage');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			$app->enqueueMessage(implode("\n", $errors), 'error');

			return false;
		}

		// Create a shortcut to the parameters.
		$this->params = $this->state->params;

		// Escape strings for HTML output
		$this->pageclass_sfx = htmlspecialchars($this->params->get('pageclass_sfx'));

		// Override global params with Agent specific params
		// $this->params->merge($this->item->params);

		// Propose current language as default when creating new Agent
		if (empty($this->telephone->users_id) && Multilanguage::isEnabled()) {
			$lang = Factory::getLanguage()->getTag();
			$this->form->setFieldAttribute('language', 'default', $lang);
		}

		$this->_prepareDocument();

		parent::display($tpl);
	}

	/**
	 * Prepares the document
	 *
	 * @return  void
	 *
	 * @throws Exception
	 *
	 * @since  4.0.0
	 */
	protected function _prepareDocument()
	{
		$app   = Factory::getApplication();
		$menus = $app->getMenu();
		$title = null;

		$pathway = $app->getPathWay();
		$pathway->addItem($title, '');
	}
}
