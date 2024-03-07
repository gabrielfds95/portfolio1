<?php
/**
 * @package     Gilla.Administrator
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Administrator\Controller;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\FormController;

/**
 * Controller for a single event_user.
 *
 * @since  1.6
 */
class Event_userController extends FormController
{
	public function cancel($key = null) {
		$this->setRedirect('index.php?option=com_gilla&view=event_users');
	}
}
