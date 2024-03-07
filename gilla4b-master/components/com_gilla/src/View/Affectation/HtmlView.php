<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Site\View\Affectation;

defined('_JEXEC') or die;

//use Joomla\CMS\HTML\HTMLHelper;
//use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\GenericDataException;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;

/**
 * Affectation view class
 *
 * @since  1.5
 */
class HtmlView extends BaseHtmlView
{
	/**
	 * The item model state
	 *
	 * @var    \Joomla\Registry\Registry
	 * @since  1.6
	 */
	protected $state;

	/**
	 * The item object details
	 *
	 * @var    \JObject
	 * @since  1.6
	 */
	protected $item;
	protected $reports;

	/**
	 * Execute and display a template script.
	 *
	 * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
	 *
	 * @return  mixed  A string if successful, otherwise an Error object.
	 */
	public function display($tpl = null)
	{
		// $state      = $this->get('State');
		// $item       = $this->get('Item');
		// $reports    = $this->get('Reports');

		// Get model data.
		$this->state       = $this->get('State');
		$this->item        = $this->get('Item');
		$this->reports     = $this->get('Reports');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new GenericDataException(implode("\n", $errors), 500);
		}

		return parent::display($tpl);
	}
}
