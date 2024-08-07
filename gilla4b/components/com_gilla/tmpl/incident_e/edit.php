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
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use J4xSio\Component\Gilla\Site\Helper\RouteHelper as GillaHelperRoute;

HTMLHelper::_('behavior.keepalive');
HTMLHelper::_('behavior.formvalidator');

$this->tab_name = 'com-gilla-incident_e';
$this->ignore_fieldsets = ['publishing','jmetadata'];
$this->useCoreUI = true;
?>
<form action="<?php echo Route::_('index.php?option=com_gilla&id=' . (int) $this->item->id); ?>" method="post" name="adminForm" id="adminForm" class="form-validate form-vertical">
	<fieldset>
		<?php echo HTMLHelper::_('uitab.startTabSet', $this->tab_name, ['active' => 'details']); ?>

		<?php echo HTMLHelper::_('uitab.addTab', $this->tab_name, 'details', Text::_('COM_GILLA_INCIDENT')); ?>
			<?php echo $this->form->renderField('date_heure_ouverture'); ?>
			<?php echo $this->form->renderField('description'); ?>
			<?php echo $this->form->renderField('users_id'); ?>
			<?php echo $this->form->renderField('emplacements_id'); ?>
			<?php echo $this->form->renderField('types_id'); ?>

		<?php echo HTMLHelper::_('uitab.endTab'); ?>

		<?php echo LayoutHelper::render('joomla.edit.params', $this); ?>

		<?php echo HTMLHelper::_('uitab.endTabSet'); ?>

		<input type="hidden" name="task" value="">
		<input type="hidden" name="return" value="<?php echo $this->return_page; ?>">
		<?php echo HTMLHelper::_('form.token'); ?>
	</fieldset>
	<div class="mb-2">
		<button type="button" class="btn btn-outline-success" onclick="Joomla.submitbutton('incident.save')">
			<span class="icon-check" aria-hidden="true"></span>
			<?php echo Text::_('JSAVE'); ?>
		</button>
		<button type="button" class="btn btn-outline-primary" onclick="Joomla.submitbutton('incident.cancel')">
			<span class="icon-times" aria-hidden="true"></span>
			<?php echo Text::_('JCANCEL'); ?>
		</button>
	</div>
</form>
