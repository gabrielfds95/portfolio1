CREATE TABLE `gilla4_gilla_affectations` (
  `id` int(11) NOT NULL,
  `date_heure_debut` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `date_heure_fin` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `agents_id` int(11) NOT NULL DEFAULT 1,
  `types_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gilla4_gilla_agents` (
  `id` int(11) NOT NULL,
  `telephone` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `users_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gilla4_gilla_emplacements` (
  `id` int(11) NOT NULL,
  `emplacement` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `emplacements_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gilla4_gilla_emplacements` (`id`, `emplacement`, `description`, `emplacements_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(2, 'Bâtiment A', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(3, 'Bâtiment B', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(4, 'Bâtiment C', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(5, 'Bâtiment D', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(6, 'Bâtiment E', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(7, 'Bâtiment F', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(8, 'Et A0', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(9, 'A001', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(10, 'A002', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(11, 'A003', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(12, 'A004', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(13, 'A005', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(14, 'A006', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(15, 'A007', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(16, 'A008', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(17, 'A009', '', 8, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(18, 'Et A1', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(19, 'A101', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(20, 'A102', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(21, 'A103', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(22, 'A104', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(23, 'A105', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(24, 'A106', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(25, 'A107', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(26, 'A108', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(27, 'A109', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(28, 'A110', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(29, 'A111', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(30, 'A112', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(31, 'A113', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(32, 'A114', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(33, 'A115', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(34, 'A116', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(35, 'A117', '', 18, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(36, 'Et A2', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(37, 'A201', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(38, 'A202', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(39, 'A203', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(40, 'A204', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(41, 'A205', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(42, 'A206', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(43, 'A207', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(44, 'A208', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(45, 'A209', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(46, 'A210', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(47, 'A211', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(48, 'A212', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(49, 'A213', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(50, 'A214', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(51, 'A215', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(52, 'A216', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(53, 'A217', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(54, 'A218', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(55, 'A219', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(56, 'A220', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(57, 'A221', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(58, 'A222', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(59, 'A223', '', 36, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(60, 'Et A3', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(61, 'A301', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(62, 'A302', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(63, 'A303', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(64, 'A304', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(65, 'A305', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(66, 'A306', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(67, 'A307', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(68, 'A308', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(69, 'A309', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(70, 'A310', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(71, 'A311', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(72, 'A312', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(73, 'A313', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(74, 'A314', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(75, 'A315', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(76, 'A316', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(77, 'A317', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(78, 'A318', '', 60, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(79, 'Et A4', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(80, 'A401', '', 79, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(81, 'A402', '', 79, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(82, 'A403', '', 79, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(83, 'A404', '', 79, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

CREATE TABLE `gilla4_gilla_etats` (
  `id` int(11) NOT NULL,
  `etat` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gilla4_gilla_etats` (`id`, `etat`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(2, '1 - Ouvert', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(3, '2 - Pris en charge', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(4, '3 - Fermé', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

CREATE TABLE `gilla4_gilla_incidents` (
  `id` int(11) NOT NULL,
  `numero` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `date_heure_ouverture` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `description` text NOT NULL DEFAULT '',
  `photo` varchar(400) DEFAULT NULL,
  `date_heure_fermeture` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `commentaire_agent` text NOT NULL DEFAULT '',
  `users_id` int(11) NOT NULL DEFAULT 1,
  `emplacements_id` int(11) NOT NULL DEFAULT 1,
  `types_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gilla4_gilla_priorites` (
  `id` int(11) NOT NULL,
  `priorite` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gilla4_gilla_priorites` (`id`, `priorite`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(2, '1 - Haute', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(3, '2 - Moyenne', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(4, '3 - Basse', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

CREATE TABLE `gilla4_gilla_prise_en_charges` (
  `id` int(11) NOT NULL,
  `date_heure_debut` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `date_heure_fin` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `commentaire` text NOT NULL DEFAULT '',
  `incidents_id` int(11) NOT NULL DEFAULT 1,
  `agents_id` int(11) NOT NULL DEFAULT 1,
  `priorites_id` int(11) NOT NULL DEFAULT 1,
  `etats_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gilla4_gilla_types` (
  `id` int(11) NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `types_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gilla4_gilla_types` (`id`, `type`, `description`, `types_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(2, 'Bâtiment ', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(3, 'Informatique', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(4, 'Mobilier', '', 1, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(5, 'Aération', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(6, 'Eclairage', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(7, 'Chauffage', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(8, 'Fenêtre', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(9, 'Mur', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(10, 'Plafond', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(11, 'Porte', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(12, 'Prise de courant', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(13, 'Prise réseau', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(14, 'Sol', '', 2, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(15, 'Clavier', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(16, 'Ecran', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(17, 'PC portable', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(18, 'Souris', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(19, 'Unité centrale', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(20, 'Vidéoprojecteur', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(21, 'Armoire', '', 4, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(22, 'Chaise', '', 4, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(23, 'Table', '', 4, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

ALTER TABLE `gilla4_gilla_affectations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4_gilla_affectations_agents_id` (`agents_id`),
  ADD KEY `fk_gilla4_gilla_affectations_types_id` (`types_id`);

ALTER TABLE `gilla4_gilla_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4_gilla_agents_users_id` (`users_id`);

ALTER TABLE `gilla4_gilla_emplacements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4_gilla_emplacements_emplacements_id` (`emplacements_id`);

ALTER TABLE `gilla4_gilla_etats`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gilla4_gilla_incidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4_gilla_incidents_users_id` (`users_id`),
  ADD KEY `fk_gilla4_gilla_incidents_emplacements_id` (`emplacements_id`),
  ADD KEY `fk_gilla4_gilla_incidents_types_id` (`types_id`);

ALTER TABLE `gilla4_gilla_priorites`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gilla4_gilla_prise_en_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4_gilla_prise_en_charges_agents_id` (`agents_id`),
  ADD KEY `fk_gilla4_gilla_prise_en_charges_incidents_id` (`incidents_id`),
  ADD KEY `fk_gilla4_gilla_prise_en_charges_priorites_id` (`priorites_id`),
  ADD KEY `fk_gilla4_gilla_prise_en_charges_etats_id` (`etats_id`);

ALTER TABLE `gilla4_gilla_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4_gilla_types_types_id` (`types_id`);

ALTER TABLE `gilla4_gilla_affectations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gilla4_gilla_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gilla4_gilla_emplacements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

ALTER TABLE `gilla4_gilla_etats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `gilla4_gilla_incidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gilla4_gilla_priorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `gilla4_gilla_prise_en_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `gilla4_gilla_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `gilla4_gilla_affectations`
  ADD CONSTRAINT `fk_gilla4_gilla_affectations_agents_id` FOREIGN KEY (`agents_id`) REFERENCES `gilla4_gilla_agents` (`id`),
  ADD CONSTRAINT `fk_gilla4_gilla_affectations_types_id` FOREIGN KEY (`types_id`) REFERENCES `gilla4_gilla_types` (`id`);

ALTER TABLE `gilla4_gilla_agents`
  ADD CONSTRAINT `fk_gilla4_gilla_agents_users_id` FOREIGN KEY (`users_id`) REFERENCES `gilla4_users` (`id`);

ALTER TABLE `gilla4_gilla_emplacements`
  ADD CONSTRAINT `fk_gilla4_gilla_emplacements_emplacements_id` FOREIGN KEY (`emplacements_id`) REFERENCES `gilla4_gilla_emplacements` (`id`);

ALTER TABLE `gilla4_gilla_incidents`
  ADD CONSTRAINT `fk_gilla4_gilla_incidents_emplacements_id` FOREIGN KEY (`emplacements_id`) REFERENCES `gilla4_gilla_emplacements` (`id`),
  ADD CONSTRAINT `fk_gilla4_gilla_incidents_types_id` FOREIGN KEY (`types_id`) REFERENCES `gilla4_gilla_types` (`id`),
  ADD CONSTRAINT `fk_gilla4_gilla_incidents_users_id` FOREIGN KEY (`users_id`) REFERENCES `gilla4_users` (`id`);

ALTER TABLE `gilla4_gilla_prise_en_charges`
  ADD CONSTRAINT `fk_gilla4_gilla_prise_en_charges_agents_id` FOREIGN KEY (`agents_id`) REFERENCES `gilla4_gilla_agents` (`id`),
  ADD CONSTRAINT `fk_gilla4_gilla_prise_en_charges_etats_id` FOREIGN KEY (`etats_id`) REFERENCES `gilla4_gilla_etats` (`id`),
  ADD CONSTRAINT `fk_gilla4_gilla_prise_en_charges_incidents_id` FOREIGN KEY (`incidents_id`) REFERENCES `gilla4_gilla_incidents` (`id`),
  ADD CONSTRAINT `fk_gilla4_gilla_prise_en_charges_priorites_id` FOREIGN KEY (`priorites_id`) REFERENCES `gilla4_gilla_priorites` (`id`);

ALTER TABLE `gilla4_gilla_types`
  ADD CONSTRAINT `fk_gilla4_gilla_types_types_id` FOREIGN KEY (`types_id`) REFERENCES `gilla4_gilla_types` (`id`);
