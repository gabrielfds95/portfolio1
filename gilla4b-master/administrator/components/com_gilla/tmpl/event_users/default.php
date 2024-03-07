<?php
/**
 * @package     Gilla.Administrator
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use J4xSio\Component\Gilla\Administrator\Helper\GillaHelper;

HTMLHelper::_('behavior.multiselect');
//HTMLHelper::_('behavior.tabstate');

$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));
$states = array (
		'0' => Text::_('JUNPUBLISHED'),
		'1' => Text::_('JPUBLISHED'),
		'2' => Text::_('JARCHIVED'),
		'-2' => Text::_('JTRASHED')
);
$editIcon = '<span class="fa fa-pen-square me-2" aria-hidden="true"></span>';
$title = GillaHelper::getEventTitle($this->state->get('events_id'))->title;
$events_id = $this->state->get('events_id')
?>
<h3><?php echo Text::_('COM_GILLA_EVENTS_USERS_PAGE_TOP') . ' ' . $events_id . ': ' . $title; ?></h3>
<form action="<?php echo Route::_('index.php?option=com_gilla&view=event_users'); ?>" method="post" name="adminForm" id="adminForm">
	<div class="row">
		<div class="col-md-12">
			<div id="j-main-container" class="j-main-container">
				<?php echo LayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>
				<?php if (empty($this->items)) : ?>
					<div class="alert alert-info">
						<span class="fa fa-info-circle" aria-hidden="true"></span><span class="sr-only"><?php echo Text::_('INFO'); ?></span>
						<?php echo Text::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
					</div>
				<?php else : ?>
					<table class="table" id="eventsList">
						<thead>
							<tr>
								<td style="width:1%" class="text-center">
									<?php echo HTMLHelper::_('grid.checkall'); ?>
								</td>
								<th scope="col" style="width:1%; min-width:85px" class="text-center">
									<?php echo HTMLHelper::_('searchtools.sort', 'JSTATUS', 'a.published', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:10%;">
									<?php echo HTMLHelper::_('searchtools.sort', 'JGLOBAL_CREATED_DATE', 'a.published', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:50%;">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_GILLA_EVENTS_USERS_COMMENT', 'a.published', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:5%" class="d-none d-md-table-cell">
									<?php echo HTMLHelper::_('searchtools.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
								</th>
							</tr>
						</thead>
						<tbody>
						<?php
						$n = count($this->items);
						foreach ($this->items as $i => $item) :
							?>
							<tr class="row<?php echo $i % 2; ?>">
								<td class="text-center">
									<?php echo HTMLHelper::_('grid.id', $i, $item->id); ?>
								</td>
								<td>
									<?php echo $states[$item->state]; ?>
								</td>
								<td>
									<a href="index.php?option=com_gilla&task=event_user.edit&id=<?php echo $item->id; ?>">
									<?php echo $editIcon; ?><?php echo $item->created; ?></a>
								</td>
								<td>
									<?php echo $item->comment; ?>
								</td>
								<td>
									<?php echo $item->id; ?>
								</td>
							</tr>
							<?php endforeach; ?>
						</tbody>
					</table>

					<?php // load the pagination. ?>
					<?php echo $this->pagination->getListFooter(); ?>

				<?php endif; ?>
				<input type="hidden" name="task" value="">
				<input type="hidden" name="boxchecked" value="0">
				<input type="hidden" name="events_id" value="<?php echo $events_id; ?>">
				<input type="hidden" name="users_id" value="<?php echo $users_idd; ?>">
				<?php echo HTMLHelper::_('form.token'); ?>
			</div>
		</div>
	</div>
</form>

<a href="<?php echo Route::_('index.php?option=com_gilla'); ?>"><?php echo Text::_('COM_GILLA_EVENTS_BACK_TO_LIST'); ?></a>
