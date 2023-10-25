-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 25, 2023 at 03:10 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scientechnic`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-18 05:59:24', '2023-10-18 05:59:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/SCT', 'yes'),
(2, 'home', 'http://localhost:8888/SCT', 'yes'),
(3, 'blogname', 'Scientechnic', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ramya@pixelflames.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Scientechnic', 'yes'),
(41, 'stylesheet', 'Scientechnic', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1713160764', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1698245965;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698256765;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698256791;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698299965;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698299991;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698299993;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698818417;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(122, 'recovery_keys', 'a:1:{s:22:\"bxepJTAToyC4TQrGxrbDZS\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BRJRVejk9dQvK49Bc5jaYeWdjwZlpN.\";s:10:\"created_at\";i:1698232226;}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698213636;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1697693204;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698206812;s:7:\"checked\";a:1:{s:12:\"Scientechnic\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(141, 'can_compress_scripts', '1', 'yes'),
(148, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1697634487;}', 'yes'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(156, 'acf_version', '6.2.1.1', 'yes'),
(179, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRReU5ERTBmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9DMHhNQzB4TlNBd09Eb3pNVG94TlE9PSI7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODg4OC9TQ1QiO30=', 'yes'),
(183, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698206812;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";s:6:\"reason\";s:10:\"up_to_date\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.1.1\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(184, 'current_theme', '', 'yes'),
(185, 'theme_mods_Scientechnic', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(186, 'theme_switched', '', 'yes'),
(187, 'recovery_mode_email_last_sent', '1698232226', 'yes'),
(191, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":6,\"critical\":1}', 'yes'),
(209, 'bussinessunit_children', 'a:0:{}', 'yes'),
(213, 'year_children', 'a:0:{}', 'yes'),
(216, 'Location_children', 'a:0:{}', 'yes'),
(231, '_transient_timeout_acf_plugin_updates', '1698292523', 'no'),
(232, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:0:{}s:9:\"no_update\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";s:6:\"reason\";s:10:\"up_to_date\";}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.1.1\";}}', 'no'),
(258, '_site_transient_timeout_theme_roots', '1698215436', 'no'),
(259, '_site_transient_theme_roots', 'a:1:{s:12:\"Scientechnic\";s:7:\"/themes\";}', 'no'),
(269, 'options_single_news_banner_image', '63', 'no'),
(270, '_options_single_news_banner_image', 'field_653913782d0d4', 'no'),
(271, 'options_single_news_banner_title', 'News Centre', 'no'),
(272, '_options_single_news_banner_title', 'field_6539139c2d0d5', 'no'),
(273, 'options_single_news_banner_description', '', 'no'),
(274, '_options_single_news_banner_description', 'field_653913ab2d0d6', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1697696820:1'),
(7, 7, '_wp_page_template', 'templates/template-home.php'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1698122959:1'),
(10, 9, '_wp_page_template', 'templates/template-project.php'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1697718333:1'),
(13, 16, '_wp_attached_file', '2023/10/3d73f5a987e19ac1b72a0e329b32d8db_f396.jpg'),
(14, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:49:\"2023/10/3d73f5a987e19ac1b72a0e329b32d8db_f396.jpg\";s:8:\"filesize\";i:8883;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"3d73f5a987e19ac1b72a0e329b32d8db_f396-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5645;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 9, 'project_banner_image', '19'),
(16, 9, '_project_banner_image', 'field_65311c0144f08'),
(17, 9, 'project_banner_title', 'Our Projects'),
(18, 9, '_project_banner_title', 'field_65311c1544f09'),
(19, 9, 'project_banner_description', ' An extensive portfolio of projects in the UAE and across the globe'),
(20, 9, '_project_banner_description', 'field_65311c4144f0a'),
(21, 17, 'project_banner_image', '16'),
(22, 17, '_project_banner_image', 'field_65311c0144f08'),
(23, 17, 'project_banner_title', ''),
(24, 17, '_project_banner_title', 'field_65311c1544f09'),
(25, 17, 'project_banner_description', ''),
(26, 17, '_project_banner_description', 'field_65311c4144f0a'),
(27, 18, 'project_banner_image', '16'),
(28, 18, '_project_banner_image', 'field_65311c0144f08'),
(29, 18, 'project_banner_title', ''),
(30, 18, '_project_banner_title', 'field_65311c1544f09'),
(31, 18, 'project_banner_description', ''),
(32, 18, '_project_banner_description', 'field_65311c4144f0a'),
(33, 19, '_wp_attached_file', '2023/10/3a5f7fab82e65512117b3477d37b45db_f3016.png'),
(34, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:565;s:6:\"height\";i:315;s:4:\"file\";s:50:\"2023/10/3a5f7fab82e65512117b3477d37b45db_f3016.png\";s:8:\"filesize\";i:330437;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"3a5f7fab82e65512117b3477d37b45db_f3016-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:89804;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"3a5f7fab82e65512117b3477d37b45db_f3016-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45543;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 20, 'project_banner_image', '19'),
(36, 20, '_project_banner_image', 'field_65311c0144f08'),
(37, 20, 'project_banner_title', 'Our Projects'),
(38, 20, '_project_banner_title', 'field_65311c1544f09'),
(39, 20, 'project_banner_description', ' An extensive portfolio of projects in the UAE and across the globe'),
(40, 20, '_project_banner_description', 'field_65311c4144f0a'),
(41, 21, '_edit_last', '1'),
(42, 21, '_edit_lock', '1698122417:1'),
(43, 9, 'project_main_title', 'Major Projects'),
(44, 9, '_project_main_title', 'field_653120d0530e8'),
(45, 9, 'project_main_description', 'Over the years, we have completed a vast range of projects in the private and public sectors. Our extensive portfolio of projects makes us one of the most experienced and successful companies in this region. View our diverse projects across various industrial sectors here.'),
(46, 9, '_project_main_description', 'field_653120e7530e9'),
(47, 24, 'project_banner_image', '19'),
(48, 24, '_project_banner_image', 'field_65311c0144f08'),
(49, 24, 'project_banner_title', 'Our Projects'),
(50, 24, '_project_banner_title', 'field_65311c1544f09'),
(51, 24, 'project_banner_description', ' An extensive portfolio of projects in the UAE and across the globe'),
(52, 24, '_project_banner_description', 'field_65311c4144f0a'),
(53, 24, 'project_main_title', 'Major Projects'),
(54, 24, '_project_main_title', 'field_653120d0530e8'),
(55, 24, 'project_main_description', 'Over the years, we have completed a vast range of projects in the private and public sectors. Our extensive portfolio of projects makes us one of the most experienced and successful companies in this region. View our diverse projects across various industrial sectors here.'),
(56, 24, '_project_main_description', 'field_653120e7530e9'),
(57, 26, '_edit_last', '1'),
(58, 26, '_edit_lock', '1697720747:1'),
(59, 27, '_edit_last', '1'),
(60, 27, '_edit_lock', '1697721568:1'),
(61, 28, '_edit_last', '1'),
(62, 28, '_edit_lock', '1698227482:1'),
(63, 29, '_edit_last', '1'),
(64, 29, '_edit_lock', '1698227198:1'),
(65, 30, '_edit_last', '1'),
(66, 30, '_edit_lock', '1698216447:1'),
(67, 33, '_wp_attached_file', '2023/10/92a9053c22075b88712193a53c160ddb_f2996.png'),
(68, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:565;s:6:\"height\";i:640;s:4:\"file\";s:50:\"2023/10/92a9053c22075b88712193a53c160ddb_f2996.png\";s:8:\"filesize\";i:528807;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"92a9053c22075b88712193a53c160ddb_f2996-265x300.png\";s:5:\"width\";i:265;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117942;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"92a9053c22075b88712193a53c160ddb_f2996-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36487;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 29, 'single_project_description', 'Design and engineering of electrical, lighting,\r\naudio-video and ITS works at the Boardwalk'),
(70, 29, '_single_project_description', 'field_65374b444a0ed'),
(71, 29, 'project_list_image', '33'),
(72, 29, '_project_list_image', 'field_65374d334a0ee'),
(73, 38, '_wp_attached_file', '2023/10/4fcc8c94e121d85b581a953d3ce781c8_f1269.jpg'),
(74, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:50:\"2023/10/4fcc8c94e121d85b581a953d3ce781c8_f1269.jpg\";s:8:\"filesize\";i:154832;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"4fcc8c94e121d85b581a953d3ce781c8_f1269-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"4fcc8c94e121d85b581a953d3ce781c8_f1269-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7826;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"4fcc8c94e121d85b581a953d3ce781c8_f1269-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91830;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 29, 'single_project_banner_image', '38'),
(76, 29, '_single_project_banner_image', 'field_6537a5e0b2ee6'),
(77, 29, 'single_banner_title', 'Projects'),
(78, 29, '_single_banner_title', 'field_6537a8f6b2ee7'),
(79, 29, 'single_banner_description', 'An extensive portfolio of projects in the UAE and across the globe'),
(80, 29, '_single_banner_description', 'field_6537a902b2ee8'),
(81, 29, 'project_title', 'Dubai Water Canal'),
(82, 29, '_project_title', 'field_6537a9c386641'),
(83, 29, 'project_type', 'Case Study'),
(84, 29, '_project_type', 'field_6537a9fd86642'),
(85, 29, 'project_short_description', 'Design and engineering of electrical, lighting, audio-video and ITS works at the Boardwalk'),
(86, 29, '_project_short_description', 'field_6537aa5a86643'),
(87, 29, 'project_content', '<p style=\"text-align: justify;\">The Dubai Water Canal is an extension of the Deira Creek,\r\nlinking Business Bay to the Arabian Gulf. This environmentally\r\nfriendly lifestyle development will have a network of food,\r\nbeverage and retail outlets positioned along the boardwalk.</p>\r\n<p style=\"text-align: justify;\">Scientechnic is proud to be associated with the Dubai Water\r\nCanal and was nominated by RTA to handle this project under the\r\nmain contractor BESIX. The deliverables were the supply,\r\ninstallation, commissioning of Smart Poles with functional and\r\nfeature lights, CCTV camera, Wi-Fi coverage for the entire board\r\nwalk, audio system, step lighting, planter lighting and\r\nboardwalk handrail lighting.</p>\r\n<p style=\"text-align: justify;\">Among the key features of the canal are the three\r\naesthetically designed pedestrian bridges that run across the\r\nthree-kilometre- long Dubai Water Canal. The design of the\r\nbridges represents concepts of the past, present and\r\nfuture.&lt;/span &gt;</p>'),
(88, 29, '_project_content', 'field_6537aa7c86644'),
(89, 29, 'project_content_copy', ' <p style=\"text-align: justify\">\r\n                The scope of work on the bridge included the delivery of low\r\n                voltage switchgears, electrical cabling, LED lights and CCTV.\r\n                The bridges were brought to light by combinations of light\r\n                fixtures supplied by WE-EF and ACDC, in keeping with the three\r\n                themed concepts of the bridges.\r\n              </p>\r\n              <p style=\"text-align: justify\">\r\n                <strong>Project Management Challenges</strong>\r\n              </p>\r\n              <p style=\"text-align: justify\">\r\n                This was a fast track project and project management had its\r\n                challenges, however with some pre-emptive measures the team was\r\n                able to successfully meet the deliverables. The process involved\r\n                selecting results oriented sub-contractors and controlling costs\r\n                through the efficient use of resources and materials. This also\r\n                required aligning the on-time delivery of over 60 suppliers, for\r\n                seamless execution of everyone\'s tasks. Work on site was\r\n                happening 24/7 with over 220 personnel working in three shifts\r\n                to ensure that the project was completed on time.\r\n              </p>'),
(90, 29, '_project_content_copy', 'field_6537c06f2f9f0'),
(91, 29, 'highlight_title', 'Project highlights'),
(92, 29, '_highlight_title', 'field_6537c3f480600'),
(93, 29, 'highlighter_0_project_highlights', ' The deliverables were the supply, installation,commissioning of Smart Poles with functional and feature\r\n                    lights, CCTV camera, Wi-Fi coverage, audio system, step,\r\n                    planter and boardwalk handrail lighting. '),
(94, 29, '_highlighter_0_project_highlights', 'field_6537c3ca805ff'),
(95, 29, 'highlighter_1_project_highlights', ' All the lights, cameras and audio systems are connected to a\r\n                    central control room. '),
(96, 29, '_highlighter_1_project_highlights', 'field_6537c3ca805ff'),
(97, 29, 'highlighter_2_project_highlights', '  The illumination effects of the bridges were created by\r\n                    light fixtures supplied by WE-EF and ACDC, in keeping with\r\n                    the three themed concepts of the past, present and future. '),
(98, 29, '_highlighter_2_project_highlights', 'field_6537c3ca805ff'),
(99, 29, 'highlighter', '3'),
(100, 29, '_highlighter', 'field_6537c3b2805fe'),
(101, 53, '_wp_attached_file', '2023/10/38c007cecd346287242eb3062e4badd1_f1153.jpg'),
(102, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1068;s:4:\"file\";s:50:\"2023/10/38c007cecd346287242eb3062e4badd1_f1153.jpg\";s:8:\"filesize\";i:177202;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"38c007cecd346287242eb3062e4badd1_f1153-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10928;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"38c007cecd346287242eb3062e4badd1_f1153-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84825;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"38c007cecd346287242eb3062e4badd1_f1153-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5152;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"38c007cecd346287242eb3062e4badd1_f1153-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52407;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:52:\"38c007cecd346287242eb3062e4badd1_f1153-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164557;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 54, '_wp_attached_file', '2023/10/4dade47e3920e8a49f95499acf7e9b0d_f1153.jpg'),
(104, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:50:\"2023/10/4dade47e3920e8a49f95499acf7e9b0d_f1153.jpg\";s:8:\"filesize\";i:34471;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"4dade47e3920e8a49f95499acf7e9b0d_f1153-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14776;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"4dade47e3920e8a49f95499acf7e9b0d_f1153-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5150;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 55, '_wp_attached_file', '2023/10/576b367b0e4bdfb495ec7eab91339af4_f4910.png'),
(106, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:50:\"2023/10/576b367b0e4bdfb495ec7eab91339af4_f4910.png\";s:8:\"filesize\";i:395758;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"576b367b0e4bdfb495ec7eab91339af4_f4910-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:152827;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"576b367b0e4bdfb495ec7eab91339af4_f4910-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44624;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 29, 'gallery_title', 'Gallery'),
(108, 29, '_gallery_title', 'field_6538b389d276e'),
(109, 29, 'Gallery_project_0_Gallery_project_images', '54'),
(110, 29, '_Gallery_project_0_Gallery_project_images', 'field_6538b3052758d'),
(111, 29, 'Gallery_project_1_Gallery_project_images', '55'),
(112, 29, '_Gallery_project_1_Gallery_project_images', 'field_6538b3052758d'),
(115, 29, 'Gallery_project', '2'),
(116, 29, '_Gallery_project', 'field_6538b3052758c'),
(117, 28, 'single_project_description', ''),
(118, 28, '_single_project_description', 'field_65374b444a0ed'),
(119, 28, 'project_list_image', '16'),
(120, 28, '_project_list_image', 'field_65374d334a0ee'),
(121, 28, 'single_project_banner_image', ''),
(122, 28, '_single_project_banner_image', 'field_6537a5e0b2ee6'),
(123, 28, 'single_banner_title', ''),
(124, 28, '_single_banner_title', 'field_6537a8f6b2ee7'),
(125, 28, 'single_banner_description', ''),
(126, 28, '_single_banner_description', 'field_6537a902b2ee8'),
(127, 28, 'project_title', ''),
(128, 28, '_project_title', 'field_6537a9c386641'),
(129, 28, 'project_type', ''),
(130, 28, '_project_type', 'field_6537a9fd86642'),
(131, 28, 'project_short_description', ''),
(132, 28, '_project_short_description', 'field_6537aa5a86643'),
(133, 28, 'project_content', ''),
(134, 28, '_project_content', 'field_6537aa7c86644'),
(135, 28, 'project_content_copy', ''),
(136, 28, '_project_content_copy', 'field_6537c06f2f9f0'),
(137, 28, 'highlight_title', ''),
(138, 28, '_highlight_title', 'field_6537c3f480600'),
(139, 28, 'highlighter', ''),
(140, 28, '_highlighter', 'field_6537c3b2805fe'),
(141, 28, 'gallery_title', ''),
(142, 28, '_gallery_title', 'field_6538b389d276e'),
(143, 28, 'Gallery_project', ''),
(144, 28, '_Gallery_project', 'field_6538b3052758c'),
(145, 56, '_edit_last', '1'),
(146, 56, '_edit_lock', '1698233455:1'),
(147, 56, '_wp_page_template', 'templates/template-news.php'),
(148, 56, 'project_banner_image', ''),
(149, 56, '_project_banner_image', 'field_65311c0144f08'),
(150, 56, 'project_banner_title', ''),
(151, 56, '_project_banner_title', 'field_65311c1544f09'),
(152, 56, 'project_banner_description', ''),
(153, 56, '_project_banner_description', 'field_65311c4144f0a'),
(154, 56, 'project_main_title', ''),
(155, 56, '_project_main_title', 'field_653120d0530e8'),
(156, 56, 'project_main_description', ''),
(157, 56, '_project_main_description', 'field_653120e7530e9'),
(158, 57, 'project_banner_image', ''),
(159, 57, '_project_banner_image', 'field_65311c0144f08'),
(160, 57, 'project_banner_title', ''),
(161, 57, '_project_banner_title', 'field_65311c1544f09'),
(162, 57, 'project_banner_description', ''),
(163, 57, '_project_banner_description', 'field_65311c4144f0a'),
(164, 57, 'project_main_title', ''),
(165, 57, '_project_main_title', 'field_653120d0530e8'),
(166, 57, 'project_main_description', ''),
(167, 57, '_project_main_description', 'field_653120e7530e9'),
(168, 58, '_edit_last', '1'),
(169, 58, '_edit_lock', '1698233480:1'),
(170, 63, '_wp_attached_file', '2023/10/f1cc1a392946ce158aed41b39c4fdf7f_f2305.jpg'),
(171, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:704;s:4:\"file\";s:50:\"2023/10/f1cc1a392946ce158aed41b39c4fdf7f_f2305.jpg\";s:8:\"filesize\";i:85548;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"f1cc1a392946ce158aed41b39c4fdf7f_f2305-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6900;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"f1cc1a392946ce158aed41b39c4fdf7f_f2305-1024x451.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44785;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"f1cc1a392946ce158aed41b39c4fdf7f_f2305-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4109;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"f1cc1a392946ce158aed41b39c4fdf7f_f2305-768x338.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28726;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:51:\"f1cc1a392946ce158aed41b39c4fdf7f_f2305-1536x676.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82789;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 56, 'news_page_title', 'News Center'),
(173, 56, '_news_page_title', 'field_6538f56f81bc3'),
(174, 56, 'news_banner_description', 'Read about the latest at Scientechnic'),
(175, 56, '_news_banner_description', 'field_6538f593d1b27'),
(176, 56, 'news_banner_image', '63'),
(177, 56, '_news_banner_image', 'field_6538f5c1d1b29'),
(178, 64, 'project_banner_image', ''),
(179, 64, '_project_banner_image', 'field_65311c0144f08'),
(180, 64, 'project_banner_title', ''),
(181, 64, '_project_banner_title', 'field_65311c1544f09'),
(182, 64, 'project_banner_description', ''),
(183, 64, '_project_banner_description', 'field_65311c4144f0a'),
(184, 64, 'project_main_title', ''),
(185, 64, '_project_main_title', 'field_653120d0530e8'),
(186, 64, 'project_main_description', ''),
(187, 64, '_project_main_description', 'field_653120e7530e9'),
(188, 64, 'news_page_title', 'News Center'),
(189, 64, '_news_page_title', 'field_6538f56f81bc3'),
(190, 64, 'news_banner_description', 'Read about the latest at Scientechnic'),
(191, 64, '_news_banner_description', 'field_6538f593d1b27'),
(192, 64, 'news_banner_image', '63'),
(193, 64, '_news_banner_image', 'field_6538f5c1d1b29'),
(194, 65, '_edit_last', '1'),
(195, 65, '_edit_lock', '1698232206:1'),
(196, 66, '_edit_last', '1'),
(197, 66, '_edit_lock', '1698239275:1'),
(198, 67, '_edit_last', '1'),
(199, 67, '_edit_lock', '1698234434:1'),
(200, 56, 'news_listing_title', 'News'),
(201, 56, '_news_listing_title', 'field_6538fa106d4b2'),
(202, 69, 'project_banner_image', ''),
(203, 69, '_project_banner_image', 'field_65311c0144f08'),
(204, 69, 'project_banner_title', ''),
(205, 69, '_project_banner_title', 'field_65311c1544f09'),
(206, 69, 'project_banner_description', ''),
(207, 69, '_project_banner_description', 'field_65311c4144f0a'),
(208, 69, 'project_main_title', ''),
(209, 69, '_project_main_title', 'field_653120d0530e8'),
(210, 69, 'project_main_description', ''),
(211, 69, '_project_main_description', 'field_653120e7530e9'),
(212, 69, 'news_page_title', 'News Center'),
(213, 69, '_news_page_title', 'field_6538f56f81bc3'),
(214, 69, 'news_banner_description', 'Read about the latest at Scientechnic'),
(215, 69, '_news_banner_description', 'field_6538f593d1b27'),
(216, 69, 'news_banner_image', '63'),
(217, 69, '_news_banner_image', 'field_6538f5c1d1b29'),
(218, 69, 'news_listing_title', 'News'),
(219, 69, '_news_listing_title', 'field_6538fa106d4b2'),
(220, 70, '_edit_last', '1'),
(221, 70, '_edit_lock', '1698239157:1'),
(222, 66, '_wp_old_date', '2023-10-25'),
(223, 74, '_wp_attached_file', '2022/10/7ee2126940b5667dd84bee5671a1f5fc_f5810-1.png'),
(224, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:52:\"2022/10/7ee2126940b5667dd84bee5671a1f5fc_f5810-1.png\";s:8:\"filesize\";i:355776;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"7ee2126940b5667dd84bee5671a1f5fc_f5810-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:137374;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"7ee2126940b5667dd84bee5671a1f5fc_f5810-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40001;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 66, 'news_short_description', 'MTE Corporation is USA-based power quality expert.'),
(226, 66, '_news_short_description', 'field_6538fd204e2f4'),
(227, 66, 'news_list_image', '74'),
(228, 66, '_news_list_image', 'field_6538fd504e2f6'),
(229, 67, '_wp_old_date', '2023-10-25'),
(230, 67, 'news_short_description', 'MTE Corporation is USA-based power quality expert.'),
(231, 67, '_news_short_description', 'field_6538fd204e2f4'),
(232, 67, 'news_list_image', '55'),
(233, 67, '_news_list_image', 'field_6538fd504e2f6'),
(234, 75, '_edit_last', '1'),
(235, 75, '_edit_lock', '1698234611:1'),
(236, 75, 'news_short_description', 'Scientechnic Life Sciences together with partner New England\r\n                  Biolabs, participated at the PrecisionMed Exhibition &amp;\r\n                  Summit this year.'),
(237, 75, '_news_short_description', 'field_6538fd204e2f4'),
(238, 75, 'news_list_image', ''),
(239, 75, '_news_list_image', 'field_6538fd504e2f6'),
(240, 80, '_wp_attached_file', '2022/10/4f8b9dcf68b36237a7ac9f3dc41da061_f1850.jpg'),
(241, 80, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:50:\"2022/10/4f8b9dcf68b36237a7ac9f3dc41da061_f1850.jpg\";s:8:\"filesize\";i:33141;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"4f8b9dcf68b36237a7ac9f3dc41da061_f1850-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13934;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"4f8b9dcf68b36237a7ac9f3dc41da061_f1850-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6627;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 81, '_wp_attached_file', '2022/10/4fcc8c94e121d85b581a953d3ce781c8_f1269.jpg'),
(243, 81, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:50:\"2022/10/4fcc8c94e121d85b581a953d3ce781c8_f1269.jpg\";s:8:\"filesize\";i:154832;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"4fcc8c94e121d85b581a953d3ce781c8_f1269-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"4fcc8c94e121d85b581a953d3ce781c8_f1269-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7826;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"4fcc8c94e121d85b581a953d3ce781c8_f1269-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91830;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 66, 'content_one', '<p style=\"text-align: justify;\">As part of their Energy Efficiency &amp; Sustainability\r\nofferings, Industrial Stock Sales (ISS) recently signed on MTE\r\nCorporation, the renowned USA-based power quality experts with\r\nover 40 years experience, as their official partners in the\r\nMiddle East. This partnership will enable ISS to market and\r\ndistribute MTE’s top-of-the-line portfolio of Line &amp; Load\r\nReactors, Harmonic Mitigation Filters and Motor Protection\r\nFilters.</p>'),
(245, 66, '_content_one', 'field_65390d9026270'),
(246, 66, 'content_two', '<p style=\"text-align: justify;\">As part of their Energy Efficiency &amp; Sustainability\r\nofferings, Industrial Stock Sales (ISS) recently signed on MTE\r\nCorporation, the renowned USA-based power quality experts with\r\nover 40 years experience, as their official partners in the\r\nMiddle East. This partnership will enable ISS to market and\r\ndistribute MTE’s top-of-the-line portfolio of Line &amp; Load\r\nReactors, Harmonic Mitigation Filters and Motor Protection\r\nFilters.</p>'),
(247, 66, '_content_two', 'field_65390daa26271'),
(248, 66, 'news_images_0_news_image', '80'),
(249, 66, '_news_images_0_news_image', 'field_65390dc926273'),
(250, 66, 'news_images_1_news_image', '74'),
(251, 66, '_news_images_1_news_image', 'field_65390dc926273'),
(252, 66, 'news_images_2_news_image', '81'),
(253, 66, '_news_images_2_news_image', 'field_65390dc926273'),
(254, 66, 'news_images', '3'),
(255, 66, '_news_images', 'field_65390db826272'),
(256, 66, 'show_hide_images', '1'),
(257, 66, '_show_hide_images', 'field_653912824679a'),
(258, 83, '_edit_last', '1'),
(259, 83, '_edit_lock', '1698239669:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-18 05:59:24', '2023-10-18 05:59:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-18 05:59:24', '2023-10-18 05:59:24', '', 0, 'http://localhost:8888/SCT/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-18 05:59:24', '2023-10-18 05:59:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/SCT/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-18 05:59:24', '2023-10-18 05:59:24', '', 0, 'http://localhost:8888/SCT/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-18 05:59:24', '2023-10-18 05:59:24', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8888/SCT.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-18 05:59:24', '2023-10-18 05:59:24', '', 0, 'http://localhost:8888/SCT/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-18 05:59:26', '2023-10-18 05:59:26', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-18 05:59:26', '2023-10-18 05:59:26', '', 0, 'http://localhost:8888/SCT/2023/10/18/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2023-10-19 06:26:27', '2023-10-19 06:26:27', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-10-19 06:28:49', '2023-10-19 06:28:49', '', 0, 'http://localhost:8888/SCT/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-10-19 06:26:27', '2023-10-19 06:26:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-10-19 06:26:27', '2023-10-19 06:26:27', '', 7, 'http://localhost:8888/SCT/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-10-19 12:00:46', '2023-10-19 12:00:46', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2023-10-19 12:37:38', '2023-10-19 12:37:38', '', 0, 'http://localhost:8888/SCT/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-10-19 12:00:46', '2023-10-19 12:00:46', '', 'Pojects', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-10-19 12:00:46', '2023-10-19 12:00:46', '', 9, 'http://localhost:8888/SCT/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-10-19 12:09:26', '2023-10-19 12:09:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"templates/template-project.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Page Banner', 'page-banner', 'publish', 'closed', 'closed', '', 'group_65311baab42af', '', '', '2023-10-19 12:27:11', '2023-10-19 12:27:11', '', 0, 'http://localhost:8888/SCT/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2023-10-19 12:09:26', '2023-10-19 12:09:26', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_65311bab44f07', '', '', '2023-10-19 12:27:11', '2023-10-19 12:27:11', '', 11, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=12', 0, 'acf-field', '', 0),
(13, 1, '2023-10-19 12:09:26', '2023-10-19 12:09:26', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'project_banner_image', 'publish', 'closed', 'closed', '', 'field_65311c0144f08', '', '', '2023-10-19 12:27:11', '2023-10-19 12:27:11', '', 11, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=13', 1, 'acf-field', '', 0),
(14, 1, '2023-10-19 12:09:26', '2023-10-19 12:09:26', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Banner Title', 'project_banner_title', 'publish', 'closed', 'closed', '', 'field_65311c1544f09', '', '', '2023-10-19 12:27:11', '2023-10-19 12:27:11', '', 11, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=14', 2, 'acf-field', '', 0),
(15, 1, '2023-10-19 12:09:26', '2023-10-19 12:09:26', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Description', 'project_banner_description', 'publish', 'closed', 'closed', '', 'field_65311c4144f0a', '', '', '2023-10-19 12:27:11', '2023-10-19 12:27:11', '', 11, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=15', 3, 'acf-field', '', 0),
(16, 1, '2023-10-19 12:10:21', '2023-10-19 12:10:21', '', '3d73f5a987e19ac1b72a0e329b32d8db_f396', '', 'inherit', 'open', 'closed', '', '3d73f5a987e19ac1b72a0e329b32d8db_f396', '', '', '2023-10-19 12:10:21', '2023-10-19 12:10:21', '', 9, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/3d73f5a987e19ac1b72a0e329b32d8db_f396.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2023-10-19 12:15:13', '2023-10-19 12:15:13', '', 'Pojects', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-10-19 12:15:13', '2023-10-19 12:15:13', '', 9, 'http://localhost:8888/SCT/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-19 12:16:44', '2023-10-19 12:16:44', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-10-19 12:16:44', '2023-10-19 12:16:44', '', 9, 'http://localhost:8888/SCT/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-10-19 12:18:06', '2023-10-19 12:18:06', '', '3a5f7fab82e65512117b3477d37b45db_f3016', '', 'inherit', 'open', 'closed', '', '3a5f7fab82e65512117b3477d37b45db_f3016', '', '', '2023-10-19 12:18:06', '2023-10-19 12:18:06', '', 9, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/3a5f7fab82e65512117b3477d37b45db_f3016.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2023-10-19 12:18:33', '2023-10-19 12:18:33', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-10-19 12:18:33', '2023-10-19 12:18:33', '', 9, 'http://localhost:8888/SCT/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-10-19 12:37:07', '2023-10-19 12:37:07', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"templates/template-project.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Projects Page', 'projects-page', 'publish', 'closed', 'closed', '', 'group_653120cfcb65e', '', '', '2023-10-19 12:37:07', '2023-10-19 12:37:07', '', 0, 'http://localhost:8888/SCT/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2023-10-19 12:37:07', '2023-10-19 12:37:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project Main Title', 'project_main_title', 'publish', 'closed', 'closed', '', 'field_653120d0530e8', '', '', '2023-10-19 12:37:07', '2023-10-19 12:37:07', '', 21, 'http://localhost:8888/SCT/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2023-10-19 12:37:07', '2023-10-19 12:37:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Project Main Description', 'project_main_description', 'publish', 'closed', 'closed', '', 'field_653120e7530e9', '', '', '2023-10-19 12:37:07', '2023-10-19 12:37:07', '', 21, 'http://localhost:8888/SCT/?post_type=acf-field&p=23', 1, 'acf-field', '', 0),
(24, 1, '2023-10-19 12:37:38', '2023-10-19 12:37:38', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-10-19 12:37:38', '2023-10-19 12:37:38', '', 9, 'http://localhost:8888/SCT/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-10-19 12:49:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-10-19 12:49:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/SCT/?post_type=project&p=25', 0, 'project', '', 0),
(26, 1, '2023-10-19 13:08:03', '2023-10-19 13:08:03', '', 'Dubai Water Canal', '', 'publish', 'closed', 'closed', '', 'dubai-water-canal', '', '', '2023-10-19 13:08:03', '2023-10-19 13:08:03', '', 0, 'http://localhost:8888/SCT/?post_type=project&#038;p=26', 0, 'project', '', 0),
(27, 1, '2023-10-19 13:08:35', '2023-10-19 13:08:35', '', 'Al Thuraya Astronomy Centre', '', 'publish', 'closed', 'closed', '', 'al-thuraya-astronomy-centre', '', '', '2023-10-19 13:08:35', '2023-10-19 13:08:35', '', 0, 'http://localhost:8888/SCT/?post_type=project&#038;p=27', 0, 'project', '', 0),
(28, 1, '2023-10-20 06:08:30', '2023-10-20 06:08:30', '', 'At Lantis', '', 'publish', 'closed', 'closed', '', 'at-lantis', '', '', '2023-10-25 08:13:02', '2023-10-25 08:13:02', '', 0, 'http://localhost:8888/SCT/?post_type=project&#038;p=28', 0, 'project', '', 0),
(29, 1, '2023-10-20 06:08:56', '2023-10-20 06:08:56', '', 'Burj Khalifa', '', 'publish', 'closed', 'closed', '', 'burj-khalifa', '', '', '2023-10-25 06:29:50', '2023-10-25 06:29:50', '', 0, 'http://localhost:8888/SCT/?post_type=project&#038;p=29', 0, 'project', '', 0),
(30, 1, '2023-10-24 04:51:27', '2023-10-24 04:51:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Single Project Page', 'single-project-page', 'publish', 'closed', 'closed', '', 'group_65374b43bd0aa', '', '', '2023-10-25 06:20:04', '2023-10-25 06:20:04', '', 0, 'http://localhost:8888/SCT/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2023-10-24 04:51:27', '2023-10-24 04:51:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'single_project_description', 'publish', 'closed', 'closed', '', 'field_65374b444a0ed', '', '', '2023-10-24 04:53:13', '2023-10-24 04:53:13', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=31', 0, 'acf-field', '', 0),
(32, 1, '2023-10-24 04:51:27', '2023-10-24 04:51:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Project List Image', 'project_list_image', 'publish', 'closed', 'closed', '', 'field_65374d334a0ee', '', '', '2023-10-24 04:51:27', '2023-10-24 04:51:27', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2023-10-24 04:57:36', '2023-10-24 04:57:36', '', '92a9053c22075b88712193a53c160ddb_f2996', '', 'inherit', 'open', 'closed', '', '92a9053c22075b88712193a53c160ddb_f2996', '', '', '2023-10-24 04:57:36', '2023-10-24 04:57:36', '', 29, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/92a9053c22075b88712193a53c160ddb_f2996.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2023-10-24 11:23:09', '2023-10-24 11:23:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner section', 'banner_section', 'publish', 'closed', 'closed', '', 'field_6537a5c1b2ee5', '', '', '2023-10-24 11:23:09', '2023-10-24 11:23:09', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=34', 2, 'acf-field', '', 0),
(35, 1, '2023-10-24 11:23:09', '2023-10-24 11:23:09', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Image', 'single_project_banner_image', 'publish', 'closed', 'closed', '', 'field_6537a5e0b2ee6', '', '', '2023-10-24 11:23:09', '2023-10-24 11:23:09', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=35', 3, 'acf-field', '', 0),
(36, 1, '2023-10-24 11:23:09', '2023-10-24 11:23:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Single Banner Title', 'single_banner_title', 'publish', 'closed', 'closed', '', 'field_6537a8f6b2ee7', '', '', '2023-10-24 11:23:09', '2023-10-24 11:23:09', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=36', 4, 'acf-field', '', 0),
(37, 1, '2023-10-24 11:23:09', '2023-10-24 11:23:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Single Banner Description', 'single_banner_description', 'publish', 'closed', 'closed', '', 'field_6537a902b2ee8', '', '', '2023-10-24 11:24:36', '2023-10-24 11:24:36', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=37', 5, 'acf-field', '', 0),
(38, 1, '2023-10-24 11:24:09', '2023-10-24 11:24:09', '', '4fcc8c94e121d85b581a953d3ce781c8_f1269', '', 'inherit', 'open', 'closed', '', '4fcc8c94e121d85b581a953d3ce781c8_f1269', '', '', '2023-10-24 11:24:09', '2023-10-24 11:24:09', '', 29, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/4fcc8c94e121d85b581a953d3ce781c8_f1269.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2023-10-24 12:52:29', '2023-10-24 12:52:29', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Project Details', 'project_details', 'publish', 'closed', 'closed', '', 'field_6537a9a986640', '', '', '2023-10-24 12:52:29', '2023-10-24 12:52:29', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=39', 6, 'acf-field', '', 0),
(40, 1, '2023-10-24 12:52:29', '2023-10-24 12:52:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project Title', 'project_title', 'publish', 'closed', 'closed', '', 'field_6537a9c386641', '', '', '2023-10-24 12:52:29', '2023-10-24 12:52:29', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=40', 7, 'acf-field', '', 0),
(41, 1, '2023-10-24 12:52:29', '2023-10-24 12:52:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Project Type', 'project_type', 'publish', 'closed', 'closed', '', 'field_6537a9fd86642', '', '', '2023-10-24 12:52:29', '2023-10-24 12:52:29', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=41', 8, 'acf-field', '', 0),
(42, 1, '2023-10-24 12:52:29', '2023-10-24 12:52:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Project Short Description', 'project_short_description', 'publish', 'closed', 'closed', '', 'field_6537aa5a86643', '', '', '2023-10-24 12:52:29', '2023-10-24 12:52:29', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=42', 9, 'acf-field', '', 0),
(43, 1, '2023-10-24 12:52:30', '2023-10-24 12:52:30', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Project Content', 'project_content', 'publish', 'closed', 'closed', '', 'field_6537aa7c86644', '', '', '2023-10-24 12:52:30', '2023-10-24 12:52:30', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=43', 10, 'acf-field', '', 0),
(44, 1, '2023-10-24 13:03:07', '2023-10-24 13:03:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Project Content', 'project_content_copy', 'publish', 'closed', 'closed', '', 'field_6537c06f2f9f0', '', '', '2023-10-24 13:03:07', '2023-10-24 13:03:07', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=44', 11, 'acf-field', '', 0),
(45, 1, '2023-10-24 13:17:57', '2023-10-24 13:17:57', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Project Highlights', 'project_highlights', 'publish', 'closed', 'closed', '', 'field_6537c39f805fd', '', '', '2023-10-24 13:17:57', '2023-10-24 13:17:57', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=45', 12, 'acf-field', '', 0),
(46, 1, '2023-10-24 13:17:57', '2023-10-24 13:17:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Highlight Title', 'highlight_title', 'publish', 'closed', 'closed', '', 'field_6537c3f480600', '', '', '2023-10-24 13:24:57', '2023-10-24 13:24:57', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=46', 13, 'acf-field', '', 0),
(47, 1, '2023-10-24 13:17:57', '2023-10-24 13:17:57', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Highlighter', 'highlighter', 'publish', 'closed', 'closed', '', 'field_6537c3b2805fe', '', '', '2023-10-24 13:24:57', '2023-10-24 13:24:57', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=47', 14, 'acf-field', '', 0),
(48, 1, '2023-10-24 13:17:57', '2023-10-24 13:17:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Project Highlights', 'project_highlights', 'publish', 'closed', 'closed', '', 'field_6537c3ca805ff', '', '', '2023-10-24 13:17:57', '2023-10-24 13:17:57', '', 47, 'http://localhost:8888/SCT/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2023-10-24 13:24:57', '2023-10-24 13:24:57', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Gallery', '_copy', 'publish', 'closed', 'closed', '', 'field_6537c598f28c7', '', '', '2023-10-25 06:18:33', '2023-10-25 06:18:33', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=49', 15, 'acf-field', '', 0),
(50, 1, '2023-10-25 06:18:33', '2023-10-25 06:18:33', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Gallery', 'Gallery_project', 'publish', 'closed', 'closed', '', 'field_6538b3052758c', '', '', '2023-10-25 06:20:04', '2023-10-25 06:20:04', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=50', 17, 'acf-field', '', 0),
(51, 1, '2023-10-25 06:18:33', '2023-10-25 06:18:33', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Gallery Images', 'Gallery_project_images', 'publish', 'closed', 'closed', '', 'field_6538b3052758d', '', '', '2023-10-25 06:18:33', '2023-10-25 06:18:33', '', 50, 'http://localhost:8888/SCT/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 1, '2023-10-25 06:20:04', '2023-10-25 06:20:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Gallery Title', 'gallery_title', 'publish', 'closed', 'closed', '', 'field_6538b389d276e', '', '', '2023-10-25 06:20:04', '2023-10-25 06:20:04', '', 30, 'http://localhost:8888/SCT/?post_type=acf-field&p=52', 16, 'acf-field', '', 0),
(53, 1, '2023-10-25 06:27:46', '2023-10-25 06:27:46', '', '38c007cecd346287242eb3062e4badd1_f1153', '', 'inherit', 'open', 'closed', '', '38c007cecd346287242eb3062e4badd1_f1153', '', '', '2023-10-25 06:27:46', '2023-10-25 06:27:46', '', 29, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/38c007cecd346287242eb3062e4badd1_f1153.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-10-25 06:28:05', '2023-10-25 06:28:05', '', '4dade47e3920e8a49f95499acf7e9b0d_f1153', '', 'inherit', 'open', 'closed', '', '4dade47e3920e8a49f95499acf7e9b0d_f1153', '', '', '2023-10-25 06:28:05', '2023-10-25 06:28:05', '', 29, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/4dade47e3920e8a49f95499acf7e9b0d_f1153.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-10-25 06:29:12', '2023-10-25 06:29:12', '', '576b367b0e4bdfb495ec7eab91339af4_f4910', '', 'inherit', 'open', 'closed', '', '576b367b0e4bdfb495ec7eab91339af4_f4910', '', '', '2023-10-25 06:29:12', '2023-10-25 06:29:12', '', 29, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/576b367b0e4bdfb495ec7eab91339af4_f4910.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2023-10-25 09:49:14', '2023-10-25 09:49:14', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2023-10-25 11:23:23', '2023-10-25 11:23:23', '', 0, 'http://localhost:8888/SCT/?page_id=56', 0, 'page', '', 0),
(57, 1, '2023-10-25 09:49:14', '2023-10-25 09:49:14', '', 'News', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-10-25 09:49:14', '2023-10-25 09:49:14', '', 56, 'http://localhost:8888/SCT/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-10-25 11:01:11', '2023-10-25 11:01:11', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"templates/template-news.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'News Page', 'news-page', 'publish', 'closed', 'closed', '', 'group_6538f56eaeba9', '', '', '2023-10-25 11:23:13', '2023-10-25 11:23:13', '', 0, 'http://localhost:8888/SCT/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2023-10-25 11:01:11', '2023-10-25 11:01:11', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'News Page Title', 'news_page_title', 'publish', 'closed', 'closed', '', 'field_6538f56f81bc3', '', '', '2023-10-25 11:02:52', '2023-10-25 11:02:52', '', 58, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=59', 1, 'acf-field', '', 0),
(60, 1, '2023-10-25 11:02:52', '2023-10-25 11:02:52', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'News Banner', 'news_banner', 'publish', 'closed', 'closed', '', 'field_6538f5add1b28', '', '', '2023-10-25 11:02:52', '2023-10-25 11:02:52', '', 58, 'http://localhost:8888/SCT/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2023-10-25 11:02:52', '2023-10-25 11:02:52', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'News Banner Description', 'news_banner_description', 'publish', 'closed', 'closed', '', 'field_6538f593d1b27', '', '', '2023-10-25 11:02:52', '2023-10-25 11:02:52', '', 58, 'http://localhost:8888/SCT/?post_type=acf-field&p=61', 2, 'acf-field', '', 0),
(62, 1, '2023-10-25 11:02:52', '2023-10-25 11:02:52', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'News Banner Image', 'news_banner_image', 'publish', 'closed', 'closed', '', 'field_6538f5c1d1b29', '', '', '2023-10-25 11:02:52', '2023-10-25 11:02:52', '', 58, 'http://localhost:8888/SCT/?post_type=acf-field&p=62', 3, 'acf-field', '', 0),
(63, 1, '2023-10-25 11:03:54', '2023-10-25 11:03:54', '', 'f1cc1a392946ce158aed41b39c4fdf7f_f2305', '', 'inherit', 'open', 'closed', '', 'f1cc1a392946ce158aed41b39c4fdf7f_f2305', '', '', '2023-10-25 11:03:54', '2023-10-25 11:03:54', '', 56, 'http://localhost:8888/SCT/wp-content/uploads/2023/10/f1cc1a392946ce158aed41b39c4fdf7f_f2305.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-10-25 11:03:59', '2023-10-25 11:03:59', '', 'News', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-10-25 11:03:59', '2023-10-25 11:03:59', '', 56, 'http://localhost:8888/SCT/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-10-25 11:12:26', '2023-10-25 11:12:26', '', 'Scientechnic brings on MTE Corporation as partner', '', 'publish', 'closed', 'closed', '', 'scientechnic-brings-on-mte-corporation-as-partner', '', '', '2023-10-25 11:12:26', '2023-10-25 11:12:26', '', 0, 'http://localhost:8888/SCT/?post_type=news&#038;p=65', 0, 'news', '', 0),
(66, 1, '2022-10-25 11:13:03', '2022-10-25 11:13:03', '', 'MTE Corporation is USA-based power quality expert', '', 'publish', 'closed', 'closed', '', 'mte-corporation-is-usa-based-power-quality-expert', '', '', '2023-10-25 13:07:54', '2023-10-25 13:07:54', '', 0, 'http://localhost:8888/SCT/?post_type=news&#038;p=66', 0, 'news', '', 0),
(67, 1, '2020-10-25 11:13:31', '2020-10-25 11:13:31', '', 'Dubai Euro Group visits Scientechnic headquarters', '', 'publish', 'closed', 'closed', '', 'dubai-euro-group-visits-scientechnic-headquarters', '', '', '2023-10-25 11:43:06', '2023-10-25 11:43:06', '', 0, 'http://localhost:8888/SCT/?post_type=news&#038;p=67', 0, 'news', '', 0),
(68, 1, '2023-10-25 11:21:08', '2023-10-25 11:21:08', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'News Listing Title', 'news_listing_title', 'publish', 'closed', 'closed', '', 'field_6538fa106d4b2', '', '', '2023-10-25 11:23:13', '2023-10-25 11:23:13', '', 58, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=68', 4, 'acf-field', '', 0),
(69, 1, '2023-10-25 11:23:23', '2023-10-25 11:23:23', '', 'News', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-10-25 11:23:23', '2023-10-25 11:23:23', '', 56, 'http://localhost:8888/SCT/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-10-25 11:34:58', '2023-10-25 11:34:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"news\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Single News Page', 'single-news-page', 'publish', 'closed', 'closed', '', 'group_6538fd20086c0', '', '', '2023-10-25 13:05:50', '2023-10-25 13:05:50', '', 0, 'http://localhost:8888/SCT/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2023-10-25 11:34:58', '2023-10-25 11:34:58', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'News Details', 'news_details', 'publish', 'closed', 'closed', '', 'field_6538fd3c4e2f5', '', '', '2023-10-25 11:34:58', '2023-10-25 11:34:58', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2023-10-25 11:34:58', '2023-10-25 11:34:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'News Short Description', 'news_short_description', 'publish', 'closed', 'closed', '', 'field_6538fd204e2f4', '', '', '2023-10-25 11:34:58', '2023-10-25 11:34:58', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2023-10-25 11:34:58', '2023-10-25 11:34:58', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'News List Image', 'news_list_image', 'publish', 'closed', 'closed', '', 'field_6538fd504e2f6', '', '', '2023-10-25 11:34:58', '2023-10-25 11:34:58', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2023-10-25 11:41:50', '2023-10-25 11:41:50', '', '7ee2126940b5667dd84bee5671a1f5fc_f5810 (1)', '', 'inherit', 'open', 'closed', '', '7ee2126940b5667dd84bee5671a1f5fc_f5810-1', '', '', '2023-10-25 11:41:50', '2023-10-25 11:41:50', '', 66, 'http://localhost:8888/SCT/wp-content/uploads/2022/10/7ee2126940b5667dd84bee5671a1f5fc_f5810-1.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2023-10-25 11:50:11', '2023-10-25 11:50:11', '', 'Scientechnic Life Sciences together with partner New England', '', 'publish', 'closed', 'closed', '', 'scientechnic-life-sciences-together-with-partner-new-england', '', '', '2023-10-25 11:50:11', '2023-10-25 11:50:11', '', 0, 'http://localhost:8888/SCT/?post_type=news&#038;p=75', 0, 'news', '', 0),
(76, 1, '2023-10-25 12:45:14', '2023-10-25 12:45:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content One', 'content_one', 'publish', 'closed', 'closed', '', 'field_65390d9026270', '', '', '2023-10-25 12:45:14', '2023-10-25 12:45:14', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&p=76', 3, 'acf-field', '', 0),
(77, 1, '2023-10-25 12:45:14', '2023-10-25 12:45:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content Two', 'content_two', 'publish', 'closed', 'closed', '', 'field_65390daa26271', '', '', '2023-10-25 12:45:14', '2023-10-25 12:45:14', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&p=77', 4, 'acf-field', '', 0),
(78, 1, '2023-10-25 12:45:14', '2023-10-25 12:45:14', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'News Images', 'news_images', 'publish', 'closed', 'closed', '', 'field_65390db826272', '', '', '2023-10-25 13:05:32', '2023-10-25 13:05:32', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=78', 6, 'acf-field', '', 0),
(79, 1, '2023-10-25 12:45:14', '2023-10-25 12:45:14', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'News Image', 'news_image', 'publish', 'closed', 'closed', '', 'field_65390dc926273', '', '', '2023-10-25 12:45:14', '2023-10-25 12:45:14', '', 78, 'http://localhost:8888/SCT/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2023-10-25 12:48:25', '2023-10-25 12:48:25', '', '4f8b9dcf68b36237a7ac9f3dc41da061_f1850', '', 'inherit', 'open', 'closed', '', '4f8b9dcf68b36237a7ac9f3dc41da061_f1850', '', '', '2023-10-25 12:48:25', '2023-10-25 12:48:25', '', 66, 'http://localhost:8888/SCT/wp-content/uploads/2022/10/4f8b9dcf68b36237a7ac9f3dc41da061_f1850.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2023-10-25 12:48:39', '2023-10-25 12:48:39', '', '4fcc8c94e121d85b581a953d3ce781c8_f1269', '', 'inherit', 'open', 'closed', '', '4fcc8c94e121d85b581a953d3ce781c8_f1269-2', '', '', '2023-10-25 12:48:39', '2023-10-25 12:48:39', '', 66, 'http://localhost:8888/SCT/wp-content/uploads/2022/10/4fcc8c94e121d85b581a953d3ce781c8_f1269.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2023-10-25 13:05:32', '2023-10-25 13:05:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:10:\"ui_on_text\";s:4:\"Show\";s:11:\"ui_off_text\";s:4:\"Hide\";s:2:\"ui\";i:1;}', 'Show Hide Images', 'show_hide_images', 'publish', 'closed', 'closed', '', 'field_653912824679a', '', '', '2023-10-25 13:05:50', '2023-10-25 13:05:50', '', 70, 'http://localhost:8888/SCT/?post_type=acf-field&#038;p=82', 5, 'acf-field', '', 0),
(83, 1, '2023-10-25 13:10:40', '2023-10-25 13:10:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Single News Banner', 'single-news-banner', 'publish', 'closed', 'closed', '', 'group_6539134bd34fa', '', '', '2023-10-25 13:10:40', '2023-10-25 13:10:40', '', 0, 'http://localhost:8888/SCT/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2023-10-25 13:10:40', '2023-10-25 13:10:40', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Single News Banner', 'single_news_banner', 'publish', 'closed', 'closed', '', 'field_6539134c2d0d3', '', '', '2023-10-25 13:10:40', '2023-10-25 13:10:40', '', 83, 'http://localhost:8888/SCT/?post_type=acf-field&p=84', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2023-10-25 13:10:40', '2023-10-25 13:10:40', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Single News Banner Image', 'single_news_banner_image', 'publish', 'closed', 'closed', '', 'field_653913782d0d4', '', '', '2023-10-25 13:10:40', '2023-10-25 13:10:40', '', 83, 'http://localhost:8888/SCT/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2023-10-25 13:10:40', '2023-10-25 13:10:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Single News Banner Title', 'single_news_banner_title', 'publish', 'closed', 'closed', '', 'field_6539139c2d0d5', '', '', '2023-10-25 13:10:40', '2023-10-25 13:10:40', '', 83, 'http://localhost:8888/SCT/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2023-10-25 13:10:40', '2023-10-25 13:10:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Single news Banner Description', 'single_news_banner_description', 'publish', 'closed', 'closed', '', 'field_653913ab2d0d6', '', '', '2023-10-25 13:10:40', '2023-10-25 13:10:40', '', 83, 'http://localhost:8888/SCT/?post_type=acf-field&p=87', 3, 'acf-field', '', 0),
(88, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"templates/template-partners.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Hide / Show', 'hide-show', 'publish', 'closed', 'closed', '', 'group_6539084802233', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 0, 'http://localhost:8888/SCT/?p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";s:2:\"ui\";i:1;}', 'Hide / Show', 'hide__show', 'publish', 'closed', 'closed', '', 'field_65390848d4a0f', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 88, 'http://localhost:8888/SCT/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"templates/template-partners.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Partners', 'partners', 'publish', 'closed', 'closed', '', 'group_6538eb766ee3d', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 0, 'http://localhost:8888/SCT/?p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', '', 'publish', 'closed', 'closed', '', 'field_6538eb8dace53', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 90, 'http://localhost:8888/SCT/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(92, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_6538ebb0ace54', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 90, 'http://localhost:8888/SCT/?post_type=acf-field&p=92', 1, 'acf-field', '', 0),
(93, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_6538ebbeace55', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 92, 'http://localhost:8888/SCT/?post_type=acf-field&p=93', 0, 'acf-field', '', 0),
(94, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6538ebe1ace56', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 92, 'http://localhost:8888/SCT/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_6538ebeface57', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 92, 'http://localhost:8888/SCT/?post_type=acf-field&p=95', 2, 'acf-field', '', 0),
(96, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Partners', '', 'publish', 'closed', 'closed', '', 'field_6538f4a8141c5', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 90, 'http://localhost:8888/SCT/?post_type=acf-field&p=96', 2, 'acf-field', '', 0),
(97, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6538f4b0141c6', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 90, 'http://localhost:8888/SCT/?post_type=acf-field&p=97', 3, 'acf-field', '', 0),
(98, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_6538f4c2141c7', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 90, 'http://localhost:8888/SCT/?post_type=acf-field&p=98', 4, 'acf-field', '', 0),
(99, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"partnerss\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Partners Info', 'partners-info', 'publish', 'closed', 'closed', '', 'group_6538f69a39401', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 0, 'http://localhost:8888/SCT/?p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_6538f69af0456', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=100', 0, 'acf-field', '', 0),
(101, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";s:2:\"ui\";i:1;}', 'Link Hide Show', 'link_show_hide', 'publish', 'closed', 'closed', '', 'field_6538f8ae3d81e', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=101', 1, 'acf-field', '', 0),
(102, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Banner Title', 'banner_title', 'publish', 'closed', 'closed', '', 'field_65390f10d8712', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=102', 2, 'acf-field', '', 0),
(103, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Banner Description', 'banner_description', 'publish', 'closed', 'closed', '', 'field_65390f21d8713', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=103', 3, 'acf-field', '', 0),
(104, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_65391073c6c40', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=104', 4, 'acf-field', '', 0),
(105, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_653910bcc6c41', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=105', 5, 'acf-field', '', 0),
(106, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Partners Details', 'partners_details', 'publish', 'closed', 'closed', '', 'field_6539144be9752', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 99, 'http://localhost:8888/SCT/?post_type=acf-field&p=106', 6, 'acf-field', '', 0),
(107, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"normal\";s:6:\"Normal\";s:2:\"bg\";s:10:\"Background\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_65391471e9753', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=107', 0, 'acf-field', '', 0),
(108, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_65391471e9753\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"normal\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Image', 'image_normal', 'publish', 'closed', 'closed', '', 'field_6539149fe9754', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=108', 1, 'acf-field', '', 0),
(109, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_65391471e9753\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"normal\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Title', 'title_normal', 'publish', 'closed', 'closed', '', 'field_653914c7e9755', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=109', 2, 'acf-field', '', 0),
(110, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_65391471e9753\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"normal\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Description', 'description_normal', 'publish', 'closed', 'closed', '', 'field_653914dbe9756', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=110', 3, 'acf-field', '', 0),
(111, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_65391471e9753\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"bg\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Image', 'image_bg', 'publish', 'closed', 'closed', '', 'field_653914fbe9757', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=111', 4, 'acf-field', '', 0),
(112, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_65391471e9753\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"bg\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Title', 'title_bg', 'publish', 'closed', 'closed', '', 'field_6539151ae9758', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=112', 5, 'acf-field', '', 0),
(113, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_65391471e9753\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"bg\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;s:15:\"parent_repeater\";s:19:\"field_6539144be9752\";}', 'Description', 'description_bg', 'publish', 'closed', 'closed', '', 'field_6539152ce9759', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 106, 'http://localhost:8888/SCT/?post_type=acf-field&p=113', 6, 'acf-field', '', 0),
(114, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"templates/template-partners.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'See Also', 'see-also', 'publish', 'closed', 'closed', '', 'group_6538fc96b19e0', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 0, 'http://localhost:8888/SCT/?p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'See Also', 'see_also', 'publish', 'closed', 'closed', '', 'field_6538fc962300e', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 114, 'http://localhost:8888/SCT/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_6538fc962300e\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_6538fe252300f', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 115, 'http://localhost:8888/SCT/?post_type=acf-field&p=116', 0, 'acf-field', '', 0),
(117, 1, '2023-10-25 14:35:19', '2023-10-25 14:35:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:15:\"parent_repeater\";s:19:\"field_6538fc962300e\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6538fe3723010', '', '', '2023-10-25 14:35:19', '2023-10-25 14:35:19', '', 115, 'http://localhost:8888/SCT/?post_type=acf-field&p=117', 1, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'E-mobility', 'e-mobility', 0),
(3, 'Mobility', 'mobility', 0),
(4, 'Building Technology', 'building-technology', 0),
(5, 'Energy Management', 'energy-management', 0),
(6, '2020', '2020', 0),
(7, '2023', '2023', 0),
(8, '2021', '2021', 0),
(9, '2022', '2022', 0),
(10, 'Dubai', 'dubai', 0),
(11, 'Al ain', 'al-ain', 0),
(12, 'oman', 'oman', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 5, 0),
(26, 8, 0),
(26, 10, 0),
(27, 3, 0),
(27, 7, 0),
(27, 11, 0),
(28, 4, 0),
(28, 8, 0),
(28, 12, 0),
(29, 4, 0),
(29, 6, 0),
(29, 10, 0),
(65, 6, 0),
(66, 8, 0),
(67, 6, 0),
(75, 8, 0),
(88, 1, 0),
(90, 1, 0),
(99, 1, 0),
(114, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'bussinessunit', '', 0, 0),
(3, 3, 'bussinessunit', '', 0, 1),
(4, 4, 'bussinessunit', '', 0, 2),
(5, 5, 'bussinessunit', '', 0, 1),
(6, 6, 'year', '', 0, 3),
(7, 7, 'year', '', 0, 1),
(8, 8, 'year', '', 0, 4),
(9, 9, 'year', '', 0, 0),
(10, 10, 'Location', '', 0, 2),
(11, 11, 'Location', '', 0, 1),
(12, 12, 'Location', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'SCTadmin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"ee3b3e59c00e2cc906768c7b0a200c70de0fd0ebe416b95ca17ebbf5a87a1b3b\";a:4:{s:10:\"expiration\";i:1698818390;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36\";s:5:\"login\";i:1697608790;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(19, 1, 'acf_user_settings', 'a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}'),
(20, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1698238122');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'SCTadmin', '$P$BcaQvsu5UCbik.OLJdfc6mFVWd9bAN0', 'sctadmin', 'ramya@pixelflames.com', 'http://localhost:8888/SCT', '2023-10-18 05:59:24', '', 0, 'SCTadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
