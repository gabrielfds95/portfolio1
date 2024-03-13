<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Site\Service;

defined('JPATH_PLATFORM') or die;

use Joomla\CMS\Component\Router\RouterView;
use Joomla\CMS\Component\Router\Rules\RulesInterface;

/**
 * Rule to process URLs without a menu item
 *
 * @since  3.4
 */
class GillaNomenuRules implements RulesInterface
{
	/**
	 * Router this rule belongs to
	 *
	 * @var RouterView
	 * @since 3.4
	 */
	protected $router;

	/**
	 * Class constructor.
	 *
	 * @param   RouterView  $router  Router this rule belongs to
	 *
	 * @since   3.4
	 */
	public function __construct(RouterView $router)
	{
		$this->router = $router;
	}

	/**
	 * Dummymethod to fullfill the interface requirements
	 *
	 * @param   array  &$query  The query array to process
	 *
	 * @return  void
	 *
	 * @since   3.4
	 * @codeCoverageIgnore
	 */
	public function preprocess(&$query)
	{
		$test = 'Test';
	}

	/**
	 * Parse a menu-less URL
	 *
	 * @param   array  &$segments  The URL segments to parse
	 * @param   array  &$vars      The vars that result from the segments
	 *
	 * @return  void
	 *
	 * @since   3.4
	 */
	public function parse(&$segments, &$vars)
	{
		//with this url: http://localhost/j4xsio/events/event-n/event-title.html
		// segments: [[0] => event-n, [1] => event-title]
		// vars: [[option] => com_gilla, [view] => events, [id] => 0]

		$vars['view'] = 'event';
		$vars['id'] = substr($segments[0], strpos($segments[0], '-') + 1);
		array_shift($segments);
		array_shift($segments);
		return;
	}

	/**
	 * Build a menu-less URL
	 *
	 * @param   array  &$query     The vars that should be converted
	 * @param   array  &$segments  The URL segments to create
	 *
	 * @return  void
	 *
	 * @since   3.4
	 */
	public function build(&$query, &$segments)
	{
		// content of $query ($segments is empty or [[0] => event-3])
		// when called by the menu: [[option] => com_events, [Itemid] => 126]
		// when called by the component: [[option] => com_gilla, [view] => event, [id] => 1, [Itemid] => 126]
		// when called from a module: [[option] => com_gilla, [view] => events, [format] => html, [Itemid] => 126]
		// when called from breadcrumbs: [[option] => com_gilla, [view] => events, [Itemid] => 126]

		// the url should look like this: /site-root/events/walk-n/walk-title.html

		// if the view is not event - the single walk view
		if (!isset($query['view']) || (isset($query['view']) && $query['view'] !== 'event') || isset($query['format']))
		{
			return;
		}
		$segments[] = $query['view'] . '-' . $query['id'];
		// the last part of the url may be missing
		if (isset($query['slug'])) {
			$segments[] = $query['slug'];
			unset($query['slug']);
		}
		unset($query['view']);
		unset($query['id']);
	}
}
