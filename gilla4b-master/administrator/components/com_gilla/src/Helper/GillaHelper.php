<?php
/**
 * @package     Gilla.Administrator
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Administrator\Helper;

defined('_JEXEC') or die;

use Joomla\CMS\Factory;

/**
 * Gilla component helper.
 *
 * @since  4.0
 */
// class GillaHelper
class GillaHelper extends \Joomla\Component\Content\Administrator\Helper\ContentHelper
{
	public static function getEventTitle($id)
	{
		if (empty($id))
		{
			// throw an error or ...
			return false;
		}
		$db = Factory::getDbo();
		$query = $db->getQuery(true);
		$query->select('title');
		$query->from('#__gilla_events');
		$query->where('id = ' . $id);
		$db->setQuery($query);
		return $db->loadObject();
	}
}