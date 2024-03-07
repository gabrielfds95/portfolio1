<?php
/**
 * @package     Gilla.Administrator
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Administrator\Service\HTML;

defined('JPATH_BASE') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Language\Associations;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use Joomla\Utilities\ArrayHelper;

/**
 * Event HTML class.
 *
 * @since  3.0
 */
class AdministratorService
{
	/**
	 * Get the associated language flags
	 *
	 * @param   integer  $itemid  The item id to search associations
	 *
	 * @return  string  The language HTML
	 *
	 * @throws  Exception
	 */
	public function association($itemid)
	{
		// Defaults
		$html = '';

		// Get the associations
		if ($associations = Associations::getAssociations('com_gilla', '#__gilla_events', 'com_gilla.item', $itemid, 'id', null)) {
			foreach ($associations as $tag => $associated) {
				$associations[$tag] = (int) $associated->id;
			}

			// Get the associated event items
			$db = Factory::getDbo();
			$query = $db->getQuery(true)
				->select('c.*')
				->from('#__gilla_events as c');
			$db->setQuery($query);

			try {
				$items = $db->loadObjectList('id');
			} catch (\RuntimeException $e) {
				throw new \Exception($e->getMessage(), 500, $e);
			}

			if ($items) {
				foreach ($items as &$item) {
					$text = strtoupper($item->lang_sef);
					$url = Route::_('index.php?option=com_gilla&task=event.edit&id=' . (int) $item->id);
					$tooltip = '<strong>' . htmlspecialchars($item->language_title, ENT_QUOTES, 'UTF-8') . '</strong><br>'
						. htmlspecialchars($item->title, ENT_QUOTES, 'UTF-8') . '<br>' . Text::sprintf('JCATEGORY_SPRINTF', $item->category_title);
					$classes = 'badge bg-secondary';

					$item->link = '<a href="' . $url . '" title="' . $item->language_title . '" class="' . $classes . '">' . $text . '</a>'
						. '<div role="tooltip" id="tip' . (int) $item->id . '">' . $tooltip . '</div>';
				}
			}

			$html = LayoutHelper::render('joomla.content.associations', $items);
		}

		return $html;
	}
	/**
	 * Show the featured/not-featured icon.
	 *
	 * @param   integer  $value      The featured value.
	 * @param   integer  $i          Id of the item.
	 * @param   boolean  $canChange  Whether the value can be changed or not.
	 *
	 * @return  string	The anchor tag to toggle featured/unfeatured events.
	 *
	 * @since   3.0
	 */
	public function featured($value, $i, $canChange = true)
	{
		// Array of image, task, title, action
		$states = [
			0 => ['unfeatured', 'events.featured', 'COM_CONTACT_UNFEATURED', 'JGLOBAL_ITEM_FEATURE'],
			1 => ['featured', 'events.unfeatured', 'JFEATURED', 'JGLOBAL_ITEM_UNFEATURE'],
		];
		$state = ArrayHelper::getValue($states, (int) $value, $states[1]);
		$icon = $state[0] === 'featured' ? 'star featured' : 'star';

		if ($canChange) {
			$html = '<a href="#" onclick="return Joomla.listItemTask(\'cb' . $i . '\',\'' . $state[1] . '\')" class="tbody-icon'
				. ($value == 1 ? ' active' : '') . '" aria-labelledby="cb' . $i . '-desc">'
				. '<span class="fas fa-' . $icon . '" aria-hidden="true"></span></a>'
				. '<div role="tooltip" id="cb' . $i . '-desc">' . Text::_($state[3]);
		} else {
			$html = '<a class="tbody-icon disabled' . ($value == 1 ? ' active' : '')
				. '" title="' . Text::_($state[2]) . '"><span class="fas fa-' . $icon . '" aria-hidden="true"></span></a>';
		}

		return $html;
	}
}
