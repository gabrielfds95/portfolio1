<?php
/**
 * @package     Gilla.Administrator
 * @subpackage  com_gilla
 *
 * @copyright   Copyright (C) 2021 SIO, all rights reserved.
 * @license     GNU/GPL Version 2 or later
 */

namespace J4xSio\Component\Gilla\Administrator\Table;

defined('JPATH_PLATFORM') or die;

use Joomla\CMS\Application\ApplicationHelper;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Tag\TaggableTableInterface;
use Joomla\CMS\Tag\TaggableTableTrait;
use Joomla\Database\DatabaseDriver;
use Joomla\CMS\Language\Text;
use Joomla\Registry\Registry;
use Joomla\CMS\Factory;

/**
 * Events table
 *
 * @since  1.5
 */
class EmplacementsTable extends Table
{
	/**
	 * Constructor
	 *
	 * @param   DatabaseDriver  $db  Database connector object
	 *
	 * @since   1.0
	 */
	public function __construct(DatabaseDriver $db)
	{
		$this->typeAlias = 'com_gilla.emplacement';
		parent::__construct('#__gilla_emplacements', 'id', $db);
	}

	/**
	 * Generate a valid alias from title / date.
	 * Remains public to be able to check for duplicated alias before saving
	 *
	 * @return  string
	 */
	public function generateAlias()
	{
		if (empty($this->alias)) {
			$this->alias = $this->title;
		}

		$this->alias = ApplicationHelper::stringURLSafe($this->alias, $this->language);

		if (trim(str_replace('-', '', $this->alias)) == '') {
			$this->alias = Factory::getDate()->format('Y-m-d-H-i-s');
		}

		return $this->alias;
	}

	/**
	 * Overridden \JTable::store to set modified data.
	 *
	 * @param   boolean  $updateNulls  True to update fields even if they are null.
	 *
	 * @return  boolean  True on success.
	 *
	 * @since   1.6
	 */
	public function store($updateNulls = true)
	{
		$date = Factory::getDate();
		$user = Factory::getUser();

		// Set created date if not set.
		if (!(int) $this->created)
		{
			$this->created = $date->toSql();
		}

		if ($this->id)
		{
			// Existing item
			$this->modified_by = $user->get('id');
			$this->modified    = $date->toSql();
		}
		else
		{
			// Field created_by can be set by the user, so we don't touch it if it's set.
			if (empty($this->created_by))
			{
				$this->created_by = $user->get('id');
			}

			if (!(int) $this->modified)
			{
				$this->modified = $this->created;
			}

			if (empty($this->modified_by))
			{
				$this->modified_by = $this->created_by;
			}
		}

		return parent::store($updateNulls);
	}
}
