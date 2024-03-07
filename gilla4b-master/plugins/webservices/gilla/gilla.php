<?php
/**
 * @package     Gilla.Plugin
 * @subpackage  Webservices.Gilla
 *
 * @copyright   Copyright (C) 2021-2024 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\Plugin\CMSPlugin;
use Joomla\CMS\Router\ApiRouter;

/**
 * Web Services adapter for com_gilla.
 *
 * @since  4.0.0
 */
class PlgWebservicesGilla extends CMSPlugin
{
	/**
	 * Load the language file on instantiation.
	 *
	 * @var    boolean
	 * @since  4.0.0
	 */
	protected $autoloadLanguage = true;

	/**
	 * Registers com_gilla's API's routes in the application
	 *
	 * @param   ApiRouter  &$router  The API Routing object
	 *
	 * @return  void
	 *
	 * @since   4.0.0
	 */
	public function onBeforeApiRoute(&$router)
	{
		$router->createCRUDRoutes(
			'v1/gilla/events',
			'events',
			['component' => 'com_gilla']
		);
		$this->createFieldsRoutes($router);

		$router->createCRUDRoutes(
			'v1/gilla/incidents',
			'incidents',
			['component' => 'com_gilla']
		);
		$this->createFieldsRoutes($router);
	}

	/**
	 * Create fields routes
	 *
	 * @param   ApiRouter  &$router  The API Routing object
	 *
	 * @return  void
	 *
	 * @since   4.0.0
	 */
	private function createFieldsRoutes(&$router)
	{
		$router->createCRUDRoutes(
			'v1/fields/gilla/events',
			'fields',
			['component' => 'com_fields', 'context' => 'com_gilla.event']
		);

		$router->createCRUDRoutes(
			'v1/fields/gilla/incidents',
			'fields',
			['component' => 'com_fields', 'context' => 'com_gilla.incident']
		);
	}
}
