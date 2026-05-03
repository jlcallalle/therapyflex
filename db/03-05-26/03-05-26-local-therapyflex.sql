-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2026 a las 20:11:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `therapyflex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-07-21 21:00:43', '2025-07-21 21:00:43', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_litespeed_url`
--

CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL,
  `url` varchar(500) NOT NULL,
  `cache_tags` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_litespeed_url_file`
--

CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `mobile` tinyint(4) NOT NULL COMMENT 'mobile=1',
  `webp` tinyint(4) NOT NULL COMMENT 'webp=1',
  `expired` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1777831244;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1777842044;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1777842098;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1777842923;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1777845643;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1777847443;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1777849243;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1777849919;a:1:{s:41:\"googlesitekit_cron_update_remote_features\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1777928444;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1777928498;a:1:{s:24:\"run_weekly_partner_astra\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1778014844;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/therapyflex', 'on'),
(3, 'home', 'http://localhost/therapyflex', 'on'),
(4, 'blogname', 'therapyflex.pe', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'jlcallalle@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:137:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:12:\"dolencias/?$\";s:28:\"index.php?post_type=dolencia\";s:42:\"dolencias/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=dolencia&feed=$matches[1]\";s:37:\"dolencias/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=dolencia&feed=$matches[1]\";s:29:\"dolencias/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=dolencia&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"producto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"producto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"producto/([^/]+)/embed/?$\";s:41:\"index.php?producto=$matches[1]&embed=true\";s:29:\"producto/([^/]+)/trackback/?$\";s:35:\"index.php?producto=$matches[1]&tb=1\";s:37:\"producto/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?producto=$matches[1]&paged=$matches[2]\";s:44:\"producto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?producto=$matches[1]&cpage=$matches[2]\";s:33:\"producto/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?producto=$matches[1]&page=$matches[2]\";s:25:\"producto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"producto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"dolencias/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"dolencias/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"dolencias/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"dolencias/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"dolencias/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"dolencias/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"dolencias/([^/]+)/embed/?$\";s:41:\"index.php?dolencia=$matches[1]&embed=true\";s:30:\"dolencias/([^/]+)/trackback/?$\";s:35:\"index.php?dolencia=$matches[1]&tb=1\";s:50:\"dolencias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?dolencia=$matches[1]&feed=$matches[2]\";s:45:\"dolencias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?dolencia=$matches[1]&feed=$matches[2]\";s:38:\"dolencias/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?dolencia=$matches[1]&paged=$matches[2]\";s:45:\"dolencias/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?dolencia=$matches[1]&cpage=$matches[2]\";s:34:\"dolencias/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?dolencia=$matches[1]&page=$matches[2]\";s:26:\"dolencias/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"dolencias/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"dolencias/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"dolencias/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"dolencias/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"dolencias/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"tipo-servicio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?tipo_servicio=$matches[1]&feed=$matches[2]\";s:49:\"tipo-servicio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?tipo_servicio=$matches[1]&feed=$matches[2]\";s:30:\"tipo-servicio/([^/]+)/embed/?$\";s:46:\"index.php?tipo_servicio=$matches[1]&embed=true\";s:42:\"tipo-servicio/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?tipo_servicio=$matches[1]&paged=$matches[2]\";s:24:\"tipo-servicio/([^/]+)/?$\";s:35:\"index.php?tipo_servicio=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:35:\"google-site-kit/google-site-kit.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'therapyflex', 'on'),
(42, 'stylesheet', 'therapyflex', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '7', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1768683643', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:6:\"footer\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(123, 'WPLANG', 'es_PE', 'auto'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.9.4-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.9.4\";s:7:\"version\";s:5:\"6.9.4\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:51:\"https://downloads.w.org/release/wordpress-6.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:51:\"https://downloads.w.org/release/wordpress-6.9.4.zip\";s:10:\"no_content\";s:62:\"https://downloads.w.org/release/wordpress-6.9.4-no-content.zip\";s:11:\"new_bundled\";s:63:\"https://downloads.w.org/release/wordpress-6.9.4-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.9.4\";s:7:\"version\";s:5:\"6.9.4\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:51:\"https://downloads.w.org/release/wordpress-6.8.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:51:\"https://downloads.w.org/release/wordpress-6.8.5.zip\";s:10:\"no_content\";s:62:\"https://downloads.w.org/release/wordpress-6.8.5-no-content.zip\";s:11:\"new_bundled\";s:63:\"https://downloads.w.org/release/wordpress-6.8.5-new-bundled.zip\";s:7:\"partial\";s:61:\"https://downloads.w.org/release/wordpress-6.8.5-partial-2.zip\";s:8:\"rollback\";s:62:\"https://downloads.w.org/release/wordpress-6.8.5-rollback-2.zip\";}s:7:\"current\";s:5:\"6.8.5\";s:7:\"version\";s:5:\"6.8.5\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:5:\"6.8.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1777827730;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:0:{}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(128, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1777827738;s:7:\"checked\";a:4:{s:11:\"therapyflex\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:2:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(130, 'hostinger_show_onboarding', '1', 'auto'),
(131, 'optin_monster_api_activation_redirect_disabled', 'true', 'auto'),
(132, 'wpforms_activation_redirect', 'true', 'auto'),
(133, 'aioseo_activation_redirect', 'false', 'auto'),
(134, 'hts_new_installation', 'new', 'auto'),
(135, '_transient_jetpack_autoloader_plugin_paths', 'a:0:{}', 'on'),
(137, 'hostinger_tools', 'a:7:{s:16:\"maintenance_mode\";b:0;s:11:\"bypass_code\";s:16:\"LUtcDMlCuLahPmBT\";s:15:\"disable_xml_rpc\";b:0;s:11:\"force_https\";b:0;s:9:\"force_www\";b:0;s:31:\"disable_authentication_password\";b:1;s:15:\"enable_llms_txt\";b:0;}', 'off'),
(140, 'hostinger_appearance', 'none', 'off'),
(141, 'hostinger_subscription_id', 'AzqBgFUqPtT7S6RBA', 'on'),
(143, 'hostinger_hosting_plan', 'hostinger_premium_v2', 'on'),
(145, 'hostinger_client_type', 'smb', 'off'),
(146, 'litespeed.conf._version', '7.2', 'auto'),
(147, 'litespeed.conf.hash', 'Yw9JCk99GXQ1ufSAjiOlud6EAL1dDfcy', 'auto'),
(148, 'litespeed.conf.api_key', '', 'auto'),
(149, 'litespeed.conf.auto_upgrade', '', 'auto'),
(150, 'litespeed.conf.server_ip', '', 'auto'),
(151, 'litespeed.conf.guest', '', 'auto'),
(152, 'litespeed.conf.guest_optm', '', 'auto'),
(153, 'litespeed.conf.news', '1', 'auto'),
(154, 'litespeed.conf.guest_uas', '[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"spider\",\"PTST\",\"HeadlessChrome\"]', 'auto'),
(155, 'litespeed.conf.guest_ips', '[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]', 'auto'),
(156, 'litespeed.conf.cache', '1', 'auto'),
(157, 'litespeed.conf.cache-priv', '1', 'auto'),
(158, 'litespeed.conf.cache-commenter', '1', 'auto'),
(159, 'litespeed.conf.cache-rest', '1', 'auto'),
(160, 'litespeed.conf.cache-page_login', '1', 'auto'),
(161, 'litespeed.conf.cache-mobile', '', 'auto'),
(162, 'litespeed.conf.cache-mobile_rules', '[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]', 'auto'),
(163, 'litespeed.conf.cache-browser', '', 'auto'),
(164, 'litespeed.conf.cache-exc_useragents', '[]', 'auto'),
(165, 'litespeed.conf.cache-exc_cookies', '[]', 'auto'),
(166, 'litespeed.conf.cache-exc_qs', '[]', 'auto'),
(167, 'litespeed.conf.cache-exc_cat', '[]', 'auto'),
(168, 'litespeed.conf.cache-exc_tag', '[]', 'auto'),
(169, 'litespeed.conf.cache-force_uri', '[]', 'auto'),
(170, 'litespeed.conf.cache-force_pub_uri', '[]', 'auto'),
(171, 'litespeed.conf.cache-priv_uri', '[]', 'auto'),
(172, 'litespeed.conf.cache-exc', '[]', 'auto'),
(173, 'litespeed.conf.cache-exc_roles', '[]', 'auto'),
(174, 'litespeed.conf.cache-drop_qs', '[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]', 'auto'),
(175, 'litespeed.conf.cache-ttl_pub', '604800', 'auto'),
(176, 'litespeed.conf.cache-ttl_priv', '1800', 'auto'),
(177, 'litespeed.conf.cache-ttl_frontpage', '604800', 'auto'),
(178, 'litespeed.conf.cache-ttl_feed', '604800', 'auto'),
(179, 'litespeed.conf.cache-ttl_rest', '604800', 'auto'),
(180, 'litespeed.conf.cache-ttl_browser', '31557600', 'auto'),
(181, 'litespeed.conf.cache-ttl_status', '[\"404 3600\",\"500 600\"]', 'auto'),
(182, 'litespeed.conf.cache-login_cookie', '', 'auto'),
(183, 'litespeed.conf.cache-ajax_ttl', '[]', 'auto'),
(184, 'litespeed.conf.cache-vary_cookies', '[]', 'auto'),
(185, 'litespeed.conf.cache-vary_group', '[]', 'auto'),
(186, 'litespeed.conf.purge-upgrade', '', 'auto'),
(187, 'litespeed.conf.purge-stale', '', 'auto'),
(188, 'litespeed.conf.purge-post_all', '', 'auto'),
(189, 'litespeed.conf.purge-post_f', '1', 'auto'),
(190, 'litespeed.conf.purge-post_h', '1', 'auto'),
(191, 'litespeed.conf.purge-post_p', '1', 'auto'),
(192, 'litespeed.conf.purge-post_pwrp', '1', 'auto'),
(193, 'litespeed.conf.purge-post_a', '1', 'auto'),
(194, 'litespeed.conf.purge-post_y', '', 'auto'),
(195, 'litespeed.conf.purge-post_m', '1', 'auto'),
(196, 'litespeed.conf.purge-post_d', '', 'auto'),
(197, 'litespeed.conf.purge-post_t', '1', 'auto'),
(198, 'litespeed.conf.purge-post_pt', '1', 'auto'),
(199, 'litespeed.conf.purge-timed_urls', '[]', 'auto'),
(200, 'litespeed.conf.purge-timed_urls_time', '', 'auto'),
(201, 'litespeed.conf.purge-hook_all', '[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]', 'auto'),
(202, 'litespeed.conf.esi', '', 'auto'),
(203, 'litespeed.conf.esi-cache_admbar', '1', 'auto'),
(204, 'litespeed.conf.esi-cache_commform', '1', 'auto'),
(205, 'litespeed.conf.esi-nonce', '[\"stats_nonce\",\"subscribe_nonce\"]', 'auto'),
(206, 'litespeed.conf.util-instant_click', '', 'auto'),
(207, 'litespeed.conf.util-no_https_vary', '', 'auto'),
(208, 'litespeed.conf.debug-disable_all', '', 'auto'),
(209, 'litespeed.conf.debug', '', 'auto'),
(210, 'litespeed.conf.debug-ips', '[\"127.0.0.1\"]', 'auto'),
(211, 'litespeed.conf.debug-level', '', 'auto'),
(212, 'litespeed.conf.debug-filesize', '3', 'auto'),
(213, 'litespeed.conf.debug-collapse_qs', '', 'auto'),
(214, 'litespeed.conf.debug-inc', '[]', 'auto'),
(215, 'litespeed.conf.debug-exc', '[]', 'auto'),
(216, 'litespeed.conf.debug-exc_strings', '[]', 'auto'),
(217, 'litespeed.conf.db_optm-revisions_max', '0', 'auto'),
(218, 'litespeed.conf.db_optm-revisions_age', '0', 'auto'),
(219, 'litespeed.conf.optm-css_min', '', 'auto'),
(220, 'litespeed.conf.optm-css_comb', '', 'auto'),
(221, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'auto'),
(222, 'litespeed.conf.optm-ucss', '', 'auto'),
(223, 'litespeed.conf.optm-ucss_inline', '', 'auto'),
(224, 'litespeed.conf.optm-ucss_whitelist', '[]', 'auto'),
(225, 'litespeed.conf.optm-ucss_file_exc_inline', '[]', 'auto'),
(226, 'litespeed.conf.optm-ucss_exc', '[]', 'auto'),
(227, 'litespeed.conf.optm-css_exc', '[]', 'auto'),
(228, 'litespeed.conf.optm-js_min', '', 'auto'),
(229, 'litespeed.conf.optm-js_comb', '', 'auto'),
(230, 'litespeed.conf.optm-js_comb_ext_inl', '', 'auto'),
(231, 'litespeed.conf.optm-js_delay_inc', '[]', 'auto'),
(232, 'litespeed.conf.optm-js_exc', '[\"jquery.js\",\"jquery.min.js\"]', 'auto'),
(233, 'litespeed.conf.optm-html_min', '', 'auto'),
(234, 'litespeed.conf.optm-html_lazy', '[]', 'auto'),
(235, 'litespeed.conf.optm-html_skip_comment', '[]', 'auto'),
(236, 'litespeed.conf.optm-qs_rm', '', 'auto'),
(237, 'litespeed.conf.optm-ggfonts_rm', '', 'auto'),
(238, 'litespeed.conf.optm-css_async', '', 'auto'),
(239, 'litespeed.conf.optm-ccss_per_url', '', 'auto'),
(240, 'litespeed.conf.optm-ccss_sep_posttype', '[\"page\"]', 'auto'),
(241, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'auto'),
(242, 'litespeed.conf.optm-ccss_whitelist', '[]', 'auto'),
(243, 'litespeed.conf.optm-css_async_inline', '1', 'auto'),
(244, 'litespeed.conf.optm-css_font_display', '', 'auto'),
(245, 'litespeed.conf.optm-js_defer', '0', 'auto'),
(246, 'litespeed.conf.optm-emoji_rm', '', 'auto'),
(247, 'litespeed.conf.optm-noscript_rm', '', 'auto'),
(248, 'litespeed.conf.optm-ggfonts_async', '', 'auto'),
(249, 'litespeed.conf.optm-exc_roles', '[]', 'auto'),
(250, 'litespeed.conf.optm-ccss_con', '', 'auto'),
(251, 'litespeed.conf.optm-js_defer_exc', '[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]', 'auto'),
(252, 'litespeed.conf.optm-gm_js_exc', '[]', 'auto'),
(253, 'litespeed.conf.optm-dns_prefetch', '[]', 'auto'),
(254, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'auto'),
(255, 'litespeed.conf.optm-dns_preconnect', '[]', 'auto'),
(256, 'litespeed.conf.optm-exc', '[]', 'auto'),
(257, 'litespeed.conf.optm-guest_only', '1', 'auto'),
(258, 'litespeed.conf.object', '', 'auto'),
(259, 'litespeed.conf.object-kind', '', 'auto'),
(260, 'litespeed.conf.object-host', 'localhost', 'auto'),
(261, 'litespeed.conf.object-port', '11211', 'auto'),
(262, 'litespeed.conf.object-life', '360', 'auto'),
(263, 'litespeed.conf.object-persistent', '1', 'auto'),
(264, 'litespeed.conf.object-admin', '1', 'auto'),
(265, 'litespeed.conf.object-transients', '1', 'auto'),
(266, 'litespeed.conf.object-db_id', '0', 'auto'),
(267, 'litespeed.conf.object-user', '', 'auto'),
(268, 'litespeed.conf.object-pswd', '', 'auto'),
(269, 'litespeed.conf.object-global_groups', '[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]', 'auto'),
(270, 'litespeed.conf.object-non_persistent_groups', '[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]', 'auto'),
(271, 'litespeed.conf.discuss-avatar_cache', '', 'auto'),
(272, 'litespeed.conf.discuss-avatar_cron', '', 'auto'),
(273, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'auto'),
(274, 'litespeed.conf.optm-localize', '', 'auto'),
(275, 'litespeed.conf.optm-localize_domains', '[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]', 'auto'),
(276, 'litespeed.conf.media-lazy', '', 'auto'),
(277, 'litespeed.conf.media-lazy_placeholder', '', 'auto'),
(278, 'litespeed.conf.media-placeholder_resp', '', 'auto'),
(279, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'auto'),
(280, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>', 'auto'),
(281, 'litespeed.conf.media-lqip', '', 'auto'),
(282, 'litespeed.conf.media-lqip_qual', '4', 'auto'),
(283, 'litespeed.conf.media-lqip_min_w', '150', 'auto'),
(284, 'litespeed.conf.media-lqip_min_h', '150', 'auto'),
(285, 'litespeed.conf.media-placeholder_resp_async', '1', 'auto'),
(286, 'litespeed.conf.media-iframe_lazy', '', 'auto'),
(287, 'litespeed.conf.media-add_missing_sizes', '', 'auto'),
(288, 'litespeed.conf.media-lazy_exc', '[]', 'auto'),
(289, 'litespeed.conf.media-lazy_cls_exc', '[\"wmu-preview-img\"]', 'auto'),
(290, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'auto'),
(291, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'auto'),
(292, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'auto'),
(293, 'litespeed.conf.media-lazy_uri_exc', '[]', 'auto'),
(294, 'litespeed.conf.media-lqip_exc', '[]', 'auto'),
(295, 'litespeed.conf.media-vpi', '', 'auto'),
(296, 'litespeed.conf.media-vpi_cron', '', 'auto'),
(297, 'litespeed.conf.img_optm-auto', '', 'auto'),
(298, 'litespeed.conf.img_optm-ori', '1', 'auto'),
(299, 'litespeed.conf.img_optm-rm_bkup', '', 'auto'),
(300, 'litespeed.conf.img_optm-webp', '', 'auto'),
(301, 'litespeed.conf.img_optm-lossless', '', 'auto'),
(302, 'litespeed.conf.img_optm-exif', '1', 'auto'),
(303, 'litespeed.conf.img_optm-webp_attr', '[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]', 'auto'),
(304, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'auto'),
(305, 'litespeed.conf.img_optm-jpg_quality', '82', 'auto'),
(306, 'litespeed.conf.crawler', '', 'auto'),
(307, 'litespeed.conf.crawler-crawl_interval', '302400', 'auto'),
(308, 'litespeed.conf.crawler-load_limit', '1', 'auto'),
(309, 'litespeed.conf.crawler-sitemap', '', 'auto'),
(310, 'litespeed.conf.crawler-roles', '[]', 'auto'),
(311, 'litespeed.conf.crawler-cookies', '[]', 'auto'),
(312, 'litespeed.conf.misc-heartbeat_front', '', 'auto'),
(313, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'auto'),
(314, 'litespeed.conf.misc-heartbeat_back', '', 'auto'),
(315, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'auto'),
(316, 'litespeed.conf.misc-heartbeat_editor', '', 'auto'),
(317, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'auto'),
(318, 'litespeed.conf.cdn', '', 'auto'),
(319, 'litespeed.conf.cdn-ori', '[]', 'auto'),
(320, 'litespeed.conf.cdn-ori_dir', '[\"wp-content\",\"wp-includes\"]', 'auto'),
(321, 'litespeed.conf.cdn-exc', '[]', 'auto'),
(322, 'litespeed.conf.cdn-quic', '', 'auto'),
(323, 'litespeed.conf.cdn-cloudflare', '', 'auto'),
(324, 'litespeed.conf.cdn-cloudflare_email', '', 'auto'),
(325, 'litespeed.conf.cdn-cloudflare_key', '', 'auto'),
(326, 'litespeed.conf.cdn-cloudflare_name', '', 'auto'),
(327, 'litespeed.conf.cdn-cloudflare_zone', '', 'auto'),
(328, 'litespeed.conf.cdn-cloudflare_clear', '', 'auto'),
(329, 'litespeed.conf.cdn-mapping', '[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]', 'auto'),
(330, 'litespeed.conf.cdn-attr', '[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]', 'auto'),
(331, 'litespeed.conf.qc-nameservers', '', 'auto'),
(332, 'litespeed.conf.qc-cname', '', 'auto'),
(333, 'litespeed.cloud._summary', '{\"curr_request.ver_check\":0,\"last_request.ver_check\":1753131673,\"news.utime\":1753222231,\"curr_request.news\":0,\"last_request.news\":1753222231,\"curr_request.d\\/dash\":0,\"mini_html\":{\"news_dash_guest\":\"\",\"ttl.news_dash_guest\":1753374819,\"promo_mini\":\"\",\"ttl.promo_mini\":1753317219},\"last_request.d\\/dash\":1753230819}', 'auto'),
(334, 'hostinger_builder_type', 'blank', 'off'),
(335, 'hostinger_website_id', 'fce803778369b136836fc3860e3102ab', 'off'),
(336, 'recently_activated', 'a:0:{}', 'off'),
(337, 'hostinger_created_at', '2025-07-21 21:00:50', 'off'),
(338, 'hostinger_reseller', 'hostinger.es', 'off'),
(339, 'litespeed.purge.queue', '-1', 'auto'),
(340, 'litespeed.purge.queue2', '-1', 'auto'),
(345, 'hostinger_first_login_at', '2025-07-21 21:01:38', 'auto'),
(348, 'external_updates-hostinger-easy-onboarding', 'O:8:\"stdClass\":5:{s:9:\"lastCheck\";i:1753231821;s:14:\"checkedVersion\";s:6:\"2.0.83\";s:6:\"update\";O:8:\"stdClass\":11:{s:4:\"slug\";s:25:\"hostinger-easy-onboarding\";s:7:\"version\";s:6:\"2.0.84\";s:12:\"download_url\";s:89:\"https://wp-update.hostinger.io/?action=download&slug=hostinger-easy-onboarding&ver=2.0.84\";s:12:\"translations\";a:0:{}s:2:\"id\";i:0;s:8:\"homepage\";s:21:\"https://hostinger.com\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"8.0\";s:14:\"upgrade_notice\";N;s:5:\"icons\";a:0:{}s:8:\"filename\";s:55:\"hostinger-easy-onboarding/hostinger-easy-onboarding.php\";}s:11:\"updateClass\";s:50:\"YahnisElsts\\PluginUpdateChecker\\v5p6\\Plugin\\Update\";s:15:\"updateBaseClass\";s:13:\"Plugin\\Update\";}', 'off'),
(349, 'litespeed.gui.lscwp_whm_install', '-1', 'auto'),
(350, 'litespeed.gui.dismiss', '-1', 'auto'),
(351, 'litespeed.gui._summary', '{\"new_version\":1753736499,\"score\":1754341299}', 'auto'),
(352, 'litespeed.data.upgrading', '-1', 'auto'),
(353, 'litespeed.admin_display.messages', '[\"<div class=\\\"litespeed_icon notice notice-success is-dismissible\\\"><p>Purged all caches successfully.<\\/p><\\/div>\"]', 'auto'),
(358, 'litespeed.optimize.timestamp_purge_css', '1753231829', 'auto'),
(361, 'can_compress_scripts', '0', 'on'),
(362, 'recovery_keys', 'a:0:{}', 'off'),
(367, 'finished_updating_comment_type', '1', 'auto'),
(381, 'hostinger_amplitude_event_data', 'a:1:{s:10:\"2025-07-21\";a:2:{s:5:\"count\";i:1;s:10:\"last_reset\";i:0;}}', 'auto'),
(382, 'hostinger_amplitude_edit_count', '1', 'auto'),
(383, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1753146205;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(384, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"3ea998ee9e675433a74158dddc34164d\";s:6:\"blocks\";a:52:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}', 'on'),
(459, 'hostinger_easy_onboarding_steps', 'a:1:{s:13:\"website_setup\";a:2:{s:14:\"connect_domain\";b:1;s:10:\"google_kit\";b:1;}}', 'off'),
(464, 'current_theme', 'TherapyFlex Theme', 'auto'),
(465, 'theme_mods_therapyflex', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'on'),
(466, 'theme_switched', '', 'auto'),
(539, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":7,\"critical\":1}', 'on'),
(554, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(570, 'googlesitekit_db_version', '1.150.0', 'auto'),
(576, 'googlesitekit_active_modules', 'a:5:{i:0;s:18:\"pagespeed-insights\";i:1;s:11:\"analytics-4\";i:2;s:19:\"sign-in-with-google\";i:3;s:22:\"reader-revenue-manager\";i:4;s:10:\"tagmanager\";}', 'auto'),
(577, '_transient_googlesitekit_verification_meta_tags', 'a:0:{}', 'on'),
(581, 'googlesitekit_credentials', '3ff6149MmOBQNkugZE996FNVZHdlQ3c1QklmN21XczBxSTlCanBGbDh4VDZ4aE5kVVE5MzBRMWJlRkwwcnFSMHVWRE9ieldnd0RmU085QXAxTy9mVHgwQmNSQk5FQ0ZjdHNYNERLNDU0VFc5YXlnYXRQYUJpMm94K1BkTENLZDlDempFNTU0RCtRUzYrTzlML1d1ZC8rMC82VS80ZnRNN25sWWdreWxYY2xvQ2dFMWY3ZGpKWnJMc2N6THp6YXBwZ2JXMUFnTHZTUXZoeW1HWlhIcFVXVG1jb1RRQ1U4b01XNjFFTXpNelR5WXNHSFNpL0oyN3VrN21wQzcwOE8zTm9OK21KeXRGYUUvYXdsYnhmRStIK0VuNkhjYmFLbEQvMWEzWUJvMEJzOFlvYVF3Q2pxc093Vmo3Rm5GQ204UGdrck41L2xncw==', 'auto'),
(582, 'googlesitekitpersistent_remote_features', 'a:29:{s:18:\"adBlockerDetection\";a:1:{s:7:\"enabled\";b:1;}s:9:\"adsModule\";a:1:{s:7:\"enabled\";b:1;}s:6:\"adsPax\";a:1:{s:7:\"enabled\";b:1;}s:14:\"adsenseSetupV2\";a:1:{s:7:\"enabled\";b:1;}s:20:\"audienceSegmentation\";a:1:{s:7:\"enabled\";b:1;}s:15:\"conversionInfra\";a:1:{s:7:\"enabled\";b:1;}s:19:\"conversionReporting\";a:1:{s:7:\"enabled\";b:1;}s:16:\"dashboardSharing\";a:1:{s:7:\"enabled\";b:1;}s:19:\"enhancedMeasurement\";a:1:{s:7:\"enabled\";b:1;}s:19:\"ga4ActivationBanner\";a:1:{s:7:\"enabled\";b:0;}s:12:\"ga4Reporting\";a:1:{s:7:\"enabled\";b:1;}s:8:\"ga4setup\";a:1:{s:7:\"enabled\";b:1;}s:16:\"googleTagGateway\";a:1:{s:7:\"enabled\";b:0;}s:10:\"gteSupport\";a:1:{s:7:\"enabled\";b:1;}s:14:\"helpVisibility\";a:1:{s:7:\"enabled\";b:1;}s:13:\"ideaHubModule\";a:1:{s:7:\"enabled\";b:0;}s:10:\"keyMetrics\";a:1:{s:7:\"enabled\";b:1;}s:23:\"proactiveUserEngagement\";a:1:{s:7:\"enabled\";b:0;}s:9:\"rrmModule\";a:1:{s:7:\"enabled\";b:1;}s:14:\"serviceSetupV2\";a:1:{s:7:\"enabled\";b:1;}s:16:\"setupFlowRefresh\";a:1:{s:7:\"enabled\";b:0;}s:22:\"signInWithGoogleModule\";a:1:{s:7:\"enabled\";b:1;}s:16:\"unifiedDashboard\";a:1:{s:7:\"enabled\";b:1;}s:12:\"userFeedback\";a:1:{s:7:\"enabled\";b:1;}s:17:\"widgets.dashboard\";a:1:{s:7:\"enabled\";b:1;}s:21:\"widgets.pageDashboard\";a:1:{s:7:\"enabled\";b:1;}s:16:\"yoastIntegration\";a:1:{s:7:\"enabled\";b:0;}s:14:\"zeroDataStates\";a:1:{s:7:\"enabled\";b:1;}s:15:\"last_updated_at\";i:1777827739;}', 'auto'),
(583, 'googlesitekit_connected_proxy_url', 'https://therapyflex.pe/', 'auto'),
(584, 'googlesitekit_search-console_settings', 'a:2:{s:10:\"propertyID\";s:23:\"https://therapyflex.pe/\";s:7:\"ownerID\";i:1;}', 'auto'),
(585, 'googlesitekit_owner_id', '1', 'auto'),
(597, 'googlesitekit_conversion_tracking', 'a:1:{s:7:\"enabled\";b:1;}', 'auto'),
(599, 'googlesitekit_analytics-4_settings', 'a:23:{s:7:\"ownerID\";i:1;s:9:\"accountID\";s:9:\"362391072\";s:15:\"adsConversionID\";s:0:\"\";s:10:\"propertyID\";s:9:\"497847731\";s:15:\"webDataStreamID\";s:11:\"11522517310\";s:13:\"measurementID\";s:12:\"G-VHL9PWD9R6\";s:16:\"trackingDisabled\";a:1:{i:0;s:13:\"loggedinUsers\";}s:10:\"useSnippet\";b:1;s:11:\"googleTagID\";s:11:\"GT-K8DZGMDX\";s:18:\"googleTagAccountID\";s:10:\"6305079754\";s:20:\"googleTagContainerID\";s:9:\"225564201\";s:32:\"googleTagContainerDestinationIDs\";a:1:{i:0;s:12:\"G-VHL9PWD9R6\";}s:23:\"googleTagLastSyncedAtMs\";i:1753316378915;s:25:\"availableCustomDimensions\";N;s:18:\"propertyCreateTime\";i:1753222904000;s:13:\"adSenseLinked\";b:0;s:25:\"adSenseLinkedLastSyncedAt\";i:0;s:27:\"adsConversionIDMigratedAtMs\";i:0;s:9:\"adsLinked\";b:0;s:21:\"adsLinkedLastSyncedAt\";i:0;s:14:\"detectedEvents\";a:0:{}s:31:\"newConversionEventsLastUpdateAt\";i:0;s:32:\"lostConversionEventsLastUpdateAt\";i:0;}', 'auto'),
(600, '_transient_googlesitekit_conversion_reporting_skip_new_badge_events', '1', 'on'),
(608, 'googlesitekit_sign-in-with-google_settings', 'a:6:{s:8:\"clientID\";s:73:\"1035695874786-kppp555e2kve1d6soc27evvu8pgs2nlk.apps.googleusercontent.com\";s:4:\"text\";s:11:\"signin_with\";s:5:\"theme\";s:7:\"outline\";s:5:\"shape\";s:11:\"rectangular\";s:13:\"oneTapEnabled\";b:0;s:16:\"oneTapOnAllPages\";b:0;}', 'auto'),
(648, 'googlesitekit_analytics-4_audience_settings', 'a:3:{s:18:\"availableAudiences\";a:2:{i:0;a:5:{s:4:\"name\";s:42:\"properties/497847731/audiences/11522602896\";s:11:\"displayName\";s:12:\"All visitors\";s:11:\"description\";s:9:\"All users\";s:12:\"audienceType\";s:16:\"DEFAULT_AUDIENCE\";s:12:\"audienceSlug\";s:9:\"all-users\";}i:1;a:5:{s:4:\"name\";s:42:\"properties/497847731/audiences/11522602897\";s:11:\"displayName\";s:10:\"Purchasers\";s:11:\"description\";s:45:\"Users who have purchased in the last 540 days\";s:12:\"audienceType\";s:16:\"DEFAULT_AUDIENCE\";s:12:\"audienceSlug\";s:10:\"purchasers\";}}s:30:\"availableAudiencesLastSyncedAt\";i:1753226211;s:36:\"audienceSegmentationSetupCompletedBy\";N;}', 'auto'),
(653, 'googlesitekit_consent_mode', 'a:2:{s:7:\"enabled\";b:0;s:7:\"regions\";a:32:{i:0;s:2:\"AT\";i:1;s:2:\"BE\";i:2;s:2:\"BG\";i:3;s:2:\"CH\";i:4;s:2:\"CY\";i:5;s:2:\"CZ\";i:6;s:2:\"DE\";i:7;s:2:\"DK\";i:8;s:2:\"EE\";i:9;s:2:\"ES\";i:10;s:2:\"FI\";i:11;s:2:\"FR\";i:12;s:2:\"GB\";i:13;s:2:\"GR\";i:14;s:2:\"HR\";i:15;s:2:\"HU\";i:16;s:2:\"IE\";i:17;s:2:\"IS\";i:18;s:2:\"IT\";i:19;s:2:\"LI\";i:20;s:2:\"LT\";i:21;s:2:\"LU\";i:22;s:2:\"LV\";i:23;s:2:\"MT\";i:24;s:2:\"NL\";i:25;s:2:\"NO\";i:26;s:2:\"PL\";i:27;s:2:\"PT\";i:28;s:2:\"RO\";i:29;s:2:\"SE\";i:30;s:2:\"SI\";i:31;s:2:\"SK\";}}', 'auto'),
(658, 'category_children', 'a:0:{}', 'auto'),
(790, 'googlesitekit_tagmanager_settings', 'a:7:{s:7:\"ownerID\";i:1;s:9:\"accountID\";s:10:\"6305239875\";s:14:\"ampContainerID\";s:0:\"\";s:11:\"containerID\";s:12:\"GTM-MJXZ5BB7\";s:19:\"internalContainerID\";s:9:\"225657548\";s:22:\"internalAMPContainerID\";s:0:\"\";s:10:\"useSnippet\";b:0;}', 'auto'),
(1102, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1777827737;s:8:\"response\";a:3:{s:23:\"hostinger/hostinger.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/hostinger\";s:4:\"slug\";s:9:\"hostinger\";s:6:\"plugin\";s:23:\"hostinger/hostinger.php\";s:11:\"new_version\";s:6:\"3.0.66\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/hostinger/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/hostinger.3.0.66.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/hostinger/assets/icon.svg?rev=3097386\";s:3:\"svg\";s:54:\"https://ps.w.org/hostinger/assets/icon.svg?rev=3097386\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/hostinger/assets/banner-1544x500.png?rev=3097370\";s:2:\"1x\";s:64:\"https://ps.w.org/hostinger/assets/banner-772x250.png?rev=3097370\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.9.4\";s:12:\"requires_php\";s:3:\"8.1\";s:16:\"requires_plugins\";a:0:{}}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"7.8.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.7.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.9.4\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:35:\"google-site-kit/google-site-kit.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/google-site-kit\";s:4:\"slug\";s:15:\"google-site-kit\";s:6:\"plugin\";s:35:\"google-site-kit/google-site-kit.php\";s:11:\"new_version\";s:7:\"1.177.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/google-site-kit/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/google-site-kit.1.177.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/google-site-kit/assets/icon-256x256.png?rev=3141863\";s:2:\"1x\";s:68:\"https://ps.w.org/google-site-kit/assets/icon-128x128.png?rev=3141863\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/google-site-kit/assets/banner-1544x500.png?rev=3141863\";s:2:\"1x\";s:70:\"https://ps.w.org/google-site-kit/assets/banner-772x250.png?rev=3141863\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:3:\"7.0\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:4:{s:55:\"hostinger-easy-onboarding/hostinger-easy-onboarding.php\";s:6:\"2.0.83\";s:23:\"hostinger/hostinger.php\";s:6:\"3.0.42\";s:35:\"litespeed-cache/litespeed-cache.php\";s:3:\"7.2\";s:35:\"google-site-kit/google-site-kit.php\";s:7:\"1.157.0\";}}', 'off'),
(1113, 'tipo_servicio_children', 'a:0:{}', 'auto'),
(1356, '_site_transient_timeout_wp_theme_files_patterns-e3e983dc5c04f75c851c7a419e263dc6', '1777829526', 'off'),
(1357, '_site_transient_wp_theme_files_patterns-e3e983dc5c04f75c851c7a419e263dc6', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(1359, '_site_transient_timeout_theme_roots', '1777829537', 'off'),
(1360, '_site_transient_theme_roots', 'a:4:{s:11:\"therapyflex\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(1361, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1778432541', 'off'),
(1362, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(1363, '_site_transient_timeout_available_translations', '1777838551', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1364, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:6:\"6.0.11\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0.11/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.8\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-10 08:09:09\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.8\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.8/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2024-12-26 00:37:42\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.28/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-06-26 09:35:39\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-01 14:03:28\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.9/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-19 10:33:50\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-09 08:25:54\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-11 16:48:51\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-25 10:23:08\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-06-05 10:10:20\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-29 01:31:30\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-29 01:33:14\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.8.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-28 10:25:03\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-28 10:25:24\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.8.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.9/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-21 14:54:13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-05-22 11:56:25\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-30 21:52:12\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-19 23:02:24\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-25 13:50:40\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-29 13:22:09\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-19 08:40:47\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-05-26 16:45:13\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-28 22:23:40\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-14 15:46:25\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-29 19:09:09\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-30 13:57:29\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.8\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.9/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.13\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.13/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.19\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.19/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-11 05:24:36\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.23\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.23/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.7/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-05 12:26:55\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-02-14 17:29:08\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-03 12:49:52\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-05-12 09:41:09\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-29 15:04:36\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-25 05:20:17\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.8\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.8/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2025-12-20 19:08:53\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2025-10-21 16:35:04\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.9/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-16 11:10:04\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-29 04:27:18\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.34\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.34/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.9/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.8\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.8/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-31 12:41:06\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.9/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-06-09 13:56:03\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-16 04:17:52\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.28/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-11 21:28:29\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-22 12:19:14\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.28/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-04-14 08:02:58\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.9/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.23\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.23/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-22 16:17:50\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-15 15:01:44\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-22 23:30:14\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-17 05:00:42\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"6.7.5\";s:7:\"updated\";s:19:\"2026-04-22 10:04:26\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.7.5/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-27 20:51:17\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-15 19:11:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:6:\"6.0.11\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.0.11/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-24 16:32:35\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.8\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.8/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-26 17:30:52\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.18\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-30 18:16:57\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-23 09:31:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-29 06:56:09\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-31 11:10:17\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.8.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-15 07:18:24\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-20 12:00:49\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.35\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.35/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-27 23:38:30\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-30 11:47:36\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.8\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.8/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-27 23:48:59\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.8.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-24 09:05:42\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-24 17:30:30\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.19\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.19/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-29 04:32:58\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-04-24 16:58:02\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.8.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-14 09:44:53\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-04-18 09:38:51\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-08 20:51:20\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-08-10 20:44:58\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-06-28 12:50:48\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.13\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.13/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-08 16:09:09\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-04-16 23:11:08\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-29 21:46:36\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"6.8\";s:7:\"updated\";s:19:\"2025-04-18 21:10:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.19\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.19/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-09-01 09:12:13\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.8.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-16 04:41:52\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.9\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.9/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.8.2\";s:7:\"updated\";s:19:\"2025-07-29 06:55:14\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.8.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'off');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(4, 7, '_edit_lock', '1753580586:1'),
(5, 9, '_edit_lock', '1753764238:1'),
(6, 11, '_edit_lock', '1753764268:1'),
(7, 13, '_edit_lock', '1753933175:1'),
(8, 15, '_edit_lock', '1753764141:1'),
(9, 1, '_edit_lock', '1753765035:1'),
(10, 18, '_edit_lock', '1754890055:1'),
(11, 18, '_edit_last', '1'),
(12, 18, '_wp_page_template', 'template-servicio.php'),
(14, 21, '_edit_lock', '1754691965:1'),
(15, 23, '_edit_lock', '1754891383:1'),
(16, 25, '_edit_lock', '1754692566:1'),
(18, 21, '_edit_last', '1'),
(19, 21, '_wp_page_template', 'template-servicio.php'),
(20, 23, '_edit_last', '1'),
(21, 23, '_wp_page_template', 'template-servicio.php'),
(22, 25, '_edit_last', '1'),
(23, 25, '_wp_page_template', 'template-servicio.php'),
(27, 39, '_wp_attached_file', '2025/07/masajes.jpg'),
(28, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:4:\"file\";s:19:\"2025/07/masajes.jpg\";s:8:\"filesize\";i:428692;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 21, '_thumbnail_id', '46'),
(31, 42, '_wp_attached_file', '2025/07/fisico.png'),
(32, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1025;s:6:\"height\";i:683;s:4:\"file\";s:18:\"2025/07/fisico.png\";s:8:\"filesize\";i:721560;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 23, '_thumbnail_id', '103'),
(34, 44, '_wp_attached_file', '2025/07/desgarro.png'),
(35, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:20:\"2025/07/desgarro.png\";s:8:\"filesize\";i:755338;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 25, '_thumbnail_id', '44'),
(37, 46, '_wp_attached_file', '2025/07/fisioterapia-general.png'),
(38, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:32:\"2025/07/fisioterapia-general.png\";s:8:\"filesize\";i:528310;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 63, '_edit_lock', '1754611040:1'),
(46, 69, '_edit_lock', '1754611096:1'),
(47, 70, '_edit_lock', '1754198927:1'),
(48, 75, '_edit_lock', '1754611002:1'),
(49, 76, '_edit_lock', '1754610490:1'),
(50, 76, '_edit_last', '1'),
(51, 77, '_edit_lock', '1754610302:1'),
(52, 78, '_edit_lock', '1754610319:1'),
(53, 79, '_edit_lock', '1754612989:1'),
(54, 75, '_edit_last', '1'),
(55, 75, '_wp_old_date', '2025-08-07'),
(56, 75, '_wp_old_date', '2025-08-02'),
(57, 75, '_wp_old_date', '2025-08-06'),
(58, 63, '_edit_last', '1'),
(59, 63, '_wp_old_date', '2025-08-03'),
(60, 69, '_edit_last', '1'),
(61, 69, '_wp_old_date', '2025-08-03'),
(62, 80, '_edit_lock', '1754613091:1'),
(63, 81, '_edit_lock', '1754613110:1'),
(64, 82, '_edit_lock', '1754613132:1'),
(65, 83, '_edit_lock', '1754613202:1'),
(66, 85, '_edit_lock', '1754613361:1'),
(67, 86, '_edit_lock', '1754613377:1'),
(68, 87, '_edit_lock', '1754613395:1'),
(69, 88, '_edit_lock', '1754613414:1'),
(70, 89, '_edit_lock', '1754613434:1'),
(71, 90, '_edit_lock', '1754613445:1'),
(72, 91, '_edit_lock', '1754613460:1'),
(73, 92, '_edit_lock', '1754613599:1'),
(75, 96, '_edit_lock', '1754614052:1'),
(76, 97, '_edit_lock', '1754614065:1'),
(77, 98, '_edit_lock', '1754614079:1'),
(78, 99, '_edit_lock', '1754614091:1'),
(79, 100, 'footnotes', ''),
(81, 102, '_wp_attached_file', '2025/08/fisioterapia-pediatrica.png'),
(82, 102, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:35:\"2025/08/fisioterapia-pediatrica.png\";s:8:\"filesize\";i:699544;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 18, '_thumbnail_id', '102'),
(84, 103, '_wp_attached_file', '2025/08/fisioterapia-geriatrica.png'),
(85, 103, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:35:\"2025/08/fisioterapia-geriatrica.png\";s:8:\"filesize\";i:807891;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 103, '_wp_attachment_image_alt', 'fisioterapia geriatrica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-07-21 21:00:43', '2025-07-21 21:00:43', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-07-21 21:00:43', '2025-07-21 21:00:43', '', 0, 'https://therapyflex.pe/?p=1', 0, 'post', '', 1),
(3, 1, '2025-07-21 21:00:43', '2025-07-21 21:00:43', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://therapyflex.pe.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-07-21 21:00:43', '2025-07-21 21:00:43', '', 0, 'https://therapyflex.pe/?page_id=3', 0, 'page', '', 0),
(4, 1, '2025-07-21 21:14:05', '2025-07-21 21:14:05', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-07-21 21:14:05', '2025-07-21 21:14:05', '', 0, 'https://darkslategrey-yak-613683.hostingersite.com/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2025-07-27 01:42:45', '2025-07-27 01:42:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-07-27 01:42:45', '2025-07-27 01:42:45', '', 0, 'http://localhost/therapyflex/?page_id=7', 0, 'page', '', 0),
(8, 1, '2025-07-27 01:42:45', '2025-07-27 01:42:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-07-27 01:42:45', '2025-07-27 01:42:45', '', 7, 'http://localhost/therapyflex/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-07-29 04:43:56', '2025-07-29 04:43:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2025-07-29 04:43:56', '2025-07-29 04:43:56', '', 0, 'http://localhost/therapyflex/?page_id=9', 0, 'page', '', 0),
(10, 1, '2025-07-29 04:43:56', '2025-07-29 04:43:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2025-07-29 04:43:56', '2025-07-29 04:43:56', '', 9, 'http://localhost/therapyflex/?p=10', 0, 'revision', '', 0),
(11, 1, '2025-07-29 04:44:08', '2025-07-29 04:44:08', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2025-07-29 04:44:08', '2025-07-29 04:44:08', '', 0, 'http://localhost/therapyflex/?page_id=11', 0, 'page', '', 0),
(12, 1, '2025-07-29 04:44:08', '2025-07-29 04:44:08', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2025-07-29 04:44:08', '2025-07-29 04:44:08', '', 11, 'http://localhost/therapyflex/?p=12', 0, 'revision', '', 0),
(13, 1, '2025-07-29 04:44:36', '2025-07-29 04:44:36', '<!-- wp:paragraph -->\n<p>contenido servicios </p>\n<!-- /wp:paragraph -->', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2025-07-29 04:56:28', '2025-07-29 04:56:28', '', 0, 'http://localhost/therapyflex/?page_id=13', 0, 'page', '', 0),
(14, 1, '2025-07-29 04:44:36', '2025-07-29 04:44:36', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2025-07-29 04:44:36', '2025-07-29 04:44:36', '', 13, 'http://localhost/therapyflex/?p=14', 0, 'revision', '', 0),
(15, 1, '2025-07-29 04:44:44', '2025-07-29 04:44:44', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2025-07-29 04:44:44', '2025-07-29 04:44:44', '', 0, 'http://localhost/therapyflex/?page_id=15', 0, 'page', '', 0),
(16, 1, '2025-07-29 04:44:44', '2025-07-29 04:44:44', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-07-29 04:44:44', '2025-07-29 04:44:44', '', 15, 'http://localhost/therapyflex/?p=16', 0, 'revision', '', 0),
(17, 1, '2025-07-29 04:56:11', '2025-07-29 04:56:11', '<!-- wp:paragraph -->\n<p>contenido servicios </p>\n<!-- /wp:paragraph -->', 'Servicios', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2025-07-29 04:56:11', '2025-07-29 04:56:11', '', 13, 'http://localhost/therapyflex/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-07-29 05:00:40', '2025-07-29 05:00:40', '<!-- wp:paragraph -->\n<p>La&nbsp;<strong>fisioterapia pediátrica</strong>&nbsp;es la disciplina que se encarga de asesorar, tratar y cuidar de aquellos recién nacidos, niños y adolescentes que presentan una&nbsp;<strong>alteración general en su desarrollo o desórdenes en el movimiento,</strong>&nbsp;causado por enfermedades tanto congénitas como adquiridas. Se puede decir que es el profesional especializado en trabajar el área sensorio-motriz de los más pequeños.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>¿A quién puede ayudar la fisioterapia pediátrica?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Un fisioterapeuta pediátrico puede atender las necesidades de una amplia población infantil (0-18 años), con alteraciones en el desarrollo motor ocasionadas por enfermedades o afecciones de origen: Neuromuscular, Neurológico, Musculo-esquelético, Respiratorio, Genético</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Pediátrica', 'Tratamientos y cuidados de aquellos bebés, niños/as y adolescentes que presentan un retraso general en su desarrollo.', 'publish', 'closed', 'closed', '', 'fisioterapia-pediatrica', '', '', '2025-08-11 05:27:20', '2025-08-11 05:27:20', '', 13, 'http://localhost/therapyflex/?page_id=18', 1, 'page', '', 0),
(19, 1, '2025-07-29 05:00:40', '2025-07-29 05:00:40', '<!-- wp:paragraph -->\n<p>contenido masajes </p>\n<!-- /wp:paragraph -->', 'Masajes', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 05:00:40', '2025-07-29 05:00:40', '', 18, 'http://localhost/therapyflex/?p=19', 0, 'revision', '', 0),
(21, 1, '2025-07-29 05:02:01', '2025-07-29 05:02:01', '<!-- wp:paragraph -->\n<p>La terapia física es la rama de la medicina que&nbsp;<strong>realiza tratamiento a las afecciones físicas de nuestro cuerpo a través del ejercicio</strong>&nbsp;o diversas prácticas como la&nbsp;<strong>aplicación de frío</strong>,&nbsp;<strong>calor</strong>, agua, electricidad y masajes en esas áreas afectadas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Por otro lado, la fisioterapia también se encargará de&nbsp;<strong>diagnosticar aquellas enfermedades que afectan la capacidad de moverse o los músculos</strong>. Para ello, utiliza pruebas eléctricas y manuales que proporcionan una visión general y precisa de la fuerza muscular, el movimiento de las articulaciones y el desarrollo funcional, entre otros problemas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Básicamente, la terapia física actuará en aquellos&nbsp;<strong>casos en que las funciones que facilitan los movimientos corporales se vean afectadas</strong>, ya sea por el sufrimiento de una enfermedad o por haber sufrido un accidente que de repente le causó resentimiento. Entonces, su misión principal será restaurar su funcionamiento satisfactorio para que la persona pueda llevar a cabo su vida normalmente.</p>\n<!-- /wp:paragraph -->', 'Terapia física y rehabilitación', 'Realizamos tratamientos a pacientes que sufren dolores físicos o lesiones deportivas, neurológicas y traumatológicas', 'publish', 'closed', 'closed', '', 'terapia-fisica-y-rehabilitacion', '', '', '2025-08-03 03:59:29', '2025-08-03 03:59:29', '', 13, 'http://localhost/therapyflex/?page_id=21', 0, 'page', '', 0),
(22, 1, '2025-07-29 05:02:01', '2025-07-29 05:02:01', '', 'Terapia física y rehabilitación', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-07-29 05:02:01', '2025-07-29 05:02:01', '', 21, 'http://localhost/therapyflex/?p=22', 0, 'revision', '', 0),
(23, 1, '2025-07-29 05:02:17', '2025-07-29 05:02:17', '<!-- wp:paragraph -->\n<p>La <strong>fisioterapia geriátrica</strong> es una de las especialidades de la fisioterapia enfocada en la atención, prevención y rehabilitación de las <strong>personas adultas mayores</strong>. A través de esta disciplina, se busca mantener y mejorar la movilidad, la funcionalidad y la calidad de vida en esta etapa, promoviendo la independencia y reduciendo el riesgo de caídas y complicaciones derivadas del envejecimiento.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Esta especialidad también ofrece <strong>intervenciones personalizadas</strong> para tratar dolencias musculoesqueléticas, neurológicas y respiratorias comunes en la tercera edad, así como brindar <strong>educación y pautas seguras</strong> para una vida activa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Así, la fisioterapia geriátrica aborda las <strong>limitaciones físicas, el dolor y la pérdida de autonomía</strong>, ayudando a los adultos mayores a conservar su bienestar y participar activamente en su entorno.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Fisioterapia Geriátrica', 'Evaluación, tratamiento y acompañamiento para adultos mayores con alteraciones del equilibrio, movilidad o dolor crónico, promoviendo su independencia y bienestar.', 'publish', 'closed', 'closed', '', 'fisioterapia-geriatrica', '', '', '2025-08-11 05:28:01', '2025-08-11 05:28:01', '', 13, 'http://localhost/therapyflex/?page_id=23', 2, 'page', '', 0),
(24, 1, '2025-07-29 05:02:17', '2025-07-29 05:02:17', '', 'Acondicionamiento físico', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-29 05:02:17', '2025-07-29 05:02:17', '', 23, 'http://localhost/therapyflex/?p=24', 0, 'revision', '', 0),
(25, 1, '2025-07-29 05:02:29', '2025-07-29 05:02:29', '<!-- wp:paragraph -->\n<p>La&nbsp;<strong>fisioterapia deportiva</strong>&nbsp;es una de las muchas&nbsp;<strong>especialidades de la fisioterapia</strong>&nbsp;a través de la cual se busca la rehabilitación, la atención y la prevención de deportistas amateurs y profesionales, así como mostrar unas correctas directrices a aquellos pacientes que practican&nbsp;<strong>actividad física</strong>&nbsp;y quieren hacerlo de forma segura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Así, la fisioterapia deportiva abordará las&nbsp;<strong>lesiones</strong>&nbsp;del aparato locomotor de los deportistas.</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Deportiva', 'Especialistas en tratar lesiones o traumatismos deportivas, desde nivel iniciación hasta profesional o de élite.', 'publish', 'closed', 'closed', '', 'fisioterapia-deportiva', '', '', '2025-08-08 00:39:11', '2025-08-08 00:39:11', '', 13, 'http://localhost/therapyflex/?page_id=25', 3, 'page', '', 0),
(26, 1, '2025-07-29 05:02:29', '2025-07-29 05:02:29', '', 'Lesiones deportivas', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-07-29 05:02:29', '2025-07-29 05:02:29', '', 25, 'http://localhost/therapyflex/?p=26', 0, 'revision', '', 0),
(28, 1, '2025-07-29 06:11:24', '2025-07-29 06:11:24', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Masajes', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 06:11:24', '2025-07-29 06:11:24', '', 18, 'http://localhost/therapyflex/?p=28', 0, 'revision', '', 0),
(29, 1, '2025-07-29 06:12:54', '2025-07-29 06:12:54', '<!-- wp:paragraph -->\n<p>contenido masajes</p>\n<!-- /wp:paragraph -->', 'Masajes', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 06:12:54', '2025-07-29 06:12:54', '', 18, 'http://localhost/therapyflex/?p=29', 0, 'revision', '', 0),
(31, 1, '2025-07-29 06:54:42', '2025-07-29 06:54:42', '<!-- wp:paragraph -->\n<p>contenido masajes 123</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Masajes', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 06:54:42', '2025-07-29 06:54:42', '', 18, 'http://localhost/therapyflex/?p=31', 0, 'revision', '', 0),
(33, 1, '2025-07-29 07:00:54', '2025-07-29 07:00:54', '<!-- wp:paragraph -->\n<p>contenido lesiones deportivas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Lesiones deportivas', 'extracto lesiones deportivas', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-07-29 07:00:54', '2025-07-29 07:00:54', '', 25, 'http://localhost/therapyflex/?p=33', 0, 'revision', '', 0),
(34, 1, '2025-07-29 07:01:46', '2025-07-29 07:01:46', '<!-- wp:paragraph -->\n<p>contenido masajes 123</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Masajes', 'extracto masajes', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 07:01:46', '2025-07-29 07:01:46', '', 18, 'http://localhost/therapyflex/?p=34', 0, 'revision', '', 0),
(35, 1, '2025-07-29 07:01:51', '2025-07-29 07:01:51', '<!-- wp:paragraph -->\n<p>contenido masajes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Masajes', 'extracto masajes', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 07:01:51', '2025-07-29 07:01:51', '', 18, 'http://localhost/therapyflex/?p=35', 0, 'revision', '', 0),
(36, 1, '2025-07-29 07:03:08', '2025-07-29 07:03:08', '', 'Terapia física y rehabilitación', 'resumen terapia', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-07-29 07:03:08', '2025-07-29 07:03:08', '', 21, 'http://localhost/therapyflex/?p=36', 0, 'revision', '', 0),
(37, 1, '2025-07-29 07:03:22', '2025-07-29 07:03:22', '', 'Acondicionamiento físico', 'resumen acondicionamiento', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-29 07:03:22', '2025-07-29 07:03:22', '', 23, 'http://localhost/therapyflex/?p=37', 0, 'revision', '', 0),
(39, 1, '2025-07-29 07:16:35', '2025-07-29 07:16:35', '', 'masajes', '', 'inherit', 'open', 'closed', '', 'masajes-2', '', '', '2025-07-29 07:16:35', '2025-07-29 07:16:35', '', 21, 'http://localhost/therapyflex/wp-content/uploads/2025/07/masajes.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2025-07-29 07:16:46', '2025-07-29 07:16:46', '<!-- wp:image {\"id\":39,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/masajes.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->', 'Terapia física y rehabilitación', 'resumen terapia', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-07-29 07:16:46', '2025-07-29 07:16:46', '', 21, 'http://localhost/therapyflex/?p=40', 0, 'revision', '', 0),
(41, 1, '2025-07-29 07:17:02', '2025-07-29 07:17:02', '<!-- wp:paragraph -->\n<p>contenido masajes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":39,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/masajes.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->', 'Masajes', 'extracto masajes', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 07:17:02', '2025-07-29 07:17:02', '', 18, 'http://localhost/therapyflex/?p=41', 0, 'revision', '', 0),
(42, 1, '2025-07-29 07:24:16', '2025-07-29 07:24:16', '', 'fisico', '', 'inherit', 'open', 'closed', '', 'fisico', '', '', '2025-07-29 07:24:16', '2025-07-29 07:24:16', '', 23, 'http://localhost/therapyflex/wp-content/uploads/2025/07/fisico.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2025-07-29 07:24:45', '2025-07-29 07:24:45', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisico.png\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->', 'Acondicionamiento físico', 'resumen acondicionamiento', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-29 07:24:45', '2025-07-29 07:24:45', '', 23, 'http://localhost/therapyflex/?p=43', 0, 'revision', '', 0),
(44, 1, '2025-07-29 07:25:11', '2025-07-29 07:25:11', '', 'desgarro', '', 'inherit', 'open', 'closed', '', 'desgarro', '', '', '2025-07-29 07:25:11', '2025-07-29 07:25:11', '', 25, 'http://localhost/therapyflex/wp-content/uploads/2025/07/desgarro.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2025-07-29 07:25:40', '2025-07-29 07:25:40', '<!-- wp:paragraph -->\n<p>contenido lesiones deportivas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/desgarro.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Lesiones deportivas', 'extracto lesiones deportivas', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-07-29 07:25:40', '2025-07-29 07:25:40', '', 25, 'http://localhost/therapyflex/?p=45', 0, 'revision', '', 0),
(46, 1, '2025-07-29 19:47:45', '2025-07-29 19:47:45', '', 'fisioterapia-general', '', 'inherit', 'open', 'closed', '', 'fisioterapia-general', '', '', '2025-07-29 19:47:45', '2025-07-29 19:47:45', '', 21, 'http://localhost/therapyflex/wp-content/uploads/2025/07/fisioterapia-general.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2025-07-29 19:48:08', '2025-07-29 19:48:08', '<!-- wp:image {\"id\":46,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisioterapia-general.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->', 'Terapia física y rehabilitación', 'resumen terapia', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-07-29 19:48:08', '2025-07-29 19:48:08', '', 21, 'http://localhost/therapyflex/?p=47', 0, 'revision', '', 0),
(48, 1, '2025-07-29 19:48:52', '2025-07-29 19:48:52', '<!-- wp:image {\"id\":46,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisioterapia-general.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->', 'Terapia física y rehabilitación', 'Rehabilitamos fracturas, luxaciones, ligamentos y otras lesiones.', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-07-29 19:48:52', '2025-07-29 19:48:52', '', 21, 'http://localhost/therapyflex/?p=48', 0, 'revision', '', 0),
(49, 1, '2025-07-29 19:49:16', '2025-07-29 19:49:16', '<!-- wp:paragraph -->\n<p>contenido masajes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":39,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/masajes.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->', 'Masajes', 'Descargas musculares, masajes relajantes, descontracturantes y muchas más.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-29 19:49:16', '2025-07-29 19:49:16', '', 18, 'http://localhost/therapyflex/?p=49', 0, 'revision', '', 0),
(50, 1, '2025-07-29 19:50:27', '2025-07-29 19:50:27', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisico.png\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->', 'Acondicionamiento físico', 'Resistencia, flexibilidad, potencia y preparación deportiva.', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-29 19:50:27', '2025-07-29 19:50:27', '', 23, 'http://localhost/therapyflex/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-07-29 19:50:39', '2025-07-29 19:50:39', '<!-- wp:paragraph -->\n<p>contenido lesiones deportivas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/desgarro.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Lesiones deportivas', 'Lesiones, esguinces, desgarros, luxaciones y lesiones generales.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-07-29 19:50:39', '2025-07-29 19:50:39', '', 25, 'http://localhost/therapyflex/?p=51', 0, 'revision', '', 0),
(53, 1, '2025-07-31 04:12:21', '2025-07-31 04:12:21', '<!-- wp:paragraph -->\n<p>contenido masajes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":39,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/masajes.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->', 'Masajes Terapéuticos', 'Descargas musculares, masajes relajantes, descontracturantes y muchas más.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-31 04:12:21', '2025-07-31 04:12:21', '', 18, 'http://localhost/therapyflex/?p=53', 0, 'revision', '', 0),
(54, 1, '2025-08-03 03:25:19', '2025-08-03 03:25:19', '<!-- wp:paragraph -->\n<p>contenido masajes</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":39,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/masajes.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->', 'Fisioterapia Pediátrica', 'Tratamientos y cuidados de aquellos bebés, niños/as y adolescentes que presentan un retraso general en su desarrollo.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-08-03 03:25:19', '2025-08-03 03:25:19', '', 18, 'http://localhost/therapyflex/?p=54', 0, 'revision', '', 0),
(56, 1, '2025-08-03 03:27:17', '2025-08-03 03:27:17', '<!-- wp:image {\"id\":46,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisioterapia-general.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->', 'Terapia física y rehabilitación', 'Realizamos tratamientos a pacientes que sufren dolores físicos o lesiones deportivas, neurológicas y traumatológicas', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-08-03 03:27:17', '2025-08-03 03:27:17', '', 21, 'http://localhost/therapyflex/?p=56', 0, 'revision', '', 0),
(57, 1, '2025-08-03 03:31:21', '2025-08-03 03:31:21', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisico.png\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->', 'Fisioterapia Geriátrica', 'Resistencia, flexibilidad, potencia y preparación deportiva.', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-08-03 03:31:21', '2025-08-03 03:31:21', '', 23, 'http://localhost/therapyflex/?p=57', 0, 'revision', '', 0),
(58, 1, '2025-08-03 03:31:44', '2025-08-03 03:31:44', '<!-- wp:paragraph -->\n<p>contenido lesiones deportivas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/desgarro.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Fisioterapia Deportiva', 'Lesiones, esguinces, desgarros, luxaciones y lesiones generales.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-08-03 03:31:44', '2025-08-03 03:31:44', '', 25, 'http://localhost/therapyflex/?p=58', 0, 'revision', '', 0),
(59, 1, '2025-08-03 03:40:06', '2025-08-03 03:40:06', '<!-- wp:paragraph -->\n<p>contenido lesiones deportivas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/desgarro.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Fisioterapia Deportiva', 'Especialistas en tratar lesiones o traumatismos deportivas, desde nivel iniciación hasta profesional o de élite.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-08-03 03:40:06', '2025-08-03 03:40:06', '', 25, 'http://localhost/therapyflex/?p=59', 0, 'revision', '', 0),
(60, 1, '2025-08-03 03:41:19', '2025-08-03 03:41:19', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisico.png\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->', 'Fisioterapia Geriátrica', 'Evaluación, tratamiento y acompañamiento para adultos mayores con alteraciones del equilibrio, movilidad o dolor crónico, promoviendo su independencia y bienestar.', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-08-03 03:41:19', '2025-08-03 03:41:19', '', 23, 'http://localhost/therapyflex/?p=60', 0, 'revision', '', 0),
(61, 1, '2025-08-03 03:54:37', '2025-08-03 03:54:37', '<!-- wp:paragraph -->\n<p>La terapia física es la rama de la medicina que&nbsp;<strong>realiza tratamiento a las afecciones físicas de nuestro cuerpo a través del ejercicio</strong>&nbsp;o diversas prácticas como la&nbsp;<strong>aplicación de frío</strong>,&nbsp;<strong>calor</strong>, agua, electricidad y masajes en esas áreas afectadas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Por otro lado, la fisioterapia también se encargará de&nbsp;<strong>diagnosticar aquellas enfermedades que afectan la capacidad de moverse o los músculos</strong>. Para ello, utiliza pruebas eléctricas y manuales que proporcionan una visión general y precisa de la fuerza muscular, el movimiento de las articulaciones y el desarrollo funcional, entre otros problemas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Básicamente, la terapia física actuará en aquellos&nbsp;<strong>casos en que las funciones que facilitan los movimientos corporales se vean afectadas</strong>, ya sea por el sufrimiento de una enfermedad o por haber sufrido un accidente que de repente le causó resentimiento. Entonces, su misión principal será restaurar su funcionamiento satisfactorio para que la persona pueda llevar a cabo su vida normalmente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":46,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/therapyflex/wp-content/uploads/2025/07/fisioterapia-general.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->', 'Terapia física y rehabilitación', 'Realizamos tratamientos a pacientes que sufren dolores físicos o lesiones deportivas, neurológicas y traumatológicas', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-08-03 03:54:37', '2025-08-03 03:54:37', '', 21, 'http://localhost/therapyflex/?p=61', 0, 'revision', '', 0),
(62, 1, '2025-08-03 03:59:29', '2025-08-03 03:59:29', '<!-- wp:paragraph -->\n<p>La terapia física es la rama de la medicina que&nbsp;<strong>realiza tratamiento a las afecciones físicas de nuestro cuerpo a través del ejercicio</strong>&nbsp;o diversas prácticas como la&nbsp;<strong>aplicación de frío</strong>,&nbsp;<strong>calor</strong>, agua, electricidad y masajes en esas áreas afectadas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Por otro lado, la fisioterapia también se encargará de&nbsp;<strong>diagnosticar aquellas enfermedades que afectan la capacidad de moverse o los músculos</strong>. Para ello, utiliza pruebas eléctricas y manuales que proporcionan una visión general y precisa de la fuerza muscular, el movimiento de las articulaciones y el desarrollo funcional, entre otros problemas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Básicamente, la terapia física actuará en aquellos&nbsp;<strong>casos en que las funciones que facilitan los movimientos corporales se vean afectadas</strong>, ya sea por el sufrimiento de una enfermedad o por haber sufrido un accidente que de repente le causó resentimiento. Entonces, su misión principal será restaurar su funcionamiento satisfactorio para que la persona pueda llevar a cabo su vida normalmente.</p>\n<!-- /wp:paragraph -->', 'Terapia física y rehabilitación', 'Realizamos tratamientos a pacientes que sufren dolores físicos o lesiones deportivas, neurológicas y traumatológicas', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-08-03 03:59:29', '2025-08-03 03:59:29', '', 21, 'http://localhost/therapyflex/?p=62', 0, 'revision', '', 0),
(63, 1, '2025-08-02 04:59:49', '2025-08-02 04:59:49', '<!-- wp:paragraph -->\n<p>contenido lumbalgia</p>\n<!-- /wp:paragraph -->', 'Lumbalgia', '', 'publish', 'closed', 'closed', '', 'lumbalgia', '', '', '2025-08-07 23:57:20', '2025-08-07 23:57:20', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=63', 0, 'dolencia', '', 0),
(69, 1, '2025-08-02 01:10:12', '2025-08-02 01:10:12', '', 'Cervicalgia', '', 'publish', 'closed', 'closed', '', 'cervicalgia', '', '', '2025-08-07 23:58:16', '2025-08-07 23:58:16', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=69', 0, 'dolencia', '', 0),
(70, 1, '2025-08-03 05:11:19', '2025-08-03 05:11:19', '<!-- wp:paragraph -->\n<p>contenido pie plano</p>\n<!-- /wp:paragraph -->', 'Pie Plano', '', 'publish', 'closed', 'closed', '', 'pie-plano', '', '', '2025-08-03 05:18:58', '2025-08-03 05:18:58', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=70', 0, 'dolencia', '', 0),
(71, 1, '2025-08-03 05:32:51', '2025-08-03 05:32:51', '<!-- wp:paragraph -->\n<p>contenido fisiatría pediatrica </p>\n<!-- /wp:paragraph -->', 'Fisioterapia Pediátrica', 'Tratamientos y cuidados de aquellos bebés, niños/as y adolescentes que presentan un retraso general en su desarrollo.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-08-03 05:32:51', '2025-08-03 05:32:51', '', 18, 'http://localhost/therapyflex/?p=71', 0, 'revision', '', 0),
(72, 1, '2025-08-03 05:33:15', '2025-08-03 05:33:15', '<!-- wp:paragraph -->\n<p>contenido fisioterapia geriatrica</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Geriátrica', 'Evaluación, tratamiento y acompañamiento para adultos mayores con alteraciones del equilibrio, movilidad o dolor crónico, promoviendo su independencia y bienestar.', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-08-03 05:33:15', '2025-08-03 05:33:15', '', 23, 'http://localhost/therapyflex/?p=72', 0, 'revision', '', 0),
(73, 1, '2025-08-03 05:33:52', '2025-08-03 05:33:52', '<!-- wp:paragraph -->\n<p>contenido fisioterapia deportiva</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Deportiva', 'Especialistas en tratar lesiones o traumatismos deportivas, desde nivel iniciación hasta profesional o de élite.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-08-03 05:33:52', '2025-08-03 05:33:52', '', 25, 'http://localhost/therapyflex/?p=73', 0, 'revision', '', 0),
(75, 1, '2025-08-01 23:42:37', '2025-08-01 23:42:37', '', 'Contractura Muscular', '', 'publish', 'closed', 'closed', '', 'contractura-muscular', '', '', '2025-08-07 23:56:41', '2025-08-07 23:56:41', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=75', 0, 'dolencia', '', 0),
(76, 1, '2025-08-07 23:44:16', '2025-08-07 23:44:16', '', 'Dorsalgia', '', 'publish', 'closed', 'closed', '', 'dorsalgia', '', '', '2025-08-07 23:44:42', '2025-08-07 23:44:42', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=76', 0, 'dolencia', '', 0),
(77, 1, '2025-08-07 23:45:00', '2025-08-07 23:45:00', '', 'Lumbociatalgia', '', 'publish', 'closed', 'closed', '', 'lumbociatalgia', '', '', '2025-08-07 23:45:00', '2025-08-07 23:45:00', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=77', 0, 'dolencia', '', 0),
(78, 1, '2025-08-07 23:45:15', '2025-08-07 23:45:15', '', 'Escoliosis', '', 'publish', 'closed', 'closed', '', 'escoliosis', '', '', '2025-08-07 23:45:15', '2025-08-07 23:45:15', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=78', 0, 'dolencia', '', 0),
(79, 1, '2025-08-07 23:45:42', '2025-08-07 23:45:42', '', 'Mialgia muscular', '', 'publish', 'closed', 'closed', '', 'mialgia-muscular', '', '', '2025-08-07 23:45:42', '2025-08-07 23:45:42', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=79', 0, 'dolencia', '', 0),
(80, 1, '2025-08-08 00:31:07', '2025-08-08 00:31:07', '', 'Hipotonia', '', 'publish', 'closed', 'closed', '', 'hipotonia', '', '', '2025-08-08 00:31:07', '2025-08-08 00:31:07', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=80', 0, 'dolencia', '', 0),
(81, 1, '2025-08-08 00:31:46', '2025-08-08 00:31:46', '', 'Displasia de Cadera', '', 'publish', 'closed', 'closed', '', 'displasia-de-cadera', '', '', '2025-08-08 00:31:46', '2025-08-08 00:31:46', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=81', 0, 'dolencia', '', 0),
(82, 1, '2025-08-08 00:31:57', '2025-08-08 00:31:57', '', 'Retraso Psicomotor', '', 'publish', 'closed', 'closed', '', 'retraso-psicomotor', '', '', '2025-08-08 00:31:57', '2025-08-08 00:31:57', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=82', 0, 'dolencia', '', 0),
(83, 1, '2025-08-08 00:32:21', '2025-08-08 00:32:21', '', 'Hiperlaxitud Ligamentaria', '', 'publish', 'closed', 'closed', '', 'hiperlaxitud-ligamentaria', '', '', '2025-08-08 00:32:21', '2025-08-08 00:32:21', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=83', 0, 'dolencia', '', 0),
(84, 1, '2025-08-08 00:34:21', '2025-08-08 00:34:21', '<!-- wp:paragraph -->\n<p>La&nbsp;<strong>fisioterapia pediátrica</strong>&nbsp;es la disciplina que se encarga de asesorar, tratar y cuidar de aquellos recién nacidos, niños y adolescentes que presentan una&nbsp;<strong>alteración general en su desarrollo o desórdenes en el movimiento,</strong>&nbsp;causado por enfermedades tanto congénitas como adquiridas. Se puede decir que es el profesional especializado en trabajar el área sensorio-motriz de los más pequeños.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>¿A quién puede ayudar la fisioterapia pediátrica?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Un fisioterapeuta pediátrico puede atender las necesidades de una amplia población infantil (0-18 años), con alteraciones en el desarrollo motor ocasionadas por enfermedades o afecciones de origen: Neuromuscular, Neurológico, Musculo-esquelético, Respiratorio, Genético</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Pediátrica', 'Tratamientos y cuidados de aquellos bebés, niños/as y adolescentes que presentan un retraso general en su desarrollo.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-08-08 00:34:21', '2025-08-08 00:34:21', '', 18, 'http://localhost/therapyflex/?p=84', 0, 'revision', '', 0),
(85, 1, '2025-08-08 00:36:01', '2025-08-08 00:36:01', '', 'Dolores Musculares', '', 'publish', 'closed', 'closed', '', 'dolores-musculares', '', '', '2025-08-08 00:36:01', '2025-08-08 00:36:01', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=85', 0, 'dolencia', '', 0),
(86, 1, '2025-08-08 00:36:15', '2025-08-08 00:36:15', '', 'Contractura Muscular', '', 'publish', 'closed', 'closed', '', 'contractura-muscular-2', '', '', '2025-08-08 00:36:15', '2025-08-08 00:36:15', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=86', 0, 'dolencia', '', 0),
(87, 1, '2025-08-08 00:36:39', '2025-08-08 00:36:39', '', 'Desgarro Muscular', '', 'publish', 'closed', 'closed', '', 'desgarro-muscular', '', '', '2025-08-08 00:36:39', '2025-08-08 00:36:39', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=87', 0, 'dolencia', '', 0),
(88, 1, '2025-08-08 00:36:57', '2025-08-08 00:36:57', '', 'Descarga Muscular', '', 'publish', 'closed', 'closed', '', 'descarga-muscular', '', '', '2025-08-08 00:36:57', '2025-08-08 00:36:57', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=88', 0, 'dolencia', '', 0),
(89, 1, '2025-08-08 00:37:10', '2025-08-08 00:37:10', '', 'Fractura', '', 'publish', 'closed', 'closed', '', 'fractura', '', '', '2025-08-08 00:37:10', '2025-08-08 00:37:10', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=89', 0, 'dolencia', '', 0),
(90, 1, '2025-08-08 00:37:21', '2025-08-08 00:37:21', '', 'Dislocaciones', '', 'publish', 'closed', 'closed', '', 'dislocaciones', '', '', '2025-08-08 00:37:21', '2025-08-08 00:37:21', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=90', 0, 'dolencia', '', 0),
(91, 1, '2025-08-08 00:37:39', '2025-08-08 00:37:39', '', 'Esguince', '', 'publish', 'closed', 'closed', '', 'esguince', '', '', '2025-08-08 00:37:39', '2025-08-08 00:37:39', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=91', 0, 'dolencia', '', 0),
(92, 1, '2025-08-08 00:38:01', '2025-08-08 00:38:01', '', 'Lesiones en la rodilla', '', 'publish', 'closed', 'closed', '', 'lesiones-en-la-rodilla', '', '', '2025-08-08 00:38:01', '2025-08-08 00:38:01', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=92', 0, 'dolencia', '', 0),
(93, 1, '2025-08-08 00:39:11', '2025-08-08 00:39:11', '<!-- wp:paragraph -->\n<p>La&nbsp;<strong>fisioterapia deportiva</strong>&nbsp;es una de las muchas&nbsp;<strong>especialidades de la fisioterapia</strong>&nbsp;a través de la cual se busca la rehabilitación, la atención y la prevención de deportistas amateurs y profesionales, así como mostrar unas correctas directrices a aquellos pacientes que practican&nbsp;<strong>actividad física</strong>&nbsp;y quieren hacerlo de forma segura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Así, la fisioterapia deportiva abordará las&nbsp;<strong>lesiones</strong>&nbsp;del aparato locomotor de los deportistas.</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Deportiva', 'Especialistas en tratar lesiones o traumatismos deportivas, desde nivel iniciación hasta profesional o de élite.', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-08-08 00:39:11', '2025-08-08 00:39:11', '', 25, 'http://localhost/therapyflex/?p=93', 0, 'revision', '', 0),
(95, 1, '2025-08-08 00:46:53', '2025-08-08 00:46:53', '<!-- wp:paragraph -->\n<p>La <strong>fisioterapia geriátrica</strong> es una de las especialidades de la fisioterapia enfocada en la atención, prevención y rehabilitación de las <strong>personas adultas mayores</strong>. A través de esta disciplina, se busca mantener y mejorar la movilidad, la funcionalidad y la calidad de vida en esta etapa, promoviendo la independencia y reduciendo el riesgo de caídas y complicaciones derivadas del envejecimiento.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Esta especialidad también ofrece <strong>intervenciones personalizadas</strong> para tratar dolencias musculoesqueléticas, neurológicas y respiratorias comunes en la tercera edad, así como brindar <strong>educación y pautas seguras</strong> para una vida activa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Así, la fisioterapia geriátrica aborda las <strong>limitaciones físicas, el dolor y la pérdida de autonomía</strong>, ayudando a los adultos mayores a conservar su bienestar y participar activamente en su entorno.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Fisioterapia Geriátrica', 'Evaluación, tratamiento y acompañamiento para adultos mayores con alteraciones del equilibrio, movilidad o dolor crónico, promoviendo su independencia y bienestar.', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-08-08 00:46:53', '2025-08-08 00:46:53', '', 23, 'http://localhost/therapyflex/?p=95', 0, 'revision', '', 0),
(96, 1, '2025-08-08 00:47:29', '2025-08-08 00:47:29', '', 'Terapia Neurológica', '', 'publish', 'closed', 'closed', '', 'terapia-neurologica', '', '', '2025-08-08 00:47:29', '2025-08-08 00:47:29', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=96', 0, 'dolencia', '', 0),
(97, 1, '2025-08-08 00:47:45', '2025-08-08 00:47:45', '', 'ACV', '', 'publish', 'closed', 'closed', '', 'acv', '', '', '2025-08-08 00:47:45', '2025-08-08 00:47:45', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=97', 0, 'dolencia', '', 0),
(98, 1, '2025-08-08 00:47:55', '2025-08-08 00:47:55', '', 'Parálisis Facial', '', 'publish', 'closed', 'closed', '', 'paralisis-facial', '', '', '2025-08-08 00:47:55', '2025-08-08 00:47:55', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=98', 0, 'dolencia', '', 0),
(99, 1, '2025-08-08 00:48:07', '2025-08-08 00:48:07', '', 'Parkinson', '', 'publish', 'closed', 'closed', '', 'parkinson', '', '', '2025-08-08 00:48:07', '2025-08-08 00:48:07', '', 0, 'http://localhost/therapyflex/?post_type=dolencia&#038;p=99', 0, 'dolencia', '', 0),
(100, 1, '2025-08-08 21:07:17', '2025-08-08 21:07:17', '<!-- wp:paragraph -->\n<p>La&nbsp;<strong>fisioterapia deportiva</strong>&nbsp;es una de las muchas&nbsp;<strong>especialidades de la fisioterapia</strong>&nbsp;a través de la cual se busca la rehabilitación, la atención y la prevención de deportistas amateurs y profesionales, así como mostrar unas correctas directrices a aquellos pacientes que practican&nbsp;<strong>actividad física</strong>&nbsp;y quieren hacerlo de forma segura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Así, la fisioterapia deportiva abordará las&nbsp;<strong>lesiones</strong>&nbsp;del aparato locomotor de los deportistas.</p>\n<!-- /wp:paragraph -->', 'Fisioterapia Deportiva', 'Especialistas en tratar lesiones o traumatismos deportivas, desde nivel iniciación hasta profesional o de élite.', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2025-08-08 21:07:17', '2025-08-08 21:07:17', '', 25, 'http://localhost/therapyflex/?p=100', 0, 'revision', '', 0),
(102, 1, '2025-08-11 05:27:11', '2025-08-11 05:27:11', '', 'fisioterapia-pediatrica', '', 'inherit', 'open', 'closed', '', 'fisioterapia-pediatrica-2', '', '', '2025-08-11 05:27:11', '2025-08-11 05:27:11', '', 18, 'http://localhost/therapyflex/wp-content/uploads/2025/08/fisioterapia-pediatrica.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2025-08-11 05:27:49', '2025-08-11 05:27:49', '', 'fisioterapia-geriatrica', '', 'inherit', 'open', 'closed', '', 'fisioterapia-geriatrica-2', '', '', '2025-08-11 05:27:59', '2025-08-11 05:27:59', '', 23, 'http://localhost/therapyflex/wp-content/uploads/2025/08/fisioterapia-geriatrica.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Terapia Física y Rehabilitación', 'terapia-fisica', 0),
(3, 'Fisioterapia Pediátrica', 'fisioterapia-pediatrica', 0),
(4, 'Fisioterapia Geriátrica', 'fisioterapia-geriatrica', 0),
(5, 'Fisioterapia Deportiva', 'fisioterapia-deportiva', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(63, 2, 0),
(69, 2, 0),
(70, 3, 0),
(75, 2, 0),
(76, 2, 0),
(77, 2, 0),
(78, 2, 0),
(79, 2, 0),
(80, 3, 0),
(81, 3, 0),
(82, 3, 0),
(83, 3, 0),
(85, 5, 0),
(86, 5, 0),
(87, 5, 0),
(88, 5, 0),
(89, 5, 0),
(90, 5, 0),
(91, 5, 0),
(92, 5, 0),
(96, 4, 0),
(97, 4, 0),
(98, 4, 0),
(99, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'tipo_servicio', '', 0, 7),
(3, 3, 'tipo_servicio', '', 0, 5),
(4, 4, 'tipo_servicio', '', 0, 4),
(5, 5, 'tipo_servicio', '', 0, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jlcallalle@gmail.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"17855c46983f7f301bcf24c51cd8df4dbafbe8090397028cbb99a9ae8bb2b475\";a:4:{s:10:\"expiration\";i:1760594448;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\";s:5:\"login\";i:1760421648;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '104'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:20:\"2800:200:ef00:1088::\";}'),
(19, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1753146183'),
(31, 1, 'wp_googlesitekitpersistent_initial_version', '1.157.0'),
(36, 1, 'wp_googlesitekitpersistent_dismissed_items', 'a:1:{s:27:\"gathering-data-notification\";i:1753398412;}'),
(39, 1, 'wp_googlesitekitpersistent_dismissed_prompts', 'a:2:{s:29:\"consent-mode-setup-cta-widget\";a:2:{s:7:\"expires\";i:0;s:5:\"count\";i:1;}s:22:\"rrm-setup-notification\";a:2:{s:7:\"expires\";i:1754521612;s:5:\"count\";i:1;}}'),
(40, 1, 'wp_googlesitekit_disconnected_reason', 'connected_url_mismatch'),
(41, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:9:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:24:\"yoast-seo/document-panel\";i:2;s:28:\"taxonomy-panel-tipo_servicio\";}s:10:\"editorMode\";s:6:\"visual\";s:12:\"fixedToolbar\";b:0;s:15:\"distractionFree\";b:0;s:9:\"focusMode\";b:0;s:14:\"mostUsedBlocks\";b:1;s:21:\"showListViewByDefault\";b:0;s:14:\"inactivePanels\";a:0:{}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:1;}s:9:\"_modified\";s:24:\"2025-08-08T22:23:02.897Z\";}'),
(42, 1, 'enable_custom_fields', ''),
(43, 1, 'closedpostboxes_page', 'a:0:{}'),
(44, 1, 'metaboxhidden_page', 'a:0:{}'),
(45, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:10:\"postcustom\";s:4:\"side\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jlcallalle@gmail.com', '$wp$2y$10$LLZTT7fnSAafEwy4/XJb7eMW6jRgGJmcWPeHKiWNZbjqc6yPI7Dp.', 'jlcallallegmail-com', 'jlcallalle@gmail.com', 'https://therapyflex.pe', '2025-07-21 21:00:43', '', 0, 'jlcallalle@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`(191)),
  ADD KEY `cache_tags` (`cache_tags`(191));

--
-- Indices de la tabla `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `type` (`type`),
  ADD KEY `url_id_2` (`url_id`,`vary`,`type`),
  ADD KEY `filename_2` (`filename`,`expired`),
  ADD KEY `url_id` (`url_id`,`expired`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1365;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
