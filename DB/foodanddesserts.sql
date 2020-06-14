-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2020 at 08:57 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodanddesserts`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1798, 'Ash', 'vermaash29@gmail.com', '', '192.168.10.1', '2020-06-14 11:20:19', '2020-06-14 11:20:19', 'I just want to see how my comments look like', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '', 0, 0),
(2, 1798, 'Sam Mandes', '1@1.com', '', '192.168.10.1', '2020-06-14 11:20:52', '2020-06-14 11:20:52', 'Hmm Sounds good. Need a little work though', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '', 1, 0),
(3, 1798, 'Sam Mandes', '1@1.com', '', '192.168.10.1', '2020-06-14 11:22:32', '2020-06-14 11:22:32', 'Allrighty', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '', 2, 0),
(4, 1798, 'Sam Raimi', '1@1.com', '', '192.168.10.1', '2020-06-14 11:22:50', '2020-06-14 11:22:50', 'How deep does the rabbit hole goes ?', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '', 3, 0),
(5, 1798, 'Chris Nolan', '1@1.com', '', '192.168.10.1', '2020-06-14 11:23:06', '2020-06-14 11:23:06', 'So far it keeps going', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '', 4, 0),
(6, 1798, 'Joaqin Pheonix', '1@1.com', '', '192.168.10.1', '2020-06-14 11:23:30', '2020-06-14 11:23:30', 'Ahh It just stopped', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:77.0) Gecko/20100101 Firefox/77.0', '', 0, 0);

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
(1, 'siteurl', 'http://foodanddesserts.com', 'yes'),
(2, 'home', 'http://foodanddesserts.com', 'yes'),
(3, 'blogname', 'Food and Desserts', 'yes'),
(4, 'blogdescription', 'Deliciousness jumping into the mouth.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ash@izoninc.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '12', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '12', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:25:\"add-to-any/add-to-any.php\";i:1;s:39:\"categories-images/categories-images.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'foodanddesserts', 'yes'),
(41, 'stylesheet', 'foodanddesserts', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:5:{i:0;i:1766;i:1;i:1801;i:2;i:1796;i:3;i:1797;i:4;i:1798;}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '14', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1602831634', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:14:\"Latest Recipes\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:12:\"categories-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:15:\"custom-side-bar\";a:4:{i:0;s:14:\"recent-posts-3\";i:1;s:13:\"custom_html-2\";i:2;s:12:\"categories-3\";i:3;s:8:\"search-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1592139635;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1592161235;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1592204434;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592204458;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592204460;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'bo&WCbL :T7/|ev3qYfOz2GgqpcN.RMX`38uHZJ++&N|:,mhKM3!*Sf*lq*@.bDr', 'no'),
(111, 'nonce_salt', 'sbC:2?/Kg;+-oJ%J5xFQ.EL0|+ujTY}@%9?@xQ4O/vk;3[-@!A17Fw~0nrZ1G{Z(', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:13:\"Follow Us On:\";s:7:\"content\";s:5011:\"<ul class=\"social-menu footer-social reset-list-style social-icons fill-children-current-color\">\r\n\r\n						<li id=\"menu-item-27\" class=\"menu-item menu-item-type-custom menu-item-object-custom menu-item-27\"><a href=\"https://www.facebook.com/wordpress\"><span class=\"screen-reader-text\">Facebook</span><svg class=\"svg-icon\" aria-hidden=\"true\" role=\"img\" focusable=\"false\" width=\"24\" height=\"24\" viewbox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M12 2C6.5 2 2 6.5 2 12c0 5 3.7 9.1 8.4 9.9v-7H7.9V12h2.5V9.8c0-2.5 1.5-3.9 3.8-3.9 1.1 0 2.2.2 2.2.2v2.5h-1.3c-1.2 0-1.6.8-1.6 1.6V12h2.8l-.4 2.9h-2.3v7C18.3 21.1 22 17 22 12c0-5.5-4.5-10-10-10z\"></path></svg></a></li>\r\n<li id=\"menu-item-28\" class=\"menu-item menu-item-type-custom menu-item-object-custom menu-item-28\"><a href=\"https://twitter.com/wordpress\"><span class=\"screen-reader-text\">Twitter</span><svg class=\"svg-icon\" aria-hidden=\"true\" role=\"img\" focusable=\"false\" width=\"24\" height=\"24\" viewbox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z\"></path></svg></a></li>\r\n<li id=\"menu-item-29\" class=\"menu-item menu-item-type-custom menu-item-object-custom menu-item-29\"><a href=\"https://www.instagram.com/explore/tags/wordcamp/\"><span class=\"screen-reader-text\">Instagram</span><svg class=\"svg-icon\" aria-hidden=\"true\" role=\"img\" focusable=\"false\" width=\"24\" height=\"24\" viewbox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M12,4.622c2.403,0,2.688,0.009,3.637,0.052c0.877,0.04,1.354,0.187,1.671,0.31c0.42,0.163,0.72,0.358,1.035,0.673 c0.315,0.315,0.51,0.615,0.673,1.035c0.123,0.317,0.27,0.794,0.31,1.671c0.043,0.949,0.052,1.234,0.052,3.637 s-0.009,2.688-0.052,3.637c-0.04,0.877-0.187,1.354-0.31,1.671c-0.163,0.42-0.358,0.72-0.673,1.035 c-0.315,0.315-0.615,0.51-1.035,0.673c-0.317,0.123-0.794,0.27-1.671,0.31c-0.949,0.043-1.233,0.052-3.637,0.052 s-2.688-0.009-3.637-0.052c-0.877-0.04-1.354-0.187-1.671-0.31c-0.42-0.163-0.72-0.358-1.035-0.673 c-0.315-0.315-0.51-0.615-0.673-1.035c-0.123-0.317-0.27-0.794-0.31-1.671C4.631,14.688,4.622,14.403,4.622,12 s0.009-2.688,0.052-3.637c0.04-0.877,0.187-1.354,0.31-1.671c0.163-0.42,0.358-0.72,0.673-1.035 c0.315-0.315,0.615-0.51,1.035-0.673c0.317-0.123,0.794-0.27,1.671-0.31C9.312,4.631,9.597,4.622,12,4.622 M12,3 C9.556,3,9.249,3.01,8.289,3.054C7.331,3.098,6.677,3.25,6.105,3.472C5.513,3.702,5.011,4.01,4.511,4.511 c-0.5,0.5-0.808,1.002-1.038,1.594C3.25,6.677,3.098,7.331,3.054,8.289C3.01,9.249,3,9.556,3,12c0,2.444,0.01,2.751,0.054,3.711 c0.044,0.958,0.196,1.612,0.418,2.185c0.23,0.592,0.538,1.094,1.038,1.594c0.5,0.5,1.002,0.808,1.594,1.038 c0.572,0.222,1.227,0.375,2.185,0.418C9.249,20.99,9.556,21,12,21s2.751-0.01,3.711-0.054c0.958-0.044,1.612-0.196,2.185-0.418 c0.592-0.23,1.094-0.538,1.594-1.038c0.5-0.5,0.808-1.002,1.038-1.594c0.222-0.572,0.375-1.227,0.418-2.185 C20.99,14.751,21,14.444,21,12s-0.01-2.751-0.054-3.711c-0.044-0.958-0.196-1.612-0.418-2.185c-0.23-0.592-0.538-1.094-1.038-1.594 c-0.5-0.5-1.002-0.808-1.594-1.038c-0.572-0.222-1.227-0.375-2.185-0.418C14.751,3.01,14.444,3,12,3L12,3z M12,7.378 c-2.552,0-4.622,2.069-4.622,4.622S9.448,16.622,12,16.622s4.622-2.069,4.622-4.622S14.552,7.378,12,7.378z M12,15 c-1.657,0-3-1.343-3-3s1.343-3,3-3s3,1.343,3,3S13.657,15,12,15z M16.804,6.116c-0.596,0-1.08,0.484-1.08,1.08 s0.484,1.08,1.08,1.08c0.596,0,1.08-0.484,1.08-1.08S17.401,6.116,16.804,6.116z\"></path></svg></a></li>\r\n<li id=\"menu-item-30\" class=\"menu-item menu-item-type-custom menu-item-object-custom menu-item-30\"><a href=\"https://www.youtube.com\"><span class=\"screen-reader-text\">Youtube</span><svg class=\"svg-icon\" aria-hidden=\"true\" role=\"img\" focusable=\"false\" width=\"24\" height=\"24\" viewbox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M21.8,8.001c0,0-0.195-1.378-0.795-1.985c-0.76-0.797-1.613-0.801-2.004-0.847c-2.799-0.202-6.997-0.202-6.997-0.202 h-0.009c0,0-4.198,0-6.997,0.202C4.608,5.216,3.756,5.22,2.995,6.016C2.395,6.623,2.2,8.001,2.2,8.001S2,9.62,2,11.238v1.517 c0,1.618,0.2,3.237,0.2,3.237s0.195,1.378,0.795,1.985c0.761,0.797,1.76,0.771,2.205,0.855c1.6,0.153,6.8,0.201,6.8,0.201 s4.203-0.006,7.001-0.209c0.391-0.047,1.243-0.051,2.004-0.847c0.6-0.607,0.795-1.985,0.795-1.985s0.2-1.618,0.2-3.237v-1.517 C22,9.62,21.8,8.001,21.8,8.001z M9.935,14.594l-0.001-5.62l5.404,2.82L9.935,14.594z\"></path></svg></a></li>\r\n\r\n					</ul>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-rollback-0.zip\";}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1592122947;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1592122950;s:7:\"checked\";a:1:{s:15:\"foodanddesserts\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'auth_key', 'OC7:6s@Gisi -RT)u6ZTR;55d`deTcg{44wG}ioEN<v?7Oa?|J@X;10qzgsw.{{!', 'no'),
(124, 'auth_salt', 'KE}r&?7y-guc#3l(/+0Xl]@!cn#Gop)G9F$uPM4]b=5C-3]/A.}d;O|:V6N@dtK7', 'no'),
(125, 'logged_in_key', 'r$2FK^YMJOT_(pMI;,btBELWSL%u&ZjU6O`<KoCaKX)t~X>N!0wgAU5/jI[hn;CZ', 'no'),
(126, 'logged_in_salt', '`x^4A)igKm4<D]8_vGgosPPR4szYTYePA)R_zO4j?T2Cs9nH|Kqu/(|@RG:OlU{W', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587279683;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'current_theme', 'Food and Desserts', 'yes'),
(147, 'theme_mods_foodanddesserts', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:8:\"expanded\";i:0;s:6:\"social\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"retina_logo\";b:1;s:15:\"show_author_bio\";b:0;s:12:\"blog_content\";s:7:\"summary\";s:31:\"cover_template_fixed_background\";b:0;s:11:\"custom_logo\";i:1857;s:17:\"accent_hue_active\";s:7:\"default\";s:10:\"accent_hue\";i:344;s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#d61347\";s:10:\"background\";s:7:\"#f5efe0\";s:7:\"borders\";s:7:\"#d7cfab\";s:9:\"secondary\";s:7:\"#69603e\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#e22658\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'recently_activated', 'a:0:{}', 'yes'),
(164, 'category_post_slider_option_name', 'a:31:{s:11:\"slide_speed\";s:3:\"500\";s:10:\"auto_start\";s:4:\"true\";s:11:\"enable_loop\";s:4:\"true\";s:14:\"pause_on_hover\";s:5:\"false\";s:15:\"enable_keypress\";s:5:\"false\";s:22:\"next_previous_controls\";s:4:\"true\";s:10:\"navigation\";s:4:\"true\";s:15:\"navigation_type\";s:4:\"true\";s:12:\"enable_touch\";s:4:\"true\";s:11:\"enable_drag\";s:4:\"true\";s:13:\"enable_author\";s:4:\"true\";s:11:\"enable_date\";s:4:\"true\";s:12:\"enable_title\";s:4:\"true\";s:14:\"enable_content\";s:4:\"true\";s:16:\"enable_read_more\";s:4:\"true\";s:18:\"content_word_limit\";s:2:\"15\";s:16:\"title_word_limit\";s:1:\"5\";s:23:\"content_container_width\";s:2:\"50\";s:26:\"content_container_position\";s:5:\"right\";s:34:\"content_container_background_color\";s:7:\"#000000\";s:13:\"content_color\";s:7:\"#ffffff\";s:11:\"title_color\";s:7:\"#44dd6b\";s:17:\"date_author_color\";s:7:\"#ffffff\";s:26:\"read_more_background_color\";s:7:\"#000000\";s:32:\"read_more_hover_background_color\";s:7:\"#ff0000\";s:20:\"read_more_text_color\";s:7:\"#ffffff\";s:26:\"read_more_hover_text_color\";s:7:\"#ffffff\";s:22:\"read_more_border_color\";s:7:\"#ffffff\";s:28:\"read_more_hover_border_color\";s:7:\"#ffffff\";s:36:\"content_container_background_opacity\";s:3:\"0.8\";s:13:\"slider_height\";s:3:\"450\";}', 'yes'),
(176, 'wpos_anylc_redirect', '', 'yes'),
(177, 'wpos_anylc_site_uid', 'a28d4073f59394928d048523dba91178', 'yes'),
(178, 'wpos_anylc_pdt_18', 'a:1:{s:6:\"status\";i:2;}', 'yes'),
(336, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"3\",\"critical\":\"1\"}', 'yes'),
(343, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1592134074;s:7:\"checked\";a:3:{s:25:\"add-to-any/add-to-any.php\";s:6:\"1.7.41\";s:39:\"categories-images/categories-images.php\";s:5:\"3.0.1\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:25:\"add-to-any/add-to-any.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/add-to-any\";s:4:\"slug\";s:10:\"add-to-any\";s:6:\"plugin\";s:25:\"add-to-any/add-to-any.php\";s:11:\"new_version\";s:6:\"1.7.41\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/add-to-any/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/add-to-any.1.7.41.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/add-to-any/assets/icon-256x256.png?rev=972738\";s:2:\"1x\";s:54:\"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738\";s:3:\"svg\";s:54:\"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/add-to-any/assets/banner-1544x500.png?rev=2167358\";s:2:\"1x\";s:65:\"https://ps.w.org/add-to-any/assets/banner-772x250.png?rev=2167357\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"categories-images/categories-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/categories-images\";s:4:\"slug\";s:17:\"categories-images\";s:6:\"plugin\";s:39:\"categories-images/categories-images.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/categories-images/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/categories-images.3.0.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/categories-images/assets/icon-128x128.png?rev=2256871\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(364, 'duplicate_post_copytitle', '1', 'yes'),
(365, 'duplicate_post_copydate', '0', 'yes'),
(366, 'duplicate_post_copystatus', '0', 'yes'),
(367, 'duplicate_post_copyslug', '0', 'yes'),
(368, 'duplicate_post_copyexcerpt', '1', 'yes'),
(369, 'duplicate_post_copycontent', '1', 'yes'),
(370, 'duplicate_post_copythumbnail', '1', 'yes'),
(371, 'duplicate_post_copytemplate', '1', 'yes'),
(372, 'duplicate_post_copyformat', '1', 'yes'),
(373, 'duplicate_post_copyauthor', '0', 'yes'),
(374, 'duplicate_post_copypassword', '0', 'yes'),
(375, 'duplicate_post_copyattachments', '0', 'yes'),
(376, 'duplicate_post_copychildren', '0', 'yes'),
(377, 'duplicate_post_copycomments', '0', 'yes'),
(378, 'duplicate_post_copymenuorder', '1', 'yes'),
(379, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(380, 'duplicate_post_blacklist', '', 'yes'),
(381, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(382, 'duplicate_post_show_row', '1', 'yes'),
(383, 'duplicate_post_show_adminbar', '1', 'yes'),
(384, 'duplicate_post_show_submitbox', '1', 'yes'),
(385, 'duplicate_post_show_bulkactions', '1', 'yes'),
(386, 'duplicate_post_show_original_column', '0', 'yes'),
(387, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(388, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(389, 'duplicate_post_version', '3.2.4', 'yes'),
(390, 'duplicate_post_show_notice', '1', 'no'),
(401, 'z_taxonomy_image197', 'http://foodanddesserts.com/wp-content/uploads/2011/07/100_5540.jpg', 'no'),
(403, 'z_taxonomy_image198', 'http://foodanddesserts.com/wp-content/uploads/2011/01/canola2.jpg', 'no'),
(405, 'z_taxonomy_image196', 'http://foodanddesserts.com/wp-content/uploads/2011/01/dsc20050813_115856_52.jpg', 'no'),
(408, 'z_taxonomy_image199', 'http://foodanddesserts.com/wp-content/uploads/2011/07/100_5478.jpg', 'no'),
(410, 'z_taxonomy_image195', 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc03149.jpg', 'no'),
(417, 'recovery_mode_email_last_sent', '1589826608', 'yes'),
(428, 'z_taxonomy_image1', 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc20050102_192118_51.jpg', 'no'),
(429, 'category_children', 'a:0:{}', 'yes'),
(462, 'widget_total_soft_gallery_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(492, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1592581783', 'no'),
(493, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(494, '_site_transient_timeout_browser_1880f050ca30a08eb08fe4883e373856', '1592581988', 'no'),
(495, '_site_transient_browser_1880f050ca30a08eb08fe4883e373856', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.97\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(553, '_site_transient_timeout_theme_roots', '1592124749', 'no'),
(554, '_site_transient_theme_roots', 'a:1:{s:15:\"foodanddesserts\";s:7:\"/themes\";}', 'no'),
(568, 'widget_a2a_share_save_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(569, 'widget_a2a_follow_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(570, 'addtoany_options', 'a:34:{s:8:\"position\";s:6:\"bottom\";s:30:\"display_in_posts_on_front_page\";s:1:\"1\";s:33:\"display_in_posts_on_archive_pages\";s:1:\"1\";s:19:\"display_in_excerpts\";s:2:\"-1\";s:16:\"display_in_posts\";s:1:\"1\";s:16:\"display_in_pages\";s:2:\"-1\";s:22:\"display_in_attachments\";s:2:\"-1\";s:15:\"display_in_feed\";s:1:\"1\";s:7:\"onclick\";s:2:\"-1\";s:9:\"icon_size\";s:2:\"32\";s:7:\"icon_bg\";s:6:\"custom\";s:13:\"icon_bg_color\";s:7:\"#8f9094\";s:7:\"icon_fg\";s:8:\"original\";s:13:\"icon_fg_color\";s:7:\"#ffffff\";s:6:\"button\";s:4:\"NONE\";s:13:\"button_custom\";s:0:\"\";s:17:\"button_show_count\";s:2:\"-1\";s:6:\"header\";s:9:\"Share On:\";s:23:\"additional_js_variables\";s:0:\"\";s:14:\"additional_css\";s:0:\"\";s:12:\"custom_icons\";s:2:\"-1\";s:16:\"custom_icons_url\";s:1:\"/\";s:17:\"custom_icons_type\";s:3:\"png\";s:18:\"custom_icons_width\";s:0:\"\";s:19:\"custom_icons_height\";s:0:\"\";s:5:\"cache\";s:2:\"-1\";s:11:\"button_text\";s:5:\"Share\";s:24:\"special_facebook_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:25:\"special_pinterest_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:22:\"special_reddit_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:15:\"active_services\";a:8:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:9:\"pinterest\";i:3;s:5:\"email\";i:4;s:8:\"whatsapp\";i:5;s:6:\"reddit\";i:6;s:18:\"facebook_messenger\";i:7;s:9:\"copy_link\";}s:29:\"special_facebook_like_options\";a:2:{s:10:\"show_count\";s:2:\"-1\";s:4:\"verb\";s:4:\"like\";}s:29:\"special_twitter_tweet_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:29:\"special_pinterest_pin_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}}', 'yes');

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
(3, 5, '_wp_attached_file', '2020/04/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/04/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'foodanddesserts'),
(9, 6, '_customize_changeset_uuid', 'd6ba83ca-42ae-4c47-8378-50c5bebd930a'),
(15, 9, '_customize_changeset_uuid', 'd6ba83ca-42ae-4c47-8378-50c5bebd930a'),
(17, 11, '_wp_attached_file', '2020/04/Logo.png'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:297;s:4:\"file\";s:16:\"2020/04/Logo.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Logo-300x115.png\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"Logo-768x294.png\";s:5:\"width\";i:768;s:6:\"height\";i:294;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 12, '_wp_attached_file', '2020/04/cropped-Logo.png'),
(20, 12, '_wp_attachment_context', 'custom-logo'),
(21, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:272;s:4:\"file\";s:24:\"2020/04/cropped-Logo.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-Logo-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"cropped-Logo-768x270.png\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 13, '_wp_attached_file', '2020/04/Site-Icon.png'),
(23, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:396;s:6:\"height\";i:396;s:4:\"file\";s:21:\"2020/04/Site-Icon.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Site-Icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Site-Icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 14, '_wp_attached_file', '2020/04/cropped-Site-Icon.png'),
(25, 14, '_wp_attachment_context', 'site-icon'),
(26, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2020/04/cropped-Site-Icon.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-Site-Icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-Site-Icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-Site-Icon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-Site-Icon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-Site-Icon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-Site-Icon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 19, '_menu_item_type', 'custom'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '19'),
(30, 19, '_menu_item_object', 'custom'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', 'http://foodanddesserts.com/'),
(59, 23, '_menu_item_type', 'custom'),
(60, 23, '_menu_item_menu_item_parent', '0'),
(61, 23, '_menu_item_object_id', '23'),
(62, 23, '_menu_item_object', 'custom'),
(63, 23, '_menu_item_target', ''),
(64, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 23, '_menu_item_xfn', ''),
(66, 23, '_menu_item_url', 'http://foodanddesserts.com/'),
(75, 25, '_menu_item_type', 'post_type'),
(76, 25, '_menu_item_menu_item_parent', '0'),
(77, 25, '_menu_item_object_id', '9'),
(78, 25, '_menu_item_object', 'page'),
(79, 25, '_menu_item_target', ''),
(80, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 25, '_menu_item_xfn', ''),
(82, 25, '_menu_item_url', ''),
(91, 27, '_menu_item_type', 'custom'),
(92, 27, '_menu_item_menu_item_parent', '0'),
(93, 27, '_menu_item_object_id', '27'),
(94, 27, '_menu_item_object', 'custom'),
(95, 27, '_menu_item_target', ''),
(96, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 27, '_menu_item_xfn', ''),
(98, 27, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(99, 28, '_menu_item_type', 'custom'),
(100, 28, '_menu_item_menu_item_parent', '0'),
(101, 28, '_menu_item_object_id', '28'),
(102, 28, '_menu_item_object', 'custom'),
(103, 28, '_menu_item_target', ''),
(104, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 28, '_menu_item_xfn', ''),
(106, 28, '_menu_item_url', 'https://twitter.com/wordpress'),
(107, 29, '_menu_item_type', 'custom'),
(108, 29, '_menu_item_menu_item_parent', '0'),
(109, 29, '_menu_item_object_id', '29'),
(110, 29, '_menu_item_object', 'custom'),
(111, 29, '_menu_item_target', ''),
(112, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 29, '_menu_item_xfn', ''),
(114, 29, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(115, 30, '_menu_item_type', 'custom'),
(116, 30, '_menu_item_menu_item_parent', '0'),
(117, 30, '_menu_item_object_id', '30'),
(118, 30, '_menu_item_object', 'custom'),
(119, 30, '_menu_item_target', ''),
(120, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 30, '_menu_item_xfn', ''),
(122, 30, '_menu_item_url', 'https://www.youtube.com'),
(125, 6, '_edit_lock', '1592055761:1'),
(142, 611, '_wp_attached_file', '2011/01/canola2.jpg'),
(143, 611, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:19:\"2011/01/canola2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"canola2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"canola2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:18:\"Canon PowerShot G2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1094915268\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:7:\"16.8125\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 611, '_wp_attachment_image_alt', 'canola'),
(145, 611, '_wp_attachment_image_alt', 'canola'),
(146, 611, '_attachment_original_parent_id', '555'),
(147, 616, '_wp_attached_file', '2011/01/dsc20050727_091048_222.jpg'),
(148, 616, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:34:\"2011/01/dsc20050727_091048_222.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20050727_091048_222-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20050727_091048_222-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1122455448\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 616, '_wp_attachment_image_alt', 'dsc20050727_091048_222'),
(150, 616, '_wp_attachment_image_alt', 'dsc20050727_091048_222'),
(151, 616, '_attachment_original_parent_id', '555'),
(152, 617, '_wp_attached_file', '2011/01/dsc20050813_115856_52.jpg'),
(153, 617, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:33:\"2011/01/dsc20050813_115856_52.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"dsc20050813_115856_52-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"dsc20050813_115856_52-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1123934337\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 617, '_wp_attachment_image_alt', 'dsc20050813_115856_52'),
(155, 617, '_wp_attachment_image_alt', 'dsc20050813_115856_52'),
(156, 617, '_attachment_original_parent_id', '555'),
(159, 754, '_wp_attached_file', '2011/07/100_5478.jpg'),
(160, 754, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/100_5478.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"100_5478-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"100_5478-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"100_5478-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"100_5478-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"100_5478-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"100_5478-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:32:\"KODAK DX7590 ZOOM DIGITAL CAMERA\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1145694068\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"17.5\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(161, 754, '_wp_attachment_image_alt', 'Bell on Wharf'),
(162, 754, '_wp_attachment_image_alt', 'Bell on Wharf'),
(163, 754, '_attachment_original_parent_id', '555'),
(164, 755, '_wp_attached_file', '2011/07/100_5540.jpg'),
(165, 755, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/100_5540.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"100_5540-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"100_5540-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"100_5540-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"100_5540-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"100_5540-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"100_5540-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:32:\"KODAK DX7590 ZOOM DIGITAL CAMERA\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1145697622\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.3\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(166, 755, '_wp_attachment_image_alt', 'Golden Gate Bridge'),
(167, 755, '_wp_attachment_image_alt', 'Golden Gate Bridge'),
(168, 755, '_attachment_original_parent_id', '555'),
(169, 756, '_wp_attached_file', '2011/07/cep00032.jpg'),
(170, 756, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/cep00032.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"cep00032-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"cep00032-1024x819.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"cep00032-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"cep00032-768x614.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"cep00032-1200x960.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon ELURA90\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1130775264\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:8:\"0.002091\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(171, 756, '_wp_attachment_image_alt', 'Sunburst Over River'),
(172, 756, '_wp_attachment_image_alt', 'Sunburst Over River'),
(173, 756, '_attachment_original_parent_id', '555'),
(174, 757, '_wp_attached_file', '2011/07/dcp_2082.jpg'),
(175, 757, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:20:\"2011/07/dcp_2082.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dcp_2082-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"dcp_2082-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dcp_2082-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"dcp_2082-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"dcp_2082-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"dcp_2082-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:32:\"KODAK DX4900 ZOOM DIGITAL CAMERA\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1054666444\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"7.3\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(176, 757, '_wp_attachment_image_alt', 'Boardwalk'),
(177, 757, '_wp_attachment_image_alt', 'Boardwalk'),
(178, 757, '_attachment_original_parent_id', '555'),
(179, 758, '_wp_attached_file', '2011/07/dsc03149.jpg'),
(180, 758, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:20:\"2011/07/dsc03149.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dsc03149-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"dsc03149-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dsc03149-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"dsc03149-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"dsc03149-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1034618291\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(181, 758, '_wp_attachment_image_alt', 'Yachtsody in Blue'),
(182, 758, '_wp_attachment_image_alt', 'Yachtsody in Blue'),
(183, 758, '_attachment_original_parent_id', '555'),
(184, 759, '_wp_attached_file', '2011/07/dsc04563.jpg'),
(185, 759, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/dsc04563.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dsc04563-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"dsc04563-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dsc04563-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"dsc04563-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"dsc04563-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"dsc04563-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1040567677\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"48.5\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(186, 759, '_wp_attachment_image_alt', 'Rain Ripples'),
(187, 759, '_wp_attachment_image_alt', 'Rain Ripples'),
(188, 759, '_attachment_original_parent_id', '555'),
(189, 760, '_wp_attached_file', '2011/07/dsc09114.jpg'),
(190, 760, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/dsc09114.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dsc09114-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"dsc09114-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dsc09114-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"dsc09114-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"dsc09114-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"dsc09114-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1067174771\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"11.8\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(191, 760, '_wp_attachment_image_alt', 'Sydney Harbor Bridge'),
(192, 760, '_wp_attachment_image_alt', 'Sydney Harbor Bridge'),
(193, 760, '_attachment_original_parent_id', '555'),
(194, 761, '_wp_attached_file', '2011/07/dsc20050102_192118_51.jpg'),
(195, 761, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:33:\"2011/07/dsc20050102_192118_51.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"dsc20050102_192118_51-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"dsc20050102_192118_51-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"dsc20050102_192118_51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"dsc20050102_192118_51-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"dsc20050102_192118_51-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20050102_192118_51-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1104693678\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"33.3\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(196, 761, '_wp_attachment_image_alt', 'Wind Farm'),
(197, 761, '_wp_attachment_image_alt', 'Wind Farm'),
(198, 761, '_attachment_original_parent_id', '555'),
(199, 762, '_wp_attached_file', '2011/07/dsc20051220_160808_102.jpg'),
(200, 762, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:34:\"2011/07/dsc20051220_160808_102.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"dsc20051220_160808_102-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"dsc20051220_160808_102-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"dsc20051220_160808_102-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"dsc20051220_160808_102-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 10D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1135094888\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(201, 762, '_wp_attachment_image_alt', 'Antique Farm Machinery'),
(202, 762, '_wp_attachment_image_alt', 'Antique Farm Machinery'),
(203, 762, '_attachment_original_parent_id', '555'),
(204, 763, '_wp_attached_file', '2011/07/dsc02085.jpg'),
(205, 763, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/dsc02085.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dsc02085-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"dsc02085-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dsc02085-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"dsc02085-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"dsc02085-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"dsc02085-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"DSC-S930\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1288861799\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.4\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(206, 763, '_wp_attachment_image_alt', 'Orange Iris'),
(207, 763, '_wp_attachment_image_alt', 'Orange Iris'),
(208, 763, '_attachment_original_parent_id', '555'),
(209, 764, '_wp_attached_file', '2011/07/dsc20051220_173257_119.jpg'),
(210, 764, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:34:\"2011/07/dsc20051220_173257_119.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20051220_173257_119-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"dsc20051220_173257_119-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20051220_173257_119-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"dsc20051220_173257_119-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"dsc20051220_173257_119-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"dsc20051220_173257_119-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 10D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1135099977\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:18:\"0.0013333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(211, 764, '_wp_attachment_image_alt', 'Rusty Rail'),
(212, 764, '_wp_attachment_image_alt', 'Rusty Rail'),
(213, 764, '_attachment_original_parent_id', '555'),
(214, 765, '_wp_attached_file', '2011/07/dscn3316.jpg'),
(215, 765, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/dscn3316.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"dscn3316-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"dscn3316-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"dscn3316-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"dscn3316-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"dscn3316-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"dscn3316-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"E4300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1170775967\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"8\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0045454545454545\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(216, 765, '_wp_attachment_image_alt', 'Sea and Rocks'),
(217, 765, '_wp_attachment_image_alt', 'Sea and Rocks'),
(218, 765, '_attachment_original_parent_id', '555'),
(219, 766, '_wp_attached_file', '2011/07/michelle_049.jpg'),
(220, 766, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:24:\"2011/07/michelle_049.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"michelle_049-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"michelle_049-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"michelle_049-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"michelle_049-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"michelle_049-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"michelle_049-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:18:\"Canon PowerShot G3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1096133874\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:7:\"15.8125\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(221, 766, '_wp_attachment_image_alt', 'Big Sur'),
(222, 766, '_wp_attachment_image_alt', 'Big Sur'),
(223, 766, '_attachment_original_parent_id', '555'),
(224, 767, '_wp_attached_file', '2011/07/windmill.jpg'),
(225, 767, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2011/07/windmill.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"windmill-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"windmill-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"windmill-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"windmill-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"windmill-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"windmill-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"DiMAGE 7\";s:7:\"caption\";s:7:\"DCF 1.0\";s:17:\"created_timestamp\";s:10:\"1125077631\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:11:\"50.69140625\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0055555555555556\";s:5:\"title\";s:7:\"DCF 1.0\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(226, 767, '_wp_attachment_image_alt', 'Windmill'),
(227, 767, '_wp_attachment_image_alt', 'Windmill'),
(228, 767, '_attachment_original_parent_id', '555'),
(229, 768, '_wp_attached_file', '2011/07/img_0513-1.jpg'),
(230, 768, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:22:\"2011/07/img_0513-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"img_0513-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"img_0513-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"img_0513-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:10:\"Picasa 2.0\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:32:\"Alas! I have found my Shangri-La\";s:17:\"created_timestamp\";s:10:\"1158217614\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:32:\"Alas! I have found my Shangri-La\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 768, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(232, 768, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(233, 768, '_attachment_original_parent_id', '555'),
(234, 769, '_wp_attached_file', '2011/07/img_0747.jpg'),
(235, 769, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:20:\"2011/07/img_0747.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_0747-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img_0747-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_0747-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_0747-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"img_0747-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"img_0747-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"11\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1271654325\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:7:\"0.00125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(236, 769, '_wp_attachment_image_alt', 'Brazil Beach'),
(237, 769, '_wp_attachment_image_alt', 'Brazil Beach'),
(238, 769, '_attachment_original_parent_id', '555'),
(239, 770, '_wp_attached_file', '2011/07/img_0767.jpg'),
(240, 770, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:20:\"2011/07/img_0767.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_0767-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_0767-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_0767-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:10:\"Picasa 2.6\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1158320386\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 770, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(242, 770, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(243, 770, '_attachment_original_parent_id', '555'),
(244, 771, '_wp_attached_file', '2011/07/img_8399.jpg'),
(245, 771, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:20:\"2011/07/img_8399.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_8399-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img_8399-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_8399-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_8399-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"img_8399-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"img_8399-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:26:\"Canon EOS DIGITAL REBEL XT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1192368714\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"75\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(246, 771, '_wp_attachment_image_alt', 'Boat Barco Texture'),
(247, 771, '_wp_attachment_image_alt', 'Boat Barco Texture'),
(248, 771, '_attachment_original_parent_id', '555'),
(249, 807, '_wp_attached_file', '2012/06/dsc20040724_152504_532.jpg'),
(250, 807, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:34:\"2012/06/dsc20040724_152504_532.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20040724_152504_532-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20040724_152504_532-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1090682704\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 807, '_attachment_original_parent_id', '555'),
(252, 811, '_wp_attached_file', '2012/06/dsc20050604_133440_34211.jpg'),
(253, 811, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:36:\"2012/06/dsc20050604_133440_34211.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"dsc20050604_133440_34211-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"dsc20050604_133440_34211-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1117892080\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 811, '_attachment_original_parent_id', '555'),
(255, 821, '_wp_attached_file', '2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3'),
(256, 821, '_wp_attachment_metadata', 'a:20:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:128000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.09070294784580499;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:3043247;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:190;s:16:\"length_formatted\";s:4:\"3:10\";s:7:\"comment\";s:4:\"None\";s:4:\"year\";s:4:\"1921\";s:5:\"title\";s:22:\"St. Louis Blues (1921)\";s:6:\"artist\";s:44:\"Original Dixieland Jazz Band with Al Bernard\";s:5:\"genre\";s:12:\"Acoustic Era\";s:5:\"album\";s:12:\"Victor-18772\";}'),
(257, 827, '_wp_attached_file', '2012/07/manhattansummer.jpg'),
(258, 827, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:27:\"2012/07/manhattansummer.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"manhattansummer-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"manhattansummer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"C990Z,D490Z\";s:7:\"caption\";s:22:\"OLYMPUS DIGITAL CAMERA\";s:17:\"created_timestamp\";s:10:\"1089358496\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"5.6\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.076923076923077\";s:5:\"title\";s:22:\"OLYMPUS DIGITAL CAMERA\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 967, '_wp_attached_file', '2013/03/image-alignment-580x300-1.jpg'),
(260, 967, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2013/03/image-alignment-580x300-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"image-alignment-580x300-1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"image-alignment-580x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 967, 'pre_import_post_parent', '0'),
(262, 967, 'pre_import_post_id', '906'),
(263, 967, '_wp_attachment_image_alt', 'Image Alignment 580x300'),
(264, 967, '_attachment_original_parent_id', '903'),
(265, 968, '_wp_attached_file', '2013/03/image-alignment-150x150-1.jpg'),
(266, 968, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:37:\"2013/03/image-alignment-150x150-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"image-alignment-150x150-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 968, 'pre_import_post_parent', '0'),
(268, 968, 'pre_import_post_id', '904'),
(269, 968, '_wp_attachment_image_alt', 'Image Alignment 150x150'),
(270, 968, '_attachment_original_parent_id', '903'),
(271, 1022, '_wp_attached_file', '2013/03/featured-image-horizontal.jpg'),
(272, 1022, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2013/03/featured-image-horizontal.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"featured-image-horizontal-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"featured-image-horizontal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 1022, 'pre_import_post_parent', '0'),
(274, 1022, 'pre_import_post_id', '1022'),
(275, 1022, '_wp_attachment_image_alt', 'Horizontal Featured Image'),
(276, 1022, '_attachment_original_parent_id', '1011'),
(277, 1023, '_wp_attached_file', '2013/03/soworthloving-wallpaper.jpg'),
(278, 1023, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:35:\"2013/03/soworthloving-wallpaper.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"soworthloving-wallpaper-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"soworthloving-wallpaper-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"soworthloving-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"soworthloving-wallpaper-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"soworthloving-wallpaper-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"soworthloving-wallpaper-1200x750.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 1023, 'pre_import_post_parent', '0'),
(280, 1023, 'pre_import_post_id', '842'),
(281, 1023, '_wp_attachment_image_alt', 'I Am Worth Loving Wallpaper'),
(282, 1025, '_wp_attached_file', '2013/03/image-alignment-300x200-1.jpg'),
(283, 1025, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"file\";s:37:\"2013/03/image-alignment-300x200-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"image-alignment-300x200-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(284, 1025, 'pre_import_post_parent', '0'),
(285, 1025, 'pre_import_post_id', '905'),
(286, 1025, '_wp_attachment_image_alt', 'Image Alignment 300x200'),
(287, 1025, '_attachment_original_parent_id', '903'),
(288, 1027, '_wp_attached_file', '2013/03/featured-image-vertical.jpg'),
(289, 1027, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:580;s:4:\"file\";s:35:\"2013/03/featured-image-vertical.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"featured-image-vertical-155x300.jpg\";s:5:\"width\";i:155;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"featured-image-vertical-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 1027, 'pre_import_post_parent', '0'),
(291, 1027, 'pre_import_post_id', '1024'),
(292, 1027, '_wp_attachment_image_alt', 'Horizontal Featured Image'),
(293, 1027, '_attachment_original_parent_id', '1016'),
(294, 1029, '_wp_attached_file', '2013/03/image-alignment-1200x4002-1.jpg'),
(295, 1029, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:400;s:4:\"file\";s:39:\"2013/03/image-alignment-1200x4002-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"image-alignment-1200x4002-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"image-alignment-1200x4002-1-1024x341.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"image-alignment-1200x4002-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"image-alignment-1200x4002-1-768x256.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 1029, 'pre_import_post_parent', '0'),
(297, 1029, 'pre_import_post_id', '907'),
(298, 1029, '_wp_attachment_image_alt', 'Image Alignment 1200x4002'),
(299, 1029, '_attachment_original_parent_id', '903'),
(300, 1045, '_wp_attached_file', '2013/03/unicorn-wallpaper.jpg'),
(301, 1045, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2013/03/unicorn-wallpaper.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"unicorn-wallpaper-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"unicorn-wallpaper-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"unicorn-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"unicorn-wallpaper-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"unicorn-wallpaper-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"unicorn-wallpaper-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 1045, 'pre_import_post_parent', '0'),
(303, 1045, 'pre_import_post_id', '967'),
(304, 1045, '_wp_attachment_image_alt', 'Unicorn Wallpaper'),
(305, 1045, '_attachment_original_parent_id', '568'),
(306, 1046, '_menu_item_type', 'custom'),
(307, 1046, '_menu_item_menu_item_parent', '0'),
(308, 1046, '_menu_item_object_id', '1046'),
(309, 1046, '_menu_item_object', 'custom'),
(310, 1046, '_menu_item_target', ''),
(311, 1046, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(312, 1046, '_menu_item_xfn', ''),
(313, 1046, '_menu_item_url', '#'),
(314, 1047, '_menu_item_type', 'custom'),
(315, 1047, '_menu_item_menu_item_parent', '0'),
(316, 1047, '_menu_item_object_id', '1047'),
(317, 1047, '_menu_item_object', 'custom'),
(318, 1047, '_menu_item_target', ''),
(319, 1047, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(320, 1047, '_menu_item_xfn', ''),
(321, 1047, '_menu_item_url', '#'),
(330, 1049, '_menu_item_type', 'taxonomy'),
(331, 1049, '_menu_item_menu_item_parent', '1047'),
(332, 1049, '_menu_item_object_id', '138'),
(333, 1049, '_menu_item_object', 'category'),
(334, 1049, '_menu_item_target', ''),
(335, 1049, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(336, 1049, '_menu_item_xfn', ''),
(337, 1049, '_menu_item_url', ''),
(346, 1051, '_menu_item_type', 'custom'),
(347, 1051, '_menu_item_menu_item_parent', '0'),
(348, 1051, '_menu_item_object_id', '1051'),
(349, 1051, '_menu_item_object', 'custom'),
(350, 1051, '_menu_item_target', ''),
(351, 1051, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(352, 1051, '_menu_item_xfn', ''),
(353, 1051, '_menu_item_url', '#'),
(354, 1052, '_menu_item_type', 'custom'),
(355, 1052, '_menu_item_menu_item_parent', '1051'),
(356, 1052, '_menu_item_object_id', '1052'),
(357, 1052, '_menu_item_object', 'custom'),
(358, 1052, '_menu_item_target', ''),
(359, 1052, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 1052, '_menu_item_xfn', ''),
(361, 1052, '_menu_item_url', '#'),
(362, 1053, '_menu_item_type', 'custom'),
(363, 1053, '_menu_item_menu_item_parent', '1052'),
(364, 1053, '_menu_item_object_id', '1053'),
(365, 1053, '_menu_item_object', 'custom'),
(366, 1053, '_menu_item_target', ''),
(367, 1053, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(368, 1053, '_menu_item_xfn', ''),
(369, 1053, '_menu_item_url', '#'),
(370, 1054, '_menu_item_type', 'custom'),
(371, 1054, '_menu_item_menu_item_parent', '1053'),
(372, 1054, '_menu_item_object_id', '1054'),
(373, 1054, '_menu_item_object', 'custom'),
(374, 1054, '_menu_item_target', ''),
(375, 1054, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 1054, '_menu_item_xfn', ''),
(377, 1054, '_menu_item_url', '#'),
(378, 1055, '_menu_item_type', 'custom'),
(379, 1055, '_menu_item_menu_item_parent', '1054'),
(380, 1055, '_menu_item_object_id', '1055'),
(381, 1055, '_menu_item_object', 'custom'),
(382, 1055, '_menu_item_target', ''),
(383, 1055, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(384, 1055, '_menu_item_xfn', ''),
(385, 1055, '_menu_item_url', '#'),
(386, 1056, '_menu_item_type', 'custom'),
(387, 1056, '_menu_item_menu_item_parent', '1055'),
(388, 1056, '_menu_item_object_id', '1056'),
(389, 1056, '_menu_item_object', 'custom'),
(390, 1056, '_menu_item_target', ''),
(391, 1056, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(392, 1056, '_menu_item_xfn', ''),
(393, 1056, '_menu_item_url', '#'),
(394, 1057, '_menu_item_type', 'custom'),
(395, 1057, '_menu_item_menu_item_parent', '1056'),
(396, 1057, '_menu_item_object_id', '1057'),
(397, 1057, '_menu_item_object', 'custom'),
(398, 1057, '_menu_item_target', ''),
(399, 1057, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(400, 1057, '_menu_item_xfn', ''),
(401, 1057, '_menu_item_url', '#'),
(402, 1058, '_menu_item_type', 'custom'),
(403, 1058, '_menu_item_menu_item_parent', '1057'),
(404, 1058, '_menu_item_object_id', '1058'),
(405, 1058, '_menu_item_object', 'custom'),
(406, 1058, '_menu_item_target', ''),
(407, 1058, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 1058, '_menu_item_xfn', ''),
(409, 1058, '_menu_item_url', '#'),
(410, 1059, '_menu_item_type', 'custom'),
(411, 1059, '_menu_item_menu_item_parent', '1058'),
(412, 1059, '_menu_item_object_id', '1059'),
(413, 1059, '_menu_item_object', 'custom'),
(414, 1059, '_menu_item_target', ''),
(415, 1059, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 1059, '_menu_item_xfn', ''),
(417, 1059, '_menu_item_url', '#'),
(418, 1060, '_menu_item_type', 'custom'),
(419, 1060, '_menu_item_menu_item_parent', '1059'),
(420, 1060, '_menu_item_object_id', '1060'),
(421, 1060, '_menu_item_object', 'custom'),
(422, 1060, '_menu_item_target', ''),
(423, 1060, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(424, 1060, '_menu_item_xfn', ''),
(425, 1060, '_menu_item_url', '#'),
(426, 1061, '_menu_item_type', 'custom'),
(427, 1061, '_menu_item_menu_item_parent', '1060'),
(428, 1061, '_menu_item_object_id', '1061'),
(429, 1061, '_menu_item_object', 'custom'),
(430, 1061, '_menu_item_target', ''),
(431, 1061, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(432, 1061, '_menu_item_xfn', ''),
(433, 1061, '_menu_item_url', '#'),
(434, 1062, '_menu_item_type', 'custom'),
(435, 1062, '_menu_item_menu_item_parent', '0'),
(436, 1062, '_menu_item_object_id', '1062'),
(437, 1062, '_menu_item_object', 'custom'),
(438, 1062, '_menu_item_target', ''),
(439, 1062, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(440, 1062, '_menu_item_xfn', ''),
(441, 1062, '_menu_item_url', '#'),
(442, 1063, '_menu_item_type', 'custom'),
(443, 1063, '_menu_item_menu_item_parent', '0'),
(444, 1063, '_menu_item_object_id', '1063'),
(445, 1063, '_menu_item_object', 'custom'),
(446, 1063, '_menu_item_target', ''),
(447, 1063, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(448, 1063, '_menu_item_xfn', ''),
(449, 1063, '_menu_item_url', '#'),
(450, 1064, '_menu_item_type', 'custom'),
(451, 1064, '_menu_item_menu_item_parent', '1062'),
(452, 1064, '_menu_item_object_id', '1064'),
(453, 1064, '_menu_item_object', 'custom'),
(454, 1064, '_menu_item_target', ''),
(455, 1064, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 1064, '_menu_item_xfn', ''),
(457, 1064, '_menu_item_url', '#'),
(458, 1065, '_menu_item_type', 'custom'),
(459, 1065, '_menu_item_menu_item_parent', '1062'),
(460, 1065, '_menu_item_object_id', '1065'),
(461, 1065, '_menu_item_object', 'custom'),
(462, 1065, '_menu_item_target', ''),
(463, 1065, '_menu_item_classes', 'a:1:{i:0;s:21:\"custom-menu-css-class\";}'),
(464, 1065, '_menu_item_xfn', ''),
(465, 1065, '_menu_item_url', '#'),
(466, 1066, '_menu_item_type', 'custom'),
(467, 1066, '_menu_item_menu_item_parent', '1062'),
(468, 1066, '_menu_item_object_id', '1066'),
(469, 1066, '_menu_item_object', 'custom'),
(470, 1066, '_menu_item_target', '_blank'),
(471, 1066, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(472, 1066, '_menu_item_xfn', ''),
(473, 1066, '_menu_item_url', 'http://apple.com'),
(474, 1628, '_wp_attached_file', '2013/04/triforce-wallpaper.jpg'),
(475, 1628, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1131;s:6:\"height\";i:707;s:4:\"file\";s:30:\"2013/04/triforce-wallpaper.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"triforce-wallpaper-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"triforce-wallpaper-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"triforce-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"triforce-wallpaper-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(476, 1629, '_menu_item_type', 'custom'),
(477, 1629, '_menu_item_menu_item_parent', '0'),
(478, 1629, '_menu_item_object_id', '1629'),
(479, 1629, '_menu_item_object', 'custom'),
(480, 1629, '_menu_item_target', ''),
(481, 1629, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(482, 1629, '_menu_item_xfn', ''),
(483, 1629, '_menu_item_url', 'http://wpthemetestdata.wordpress.com/'),
(532, 1636, '_menu_item_type', 'custom'),
(533, 1636, '_menu_item_menu_item_parent', '0'),
(534, 1636, '_menu_item_object_id', '1636'),
(535, 1636, '_menu_item_object', 'custom'),
(536, 1636, '_menu_item_target', ''),
(537, 1636, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(538, 1636, '_menu_item_xfn', ''),
(539, 1636, '_menu_item_url', 'http://wpthemetestdata.wordpress.com/'),
(620, 1686, '_wp_attached_file', '2013/09/dsc20040724_152504_532.jpg'),
(621, 1686, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:34:\"2013/09/dsc20040724_152504_532.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20040724_152504_532-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20040724_152504_532-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1090682704\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(622, 1687, '_wp_attached_file', '2013/09/dsc20050604_133440_34211.jpg'),
(623, 1687, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:36:\"2013/09/dsc20050604_133440_34211.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"dsc20050604_133440_34211-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"dsc20050604_133440_34211-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1117892080\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(624, 1690, '_wp_attached_file', '2013/12/2014-slider-mobile-behavior.mov'),
(625, 1690, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:29881426;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:18;s:16:\"length_formatted\";s:4:\"0:18\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:1;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:4:\"mono\";}s:17:\"created_timestamp\";i:1385296463;}'),
(626, 1691, '_wp_attached_file', '2014/01/dsc20050315_145007_132.jpg'),
(627, 1691, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:34:\"2014/01/dsc20050315_145007_132.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"dsc20050315_145007_132-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"dsc20050315_145007_132-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"CYBERSHOT\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1110898207\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"9.7\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 1692, '_wp_attached_file', '2014/01/spectacles.gif'),
(629, 1692, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:210;s:4:\"file\";s:22:\"2014/01/spectacles.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"spectacles-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1059, 1754, '_menu_item_type', 'taxonomy'),
(1060, 1754, '_menu_item_menu_item_parent', '1761'),
(1061, 1754, '_menu_item_object_id', '197'),
(1062, 1754, '_menu_item_object', 'category'),
(1063, 1754, '_menu_item_target', ''),
(1064, 1754, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1065, 1754, '_menu_item_xfn', ''),
(1066, 1754, '_menu_item_url', ''),
(1068, 1755, '_menu_item_type', 'taxonomy'),
(1069, 1755, '_menu_item_menu_item_parent', '1761'),
(1070, 1755, '_menu_item_object_id', '198'),
(1071, 1755, '_menu_item_object', 'category'),
(1072, 1755, '_menu_item_target', ''),
(1073, 1755, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1074, 1755, '_menu_item_xfn', ''),
(1075, 1755, '_menu_item_url', ''),
(1077, 1756, '_menu_item_type', 'taxonomy'),
(1078, 1756, '_menu_item_menu_item_parent', '1761'),
(1079, 1756, '_menu_item_object_id', '196'),
(1080, 1756, '_menu_item_object', 'category'),
(1081, 1756, '_menu_item_target', ''),
(1082, 1756, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1083, 1756, '_menu_item_xfn', ''),
(1084, 1756, '_menu_item_url', ''),
(1086, 1757, '_menu_item_type', 'taxonomy'),
(1087, 1757, '_menu_item_menu_item_parent', '1761'),
(1088, 1757, '_menu_item_object_id', '199'),
(1089, 1757, '_menu_item_object', 'category'),
(1090, 1757, '_menu_item_target', ''),
(1091, 1757, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1092, 1757, '_menu_item_xfn', ''),
(1093, 1757, '_menu_item_url', ''),
(1095, 1758, '_menu_item_type', 'taxonomy'),
(1096, 1758, '_menu_item_menu_item_parent', '1761'),
(1097, 1758, '_menu_item_object_id', '195'),
(1098, 1758, '_menu_item_object', 'category'),
(1099, 1758, '_menu_item_target', ''),
(1100, 1758, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1101, 1758, '_menu_item_xfn', ''),
(1102, 1758, '_menu_item_url', ''),
(1113, 1760, '_menu_item_type', 'custom'),
(1114, 1760, '_menu_item_menu_item_parent', '0'),
(1115, 1760, '_menu_item_object_id', '1760'),
(1116, 1760, '_menu_item_object', 'custom'),
(1117, 1760, '_menu_item_target', ''),
(1118, 1760, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1119, 1760, '_menu_item_xfn', ''),
(1120, 1760, '_menu_item_url', 'https://foodanddesserts.com/contact'),
(1122, 1761, '_menu_item_type', 'custom'),
(1123, 1761, '_menu_item_menu_item_parent', '0'),
(1124, 1761, '_menu_item_object_id', '1761'),
(1125, 1761, '_menu_item_object', 'custom'),
(1126, 1761, '_menu_item_target', ''),
(1127, 1761, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1128, 1761, '_menu_item_xfn', ''),
(1129, 1761, '_menu_item_url', ''),
(1131, 1762, '_edit_lock', '1589820655:1'),
(1136, 1764, '_edit_lock', '1589820632:1'),
(1139, 1766, '_edit_lock', '1589820588:1'),
(1209, 1791, '_wp_attached_file', '2020/04/chorizo-mozarella-gnocchi-bake-cropped.jpg'),
(1210, 1791, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:636;s:4:\"file\";s:50:\"2020/04/chorizo-mozarella-gnocchi-bake-cropped.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"chorizo-mozarella-gnocchi-bake-cropped-300x273.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"chorizo-mozarella-gnocchi-bake-cropped-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1213, 1766, '_thumbnail_id', '1791'),
(1214, 1792, '_wp_attached_file', '2020/04/table-with-grains-vegetables-fruit-768.jpg'),
(1215, 1792, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:461;s:4:\"file\";s:50:\"2020/04/table-with-grains-vegetables-fruit-768.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"table-with-grains-vegetables-fruit-768-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"table-with-grains-vegetables-fruit-768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1218, 1764, '_thumbnail_id', '1792'),
(1221, 1762, '_thumbnail_id', '766'),
(1222, 1793, '_thumbnail_id', '1791'),
(1223, 1793, '_dp_original', '1766'),
(1224, 1794, '_thumbnail_id', '1792'),
(1225, 1794, '_dp_original', '1764'),
(1226, 1795, '_thumbnail_id', '766'),
(1227, 1795, '_dp_original', '1762'),
(1228, 1796, '_thumbnail_id', '1791'),
(1230, 1796, '_dp_original', '1793'),
(1231, 1797, '_thumbnail_id', '1792'),
(1233, 1797, '_dp_original', '1794'),
(1234, 1798, '_thumbnail_id', '1874'),
(1236, 1798, '_dp_original', '1795'),
(1237, 1799, '_thumbnail_id', '1791'),
(1238, 1799, '_dp_original', '1766'),
(1239, 1800, '_thumbnail_id', '1792'),
(1240, 1800, '_dp_original', '1764'),
(1241, 1801, '_thumbnail_id', '766'),
(1242, 1801, '_dp_original', '1762'),
(1243, 1801, '_edit_lock', '1589821615:1'),
(1244, 1796, '_edit_lock', '1589821620:1'),
(1245, 1797, '_edit_lock', '1589821626:1'),
(1246, 1798, '_edit_lock', '1592134214:1'),
(1247, 1800, '_edit_lock', '1589825612:1'),
(1248, 1793, '_edit_lock', '1589825605:1'),
(1249, 1799, '_edit_lock', '1589821635:1'),
(1250, 1794, '_edit_lock', '1589825599:1'),
(1251, 1795, '_edit_lock', '1592123191:1'),
(1276, 6, '_oembed_724d98a82eea9f384120b5131c9a1b52', '{{unknown}}'),
(1277, 6, '_oembed_2ea5358b49b9274539d262727b055027', '<iframe title=\"How to make Fruit Cream Pudding in 5 minutes | Homemade Fruit Cream Pudding Recipe\" width=\"580\" height=\"326\" src=\"https://www.youtube.com/embed/O1FxpMslG5k?start=36&feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(1278, 6, '_oembed_time_2ea5358b49b9274539d262727b055027', '1589838727'),
(1279, 6, '_oembed_c8eee1a8c9a48e0d8d824fa8e811b504', '{{unknown}}'),
(1280, 6, '_oembed_9f9c575a1b5df7c81b2fee9f19fe3362', '<iframe title=\"How to make Fruit Cream Pudding in 5 minutes | Homemade Fruit Cream Pudding Recipe\" width=\"580\" height=\"326\" src=\"https://www.youtube.com/embed/O1FxpMslG5k?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(1281, 6, '_oembed_time_9f9c575a1b5df7c81b2fee9f19fe3362', '1591032547'),
(1283, 1856, '_wp_attached_file', '2020/06/cropped-Logo.png'),
(1284, 1856, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:272;s:4:\"file\";s:24:\"2020/06/cropped-Logo.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-Logo-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"cropped-Logo-768x270.png\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1285, 1857, '_wp_attached_file', '2020/06/cropped-cropped-Logo.png'),
(1286, 1857, '_wp_attachment_context', 'custom-logo'),
(1287, 1857, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:272;s:4:\"file\";s:32:\"2020/06/cropped-cropped-Logo.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-cropped-Logo-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-cropped-Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-cropped-Logo-768x270.png\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1289, 1858, '_wp_trash_meta_status', 'publish'),
(1290, 1858, '_wp_trash_meta_time', '1591181019'),
(1291, 9, '_edit_lock', '1592053461:1'),
(1292, 9, '_edit_last', '1'),
(1293, 9, '_thumbnail_id', '1868'),
(1294, 1868, '_wp_attached_file', '2020/06/blog-bg.jpg'),
(1295, 1868, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2020/06/blog-bg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog-bg-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"blog-bg-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog-bg-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"blog-bg-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"blog-bg-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1298, 1874, '_wp_attached_file', '2020/05/thumbnail-scaled.jpg'),
(1299, 1874, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:28:\"2020/05/thumbnail-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thumbnail-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"thumbnail-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thumbnail-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"thumbnail-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"thumbnail-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"thumbnail-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"thumbnail-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"twentytwenty-fullscreen\";a:4:{s:4:\"file\";s:23:\"thumbnail-1980x1114.jpg\";s:5:\"width\";i:1980;s:6:\"height\";i:1114;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1590538303\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"thumbnail.jpg\";}'),
(1302, 1798, '_wp_old_slug', 'fruit-cream-pudding-3');

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
(5, 1, '2020-04-19 10:45:54', '2020-04-19 10:45:54', '', 'The New UMoMA Opens its Doors', '', 'inherit', 'open', 'closed', '', 'the-new-umoma-opens-its-doors', '', '', '2020-04-19 10:45:54', '2020-04-19 10:45:54', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/04/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-04-19 10:45:54', '2020-04-19 10:45:54', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'publish', 'closed', 'closed', '', 'the-new-umoma-opens-its-doors-2', '', '', '2020-06-13 13:30:36', '2020-06-13 13:30:36', '', 0, 'http://foodanddesserts.com/?page_id=6', 0, 'page', '', 0),
(9, 1, '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 'Browse Recipes', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-06-13 12:53:31', '2020-06-13 12:53:31', '', 0, 'http://foodanddesserts.com/?page_id=9', 0, 'page', '', 0),
(11, 1, '2020-04-19 10:44:22', '2020-04-19 10:44:22', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-04-19 10:44:22', '2020-04-19 10:44:22', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/04/Logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-04-19 10:44:36', '2020-04-19 10:44:36', 'http://foodanddesserts.com/wp-content/uploads/2020/04/cropped-Logo.png', 'cropped-Logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-04-19 10:44:36', '2020-04-19 10:44:36', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/04/cropped-Logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-04-19 10:44:48', '2020-04-19 10:44:48', '', 'Site Icon', '', 'inherit', 'open', 'closed', '', 'site-icon', '', '', '2020-04-19 10:44:48', '2020-04-19 10:44:48', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/04/Site-Icon.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-04-19 10:44:57', '2020-04-19 10:44:57', 'http://foodanddesserts.com/wp-content/uploads/2020/04/cropped-Site-Icon.png', 'cropped-Site-Icon.png', '', 'inherit', 'open', 'closed', '', 'cropped-site-icon-png', '', '', '2020-04-19 10:44:57', '2020-04-19 10:44:57', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/04/cropped-Site-Icon.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2020-04-19 10:45:54', '2020-04-19 10:45:54', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-square-1.png\" data-link=\"http://foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 10:45:54', '2020-04-19 10:45:54', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 9, 'http://foodanddesserts.com/2020/04/19/9-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/2020/04/19/home/', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 0, 'http://foodanddesserts.com/2020/04/19/home-2/', 0, 'nav_menu_item', '', 0),
(25, 1, '2020-04-19 10:45:55', '2020-04-19 10:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-04-19 10:45:55', '2020-04-19 10:45:55', '', 0, 'http://foodanddesserts.com/2020/04/19/25/', 2, 'nav_menu_item', '', 0),
(27, 1, '2020-04-19 10:45:56', '2020-04-19 10:45:56', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-04-19 11:00:39', '2020-04-19 11:00:39', '', 0, 'http://foodanddesserts.com/2020/04/19/facebook/', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-04-19 10:45:56', '2020-04-19 10:45:56', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-04-19 11:00:39', '2020-04-19 11:00:39', '', 0, 'http://foodanddesserts.com/2020/04/19/twitter/', 2, 'nav_menu_item', '', 0),
(29, 1, '2020-04-19 10:45:56', '2020-04-19 10:45:56', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-04-19 11:00:39', '2020-04-19 11:00:39', '', 0, 'http://foodanddesserts.com/2020/04/19/instagram/', 3, 'nav_menu_item', '', 0),
(30, 1, '2020-04-19 10:45:56', '2020-04-19 10:45:56', '', 'Youtube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2020-04-19 11:00:39', '2020-04-19 11:00:39', '', 0, 'http://foodanddesserts.com/2020/04/19/youtube/', 4, 'nav_menu_item', '', 0),
(31, 1, '2020-04-19 11:21:43', '2020-04-19 11:21:43', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:categories {\"align\":\"full\"} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 11:21:43', '2020-04-19 11:21:43', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-04-19 11:32:14', '2020-04-19 11:32:14', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 11:32:14', '2020-04-19 11:32:14', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(611, 1, '2011-01-10 06:17:54', '2011-01-10 13:17:54', '', 'canola2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis. Quisque convallis libero in sapien pharetra tincidunt. Aliquam elit ante, malesuada id, tempor eu, gravida id, odio. Maecenas suscipit, risus et eleifend imperdiet, nisi orci ullamcorper massa, et adipiscing orci velit quis magna.', 'inherit', 'open', 'closed', '', 'canola2', '', '', '2011-01-10 06:17:54', '2011-01-10 13:17:54', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/01/canola2.jpg', 0, 'attachment', 'image/jpeg', 0),
(616, 1, '2011-01-10 06:20:37', '2011-01-10 13:20:37', '', 'dsc20050727_091048_222', '', 'inherit', 'open', 'closed', '', 'dsc20050727_091048_222', '', '', '2011-01-10 06:20:37', '2011-01-10 13:20:37', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/01/dsc20050727_091048_222.jpg', 0, 'attachment', 'image/jpeg', 0),
(617, 1, '2011-01-10 06:20:57', '2011-01-10 13:20:57', '', 'dsc20050813_115856_52', '', 'inherit', 'open', 'closed', '', 'dsc20050813_115856_52', '', '', '2011-01-10 06:20:57', '2011-01-10 13:20:57', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/01/dsc20050813_115856_52.jpg', 0, 'attachment', 'image/jpeg', 0),
(754, 1, '2011-07-15 14:34:50', '2011-07-15 21:34:50', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/100_5540.JPG.html', 'Bell on Wharf', 'Bell on wharf in San Francisco', 'inherit', 'open', 'closed', '', '100_5478', '', '', '2011-07-15 14:34:50', '2011-07-15 21:34:50', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/100_5478.jpg', 0, 'attachment', 'image/jpeg', 0),
(755, 1, '2011-07-15 14:35:55', '2011-07-15 21:35:55', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/100_5478.JPG.html', 'Golden Gate Bridge', 'Golden Gate Bridge', 'inherit', 'open', 'closed', '', '100_5540', '', '', '2011-07-15 14:35:55', '2011-07-15 21:35:55', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/100_5540.jpg', 0, 'attachment', 'image/jpeg', 0),
(756, 1, '2011-07-15 14:41:24', '2011-07-15 21:41:24', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/CEP00032.jpg.html', 'Sunburst Over River', 'Sunburst over the Clinch River, Southwest Virginia.', 'inherit', 'open', 'closed', '', 'cep00032', '', '', '2011-07-15 14:41:24', '2011-07-15 21:41:24', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/cep00032.jpg', 0, 'attachment', 'image/jpeg', 0),
(757, 1, '2011-07-15 14:41:27', '2011-07-15 21:41:27', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/DCP_2082.jpg.html', 'Boardwalk', 'Boardwalk at Westport, WA', 'inherit', 'open', 'closed', '', 'dcp_2082', '', '', '2011-07-15 14:41:27', '2011-07-15 21:41:27', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dcp_2082.jpg', 0, 'attachment', 'image/jpeg', 0),
(758, 1, '2011-07-15 14:41:33', '2011-07-15 21:41:33', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc03149.jpg.html', 'Yachtsody in Blue', 'Boats and reflections, Royal Perth Yacht Club', 'inherit', 'open', 'closed', '', 'dsc03149', '', '', '2011-07-15 14:41:33', '2011-07-15 21:41:33', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc03149.jpg', 0, 'attachment', 'image/jpeg', 0),
(759, 1, '2011-07-15 14:41:37', '2011-07-15 21:41:37', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc04563.jpg.html', 'Rain Ripples', 'Raindrop ripples on a pond', 'inherit', 'open', 'closed', '', 'dsc04563', '', '', '2011-07-15 14:41:37', '2011-07-15 21:41:37', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc04563.jpg', 0, 'attachment', 'image/jpeg', 0),
(760, 1, '2011-07-15 14:41:41', '2011-07-15 21:41:41', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc09114.jpg.html', 'Sydney Harbor Bridge', 'Sydney Harbor Bridge', 'inherit', 'open', 'closed', '', 'dsc09114', '', '', '2011-07-15 14:41:41', '2011-07-15 21:41:41', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc09114.jpg', 0, 'attachment', 'image/jpeg', 0),
(761, 1, '2011-07-15 14:41:42', '2011-07-15 21:41:42', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc20050102_192118_51.jpg.html', 'Wind Farm', 'Albany wind-farm against the sunset, Western Australia', 'inherit', 'open', 'closed', '', 'dsc20050102_192118_51', '', '', '2011-07-15 14:41:42', '2011-07-15 21:41:42', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc20050102_192118_51.jpg', 0, 'attachment', 'image/jpeg', 0),
(762, 1, '2011-07-15 14:41:45', '2011-07-15 21:41:45', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc20051220_160808_102.jpg.html', 'Antique Farm Machinery', 'Antique farm machinery, Mount Barker Museum, Western Australia', 'inherit', 'open', 'closed', '', 'dsc20051220_160808_102', '', '', '2011-07-15 14:41:45', '2011-07-15 21:41:45', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc20051220_160808_102.jpg', 0, 'attachment', 'image/jpeg', 0),
(763, 1, '2011-07-15 14:46:27', '2011-07-15 21:46:27', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25895', 'Orange Iris', 'Orange Iris', 'inherit', 'open', 'closed', '', 'dsc02085', '', '', '2011-07-15 14:46:27', '2011-07-15 21:46:27', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc02085.jpg', 0, 'attachment', 'image/jpeg', 0),
(764, 1, '2011-07-15 14:47:17', '2011-07-15 21:47:17', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc20051220_173257_119.jpg.html', 'Rusty Rail', 'Rusty rails with fishplate, Kojonup', 'inherit', 'open', 'closed', '', 'dsc20051220_173257_119', '', '', '2011-07-15 14:47:17', '2011-07-15 21:47:17', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dsc20051220_173257_119.jpg', 0, 'attachment', 'image/jpeg', 0),
(765, 1, '2011-07-15 14:47:20', '2011-07-15 21:47:20', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dscn3316.jpg.html', 'Sea and Rocks', 'Sea and rocks, Plimmerton, New Zealand', 'inherit', 'open', 'closed', '', 'dscn3316', '', '', '2011-07-15 14:47:20', '2011-07-15 21:47:20', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/dscn3316.jpg', 0, 'attachment', 'image/jpeg', 0),
(766, 1, '2011-07-15 14:47:23', '2011-07-15 21:47:23', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/michelle_049.jpg.html', 'Big Sur', 'Beach at Big Sur, CA', 'inherit', 'open', 'closed', '', 'michelle_049', '', '', '2011-07-15 14:47:23', '2011-07-15 21:47:23', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/michelle_049.jpg', 0, 'attachment', 'image/jpeg', 0),
(767, 1, '2011-07-15 14:47:26', '2011-07-15 21:47:26', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/Windmill.jpg.html', 'Windmill', 'Windmill shrouded in fog at a farm outside of Walker, Iowa', 'inherit', 'open', 'closed', '', 'dcf-1-0', '', '', '2011-07-15 14:47:26', '2011-07-15 21:47:26', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/windmill.jpg', 0, 'attachment', 'image/jpeg', 0),
(768, 1, '2011-07-15 14:49:48', '2011-07-15 21:49:48', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/IMG_0513-1.JPG.html', 'Huatulco Coastline', 'Sunrise over the coast in Huatulco, Oaxaca, Mexico', 'inherit', 'open', 'closed', '', 'alas-i-have-found-my-shangri-la', '', '', '2011-07-15 14:49:48', '2011-07-15 21:49:48', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/img_0513-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(769, 1, '2011-07-15 14:50:37', '2011-07-15 21:50:37', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25770', 'Brazil Beach', 'Jericoacoara Ceara Brasil', 'inherit', 'open', 'closed', '', 'img_0747', '', '', '2011-07-15 14:50:37', '2011-07-15 21:50:37', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/img_0747.jpg', 0, 'attachment', 'image/jpeg', 0),
(770, 1, '2011-07-15 14:51:19', '2011-07-15 21:51:19', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/IMG_0767.JPG.html', 'Huatulco Coastline', 'Coastline in Huatulco, Oaxaca, Mexico', 'inherit', 'open', 'closed', '', 'img_0767', '', '', '2011-07-15 14:51:19', '2011-07-15 21:51:19', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/img_0767.jpg', 0, 'attachment', 'image/jpeg', 0),
(771, 1, '2011-07-15 14:51:57', '2011-07-15 21:51:57', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25774', 'Boat Barco Texture', 'Boat BW PB Barco Texture Beautiful Fishing', 'inherit', 'open', 'closed', '', 'img_8399', '', '', '2011-07-15 14:51:57', '2011-07-15 21:51:57', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2011/07/img_8399.jpg', 0, 'attachment', 'image/jpeg', 0),
(807, 1, '2012-06-04 11:36:56', '2012-06-04 18:36:56', '', 'dsc20040724_152504_532', '', 'inherit', 'open', 'closed', '', 'dsc20040724_152504_532-2', '', '', '2012-06-04 11:36:56', '2012-06-04 18:36:56', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2012/06/dsc20040724_152504_532.jpg', 0, 'attachment', 'image/jpeg', 0),
(811, 1, '2012-06-04 11:58:15', '2012-06-04 18:58:15', '', 'dsc20050604_133440_3421', '', 'inherit', 'open', 'closed', '', 'dsc20050604_133440_3421', '', '', '2012-06-04 11:58:15', '2012-06-04 18:58:15', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2012/06/dsc20050604_133440_34211.jpg', 0, 'attachment', 'image/jpeg', 0),
(821, 1, '2012-07-05 09:49:29', '2012-07-05 16:49:29', 'St. Louis Blues, by Original Dixieland Jazz Band with Al Bernard (public domain)', 'St. Louis Blues', 'St. Louis Blues, by Original Dixieland Jazz Band with Al Bernard (public domain)', 'inherit', 'open', 'closed', '', 'originaldixielandjazzbandwithalbernard-stlouisblues', '', '', '2012-07-05 09:49:29', '2012-07-05 16:49:29', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3', 0, 'attachment', 'audio/mpeg', 0),
(827, 1, '2012-07-05 11:07:34', '2012-07-05 18:07:34', '', 'OLYMPUS DIGITAL CAMERA', '', 'inherit', 'open', 'closed', '', 'olympus-digital-camera', '', '', '2012-07-05 11:07:34', '2012-07-05 18:07:34', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2012/07/manhattansummer.jpg', 0, 'attachment', 'image/jpeg', 0),
(967, 1, '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 'Image Alignment 580x300', '', 'inherit', 'open', 'open', '', 'image-alignment-580x300', '', '', '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/image-alignment-580x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(968, 1, '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 'Image Alignment 150x150', '', 'inherit', 'open', 'open', '', 'image-alignment-150x150', '', '', '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/image-alignment-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1022, 1, '2013-03-15 15:40:38', '2013-03-15 20:40:38', '', 'Horizontal Featured Image', '', 'inherit', 'open', 'open', '', 'featured-image-horizontal-2', '', '', '2013-03-15 15:40:38', '2013-03-15 20:40:38', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/featured-image-horizontal.jpg', 0, 'attachment', 'image/jpeg', 0),
(1023, 1, '2013-03-14 09:58:24', '2013-03-14 14:58:24', '', 'I Am Worth Loving Wallpaper', '', 'inherit', 'open', 'open', '', 'soworthloving-wallpaper', '', '', '2013-03-14 09:58:24', '2013-03-14 14:58:24', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/soworthloving-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(1025, 1, '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 'Image Alignment 300x200', '', 'inherit', 'open', 'open', '', 'image-alignment-300x200', '', '', '2013-03-14 19:44:49', '2013-03-15 00:44:49', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/image-alignment-300x200-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1027, 1, '2013-03-15 15:41:09', '2013-03-15 20:41:09', '', 'Vertical Featured Image', '', 'inherit', 'open', 'open', '', 'featured-image-vertical-2', '', '', '2013-03-15 15:41:09', '2013-03-15 20:41:09', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/featured-image-vertical.jpg', 0, 'attachment', 'image/jpeg', 0),
(1029, 1, '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 'Image Alignment 1200x4002', '', 'inherit', 'open', 'open', '', 'image-alignment-1200x4002', '', '', '2013-03-14 19:44:50', '2013-03-15 00:44:50', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/image-alignment-1200x4002-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1045, 1, '2013-03-14 22:10:39', '2013-03-15 03:10:39', '', 'Unicorn Wallpaper', '', 'inherit', 'open', 'open', '', 'unicorn-wallpaper', '', '', '2013-03-14 22:10:39', '2013-03-15 03:10:39', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/03/unicorn-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(1046, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/pages/', 2, 'nav_menu_item', '', 0),
(1047, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/categories/', 10, 'nav_menu_item', '', 0),
(1049, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', 'Posts in this category test post formats.', '', '', 'publish', 'closed', 'closed', '', '1049', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/', 24, 'nav_menu_item', '', 0),
(1051, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Depth', '', 'publish', 'closed', 'closed', '', 'depth', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/depth/', 29, 'nav_menu_item', '', 0),
(1052, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Level 01', '', 'publish', 'closed', 'closed', '', 'level-01', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/level-01/', 30, 'nav_menu_item', '', 0),
(1053, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Level 02', '', 'publish', 'closed', 'closed', '', 'level-02', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/level-02/', 31, 'nav_menu_item', '', 0),
(1054, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Level 03', '', 'publish', 'closed', 'closed', '', 'level-03', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/level-03/', 32, 'nav_menu_item', '', 0),
(1055, 1, '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 'Level 04', '', 'publish', 'closed', 'closed', '', 'level-04', '', '', '2020-04-19 11:35:32', '2020-04-19 11:35:32', '', 0, 'http://foodanddesserts.com/2020/04/19/level-04/', 33, 'nav_menu_item', '', 0),
(1056, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Level 05', '', 'publish', 'closed', 'closed', '', 'level-05', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/level-05/', 34, 'nav_menu_item', '', 0),
(1057, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Level 06', '', 'publish', 'closed', 'closed', '', 'level-06', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/level-06/', 35, 'nav_menu_item', '', 0),
(1058, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Level 07', '', 'publish', 'closed', 'closed', '', 'level-07', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/level-07/', 36, 'nav_menu_item', '', 0),
(1059, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Level 08', '', 'publish', 'closed', 'closed', '', 'level-08', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/level-08/', 37, 'nav_menu_item', '', 0),
(1060, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Level 09', '', 'publish', 'closed', 'closed', '', 'level-09', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/level-09/', 38, 'nav_menu_item', '', 0),
(1061, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Level 10', '', 'publish', 'closed', 'closed', '', 'level-10', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/level-10/', 39, 'nav_menu_item', '', 0),
(1062, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Advanced', '', 'publish', 'closed', 'closed', '', 'advanced', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/advanced/', 40, 'nav_menu_item', '', 0),
(1063, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', 'Custom Menu Description', 'Menu Description', '', 'publish', 'closed', 'closed', '', 'menu-description', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/menu-description/', 44, 'nav_menu_item', '', 0),
(1064, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Menu Title Attribute', 'Custom Title Attribute', 'publish', 'closed', 'closed', '', 'menu-title-attribute', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/menu-title-attribute/', 41, 'nav_menu_item', '', 0),
(1065, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'Menu CSS Class', '', 'publish', 'closed', 'closed', '', 'menu-css-class', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/menu-css-class/', 42, 'nav_menu_item', '', 0),
(1066, 1, '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 'New Window / Tab', '', 'publish', 'closed', 'closed', '', 'new-window-tab', '', '', '2020-04-19 11:35:33', '2020-04-19 11:35:33', '', 0, 'http://foodanddesserts.com/2020/04/19/new-window-tab/', 43, 'nav_menu_item', '', 0),
(1628, 1, '2013-04-09 13:17:31', '2013-04-09 20:17:31', '', 'triforce-wallpaper', 'It’s dangerous to go alone! Take this.', 'inherit', 'open', 'closed', '', 'triforce-wallpaper', '', '', '2013-04-09 13:17:31', '2013-04-09 20:17:31', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/04/triforce-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(1629, 1, '2020-04-19 11:35:34', '2020-04-19 11:35:34', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2020-04-19 11:35:34', '2020-04-19 11:35:34', '', 0, 'http://foodanddesserts.com/2020/04/19/home-3/', 1, 'nav_menu_item', '', 0),
(1636, 1, '2020-04-19 11:35:35', '2020-04-19 11:35:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-4', '', '', '2020-04-19 11:35:35', '2020-04-19 11:35:35', '', 0, 'http://foodanddesserts.com/2020/04/19/home-4/', 1, 'nav_menu_item', '', 0),
(1686, 1, '2013-09-18 14:37:05', '2013-09-18 21:37:05', '', 'dsc20040724_152504_532', '', 'inherit', 'open', 'closed', '', 'dsc20040724_152504_532', '', '', '2013-09-18 14:37:05', '2013-09-18 21:37:05', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/09/dsc20040724_152504_532.jpg', 0, 'attachment', 'image/jpeg', 0),
(1687, 1, '2013-09-18 14:37:07', '2013-09-18 21:37:07', '', 'dsc20050604_133440_34211', '', 'inherit', 'open', 'closed', '', 'dsc20050604_133440_34211', '', '', '2013-09-18 14:37:07', '2013-09-18 21:37:07', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/09/dsc20050604_133440_34211.jpg', 0, 'attachment', 'image/jpeg', 0),
(1690, 1, '2013-12-04 11:08:29', '2013-12-04 18:08:29', '', '2014-slider-mobile-behavior', '', 'inherit', 'open', 'closed', '', '2014-slider-mobile-behavior', '', '', '2013-12-04 11:08:29', '2013-12-04 18:08:29', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2013/12/2014-slider-mobile-behavior.mov', 0, 'attachment', 'video/quicktime', 0),
(1691, 1, '2014-01-05 11:45:21', '2014-01-05 18:45:21', '', 'dsc20050315_145007_132', '', 'inherit', 'open', 'closed', '', 'dsc20050315_145007_132-2', '', '', '2014-01-05 11:45:21', '2014-01-05 18:45:21', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2014/01/dsc20050315_145007_132.jpg', 0, 'attachment', 'image/jpeg', 0),
(1692, 1, '2014-01-05 11:45:36', '2014-01-05 18:45:36', '', 'spectacles', '', 'inherit', 'open', 'closed', '', 'spectacles-2', '', '', '2014-01-05 11:45:36', '2014-01-05 18:45:36', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2014/01/spectacles.gif', 0, 'attachment', 'image/gif', 0),
(1705, 1, '2020-04-19 11:40:48', '2020-04-19 11:40:48', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[category-post-slider cat_id=\"1\" slides=\"3\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 11:40:48', '2020-04-19 11:40:48', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1706, 1, '2020-04-19 11:41:40', '2020-04-19 11:41:40', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[category-post-slider cat_id=\"12\" slides=\"3\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 11:41:40', '2020-04-19 11:41:40', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1707, 1, '2020-04-19 13:25:08', '2020-04-19 13:25:08', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_carousel design=\"design-1\" category=\"12\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:25:08', '2020-04-19 13:25:08', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1708, 1, '2020-04-19 13:25:31', '2020-04-19 13:25:31', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_carousel design=\"design-1\" category=\"1\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:25:31', '2020-04-19 13:25:31', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1709, 1, '2020-04-19 13:26:15', '2020-04-19 13:26:15', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_carousel design=\"design-1\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:26:15', '2020-04-19 13:26:15', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1710, 1, '2020-04-19 13:26:35', '2020-04-19 13:26:35', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_carousel design=\"design-1\" limit=\"5\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:26:35', '2020-04-19 13:26:35', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1711, 1, '2020-04-19 13:27:55', '2020-04-19 13:27:55', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_carousel limit=\"5\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:27:55', '2020-04-19 13:27:55', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1712, 1, '2020-04-19 13:28:57', '2020-04-19 13:28:57', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_carousel limit=\"5\" show_category_name=\"false\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:28:57', '2020-04-19 13:28:57', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1713, 1, '2020-04-19 13:34:05', '2020-04-19 13:34:05', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[recent_post_slider limit=\"5\" show_category_name=\"false\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-19 13:34:05', '2020-04-19 13:34:05', '', 6, 'http://foodanddesserts.com/2020/04/19/6-revision-v1/', 0, 'revision', '', 0),
(1754, 1, '2020-04-19 13:39:33', '2020-04-19 13:39:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1754', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1754', 3, 'nav_menu_item', '', 0),
(1755, 1, '2020-04-19 13:39:33', '2020-04-19 13:39:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1755', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1755', 8, 'nav_menu_item', '', 0),
(1756, 1, '2020-04-19 13:39:33', '2020-04-19 13:39:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1756', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1756', 5, 'nav_menu_item', '', 0),
(1757, 1, '2020-04-19 13:39:33', '2020-04-19 13:39:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1757', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1757', 6, 'nav_menu_item', '', 0),
(1758, 1, '2020-04-19 13:39:33', '2020-04-19 13:39:33', ' ', '', '', 'publish', 'closed', 'closed', '', '1758', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1758', 4, 'nav_menu_item', '', 0),
(1760, 1, '2020-04-19 13:39:33', '2020-04-19 13:39:33', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1760', 10, 'nav_menu_item', '', 0),
(1761, 1, '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 'Category', '', 'publish', 'closed', 'closed', '', 'category', '', '', '2020-04-19 13:41:23', '2020-04-19 13:41:23', '', 0, 'http://foodanddesserts.com/?p=1761', 2, 'nav_menu_item', '', 0),
(1762, 1, '2020-04-19 14:15:30', '2020-04-19 14:15:30', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', '', 'publish', 'open', 'open', '', 'fruit-cream-pudding', '', '', '2020-05-18 16:53:17', '2020-05-18 16:53:17', '', 0, 'http://foodanddesserts.com/?p=1762', 0, 'post', '', 0),
(1763, 1, '2020-04-19 14:15:30', '2020-04-19 14:15:30', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', '', 'inherit', 'closed', 'closed', '', '1762-revision-v1', '', '', '2020-04-19 14:15:30', '2020-04-19 14:15:30', '', 1762, 'http://foodanddesserts.com/2020/04/19/1762-revision-v1/', 0, 'revision', '', 0),
(1764, 1, '2020-04-19 14:19:13', '2020-04-19 14:19:13', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'publish', 'open', 'open', '', 'dry-fruits-cake', '', '', '2020-05-18 16:52:47', '2020-05-18 16:52:47', '', 0, 'http://foodanddesserts.com/?p=1764', 0, 'post', '', 0),
(1765, 1, '2020-04-19 14:19:13', '2020-04-19 14:19:13', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'inherit', 'closed', 'closed', '', '1764-revision-v1', '', '', '2020-04-19 14:19:13', '2020-04-19 14:19:13', '', 1764, 'http://foodanddesserts.com/2020/04/19/1764-revision-v1/', 0, 'revision', '', 0),
(1766, 1, '2020-04-19 14:19:56', '2020-04-19 14:19:56', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'publish', 'open', 'open', '', 'veg-sandwich', '', '', '2020-05-18 16:52:17', '2020-05-18 16:52:17', '', 0, 'http://foodanddesserts.com/?p=1766', 0, 'post', '', 0),
(1767, 1, '2020-04-19 14:19:56', '2020-04-19 14:19:56', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'inherit', 'closed', 'closed', '', '1766-revision-v1', '', '', '2020-04-19 14:19:56', '2020-04-19 14:19:56', '', 1766, 'http://foodanddesserts.com/2020/04/19/1766-revision-v1/', 0, 'revision', '', 0),
(1789, 1, '2020-05-18 16:07:54', '2020-05-18 16:07:54', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 16:07:54', '2020-05-18 16:07:54', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1790, 1, '2020-05-18 16:47:10', '2020-05-18 16:47:10', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 16:47:10', '2020-05-18 16:47:10', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1791, 1, '2020-05-18 16:52:08', '2020-05-18 16:52:08', '', 'chorizo-mozarella-gnocchi-bake-cropped', '', 'inherit', 'open', 'closed', '', 'chorizo-mozarella-gnocchi-bake-cropped', '', '', '2020-05-18 16:52:08', '2020-05-18 16:52:08', '', 1766, 'http://foodanddesserts.com/wp-content/uploads/2020/04/chorizo-mozarella-gnocchi-bake-cropped.jpg', 0, 'attachment', 'image/jpeg', 0),
(1792, 1, '2020-05-18 16:52:43', '2020-05-18 16:52:43', '', 'table-with-grains-vegetables-fruit-768', '', 'inherit', 'open', 'closed', '', 'table-with-grains-vegetables-fruit-768', '', '', '2020-05-18 16:52:43', '2020-05-18 16:52:43', '', 1764, 'http://foodanddesserts.com/wp-content/uploads/2020/04/table-with-grains-vegetables-fruit-768.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1793, 1, '2020-05-18 17:09:51', '2020-05-18 17:09:51', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'publish', 'open', 'open', '', 'veg-sandwich-4', '', '', '2020-05-18 18:15:49', '2020-05-18 18:15:49', '', 0, 'http://foodanddesserts.com/?p=1793', 0, 'post', '', 0),
(1794, 1, '2020-05-18 17:09:56', '2020-05-18 17:09:56', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'publish', 'open', 'open', '', 'dry-fruits-cake-4', '', '', '2020-05-18 18:15:42', '2020-05-18 18:15:42', '', 0, 'http://foodanddesserts.com/?p=1794', 0, 'post', '', 0),
(1795, 1, '2020-05-18 17:10:01', '2020-05-18 17:10:01', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'open', 'open', '', 'fruit-cream-pudding-4', '', '', '2020-06-13 13:19:45', '2020-06-13 13:19:45', '', 0, 'http://foodanddesserts.com/?p=1795', 0, 'post', '', 0),
(1796, 1, '2020-05-18 17:09:23', '2020-05-18 17:09:23', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'publish', 'open', 'open', '', 'veg-sandwich-2', '', '', '2020-05-18 17:09:23', '2020-05-18 17:09:23', '', 0, 'http://foodanddesserts.com/?p=1796', 0, 'post', '', 0),
(1797, 1, '2020-05-18 17:09:29', '2020-05-18 17:09:29', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'publish', 'open', 'open', '', 'dry-fruits-cake-2', '', '', '2020-05-18 17:09:29', '2020-05-18 17:09:29', '', 0, 'http://foodanddesserts.com/?p=1797', 0, 'post', '', 0),
(1798, 1, '2020-05-18 17:09:34', '2020-05-18 17:09:34', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/fork-knife.png\" alt=\"\"></span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<a href=\"#watchVideo\" class=\"watch-video-btn\">Watch Video</a></div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul class=\"directions-list\">\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'publish', 'open', 'open', '', 'mango-mousse', '', '', '2020-06-14 11:12:29', '2020-06-14 11:12:29', '', 0, 'http://foodanddesserts.com/?p=1798', 0, 'post', '', 6),
(1799, 1, '2020-05-18 17:09:38', '2020-05-18 17:09:38', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'publish', 'open', 'open', '', 'veg-sandwich-3', '', '', '2020-05-18 17:09:38', '2020-05-18 17:09:38', '', 0, 'http://foodanddesserts.com/?p=1799', 0, 'post', '', 0),
(1800, 1, '2020-05-18 17:09:41', '2020-05-18 17:09:41', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'publish', 'open', 'open', '', 'dry-fruits-cake-3', '', '', '2020-05-18 18:15:54', '2020-05-18 18:15:54', '', 0, 'http://foodanddesserts.com/?p=1800', 0, 'post', '', 0),
(1801, 1, '2020-05-18 17:09:15', '2020-05-18 17:09:15', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', '', 'publish', 'open', 'open', '', 'fruit-cream-pudding-2', '', '', '2020-05-18 17:09:15', '2020-05-18 17:09:15', '', 0, 'http://foodanddesserts.com/?p=1801', 0, 'post', '', 0),
(1802, 1, '2020-05-18 17:09:15', '2020-05-18 17:09:15', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', '', 'inherit', 'closed', 'closed', '', '1801-revision-v1', '', '', '2020-05-18 17:09:15', '2020-05-18 17:09:15', '', 1801, 'http://foodanddesserts.com/2020/05/18/1801-revision-v1/', 0, 'revision', '', 0),
(1803, 1, '2020-05-18 17:09:23', '2020-05-18 17:09:23', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'inherit', 'closed', 'closed', '', '1796-revision-v1', '', '', '2020-05-18 17:09:23', '2020-05-18 17:09:23', '', 1796, 'http://foodanddesserts.com/2020/05/18/1796-revision-v1/', 0, 'revision', '', 0),
(1804, 1, '2020-05-18 17:09:29', '2020-05-18 17:09:29', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'inherit', 'closed', 'closed', '', '1797-revision-v1', '', '', '2020-05-18 17:09:29', '2020-05-18 17:09:29', '', 1797, 'http://foodanddesserts.com/2020/05/18/1797-revision-v1/', 0, 'revision', '', 0),
(1805, 1, '2020-05-18 17:09:34', '2020-05-18 17:09:34', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', '', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-05-18 17:09:34', '2020-05-18 17:09:34', '', 1798, 'http://foodanddesserts.com/2020/05/18/1798-revision-v1/', 0, 'revision', '', 0),
(1806, 1, '2020-05-18 17:09:38', '2020-05-18 17:09:38', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'inherit', 'closed', 'closed', '', '1799-revision-v1', '', '', '2020-05-18 17:09:38', '2020-05-18 17:09:38', '', 1799, 'http://foodanddesserts.com/2020/05/18/1799-revision-v1/', 0, 'revision', '', 0),
(1807, 1, '2020-05-18 17:09:41', '2020-05-18 17:09:41', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'inherit', 'closed', 'closed', '', '1800-revision-v1', '', '', '2020-05-18 17:09:41', '2020-05-18 17:09:41', '', 1800, 'http://foodanddesserts.com/2020/05/18/1800-revision-v1/', 0, 'revision', '', 0),
(1808, 1, '2020-05-18 17:09:51', '2020-05-18 17:09:51', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Brown Bread/Oats Bread</li><li>Capsicum, Carriot, Onion, Tomato, Cabbage</li><li>Cheese</li><li>Yogurt</li><li>Salt</li><li>Green Chilli</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Chop vegetables to small pieces</li><li>Add salt to taste</li><li>Add green chilly to taste</li><li>Add Cheese</li><li>Add yogurt and mix</li><li>Spread mixture on one side of bread. Add another bread on top</li><li>Cook on gas toaster until bread</li></ul>\n<!-- /wp:list -->', 'Veg. Sandwich', '', 'inherit', 'closed', 'closed', '', '1793-revision-v1', '', '', '2020-05-18 17:09:51', '2020-05-18 17:09:51', '', 1793, 'http://foodanddesserts.com/2020/05/18/1793-revision-v1/', 0, 'revision', '', 0),
(1809, 1, '2020-05-18 17:09:56', '2020-05-18 17:09:56', '<!-- wp:paragraph -->\n<p>Ingredients</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>One cup flour</li><li>One cup olive oil/refined oil/Desi Ghee</li><li>One cup sugar</li><li>3 to 4 eggs</li><li>One lemon</li><li>Choco chips</li><li>1 1/2 TS baking powder</li><li>Dry Fruits</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Recipe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Mix choco chips in oil and heat in Micro for 2 to 4 minutes</li><li>Stir with a whisker to make sure choco chips melt in oil completely</li><li>Add powder sugar and mix thoroughly.</li><li>Add 1 egg and stir.</li><li>Repeat the step until you have completely mixed 3 or 4 eggs</li><li>Add baking powder</li><li>Add flour</li><li>Stir thoroughly.</li><li>Add lemon</li><li>Add chopped dry fruits and stir</li><li>Add oil to cake tin</li><li>Add mixture to cake tin until half</li><li>Bake in oven at 180C for 30 minutes</li></ul>\n<!-- /wp:list -->', 'Dry Fruits Cake', '', 'inherit', 'closed', 'closed', '', '1794-revision-v1', '', '', '2020-05-18 17:09:56', '2020-05-18 17:09:56', '', 1794, 'http://foodanddesserts.com/2020/05/18/1794-revision-v1/', 0, 'revision', '', 0),
(1810, 1, '2020-05-18 17:10:01', '2020-05-18 17:10:01', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', '', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2020-05-18 17:10:01', '2020-05-18 17:10:01', '', 1795, 'http://foodanddesserts.com/2020/05/18/1795-revision-v1/', 0, 'revision', '', 0),
(1811, 1, '2020-05-18 18:18:07', '2020-05-18 18:18:07', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:categories /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:18:07', '2020-05-18 18:18:07', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1812, 1, '2020-05-18 18:18:37', '2020-05-18 18:18:37', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:18:37', '2020-05-18 18:18:37', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1813, 1, '2020-05-18 18:24:20', '2020-05-18 18:24:20', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;?php wp_list_categories(\'number=5&amp;show_count=1&amp;orderby=count&amp;order=DESC&amp;title_li=\') ?></code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:24:20', '2020-05-18 18:24:20', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1814, 1, '2020-05-18 18:24:32', '2020-05-18 18:24:32', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:24:32', '2020-05-18 18:24:32', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1815, 1, '2020-05-18 18:32:02', '2020-05-18 18:32:02', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\nlatest_categories\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:32:02', '2020-05-18 18:32:02', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1816, 1, '2020-05-18 18:32:14', '2020-05-18 18:32:14', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:32:14', '2020-05-18 18:32:14', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1817, 1, '2020-05-18 18:32:19', '2020-05-18 18:32:19', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:32:19', '2020-05-18 18:32:19', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1818, 1, '2020-05-18 18:32:24', '2020-05-18 18:32:24', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:32:24', '2020-05-18 18:32:24', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1819, 1, '2020-05-18 18:32:47', '2020-05-18 18:32:47', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:32:47', '2020-05-18 18:32:47', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1820, 1, '2020-05-18 18:32:52', '2020-05-18 18:32:52', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:32:52', '2020-05-18 18:32:52', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1821, 1, '2020-05-18 18:33:05', '2020-05-18 18:33:05', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:33:05', '2020-05-18 18:33:05', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1822, 1, '2020-05-18 18:33:50', '2020-05-18 18:33:50', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:33:50', '2020-05-18 18:33:50', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1823, 1, '2020-05-18 18:34:20', '2020-05-18 18:34:20', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:34:20', '2020-05-18 18:34:20', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1824, 1, '2020-05-18 18:34:29', '2020-05-18 18:34:29', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:34:29', '2020-05-18 18:34:29', '', 6, 'http://foodanddesserts.com/2020/05/18/6-revision-v1/', 0, 'revision', '', 0),
(1826, 1, '2020-05-18 18:36:23', '2020-05-18 18:36:23', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:36:23', '2020-05-18 18:36:23', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1827, 1, '2020-05-18 18:37:30', '2020-05-18 18:37:30', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:37:30', '2020-05-18 18:37:30', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1828, 1, '2020-05-18 18:39:57', '2020-05-18 18:39:57', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 18:39:57', '2020-05-18 18:39:57', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1829, 1, '2020-05-18 19:20:30', '2020-05-18 19:20:30', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:latest-posts {\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":50,\"displayFeaturedImage\":true,\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 19:20:30', '2020-05-18 19:20:30', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1830, 1, '2020-05-18 19:24:50', '2020-05-18 19:24:50', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:latest-posts {\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":50,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 19:24:50', '2020-05-18 19:24:50', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1831, 1, '2020-05-18 19:25:12', '2020-05-18 19:25:12', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:latest-posts {\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 19:25:12', '2020-05-18 19:25:12', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1832, 1, '2020-05-18 19:25:47', '2020-05-18 19:25:47', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:latest-posts {\"align\":\"wide\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 19:25:47', '2020-05-18 19:25:47', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1833, 1, '2020-05-18 19:28:20', '2020-05-18 19:28:20', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 19:28:20', '2020-05-18 19:28:20', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1834, 1, '2020-05-18 19:28:40', '2020-05-18 19:28:40', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 19:28:40', '2020-05-18 19:28:40', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1835, 1, '2020-05-18 20:05:05', '2020-05-18 20:05:05', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 20:05:05', '2020-05-18 20:05:05', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1836, 1, '2020-05-18 20:47:12', '2020-05-18 20:47:12', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 20:47:12', '2020-05-18 20:47:12', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1837, 1, '2020-05-18 20:47:42', '2020-05-18 20:47:42', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 20:47:42', '2020-05-18 20:47:42', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1839, 1, '2020-05-18 21:02:32', '2020-05-18 21:02:32', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<div id=\"instafeed\"></div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:02:32', '2020-05-18 21:02:32', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1840, 1, '2020-05-18 21:07:59', '2020-05-18 21:07:59', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:07:59', '2020-05-18 21:07:59', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1841, 1, '2020-05-18 21:24:19', '2020-05-18 21:24:19', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<!-- Begin Mailchimp Signup Form -->\n<div id=\"mc_embed_signup\">\n<form action=\"https://foodanddesserts.us18.list-manage.com/subscribe/post?u=cbf7bf48334634620480a141a&amp;id=b500e5e0df\" method=\"post\" id=\"mc-embedded-subscribe-form\" name=\"mc-embedded-subscribe-form\" class=\"validate\" target=\"_blank\" novalidate>\n    <div id=\"mc_embed_signup_scroll\">\n	<h2>Subscribe</h2>\n<div class=\"indicates-required\"><span class=\"asterisk\">*</span> indicates required</div>\n<div class=\"mc-field-group\">\n	<label for=\"mce-EMAIL\">Email Address  <span class=\"asterisk\">*</span>\n</label>\n	<input type=\"email\" value=\"\" name=\"EMAIL\" class=\"required email\" id=\"mce-EMAIL\">\n</div>\n	<div id=\"mce-responses\" class=\"clear\">\n		<div class=\"response\" id=\"mce-error-response\" style=\"display:none\"></div>\n		<div class=\"response\" id=\"mce-success-response\" style=\"display:none\"></div>\n	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->\n    <div style=\"position: absolute; left: -5000px;\" aria-hidden=\"true\"><input type=\"text\" name=\"b_cbf7bf48334634620480a141a_b500e5e0df\" tabindex=\"-1\" value=\"\"></div>\n    <div class=\"clear\"><input type=\"submit\" value=\"Subscribe\" name=\"subscribe\" id=\"mc-embedded-subscribe\" class=\"button\"></div>\n    </div>\n</form>\n</div>\n\n<!--End mc_embed_signup-->\n<!-- /wp:html -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:24:19', '2020-05-18 21:24:19', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1842, 1, '2020-05-18 21:25:24', '2020-05-18 21:25:24', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:25:24', '2020-05-18 21:25:24', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1844, 1, '2020-05-18 21:50:01', '2020-05-18 21:50:01', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:cover {\"url\":\"http://foodanddesserts.com/wp-content/uploads/2011/07/img_0747.jpg\",\"id\":769,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-image:url(http://foodanddesserts.com/wp-content/uploads/2011/07/img_0747.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Deliciousness jumping into the mouth</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:50:01', '2020-05-18 21:50:01', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1845, 1, '2020-05-18 21:50:31', '2020-05-18 21:50:31', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":6,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:50:31', '2020-05-18 21:50:31', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1846, 1, '2020-05-18 21:50:57', '2020-05-18 21:50:57', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:50:57', '2020-05-18 21:50:57', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1847, 1, '2020-05-18 21:52:06', '2020-05-18 21:52:06', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=O1FxpMslG5k\\u0026t=36s\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"wide\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube alignwide wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=O1FxpMslG5k&amp;t=36s\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:52:06', '2020-05-18 21:52:06', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1848, 1, '2020-05-18 21:56:59', '2020-05-18 21:56:59', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-18 21:56:59', '2020-05-18 21:56:59', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1851, 1, '2020-06-01 17:27:11', '2020-06-01 17:27:11', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:core-embed/facebook {\"url\":\"https://www.facebook.com/f00dndesserts\",\"className\":\"\"} -->\n<figure class=\"wp-block-embed-facebook wp-block-embed\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.facebook.com/f00dndesserts\n</div></figure>\n<!-- /wp:core-embed/facebook -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-01 17:27:11', '2020-06-01 17:27:11', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1852, 1, '2020-06-01 17:29:07', '2020-06-01 17:29:07', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=O1FxpMslG5k\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=O1FxpMslG5k\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-01 17:29:07', '2020-06-01 17:29:07', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1853, 1, '2020-06-01 17:32:31', '2020-06-01 17:32:31', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=O1FxpMslG5k\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"full\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube alignfull wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=O1FxpMslG5k\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-01 17:32:31', '2020-06-01 17:32:31', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1854, 1, '2020-06-01 17:34:16', '2020-06-01 17:34:16', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":9,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-01 17:34:16', '2020-06-01 17:34:16', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1856, 1, '2020-06-03 10:43:28', '2020-06-03 10:43:28', '', 'cropped-Logo', '', 'inherit', 'open', 'closed', '', 'cropped-logo', '', '', '2020-06-03 10:43:28', '2020-06-03 10:43:28', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/06/cropped-Logo.png', 0, 'attachment', 'image/png', 0),
(1857, 1, '2020-06-03 10:43:37', '2020-06-03 10:43:37', 'http://foodanddesserts.com/wp-content/uploads/2020/06/cropped-cropped-Logo.png', 'cropped-cropped-Logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-logo-png', '', '', '2020-06-03 10:43:37', '2020-06-03 10:43:37', '', 0, 'http://foodanddesserts.com/wp-content/uploads/2020/06/cropped-cropped-Logo.png', 0, 'attachment', 'image/png', 0),
(1858, 1, '2020-06-03 10:43:39', '2020-06-03 10:43:39', '{\n    \"foodanddesserts::custom_logo\": {\n        \"value\": 1857,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-03 10:43:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80bb5716-2253-4413-8a27-97c51d582d5d', '', '', '2020-06-03 10:43:39', '2020-06-03 10:43:39', '', 0, 'http://foodanddesserts.com/80bb5716-2253-4413-8a27-97c51d582d5d/', 0, 'customize_changeset', '', 0),
(1859, 1, '2020-06-12 15:53:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-12 15:53:08', '0000-00-00 00:00:00', '', 0, 'http://foodanddesserts.com/?p=1859', 0, 'post', '', 0),
(1860, 1, '2020-06-12 15:54:18', '2020-06-12 15:54:18', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-12 15:54:18', '2020-06-12 15:54:18', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1861, 1, '2020-06-12 15:54:36', '2020-06-12 15:54:36', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-12 15:54:36', '2020-06-12 15:54:36', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1862, 1, '2020-06-12 15:55:14', '2020-06-12 15:55:14', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-12 15:55:14', '2020-06-12 15:55:14', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1863, 1, '2020-06-12 16:07:28', '2020-06-12 16:07:28', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-12 16:07:28', '2020-06-12 16:07:28', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1864, 1, '2020-06-13 09:59:54', '2020-06-13 09:59:54', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:shortcode -->\n[latest_categories]\n<!-- /wp:shortcode -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-13 09:59:54', '2020-06-13 09:59:54', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1865, 1, '2020-06-13 10:00:09', '2020-06-13 10:00:09', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-13 10:00:09', '2020-06-13 10:00:09', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1866, 1, '2020-06-13 11:11:08', '2020-06-13 11:11:08', '', 'Browse Recipes', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2020-06-13 11:11:08', '2020-06-13 11:11:08', '', 9, 'http://foodanddesserts.com/9-autosave-v1/', 0, 'revision', '', 0),
(1867, 1, '2020-06-13 11:11:09', '2020-06-13 11:11:09', '', 'Browse Recipes', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-13 11:11:09', '2020-06-13 11:11:09', '', 9, 'http://foodanddesserts.com/9-revision-v1/', 0, 'revision', '', 0),
(1868, 1, '2020-06-13 12:53:25', '2020-06-13 12:53:25', '', 'blog-bg', '', 'inherit', 'open', 'closed', '', 'blog-bg', '', '', '2020-06-13 12:53:25', '2020-06-13 12:53:25', '', 9, 'http://foodanddesserts.com/wp-content/uploads/2020/06/blog-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(1869, 1, '2020-06-13 13:19:45', '2020-06-13 13:19:45', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '1795-revision-v1', '', '', '2020-06-13 13:19:45', '2020-06-13 13:19:45', '', 1795, 'http://foodanddesserts.com/1795-revision-v1/', 0, 'revision', '', 0),
(1870, 1, '2020-06-13 13:21:43', '2020-06-13 13:21:43', '<!-- wp:list -->\n<ul><li>Fruits</li><li>2 TS Honey, 2 TS Lemon</li><li>Chop fruits and mix with honey and lemon and stir.</li><li>Soak chia seeds in water for 30 minutes. Mix with fruits and honey and lemon.</li><li>Add dry fruits</li><li>Freeze empty serving bowls to keep them ice cold.</li><li>Add 2 scoops vanilla ice cream in serving bowl, add mixture. Add whiped cream on top. Add strawberry syrup</li></ul>\n<!-- /wp:list -->', 'Fruit Cream Pudding', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '1795-autosave-v1', '', '', '2020-06-13 13:21:43', '2020-06-13 13:21:43', '', 1795, 'http://foodanddesserts.com/1795-autosave-v1/', 0, 'revision', '', 0),
(1871, 1, '2020-06-13 13:30:28', '2020-06-13 13:30:28', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-13 13:30:28', '2020-06-13 13:30:28', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1872, 1, '2020-06-13 13:30:36', '2020-06-13 13:30:36', '<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:shortcode -->\n[latest_stickies][latest_categories]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"full\",\"className\":\"latest-post-group\"} -->\n<div class=\"wp-block-group alignfull latest-post-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:latest-posts {\"align\":\"wide\",\"className\":\"latest-home-posts custom-container\",\"postsToShow\":12,\"displayPostContent\":true,\"excerptLength\":17,\"postLayout\":\"grid\",\"columns\":4,\"displayFeaturedImage\":true,\"featuredImageAlign\":\"center\",\"featuredImageSizeSlug\":\"large\",\"featuredImageSizeWidth\":600,\"featuredImageSizeHeight\":600} /--></div></div>\n<!-- /wp:group -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customBackgroundColor\":\"#f89223\",\"customTextColor\":\"#ffffff\",\"borderRadius\":3,\"className\":\"view-all-btn\"} -->\n<div class=\"wp-block-button view-all-btn\"><a class=\"wp-block-button__link has-text-color has-background\" href=\"/blog\" style=\"background-color:#f89223;color:#ffffff;border-radius:3px\" rel=\"/blog\">View All Recipes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-06-13 13:30:36', '2020-06-13 13:30:36', '', 6, 'http://foodanddesserts.com/6-revision-v1/', 0, 'revision', '', 0),
(1873, 1, '2020-06-14 10:22:15', '2020-06-14 10:22:15', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n\nYields\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n\nPrep Time\n55 mins\n\n</div>\n<div class=\"post-yields\">\n\nCook Time\n55 mins\n\n</div>\n<div class=\"post-yields\">\n\nTotal Time\n55 mins\n\n</div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\" />\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div id=\"watchVideo\" class=\"responsive-video\"><iframe src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>', 'Fruit Cream Pudding', '', 'inherit', 'closed', 'closed', '', '1798-autosave-v1', '', '', '2020-06-14 10:22:15', '2020-06-14 10:22:15', '', 1798, 'http://foodanddesserts.com/1798-autosave-v1/', 0, 'revision', '', 0),
(1874, 1, '2020-06-14 10:18:21', '2020-06-14 10:18:21', '', 'thumbnail', '', 'inherit', 'open', 'closed', '', 'thumbnail', '', '', '2020-06-14 10:18:21', '2020-06-14 10:18:21', '', 1798, 'http://foodanddesserts.com/wp-content/uploads/2020/05/thumbnail.jpg', 0, 'attachment', 'image/jpeg', 0),
(1875, 1, '2020-06-14 10:19:44', '2020-06-14 10:19:44', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', '', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:19:44', '2020-06-14 10:19:44', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1876, 1, '2020-06-14 10:22:42', '2020-06-14 10:22:42', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n\nYields\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n\nPrep Time\n55 mins\n\n</div>\n<div class=\"post-yields\">\n\nCook Time\n55 mins\n\n</div>\n<div class=\"post-yields\">\n\nTotal Time\n55 mins\n\n</div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\" />\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div id=\"watchVideo\" class=\"responsive-video\"><iframe src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. the recipe is extremely simple and can be made minimal ingredients available in most of the kitchens', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:22:42', '2020-06-14 10:22:42', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1877, 1, '2020-06-14 10:34:26', '2020-06-14 10:34:26', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n\nYields\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n\nPrep Time\n55 mins\n\n</div>\n<div class=\"post-yields\">\n\nCook Time\n55 mins\n\n</div>\n<div class=\"post-yields\">\n\nTotal Time\n55 mins\n\n</div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\" />\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div id=\"watchVideo\" class=\"responsive-video\"><iframe src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:34:26', '2020-06-14 10:34:26', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1878, 1, '2020-06-14 10:39:30', '2020-06-14 10:39:30', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<a href=\"#watchVideo\" class=\"watch-video-btn\">Watch Video</a></div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:39:30', '2020-06-14 10:39:30', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1879, 1, '2020-06-14 10:49:42', '2020-06-14 10:49:42', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span><!--?xml version=\"1.0\" encoding=\"windows-1252\"?-->\n<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->\n\n<svg version=\"1.1\" id=\"Capa_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" width=\"380.721px\" height=\"380.721px\" viewBox=\"0 0 380.721 380.721\" style=\"enable-background:new 0 0 380.721 380.721;\" xml:space=\"preserve\"></svg>\n<g>\n	<path d=\"M344.308,327.389l0.116-0.047c0,0-82.888-84.119-91.021-92.252c-5.042-1.487-34.53-14.454-35.041-38.83   c12.583-14.418,30.882-28.268,57.907-28.541c0.046-0.023,0.186-0.035,0.256-0.035c12.223,0.331,24.562-3.724,34.38-12.304   c0.685-0.604,2.3-2.248,2.3-2.248l67.517-85.089l-8.11-8.139l-82.597,87.448l-9.748-9.777l85.014-85.008l-7.146-7.105   l-85.514,85.531l-8.087-8.093l85.525-85.531l-7.865-7.849l-85.525,85.52l-9.586-9.568l88.279-82.818l-7.413-7.413l-81.354,63.38   c0,0-2.95,2.486-3.973,3.521c-11.166,11.16-15.965,26.305-14.361,40.892c-1.127,18.503-7.11,32.242-14.871,42.687   C61.724,17.344,4.531,33.215,4.531,33.215L0,37.81c0,0,101.983,102.262,164.997,165.398c-22.11,22.134-128.7,128.724-128.7,128.724   l0.011,0.023c-0.093,0.092-0.209,0.127-0.319,0.243c-7.616,7.622-7.587,19.961,0.012,27.571c7.604,7.61,19.979,7.61,27.565,0.023   c0.122-0.116,0.157-0.244,0.227-0.314l0.023,0.023c0,0,106.724-106.693,128.706-128.665c11.525,11.538,19.217,19.241,20.728,20.751   c9.341,9.389,103.383,103.43,103.383,103.43h0.116c0,0.116,0.104,0.221,0.209,0.268c7.599,7.656,20.077,7.656,27.664,0   c7.703-7.588,7.703-20.02,0-27.664C344.529,327.504,344.424,327.458,344.308,327.389z\">\n</path></g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n<g>\n</g>\n</span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<a href=\"#watchVideo\" class=\"watch-video-btn\">Watch Video</a></div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:49:42', '2020-06-14 10:49:42', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1880, 1, '2020-06-14 10:51:26', '2020-06-14 10:51:26', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/fork-knife.png\" alt=\"\"></span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<a href=\"#watchVideo\" class=\"watch-video-btn\">Watch Video</a></div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:51:26', '2020-06-14 10:51:26', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1881, 1, '2020-06-14 10:55:38', '2020-06-14 10:55:38', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/fork-knife.png\" alt=\"\"></span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<a href=\"#watchVideo\" class=\"watch-video-btn\">Watch Video</a></div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul>\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 10:55:38', '2020-06-14 10:55:38', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0),
(1882, 1, '2020-06-14 11:12:29', '2020-06-14 11:12:29', '<div class=\"post-meta-info\">\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/fork-knife.png\" alt=\"\"></span>\n\n<span>Yields</span>\n6 Servings\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Prep Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Cook Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<span class=\"py-thumb\"><img src=\"//foodanddesserts.com/wp-content/themes/foodanddesserts/assets/images/clock-icon.png\" alt=\"\"></span>\n\n<span>Total Time</span>\n55 mins\n\n</div>\n<div class=\"post-yields\">\n		<a href=\"#watchVideo\" class=\"watch-video-btn\">Watch Video</a></div>\n</div>\n<h3>Main Ingredients</h3>\n<ul class=\"ingredient-list\">\n 	<li>1 Mango</li>\n 	<li>5 Cup Whipped Cream</li>\n 	<li>3 TBSP Powdered Sugar</li>\n</ul>\n\n<hr class=\"post-sep\">\n\n<h3>Directions</h3>\n<ul class=\"directions-list\">\n 	<li>Cut Mango in small pieces.</li>\n 	<li>Make mango puree.</li>\n 	<li>Add 5 cup whipped cream in a bowl.</li>\n 	<li>Blend whipped cream until it is thick like cake.</li>\n 	<li>Add mango puree and mix</li>\n 	<li>Add sugar and mix well</li>\n 	<li>Add Mngo toppings.</li>\n 	<li>Serve Cold.</li>\n</ul>\n<div class=\"responsive-video\" id=\"watchVideo\">\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uetm6YjQfpk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div>', 'Mango Mousse Recipe', 'An extremely popular and tasty mango based dessert recipe made with mango pulp, cream and choice of fruits topping. The recipe is extremely simple and can be made minimal ingredients available in most of the kitchens.', 'inherit', 'closed', 'closed', '', '1798-revision-v1', '', '', '2020-06-14 11:12:29', '2020-06-14 11:12:29', '', 1798, 'http://foodanddesserts.com/1798-revision-v1/', 0, 'revision', '', 0);

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
(1, 'Snacks', 'snacks', 0),
(2, 'Primary', 'primary', 0),
(3, 'Primary (2)', 'primary-2', 0),
(4, 'Social Links Menu', 'social-links-menu', 0),
(70, '8BIT', '8bit', 0),
(71, 'alignment', 'alignment-2', 0),
(72, 'Articles', 'articles', 0),
(73, 'aside', 'aside', 0),
(74, 'audio', 'audio', 0),
(75, 'captions', 'captions-2', 0),
(76, 'categories', 'categories', 0),
(77, 'chat', 'chat', 0),
(78, 'chattels', 'chattels', 0),
(79, 'cienaga', 'cienaga', 0),
(80, 'claycold', 'claycold', 0),
(81, 'Codex', 'codex', 0),
(82, 'comments', 'comments-2', 0),
(83, 'content', 'content-2', 0),
(84, 'crushing', 'crushing', 0),
(85, 'css', 'css', 0),
(86, 'depo', 'depo', 0),
(87, 'dinarchy', 'dinarchy', 0),
(88, 'doolie', 'doolie', 0),
(89, 'dowork', 'dowork', 0),
(90, 'edge case', 'edge-case', 0),
(91, 'embeds', 'embeds-2', 0),
(92, 'energumen', 'energumen', 0),
(93, 'ephialtes', 'ephialtes', 0),
(94, 'eudiometer', 'eudiometer', 0),
(95, 'excerpt', 'excerpt-2', 0),
(96, 'Fail', 'fail', 0),
(97, 'featured image', 'featured-image', 0),
(98, 'figuriste', 'figuriste', 0),
(99, 'filler', 'filler', 0),
(100, 'formatting', 'formatting-2', 0),
(101, 'FTW', 'ftw', 0),
(102, 'Fun', 'fun', 0),
(103, 'gallery', 'gallery', 0),
(104, 'goes here', 'goes-here', 0),
(105, 'habergeon', 'habergeon', 0),
(106, 'hapless', 'hapless', 0),
(107, 'hartshorn', 'hartshorn', 0),
(108, 'hostility impregnability', 'hostility-impregnability', 0),
(109, 'html', 'html', 0),
(110, 'image', 'image', 0),
(111, 'impropriation', 'impropriation', 0),
(112, 'is', 'is', 0),
(113, 'jetpack', 'jetpack-2', 0),
(114, 'knave', 'knave', 0),
(115, 'layout', 'layout', 0),
(116, 'link', 'link', 0),
(117, 'lists', 'lists-2', 0),
(118, 'lorem', 'lorem', 0),
(119, 'Love', 'love', 0),
(120, 'markup', 'markup-2', 0),
(121, 'media', 'media', 0),
(122, 'misinformed', 'misinformed', 0),
(123, 'moil', 'moil', 0),
(124, 'more', 'more', 0),
(125, 'mornful', 'mornful', 0),
(126, 'Mothership', 'mothership', 0),
(127, 'Must Read', 'mustread', 0),
(128, 'Nailed It', 'nailedit', 0),
(129, 'outlaw', 'outlaw', 0),
(130, 'pagination', 'pagination', 0),
(131, 'pamphjlet', 'pamphjlet', 0),
(132, 'password', 'password-2', 0),
(133, 'Pictures', 'pictures', 0),
(134, 'pingbacks', 'pingbacks-2', 0),
(135, 'pneumatics', 'pneumatics', 0),
(136, 'portly portreeve', 'portly-portreeve', 0),
(137, 'post', 'post', 0),
(138, 'Post Formats', 'post-formats', 0),
(139, 'precipitancy', 'precipitancy', 0),
(140, 'privation', 'privation', 0),
(141, 'programme', 'programme', 0),
(142, 'psychological', 'psychological', 0),
(143, 'puncher', 'puncher', 0),
(144, 'quote', 'quote', 0),
(145, 'ramose', 'ramose', 0),
(146, 'read more', 'read-more', 0),
(147, 'readability', 'readability', 0),
(148, 'renegade', 'renegade', 0),
(149, 'retrocede', 'retrocede', 0),
(150, 'shortcode', 'shortcode', 0),
(151, 'stagnation unhorsed', 'stagnation-unhorsed', 0),
(152, 'standard', 'standard-2', 0),
(153, 'status', 'status', 0),
(154, 'sticky', 'sticky-2', 0),
(155, 'Success', 'success', 0),
(156, 'Swagger', 'swagger', 0),
(157, 'Tag A', 'tag-a', 0),
(158, 'Tag B', 'tag-b', 0),
(159, 'Tag C', 'tag-c', 0),
(160, 'tag1', 'tag1', 0),
(161, 'tag2', 'tag2', 0),
(162, 'tag3', 'tag3', 0),
(163, 'Tags', 'tags', 0),
(164, 'template', 'template', 0),
(165, 'text', 'text', 0),
(166, 'the man', 'the-man', 0),
(167, 'thunderheaded', 'thunderheaded', 0),
(168, 'tiled', 'tiled', 0),
(169, 'title', 'title', 0),
(170, 'trackbacks', 'trackbacks-2', 0),
(171, 'twitter', 'twitter-2', 0),
(172, 'unculpable', 'unculpable', 0),
(173, 'Unseen', 'unseen', 0),
(174, 'video', 'video', 0),
(175, 'videopress', 'videopress', 0),
(176, 'withered brandnew', 'withered-brandnew', 0),
(177, 'WordPress', 'wordpress', 0),
(178, 'wordpress.tv', 'wordpress-tv', 0),
(179, 'xanthopsia', 'xanthopsia', 0),
(180, 'All Pages', 'all-pages', 0),
(181, 'Short', 'short', 0),
(182, 'All Pages Flat', 'all-pages-flat', 0),
(183, 'Testing Menu', 'testing-menu', 0),
(184, 'Empty Menu', 'empty-menu', 0),
(185, 'Gallery', 'post-format-gallery', 0),
(186, 'Aside', 'post-format-aside', 0),
(187, 'Chat', 'post-format-chat', 0),
(188, 'Link', 'post-format-link', 0),
(189, 'Image', 'post-format-image', 0),
(190, 'Quote', 'post-format-quote', 0),
(191, 'Status', 'post-format-status', 0),
(192, 'Video', 'post-format-video', 0),
(193, 'Audio', 'post-format-audio', 0),
(195, 'Lunch', 'lunch', 0),
(196, 'Dinner', 'dinner', 0),
(197, 'Breakfast', 'breakfast', 0),
(198, 'Desserts', 'desserts', 0),
(199, 'Drinks', 'drinks', 0);

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
(19, 2, 0),
(23, 3, 0),
(25, 3, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(1046, 183, 0),
(1047, 183, 0),
(1049, 183, 0),
(1051, 183, 0),
(1052, 183, 0),
(1053, 183, 0),
(1054, 183, 0),
(1055, 183, 0),
(1056, 183, 0),
(1057, 183, 0),
(1058, 183, 0),
(1059, 183, 0),
(1060, 183, 0),
(1061, 183, 0),
(1062, 183, 0),
(1063, 183, 0),
(1064, 183, 0),
(1065, 183, 0),
(1066, 183, 0),
(1629, 181, 0),
(1636, 180, 0),
(1754, 2, 0),
(1755, 2, 0),
(1756, 2, 0),
(1757, 2, 0),
(1758, 2, 0),
(1760, 2, 0),
(1761, 2, 0),
(1762, 1, 0),
(1762, 198, 0),
(1764, 1, 0),
(1764, 198, 0),
(1766, 1, 0),
(1766, 197, 0),
(1793, 1, 0),
(1793, 197, 0),
(1793, 199, 0),
(1794, 1, 0),
(1794, 196, 0),
(1794, 198, 0),
(1795, 1, 0),
(1795, 198, 0),
(1796, 1, 0),
(1796, 197, 0),
(1797, 1, 0),
(1797, 198, 0),
(1798, 1, 0),
(1798, 198, 0),
(1799, 1, 0),
(1799, 197, 0),
(1800, 1, 0),
(1800, 195, 0),
(1800, 198, 0),
(1801, 1, 0),
(1801, 198, 0);

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
(1, 1, 'category', '', 0, 12),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 4),
(70, 70, 'post_tag', 'Tags posts about 8BIT.', 0, 0),
(71, 71, 'post_tag', '', 0, 0),
(72, 72, 'post_tag', 'Tags posts about Articles.', 0, 0),
(73, 73, 'post_tag', '', 0, 0),
(74, 74, 'post_tag', '', 0, 0),
(75, 75, 'post_tag', '', 0, 0),
(76, 76, 'post_tag', '', 0, 0),
(77, 77, 'post_tag', '', 0, 0),
(78, 78, 'post_tag', '', 0, 0),
(79, 79, 'post_tag', '', 0, 0),
(80, 80, 'post_tag', '', 0, 0),
(81, 81, 'post_tag', '', 0, 0),
(82, 82, 'post_tag', '', 0, 0),
(83, 83, 'post_tag', '', 0, 0),
(84, 84, 'post_tag', '', 0, 0),
(85, 85, 'post_tag', '', 0, 0),
(86, 86, 'post_tag', '', 0, 0),
(87, 87, 'post_tag', '', 0, 0),
(88, 88, 'post_tag', '', 0, 0),
(89, 89, 'post_tag', 'Tags posts about #dowork.', 0, 0),
(90, 90, 'post_tag', '', 0, 0),
(91, 91, 'post_tag', '', 0, 0),
(92, 92, 'post_tag', '', 0, 0),
(93, 93, 'post_tag', '', 0, 0),
(94, 94, 'post_tag', '', 0, 0),
(95, 95, 'post_tag', '', 0, 0),
(96, 96, 'post_tag', 'Tags posts about fail.', 0, 0),
(97, 97, 'post_tag', '', 0, 0),
(98, 98, 'post_tag', '', 0, 0),
(99, 99, 'post_tag', '', 0, 0),
(100, 100, 'post_tag', '', 0, 0),
(101, 101, 'post_tag', '', 0, 0),
(102, 102, 'post_tag', 'Tags posts about fun.', 0, 0),
(103, 103, 'post_tag', '', 0, 0),
(104, 104, 'post_tag', '', 0, 0),
(105, 105, 'post_tag', '', 0, 0),
(106, 106, 'post_tag', '', 0, 0),
(107, 107, 'post_tag', '', 0, 0),
(108, 108, 'post_tag', '', 0, 0),
(109, 109, 'post_tag', '', 0, 0),
(110, 110, 'post_tag', '', 0, 0),
(111, 111, 'post_tag', '', 0, 0),
(112, 112, 'post_tag', '', 0, 0),
(113, 113, 'post_tag', '', 0, 0),
(114, 114, 'post_tag', '', 0, 0),
(115, 115, 'post_tag', '', 0, 0),
(116, 116, 'post_tag', '', 0, 0),
(117, 117, 'post_tag', '', 0, 0),
(118, 118, 'post_tag', '', 0, 0),
(119, 119, 'post_tag', 'Tags posts about love.', 0, 0),
(120, 120, 'post_tag', '', 0, 0),
(121, 121, 'post_tag', '', 0, 0),
(122, 122, 'post_tag', '', 0, 0),
(123, 123, 'post_tag', '', 0, 0),
(124, 124, 'post_tag', '', 0, 0),
(125, 125, 'post_tag', '', 0, 0),
(126, 126, 'post_tag', 'Tags posts about motherships.', 0, 0),
(127, 127, 'post_tag', 'Tags posts about articles you must read.', 0, 0),
(128, 128, 'post_tag', 'Tags posts about that nailed it.', 0, 0),
(129, 129, 'post_tag', '', 0, 0),
(130, 130, 'post_tag', '', 0, 0),
(131, 131, 'post_tag', '', 0, 0),
(132, 132, 'post_tag', '', 0, 0),
(133, 133, 'post_tag', '', 0, 0),
(134, 134, 'post_tag', '', 0, 0),
(135, 135, 'post_tag', '', 0, 0),
(136, 136, 'post_tag', '', 0, 0),
(137, 137, 'post_tag', '', 0, 0),
(138, 138, 'post_tag', '', 0, 0),
(139, 139, 'post_tag', '', 0, 0),
(140, 140, 'post_tag', '', 0, 0),
(141, 141, 'post_tag', '', 0, 0),
(142, 142, 'post_tag', '', 0, 0),
(143, 143, 'post_tag', '', 0, 0),
(144, 144, 'post_tag', '', 0, 0),
(145, 145, 'post_tag', '', 0, 0),
(146, 146, 'post_tag', '', 0, 0),
(147, 147, 'post_tag', '', 0, 0),
(148, 148, 'post_tag', '', 0, 0),
(149, 149, 'post_tag', '', 0, 0),
(150, 150, 'post_tag', '', 0, 0),
(151, 151, 'post_tag', '', 0, 0),
(152, 152, 'post_tag', '', 0, 0),
(153, 153, 'post_tag', '', 0, 0),
(154, 154, 'post_tag', '', 0, 0),
(155, 155, 'post_tag', 'Tags posts about success.', 0, 0),
(156, 156, 'post_tag', 'Tags posts about swagger.', 0, 0),
(157, 157, 'post_tag', '', 0, 0),
(158, 158, 'post_tag', '', 0, 0),
(159, 159, 'post_tag', '', 0, 0),
(160, 160, 'post_tag', '', 0, 0),
(161, 161, 'post_tag', '', 0, 0),
(162, 162, 'post_tag', '', 0, 0),
(163, 163, 'post_tag', 'Tags posts about tags. #inception', 0, 0),
(164, 164, 'post_tag', '', 0, 0),
(165, 165, 'post_tag', '', 0, 0),
(166, 166, 'post_tag', '', 0, 0),
(167, 167, 'post_tag', '', 0, 0),
(168, 168, 'post_tag', '', 0, 0),
(169, 169, 'post_tag', '', 0, 0),
(170, 170, 'post_tag', '', 0, 0),
(171, 171, 'post_tag', '', 0, 0),
(172, 172, 'post_tag', '', 0, 0),
(173, 173, 'post_tag', 'Tags posts about things that cannot be unseen.', 0, 0),
(174, 174, 'post_tag', '', 0, 0),
(175, 175, 'post_tag', '', 0, 0),
(176, 176, 'post_tag', '', 0, 0),
(177, 177, 'post_tag', 'Tags posts about WordPress.', 0, 0),
(178, 178, 'post_tag', '', 0, 0),
(179, 179, 'post_tag', '', 0, 0),
(180, 180, 'nav_menu', '', 0, 1),
(181, 181, 'nav_menu', '', 0, 1),
(182, 182, 'nav_menu', '', 0, 0),
(183, 183, 'nav_menu', '', 0, 19),
(184, 184, 'nav_menu', '', 0, 0),
(185, 185, 'post_format', '', 0, 0),
(186, 186, 'post_format', '', 0, 0),
(187, 187, 'post_format', '', 0, 0),
(188, 188, 'post_format', '', 0, 0),
(189, 189, 'post_format', '', 0, 0),
(190, 190, 'post_format', '', 0, 0),
(191, 191, 'post_format', '', 0, 0),
(192, 192, 'post_format', '', 0, 0),
(193, 193, 'post_format', '', 0, 0),
(195, 195, 'category', '', 0, 1),
(196, 196, 'category', '', 0, 1),
(197, 197, 'category', '', 0, 4),
(198, 198, 'category', '', 0, 8),
(199, 199, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_dbt`
--

CREATE TABLE `wp_totalsoft_galleryv_dbt` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGalleryV_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_totalsoft_galleryv_dbt`
--

INSERT INTO `wp_totalsoft_galleryv_dbt` (`id`, `TotalSoftGalleryV_SetName`, `TotalSoftGalleryV_SetType`) VALUES
(1, 'Grid Video Gallery 1', 'Grid Video Gallery'),
(2, 'Grid Video Gallery 2', 'Grid Video Gallery'),
(3, 'LightBox Video Gallery 1', 'LightBox Video Gallery'),
(4, 'LightBox Video Gallery 2', 'LightBox Video Gallery'),
(5, 'Thumbnails Video 1', 'Thumbnails Video'),
(6, 'Thumbnails Video 2', 'Thumbnails Video'),
(7, 'Content Popup 1', 'Content Popup'),
(8, 'Content Popup 2', 'Content Popup'),
(9, 'Elastic Gallery 1', 'Elastic Gallery'),
(10, 'Elastic Gallery 2', 'Elastic Gallery'),
(11, 'Fancy Gallery 1', 'Fancy Gallery'),
(12, 'Fancy Gallery 2', 'Fancy Gallery'),
(13, 'Parallax Engine 1', 'Parallax Engine'),
(14, 'Parallax Engine 2', 'Parallax Engine'),
(15, 'Classic Gallery 1', 'Classic Gallery'),
(16, 'Classic Gallery 2', 'Classic Gallery'),
(17, 'Space Gallery 1', 'Space Gallery'),
(18, 'Space Gallery 2', 'Space Gallery');

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_dbt_1`
--

CREATE TABLE `wp_totalsoft_galleryv_dbt_1` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGalleryV_SetID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_totalsoft_galleryv_dbt_1`
--

INSERT INTO `wp_totalsoft_galleryv_dbt_1` (`id`, `TotalSoftGalleryV_SetID`, `TotalSoftGalleryV_SetName`, `TotalSoftGalleryV_SetType`, `TotalSoft_GV_1_01`, `TotalSoft_GV_1_02`, `TotalSoft_GV_1_03`, `TotalSoft_GV_1_04`, `TotalSoft_GV_1_05`, `TotalSoft_GV_1_06`, `TotalSoft_GV_1_07`, `TotalSoft_GV_1_08`, `TotalSoft_GV_1_09`, `TotalSoft_GV_1_10`, `TotalSoft_GV_1_11`, `TotalSoft_GV_1_12`, `TotalSoft_GV_1_13`, `TotalSoft_GV_1_14`, `TotalSoft_GV_1_15`, `TotalSoft_GV_1_16`, `TotalSoft_GV_1_17`, `TotalSoft_GV_1_18`, `TotalSoft_GV_1_19`, `TotalSoft_GV_1_20`, `TotalSoft_GV_1_21`, `TotalSoft_GV_1_22`, `TotalSoft_GV_1_23`, `TotalSoft_GV_1_24`, `TotalSoft_GV_1_25`, `TotalSoft_GV_1_26`, `TotalSoft_GV_1_27`, `TotalSoft_GV_1_28`, `TotalSoft_GV_1_29`, `TotalSoft_GV_1_30`, `TotalSoft_GV_1_31`, `TotalSoft_GV_1_32`, `TotalSoft_GV_1_33`, `TotalSoft_GV_1_34`, `TotalSoft_GV_1_35`, `TotalSoft_GV_1_36`, `TotalSoft_GV_1_37`, `TotalSoft_GV_1_38`, `TotalSoft_GV_1_39`) VALUES
(1, '1', 'Grid Video Gallery 1', 'Grid Video Gallery', 'true', 'false', '294', '5', '0', 'sepia', '0.5', '#000000', 'rgba(0,148,145,0.75)', '0', '19', 'Gabriola', '#ffffff', 'center', '0', 'dotted', '#ffffff', '#ffffff', '0', 'solid', '#009491', '0', '30', '30', 'Gabriola', '#009491', 'center', '1', 'solid', '#cccccc', '3', 'totalsoft totalsoft-arrow-circle-left', 'totalsoft totalsoft-arrow-circle-right', '#009491', '28', '3', 'totalsoft totalsoft-times-circle', '#009491', '25'),
(2, '2', 'Grid Video Gallery 2', 'Grid Video Gallery', 'true', 'true', '294', '5', '0', 'drop-shadow', '0.01', '#727272', '#ededed', '2', '19', 'Gabriola', '#009491', 'center', '1', 'solid', '#d8d8d8', '#ffffff', '0', 'solid', '#009491', '0', '30', '30', 'Gabriola', '#009491', 'center', '1', 'solid', '#cccccc', '3', 'totalsoft totalsoft-arrow-circle-left', 'totalsoft totalsoft-arrow-circle-right', '#009491', '28', '3', 'totalsoft totalsoft-times-circle', '#009491', '25'),
(3, '3', 'LightBox Video Gallery 1', 'LightBox Video Gallery', '340', '5', '10', '#000000', '2', 'solid', '#ffffff', '0', '#ffffff', '0', 'solid', '#fffff1', '20', 'true', 'center', '20', 'Arial', '#000000', '2', 'totalsoft totalsoft-play-circle-o', 'totalsoft totalsoft-pause-circle-o', '20', '#999999', '2', 'totalsoft totalsoft-times-circle-o', '20', '#999999', 'Close', 'Gabriola', '3', 'totalsoft totalsoft-arrow-circle-left', 'totalsoft totalsoft-arrow-circle-right', '22', '#000000', '16', '#000000', 'Next', 'Prev', '#999999'),
(4, '4', 'LightBox Video Gallery 2', 'LightBox Video Gallery', '350', '5', '0', '#8e8e8e', '7', 'solid', '#ffffff', '0', '#ffffff', '4', 'none', '#ffffff', '10', 'true', 'center', '20', 'Arial', '#000000', '1', 'totalsoft totalsoft-play-circle', 'totalsoft totalsoft-pause-circle', '20', '#000000', '1', 'totalsoft totalsoft-times', '25', '#000000', '', 'Gabriola', '11', 'totalsoft totalsoft-long-arrow-left', 'totalsoft totalsoft-long-arrow-right', '25', '#000000', '18', '#dbdbdb', 'Next', 'Prev', '#595959'),
(5, '5', 'Thumbnails Video 1', 'Thumbnails Video', 'overlay', 'fold', '300', 'rgba(30,115,190,0.3)', '30', '12', '10', '0', '20', '#009491', '320', '180', '', '', '', '', '', '', '#009491', 'false', '#009491', '0', '#ffffff', 'false', '#009491', '25', 'Gabriola', '#dd3333', 'center', '#dd3333', '16', '#dd3333', '#ffffff', '100', '#dd3333', '#ffffff', '100', 'Next', 'Prev'),
(6, '6', 'Thumbnails Video 2', 'Thumbnails Video', 'normal', 'popout', '400', '#009491', '30', '8', '8', '1', '20', '#878787', '320', '180', '', '', '', '', '', '', 'rgba(0,0,0,0.24)', 'true', 'rgba(30,115,190,0.65)', '0', '#ffffff', 'false', 'rgba(30,115,190,0.65)', '25', 'Gabriola', '#ffffff', 'center', '#ffffff', '16', 'rgba(30,115,190,0.45)', '#ffffff', '4', '#ffffff', '#1e73be', '100', 'Next', 'Prev'),
(7, '7', 'Content Popup 1', 'Content Popup', '370', '190', '5', '#ffffff', '10', 'false', '15', '#009491', '9', '#1e73be', 'true', '#ffffff', '25', 'Abadi MT Condensed Light', '#1e73be', 'false', '1', '#ffffff', 'View More ....', '2', '#ffffff', '20', '#ffffff', '#000000', '25', 'Gabriola', '#000000', '#ffffff', 'Next', 'Prev', '#ffffff', '#999999', '17', 'Gabriola', '#ffffff', '#000000', '#000000', '#ffffff', 'solid'),
(8, '8', 'Content Popup 2', 'Content Popup', '350', '190', '5', '#ffffff', '10', 'true', '1', '#878787', '8', '#000000', 'true', '#ffffff', '25', 'Gabriola', '#dd3333', 'false', '2', '#000000', 'View More ....', '2', '#ffffff', '20', '#ffffff', '#000000', '23', 'Gabriola', '#000000', '#ffffff', 'Next', 'Prev', '#ffffff', '#999999', '16', 'Gabriola', '#ffffff', '#999999', '#ededed', '#000000', 'solid'),
(9, '9', 'Elastic Gallery 1', 'Elastic Gallery', '300', '160', '3', 'solid', '#ffffff', '2', '#8c8c8c', 'zEff1', '4', '17', '#ffffff', 'Abadi MT Condensed Light', 'rgba(255,0,0,0.85)', 'zTitfHov1', '4', 'true', '14', '#ff0000', 'totalsoft totalsoft-file-video-o', '1', '#ffffff', 'solid', '#ffffff', '#ff0000', '#ffffff', '#ffffff', 'totalsoft totalsoft-link', '#000000', '6', '#ffffff', '30', 'totalsoft totalsoft-times-circle', '40', '#ffffff', '#000000', '11', 'false', 'true', '10'),
(10, '10', 'Elastic Gallery 2', 'Elastic Gallery', '280', '160', '3', 'solid', '#ffffff', '0', '#000000', 'zEff3', '3', '17', '#ffffff', 'Aldhabi', 'rgba(221,153,51,0.4)', 'zTitfHov2', '3', 'true', '14', '#dd9933', 'totalsoft totalsoft-file-video-o', '1', '#ffffff', 'solid', '#ffffff', '#dd9933', '#ffffff', '#ffffff', 'totalsoft totalsoft-link', '#000000', '6', '#ffffff', '30', 'totalsoft totalsoft-times-circle', '30', '#ffffff', '#6b6b6b', '1', 'false', 'true', '0'),
(11, '11', 'Fancy Gallery 1', 'Fancy Gallery', '283', '165', '3', '#ffffff', '15', '#d3d3d3', '0', '10', '15', 'Arial', '#ededed', '1', 'solid', '#ffffff', '0', '#000000', '16', 'Aldhabi', '#ffffff', 'center', '5', 'rgba(0,0,0,0.07)', '0', 'rgba(0,0,0,0.07)', '#ffffff', 'rgba(0,0,0,0.07)', 'rgba(0,0,0,0.07)', 'Default', 'rgba(0,0,0,0.25)', '#000000', '#ffffff', '#000000', '550', '350', '#ffffff', '3', '95', '65', '22'),
(12, '12', 'Fancy Gallery 2', 'Fancy Gallery', '237', '145', '5', '#ffffff', '6', '#000000', '0', '10', '23', 'Gabriola', '#ffffff', '0', 'none', '#000000', '4', '#ffffff', '12', 'Aldhabi', '#ffffff', 'center', '3', '#009491', '0', '#009491', '#ffffff', '#00797f', '#00797f', 'Default', 'rgba(0,148,145,0.3)', '#000000', '#ffffff', '#ffffff', '550', '350', '#ffffff', '3', '96', '72', '22'),
(13, '13', 'Parallax Engine 1', 'Parallax Engine', '158', '280', '5', '10', '#ffffff', '1', 'TotalSoft_H_Ef1', '10', '14', 'Abadi MT Condensed Light', '#ffffff', '1', '#ffffff', 'TotalSoft_Title_Ef4', 'true', 'totalsoft totalsoft-play-circle', '20', '#ffffff', 'TotalSoft_HovLine1', 'true', '2', '#ffffff', '10', '#ffffff', 'rgba(255,255,255,0.3)', 'TotalSoft_Hov_Overlay1', 'false', 'rgba(255,255,255,0.39)', '1', 'elastic', '#000000', '10', '#ffffff', '10', '#000000', '#000000', '16', 'Abadi MT Condensed Light', '#ffffff'),
(14, '14', 'Parallax Engine 2', 'Parallax Engine', '158', '280', '0', '10', '#919191', '1', 'TotalSoft_H_Ef3', '10', '18', 'Abadi MT Condensed Light', '#009491', '2', '#000000', 'TotalSoft_Title_Ef1', 'false', 'totalsoft totalsoft-play-circle', '20', '#ffffff', 'TotalSoft_HovLine6', 'true', '2', '#009491', '10', '#ffffff', 'rgba(255,255,255,0.1)', 'TotalSoft_Hov_Overlay5', 'true', '#000000', '1', 'fade', '#000000', '5', '#000000', '10', '#ffffff', '#000000', '16', 'Abadi MT Condensed Light', '#009491'),
(15, '15', 'Classic Gallery 1', 'Classic Gallery', '2', 'effect01', 'rgba(0,0,0,0.5)', 'rgba(0,0,0,0.5)', 'none', 'rgba(0,0,0,0.7)', '0', '#000000', '16', 'Abadi MT Condensed Light', '#ffffff', 'youtube-play', '#ffffff', '25', '#ffffff', '#ededed', '4', '3', 'true', '17', 'Abadi MT Condensed Light', '#000000', 'center', 'true', '70', '2', 'solid', '#afafaf', 'times-circle', '#000000', '30', '3', '#ededed', '2', 'View More . . .', '#ededed', '#000000', '15', 'Abadi MT Condensed Light'),
(16, '16', 'Classic Gallery 2', 'Classic Gallery', '2', 'effect05', 'rgba(30,115,190,0.12)', '#ffffff', 'none', 'rgba(0,0,0,0.7)', '0', '#000000', '16', 'Abadi MT Condensed Light', '#ffffff', 'youtube-play', '#ffffff', '25', '#ffffff', '#ededed', '0', '0', 'true', '17', 'Abadi MT Condensed Light', '#000000', 'center', 'true', '100', '2', 'solid', '#ededed', 'times-circle', '#1e73be', '30', '0', '#ededed', '15', 'View More . . .', '#1e73be', '#ffffff', '15', 'Abadi MT Condensed Light'),
(17, '17', 'Space Gallery 1', 'Space Gallery', 'animno', '3', '10', '16', 'Abadi MT Condensed Light', 'center', '#000000', 'gradient2', 'rgba(255,255,255,0.1)', '#ffffff', '', '#dbdbdb', '', 'View More', '#f4f4f4', '#898989', 'Abadi MT Condensed Light', '16', 'effect03', '#ffffff', '#000000', 'camera-retro', '18', 'after', '0', '#000000', '#ffffff', '16', 'Abadi MT Condensed Light', '#000000', '80', '1', '#e0e0e0', '', '', '', '', '', ''),
(18, '18', 'Space Gallery 2', 'Space Gallery', 'animno', '3', '10', '16', 'Abadi MT Condensed Light', 'center', '#ffffff', 'color', '#ff0000', '#ffffff', '', '#dddddd', '', 'View More', 'rgba(255,255,255,0)', '#8c8c8c', 'Abadi MT Condensed Light', '16', 'effect09', 'rgba(255,255,255,0.89)', '#8c8c8c', 'film', '18', 'after', '10', '#ffffff', '#e5e5e5', '16', 'Abadi MT Condensed Light', '#000000', '80', '1', '#e0e0e0', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_dbt_2`
--

CREATE TABLE `wp_totalsoft_galleryv_dbt_2` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGalleryV_SetID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_totalsoft_galleryv_dbt_2`
--

INSERT INTO `wp_totalsoft_galleryv_dbt_2` (`id`, `TotalSoftGalleryV_SetID`, `TotalSoftGalleryV_SetName`, `TotalSoftGalleryV_SetType`, `TotalSoft_GV_2_01`, `TotalSoft_GV_2_02`, `TotalSoft_GV_2_03`, `TotalSoft_GV_2_04`, `TotalSoft_GV_2_05`, `TotalSoft_GV_2_06`, `TotalSoft_GV_2_07`, `TotalSoft_GV_2_08`, `TotalSoft_GV_2_09`, `TotalSoft_GV_2_10`, `TotalSoft_GV_2_11`, `TotalSoft_GV_2_12`, `TotalSoft_GV_2_13`, `TotalSoft_GV_2_14`, `TotalSoft_GV_2_15`, `TotalSoft_GV_2_16`, `TotalSoft_GV_2_17`, `TotalSoft_GV_2_18`, `TotalSoft_GV_2_19`, `TotalSoft_GV_2_20`, `TotalSoft_GV_2_21`, `TotalSoft_GV_2_22`, `TotalSoft_GV_2_23`, `TotalSoft_GV_2_24`, `TotalSoft_GV_2_25`, `TotalSoft_GV_2_26`, `TotalSoft_GV_2_27`, `TotalSoft_GV_2_28`, `TotalSoft_GV_2_29`, `TotalSoft_GV_2_30`, `TotalSoft_GV_2_31`, `TotalSoft_GV_2_32`, `TotalSoft_GV_2_33`, `TotalSoft_GV_2_34`, `TotalSoft_GV_2_35`, `TotalSoft_GV_2_36`, `TotalSoft_GV_2_37`, `TotalSoft_GV_2_38`, `TotalSoft_GV_2_39`) VALUES
(1, '1', 'Grid Video Gallery 1', 'Grid Video Gallery', '1', 'solid', '#009491', '0', 'View More', '#009491', '#ffffff', '18', 'Gabriola', '#ffffff', '#009491', 'Next', 'Prev', '#ffffff', '#009491', '23', 'Gabriola', '#009491', '#ffffff', '#009491', '#f9f9f9', 'true', 'true', 'solid', '#009491', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', ''),
(2, '2', 'Grid Video Gallery 2', 'Grid Video Gallery', '1', 'solid', '#009491', '0', 'View More', '#009491', '#ffffff', '18', 'Gabriola', '#ffffff', '#009491', 'Next', 'Prev', '#ffffff', '#009491', '23', 'Gabriola', '#009491', '#ffffff', '#009491', '#f9f9f9', 'true', 'true', 'solid', '#009491', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', ''),
(3, '3', 'LightBox Video Gallery 1', 'LightBox Video Gallery', '#ffffff', '17', 'Gabriola', '#ffffff', '#000000', '#ffffff', '#999999', 'solid', '#ffffff', 'lImgZoom7', '4', '#000000', 'hovLayTVG1', '4', '#ffffff', '23', '#000000', 'Gabriola', 'Gabriola', 'hovTit3', '5', '0', 'solid', '#dd3333', 'hovLine6', '6', '13', '#ffffff', '#ffffff', '1', 'solid', 'View More', 'hovLink7', '5', '', '', 'rgba(0,0,0,0.2)', '', ''),
(4, '4', 'LightBox Video Gallery 2', 'LightBox Video Gallery', '#ffffff', '17', 'Gabriola', '#ffffff', '#000000', '#ffffff', '#000000', 'solid', '#ffffff', 'lImgZoom1', '5', '#000000', 'hovLayTVG1', '5', '#dd3333', '23', '#ffffff', 'Gabriola', 'Gabriola', 'hovTit1', '5', '1', 'solid', '#ffffff', 'hovLine5', '4', '13', '#ffffff', '#ffffff', '3', 'solid', 'View More', 'hovLink5', '4', '', '', 'rgba(0,0,0,0.2)', '', ''),
(5, '5', 'Thumbnails Video 1', 'Thumbnails Video', '#ffffff', '#dd3333', '21', 'Gabriola', '#dd3333', '#ffffff', '#dd3333', '#e0e0e0', 'none', '#dd3333', '5', '45', '#ffffff', 'totalsoft totalsoft-play-circle', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '6', 'Thumbnails Video 2', 'Thumbnails Video', '#ffffff', '#939393', '21', 'Gabriola', '#939393', '#ffffff', '#939393', '#e0e0e0', 'none', '#939393', '5', '45', '#ffffff', 'totalsoft totalsoft-play-circle', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '7', 'Content Popup 1', 'Content Popup', '#ffffff', '#ffffff', '10', 'solid', '#ffffff', '25', 'Abadi MT Condensed Light', '#ffffff', '#1e73be', 'center', 'View More ....', '0', 'solid', '#ffffff', '4', '#1e73be', '#ffffff', '16', 'Abadi MT Condensed Light', '#ffffff', '#1e73be', '#1e73be', '25', '#ffffff', '1', 'totalsoft totalsoft-times', '25', '#ffffff', '11', 'totalsoft totalsoft-long-arrow-left', 'totalsoft totalsoft-long-arrow-right', 'false', '', '', '', 'rgba(0,0,0,0.2)', '', '', ''),
(8, '8', 'Content Popup 2', 'Content Popup', '#ffffff', '#ffffff', '3', 'solid', '#ffffff', '28', 'Gabriola', '#ffffff', '#ff0000', 'center', 'View More ....', '0', 'solid', '#ffffff', '0', '#ff0000', '#ffffff', '18', 'Gabriola', '#dd3333', '#ffffff', '#ff0000', '25', '#ffffff', '1', 'totalsoft totalsoft-times', '25', '#ffffff', '8', 'totalsoft totalsoft-chevron-circle-left', 'totalsoft totalsoft-chevron-circle-right', 'false', '', '', '', 'rgba(0,0,0,0.2)', '', '', ''),
(9, '9', 'Elastic Gallery 1', 'Elastic Gallery', 'solid', '#ffffff', '10', '#000000', 'Prev', 'Next', '#ffffff', '#000000', '14', 'Aldhabi', '#ffffff', '#000000', '#ffffff', '#000000', 'solid', '#ffffff', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '10', 'Elastic Gallery 2', 'Elastic Gallery', 'solid', '#ffffff', '30', '#ffffff', 'Prev', 'Next', '#ffffff', '#777777', '14', 'Aldhabi', '#777777', '#ffffff', '#777777', '#ffffff', 'solid', '#777777', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '11', 'Fancy Gallery 1', 'Fancy Gallery', 'Gabriola', '#ffffff', '2', '50', '#ffffff', '2', '30', '#ffffff', 'false', 'true', 'true', 'false', 'Prev', 'Next', '#ffffff', '#a3a3a3', '14', 'Arial', '#a3a3a3', '#ffffff', '#a3a3a3', '#ffffff', 'solid', '#a3a3a3', 'View...', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', ''),
(12, '12', 'Fancy Gallery 2', 'Fancy Gallery', 'Abadi MT Condensed Light', '#009491', '3', '30', '#009491', '2', '30', '#009491', 'true', 'false', 'true', 'true', 'Prev', 'Next', '#ffffff', '#000000', '14', 'Arial', '#aaaaaa', '#ffffff', '#000000', '#ffffff', 'solid', 'rgba(0,148,145,0.01)', 'M o r e ...', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', ''),
(13, '13', 'Parallax Engine 1', 'Parallax Engine', '22', '#ffffff', '1', 'totalsoft totalsoft-times', '1', 'Next', 'Prev', '#ffffff', '#000000', '14', 'Abadi MT Condensed Light', '#c1c1c1', '#000000', '#c1c1c1', '#000000', 'solid', '#ffffff', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '14', 'Parallax Engine 2', 'Parallax Engine', '22', '#009491', '2', 'totalsoft totalsoft-times-circle', '1', 'Next', 'Prev', '#009491', '#ffffff', '14', 'Abadi MT Condensed Light', '#ffffff', '#009491', '#ffffff', '#009491', 'solid', '#009491', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '15', 'Classic Gallery 1', 'Classic Gallery', '#ededed', '#000000', 'link', '17', '#5b5b5b', 'After', 'rgba(0,0,0,0.5)', '#ffffff', '17', '#000000', '#ffffff', '#000000', '#ffffff', 'style05', '#000000', 'chevron', 'long-arrow-down', 'Before', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '16', 'Classic Gallery 2', 'Classic Gallery', '#0066bf', '#ffffff', 'none', '17', '#5b5b5b', 'After', 'rgba(255,255,255,0.3)', '#1e73be', '17', '#1e73be', '#ffffff', '#1e73be', '#ffffff', 'style01', 'rgba(255,255,255,0.03)', 'long-arrow', 'long-arrow-down', 'Before', '', '', 'rgba(0,0,0,0.2)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '17', 'Space Gallery 1', 'Space Gallery', 'center', '1', '#939393', '20', 'View More . . .', '#ffffff', '#939393', 'afterdesc', 'full', 'Abadi MT Condensed Light', '15', '#ffffff', '#000000', 'external-link-square', '15', '#939393', '#000000', 'after', 'times-circle', '32', '#ffffff', 'style01', '16', '#ffffff', '#b5b5b5', '#b5b5b5', '#ffffff', '#b5b5b5', '#ffffff', '#b5b5b5', 'long-arrow', 'spinner', 'After', '', 'rgba(0,0,0,0.2)', '', '', '', ''),
(18, '18', 'Space Gallery 2', 'Space Gallery', 'center', '1', '#939393', '0', 'View More . . .', '#ffffff', '#939393', 'afterdesc', 'right', 'Abadi MT Condensed Light', '15', '#ffffff', '#000000', 'external-link-square', '15', '#939393', '#000000', 'after', 'times-circle', '32', '#000000', 'style02', '16', '#ffffff', '#b5b5b5', '#b5b5b5', '#ffffff', '#b5b5b5', '#ffffff', '#b5b5b5', 'long-arrow', 'spinner', 'After', '', 'rgba(0,0,0,0.2)', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_dbt_3`
--

CREATE TABLE `wp_totalsoft_galleryv_dbt_3` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGalleryV_SetID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_1_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_dbt_4`
--

CREATE TABLE `wp_totalsoft_galleryv_dbt_4` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGalleryV_SetID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGalleryV_SetType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoft_GV_2_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_id`
--

CREATE TABLE `wp_totalsoft_galleryv_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `GalleryV_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_manager`
--

CREATE TABLE `wp_totalsoft_galleryv_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGallery_Video_Gallery_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_Option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_ShowType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_PerPage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_LoadMore` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_galleryv_videos`
--

CREATE TABLE `wp_totalsoft_galleryv_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftGallery_Video_VT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_VDesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_VLink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_VONT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_VURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_IURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftGallery_Video_Video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GalleryV_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_totalsoft_new_plugin`
--

CREATE TABLE `wp_totalsoft_new_plugin` (
  `id` int(10) UNSIGNED NOT NULL,
  `New_Plugin_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Our_Plugin_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dismiss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_totalsoft_new_plugin`
--

INSERT INTO `wp_totalsoft_new_plugin` (`id`, `New_Plugin_Name`, `Our_Plugin_Name`, `Dismiss`) VALUES
(1, 'Pricing Table', 'Gallery Video', '1'),
(2, 'Gallery Video Question', 'Gallery Video', '1');

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
(1, 1, 'nickname', 'ash@izoninc.com'),
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
(14, 1, 'dismissed_wp_pointers', 'addtoany_settings_pointer'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '1859'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.10.0\";}'),
(20, 1, 'session_tokens', 'a:2:{s:64:\"581eb867cc6466d990e4a2f65873a5179e27d4687e6d19eb59a60fa03adc05f9\";a:4:{s:10:\"expiration\";i:1592149987;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1591977187;}s:64:\"5dcb55e333aff9120607906b962d48c130b20fd5ae5af91ee4ad6bd77bbe2248\";a:4:{s:10:\"expiration\";i:1592215161;s:2:\"ip\";s:12:\"192.168.10.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1592042361;}}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1587294003'),
(23, 1, 'nav_menu_recently_edited', '4'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

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
(1, 'ash@izoninc.com', '$P$BJjYb72I2iUlTUJDMtViG5sKPMxeyR1', 'ashizoninc-com', 'ash@izoninc.com', 'http://foodanddesserts.com', '2020-04-19 07:00:34', '', 0, 'ash@izoninc.com');

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
-- Indexes for table `wp_totalsoft_galleryv_dbt`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_dbt_1`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_dbt_2`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_dbt_3`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_dbt_4`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_id`
--
ALTER TABLE `wp_totalsoft_galleryv_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_manager`
--
ALTER TABLE `wp_totalsoft_galleryv_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_galleryv_videos`
--
ALTER TABLE `wp_totalsoft_galleryv_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_totalsoft_new_plugin`
--
ALTER TABLE `wp_totalsoft_new_plugin`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1303;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1883;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_dbt`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_dbt_1`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_dbt_2`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_dbt_3`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_dbt_4`
--
ALTER TABLE `wp_totalsoft_galleryv_dbt_4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_id`
--
ALTER TABLE `wp_totalsoft_galleryv_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_manager`
--
ALTER TABLE `wp_totalsoft_galleryv_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_totalsoft_galleryv_videos`
--
ALTER TABLE `wp_totalsoft_galleryv_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_totalsoft_new_plugin`
--
ALTER TABLE `wp_totalsoft_new_plugin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
