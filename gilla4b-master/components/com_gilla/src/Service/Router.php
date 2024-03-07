<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Site\Service;

defined('_JEXEC') or die;

use Joomla\CMS\Application\SiteApplication;
use Joomla\CMS\Categories\CategoryFactoryInterface;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Component\Router\RouterView;
use Joomla\CMS\Component\Router\RouterViewConfiguration;
use Joomla\CMS\Component\Router\Rules\MenuRules;
//use Joomla\CMS\Component\Router\Rules\NomenuRules;
use J4xSio\Component\Gilla\Site\Service\GillaNomenuRules as NomenuRules;
use Joomla\CMS\Component\Router\Rules\StandardRules;
use Joomla\CMS\Menu\AbstractMenu;
use Joomla\Database\DatabaseInterface;
use Joomla\Database\ParameterType;

/**
 * Routing class of com_gilla
 *
 * @since  3.3
 */
class Router extends RouterView
{
	/**
	 * Flag to remove IDs
	 *
	 * @var    boolean
	 */
	protected $noIDs = false;

	/**
	 * The category factory
	 *
	 * @var CategoryFactoryInterface
	 *
	 * @since  4.0.0
	 */
	// private $categoryFactory;

	/**
	 * The category cache
	 *
	 * @var  array
	 *
	 * @since  __BUMP_VERSION__
	 */
	// private $categoryCache = [];

	/**
	 * The db
	 *
	 * @var DatabaseInterface
	 *
	 * @since  4.0.0
	 */
	private $db;

	/**
	 * Gilla component router constructor
	 *
	 * @param   SiteApplication           $app              The application object
	 * @param   AbstractMenu              $menu             The menu object to work with
	 * @param   CategoryFactoryInterface  $categoryFactory  The category object
	 * @param   DatabaseInterface         $db               The database object
	 */
	public function __construct(SiteApplication $app, AbstractMenu $menu,
			CategoryFactoryInterface $categoryFactory, DatabaseInterface $db)
	{
		$this->categoryFactory = $categoryFactory;
		$this->db              = $db;

		$params = ComponentHelper::getParams('com_gilla');
		$this->noIDs = (bool) $params->get('sef_ids');

		$events = new RouterViewConfiguration('events');
		$events->setKey('id');
		$this->registerView($events);

		$event = new RouterViewConfiguration('event');
		$event->setKey('id');
		$this->registerView($event);

		$event_e = new RouterViewConfiguration('event_e');
		$event_e->setKey('id');
		$this->registerView($event_e);

		parent::__construct($app, $menu);

		$this->attachRule(new MenuRules($this));
		$this->attachRule(new StandardRules($this));
		$this->attachRule(new NomenuRules($this));
	}
}
