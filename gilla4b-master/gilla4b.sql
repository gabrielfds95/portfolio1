-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 15 fév. 2024 à 18:58
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gilla4b`
--

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_action_logs`
--

CREATE TABLE `gilla4b_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_action_logs`
--

INSERT INTO `gilla4b_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-10-06 08:21:15', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":279,\"title\":\"Marcel DUPOND\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:25:17', 'com_users', 278, 279, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CONTACT\",\"id\":1,\"title\":\"Info GILLA\",\"itemlink\":\"index.php?option=com_contact&task=contact.edit&id=1\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:27:03', 'com_contact.contact', 278, 1, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Accueil\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:29:05', 'com_content.article', 278, 1, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__content\"}', '2023-10-06 08:38:33', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"Lyc\\u00e9e\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:38:48', 'com_content.article', 278, 2, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Lyc\\u00e9e\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:41:30', 'com_menus.item', 278, 102, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Accueil\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:42:29', 'com_menus.item', 278, 101, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__menu\"}', '2023-10-06 08:42:29', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Contact\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:43:17', 'com_menus.item', 278, 103, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Mon profil\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:44:43', 'com_menus.item', 278, 104, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-10-06 08:45:32', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":12,\"title\":\"Cassiopeia - Default (2)\",\"extension_name\":\"Cassiopeia - Default (2)\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 08:52:25', 'com_templates.style', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_gilla_100_marine.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/gilla\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 09:04:59', 'com_media.file', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"Cassiopeia - Gilla\",\"extension_name\":\"Cassiopeia - Gilla\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 09:06:00', 'com_templates.style', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":19,\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=19\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 09:08:40', 'com_config.component', 278, 19, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__modules\"}', '2023-10-06 09:09:27', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Fil de navigation\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 09:09:27', 'com_modules.module', 278, 17, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"com_gilla\",\"extension_name\":\"com_gilla\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 09:15:14', 'com_installer', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-10-06 10:10:51', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"com_gilla\",\"extension_name\":\"com_gilla\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 10:11:41', 'com_installer', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":238,\"name\":\"com_gilla\",\"extension_name\":\"com_gilla\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 10:18:52', 'com_installer', 278, 238, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"Ev\\u00e8nements\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 10:24:26', 'com_menus.item', 278, 115, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-10-06 10:33:07', 'com_config.application', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__content\"}', '2023-10-06 10:34:31', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-08 11:23:10', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":10,\"title\":\"GILLA - Utilisateur\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=10\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:24:27', 'com_users', 278, 10, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":11,\"title\":\"GILLA - Agent\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=11\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:24:43', 'com_users', 278, 11, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER_GROUP\",\"id\":12,\"title\":\"GILLA - Responsable\",\"itemlink\":\"index.php?option=com_users&task=group.edit&id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:24:54', 'com_users', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":7,\"title\":\"GILLA_Responsable\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=7\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:26:47', 'com_users.level', 278, 7, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":8,\"title\":\"GILLA_Agent\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=8\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:27:10', 'com_users.level', 278, 8, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ACCESS_LEVEL\",\"id\":9,\"title\":\"GILLA_Utilisateur\",\"itemlink\":\"index.php?option=com_users&task=level.edit&id=9\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:28:00', 'com_users.level', 278, 9, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":280,\"title\":\"Gary GABIN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:29:18', 'com_users', 278, 280, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":281,\"title\":\"Elsa BULLOCK\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=281\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:30:16', 'com_users', 278, 281, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":282,\"title\":\"Henry BOGART\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:30:54', 'com_users', 278, 282, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":283,\"title\":\"Aline DION\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=283\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:31:30', 'com_users', 278, 283, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":284,\"title\":\"Th\\u00e9o BELMONDO\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=284\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:32:07', 'com_users', 278, 284, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":285,\"title\":\"Marc DUPLAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:32:42', 'com_users', 278, 285, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":279,\"title\":\"Marcel DUPOND\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-08 11:33:25', 'com_users', 278, 279, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-24 14:41:25', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU\",\"id\":2,\"title\":\"Gestion des incidents\",\"itemlink\":\"index.php?option=com_menus&task=menu.edit&id=2\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:47:48', 'com_menus.menu', 278, 2, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Utilisateur :\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:49:56', 'com_menus.item', 278, 116, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Agent :\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:51:06', 'com_menus.item', 278, 117, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Agent :\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:51:49', 'com_menus.item', 278, 117, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__menu\"}', '2023-11-24 14:51:49', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"Responsable :\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:52:44', 'com_menus.item', 278, 118, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Incidents ouverts\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:53:56', 'com_menus.item', 278, 119, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"Signaler un incident\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:55:14', 'com_menus.item', 278, 120, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":121,\"title\":\"Mes incidents\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=121\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:56:20', 'com_menus.item', 278, 121, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":122,\"title\":\"Incidents \\u00e0 g\\u00e9rer\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=122\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:57:27', 'com_menus.item', 278, 122, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":123,\"title\":\"Prises en charge\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=123\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:58:23', 'com_menus.item', 278, 123, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":124,\"title\":\"Agents\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=124\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 14:59:33', 'com_menus.item', 278, 124, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Affectations\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:00:37', 'com_menus.item', 278, 125, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Affectations\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:00:51', 'com_menus.item', 278, 125, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:01:05', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:01:21', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:01:31', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:01:50', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Gestion des incidents\",\"extension_name\":\"Gestion des incidents\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:05:02', 'com_modules.module', 278, 110, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Gestion des incidents\",\"extension_name\":\"Gestion des incidents\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:05:17', 'com_modules.module', 278, 110, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__modules\"}', '2023-11-24 15:05:17', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Gestion des incidents\",\"extension_name\":\"Gestion des incidents\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:05:51', 'com_modules.module', 278, 110, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__modules\"}', '2023-11-24 15:05:51', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Menu principal\",\"extension_name\":\"Menu principal\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:06:32', 'com_modules.module', 278, 1, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__modules\"}', '2023-11-24 15:06:32', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Menu principal\",\"extension_name\":\"Menu principal\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:06:44', 'com_modules.module', 278, 1, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__modules\"}', '2023-11-24 15:06:44', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:07:59', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:08:44', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":282,\"title\":\"Henry BOGART\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:09:22', 'com_users', 278, 282, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:09:35', 'com_users', 282, 0, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:10:33', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:10:48', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:10:51', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:11:01', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":280,\"title\":\"Gary GABIN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:11:26', 'com_users', 278, 280, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:11:39', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":281,\"title\":\"Elsa BULLOCK\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=281\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:13:06', 'com_users', 278, 281, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":285,\"title\":\"Marc DUPLAN\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:13:16', 'com_users', 278, 285, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":284,\"title\":\"Th\\u00e9o BELMONDO\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=284\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:13:30', 'com_users', 278, 284, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:13:36', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":285,\"username\":\"mduplan\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:13:45', 'com_users', 285, 0, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":285,\"userid\":285,\"username\":\"mduplan\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:13:49', 'com_users', 285, 285, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:14:04', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:14:06', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":284,\"username\":\"tbelmondo\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=284\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:14:20', 'com_users', 284, 0, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":283,\"title\":\"Aline DION\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=283\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:14:49', 'com_users', 278, 283, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":284,\"userid\":284,\"username\":\"tbelmondo\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=284\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:14:56', 'com_users', 284, 284, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":283,\"username\":\"adion\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=283\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:15:03', 'com_users', 283, 0, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":283,\"userid\":283,\"username\":\"adion\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=283\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:15:06', 'com_users', 283, 283, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":281,\"username\":\"ebullock\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=281\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:15:22', 'com_users', 281, 0, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":281,\"userid\":281,\"username\":\"ebullock\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=281\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:15:53', 'com_users', 281, 281, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:16:07', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:16:12', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 15:16:19', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":238,\"title\":\"com_gilla\",\"extension_name\":\"com_gilla\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=238\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:19:12', 'com_config.component', 278, 238, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":238,\"title\":\"com_gilla\",\"extension_name\":\"com_gilla\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=238\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:19:53', 'com_config.component', 278, 238, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":238,\"title\":\"com_gilla\",\"extension_name\":\"com_gilla\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=238\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-11-24 15:20:56', 'com_config.component', 278, 238, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-24 16:10:07', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 16:10:42', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 16:10:50', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 16:11:03', 'com_users', 282, 0, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 16:11:07', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-11-24 16:11:19', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-06 07:41:33', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 07:42:05', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 07:42:21', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 07:42:32', 'com_users', 282, 0, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 07:43:13', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 07:43:26', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 08:46:09', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 08:46:27', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-06 09:33:01', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 09:42:56', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 09:44:29', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 10:15:03', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 10:15:10', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 10:15:31', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(119, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 10:15:54', 'com_users', 282, 0, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 10:21:59', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 10:22:17', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(122, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 11:41:36', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 11:42:25', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(124, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 11:46:33', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 11:47:33', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(126, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":12,\"title\":\"com_media\",\"extension_name\":\"com_media\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=12\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-06 11:47:48', 'com_config.component', 278, 12, 'COM_ACTIONLOGS_DISABLED'),
(127, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 13:50:05', 'com_users', 282, 0, 'COM_ACTIONLOGS_DISABLED'),
(128, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":282,\"userid\":282,\"username\":\"hbogart\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=282\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 14:30:43', 'com_users', 282, 282, 'COM_ACTIONLOGS_DISABLED'),
(129, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 14:30:55', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(130, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-06 14:33:32', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(131, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 15:02:25', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(132, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 15:02:35', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(133, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 15:04:45', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(134, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":285,\"username\":\"mduplan\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 15:04:53', 'com_users', 285, 0, 'COM_ACTIONLOGS_DISABLED'),
(135, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":285,\"username\":\"mduplan\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 16:58:37', 'com_users', 285, 0, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `gilla4b_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(136, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":285,\"userid\":285,\"username\":\"mduplan\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=285\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:11:34', 'com_users', 285, 285, 'COM_ACTIONLOGS_DISABLED'),
(137, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":283,\"username\":\"adion\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=283\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:11:42', 'com_users', 283, 0, 'COM_ACTIONLOGS_DISABLED'),
(138, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":283,\"userid\":283,\"username\":\"adion\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=283\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:17:26', 'com_users', 283, 283, 'COM_ACTIONLOGS_DISABLED'),
(139, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:17:32', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(140, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:25:54', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(141, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:26:01', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(142, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-06 17:45:00', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(143, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-06 17:45:29', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(144, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-08 15:50:26', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(145, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":239,\"name\":\"plg_webservices_gilla\",\"extension_name\":\"plg_webservices_gilla\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-08 15:51:23', 'com_installer', 278, 239, 'COM_ACTIONLOGS_DISABLED'),
(146, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"table\":\"#__extensions\"}', '2023-12-08 15:51:42', 'com_checkin', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(147, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":239,\"title\":\"plg_webservices_gilla\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=239\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-08 15:51:42', 'com_plugins.plugin', 278, 239, 'COM_ACTIONLOGS_DISABLED'),
(148, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":278,\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-08 15:53:04', 'com_users', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(149, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-08 15:59:17', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(150, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-08 16:00:02', 'com_users', 280, 0, 'COM_ACTIONLOGS_DISABLED'),
(151, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-08 16:01:28', 'com_users', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(152, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2023-12-08 16:01:56', 'com_users', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(153, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":280,\"userid\":280,\"username\":\"ggabin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=280\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-08 16:10:28', 'com_users', 280, 280, 'COM_ACTIONLOGS_DISABLED'),
(154, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-08 16:10:41', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(155, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":279,\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2023-12-08 16:10:47', 'com_users', 279, 279, 'COM_ACTIONLOGS_DISABLED'),
(156, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":278,\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-12-08 16:10:51', 'com_users', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(157, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-14 10:42:29', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(158, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2024-02-14 10:43:06', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(159, 'PLG_ACTIONLOG_JOOMLA_USER_UPDATE', '{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"version\":\"4.4.2\",\"oldversion\":\"Inconnu\"}', '2024-02-14 10:55:43', 'com_joomlaupdate', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(160, 'PLG_ACTIONLOG_JOOMLA_USER_UPDATE', '{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":278,\"title\":\"SLAM\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"version\":\"4.4.2\",\"oldversion\":\"4.3.4\"}', '2024-02-14 10:55:43', 'com_joomlaupdate', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(161, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":233,\"name\":\"French (fr-FR)\",\"extension_name\":\"French (fr-FR)\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2024-02-14 10:56:17', 'com_installer', 278, 233, 'COM_ACTIONLOGS_DISABLED'),
(162, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":234,\"name\":\"French (fr-FR)\",\"extension_name\":\"French (fr-FR)\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2024-02-14 10:56:17', 'com_installer', 278, 234, 'COM_ACTIONLOGS_DISABLED'),
(163, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LANGUAGE\",\"id\":235,\"name\":\"French (fr-FR)\",\"extension_name\":\"French (fr-FR)\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2024-02-14 10:56:17', 'com_installer', 278, 235, 'COM_ACTIONLOGS_DISABLED'),
(164, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":229,\"name\":\"French (fr-FR) Language pack\",\"extension_name\":\"French (fr-FR) Language pack\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\"}', '2024-02-14 10:56:17', 'com_installer', 278, 229, 'COM_ACTIONLOGS_DISABLED'),
(165, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-14 15:00:52', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(166, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-14 17:24:10', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(167, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2024-02-14 17:26:45', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(168, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 10:45:25', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(169, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 11:15:44', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(170, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":279,\"username\":\"mdupond\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=279\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2024-02-15 14:36:16', 'com_users', 279, 0, 'COM_ACTIONLOGS_DISABLED'),
(171, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 14:38:09', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(172, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":278,\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 14:54:28', 'com_users', 278, 278, 'COM_ACTIONLOGS_DISABLED'),
(173, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 14:54:41', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(174, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 15:33:51', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(175, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 16:15:46', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED'),
(176, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":278,\"username\":\"SLAM\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=278\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-02-15 17:43:10', 'com_users', 278, 0, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_action_logs_extensions`
--

CREATE TABLE `gilla4b_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_action_logs_extensions`
--

INSERT INTO `gilla4b_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_action_logs_users`
--

CREATE TABLE `gilla4b_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_action_logs_users`
--

INSERT INTO `gilla4b_action_logs_users` (`user_id`, `notify`, `extensions`) VALUES
(278, 0, '[\"com_content\"]');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_action_log_config`
--

CREATE TABLE `gilla4b_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_action_log_config`
--

INSERT INTO `gilla4b_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_assets`
--

CREATE TABLE `gilla4b_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_assets`
--

INSERT INTO `gilla4b_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 187, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 42, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 43, 44, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 45, 46, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 47, 50, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 11, 48, 49, 2, 'com_languages.language.1', 'English (en-GB)', '{}'),
(13, 1, 51, 52, 1, 'com_login', 'com_login', '{}'),
(14, 1, 53, 54, 1, 'com_mails', 'com_mails', '{}'),
(15, 1, 55, 56, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1,\"10\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 57, 62, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 63, 64, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 65, 140, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 141, 144, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 145, 146, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 147, 148, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 149, 150, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 155, 158, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 23, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 142, 143, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 156, 157, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 165, 166, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 167, 168, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 169, 170, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 171, 172, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 66, 67, 2, 'com_modules.module.1', 'Menu principal', '{}'),
(40, 18, 68, 69, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 70, 71, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 72, 73, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 74, 75, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 76, 77, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 78, 79, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 80, 81, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(49, 18, 86, 87, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 88, 89, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 90, 91, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 92, 93, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 96, 97, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 58, 59, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 100, 101, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 24, 41, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 25, 26, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 27, 28, 3, 'com_content.transition.1', 'Unpublish', '{}'),
(59, 56, 29, 30, 3, 'com_content.transition.2', 'Publish', '{}'),
(60, 56, 31, 32, 3, 'com_content.transition.3', 'Trash', '{}'),
(61, 56, 33, 34, 3, 'com_content.transition.4', 'Archive', '{}'),
(62, 56, 35, 36, 3, 'com_content.transition.5', 'Feature', '{}'),
(63, 56, 37, 38, 3, 'com_content.transition.6', 'Unfeature', '{}'),
(64, 56, 39, 40, 3, 'com_content.transition.7', 'Publish & Feature', '{}'),
(65, 1, 151, 152, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 153, 154, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 82, 83, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 84, 85, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 94, 95, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 98, 99, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 102, 103, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 104, 105, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 106, 107, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 108, 109, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 110, 111, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 112, 113, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 114, 115, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 116, 117, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 118, 119, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 120, 121, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 122, 123, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 124, 125, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 126, 127, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 128, 129, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 130, 131, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 132, 133, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 134, 135, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 173, 174, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 1, 175, 176, 1, 'com_associations', 'com_associations', '{}'),
(92, 1, 177, 178, 1, 'com_categories', 'com_categories', '{}'),
(93, 1, 179, 180, 1, 'com_fields', 'com_fields', '{}'),
(94, 1, 181, 182, 1, 'com_workflow', 'com_workflow', '{}'),
(95, 1, 183, 184, 1, 'com_guidedtours', 'com_guidedtours', '{}'),
(96, 18, 136, 137, 2, 'com_modules.module.109', 'Guided Tours', '{}'),
(97, 27, 19, 20, 3, 'com_content.article.1', 'Accueil', '{}'),
(98, 27, 21, 22, 3, 'com_content.article.2', 'Lycée', '{}'),
(99, 1, 185, 186, 1, 'com_gilla', 'com_gilla', '{\"core.create\":{\"10\":1},\"core.edit\":{\"12\":1},\"core.edit.state\":{\"12\":1},\"core.edit.own\":{\"10\":1}}'),
(100, 16, 60, 61, 2, 'com_menus.menu.2', 'Gestion des incidents', '{}'),
(101, 18, 138, 139, 2, 'com_modules.module.110', 'Gestion des incidents', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_associations`
--

CREATE TABLE `gilla4b_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_banners`
--

CREATE TABLE `gilla4b_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_banner_clients`
--

CREATE TABLE `gilla4b_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_banner_tracks`
--

CREATE TABLE `gilla4b_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_categories`
--

CREATE TABLE `gilla4b_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_categories`
--

INSERT INTO `gilla4b_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 278, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 278, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 278, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 278, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 278, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 278, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 0, '*', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_contact_details`
--

CREATE TABLE `gilla4b_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_contact_details`
--

INSERT INTO `gilla4b_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Info GILLA', 'info-gilla', '', '', '', '', '', '', '', '', '', '', '', 0, 1, NULL, NULL, 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"contact_layout\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 279, 4, 1, '', '', '', '', '', '*', '2023-10-06 08:27:03', 278, '', '2023-10-06 08:27:03', 278, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_content`
--

CREATE TABLE `gilla4b_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_content`
--

INSERT INTO `gilla4b_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 97, 'Accueil', 'accueil', '<p><strong>Toute personne travaillant au lycée</strong> (élève, étudiant, enseignant, AED, CPE, personnel administratif, agent technique) <strong>peut signaler un incident</strong> au service de maintenance du lycée.</p>\r\n<p>Ces incidents à signaler concernent :</p>\r\n<ul>\r\n<li><strong>Bâtiment </strong>: portes, fenêtres, murs et sols.</li>\r\n<li><strong>Mobilier </strong>: tables, chaises et armoires.</li>\r\n<li><strong>Informatique </strong>: vidéoprojecteurs, ordinateurs, imprimantes.</li>\r\n</ul>\r\n<p><strong>L\'accès à ce service est réservé </strong>aux personnes disposant d\'un compte sur ce site.<br />La création d\'un compte se fait avec une adresse email du lycée.</p>', '', 1, 2, '2023-10-06 08:29:05', 278, '', '2023-10-06 08:29:05', 278, NULL, NULL, '2023-10-06 08:29:05', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 68, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(2, 98, 'Lycée', 'lycee', '<p>Le lycée polyvalent Louis Armand situé à Paris 15<sup>e</sup> offre aux élèves un parcours diversifié :</p>\r\n<ul>\r\n<li>Voie générale : BAC Spé Maths/PC/NSI/SES/HG/SVT.</li>\r\n<li>Voie technologique : BAC STI2D / STMG.</li>\r\n<li>Voie professionnelle : BAC Pro MELEC / CIEL / Photographie.</li>\r\n</ul>\r\n<p>Après le BAC, le lycée offre les formations supérieures suivantes :</p>\r\n<ul>\r\n<li>BTS CIEL (ancien Systèmes Numériques).</li>\r\n<li>BTS Gestion de la PME.</li>\r\n<li>BTS Management Commercial Opérationnel.</li>\r\n<li>BTS Services Informatiques aux Organisations.</li>\r\n<li>BTS Assistant Technique d’Ingénieur.</li>\r\n<li>BTS Photographie en alternance.</li>\r\n<li>BTS Assistant Technique d’Ingénieur en alternance.</li>\r\n</ul>', '', 1, 2, '2023-10-06 08:38:48', 278, '', '2023-10-06 08:38:48', 278, NULL, NULL, '2023-10-06 08:38:48', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_contentitem_tag_map`
--

CREATE TABLE `gilla4b_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_content_frontpage`
--

CREATE TABLE `gilla4b_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_content_rating`
--

CREATE TABLE `gilla4b_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_content_types`
--

CREATE TABLE `gilla4b_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_content_types`
--

INSERT INTO `gilla4b_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_extensions`
--

CREATE TABLE `gilla4b_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_extensions`
--

INSERT INTO `gilla4b_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}', '{\"administrator\":\"fr-FR\",\"site\":\"fr-FR\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'com_guidedtours', 'component', 'com_guidedtours', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_joomla', 'library', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'lib_phpass', 'library', 'phpass', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_banners', 'module', 'mod_banners', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_footer', 'module', 'mod_footer', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_login', 'module', 'mod_login', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_articles_news', 'module', 'mod_articles_news', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_random_image', 'module', 'mod_random_image', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_related_items', 'module', 'mod_related_items', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_stats', 'module', 'mod_stats', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_syndicate', 'module', 'mod_syndicate', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_users_latest', 'module', 'mod_users_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_whosonline', 'module', 'mod_whosonline', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_wrapper', 'module', 'mod_wrapper', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_category', 'module', 'mod_articles_category', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_languages', 'module', 'mod_languages', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_finder', 'module', 'mod_finder', NULL, '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_latest', 'module', 'mod_latest', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_logged', 'module', 'mod_logged', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_login', 'module', 'mod_login', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_popular', 'module', 'mod_popular', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_quickicon', 'module', 'mod_quickicon', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_frontend', 'module', 'mod_frontend', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_messages', 'module', 'mod_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_user', 'module', 'mod_user', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_title', 'module', 'mod_title', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_toolbar', 'module', 'mod_toolbar', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(77, 0, 'mod_version', 'module', 'mod_version', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `gilla4b_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(80, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_sampledata', 'module', 'mod_sampledata', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_latestactions', 'module', 'mod_latestactions', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_submenu', 'module', 'mod_submenu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(86, 0, 'mod_guidedtours', 'module', 'mod_guidedtours', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(87, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', NULL, 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(88, 0, 'plg_api-authentication_basic', 'plugin', 'basic', NULL, 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_api-authentication_token', 'plugin', 'token', NULL, 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(90, 0, 'plg_authentication_cookie', 'plugin', 'cookie', NULL, 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(91, 0, 'plg_authentication_joomla', 'plugin', 'joomla', NULL, 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(92, 0, 'plg_authentication_ldap', 'plugin', 'ldap', NULL, 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(93, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(94, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(95, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', NULL, 'captcha', 0, 0, 1, 0, 1, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\ReCaptcha\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', NULL, NULL, 1, 0, NULL),
(96, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', NULL, 'captcha', 0, 0, 1, 0, 1, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"2017-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\InvisibleReCaptcha\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', NULL, NULL, 2, 0, NULL),
(97, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(98, 0, 'plg_content_contact', 'plugin', 'contact', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(99, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(100, 0, 'plg_content_fields', 'plugin', 'fields', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(101, 0, 'plg_content_finder', 'plugin', 'finder', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(102, 0, 'plg_content_joomla', 'plugin', 'joomla', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(103, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(104, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(105, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(106, 0, 'plg_content_vote', 'plugin', 'vote', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(107, 0, 'plg_editors-xtd_article', 'plugin', 'article', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(108, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(109, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(110, 0, 'plg_editors-xtd_image', 'plugin', 'image', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(111, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(112, 0, 'plg_editors-xtd_module', 'plugin', 'module', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(113, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(114, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(115, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.65.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(116, 0, 'plg_editors_none', 'plugin', 'none', NULL, 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(117, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"5.10.9\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', NULL, NULL, 3, 0, NULL),
(118, 0, 'plg_extension_finder', 'plugin', 'finder', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(119, 0, 'plg_extension_joomla', 'plugin', 'joomla', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(120, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', NULL, 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(121, 0, 'plg_fields_calendar', 'plugin', 'calendar', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(122, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(123, 0, 'plg_fields_color', 'plugin', 'color', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(124, 0, 'plg_fields_editor', 'plugin', 'editor', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}', '{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"JComponentHelper::filterText\"}', '', NULL, NULL, 4, 0, NULL),
(125, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(126, 0, 'plg_fields_integer', 'plugin', 'integer', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(127, 0, 'plg_fields_list', 'plugin', 'list', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(128, 0, 'plg_fields_media', 'plugin', 'media', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(129, 0, 'plg_fields_radio', 'plugin', 'radio', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}', '', '', NULL, NULL, 9, 0, NULL),
(130, 0, 'plg_fields_sql', 'plugin', 'sql', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}', '', '', NULL, NULL, 10, 0, NULL),
(131, 0, 'plg_fields_subform', 'plugin', 'subform', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}', '', '', NULL, NULL, 11, 0, NULL),
(132, 0, 'plg_fields_text', 'plugin', 'text', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}', '', '', NULL, NULL, 12, 0, NULL),
(133, 0, 'plg_fields_textarea', 'plugin', 'textarea', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}', '{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"JComponentHelper::filterText\"}', '', NULL, NULL, 13, 0, NULL),
(134, 0, 'plg_fields_url', 'plugin', 'url', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}', '', '', NULL, NULL, 14, 0, NULL),
(135, 0, 'plg_fields_user', 'plugin', 'user', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}', '', '', NULL, NULL, 15, 0, NULL),
(136, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 16, 0, NULL),
(137, 0, 'plg_filesystem_local', 'plugin', 'local', NULL, 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(138, 0, 'plg_finder_categories', 'plugin', 'categories', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(139, 0, 'plg_finder_contacts', 'plugin', 'contacts', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(140, 0, 'plg_finder_content', 'plugin', 'content', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(141, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(142, 0, 'plg_finder_tags', 'plugin', 'tags', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(143, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(144, 0, 'plg_installer_override', 'plugin', 'override', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(145, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(146, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(147, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(148, 0, 'plg_media-action_crop', 'plugin', 'crop', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(149, 0, 'plg_media-action_resize', 'plugin', 'resize', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(150, 0, 'plg_media-action_rotate', 'plugin', 'rotate', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(151, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(152, 0, 'plg_privacy_consents', 'plugin', 'consents', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(153, 0, 'plg_privacy_contact', 'plugin', 'contact', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(154, 0, 'plg_privacy_content', 'plugin', 'content', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(155, 0, 'plg_privacy_message', 'plugin', 'message', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(156, 0, 'plg_privacy_user', 'plugin', 'user', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(157, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(158, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(159, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 3, 0, NULL),
(160, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 4, 0, NULL),
(161, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(162, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 6, 0, NULL);
INSERT INTO `gilla4b_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(163, 0, 'plg_sampledata_blog', 'plugin', 'blog', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(164, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(165, 0, 'plg_system_accessibility', 'plugin', 'accessibility', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(166, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(167, 0, 'plg_system_cache', 'plugin', 'cache', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(168, 0, 'plg_system_debug', 'plugin', 'debug', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(169, 0, 'plg_system_fields', 'plugin', 'fields', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(170, 0, 'plg_system_highlight', 'plugin', 'highlight', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(171, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(172, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(173, 0, 'plg_system_languagecode', 'plugin', 'languagecode', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(174, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(175, 0, 'plg_system_log', 'plugin', 'log', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(176, 0, 'plg_system_logout', 'plugin', 'logout', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(177, 0, 'plg_system_logrotation', 'plugin', 'logrotation', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LogRotation\",\"filename\":\"logrotation\"}', '{\"lastrun\":1707907332}', '', NULL, NULL, 13, 0, NULL),
(178, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(179, 0, 'plg_system_redirect', 'plugin', 'redirect', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL),
(180, 0, 'plg_system_remember', 'plugin', 'remember', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(181, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(182, 0, 'plg_system_sef', 'plugin', 'sef', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}', '', '', NULL, NULL, 18, 0, NULL),
(183, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2018-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\SessionGC\",\"filename\":\"sessiongc\"}', '', '', NULL, NULL, 19, 0, NULL),
(184, 0, 'plg_system_shortcut', 'plugin', 'shortcut', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(185, 0, 'plg_system_skipto', 'plugin', 'skipto', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 20, 0, NULL),
(186, 0, 'plg_system_stats', 'plugin', 'stats', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"30f51d45d814e4a9febac65c1ba0903f93015a24\",\"interval\":12}', '', NULL, NULL, 21, 0, NULL),
(187, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 22, 0, NULL),
(188, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2015-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\UpdateNotification\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1708016224}', '', NULL, NULL, 23, 0, NULL),
(189, 0, 'plg_system_webauthn', 'plugin', 'webauthn', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 24, 0, NULL),
(190, 0, 'plg_task_check_files', 'plugin', 'checkfiles', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(191, 0, 'plg_task_demo_tasks', 'plugin', 'demotasks', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_demo_tasks\",\"type\":\"plugin\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_DEMO_TASKS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DemoTasks\",\"filename\":\"demotasks\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(192, 0, 'plg_task_requests', 'plugin', 'requests', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(193, 0, 'plg_task_site_status', 'plugin', 'sitestatus', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(194, 0, 'plg_multifactorauth_totp', 'plugin', 'totp', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(195, 0, 'plg_multifactorauth_yubikey', 'plugin', 'yubikey', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(196, 0, 'plg_multifactorauth_webauthn', 'plugin', 'webauthn', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}', '', '', NULL, NULL, 3, 0, NULL),
(197, 0, 'plg_multifactorauth_email', 'plugin', 'email', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}', '', '', NULL, NULL, 4, 0, NULL),
(198, 0, 'plg_multifactorauth_fixed', 'plugin', 'fixed', NULL, 'multifactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}', '', '', NULL, NULL, 5, 0, NULL),
(199, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(200, 0, 'plg_user_joomla', 'plugin', 'joomla', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(201, 0, 'plg_user_profile', 'plugin', 'profile', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(202, 0, 'plg_user_terms', 'plugin', 'terms', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(203, 0, 'plg_user_token', 'plugin', 'token', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(204, 0, 'plg_webservices_banners', 'plugin', 'banners', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(205, 0, 'plg_webservices_config', 'plugin', 'config', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(206, 0, 'plg_webservices_contact', 'plugin', 'contact', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(207, 0, 'plg_webservices_content', 'plugin', 'content', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(208, 0, 'plg_webservices_installer', 'plugin', 'installer', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(209, 0, 'plg_webservices_languages', 'plugin', 'languages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(210, 0, 'plg_webservices_media', 'plugin', 'media', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(211, 0, 'plg_webservices_menus', 'plugin', 'menus', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(212, 0, 'plg_webservices_messages', 'plugin', 'messages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(213, 0, 'plg_webservices_modules', 'plugin', 'modules', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(214, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(215, 0, 'plg_webservices_plugins', 'plugin', 'plugins', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(216, 0, 'plg_webservices_privacy', 'plugin', 'privacy', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(217, 0, 'plg_webservices_redirect', 'plugin', 'redirect', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(218, 0, 'plg_webservices_tags', 'plugin', 'tags', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(219, 0, 'plg_webservices_templates', 'plugin', 'templates', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(220, 0, 'plg_webservices_users', 'plugin', 'users', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(221, 0, 'plg_workflow_featuring', 'plugin', 'featuring', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(222, 0, 'plg_workflow_notification', 'plugin', 'notification', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(223, 0, 'plg_workflow_publishing', 'plugin', 'publishing', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(224, 0, 'plg_system_guidedtours', 'plugin', 'guidedtours', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(225, 0, 'atum', 'template', 'atum', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(226, 0, 'cassiopeia', 'template', 'cassiopeia', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"logoFile\":\"\",\"fluidContainer\":\"0\",\"sidebarLeftWidth\":\"3\",\"sidebarRightWidth\":\"3\"}', '', NULL, NULL, 0, 0, NULL),
(227, 0, 'files_joomla', 'file', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(228, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.2.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL),
(229, 0, 'French (fr-FR) Language pack', 'package', 'pkg_fr-FR', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"French (fr-FR) Language pack\",\"type\":\"package\",\"creationDate\":\"09-01-2024\",\"author\":\"Joomla! Project - French translation team\",\"copyright\":\"Copyright (C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"4.4.2.1\",\"description\":\"<div style=\\\"text-align: left;\\\">\\n<h3>Joomla! 4 Full French (fr-FR) Language Package - Version 4.4.2 v1<\\/h3>\\n<h3>Pack de langue Joomla! 4 fran\\u00e7ais (fr-FR) complet - Version 4.4.2 v1<\\/h3>\\n<p><a href=\\\"https:\\/www.joomla.fr\\\" target=\\\"_blank\\\">www.joomla.fr<\\/a> - <a href=\\\"mailto:traduction@joomla.fr\\\">traduction@joomla.fr<\\/a><\\/p>\\n<\\/div>\",\"group\":\"\",\"filename\":\"pkg_fr-FR\"}', '', '', NULL, NULL, 0, 0, NULL),
(230, 228, 'English (en-GB)', 'language', 'en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.2\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(231, 228, 'English (en-GB)', 'language', 'en-GB', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(232, 228, 'English (en-GB)', 'language', 'en-GB', NULL, '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.2\",\"description\":\"en-GB api language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(233, 229, 'French (fr-FR)', 'language', 'fr-FR', '', '', 0, 1, 0, 0, 0, '{\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"09-01-2024\",\"author\":\"Joomla! Project - French translation team\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"4.4.2\",\"description\":\"fr-FR site language\",\"group\":\"\",\"filename\":\"install\"}', '', '', NULL, NULL, 0, 0, NULL),
(234, 229, 'French (fr-FR)', 'language', 'fr-FR', '', '', 1, 1, 0, 0, 0, '{\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"09-01-2024\",\"author\":\"Joomla! Project - French translation team\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"4.4.2\",\"description\":\"fr-FR Administrator language\",\"group\":\"\",\"filename\":\"install\"}', '', '', NULL, NULL, 0, 0, NULL),
(235, 229, 'French (fr-FR)', 'language', 'fr-FR', '', '', 3, 1, 0, 0, 0, '{\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"09-01-2024\",\"author\":\"Joomla! Project - French translation team\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"www.joomla.fr\",\"version\":\"4.4.2\",\"description\":\"fr-FR api language\",\"group\":\"\",\"filename\":\"install\"}', '', '', NULL, NULL, 0, 0, NULL),
(238, 0, 'com_gilla', 'component', 'com_gilla', '', '', 1, 1, 0, 0, 0, '{\"name\":\"com_gilla\",\"type\":\"component\",\"creationDate\":\"Oct 2023\",\"author\":\"SIO\",\"copyright\":\"Copyright (C) 2021-2023 SIO, all rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"0.6.2\",\"description\":\"COM_GILLA_DESCRIPTION\",\"group\":\"\",\"namespace\":\"J4xSio\\\\Component\\\\Gilla\",\"filename\":\"gilla\"}', '{\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"sef_ids\":0}', '', NULL, NULL, 0, 0, NULL),
(239, 0, 'plg_webservices_gilla', 'plugin', 'gilla', '', 'webservices', 0, 1, 1, 0, 0, '{\"name\":\"plg_webservices_gilla\",\"type\":\"plugin\",\"creationDate\":\"Dec 2023\",\"author\":\"SIO\",\"copyright\":\"Copyright (C) 2021-2024 SIO, all rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"0.6.0\",\"description\":\"PLG_WEBSERVICES_GILLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gilla\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(240, 0, 'plg_quickicon_eos', 'plugin', 'eos', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}', '', '', NULL, NULL, 7, 0, NULL),
(241, 0, 'plg_behaviour_compat', 'plugin', 'compat', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}', '{}', '', NULL, NULL, -1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_fields`
--

CREATE TABLE `gilla4b_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_fields_categories`
--

CREATE TABLE `gilla4b_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_fields_groups`
--

CREATE TABLE `gilla4b_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_fields_values`
--

CREATE TABLE `gilla4b_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_filters`
--

CREATE TABLE `gilla4b_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_links`
--

CREATE TABLE `gilla4b_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_links`
--

INSERT INTO `gilla4b_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_contact&view=contact&id=1', 'index.php?option=com_contact&view=contact&id=1:info-gilla&catid=4:uncategorised', 'Info GILLA', '', '2023-10-06 08:27:03', '151f6746412e04d7fda2ae6ea553a60b', 1, 1, 1, '*', NULL, NULL, '2023-10-06 08:27:03', NULL, 0, 0, 2, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2266722d4652223b693a323b733a303a22223b693a333b613a33333a7b733a323a226964223b693a313b733a353a22616c696173223b733a31303a22696e666f2067696c6c61223b733a383a22706f736974696f6e223b733a303a22223b733a373a2261646472657373223b733a303a22223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032332d31302d30362030383a32373a3033223b733a31313a226d6f6469666965645f6279223b693a3237383b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b733a32353a227b22726f626f7473223a22222c22726967687473223a22227d223b733a393a22736f72746e616d6531223b733a303a22223b733a393a22736f72746e616d6532223b733a303a22223b733a393a22736f72746e616d6533223b733a303a22223b733a343a2263697479223b733a303a22223b733a363a22726567696f6e223b733a303a22223b733a373a22636f756e747279223b733a303a22223b733a333a227a6970223b733a303a22223b733a393a2274656c6570686f6e65223b733a303a22223b733a333a22666178223b733a303a22223b733a373a2273756d6d617279223b733a303a22223b733a353a22656d61696c223b733a303a22223b733a363a226d6f62696c65223b733a303a22223b733a373a2277656270616765223b733a303a22223b733a383a226f72646572696e67223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a34303a7b733a32313a2273686f775f636f6e746163745f63617465676f7279223b733a303a22223b733a31373a2273686f775f636f6e746163745f6c697374223b733a303a22223b733a393a2273686f775f74616773223b733a303a22223b733a393a2273686f775f696e666f223b733a303a22223b733a393a2273686f775f6e616d65223b733a303a22223b733a31333a2273686f775f706f736974696f6e223b733a303a22223b733a31303a2273686f775f656d61696c223b733a303a22223b733a31353a226164645f6d61696c746f5f6c696e6b223b733a303a22223b733a31393a2273686f775f7374726565745f61646472657373223b733a303a22223b733a31313a2273686f775f737562757262223b733a303a22223b733a31303a2273686f775f7374617465223b733a303a22223b733a31333a2273686f775f706f7374636f6465223b733a303a22223b733a31323a2273686f775f636f756e747279223b733a303a22223b733a31343a2273686f775f74656c6570686f6e65223b733a303a22223b733a31313a2273686f775f6d6f62696c65223b733a303a22223b733a383a2273686f775f666178223b733a303a22223b733a31323a2273686f775f77656270616765223b733a303a22223b733a31303a2273686f775f696d616765223b733a303a22223b733a393a2273686f775f6d697363223b733a303a22223b733a31313a22616c6c6f775f7663617264223b733a303a22223b733a31333a2273686f775f61727469636c6573223b733a303a22223b733a32303a2261727469636c65735f646973706c61795f6e756d223b733a303a22223b733a31323a2273686f775f70726f66696c65223b733a303a22223b733a31343a22636f6e746163745f6c61796f7574223b733a303a22223b733a31303a2273686f775f6c696e6b73223b733a303a22223b733a31303a226c696e6b615f6e616d65223b733a303a22223b733a353a226c696e6b61223b733a303a22223b733a31303a226c696e6b625f6e616d65223b733a303a22223b733a353a226c696e6b62223b733a303a22223b733a31303a226c696e6b635f6e616d65223b733a303a22223b733a353a226c696e6b63223b733a303a22223b733a31303a226c696e6b645f6e616d65223b733a303a22223b733a353a226c696e6b64223b733a303a22223b733a31303a226c696e6b655f6e616d65223b733a303a22223b733a353a226c696e6b65223b733a303a22223b733a31353a2273686f775f656d61696c5f666f726d223b733a303a22223b733a31353a2273686f775f656d61696c5f636f7079223b733a303a22223b733a31363a2276616c69646174655f73657373696f6e223b733a303a22223b733a31323a22637573746f6d5f7265706c79223b733a303a22223b733a383a227265646972656374223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a353a226361746964223b693a343b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31323a22313a696e666f2d67696c6c61223b733a373a22636174736c7567223b733a31353a22343a756e63617465676f7269736564223b733a343a226e616d65223b733a31333a224d617263656c204455504f4e44223b733a363a226c61796f7574223b733a373a22636f6e74616374223b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a31353a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a383a22706f736974696f6e223b693a343b733a373a2261646472657373223b693a353b733a343a2263697479223b693a363b733a363a22726567696f6e223b693a373b733a373a22636f756e747279223b693a383b733a333a227a6970223b693a393b733a393a2274656c6570686f6e65223b693a31303b733a333a22666178223b693a31313b733a353a22656d61696c223b693a31323b733a363a226d6f62696c65223b693a31333b733a373a2277656270616765223b693a31343b733a343a2275736572223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a37393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d313a696e666f2d67696c6c612663617469643d343a756e63617465676f7269736564223b693a31323b4e3b693a31333b733a31393a22323032332d31302d30362030383a32373a3033223b693a31343b693a313b693a31353b613a333a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a22436f6e74616374223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a31303a22496e666f2047494c4c41223b693a31373b693a323b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e7461637426766965773d636f6e746163742669643d31223b7d),
(2, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:accueil&catid=2', 'Accueil', ' Toute personne travaillant au lycée (élève, étudiant, enseignant, AED, CPE, personnel administratif, agent technique) peut signaler un incident au service de maintenance du lycée. Ces incidents à signaler concernent : Bâtiment : portes, fenêtres, murs et sols. Mobilier : tables, chaises et armoires. Informatique : vidéoprojecteurs, ordinateurs, imprimantes. L\'accès à ce service est réservé aux personnes disposant d\'un compte sur ce site. La création d\'un compte se fait avec une adresse email du lycée. ', '2023-10-06 08:29:05', '4a3dcf9afb428f42a2894ada4b640529', 1, 1, 1, '*', '2023-10-06 08:29:05', NULL, '2023-10-06 08:29:05', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2266722d4652223b693a323b733a3532333a2220546f75746520706572736f6e6e65207472617661696c6c616e74206175206c7963c3a9652028c3a96cc3a876652c20c3a974756469616e742c20656e736569676e616e742c204145442c204350452c20706572736f6e6e656c2061646d696e69737472617469662c206167656e7420746563686e69717565292070657574207369676e616c657220756e20696e636964656e742061752073657276696365206465206d61696e74656e616e6365206475206c7963c3a9652e2043657320696e636964656e747320c3a0207369676e616c657220636f6e6365726e656e74203a2042c3a274696d656e74203a20706f727465732c2066656ec3aa747265732c206d75727320657420736f6c732e204d6f62696c696572203a207461626c65732c20636861697365732065742061726d6f697265732e20496e666f726d617469717565203a20766964c3a96f70726f6a656374657572732c206f7264696e6174657572732c20696d7072696d616e7465732e204c27616363c3a87320c3a02063652073657276696365206573742072c3a973657276c3a92061757820706572736f6e6e657320646973706f73616e74206427756e20636f6d7074652073757220636520736974652e204c61206372c3a96174696f6e206427756e20636f6d7074652073652066616974206176656320756e65206164726573736520656d61696c206475206c7963c3a9652e20223b693a333b613a32353a7b733a323a226964223b693a313b733a353a22616c696173223b733a373a226163637565696c223b733a373a2273756d6d617279223b733a3639373a223c703e3c7374726f6e673e546f75746520706572736f6e6e65207472617661696c6c616e74206175206c7963c3a9653c2f7374726f6e673e2028c3a96cc3a876652c20c3a974756469616e742c20656e736569676e616e742c204145442c204350452c20706572736f6e6e656c2061646d696e69737472617469662c206167656e7420746563686e6971756529203c7374726f6e673e70657574207369676e616c657220756e20696e636964656e743c2f7374726f6e673e2061752073657276696365206465206d61696e74656e616e6365206475206c7963c3a9652e3c2f703e0d0a3c703e43657320696e636964656e747320c3a0207369676e616c657220636f6e6365726e656e74203a3c2f703e0d0a3c756c3e0d0a3c6c693e3c7374726f6e673e42c3a274696d656e74c2a03c2f7374726f6e673e3a20706f727465732c2066656ec3aa747265732c206d75727320657420736f6c732e3c2f6c693e0d0a3c6c693e3c7374726f6e673e4d6f62696c696572c2a03c2f7374726f6e673e3a207461626c65732c20636861697365732065742061726d6f697265732e3c2f6c693e0d0a3c6c693e3c7374726f6e673e496e666f726d617469717565c2a03c2f7374726f6e673e3a20766964c3a96f70726f6a656374657572732c206f7264696e6174657572732c20696d7072696d616e7465732e3c2f6c693e0d0a3c2f756c3e0d0a3c703e3c7374726f6e673e4c27616363c3a87320c3a02063652073657276696365206573742072c3a973657276c3a9203c2f7374726f6e673e61757820706572736f6e6e657320646973706f73616e74206427756e20636f6d7074652073757220636520736974652e3c6272202f3e4c61206372c3a96174696f6e206427756e20636f6d7074652073652066616974206176656320756e65206164726573736520656d61696c206475206c7963c3a9652e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3237383b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032332d31302d30362030383a32393a3035223b733a31313a226d6f6469666965645f6279223b693a3237383b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a393a22313a6163637565696c223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a343a22534c414d223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032332d31302d30362030383a32393a3035223b693a31303b4e3b693a31313b733a36323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a6163637565696c2663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032332d31302d30362030383a32393a3035223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22534c414d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a373a224163637565696c223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d),
(3, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:lycee&catid=2', 'Lycée', ' Le lycée polyvalent Louis Armand situé à Paris 15e offre aux élèves un parcours diversifié : Voie générale : BAC Spé Maths/PC/NSI/SES/HG/SVT. Voie technologique : BAC STI2D / STMG. Voie professionnelle : BAC Pro MELEC / CIEL / Photographie. Après le BAC, le lycée offre les formations supérieures suivantes : BTS CIEL (ancien Systèmes Numériques). BTS Gestion de la PME. BTS Management Commercial Opérationnel. BTS Services Informatiques aux Organisations. BTS Assistant Technique d’Ingénieur. BTS Photographie en alternance. BTS Assistant Technique d’Ingénieur en alternance. ', '2023-10-06 08:38:48', 'd289ade5b0574bcba41544d160fa1dcc', 1, 1, 1, '*', '2023-10-06 08:38:48', NULL, '2023-10-06 08:38:48', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a2266722d4652223b693a323b733a3539393a22204c65206c7963c3a96520706f6c7976616c656e74204c6f7569732041726d616e642073697475c3a920c3a020506172697320313565206f666672652061757820c3a96cc3a876657320756e20706172636f75727320646976657273696669c3a9203a20566f69652067c3a96ec3a972616c65203a20424143205370c3a9204d617468732f50432f4e53492f5345532f48472f5356542e20566f696520746563686e6f6c6f6769717565203a20424143205354493244202f2053544d472e20566f69652070726f66657373696f6e6e656c6c65203a204241432050726f204d454c4543202f204349454c202f2050686f746f677261706869652e20417072c3a873206c65204241432c206c65206c7963c3a965206f66667265206c657320666f726d6174696f6e7320737570c3a9726965757265732073756976616e746573203a20425453204349454c2028616e6369656e2053797374c3a86d6573204e756dc3a9726971756573292e204254532047657374696f6e206465206c6120504d452e20425453204d616e6167656d656e7420436f6d6d65726369616c204f70c3a9726174696f6e6e656c2e2042545320536572766963657320496e666f726d6174697175657320617578204f7267616e69736174696f6e732e2042545320417373697374616e7420546563686e697175652064e28099496e67c3a96e696575722e204254532050686f746f6772617068696520656e20616c7465726e616e63652e2042545320417373697374616e7420546563686e697175652064e28099496e67c3a96e6965757220656e20616c7465726e616e63652e20223b693a333b613a32353a7b733a323a226964223b693a323b733a353a22616c696173223b733a353a226c79636565223b733a373a2273756d6d617279223b733a3734393a223c703e4c65206c7963c3a96520706f6c7976616c656e74204c6f7569732041726d616e642073697475c3a920c3a02050617269732031353c7375703e653c2f7375703e206f666672652061757820c3a96cc3a876657320756e20706172636f75727320646976657273696669c3a9203a3c2f703e0d0a3c756c3e0d0a3c6c693e566f69652067c3a96ec3a972616c65203a20424143205370c3a9204d617468732f50432f4e53492f5345532f48472f5356542e3c2f6c693e0d0a3c6c693e566f696520746563686e6f6c6f6769717565203a20424143205354493244202f2053544d472e3c2f6c693e0d0a3c6c693e566f69652070726f66657373696f6e6e656c6c65203a204241432050726f204d454c4543202f204349454c202f2050686f746f677261706869652e3c2f6c693e0d0a3c2f756c3e0d0a3c703e417072c3a873206c65204241432c206c65206c7963c3a965206f66667265206c657320666f726d6174696f6e7320737570c3a9726965757265732073756976616e746573203a3c2f703e0d0a3c756c3e0d0a3c6c693e425453204349454c2028616e6369656e2053797374c3a86d6573204e756dc3a9726971756573292e3c2f6c693e0d0a3c6c693e4254532047657374696f6e206465206c6120504d452e3c2f6c693e0d0a3c6c693e425453204d616e6167656d656e7420436f6d6d65726369616c204f70c3a9726174696f6e6e656c2e3c2f6c693e0d0a3c6c693e42545320536572766963657320496e666f726d6174697175657320617578204f7267616e69736174696f6e732e3c2f6c693e0d0a3c6c693e42545320417373697374616e7420546563686e697175652064e28099496e67c3a96e696575722e3c2f6c693e0d0a3c6c693e4254532050686f746f6772617068696520656e20616c7465726e616e63652e3c2f6c693e0d0a3c6c693e42545320417373697374616e7420546563686e697175652064e28099496e67c3a96e6965757220656e20616c7465726e616e63652e3c2f6c693e0d0a3c2f756c3e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3237383b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032332d31302d30362030383a33383a3438223b733a31313a226d6f6469666965645f6279223b693a3237383b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a373a22323a6c79636565223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a343a22534c414d223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032332d31302d30362030383a33383a3438223b693a31303b4e3b693a31313b733a36303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a6c796365652663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032332d31302d30362030383a33383a3438223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22534c414d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a303a22223b733a363a226e6573746564223b623a303b733a323a226964223b693a373b7d7d7d693a31363b733a363a224c7963c3a965223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b7d);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_links_terms`
--

CREATE TABLE `gilla4b_finder_links_terms` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_links_terms`
--

INSERT INTO `gilla4b_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0.17),
(2, 1, 0.17),
(1, 2, 1.23321),
(1, 3, 0.98679),
(2, 4, 1.72679),
(2, 5, 0.60669),
(2, 6, 0.32669),
(2, 7, 0.14),
(2, 8, 0.23331),
(2, 9, 0.37331),
(2, 10, 0.18662),
(2, 11, 0.14),
(3, 11, 0.28),
(2, 12, 0.18669),
(2, 13, 0.37331),
(2, 14, 0.18662),
(2, 15, 0.14),
(2, 16, 0.32669),
(2, 17, 0.56),
(2, 18, 0.46669),
(2, 19, 0.14),
(2, 20, 0.37331),
(2, 21, 0.37338),
(2, 22, 0.09331),
(3, 22, 0.09331),
(2, 23, 0.42),
(2, 24, 0.18662),
(2, 25, 0.23331),
(2, 26, 0.46669),
(2, 27, 0.14),
(2, 28, 0.18662),
(2, 29, 0.18669),
(2, 30, 0.37331),
(2, 31, 0.51331),
(2, 32, 0.37331),
(2, 33, 0.42),
(2, 34, 0.56),
(2, 35, 0.32669),
(2, 36, 0.09331),
(3, 36, 0.09331),
(2, 37, 0.69993),
(3, 37, 1.03323),
(2, 38, 0.51331),
(2, 39, 0.37331),
(2, 40, 0.18669),
(2, 41, 0.51331),
(2, 42, 0.37331),
(2, 43, 0.42),
(2, 44, 0.42),
(2, 45, 0.18669),
(2, 46, 0.28),
(2, 47, 0.32669),
(2, 48, 0.09331),
(2, 49, 0.65338),
(2, 50, 0.74662),
(2, 51, 0.18669),
(2, 52, 0.32004),
(3, 52, 0.32004),
(2, 53, 0.18669),
(2, 54, 0.14),
(2, 55, 0.28),
(2, 56, 0.42),
(3, 56, 0.84),
(2, 57, 0.23331),
(2, 58, 0.51331),
(2, 59, 0.09331),
(3, 59, 0.09331),
(2, 60, 0.14),
(2, 61, 0.7),
(3, 62, 0.04669),
(2, 62, 0.09338),
(2, 63, 0.23331),
(2, 64, 0.37331),
(3, 67, 0.14),
(3, 68, 0.17),
(3, 69, 0.93338),
(3, 70, 0.28),
(3, 71, 0.23331),
(3, 72, 0.28),
(3, 73, 0.84),
(3, 74, 0.56),
(3, 75, 0.98),
(3, 76, 0.37338),
(3, 77, 0.46669),
(3, 78, 1.02662),
(3, 79, 0.46669),
(3, 80, 0.18662),
(3, 81, 0.46669),
(3, 82, 0.32669),
(3, 83, 0.37331),
(3, 84, 0.09331),
(3, 85, 0.60669),
(3, 86, 0.27993),
(3, 87, 0.14),
(3, 88, 0.23331),
(3, 89, 0.6666),
(3, 90, 0.46669),
(3, 91, 0.23331),
(3, 92, 0.23331),
(3, 93, 0.14),
(3, 94, 0.46669),
(3, 95, 0.46662),
(3, 96, 0.56),
(3, 97, 0.60669),
(3, 98, 0.37331),
(3, 99, 0.23331),
(3, 100, 0.09331),
(3, 101, 1.12),
(3, 102, 0.14),
(3, 103, 0.46669),
(3, 104, 0.14),
(3, 105, 0.7),
(3, 106, 0.37331),
(3, 107, 0.14),
(3, 108, 0.23331),
(3, 109, 0.14),
(3, 110, 0.23331),
(3, 111, 0.18669),
(3, 112, 0.42),
(3, 113, 0.51331),
(3, 114, 0.14),
(3, 115, 0.37331),
(3, 116, 0.60669),
(3, 117, 0.56007),
(3, 118, 0.28);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_logging`
--

CREATE TABLE `gilla4b_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_taxonomy`
--

CREATE TABLE `gilla4b_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_taxonomy`
--

INSERT INTO `gilla4b_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 19, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 6, 1, 'type', 'Type', 'type', 1, 1, ''),
(3, 2, 2, 3, 2, 'type/contact', 'Contact', 'contact', 1, 1, ''),
(4, 1, 7, 10, 1, 'category', 'Category', 'category', 1, 1, ''),
(5, 4, 8, 9, 2, 'category/uncategorised', 'Uncategorised', 'uncategorised', 1, 1, '*'),
(6, 1, 11, 14, 1, 'language', 'Language', 'language', 1, 1, ''),
(7, 6, 12, 13, 2, 'language/faef360113599eb6a0282d981cc199d8', '*', 'faef360113599eb6a0282d981cc199d8', 1, 1, ''),
(8, 2, 4, 5, 2, 'type/article', 'Article', 'article', 1, 1, ''),
(9, 1, 15, 18, 1, 'author', 'Author', 'author', 1, 1, ''),
(10, 9, 16, 17, 2, 'author/slam', 'SLAM', 'slam', 1, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_taxonomy_map`
--

CREATE TABLE `gilla4b_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_taxonomy_map`
--

INSERT INTO `gilla4b_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 7),
(2, 5),
(2, 7),
(2, 8),
(2, 10),
(3, 5),
(3, 7),
(3, 8),
(3, 10);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_terms`
--

CREATE TABLE `gilla4b_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_terms`
--

INSERT INTO `gilla4b_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '1', '1', 0, 0, 0.1, '', 2, '*'),
(2, 'gilla', 'gilla', 0, 0, 0.3333, 'G400', 1, '*'),
(3, 'info', 'info', 0, 0, 0.2667, 'I510', 1, '*'),
(4, 'accueil', 'accueil', 0, 0, 0.4667, 'A240', 1, '*'),
(5, 'administratif', 'administratif', 0, 0, 0.8667, 'A3523631', 1, '*'),
(6, 'adresse', 'adresse', 0, 0, 0.4667, 'A362', 1, '*'),
(7, 'aed', 'aed', 0, 0, 0.2, 'A300', 1, '*'),
(8, 'agent', 'agent', 0, 0, 0.3333, 'A253', 1, '*'),
(9, 'armoires', 'armoires', 0, 0, 0.5333, 'A6562', 1, '*'),
(10, 'au', 'au', 0, 0, 0.1333, 'A000', 1, '*'),
(11, 'aux', 'aux', 0, 0, 0.2, 'A200', 2, '*'),
(12, 'avec', 'avec', 0, 0, 0.2667, 'A120', 1, '*'),
(13, 'bâtiment', 'bâtiment', 0, 0, 0.5333, 'B353', 1, '*'),
(14, 'ce', 'ce', 0, 0, 0.1333, 'C000', 1, '*'),
(15, 'ces', 'ces', 0, 0, 0.2, 'C000', 1, '*'),
(16, 'chaises', 'chaises', 0, 0, 0.4667, 'C000', 1, '*'),
(17, 'compte', 'compte', 0, 0, 0.4, 'C513', 1, '*'),
(18, 'concernent', 'concernent', 0, 0, 0.6667, 'C52653', 1, '*'),
(19, 'cpe', 'cpe', 0, 0, 0.2, 'C100', 1, '*'),
(20, 'création', 'création', 0, 0, 0.5333, 'C635', 1, '*'),
(21, 'd\'un', 'd\'un', 0, 0, 0.2667, 'D500', 1, '*'),
(22, 'de', 'de', 0, 0, 0.1333, 'D000', 2, '*'),
(23, 'disposant', 'disposant', 0, 0, 0.6, 'D21253', 1, '*'),
(24, 'du', 'du', 0, 0, 0.1333, 'D000', 1, '*'),
(25, 'email', 'email', 0, 0, 0.3333, 'E540', 1, '*'),
(26, 'enseignant', 'enseignant', 0, 0, 0.6667, 'E5253', 1, '*'),
(27, 'est', 'est', 0, 0, 0.2, 'E230', 1, '*'),
(28, 'et', 'et', 0, 0, 0.1333, 'E300', 1, '*'),
(29, 'fait', 'fait', 0, 0, 0.2667, 'F300', 1, '*'),
(30, 'fenêtres', 'fenêtres', 0, 0, 0.5333, 'F5362', 1, '*'),
(31, 'imprimantes', 'imprimantes', 0, 0, 0.7333, 'I516532', 1, '*'),
(32, 'incident', 'incident', 0, 0, 0.5333, 'I52353', 1, '*'),
(33, 'incidents', 'incidents', 0, 0, 0.6, 'I523532', 1, '*'),
(34, 'informatique', 'informatique', 0, 0, 0.8, 'I516532', 1, '*'),
(35, 'l\'accès', 'l\'accès', 0, 0, 0.4667, 'L200', 1, '*'),
(36, 'la', 'la', 0, 0, 0.1333, 'L000', 2, '*'),
(37, 'lycée', 'lycée', 0, 0, 0.3333, 'L200', 2, '*'),
(38, 'maintenance', 'maintenance', 0, 0, 0.7333, 'M352', 1, '*'),
(39, 'mobilier', 'mobilier', 0, 0, 0.5333, 'M146', 1, '*'),
(40, 'murs', 'murs', 0, 0, 0.2667, 'M620', 1, '*'),
(41, 'ordinateurs', 'ordinateurs', 0, 0, 0.7333, 'O635362', 1, '*'),
(42, 'personne', 'personne', 0, 0, 0.5333, 'P625', 1, '*'),
(43, 'personnel', 'personnel', 0, 0, 0.6, 'P6254', 1, '*'),
(44, 'personnes', 'personnes', 0, 0, 0.6, 'P6252', 1, '*'),
(45, 'peut', 'peut', 0, 0, 0.2667, 'P300', 1, '*'),
(46, 'portes', 'portes', 0, 0, 0.4, 'P632', 1, '*'),
(47, 'réservé', 'réservé', 0, 0, 0.4667, 'R261', 1, '*'),
(48, 'se', 'se', 0, 0, 0.1333, 'S000', 1, '*'),
(49, 'service', 'service', 0, 0, 0.4667, 'S612', 1, '*'),
(50, 'signaler', 'signaler', 0, 0, 0.5333, 'S546', 1, '*'),
(51, 'site', 'site', 0, 0, 0.2667, 'S300', 1, '*'),
(52, 'slam', 'slam', 0, 0, 0.2667, 'S450', 2, '*'),
(53, 'sols', 'sols', 0, 0, 0.2667, 'S420', 1, '*'),
(54, 'sur', 'sur', 0, 0, 0.2, 'S600', 1, '*'),
(55, 'tables', 'tables', 0, 0, 0.4, 'T142', 1, '*'),
(56, 'technique', 'technique', 0, 0, 0.6, 'T252', 2, '*'),
(57, 'toute', 'toute', 0, 0, 0.3333, 'T000', 1, '*'),
(58, 'travaillant', 'travaillant', 0, 0, 0.7333, 'T61453', 1, '*'),
(59, 'un', 'un', 0, 0, 0.1333, 'U500', 2, '*'),
(60, 'une', 'une', 0, 0, 0.2, 'U500', 1, '*'),
(61, 'vidéoprojecteurs', 'vidéoprojecteurs', 0, 0, 1, 'V3162362', 1, '*'),
(62, 'à', 'à', 0, 0, 0.0667, 'à000', 2, '*'),
(63, 'élève', 'élève', 0, 0, 0.3333, 'é410', 1, '*'),
(64, 'étudiant', 'étudiant', 0, 0, 0.5333, 'é353', 1, '*'),
(67, '15e', '15e', 0, 0, 0.2, 'E000', 1, '*'),
(68, '2', '2', 0, 0, 0.1, '', 1, '*'),
(69, 'alternance', 'alternance', 0, 0, 0.6667, 'A43652', 1, '*'),
(70, 'ancien', 'ancien', 0, 0, 0.4, 'A525', 1, '*'),
(71, 'après', 'après', 0, 0, 0.3333, 'A162', 1, '*'),
(72, 'armand', 'armand', 0, 0, 0.4, 'A653', 1, '*'),
(73, 'assistant', 'assistant', 0, 0, 0.6, 'A2353', 1, '*'),
(74, 'bac', 'bac', 0, 0, 0.2, 'B200', 1, '*'),
(75, 'bts', 'bts', 0, 0, 0.2, 'B320', 1, '*'),
(76, 'ciel', 'ciel', 0, 0, 0.2667, 'C400', 1, '*'),
(77, 'commercial', 'commercial', 0, 0, 0.6667, 'C5624', 1, '*'),
(78, 'd\'ingénieur', 'd\'ingénieur', 0, 0, 0.7333, 'D5256', 1, '*'),
(79, 'diversifié', 'diversifié', 0, 0, 0.6667, 'D1621', 1, '*'),
(80, 'en', 'en', 0, 0, 0.1333, 'E500', 1, '*'),
(81, 'formations', 'formations', 0, 0, 0.6667, 'F65352', 1, '*'),
(82, 'gestion', 'gestion', 0, 0, 0.4667, 'G350', 1, '*'),
(83, 'générale', 'générale', 0, 0, 0.5333, 'G564', 1, '*'),
(84, 'hg', 'hg', 0, 0, 0.1333, 'H200', 1, '*'),
(85, 'informatiques', 'informatiques', 0, 0, 0.8667, 'I516532', 1, '*'),
(86, 'le', 'le', 0, 0, 0.1333, 'L000', 1, '*'),
(87, 'les', 'les', 0, 0, 0.2, 'L200', 1, '*'),
(88, 'louis', 'louis', 0, 0, 0.3333, 'L200', 1, '*'),
(89, 'lycee', 'lycee', 0, 0, 0.3333, 'L200', 1, '*'),
(90, 'management', 'management', 0, 0, 0.6667, 'M253', 1, '*'),
(91, 'maths', 'maths', 0, 0, 0.3333, 'M320', 1, '*'),
(92, 'melec', 'melec', 0, 0, 0.3333, 'M420', 1, '*'),
(93, 'nsi', 'nsi', 0, 0, 0.2, 'N200', 1, '*'),
(94, 'numériques', 'numériques', 0, 0, 0.6667, 'N620', 1, '*'),
(95, 'offre', 'offre', 0, 0, 0.3333, 'O160', 1, '*'),
(96, 'opérationnel', 'opérationnel', 0, 0, 0.8, 'O16354', 1, '*'),
(97, 'organisations', 'organisations', 0, 0, 0.8667, 'O6252352', 1, '*'),
(98, 'parcours', 'parcours', 0, 0, 0.5333, 'P6262', 1, '*'),
(99, 'paris', 'paris', 0, 0, 0.3333, 'P620', 1, '*'),
(100, 'pc', 'pc', 0, 0, 0.1333, 'P200', 1, '*'),
(101, 'photographie', 'photographie', 0, 0, 0.8, 'P3261', 1, '*'),
(102, 'pme', 'pme', 0, 0, 0.2, 'P500', 1, '*'),
(103, 'polyvalent', 'polyvalent', 0, 0, 0.6667, 'P41453', 1, '*'),
(104, 'pro', 'pro', 0, 0, 0.2, 'P600', 1, '*'),
(105, 'professionnelle', 'professionnelle', 0, 0, 1, 'P61254', 1, '*'),
(106, 'services', 'services', 0, 0, 0.5333, 'S612', 1, '*'),
(107, 'ses', 'ses', 0, 0, 0.2, 'S000', 1, '*'),
(108, 'situé', 'situé', 0, 0, 0.3333, 'S300', 1, '*'),
(109, 'spé', 'spé', 0, 0, 0.2, 'S100', 1, '*'),
(110, 'sti2d', 'sti2d', 0, 0, 0.3333, 'S300', 1, '*'),
(111, 'stmg', 'stmg', 0, 0, 0.2667, 'S352', 1, '*'),
(112, 'suivantes', 'suivantes', 0, 0, 0.6, 'S1532', 1, '*'),
(113, 'supérieures', 'supérieures', 0, 0, 0.7333, 'S162', 1, '*'),
(114, 'svt', 'svt', 0, 0, 0.2, 'S130', 1, '*'),
(115, 'systèmes', 'systèmes', 0, 0, 0.5333, 'S352', 1, '*'),
(116, 'technologique', 'technologique', 0, 0, 0.8667, 'T2542', 1, '*'),
(117, 'voie', 'voie', 0, 0, 0.2667, 'V000', 1, '*'),
(118, 'élèves', 'élèves', 0, 0, 0.4, 'é412', 1, '*');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_terms_common`
--

CREATE TABLE `gilla4b_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_terms_common`
--

INSERT INTO `gilla4b_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('a', 'fr', 0),
('a fait', 'fr', 0),
('a été', 'fr', 0),
('about', 'en', 0),
('above', 'en', 0),
('activé', 'fr', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('allons', 'fr', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('après', 'fr', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('au', 'fr', 0),
('au-dessous', 'fr', 0),
('au-dessus', 'fr', 0),
('autre', 'fr', 0),
('avait', 'fr', 0),
('avant', 'fr', 0),
('avec', 'fr', 0),
('ayant', 'fr', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('c\'est', 'fr', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('ce', 'fr', 0),
('ce que', 'fr', 0),
('ce qui', 'fr', 0),
('ce qui est', 'fr', 0),
('ces', 'fr', 0),
('ceux', 'fr', 0),
('chaque', 'fr', 0),
('comme', 'fr', 0),
('comment', 'fr', 0),
('contre', 'fr', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('dans', 'fr', 0),
('de', 'fr', 0),
('devrait', 'fr', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('doit', 'fr', 0),
('don\'t', 'en', 0),
('donc', 'fr', 0),
('down', 'en', 0),
('du', 'fr', 0),
('durant', 'fr', 0),
('during', 'en', 0),
('désactivé', 'fr', 0),
('each', 'en', 0),
('elle', 'fr', 0),
('elle est', 'fr', 0),
('elle va', 'fr', 0),
('elle-même', 'fr', 0),
('en', 'fr', 0),
('en bas', 'fr', 0),
('en haut', 'fr', 0),
('encore', 'fr', 0),
('entre', 'fr', 0),
('est', 'fr', 0),
('et', 'fr', 0),
('eux-mêmes', 'fr', 0),
('faire', 'fr', 0),
('faisant', 'fr', 0),
('fait', 'fr', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('hors', 'fr', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('ici', 'fr', 0),
('if', 'en', 0),
('il', 'fr', 0),
('il est', 'fr', 0),
('il va', 'fr', 0),
('il y a', 'fr', 0),
('ils', 'fr', 0),
('ils ont', 'fr', 0),
('ils sont', 'fr', 0),
('ils vont', 'fr', 0),
('impossible', 'fr', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('j\'ai', 'fr', 0),
('je', 'fr', 0),
('je suis', 'fr', 0),
('je vais', 'fr', 0),
('jusqu\'au', 'fr', 0),
('le', 'fr', 0),
('le nôtre', 'fr', 0),
('le plus', 'fr', 0),
('le vôtre', 'fr', 0),
('les', 'fr', 0),
('les deux', 'fr', 0),
('let\'s', 'en', 0),
('leur', 'fr', 0),
('leurs', 'fr', 0),
('lorsque', 'fr', 0),
('lui', 'fr', 0),
('lui-même', 'fr', 0),
('là', 'fr', 0),
('mais', 'fr', 0),
('me', 'en', 0),
('moi', 'fr', 0),
('moi-même', 'fr', 0),
('mon', 'fr', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('même', 'fr', 0),
('n\'a pas', 'fr', 0),
('n\'a pas pu', 'fr', 0),
('n\'avait pas', 'fr', 0),
('n\'est pas', 'fr', 0),
('n\'importe', 'fr', 0),
('n\'ont pas', 'fr', 0),
('n\'étaient pas', 'fr', 0),
('n\'était pas', 'fr', 0),
('ne devrait pas', 'fr', 0),
('ne doit pas', 'fr', 0),
('ne l\'a pas fait', 'fr', 0),
('ne le fait pas', 'fr', 0),
('ne le ferait pas', 'fr', 0),
('ne le feront pas', 'fr', 0),
('ne le font pas', 'fr', 0),
('ne peut pas', 'fr', 0),
('ne sont pas', 'fr', 0),
('ni', 'fr', 0),
('no', 'en', 0),
('non', 'fr', 0),
('nor', 'en', 0),
('not', 'en', 0),
('notre', 'fr', 0),
('nous', 'fr', 0),
('nous allons', 'fr', 0),
('nous avons', 'fr', 0),
('nous sommes', 'fr', 0),
('nous-mêmes', 'fr', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('ont', 'fr', 0),
('or', 'en', 0),
('other', 'en', 0),
('ou', 'fr', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('où', 'fr', 0),
('par', 'fr', 0),
('parce que', 'fr', 0),
('pas', 'fr', 0),
('peu', 'fr', 0),
('plus', 'fr', 0),
('plus loin', 'fr', 0),
('pour', 'fr', 0),
('pourquoi', 'fr', 0),
('pourrait', 'fr', 0),
('propre', 'fr', 0),
('puis', 'fr', 0),
('quand', 'fr', 0),
('que', 'fr', 0),
('quelques', 'fr', 0),
('qui', 'fr', 0),
('qui est', 'fr', 0),
('same', 'en', 0),
('serait', 'fr', 0),
('ses', 'fr', 0),
('seulement', 'fr', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('si', 'fr', 0),
('so', 'en', 0),
('soit', 'fr', 0),
('some', 'en', 0),
('son', 'fr', 0),
('sont', 'fr', 0),
('sous', 'fr', 0),
('such', 'en', 0),
('suis', 'fr', 0),
('sur', 'fr', 0),
('tant que', 'fr', 0),
('tel', 'fr', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('tous', 'fr', 0),
('trop', 'fr', 0),
('très', 'fr', 0),
('tu es', 'fr', 0),
('tu vas', 'fr', 0),
('un', 'fr', 0),
('under', 'en', 0),
('une', 'fr', 0),
('une fois', 'fr', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('voici', 'fr', 0),
('votre', 'fr', 0),
('vous', 'fr', 0),
('vous avez', 'fr', 0),
('vous-même', 'fr', 0),
('vous-mêmes', 'fr', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0),
('à propos', 'fr', 0),
('à travers', 'fr', 0),
('ça', 'fr', 0),
('étaient', 'fr', 0),
('était', 'fr', 0),
('être', 'fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_tokens`
--

CREATE TABLE `gilla4b_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_tokens_aggregate`
--

CREATE TABLE `gilla4b_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `total_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_finder_types`
--

CREATE TABLE `gilla4b_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_finder_types`
--

INSERT INTO `gilla4b_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_affectations`
--

CREATE TABLE `gilla4b_gilla_affectations` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_affectations`
--

INSERT INTO `gilla4b_gilla_affectations` (`id`, `date_heure_debut`, `date_heure_fin`, `agents_id`, `types_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '2021-08-30 07:00:00', '2021-08-30 07:00:00', 1, 2, '', 1, '2021-11-01 00:00:00', 278, '2021-11-01 00:00:00', 278, 0),
(2, '2021-08-30 07:00:00', '2021-08-30 07:00:00', 2, 3, '', 1, '2021-11-01 00:00:00', 278, '2021-11-01 00:00:00', 278, 0),
(3, '2021-08-30 07:00:00', '2021-08-30 07:00:00', 3, 4, '', 1, '2021-01-01 00:00:00', 278, '2021-01-01 00:00:00', 278, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_agents`
--

CREATE TABLE `gilla4b_gilla_agents` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_agents`
--

INSERT INTO `gilla4b_gilla_agents` (`id`, `telephone`, `users_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '0102030405', 282, '', 1, '2021-11-22 19:00:00', 278, '2021-11-22 19:00:00', 278, 0),
(2, '0102030406', 284, '', 1, '2021-11-22 19:00:00', 278, '2021-11-22 19:00:00', 278, 0),
(3, '0102030407', 285, '', 1, '2021-11-22 19:00:00', 278, '2021-11-22 19:00:00', 278, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_emplacements`
--

CREATE TABLE `gilla4b_gilla_emplacements` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_emplacements`
--

INSERT INTO `gilla4b_gilla_emplacements` (`id`, `emplacement`, `description`, `emplacements_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
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

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_etats`
--

CREATE TABLE `gilla4b_gilla_etats` (
  `id` int(11) NOT NULL,
  `etat` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_etats`
--

INSERT INTO `gilla4b_gilla_etats` (`id`, `etat`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(2, '1 - Ouvert', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(3, '2 - Pris en charge', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(4, '3 - Fermé', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_events`
--

CREATE TABLE `gilla4b_gilla_events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `date_time` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `picture` varchar(400) DEFAULT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_events`
--

INSERT INTO `gilla4b_gilla_events` (`id`, `title`, `description`, `date_time`, `picture`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 'Prérentrée 2022 des BTS1', 'La prérentrée 2022 des BTS1 aura lieu le lundi 5 septembre à 12h30.', '2022-09-05 12:30:00', '', '', 1, '2022-08-29 10:48:15', 278, '2022-08-29 10:48:16', 278, 0),
(2, 'Prérentrée 2022 des BTS2', 'La prérentrée 2022 des BTS2 aura lieu le lundi 5 septembre à 13h00.', '2022-09-05 13:00:00', 'images/gilla/events/conference_c1.jpg#joomlaImage://local-images/gilla/events/conference_c1.jpg?width=600&height=288', 'prerentree-2022-des-bts2', 1, '2022-08-29 10:55:11', 278, '2024-02-15 15:05:43', 278, 0),
(3, 'BTS blanc 2023', 'La date du BTS blanc doit être confirmée.', '2023-03-20 09:00:00', 'images/gilla/events/training_t1.jpg#joomlaImage://local-images/gilla/events/training_t1.jpg?width=600&height=283', 'bts-blanc-2023', 1, '2021-10-09 00:00:00', 279, '2023-12-06 11:48:43', 279, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_events_users`
--

CREATE TABLE `gilla4b_gilla_events_users` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL DEFAULT '',
  `events_id` int(11) NOT NULL DEFAULT 1,
  `users_id` int(11) NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2020-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_events_users`
--

INSERT INTO `gilla4b_gilla_events_users` (`id`, `comment`, `events_id`, `users_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 'Le BTS blanc inclut toutes les épreuves écrites du BTS', 3, 279, '', 1, '2022-10-07 16:00:00', 279, '2022-10-07 16:00:00', 279, 0),
(2, 'Pour les SIO, il devrait avoir lieu après les stages.', 3, 279, '', 1, '2022-10-07 17:00:00', 279, '2022-10-07 17:00:00', 279, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_incidents`
--

CREATE TABLE `gilla4b_gilla_incidents` (
  `id` int(11) NOT NULL,
  `numero` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `date_heure_ouverture` datetime NOT NULL,
  `description` text NOT NULL DEFAULT '',
  `photo` varchar(400) DEFAULT NULL,
  `date_heure_fermeture` datetime DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_incidents`
--

INSERT INTO `gilla4b_gilla_incidents` (`id`, `numero`, `date_heure_ouverture`, `description`, `photo`, `date_heure_fermeture`, `commentaire_agent`, `users_id`, `emplacements_id`, `types_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '20211123-0001', '2021-11-23 08:07:00', 'PC Prof bruyant :\r\nLe ventilateur vibre le plus souvent, de façon aléatoire.', NULL, '2022-01-03 00:00:00', '', 279, 73, 19, '', 1, '2021-11-23 00:00:00', 279, '2021-11-23 00:00:00', 279, 0),
(2, '20211123-0002', '2021-11-23 08:13:00', 'Patin de chaise élève (verte) manquant.', NULL, '2022-01-03 00:00:00', '', 281, 73, 22, '', 1, '2021-11-23 08:13:00', 281, '2022-04-11 18:52:29', 282, 0),
(3, '20211123-0003', '2021-11-23 08:15:00', 'Fermeture fenêtre défectueuse.', 'images/gilla/incidents/fenêtre_bloquée.jpg#joomlaImage://local-images/gilla/incidents/fenêtre_bloquée.jpg?width=385&height=168', NULL, '', 283, 73, 8, '2023-12-06-17-13-39', 1, '2021-11-23 08:15:00', 283, '2023-12-06 17:13:39', 283, 0),
(4, '20211123-0004', '2021-11-23 08:22:00', 'PC Prof : Clavier défectueux.\r\nLa touche CTRL à Gauche fonctionne mal.', '', NULL, '', 279, 73, 15, '2024-02-14-10-43-27', 1, '2021-11-23 08:22:00', 279, '2024-02-14 10:43:44', 279, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_priorites`
--

CREATE TABLE `gilla4b_gilla_priorites` (
  `id` int(11) NOT NULL,
  `priorite` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '2021-01-01 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_priorites`
--

INSERT INTO `gilla4b_gilla_priorites` (`id`, `priorite`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '-', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(2, '1 - Haute', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(3, '2 - Moyenne', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(4, '3 - Basse', '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_prise_en_charges`
--

CREATE TABLE `gilla4b_gilla_prise_en_charges` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_prise_en_charges`
--

INSERT INTO `gilla4b_gilla_prise_en_charges` (`id`, `date_heure_debut`, `date_heure_fin`, `commentaire`, `incidents_id`, `agents_id`, `priorites_id`, `etats_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, '2021-11-23 08:20:00', '2021-01-01 00:00:00', 'L\'UC du PC sera remplacée et configurée (avec l\'image SIO) début Janvier 2022.', 1, 2, 3, 3, '', 1, '2021-11-23 08:20:00', 284, '2021-11-23 08:20:00', 284, 0),
(2, '2021-11-23 08:36:00', '2021-11-23 08:36:00', 'Le patin de chaise sera changé en fin de semaine.', 2, 3, 3, 3, '', 1, '2021-11-23 08:36:00', 285, '2021-11-23 08:36:00', 285, 0),
(3, '2021-11-23 08:39:00', '2021-11-23 08:39:00', 'Le changement de la serrure de la fenêtre est prévue le 24/11 à 7h30.', 3, 1, 2, 3, '', 1, '2021-11-23 08:39:00', 282, '2022-04-13 18:29:00', 282, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_gilla_types`
--

CREATE TABLE `gilla4b_gilla_types` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `gilla4b_gilla_types`
--

INSERT INTO `gilla4b_gilla_types` (`id`, `type`, `description`, `types_id`, `alias`, `state`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
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
(20, 'vidéoprojecteur', '', 3, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(21, 'Armoire', '', 4, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(22, 'Chaise', '', 4, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0),
(23, 'Table', '', 4, '', 1, '2021-01-01 00:00:00', 0, '2021-01-01 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_guidedtours`
--

CREATE TABLE `gilla4b_guidedtours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_guidedtours`
--

INSERT INTO `gilla4b_guidedtours` (`id`, `title`, `description`, `ordering`, `extensions`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `published`, `language`, `note`, `access`) VALUES
(1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION', 1, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION', 2, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE', 'COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION', 3, '[\"*\"]', 'administrator/index.php?option=com_content&view=articles', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE', 'COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION', 4, '[\"*\"]', 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(5, 'COM_GUIDEDTOURS_TOUR_MENUS_TITLE', 'COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION', 5, '[\"*\"]', 'administrator/index.php?option=com_menus&view=menus', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(6, 'COM_GUIDEDTOURS_TOUR_TAGS_TITLE', 'COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION', 6, '[\"*\"]', 'administrator/index.php?option=com_tags&view=tags', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(7, 'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE', 'COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION', 7, '[\"*\"]', 'administrator/index.php?option=com_banners&view=banners', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE', 'COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION', 8, '[\"*\"]', 'administrator/index.php?option=com_contact&view=contacts', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE', 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION', 9, '[\"*\"]', 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE', 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION', 10, '[\"*\"]', 'administrator/index.php?option=com_finder&view=filters', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1),
(11, 'COM_GUIDEDTOURS_TOUR_USERS_TITLE', 'COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION', 11, '[\"*\"]', 'administrator/index.php?option=com_users&view=users', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, 1, '*', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_guidedtour_steps`
--

CREATE TABLE `gilla4b_guidedtour_steps` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_guidedtour_steps`
--

INSERT INTO `gilla4b_guidedtour_steps` (`id`, `tour_id`, `title`, `published`, `description`, `ordering`, `position`, `target`, `type`, `interactive_type`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `language`, `note`) VALUES
(1, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION', 1, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tours', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(2, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION', 2, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(3, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION', 3, 'top', '#jform_url', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(4, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION', 4, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(5, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION', 5, 'top', 'joomla-field-fancy-select .choices', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(6, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION', 6, 'top', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(7, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION', 7, 'bottom', '', 0, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(8, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION', 8, 'top', '#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn', 2, 1, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(9, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION', 9, 'bottom', '.button-new', 2, 1, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(10, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION', 10, 'bottom', '#jform_title', 2, 2, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(11, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION', 11, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(12, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION', 12, 'bottom', '#jform_published', 2, 3, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(13, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION', 13, 'top', '#jform_position', 2, 3, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(14, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION', 14, 'top', '#jform_target', 2, 3, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(15, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION', 15, 'top', '#jform_type', 2, 3, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(16, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION', 16, 'bottom', '#save-group-children-save .button-save', 2, 1, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(17, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION', 17, 'bottom', '', 0, 1, '', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(18, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION', 18, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_content&view=articles', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(19, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION', 19, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(20, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION', 20, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(21, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION', 21, 'bottom', '#jform_articletext,#jform_articletext_ifr', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(22, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION', 22, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(23, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION', 23, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(24, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION', 24, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(25, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION', 25, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(26, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION', 26, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(27, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION', 27, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(28, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION', 28, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(29, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION', 29, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(30, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION', 30, 'bottom', '', 0, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(31, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION', 31, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(32, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION', 32, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(33, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION', 33, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(34, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION', 34, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(35, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION', 35, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(36, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION', 36, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(37, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION', 37, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(38, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION', 38, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(39, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION', 39, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(40, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION', 40, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(41, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION', 41, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(42, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION', 42, 'bottom', '', 0, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(43, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION', 43, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_menus&view=menus', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(44, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION', 44, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(45, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION', 45, 'top', '#jform_menutype', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(46, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION', 46, 'top', '#jform_menudescription', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(47, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION', 47, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(48, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION', 48, 'bottom', '', 0, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(49, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION', 49, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_tags&view=tags', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(50, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION', 50, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(51, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION', 51, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(52, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION', 52, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(53, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION', 53, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(54, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION', 54, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(55, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION', 55, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(56, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION', 56, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(57, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION', 57, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(58, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION', 58, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(59, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION', 59, 'bottom', '', 0, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(60, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION', 60, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_banners&view=banners', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(61, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION', 61, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(62, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION', 62, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(63, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION', 63, 'bottom', '.col-lg-9', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(64, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION', 64, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(65, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION', 65, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(66, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION', 66, 'bottom', '#jform_sticky1', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(67, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION', 67, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(68, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION', 68, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(69, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION', 69, 'bottom', '', 0, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(70, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION', 70, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_contact&view=contacts', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(71, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION', 71, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(72, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION', 72, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(73, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION', 73, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(74, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION', 74, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(75, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION', 75, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(76, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION', 76, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(77, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION', 77, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(78, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION', 78, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(79, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION', 79, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(80, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION', 80, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(81, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION', 81, 'bottom', '', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(82, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION', 82, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(83, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION', 83, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(84, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION', 84, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(85, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION', 85, 'bottom', '#jform_link', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(86, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION', 86, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(87, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION', 87, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(88, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION', 88, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(89, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION', 89, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(90, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION', 90, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(91, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION', 91, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(92, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION', 92, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(93, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION', 93, 'bottom', '', 0, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(94, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION', 94, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_finder&view=filters', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(95, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION', 95, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(96, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION', 96, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(97, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION', 97, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(98, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION', 98, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(99, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION', 99, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(100, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION', 100, 'bottom', '', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(101, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION', 101, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(102, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION', 102, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(103, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION', 103, 'bottom', '#jform_username', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(104, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION', 104, 'bottom', '#jform_password', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(105, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION', 105, 'bottom', '#jform_password2', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(106, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION', 106, 'bottom', '#jform_email', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(107, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION', 107, 'top', '#jform_sendEmail0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(108, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION', 108, 'top', '#jform_block0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(109, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION', 109, 'top', '#jform_requireReset0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(110, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION', 110, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', ''),
(111, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION', 111, 'bottom', '', 0, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2023-10-06 08:20:04', 0, '2023-10-06 08:20:04', 0, NULL, NULL, '*', '');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_history`
--

CREATE TABLE `gilla4b_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_history`
--

INSERT INTO `gilla4b_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 'com_contact.contact.1', '', '2023-10-06 08:27:03', 278, 1537, 'f30d5091a0cf195fa1e4d89b4ee65fbed27895db', '{\"id\":1,\"name\":\"Info GILLA\",\"alias\":\"info-gilla\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"contact_layout\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":\\\"\\\",\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":\\\"\\\",\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":\\\"\\\",\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":\\\"\\\",\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"279\",\"catid\":4,\"access\":1,\"mobile\":\"\",\"webpage\":\"\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2023-10-06 08:27:03\",\"created_by\":278,\"created_by_alias\":\"\",\"modified\":\"2023-10-06 08:27:03\",\"modified_by\":278,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"publish_up\":null,\"publish_down\":null,\"version\":\"1\",\"hits\":0}', 0),
(2, 'com_content.article.1', '', '2023-10-06 08:29:05', 278, 2369, '14204eaf2aef122ec691cfa0da520336d1d5179a', '{\"id\":1,\"asset_id\":97,\"title\":\"Accueil\",\"alias\":\"accueil\",\"introtext\":\"<p><strong>Toute personne travaillant au lyc\\u00e9e<\\/strong> (\\u00e9l\\u00e8ve, \\u00e9tudiant, enseignant, AED, CPE, personnel administratif, agent technique) <strong>peut signaler un incident<\\/strong> au service de maintenance du lyc\\u00e9e.<\\/p>\\r\\n<p>Ces incidents \\u00e0 signaler concernent :<\\/p>\\r\\n<ul>\\r\\n<li><strong>B\\u00e2timent\\u00a0<\\/strong>: portes, fen\\u00eatres, murs et sols.<\\/li>\\r\\n<li><strong>Mobilier\\u00a0<\\/strong>: tables, chaises et armoires.<\\/li>\\r\\n<li><strong>Informatique\\u00a0<\\/strong>: vid\\u00e9oprojecteurs, ordinateurs, imprimantes.<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>L\'acc\\u00e8s \\u00e0 ce service est r\\u00e9serv\\u00e9 <\\/strong>aux personnes disposant d\'un compte sur ce site.<br \\/>La cr\\u00e9ation d\'un compte se fait avec une adresse email du lyc\\u00e9e.<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2023-10-06 08:29:05\",\"created_by\":278,\"created_by_alias\":\"\",\"modified\":\"2023-10-06 08:29:05\",\"modified_by\":278,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-10-06 08:29:05\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(3, 'com_content.article.2', '', '2023-10-06 08:38:48', 278, 2449, 'cc802d43b87e69ad88ca8f9964f84d4188a4c249', '{\"id\":2,\"asset_id\":98,\"title\":\"Lyc\\u00e9e\",\"alias\":\"lycee\",\"introtext\":\"<p>Le lyc\\u00e9e polyvalent Louis Armand situ\\u00e9 \\u00e0 Paris 15<sup>e<\\/sup> offre aux \\u00e9l\\u00e8ves un parcours diversifi\\u00e9 :<\\/p>\\r\\n<ul>\\r\\n<li>Voie g\\u00e9n\\u00e9rale : BAC Sp\\u00e9 Maths\\/PC\\/NSI\\/SES\\/HG\\/SVT.<\\/li>\\r\\n<li>Voie technologique : BAC STI2D \\/ STMG.<\\/li>\\r\\n<li>Voie professionnelle : BAC Pro MELEC \\/ CIEL \\/ Photographie.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Apr\\u00e8s le BAC, le lyc\\u00e9e offre les formations sup\\u00e9rieures suivantes :<\\/p>\\r\\n<ul>\\r\\n<li>BTS CIEL (ancien Syst\\u00e8mes Num\\u00e9riques).<\\/li>\\r\\n<li>BTS Gestion de la PME.<\\/li>\\r\\n<li>BTS Management Commercial Op\\u00e9rationnel.<\\/li>\\r\\n<li>BTS Services Informatiques aux Organisations.<\\/li>\\r\\n<li>BTS Assistant Technique d\\u2019Ing\\u00e9nieur.<\\/li>\\r\\n<li>BTS Photographie en alternance.<\\/li>\\r\\n<li>BTS Assistant Technique d\\u2019Ing\\u00e9nieur en alternance.<\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2023-10-06 08:38:48\",\"created_by\":278,\"created_by_alias\":\"\",\"modified\":\"2023-10-06 08:38:48\",\"modified_by\":278,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-10-06 08:38:48\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_languages`
--

CREATE TABLE `gilla4b_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_languages`
--

INSERT INTO `gilla4b_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 0, 'fr-FR', 'French (fr-FR)', 'Français (France)', 'fr', 'fr_fr', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_mail_templates`
--

CREATE TABLE `gilla4b_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_mail_templates`
--

INSERT INTO `gilla4b_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_multifactorauth_email.mail', 'plg_multifactorauth_email', '', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY', '', '', '{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_privacyconsent.request.reminder', 'plg_system_privacyconsent', '', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_updatenotification.mail', 'plg_system_updatenotification', '', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_menu`
--

CREATE TABLE `gilla4b_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_menu`
--

INSERT INTO `gilla4b_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 91, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 11, 20, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 23, 28, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 29, 38, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 21, 22, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'contact/Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'contact/Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 32, 33, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Accueil', 'accueil', '', 'accueil', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 41, 42, 1, '*', 0, NULL, NULL),
(102, 'mainmenu', 'Lycée', 'lycee', '', 'lycee', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 43, 44, 0, '*', 0, NULL, NULL),
(103, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 7, NULL, NULL, 0, 1, ' ', 0, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 45, 46, 0, '*', 0, NULL, NULL),
(104, 'mainmenu', 'Mon profil', 'mon-profil', '', 'mon-profil', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 22, NULL, NULL, 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 47, 48, 0, '*', 0, NULL, NULL),
(105, 'main', 'com_gilla', 'com-gilla', '', 'com-gilla', 'index.php?option=com_gilla', 'component', 1, 1, 1, 238, NULL, NULL, 0, 1, 'class:default', 0, '{}', 49, 68, 0, '', 1, NULL, NULL),
(106, 'main', 'com_gilla_affectations', 'com-gilla-affectations', '', 'com-gilla/com-gilla-affectations', 'index.php?option=com_gilla&view=affectations', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1, NULL, NULL),
(107, 'main', 'com_gilla_agents', 'com-gilla-agents', '', 'com-gilla/com-gilla-agents', 'index.php?option=com_gilla&view=agents', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1, NULL, NULL),
(108, 'main', 'com_gilla_emplacements', 'com-gilla-emplacements', '', 'com-gilla/com-gilla-emplacements', 'index.php?option=com_gilla&view=emplacements', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1, NULL, NULL),
(109, 'main', 'com_gilla_etats', 'com-gilla-etats', '', 'com-gilla/com-gilla-etats', 'index.php?option=com_gilla&view=etats', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1, NULL, NULL),
(110, 'main', 'com_gilla_incidents', 'com-gilla-incidents', '', 'com-gilla/com-gilla-incidents', 'index.php?option=com_gilla&view=incidents', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1, NULL, NULL),
(111, 'main', 'com_gilla_priorites', 'com-gilla-priorites', '', 'com-gilla/com-gilla-priorites', 'index.php?option=com_gilla&view=priorites', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1, NULL, NULL),
(112, 'main', 'com_gilla_prise_en_charges', 'com-gilla-prise-en-charges', '', 'com-gilla/com-gilla-prise-en-charges', 'index.php?option=com_gilla&view=prise_en_charges', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 62, 63, 0, '', 1, NULL, NULL),
(113, 'main', 'com_gilla_types', 'com-gilla-types', '', 'com-gilla/com-gilla-types', 'index.php?option=com_gilla&view=types', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 64, 65, 0, '', 1, NULL, NULL),
(114, 'main', 'com_gilla_events', 'com-gilla-events', '', 'com-gilla/com-gilla-events', 'index.php?option=com_gilla&view=events', 'component', 1, 105, 2, 238, NULL, NULL, 0, 1, 'class:component', 0, '{}', 66, 67, 0, '', 1, NULL, NULL),
(115, 'mainmenu', 'Evènements', 'evenements', '', 'evenements', 'index.php?option=com_gilla&view=events', 'component', 1, 1, 1, 238, NULL, NULL, 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 69, 70, 0, '*', 0, NULL, NULL),
(116, 'incidentmenu', 'Utilisateur :', 'utilisateur', '', 'utilisateur', '', 'heading', 1, 1, 1, 0, NULL, NULL, 0, 9, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 71, 78, 0, '*', 0, NULL, NULL),
(117, 'incidentmenu', 'Agent :', 'agent', '', 'agent', '', 'heading', 1, 1, 1, 0, NULL, NULL, 0, 8, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 79, 84, 0, '*', 0, NULL, NULL),
(118, 'incidentmenu', 'Responsable :', 'responsable', '', 'responsable', '', 'heading', 1, 1, 1, 0, NULL, NULL, 0, 7, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 85, 90, 0, '*', 0, NULL, NULL),
(119, 'incidentmenu', 'Incidents ouverts', 'incidents-ouverts', '', 'utilisateur/incidents-ouverts', 'index.php?option=com_gilla&view=incidents&selector=ouvert', 'url', 1, 116, 2, 0, NULL, NULL, 0, 9, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 72, 73, 0, '*', 0, NULL, NULL),
(120, 'incidentmenu', 'Signaler un incident', 'signaler-un-incident', '', 'utilisateur/signaler-un-incident', 'index.php?option=com_gilla&view=incident_e&layout=edit&id=0', 'url', 1, 116, 2, 0, NULL, NULL, 0, 9, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 74, 75, 0, '*', 0, NULL, NULL),
(121, 'incidentmenu', 'Mes incidents', 'mes-incidents', '', 'utilisateur/mes-incidents', 'index.php?option=com_gilla&view=incidents&selector=mien', 'url', 1, 116, 2, 0, NULL, NULL, 0, 9, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 76, 77, 0, '*', 0, NULL, NULL),
(122, 'incidentmenu', 'Incidents à gérer', 'incidents-a-gerer', '', 'agent/incidents-a-gerer', 'index.php?option=com_gilla&view=incidents&selector=affecte', 'url', 1, 117, 2, 0, NULL, NULL, 0, 8, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 80, 81, 0, '*', 0, NULL, NULL),
(123, 'incidentmenu', 'Prises en charge', 'prises-en-charge', '', 'agent/prises-en-charge', 'index.php?option=com_gilla&view=prise_en_charges', 'url', 1, 117, 2, 0, NULL, NULL, 0, 8, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 82, 83, 0, '*', 0, NULL, NULL),
(124, 'incidentmenu', 'Agents', 'agents', '', 'responsable/agents', 'index.php?option=com_gilla&view=agents', 'url', 1, 118, 2, 0, NULL, NULL, 0, 7, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 86, 87, 0, '*', 0, NULL, NULL),
(125, 'incidentmenu', 'Affectations', 'affectations', '', 'responsable/affectations', 'index.php?option=com_gilla&view=affectations', 'url', 1, 118, 2, 0, NULL, NULL, 0, 7, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 88, 89, 0, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_menu_types`
--

CREATE TABLE `gilla4b_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_menu_types`
--

INSERT INTO `gilla4b_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Menu principal', 'Le menu principal du site', 0),
(2, 100, 'incidentmenu', 'Gestion des incidents', 'Menu de gestion des incidents', 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_messages`
--

CREATE TABLE `gilla4b_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_messages_cfg`
--

CREATE TABLE `gilla4b_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_modules`
--

CREATE TABLE `gilla4b_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_modules`
--

INSERT INTO `gilla4b_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu principal', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Connexion', '', '', 1, 'login', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Articles populaires', '', '', 3, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Derniers articles', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Barre d\'outils', '', '', 1, 'toolbar', NULL, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Utilisateurs connectés', '', '', 2, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Menu d\'administration', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Titre', '', '', 1, 'title', NULL, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Connexion', '', '', 7, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Fil de navigation', '', '', 1, 'breadcrumbs', NULL, NULL, NULL, NULL, 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Statut multilangue', '', '', 2, 'status', NULL, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Version Joomla', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Données exemple', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Dernières actions', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Demande de confidentialité', '', '', 0, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Aide à la connexion', '', '', 1, 'sidebar', NULL, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'Système', '', '', 1, 'cpanel-system', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Contenus', '', '', 1, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus', '', '', 1, 'cpanel-menus', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Composants', '', '', 1, 'cpanel-components', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Utilisateurs', '', '', 1, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Articles populaires', '', '', 3, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Derniers articles', '', '', 4, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Utilisateurs identifiés', '', '', 2, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Lien vers le site', '', '', 5, 'status', NULL, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', NULL, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Messages de post-installation', '', '', 3, 'status', NULL, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'Statut Utilisateur', '', '', 6, 'status', NULL, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'Système', '', '', 2, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, 'Extensions tierces', '', '', 4, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Aide', '', '', 1, 'cpanel-help', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Demande de confidentialité', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Statut de confidentialité', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 96, 'Visites guidées', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_guidedtours', 1, 1, '', 1, '*'),
(110, 101, 'Gestion des incidents', '', NULL, 2, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_menu', 9, 1, '{\"menutype\":\"incidentmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_modules_menu`
--

CREATE TABLE `gilla4b_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_modules_menu`
--

INSERT INTO `gilla4b_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_newsfeeds`
--

CREATE TABLE `gilla4b_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_overrider`
--

CREATE TABLE `gilla4b_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_postinstall_messages`
--

CREATE TABLE `gilla4b_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_postinstall_messages`
--

INSERT INTO `gilla4b_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 227, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(2, 227, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(3, 227, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(4, 227, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1),
(5, 227, 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION', 'com_users', 1, 'action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_condition', '4.2.0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_privacy_consents`
--

CREATE TABLE `gilla4b_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_privacy_requests`
--

CREATE TABLE `gilla4b_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_redirect_links`
--

CREATE TABLE `gilla4b_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_scheduler_tasks`
--

CREATE TABLE `gilla4b_scheduler_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_schemas`
--

CREATE TABLE `gilla4b_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_schemas`
--

INSERT INTO `gilla4b_schemas` (`extension_id`, `version_id`) VALUES
(227, '4.4.0-2023-09-13');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_session`
--

CREATE TABLE `gilla4b_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_session`
--

INSERT INTO `gilla4b_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x62756d69766f63336470367430756d6b6c6f6b3862336a667174, 0, 0, 1708018991, 'joomla|s:992:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE5O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcwODAwNzc2MTtzOjQ6Imxhc3QiO2k6MTcwODAxODc0NDtzOjM6Im5vdyI7aToxNzA4MDE4OTkwO31zOjU6InRva2VuIjtzOjMyOiI2YmM3ZGQ0YjZiYWY5MzkyNzgzYWZlM2Y1NzY0NzdjYiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjI4OiJodHRwOi8vMTkyLjE2OC4xLjE5L2dpbGxhNGIvIjtzOjQ6ImRhdGEiO2E6MDp7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aToyNzk7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 279, 'mdupond'),
(0x6e67636d663135653832713868316c6932316f32676c74756b76, 1, 0, 1708018990, 'joomla|s:780:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzA4MDE4OTYzO3M6NDoibGFzdCI7aToxNzA4MDE4OTkwO3M6Mzoibm93IjtpOjE3MDgwMTg5OTA7fXM6NToidG9rZW4iO3M6MzI6ImJmNmFkZTNkZjMwOWVhMzk0NjIwZWZkY2M3MDM5M2ZkIjtzOjc6ImNvdW50ZXIiO2k6Mjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aToyNzg7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 278, 'SLAM');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_tags`
--

CREATE TABLE `gilla4b_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_tags`
--

INSERT INTO `gilla4b_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 278, '2023-10-06 08:20:01', '', 278, '2023-10-06 08:20:01', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_template_overrides`
--

CREATE TABLE `gilla4b_template_overrides` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_template_styles`
--

CREATE TABLE `gilla4b_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_template_styles`
--

INSERT INTO `gilla4b_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '0', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12, 'cassiopeia', 0, '1', 'Cassiopeia - Gilla', 1, '', '{\"brand\":true,\"logoFile\":\"images\\/gilla\\/logo_gilla_100_marine.png#joomlaImage:\\/\\/local-images\\/gilla\\/logo_gilla_100_marine.png?width=143&height=100\",\"siteTitle\":\"\",\"siteDescription\":\"Gestion des Incidents au Lyc\\u00e9e Louis-Armand\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_ucm_base`
--

CREATE TABLE `gilla4b_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_ucm_content`
--

CREATE TABLE `gilla4b_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) UNSIGNED DEFAULT NULL,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_updates`
--

CREATE TABLE `gilla4b_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Déchargement des données de la table `gilla4b_updates`
--

INSERT INTO `gilla4b_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(57, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '4.4.2.2', '', 'https://update.joomla.org/language/details4/af-ZA_details.xml', '', '', ''),
(58, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '4.0.2.1', '', 'https://update.joomla.org/language/details4/ar-AA_details.xml', '', '', ''),
(59, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '4.4.3.5', '', 'https://update.joomla.org/language/details4/eu-ES_details.xml', '', '', ''),
(60, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/be-BY_details.xml', '', '', ''),
(61, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '4.3.3.1', '', 'https://update.joomla.org/language/details4/bg-BG_details.xml', '', '', ''),
(62, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '4.0.4.2', '', 'https://update.joomla.org/language/details4/ca-ES_details.xml', '', '', ''),
(63, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '4.3.0.2', '', 'https://update.joomla.org/language/details4/zh-CN_details.xml', '', '', ''),
(64, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/zh-TW_details.xml', '', '', ''),
(65, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '4.3.1.1', '', 'https://update.joomla.org/language/details4/hr-HR_details.xml', '', '', ''),
(66, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '4.4.0.1', '', 'https://update.joomla.org/language/details4/cs-CZ_details.xml', '', '', ''),
(67, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/da-DK_details.xml', '', '', ''),
(68, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/nl-NL_details.xml', '', '', ''),
(69, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/en-AU_details.xml', '', '', ''),
(70, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/en-CA_details.xml', '', '', ''),
(71, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/en-NZ_details.xml', '', '', ''),
(72, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/en-US_details.xml', '', '', ''),
(73, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '4.4.1.2', '', 'https://update.joomla.org/language/details4/et-EE_details.xml', '', '', ''),
(74, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '4.1.1.2', '', 'https://update.joomla.org/language/details4/fi-FI_details.xml', '', '', ''),
(75, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '4.4.0.1', '', 'https://update.joomla.org/language/details4/nl-BE_details.xml', '', '', ''),
(76, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/fr-CA_details.xml', '', '', ''),
(77, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/ka-GE_details.xml', '', '', ''),
(78, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/de-DE_details.xml', '', '', ''),
(79, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/de-AT_details.xml', '', '', ''),
(80, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/de-LI_details.xml', '', '', ''),
(81, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/de-LU_details.xml', '', '', ''),
(82, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/de-CH_details.xml', '', '', ''),
(83, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '4.4.2.2', '', 'https://update.joomla.org/language/details4/el-GR_details.xml', '', '', ''),
(84, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/hu-HU_details.xml', '', '', ''),
(85, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '4.2.8.1', '', 'https://update.joomla.org/language/details4/ga-IE_details.xml', '', '', ''),
(86, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/it-IT_details.xml', '', '', ''),
(87, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/ja-JP_details.xml', '', '', ''),
(88, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '4.4.0.3', '', 'https://update.joomla.org/language/details4/kk-KZ_details.xml', '', '', ''),
(89, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/ko-KR_details.xml', '', '', ''),
(90, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '4.4.1.1', '', 'https://update.joomla.org/language/details4/lv-LV_details.xml', '', '', ''),
(91, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '4.3.4.1', '', 'https://update.joomla.org/language/details4/lt-LT_details.xml', '', '', ''),
(92, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '4.2.4.1', '', 'https://update.joomla.org/language/details4/mk-MK_details.xml', '', '', ''),
(93, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '4.0.1.1', '', 'https://update.joomla.org/language/details4/nb-NO_details.xml', '', '', ''),
(94, 2, 0, 'Pashto Afghanistan', '', 'pkg_ps-AF', 'package', '', 0, '4.3.4.1', '', 'https://update.joomla.org/language/details4/ps-AF_details.xml', '', '', ''),
(95, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/fa-IR_details.xml', '', '', ''),
(96, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '4.4.0.2', '', 'https://update.joomla.org/language/details4/pl-PL_details.xml', '', '', ''),
(97, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '4.0.3.1', '', 'https://update.joomla.org/language/details4/pt-BR_details.xml', '', '', ''),
(98, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '4.0.0-rc4.2', '', 'https://update.joomla.org/language/details4/pt-PT_details.xml', '', '', ''),
(99, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '4.3.1.1', '', 'https://update.joomla.org/language/details4/ro-RO_details.xml', '', '', ''),
(100, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/ru-RU_details.xml', '', '', ''),
(101, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '4.3.2.1', '', 'https://update.joomla.org/language/details4/sr-RS_details.xml', '', '', ''),
(102, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '4.3.2.2', '', 'https://update.joomla.org/language/details4/sr-YU_details.xml', '', '', ''),
(103, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '4.4.1.1', '', 'https://update.joomla.org/language/details4/sk-SK_details.xml', '', '', ''),
(104, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/sl-SI_details.xml', '', '', ''),
(105, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/es-ES_details.xml', '', '', ''),
(106, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/sv-SE_details.xml', '', '', ''),
(107, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/ta-IN_details.xml', '', '', ''),
(108, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/th-TH_details.xml', '', '', ''),
(109, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/tr-TR_details.xml', '', '', ''),
(110, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '4.4.1.1', '', 'https://update.joomla.org/language/details4/uk-UA_details.xml', '', '', ''),
(111, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '4.2.2.1', '', 'https://update.joomla.org/language/details4/vi-VN_details.xml', '', '', ''),
(112, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '4.4.2.1', '', 'https://update.joomla.org/language/details4/cy-GB_details.xml', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_update_sites`
--

CREATE TABLE `gilla4b_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Déchargement des données de la table `gilla4b_update_sites`
--

INSERT INTO `gilla4b_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1708016224, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_4.xml', 1, 1707993932, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1707993932, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_update_sites_extensions`
--

CREATE TABLE `gilla4b_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Déchargement des données de la table `gilla4b_update_sites_extensions`
--

INSERT INTO `gilla4b_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 227),
(2, 228),
(2, 229),
(3, 24);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_usergroups`
--

CREATE TABLE `gilla4b_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_usergroups`
--

INSERT INTO `gilla4b_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 24, 'Public'),
(2, 1, 2, 15, 'Enregistré'),
(3, 2, 3, 8, 'Auteur'),
(4, 3, 4, 7, 'Rédacteur'),
(5, 4, 5, 6, 'Validateur'),
(6, 1, 16, 19, 'Gestionnaire'),
(7, 6, 17, 18, 'Administrateur'),
(8, 1, 22, 23, 'Super Utilisateur'),
(9, 1, 20, 21, 'Invité'),
(10, 2, 9, 14, 'GILLA - Utilisateur'),
(11, 10, 10, 13, 'GILLA - Agent'),
(12, 11, 11, 12, 'GILLA - Responsable');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_users`
--

CREATE TABLE `gilla4b_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_users`
--

INSERT INTO `gilla4b_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(278, 'SLAM', 'SLAM', 'emmanuel.derome@gmail.com', '$2y$10$G69b6Y4yFJSZ2MivAWe.puastVCh1fTRz7WEVi7KO3iswMFCE1Cby', 0, 1, '2023-10-06 08:20:07', '2024-02-15 17:43:10', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(279, 'Marcel DUPOND', 'mdupond', 'mdupond@gilla.org', '$2y$10$ASx0Wk0j.e6ZOqOMFZ7ZKe5.HNUW09Yv02K7wnviAUL7LZkEdlGRq', 0, 0, '2023-10-06 08:25:17', '2024-02-15 14:36:16', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(280, 'Gary GABIN', 'ggabin', 'ggabin@gilla.org', '$2y$10$NIXnw1Lx6oyFYoIsW3x4ZO8XJGGRrjdOJVbw/MvRfaWz94Lj5UDBG', 0, 0, '2023-11-08 11:29:18', '2023-12-08 16:10:28', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(281, 'Elsa BULLOCK', 'ebullock', 'ebullock@gilla.org', '$2y$10$lHXZNw1SO/q6uKYjHw5MAec2foAjHpPVmjq4kXLAoB8mTZr7soRV6', 0, 0, '2023-11-08 11:30:16', '2023-11-24 15:15:53', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(282, 'Henry BOGART', 'hbogart', 'hbogart@gilla.org', '$2y$10$d3pM.FEkJNnUA67rSFeWf.zqXe6Mw6YpiuP8tdpFZMMlNVYaiKE3q', 0, 0, '2023-11-08 11:30:54', '2023-12-06 14:30:43', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(283, 'Aline DION', 'adion', 'adion@gilla.org', '$2y$10$iMNIwP09ZQ7zJkivg2uPVuj.vMsDBdQsZQIU5wqr6d2DwnPKBZ7uu', 0, 0, '2023-11-08 11:31:30', '2023-12-06 17:17:26', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(284, 'Théo BELMONDO', 'tbelmondo', 'tbelmondo@gilla.org', '$2y$10$tdvOuynALYzfi9vJn6l4eex/w4Uzoia4MdF6aj.ovHCLNz1vGF6U.', 0, 0, '2023-11-08 11:32:07', '2023-11-24 15:14:56', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(285, 'Marc DUPLAN', 'mduplan', 'mduplan@gilla.org', '$2y$10$/F52wLmiXRx8NB3Ojc3YRO7bY8xMnd0bmkxEo2fohg85vxYdtk8H2', 0, 0, '2023-11-08 11:32:42', '2023-12-06 17:11:34', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_user_keys`
--

CREATE TABLE `gilla4b_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_user_mfa`
--

CREATE TABLE `gilla4b_user_mfa` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_user_notes`
--

CREATE TABLE `gilla4b_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_user_profiles`
--

CREATE TABLE `gilla4b_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

--
-- Déchargement des données de la table `gilla4b_user_profiles`
--

INSERT INTO `gilla4b_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(278, 'joomlatoken.enabled', '1', 2),
(278, 'joomlatoken.token', 'crCbIEHpX53phpx1IGlLjdI3lsGxu9s4z1/gbuPSFyw=', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_user_usergroup_map`
--

CREATE TABLE `gilla4b_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_user_usergroup_map`
--

INSERT INTO `gilla4b_user_usergroup_map` (`user_id`, `group_id`) VALUES
(278, 8),
(279, 10),
(280, 12),
(281, 10),
(282, 11),
(283, 10),
(284, 11),
(285, 11);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_viewlevels`
--

CREATE TABLE `gilla4b_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_viewlevels`
--

INSERT INTO `gilla4b_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Enregistré', 2, '[6,2,8]'),
(3, 'Spécial', 3, '[6,3,8]'),
(5, 'Invité', 1, '[9]'),
(6, 'Super Utilisateur', 4, '[8]'),
(7, 'GILLA_Responsable', 0, '[12]'),
(8, 'GILLA_Agent', 0, '[11]'),
(9, 'GILLA_Utilisateur', 0, '[10]');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_webauthn_credentials`
--

CREATE TABLE `gilla4b_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_workflows`
--

CREATE TABLE `gilla4b_workflows` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_workflows`
--

INSERT INTO `gilla4b_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2023-10-06 08:20:02', 278, '2023-10-06 08:20:02', 278, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_workflow_associations`
--

CREATE TABLE `gilla4b_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_workflow_associations`
--

INSERT INTO `gilla4b_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article');

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_workflow_stages`
--

CREATE TABLE `gilla4b_workflow_stages` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_workflow_stages`
--

INSERT INTO `gilla4b_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gilla4b_workflow_transitions`
--

CREATE TABLE `gilla4b_workflow_transitions` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gilla4b_workflow_transitions`
--

INSERT INTO `gilla4b_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `gilla4b_action_logs`
--
ALTER TABLE `gilla4b_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Index pour la table `gilla4b_action_logs_extensions`
--
ALTER TABLE `gilla4b_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_action_logs_users`
--
ALTER TABLE `gilla4b_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Index pour la table `gilla4b_action_log_config`
--
ALTER TABLE `gilla4b_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_assets`
--
ALTER TABLE `gilla4b_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Index pour la table `gilla4b_associations`
--
ALTER TABLE `gilla4b_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Index pour la table `gilla4b_banners`
--
ALTER TABLE `gilla4b_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_banner_clients`
--
ALTER TABLE `gilla4b_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Index pour la table `gilla4b_banner_tracks`
--
ALTER TABLE `gilla4b_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Index pour la table `gilla4b_categories`
--
ALTER TABLE `gilla4b_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_contact_details`
--
ALTER TABLE `gilla4b_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_content`
--
ALTER TABLE `gilla4b_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Index pour la table `gilla4b_contentitem_tag_map`
--
ALTER TABLE `gilla4b_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Index pour la table `gilla4b_content_frontpage`
--
ALTER TABLE `gilla4b_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `gilla4b_content_rating`
--
ALTER TABLE `gilla4b_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `gilla4b_content_types`
--
ALTER TABLE `gilla4b_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Index pour la table `gilla4b_extensions`
--
ALTER TABLE `gilla4b_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Index pour la table `gilla4b_fields`
--
ALTER TABLE `gilla4b_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_fields_categories`
--
ALTER TABLE `gilla4b_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Index pour la table `gilla4b_fields_groups`
--
ALTER TABLE `gilla4b_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_fields_values`
--
ALTER TABLE `gilla4b_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Index pour la table `gilla4b_finder_filters`
--
ALTER TABLE `gilla4b_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Index pour la table `gilla4b_finder_links`
--
ALTER TABLE `gilla4b_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Index pour la table `gilla4b_finder_links_terms`
--
ALTER TABLE `gilla4b_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `gilla4b_finder_logging`
--
ALTER TABLE `gilla4b_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Index pour la table `gilla4b_finder_taxonomy`
--
ALTER TABLE `gilla4b_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Index pour la table `gilla4b_finder_taxonomy_map`
--
ALTER TABLE `gilla4b_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Index pour la table `gilla4b_finder_terms`
--
ALTER TABLE `gilla4b_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_finder_terms_common`
--
ALTER TABLE `gilla4b_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Index pour la table `gilla4b_finder_tokens`
--
ALTER TABLE `gilla4b_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_finder_tokens_aggregate`
--
ALTER TABLE `gilla4b_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Index pour la table `gilla4b_finder_types`
--
ALTER TABLE `gilla4b_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Index pour la table `gilla4b_gilla_affectations`
--
ALTER TABLE `gilla4b_gilla_affectations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_affectations_agents_id` (`agents_id`),
  ADD KEY `fk_gilla4b_gilla_affectations_types_id` (`types_id`);

--
-- Index pour la table `gilla4b_gilla_agents`
--
ALTER TABLE `gilla4b_gilla_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_agents_users_id` (`users_id`);

--
-- Index pour la table `gilla4b_gilla_emplacements`
--
ALTER TABLE `gilla4b_gilla_emplacements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_emplacements_emplacements_id` (`emplacements_id`);

--
-- Index pour la table `gilla4b_gilla_etats`
--
ALTER TABLE `gilla4b_gilla_etats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_gilla_events`
--
ALTER TABLE `gilla4b_gilla_events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_gilla_events_users`
--
ALTER TABLE `gilla4b_gilla_events_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_events_users_events_id` (`events_id`),
  ADD KEY `fk_gilla4b_gilla_events_users_users_id` (`users_id`);

--
-- Index pour la table `gilla4b_gilla_incidents`
--
ALTER TABLE `gilla4b_gilla_incidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_incidents_users_id` (`users_id`),
  ADD KEY `fk_gilla4b_gilla_incidents_emplacements_id` (`emplacements_id`),
  ADD KEY `fk_gilla4b_gilla_incidents_types_id` (`types_id`);

--
-- Index pour la table `gilla4b_gilla_priorites`
--
ALTER TABLE `gilla4b_gilla_priorites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_gilla_prise_en_charges`
--
ALTER TABLE `gilla4b_gilla_prise_en_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_prise_en_charges_agents_id` (`agents_id`),
  ADD KEY `fk_gilla4b_gilla_prise_en_charges_incidents_id` (`incidents_id`),
  ADD KEY `fk_gilla4b_gilla_prise_en_charges_priorites_id` (`priorites_id`),
  ADD KEY `fk_gilla4b_gilla_prise_en_charges_etats_id` (`etats_id`);

--
-- Index pour la table `gilla4b_gilla_types`
--
ALTER TABLE `gilla4b_gilla_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gilla4b_gilla_types_types_id` (`types_id`);

--
-- Index pour la table `gilla4b_guidedtours`
--
ALTER TABLE `gilla4b_guidedtours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_guidedtour_steps`
--
ALTER TABLE `gilla4b_guidedtour_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tour` (`tour_id`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_history`
--
ALTER TABLE `gilla4b_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Index pour la table `gilla4b_languages`
--
ALTER TABLE `gilla4b_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Index pour la table `gilla4b_mail_templates`
--
ALTER TABLE `gilla4b_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Index pour la table `gilla4b_menu`
--
ALTER TABLE `gilla4b_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_menu_types`
--
ALTER TABLE `gilla4b_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Index pour la table `gilla4b_messages`
--
ALTER TABLE `gilla4b_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Index pour la table `gilla4b_messages_cfg`
--
ALTER TABLE `gilla4b_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Index pour la table `gilla4b_modules`
--
ALTER TABLE `gilla4b_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_modules_menu`
--
ALTER TABLE `gilla4b_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Index pour la table `gilla4b_newsfeeds`
--
ALTER TABLE `gilla4b_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_overrider`
--
ALTER TABLE `gilla4b_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_postinstall_messages`
--
ALTER TABLE `gilla4b_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Index pour la table `gilla4b_privacy_consents`
--
ALTER TABLE `gilla4b_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Index pour la table `gilla4b_privacy_requests`
--
ALTER TABLE `gilla4b_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gilla4b_redirect_links`
--
ALTER TABLE `gilla4b_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Index pour la table `gilla4b_scheduler_tasks`
--
ALTER TABLE `gilla4b_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Index pour la table `gilla4b_schemas`
--
ALTER TABLE `gilla4b_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Index pour la table `gilla4b_session`
--
ALTER TABLE `gilla4b_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Index pour la table `gilla4b_tags`
--
ALTER TABLE `gilla4b_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `gilla4b_template_overrides`
--
ALTER TABLE `gilla4b_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Index pour la table `gilla4b_template_styles`
--
ALTER TABLE `gilla4b_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Index pour la table `gilla4b_ucm_base`
--
ALTER TABLE `gilla4b_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Index pour la table `gilla4b_ucm_content`
--
ALTER TABLE `gilla4b_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Index pour la table `gilla4b_updates`
--
ALTER TABLE `gilla4b_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Index pour la table `gilla4b_update_sites`
--
ALTER TABLE `gilla4b_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Index pour la table `gilla4b_update_sites_extensions`
--
ALTER TABLE `gilla4b_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Index pour la table `gilla4b_usergroups`
--
ALTER TABLE `gilla4b_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Index pour la table `gilla4b_users`
--
ALTER TABLE `gilla4b_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `gilla4b_user_keys`
--
ALTER TABLE `gilla4b_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `gilla4b_user_mfa`
--
ALTER TABLE `gilla4b_user_mfa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Index pour la table `gilla4b_user_notes`
--
ALTER TABLE `gilla4b_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Index pour la table `gilla4b_user_profiles`
--
ALTER TABLE `gilla4b_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Index pour la table `gilla4b_user_usergroup_map`
--
ALTER TABLE `gilla4b_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Index pour la table `gilla4b_viewlevels`
--
ALTER TABLE `gilla4b_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Index pour la table `gilla4b_webauthn_credentials`
--
ALTER TABLE `gilla4b_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Index pour la table `gilla4b_workflows`
--
ALTER TABLE `gilla4b_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Index pour la table `gilla4b_workflow_associations`
--
ALTER TABLE `gilla4b_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Index pour la table `gilla4b_workflow_stages`
--
ALTER TABLE `gilla4b_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Index pour la table `gilla4b_workflow_transitions`
--
ALTER TABLE `gilla4b_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `gilla4b_action_logs`
--
ALTER TABLE `gilla4b_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT pour la table `gilla4b_action_logs_extensions`
--
ALTER TABLE `gilla4b_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `gilla4b_action_log_config`
--
ALTER TABLE `gilla4b_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `gilla4b_assets`
--
ALTER TABLE `gilla4b_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `gilla4b_banners`
--
ALTER TABLE `gilla4b_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_banner_clients`
--
ALTER TABLE `gilla4b_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_categories`
--
ALTER TABLE `gilla4b_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `gilla4b_contact_details`
--
ALTER TABLE `gilla4b_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gilla4b_content`
--
ALTER TABLE `gilla4b_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gilla4b_content_types`
--
ALTER TABLE `gilla4b_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT pour la table `gilla4b_extensions`
--
ALTER TABLE `gilla4b_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT pour la table `gilla4b_fields`
--
ALTER TABLE `gilla4b_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_fields_groups`
--
ALTER TABLE `gilla4b_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_finder_filters`
--
ALTER TABLE `gilla4b_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_finder_links`
--
ALTER TABLE `gilla4b_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_finder_taxonomy`
--
ALTER TABLE `gilla4b_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `gilla4b_finder_terms`
--
ALTER TABLE `gilla4b_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT pour la table `gilla4b_finder_types`
--
ALTER TABLE `gilla4b_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_affectations`
--
ALTER TABLE `gilla4b_gilla_affectations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_agents`
--
ALTER TABLE `gilla4b_gilla_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_emplacements`
--
ALTER TABLE `gilla4b_gilla_emplacements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_etats`
--
ALTER TABLE `gilla4b_gilla_etats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_events`
--
ALTER TABLE `gilla4b_gilla_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_events_users`
--
ALTER TABLE `gilla4b_gilla_events_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_incidents`
--
ALTER TABLE `gilla4b_gilla_incidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_priorites`
--
ALTER TABLE `gilla4b_gilla_priorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_prise_en_charges`
--
ALTER TABLE `gilla4b_gilla_prise_en_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_gilla_types`
--
ALTER TABLE `gilla4b_gilla_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `gilla4b_guidedtours`
--
ALTER TABLE `gilla4b_guidedtours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `gilla4b_guidedtour_steps`
--
ALTER TABLE `gilla4b_guidedtour_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT pour la table `gilla4b_history`
--
ALTER TABLE `gilla4b_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_languages`
--
ALTER TABLE `gilla4b_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gilla4b_menu`
--
ALTER TABLE `gilla4b_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `gilla4b_menu_types`
--
ALTER TABLE `gilla4b_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gilla4b_messages`
--
ALTER TABLE `gilla4b_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_modules`
--
ALTER TABLE `gilla4b_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `gilla4b_newsfeeds`
--
ALTER TABLE `gilla4b_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_overrider`
--
ALTER TABLE `gilla4b_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT pour la table `gilla4b_postinstall_messages`
--
ALTER TABLE `gilla4b_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `gilla4b_privacy_consents`
--
ALTER TABLE `gilla4b_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_privacy_requests`
--
ALTER TABLE `gilla4b_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_redirect_links`
--
ALTER TABLE `gilla4b_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_scheduler_tasks`
--
ALTER TABLE `gilla4b_scheduler_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_tags`
--
ALTER TABLE `gilla4b_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gilla4b_template_overrides`
--
ALTER TABLE `gilla4b_template_overrides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_template_styles`
--
ALTER TABLE `gilla4b_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `gilla4b_ucm_content`
--
ALTER TABLE `gilla4b_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_updates`
--
ALTER TABLE `gilla4b_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT pour la table `gilla4b_update_sites`
--
ALTER TABLE `gilla4b_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gilla4b_usergroups`
--
ALTER TABLE `gilla4b_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `gilla4b_users`
--
ALTER TABLE `gilla4b_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT pour la table `gilla4b_user_keys`
--
ALTER TABLE `gilla4b_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `gilla4b_user_mfa`
--
ALTER TABLE `gilla4b_user_mfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_user_notes`
--
ALTER TABLE `gilla4b_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gilla4b_viewlevels`
--
ALTER TABLE `gilla4b_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `gilla4b_workflows`
--
ALTER TABLE `gilla4b_workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gilla4b_workflow_stages`
--
ALTER TABLE `gilla4b_workflow_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gilla4b_workflow_transitions`
--
ALTER TABLE `gilla4b_workflow_transitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `gilla4b_gilla_affectations`
--
ALTER TABLE `gilla4b_gilla_affectations`
  ADD CONSTRAINT `fk_gilla4b_gilla_affectations_agents_id` FOREIGN KEY (`agents_id`) REFERENCES `gilla4b_gilla_agents` (`id`),
  ADD CONSTRAINT `fk_gilla4b_gilla_affectations_types_id` FOREIGN KEY (`types_id`) REFERENCES `gilla4b_gilla_types` (`id`);

--
-- Contraintes pour la table `gilla4b_gilla_emplacements`
--
ALTER TABLE `gilla4b_gilla_emplacements`
  ADD CONSTRAINT `fk_gilla4b_gilla_emplacements_emplacements_id` FOREIGN KEY (`emplacements_id`) REFERENCES `gilla4b_gilla_emplacements` (`id`);

--
-- Contraintes pour la table `gilla4b_gilla_events_users`
--
ALTER TABLE `gilla4b_gilla_events_users`
  ADD CONSTRAINT `fk_gilla4b_gilla_events_users_events_id` FOREIGN KEY (`events_id`) REFERENCES `gilla4b_gilla_events` (`id`),
  ADD CONSTRAINT `fk_gilla4b_gilla_events_users_users_id` FOREIGN KEY (`users_id`) REFERENCES `gilla4b_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
