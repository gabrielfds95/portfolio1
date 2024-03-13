<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\Language\Text;
use J4xSio\Component\Gilla\Site\Helper\RouteHelper as GillaHelperRoute;
use Joomla\CMS\Date\Date;
use Joomla\CMS\HTML\HTMLHelper;

$user = Factory::getUser();
$canDo   = ContentHelper::getActions('com_gilla');

$canEdit = $canDo->get('core.edit');
$canEditOwn = $canDo->get('core.edit.own');
$canEditItem = $canEdit || ($canEditOwn && $this->item->created_by == $user->id);

$canCreate = $canDo->get('core.create');

$id = (int) $this->item->id;
$Itemid = (int) $this->state->Itemid;
?>

<div class="row">
	<div class="col-lg-9 page-header">
		<h3><?php echo Text::_('COM_GILLA_AGENT'); ?></h3>
	</div>		
	<div class="col-lg-3">
		<div class="btn-group btn-outline-success float-end">
			<a class="btn" title="<?php echo Text::_('COM_GILLA_CLOSE');?>"
				href="<?php echo GillaHelperRoute::_(false, 'agents',null , null, null, $Itemid); ?>">
				<span class="icon-cancel" aria-hidden="true"></span>
			</a>
		</div>
		<?php if ($canEditItem) : ?>
			<div class="btn-group btn-outline-success float-end">
				<a class="btn" title="<?php echo Text::_('COM_GILLA_MODIFY');?>"
					href="<?php echo GillaHelperRoute::_(true, 'agent_e','edit' , $id); ?>">
					<span class="icon-edit" aria-hidden="true"></span>
				</a>
			</div>
		<?php endif; ?>
	</div>
</div>

<div>
	<table class="table">
		<tbody>
			<tr>
				<td width="20%" class="nowrap right">
					<span class="form-label"><?php echo JText::_('COM_GILLA_AGENTS_TELEPHONE'); ?></span>
				</td>
				<td width="80%">
					<b><?php echo $this->item->telephone; ?></b>
				</td>
			</tr>
			<tr>
				<td width="20%" class="nowrap right">
					<span class="form-label"><?php echo JText::_('COM_GILLA_EVENTS_USERS_USER'); ?></span>
				</td>
				<td width="80%">
					<?php echo $this->item->name; ?>
				</td>
			</tr>
		</tbody>
	</table>
</div>
