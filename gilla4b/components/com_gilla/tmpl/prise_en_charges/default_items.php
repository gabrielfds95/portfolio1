<?php
/**
 * @package     Gilla.Site
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

defined('_JEXEC') or die;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use J4xSio\Component\Gilla\Site\Helper\RouteHelper as GillaHelperRoute;
use Joomla\CMS\Uri\Uri;
use Joomla\CMS\Date\Date;

HTMLHelper::_('behavior.core');

$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));

$Itemid = (int) $this->state->Itemid;
?>

<form action="<?php echo htmlspecialchars(Uri::getInstance()->toString()); ?>" method="post" name="adminForm" id="adminForm">
	<div>
		<div class="btn-group filter-search">
			<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo Text::_('COM_GILLA_SEARCH_FILTER');?>" 
			value="<?php echo $this->escape($this->state->get('filter.search')); ?>" />
		</div>		
		<div class="btn-group btn-outline-success">
			<button type="submit" class="btn" title="<?php echo Text::_('COM_GILLA_SEARCH_FILTER');?>">
				<i class="icon-search"></i>
			</button>
		</div>
		<div class="btn-group btn-outline-success">
			<a class="btn" title="<?php echo Text::_('COM_GILLA_NEW');?>"
				href="<?php echo GillaHelperRoute::_(true, 'prise_en_charge_e', 'edit', 0); ?>">
				<span class="icon-add" aria-hidden="true"></span>
			</a>
		</div>	
		<div class="btn-group float-end">
			<label for="limit" class="visually-hidden">
				<?php echo Text::_('JGLOBAL_DISPLAY_NUM'); ?>
			</label>
			<?php echo $this->pagination->getLimitBox(); ?>
		</div>
	</div>
	<div>
		<table class="table table-striped" id="prise_en_chargesList">
			<thead>
				<tr>
					<th scope="col">
						<?php echo HTMLHelper::_('grid.sort', 'COM_GILLA_INCIDENT', 'i.numero', $listDirn, $listOrder) ?>
					</th>
					<th scope="col">
						<?php echo HTMLHelper::_('grid.sort', 'COM_GILLA_AGENT', 'u.name', $listDirn, $listOrder); ?>
					</th>
					<th scope="col">
						<?php echo HTMLHelper::_('grid.sort', 'COM_GILLA_PRISE_EN_CHARGES_DATE_HEURE_DEBUT', 'a.date_heure_debut', $listDirn, $listOrder); ?>
					</th>
					<th scope="col">
						<?php echo HTMLHelper::_('grid.sort', 'COM_GILLA_PRISE_EN_CHARGES_DATE_HEURE_FIN', 'a.date_heure_fin', $listDirn, $listOrder); ?>
					</th>
					<th scope="col">
						<?php echo HTMLHelper::_('grid.sort', 'COM_GILLA_PRIORITE', 'p.priorite', $listDirn, $listOrder); ?>
					</th>
					<th scope="col">
						<?php echo HTMLHelper::_('grid.sort', 'COM_GILLA_ETAT', 'e.etat', $listDirn, $listOrder); ?>
					</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($this->items as $id => $item) :
					$slug = preg_replace('/[^a-z\d]/i', '-', $item->numero);
					$slug = strtolower(str_replace(' ', '-', $slug));
				?>
				<tr>
					
					<td>
						<a href="<?php echo GillaHelperRoute::_(false, 'prise_en_charge', null, $item->id, $slug, $Itemid); ?>">
						<?php echo $item->numero; ?></a></td>
					<td><?php echo $item->name; ?></td>
					<td><?php echo $item->date_heure_debut; ?></td>
					<td><?php echo $item->date_heure_fin; ?></td>
					<td><?php echo $item->priorite; ?></td>
					<td><?php echo $item->etat; ?></td>
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<div>
		<input type="hidden" name="filter_order" value="">
		<input type="hidden" name="filter_order_Dir" value="">
		<input type="hidden" name="limitstart" value="">
		<input type="hidden" name="task" value="">
	</div>
</form>			
