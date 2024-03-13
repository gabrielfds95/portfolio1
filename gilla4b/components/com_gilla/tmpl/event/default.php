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
$baseurl = $this->baseurl;
?>

<div class="row">
	<div class="col-lg-9 page-header">
		<h3><?php echo Text::_('COM_GILLA_EVENT'); ?></h3>
	</div>		
	<div class="col-lg-3">
		<div class="btn-group btn-outline-success float-end">
			<a class="btn" title="<?php echo Text::_('COM_GILLA_CLOSE');?>"
				href="<?php echo GillaHelperRoute::_(false, 'events',null , null, null, $Itemid); ?>">
				<span class="icon-cancel" aria-hidden="true"></span>
			</a>
		</div>
		<?php if ($canEditItem) : ?>
			<div class="btn-group btn-outline-success float-end">
				<a class="btn" title="<?php echo Text::_('COM_GILLA_MODIFY');?>"
					href="<?php echo GillaHelperRoute::_(true, 'event_e','edit' , $id); ?>">
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
					<span class="form-label"><?php echo JText::_('COM_GILLA_EVENTS_TITLE'); ?></span>
				</td>
				<td width="80%">
					<b><?php echo $this->item->title; ?></b>
				</td>
			</tr>
			<tr>
				<td width="20%" class="nowrap right">
					<span class="form-label"><?php echo JText::_('COM_GILLA_EVENTS_DATETIME'); ?></span>
				</td>
				<td width="80%">
					<?php echo HTMLHelper::_('date', $this->item->date_time, Text::_('DATE_FORMAT_LC6')); ?>
				</td>
			</tr>
			<tr>
				<td width="20%" class="nowrap right">
					<span class="form-label"><?php echo JText::_('COM_GILLA_EVENTS_DESCRIPTION'); ?></span>
				</td>
				<td width="80%">
					<?php echo $this->item->description; ?>
				</td>
			</tr>
			<tr>
				<td width="20%" class="nowrap right">
					<span class="form-label"><?php echo JText::_('COM_GILLA_EVENTS_PICTURE'); ?></span>
				</td>
				<td width="80%">
					<?php echo "<img src='" . $baseurl . "/" . $this->item->picture . "' border='0' height='100' />"; ?>
				</td>
			</tr>
		</tbody>
	</table>
</div>

<div class="row">
	<div class="col-lg-9 page-header">
		<h5><?php echo Text::_('COM_GILLA_EVENTS_COMMENTS'); ?></h5>
	</div>		
	<div class="col-lg-3">
		<?php if ($canCreate) : ?>
			<form action="<?php echo GillaHelperRoute::_(true, 'event_user_e', 'edit', 0); ?>" method="post" name="adminForm" id="adminForm">
				<div class="btn-group btn-outline-success float-end">
					<button type="submit" class="btn" title="<?php echo Text::_('COM_GILLA_NEW');?>">
						<i class="icon-add"></i>
					</button>
				</div>
				<div>
					<input type="hidden" name="events_id" value="<?php echo $id; ?>">
					<input type="hidden" name="users_id" value="<?php echo $user->id; ?>">
				</div>
			</form>
		<?php endif; ?>
	</div>
</div>

<div class="table-responsive">
  	<table class="table table-striped">
  		<thead>
			<tr>
				<th scope="col"><?php echo Text::_('COM_GILLA_CREATED'); ?></th>
				<th scope="col"><?php echo Text::_('COM_GILLA_EVENTS_USERS_COMMENT'); ?></th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($this->reports as $id => $report) : ?>
			<tr>
				<td><?php echo $report->created; ?></td>
				<td><?php echo $report->comment; ?></td>
			</tr>
			<?php endforeach; ?>
		</tbody>
  	</table>
</div>
