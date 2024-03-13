CREATE TABLE `#__gilla_events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `date_time` datetime NOT NULL DEFAULT '2023-01-01 00:00:00',
  `picture` varchar(400) DEFAULT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2023-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2023-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__gilla_events` (`id`, `title`, `description`, `date_time`, `picture`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 'Prérentrée 2023 des BTS1', 'La prérentrée 2023 des BTS1 aura lieu le lundi 6 septembre à 12h30.', '2023-09-06 12:30:00', '', '', 1, '2023-08-29 10:48:15', 278, '2023-08-29 10:48:16', 278, 0),
(2, 'Prérentrée 2023 des BTS2', 'La prérentrée 2023 des BTS2 aura lieu le lundi 6 septembre à 13h00.', '2023-09-06 13:00:00', '', '', 1, '2023-08-29 10:55:11', 278, '2023-08-29 10:55:12', 278, 0),
(3, 'BTS blanc 2023', 'La date du BTS blanc doit être confirmée.', '2023-03-20 09:00:00', '', '', 1, '2023-10-09 00:00:00', 278, '2023-01-01 00:00:00', 278, 0);

CREATE TABLE `#__gilla_events_users` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL DEFAULT '',
  `events_id` int(11) NOT NULL DEFAULT 1,
  `users_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2023-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2023-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `#__gilla_events_users` (`id`, `comment`, `events_id`, `users_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 'Le BTS blanc inclut toutes les épreuves écrites du BTS', 3, 279, '', 1, '2022-10-07 16:00:00', 279, '2022-10-07 16:00:00', 279, 0),
(2, 'Pour les SIO, il devrait avoir lieu après les stages.', 3, 279, '', 1, '2022-10-07 17:00:00', 279, '2022-10-07 17:00:00', 279, 0);

ALTER TABLE `#__gilla_events`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `#__gilla_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

ALTER TABLE `#__gilla_events_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_#__gilla_events_users_events_id` (`events_id`),
  ADD KEY `fk_#__gilla_events_users_users_id` (`users_id`);

ALTER TABLE `#__gilla_events_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `#__gilla_events_users`
  ADD CONSTRAINT `fk_#__gilla_events_users_events_id` FOREIGN KEY (`events_id`) REFERENCES `#__gilla_events` (`id`),
  ADD CONSTRAINT `fk_#__gilla_events_users_users_id` FOREIGN KEY (`users_id`) REFERENCES `#__users` (`id`);
