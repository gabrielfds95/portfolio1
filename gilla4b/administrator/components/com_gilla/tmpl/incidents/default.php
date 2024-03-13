<?php
/**
 * @package     Gilla.Administrator
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Date\Date;

HTMLHelper::_('behavior.multiselect');

$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));
$states = array (
		'0' => Text::_('JUNPUBLISHED'),
		'1' => Text::_('JPUBLISHED'),
		'2' => Text::_('JARCHIVED'),
		'-2' => Text::_('JTRASHED')
);
$editIcon = '<span class="fa fa-pen-square me-2" aria-hidden="true"></span>';
?>
<form action="<?php echo Route::_('index.php?option=com_gilla&view=incidents'); ?>" method="post" name="adminForm" id="adminForm">
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
					<table class="table" id="IncidentsList">
						<thead>
							<tr>
								<th style="width:1%" class="text-center">
									<?php echo HTMLHelper::_('grid.checkall'); ?>
								</th>

								<th scope="col" class="w-1 text-center">
									<?php echo HTMLHelper::_('searchtools.sort', 'JSTATUS', 'a.published', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:20%">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_GILLA_INCIDENTS_NUMERO', 'a.numero', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:20%">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_GILLA_TYPE', 'a.types', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:10%">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_GILLA_EMPLACEMENT', 'a.emplacements_id', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:10%">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_GILLA_EVENTS_USERS_USER', 'a.users_id', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:10%">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_GILLA_INCIDENTS_DATE_HEURE_OUVERTURE', 'a.date_heure_ouverture', $listDirn, $listOrder); ?>
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

								<td class="text-center">
									<?php $canChange=true; ?>
									<?php echo HTMLHelper::_('jgrid.published', $item->state, $i, 'Incidents.', $canChange); ?>
								</td>								
								<th scope="row" class="has-context">
									<a class="hasTooltip" href="<?php echo Route::_('index.php?option=com_gilla&task=incident.edit&id=' . $item->id); ?>">
										<?php echo $editIcon; ?><?php echo $this->escape($item->numero); ?>
									</a>
								</th>
								<td class="">
									<?php echo $item->type; ?>
								</td>
								<td class="">
								<a href="index.php?option=com_gilla&view=incident_users&Incidents_id=<?php echo $item->id; ?>">
									<?php echo $editIcon; ?><?php echo $item->emplacement; ?></a>
								</td> 	
								<td class="">
									<?php echo $item->name; ?>
								</td>
								<td class="">
									<?php echo HTMLHelper::_('date', $item->date_heure_ouverture, Text::_('DATE_FORMAT_LC6')); ?>
								</td>
								<td class="d-none d-md-table-cell">
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
				<?php echo HTMLHelper::_('form.token'); ?>
			</div>
		</div>
	</div>
</form>
