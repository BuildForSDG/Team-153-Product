-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 09:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faida`
--

-- --------------------------------------------------------

--
-- Table structure for table `aid_groups`
--

CREATE TABLE `aid_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aid_groups`
--

INSERT INTO `aid_groups` (`id`, `group_name`, `group_detail`, `group_image`, `created_at`, `updated_at`) VALUES
(1, 'Bursary', 'Bursaries can have wider-ranging benefits by helping to drive attainment and encourage retention among non-traditional students.', NULL, '2020-05-19 15:55:29', '2020-05-19 15:55:29'),
(2, 'Grants', 'This is a tool nonprofits use to address important issues within their communities.', NULL, '2020-05-19 15:56:05', '2020-05-19 15:56:05'),
(3, 'Scholarships', 'Scholarships provide these students with the opportunity to source money for the education.', NULL, '2020-05-19 15:56:45', '2020-05-19 15:56:45'),
(4, 'DonatIons', 'Donating is a selfless act. One of the major positive effects of donating money to charity is simply feeling good about giving.', NULL, '2020-05-19 15:57:18', '2020-05-19 15:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `applicant_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicant_id` int(10) UNSIGNED NOT NULL,
  `application_details` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `donation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(57, 8, 'user_id', 'hidden', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 10, 'donor_id', 'hidden', 'Donor Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 10, 'aid_group_id', 'hidden', 'Aid Group Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(61, 10, 'donation_name', 'text', 'Donation Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(62, 10, 'donation_description', 'text', 'Donation Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(63, 10, 'donation_amount', 'text', 'Donation Amount', 0, 1, 1, 1, 1, 1, '{}', 6),
(64, 10, 'applicant_requirements', 'text', 'Applicant Requirements', 0, 1, 1, 1, 1, 1, '{}', 7),
(65, 10, 'payment_method', 'text', 'Payment Method', 0, 1, 1, 1, 1, 1, '{}', 8),
(66, 10, 'apply_deadline', 'timestamp', 'Application Deadline', 0, 1, 1, 1, 1, 1, '{}', 9),
(67, 10, 'donation_status', 'hidden', 'Donation Status', 0, 1, 1, 1, 1, 1, '{}', 10),
(68, 11, 'donor_id', 'hidden', 'Donor Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 11, 'user_id', 'hidden', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 12, 'group_name', 'text', 'Group Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(72, 12, 'group_detail', 'text', 'Group Detail', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 12, 'group_image', 'text', 'Group Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(75, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(76, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(77, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(78, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 14, 'user_id', 'hidden', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 14, 'aid_id', 'hidden', 'Aid Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(81, 14, 'application_details', 'text', 'Application Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 14, 'application_status', 'text', 'Application Status', 0, 1, 1, 1, 1, 1, '{}', 5),
(83, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(84, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(85, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(86, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(87, 11, 'donor_name', 'text', 'Donor Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(88, 8, 'applicant_name', 'text', 'Applicant Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(89, 8, 'applicant_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(90, 14, 'application_hasone_applicant_relationship', 'relationship', 'applicants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Applicant\",\"table\":\"applicants\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"applicant_name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 8),
(91, 14, 'application_hasone_donation_relationship', 'relationship', 'donations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Donation\",\"table\":\"donations\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"id\",\"label\":\"donation_name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 9),
(92, 10, 'donation_belongsto_donor_relationship', 'relationship', 'donors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Donor\",\"table\":\"donors\",\"type\":\"belongsTo\",\"column\":\"donor_id\",\"key\":\"donor_id\",\"label\":\"donor_name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 11),
(93, 10, 'donation_belongsto_aid_group_relationship', 'relationship', 'aid_groups', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AidGroup\",\"table\":\"aid_groups\",\"type\":\"belongsTo\",\"column\":\"aid_group_id\",\"key\":\"id\",\"label\":\"group_name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 12),
(94, 11, 'donor_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 6),
(95, 11, 'donor_hasmany_donation_relationship', 'relationship', 'donations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Donation\",\"table\":\"donations\",\"type\":\"hasMany\",\"column\":\"donor_id\",\"key\":\"id\",\"label\":\"donation_name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 7),
(96, 10, 'donation_hasmany_application_relationship', 'relationship', 'applications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Application\",\"table\":\"applications\",\"type\":\"hasMany\",\"column\":\"applicant_id\",\"key\":\"id\",\"label\":\"applicant_id\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 13),
(97, 12, 'aid_group_hasmany_donation_relationship', 'relationship', 'donations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Donation\",\"table\":\"donations\",\"type\":\"hasMany\",\"column\":\"aid_group_id\",\"key\":\"id\",\"label\":\"donation_name\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(98, 8, 'applicant_hasmany_application_relationship', 'relationship', 'applications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Application\",\"table\":\"applications\",\"type\":\"hasMany\",\"column\":\"applicant_id\",\"key\":\"id\",\"label\":\"applicant_id\",\"pivot_table\":\"aid_groups\",\"pivot\":\"0\",\"taggable\":null}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-05-15 15:53:45', '2020-05-15 15:53:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-05-15 15:53:45', '2020-05-15 15:53:45'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-05-15 15:53:45', '2020-05-15 15:53:45'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-05-15 15:53:50', '2020-05-15 15:53:50'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(7, 'aid_group', 'aid-group', 'Aid Group', 'Aid Groups', 'voyager-list', 'App\\AidGroup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-19 09:38:21', '2020-05-19 10:28:44'),
(8, 'applicants', 'applicants', 'Applicant', 'Applicants', NULL, 'App\\Applicant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-19 09:40:20', '2020-05-19 14:01:02'),
(9, 'application', 'application', 'Application', 'Applications', NULL, 'App\\Application', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-19 09:43:56', '2020-05-19 09:43:56'),
(10, 'donations', 'donations', 'Donation', 'Donations', NULL, 'App\\Donation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-19 09:48:34', '2020-05-19 09:48:34'),
(11, 'donors', 'donors', 'Donor', 'Donors', NULL, 'App\\Donor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-19 09:49:54', '2020-05-19 10:50:14'),
(12, 'aid_groups', 'aid-groups', 'Aid Group', 'Aid Groups', NULL, 'App\\AidGroup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-05-19 10:31:57', '2020-05-19 15:52:15'),
(14, 'applications', 'applications', 'Application', 'Applications', NULL, 'App\\Application', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-05-19 10:37:19', '2020-05-19 10:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(10) UNSIGNED NOT NULL,
  `donor_id` int(10) UNSIGNED NOT NULL,
  `aid_group_id` int(10) UNSIGNED NOT NULL,
  `donation_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donation_amount` int(11) DEFAULT NULL,
  `applicant_requirements` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_deadline` timestamp NULL DEFAULT NULL,
  `donation_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `donor_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-05-15 15:53:46', '2020-05-15 15:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-05-15 15:53:46', '2020-05-15 15:53:46', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2020-05-15 15:53:46', '2020-05-19 10:54:54', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-05-15 15:53:46', '2020-05-15 15:53:46', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-05-15 15:53:46', '2020-05-15 15:53:46', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2020-05-15 15:53:46', '2020-05-19 10:53:57', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-05-15 15:53:46', '2020-05-19 05:49:12', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-05-15 15:53:46', '2020-05-19 05:49:12', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-05-15 15:53:46', '2020-05-19 05:49:12', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-05-15 15:53:46', '2020-05-19 05:49:12', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2020-05-15 15:53:46', '2020-05-19 10:53:57', 'voyager.settings.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2020-05-15 15:53:52', '2020-05-19 10:54:50', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-05-15 15:53:54', '2020-05-19 05:49:12', 'voyager.hooks', NULL),
(15, 1, 'Aid Groups', '', '_self', 'voyager-list', '#000000', NULL, 4, '2020-05-19 09:38:21', '2020-05-19 15:54:23', 'voyager.aid-groups.index', 'null'),
(16, 1, 'Applicants', '', '_self', 'voyager-people', '#000000', NULL, 5, '2020-05-19 09:40:20', '2020-05-19 11:05:27', 'voyager.applicants.index', 'null'),
(17, 1, 'Applications', '', '_self', 'voyager-mail', '#000000', NULL, 6, '2020-05-19 09:43:56', '2020-05-19 11:06:05', 'voyager.application.index', 'null'),
(18, 1, 'Donations', '', '_self', 'voyager-rocket', '#000000', NULL, 8, '2020-05-19 09:48:34', '2020-05-19 11:09:05', 'voyager.donations.index', 'null'),
(19, 1, 'Donors', '', '_self', 'voyager-dollar', '#000000', NULL, 7, '2020-05-19 09:49:54', '2020-05-19 11:08:31', 'voyager.donors.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-05-15 15:53:52', '2020-05-15 15:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(2, 'browse_bread', NULL, '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(3, 'browse_database', NULL, '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(4, 'browse_media', NULL, '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(5, 'browse_compass', NULL, '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(6, 'browse_menus', 'menus', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(7, 'read_menus', 'menus', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(8, 'edit_menus', 'menus', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(9, 'add_menus', 'menus', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(10, 'delete_menus', 'menus', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(11, 'browse_roles', 'roles', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(12, 'read_roles', 'roles', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(13, 'edit_roles', 'roles', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(14, 'add_roles', 'roles', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(15, 'delete_roles', 'roles', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(16, 'browse_users', 'users', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(17, 'read_users', 'users', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(18, 'edit_users', 'users', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(19, 'add_users', 'users', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(20, 'delete_users', 'users', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(21, 'browse_settings', 'settings', '2020-05-15 15:53:47', '2020-05-15 15:53:47'),
(22, 'read_settings', 'settings', '2020-05-15 15:53:48', '2020-05-15 15:53:48'),
(23, 'edit_settings', 'settings', '2020-05-15 15:53:48', '2020-05-15 15:53:48'),
(24, 'add_settings', 'settings', '2020-05-15 15:53:48', '2020-05-15 15:53:48'),
(25, 'delete_settings', 'settings', '2020-05-15 15:53:48', '2020-05-15 15:53:48'),
(31, 'browse_posts', 'posts', '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(32, 'read_posts', 'posts', '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(33, 'edit_posts', 'posts', '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(34, 'add_posts', 'posts', '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(35, 'delete_posts', 'posts', '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(36, 'browse_pages', 'pages', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(37, 'read_pages', 'pages', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(38, 'edit_pages', 'pages', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(39, 'add_pages', 'pages', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(40, 'delete_pages', 'pages', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(41, 'browse_hooks', NULL, '2020-05-15 15:53:54', '2020-05-15 15:53:54'),
(42, 'browse_aid_group', 'aid_group', '2020-05-19 09:38:21', '2020-05-19 09:38:21'),
(43, 'read_aid_group', 'aid_group', '2020-05-19 09:38:21', '2020-05-19 09:38:21'),
(44, 'edit_aid_group', 'aid_group', '2020-05-19 09:38:21', '2020-05-19 09:38:21'),
(45, 'add_aid_group', 'aid_group', '2020-05-19 09:38:21', '2020-05-19 09:38:21'),
(46, 'delete_aid_group', 'aid_group', '2020-05-19 09:38:21', '2020-05-19 09:38:21'),
(47, 'browse_applicants', 'applicants', '2020-05-19 09:40:20', '2020-05-19 09:40:20'),
(48, 'read_applicants', 'applicants', '2020-05-19 09:40:20', '2020-05-19 09:40:20'),
(49, 'edit_applicants', 'applicants', '2020-05-19 09:40:20', '2020-05-19 09:40:20'),
(50, 'add_applicants', 'applicants', '2020-05-19 09:40:20', '2020-05-19 09:40:20'),
(51, 'delete_applicants', 'applicants', '2020-05-19 09:40:20', '2020-05-19 09:40:20'),
(52, 'browse_application', 'application', '2020-05-19 09:43:56', '2020-05-19 09:43:56'),
(53, 'read_application', 'application', '2020-05-19 09:43:56', '2020-05-19 09:43:56'),
(54, 'edit_application', 'application', '2020-05-19 09:43:56', '2020-05-19 09:43:56'),
(55, 'add_application', 'application', '2020-05-19 09:43:56', '2020-05-19 09:43:56'),
(56, 'delete_application', 'application', '2020-05-19 09:43:56', '2020-05-19 09:43:56'),
(57, 'browse_donations', 'donations', '2020-05-19 09:48:34', '2020-05-19 09:48:34'),
(58, 'read_donations', 'donations', '2020-05-19 09:48:34', '2020-05-19 09:48:34'),
(59, 'edit_donations', 'donations', '2020-05-19 09:48:34', '2020-05-19 09:48:34'),
(60, 'add_donations', 'donations', '2020-05-19 09:48:34', '2020-05-19 09:48:34'),
(61, 'delete_donations', 'donations', '2020-05-19 09:48:34', '2020-05-19 09:48:34'),
(62, 'browse_donors', 'donors', '2020-05-19 09:49:54', '2020-05-19 09:49:54'),
(63, 'read_donors', 'donors', '2020-05-19 09:49:54', '2020-05-19 09:49:54'),
(64, 'edit_donors', 'donors', '2020-05-19 09:49:54', '2020-05-19 09:49:54'),
(65, 'add_donors', 'donors', '2020-05-19 09:49:54', '2020-05-19 09:49:54'),
(66, 'delete_donors', 'donors', '2020-05-19 09:49:54', '2020-05-19 09:49:54'),
(67, 'browse_aid_groups', 'aid_groups', '2020-05-19 10:31:58', '2020-05-19 10:31:58'),
(68, 'read_aid_groups', 'aid_groups', '2020-05-19 10:31:58', '2020-05-19 10:31:58'),
(69, 'edit_aid_groups', 'aid_groups', '2020-05-19 10:31:58', '2020-05-19 10:31:58'),
(70, 'add_aid_groups', 'aid_groups', '2020-05-19 10:31:58', '2020-05-19 10:31:58'),
(71, 'delete_aid_groups', 'aid_groups', '2020-05-19 10:31:58', '2020-05-19 10:31:58'),
(72, 'browse_applications', 'applications', '2020-05-19 10:37:19', '2020-05-19 10:37:19'),
(73, 'read_applications', 'applications', '2020-05-19 10:37:19', '2020-05-19 10:37:19'),
(74, 'edit_applications', 'applications', '2020-05-19 10:37:19', '2020-05-19 10:37:19'),
(75, 'add_applications', 'applications', '2020-05-19 10:37:19', '2020-05-19 10:37:19'),
(76, 'delete_applications', 'applications', '2020-05-19 10:37:19', '2020-05-19 10:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 2),
(62, 3),
(63, 1),
(63, 2),
(63, 3),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 2),
(67, 3),
(68, 1),
(68, 2),
(68, 3),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(72, 2),
(72, 3),
(73, 1),
(73, 2),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-15 15:53:51', '2020-05-15 15:53:51'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-05-15 15:53:52', '2020-05-15 15:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-05-15 15:53:46', '2020-05-15 15:53:46'),
(2, 'user', 'Normal User', '2020-05-15 15:53:46', '2020-05-15 15:53:46'),
(3, 'Donor', 'Donor', '2020-05-19 14:48:20', '2020-05-19 14:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'AidPedia', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Financial Aid distribution System', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\May2020\\HKrBX6bzrXSfn2HJIJDI.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\May2020\\4gu8V3CJAVb6AxilqNmA.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'AidPedia', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to AidPedia. The number 1 financial aid system.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\May2020\\D3NkTFX7AiqKomGOOeeG.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\May2020\\VNCzLB5SgL4nNO8gfWWZ.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-05-15 15:53:52', '2020-05-15 15:53:52'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-05-15 15:53:53', '2020-05-15 15:53:53'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-05-15 15:53:54', '2020-05-15 15:53:54'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-05-15 15:53:54', '2020-05-15 15:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2020\\5JMt4ZyEq7J0fol4ZZFZ.png', NULL, '$2y$10$DBcQvZilmZqUBboB.Ac04.h1AxFu4WpGZoMuexmpp4iCe8JY8XIK6', 'r2kUS6wVQZpGzefld9OU3Zz2PQ6bkWX9WKQaZLSd8JxYiWwId7l0e2XlZHoH', '{\"locale\":\"en\"}', '2020-05-15 15:53:50', '2020-05-19 14:51:15'),
(2, 2, 'test', 'utest@aidpedia.com', 'users/default.png', NULL, '$2y$10$nl7wG0EYlRlrAwLA4vhHWeEs7u8tFVKBZRr4dK84odGbCe3UryfE2', NULL, NULL, '2020-05-19 13:35:33', '2020-05-19 13:35:33'),
(3, 3, 'The Don', 'donor@aidpedia.com', 'users\\May2020\\Gp4cND5DDrEvszsUPaJa.jpg', NULL, '$2y$10$dcFDzvj.f2H/P8XIu/5OBOtpn/bK1RQw/5djzOOpAGGd.H.DbaR7e', NULL, '{\"locale\":\"en\"}', '2020-05-19 14:50:51', '2020-05-19 14:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aid_groups`
--
ALTER TABLE `aid_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_user_id_index` (`user_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_user_id_index` (`applicant_id`),
  ADD KEY `applications_donation_id_index` (`donation_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donations_donor_id_index` (`donor_id`),
  ADD KEY `donations_aid_group_id_index` (`aid_group_id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`donor_id`),
  ADD KEY `donors_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aid_groups`
--
ALTER TABLE `aid_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
