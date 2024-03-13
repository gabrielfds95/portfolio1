<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Site\Helper;

defined('_JEXEC') or die;

use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Uri\Uri;
use Joomla\CMS\Router\Route;

/**
 * Gilla Component Route Helper.
 *
 * @since  4.0.0
 */
abstract class RouteHelper
{
	/**
	 * Get the Gilla route to given view.
	 *
	 * @param   string   $withReturn    True if append return address to current page.
	 * @param   integer  $view      	The view value.
	 * @param   string   $layout    	The layout value.
	 * @param   integer  $id        	The id of the item.
	 * @param   integer  $slug      	The slug of the item.
	 * @param   integer  $Itemid        The id of the menu link.
	 * @param   integer  $task        	The task to be executed by controller.
	 * @param   integer  $language  	The language code.
	 *
	 * @return  string	The Gilla route with eventual return Uri if $withReturn is true.
	 *
	 * @since   1.5
	 */
	public static function _($withReturn, $view, $layout = null, $id = null, $slug = null, $Itemid = null, $task = null, $language = 0)
	{
		// Create the Gilla route link.
		$link = 'index.php?option=com_gilla&view=' . $view;

		if (!is_null($layout)){
			$link .= '&layout=' . $layout;
		}
		if (!is_null($task)){
			$link .= '&task=' . $task;
		}
		if (!is_null($id)){
			$link .= '&id=' . $id;
		}
		if (!is_null($slug)){
			$link .= '&slug=' . $slug;
		}
		if (!is_null($Itemid)){
			$link .= '&Itemid=' . $Itemid;
		}
		if ($language && $language !== '*' && Multilanguage::isEnabled()){
			$link .= '&lang=' . $language;
		}
		if ($withReturn){
			$uri = Uri::getInstance();
			$link .= '&return=' . base64_encode($uri);
		}

		// Create complete route url from link, using Joomla library.
		$url = Route::_($link);

		// Update url returned by Joomla library with given current Itemid, if not null.
		if ($Itemid) {
			$p = strpos($url, 'Itemid=');
			if ($p >= 0) {
				$strIt2 = substr ($url, $p, 10);
				$strIt = 'Itemid='.$Itemid;
				if ($strIt2 != $strIt) {				
					$url = str_replace($strIt2, $strIt, $url);
				}
			}
		}

		return $url;
	}
}
