-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2024 at 06:51 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyrostud_flbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `bot_settings`
--

CREATE TABLE `bot_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fluser_id` varchar(255) NOT NULL,
  `fluser_token` varchar(255) NOT NULL,
  `page_limit` varchar(255) NOT NULL,
  `min_price` varchar(255) NOT NULL,
  `buyer_repuration` varchar(255) NOT NULL,
  `bid_period` varchar(255) NOT NULL,
  `bid_proposal` longtext NOT NULL,
  `skip_project` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `allow_country` longtext DEFAULT NULL,
  `allow_skill` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bot_settings`
--

INSERT INTO `bot_settings` (`id`, `fluser_id`, `fluser_token`, `page_limit`, `min_price`, `buyer_repuration`, `bid_period`, `bid_proposal`, `skip_project`, `status`, `created_at`, `updated_at`, `allow_country`, `allow_skill`) VALUES
(1, '51803546', 'hkVl6gS9Kjqvo1WMiPs423VJm5jx0K', '100', '29.0', '4.5', '10', 'Hello!\r\nI\'m Mehrab, a Google-certified UX Specialist and IT Specialist, Meta certified Frontend Designer and Developer and currently working Senior Web Designer and Developer at SW HR Consulting LLC, with extensive experience in web, software, mobile application design and development and digital marketing. I am committed to crafting your digital success and ensuring you are 100% satisfied with the results. Pay only when you are 100% satisfied. I STRICTLY BITE ONLY WHICH I CAN CHEW!', 'shopify,prestashop,magento', 1, '2024-06-18 07:53:35', '2024-06-18 18:00:04', 'as, tz, zm, ba, gy, ly, um, uy, sy, ye, mx, no, rw, tw, zw, vg, ve, vi, vn, it, mz, iq, md, pw, np, pa, pg, pr, sg, py, my, mv, mk, do, is, sv, lk, kg, tr, kw, xk, tj, uz, ke, jo, jm, kz, ht, hn, xc, ph, hu, hk, lu, gl, gd, gi, gh, gm, ge, fk, fj, fi, gf, tf, pf, ir, za, et, ee, ag, cu, cz, ec, cr, co, cl, cv, cm, ca, kh, bi, bo, bs, bg, az, am, ai, at, bh, ao, dz, al, cy, by, si, sk, ar, br, pe, lt, lv, es, pt, hr, nl, be, eg, qa, ae, sa, pl, dk, ie, fr, ro, ch, se, gb, de, au, nz, us, gr', '2158, 613, 323, 237, 959, 710, 95, 7, 669, 106, 72, 44, 59, 20, 74, 116, 77, 305, 13, 3, 9, 17, 69, 115, 335');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_17_134201_create_projects_table', 1),
(6, '2024_06_18_130910_create_bot_settings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projectid` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `seo_url` text NOT NULL,
  `name` text NOT NULL,
  `employer_reputation` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `pub_time` varchar(255) NOT NULL,
  `min_price` varchar(255) NOT NULL,
  `avg_price` varchar(255) NOT NULL,
  `bid_count` varchar(255) NOT NULL,
  `bid_price` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL DEFAULT '10',
  `request_id` varchar(255) DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `projectid`, `userid`, `seo_url`, `name`, `employer_reputation`, `country`, `currency`, `pub_time`, `min_price`, `avg_price`, `bid_count`, `bid_price`, `period`, `request_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '38238481', '510987', 'internet-marketing/Spanish-Facebook-Business-Account', 'Spanish Facebook Business Account Recovery', '5', 'US', 'USD', '1718739770', '30', '137.77777777778', '9', '140', '10', '', 0, '2024-06-18 19:54:56', '2024-06-18 19:54:56'),
(2, '38238473', '22216128', 'shopify-site/Shopify-Website-Speed-Optimization-38238473', 'Shopify Website Speed Optimization', '5', 'US', 'USD', '1718739569', '50', '93.058252427184', '103', '75', '10', 'aaa876a656fe3a495265f31a0e97a820', 1, '2024-06-18 19:54:57', '2024-06-18 19:54:57'),
(3, '38238458', '19637670', 'website-design/Financial-Website-Corporate-Design', 'Financial Website - Corporate Design', '5', 'US', 'USD', '1718739094', '750', '997.05095541401', '157', '1125', '10', 'd099f28e472b122b0120372b972543a0', 1, '2024-06-18 19:54:57', '2024-06-18 19:54:58'),
(4, '38238430', '62404169', 'javascript/Binance-Pay-Integration-via-Medusa', 'Binance Pay Integration via Medusa.js', '5', 'US', 'USD', '1718738352', '30', '109.832', '125', '140', '10', 'e5a63b5acb11426d332945300df6c961', 1, '2024-06-18 19:54:58', '2024-06-18 19:54:59'),
(5, '38238424', '63605498', 'content-writing/Lead-Generating-Business-Page-Creation', 'Lead-Generating Business FB Page Creation', '5', 'US', 'USD', '1718738220', '30', '84.347826086957', '23', '165', '10', '944c6d458d0a8af9cb38f626bef499d1', 1, '2024-06-18 19:54:59', '2024-06-18 19:55:00'),
(6, '38238420', '74599899', 'web-scraping/Email-Phone-Company-Scraper', 'Email, Phone & Company Scraper', '5', 'US', 'USD', '1718738125', '250', '402.74342105263', '152', '500', '10', '7cd1504cc9ef1f811ddd95c5aecc7051', 1, '2024-06-18 19:55:00', '2024-06-18 19:55:00'),
(7, '38238360', '13319953', 'css/Skilled-WordPress-Developers-Needed-for', 'Skilled WordPress Developers Needed for Short Research Project', '5', 'US', 'USD', '1718737031', '30', '110', '18', '140', '10', '', 0, '2024-06-18 19:55:00', '2024-06-18 19:55:00'),
(8, '38238297', '3882157', 'dot-net/WebApi-Asp-net-Core', 'WebApi Asp.net Core -- 2', '5', 'US', 'USD', '1718736044', '30', '125.88857142857', '63', '140', '10', '633ce186d7baa15ced9c322f6dd4e022', 1, '2024-06-18 19:55:01', '2024-06-18 19:55:01'),
(9, '38238251', '280340', 'facebook-marketing/Social-Media-Specialist-for-Local', 'Social Media Specialist for Local Acting School', '5', 'US', 'USD', '1718735040', '250', '374.64705882353', '17', '375', '10', '2f073e1089dc3f3bb8baa547b5c2172a', 1, '2024-06-18 19:55:01', '2024-06-18 19:55:02'),
(10, '38238202', '59634792', 'powerpoint/Corporate-Sales-Pitch-Deck-Design', 'Corporate Sales Pitch Deck Design', '5', 'US', 'USD', '1718734097', '30', '86.143417721519', '79', '140', '10', 'b16d1945b5346ef28aa92ff7f566301e', 1, '2024-06-18 19:55:02', '2024-06-18 19:55:02'),
(11, '38238146', '75846251', 'graphic-design/Gatco-Seeds-Catalogue-Design-Project', 'Gatco Seeds Catalogue Design Project', '5', 'US', 'USD', '1718732872', '200', '237.16195121951', '82', '250', '10', '2013148aa8b802f9bd660e7b31466dee', 1, '2024-06-18 19:55:02', '2024-06-18 19:55:03'),
(12, '38238120', '76019306', 'wordpress/WordPress-Image-Overlay-Generator', 'WordPress Image Overlay Generator', '5', 'US', 'USD', '1718732558', '30', '116.02868263473', '167', '140', '10', '69b5cf2a0d30442b8948d8beb1fac053', 1, '2024-06-18 19:55:03', '2024-06-18 19:55:04'),
(13, '38238117', '1379076', 'leads/Lead-Generation-Experts-Wanted-38238117', 'Lead Generation Experts Wanted -- 2', '4.9640698034519', 'US', 'USD', '1718732492', '30', '104.9012345679', '81', '140', '10', 'c1f9bd059ffb6a65c977246e89081af4', 1, '2024-06-18 19:55:04', '2024-06-18 19:55:05'),
(14, '38238091', '68042681', 'python/Real-time-Casino-Data-Collection', 'Real-time Casino Data Collection & Storage', '5', 'US', 'USD', '1718731824', '250', '419.02173913043', '138', '500', '10', 'ee08820876b239a8c8158bfa690dd3ef', 1, '2024-06-18 19:55:05', '2024-06-18 19:55:05'),
(15, '38238090', '10325460', 'graphic-design/Colorful-Mylar-Bag-Logo-Design', 'Colorful Mylar Bag Logo Design', '5', 'US', 'USD', '1718731818', '30', '85.481678832117', '137', '140', '10', '442d1129fb8931cdf645d0bc57c0165a', 1, '2024-06-18 19:55:05', '2024-06-18 19:55:06'),
(16, '38238074', '18576421', 'cplusplus-programming/Multi-Subject-Teacher-Scheduler', 'Multi-Subject Teacher Scheduler', '5', 'US', 'USD', '1718731557', '250', '487.48076923077', '52', '500', '10', '194ce840336e45ccc2761c91a6b8166d', 1, '2024-06-18 19:55:06', '2024-06-18 19:55:07'),
(17, '38238066', '3764766', 'php/PHP-Website-Compatibility-Upgrade', 'PHP 5.6 Website Compatibility Upgrade', '5', 'US', 'USD', '1718731392', '30', '124.69594594595', '148', '140', '10', '941c6adce199ab745cec7edf1c92872c', 1, '2024-06-18 19:55:07', '2024-06-18 19:55:08'),
(18, '38238057', '58255486', 'web-scraping/Data-Engineer-for-Betting-Website', 'Data Engineer for Betting Website Analysis', '4.8563829787234', 'US', 'USD', '1718731147', '750', '1030.2404371585', '183', '1125', '10', '9423ff4740a0c03200fea53004f6faed', 1, '2024-06-18 19:55:08', '2024-06-18 19:55:08'),
(19, '38238030', '17153390', 'internet-marketing/Permanent-Marketing-Agency-for', 'Permanent Marketing Agency for Motorcycle Gear', '4.9901503369622', 'US', 'USD', '1718730764', '250', '392.55670103093', '97', '500', '10', '250fc1f2b20bae706eda0526d5947145', 1, '2024-06-18 19:55:08', '2024-06-18 19:55:09'),
(20, '38238004', '28049867', 'python/Python-YouTube-Scraper-with-OAuth', 'Python YouTube Scraper with OAuth', '5', 'US', 'USD', '1718730372', '250', '486.35443037975', '79', '500', '10', '8546ca139984a6189aae888feab06dd4', 1, '2024-06-18 19:55:09', '2024-06-18 19:55:10'),
(21, '38237984', '32924987', 'salesforce-com/Salesforce-Quickbooks-Integration-for', 'Salesforce & Quickbooks Integration for Invoice Generation', '4.9588595866001', 'US', 'USD', '1718730032', '30', '115.28194444444', '108', '140', '10', 'c1e4a20dca1448a33d50f5aa7f268186', 1, '2024-06-18 19:55:10', '2024-06-18 19:55:11'),
(22, '38237915', '50950016', 'make-queries-create-charts-other', 'make queries, create charts and other changes (laravel application)', '5', 'US', 'USD', '1718728681', '40', '67.196721311475', '61', '50', '10', '21d9aaf930549620851143a981279cda', 1, '2024-06-18 19:55:11', '2024-06-18 19:55:11'),
(23, '38237910', '17158239', 'php/Develop-Script-for-Shop-Details', 'Develop a Script for Shop Details from Kalonline Game -- 2', '5', 'US', 'USD', '1718728577', '30', '140.01461538462', '39', '140', '10', '27f943c7b11f87fcdcdd8ba55e426fdd', 1, '2024-06-18 19:55:11', '2024-06-18 19:55:12'),
(24, '38237901', '66558252', 'graphic-design/Supernatural-Leather-Journal-Design', 'Supernatural Leather Journal Design', '4.9746599448302', 'US', 'USD', '1718728338', '30', '95.197368421053', '76', '140', '10', '6e44625d2e0982d1654dc1de81061846', 1, '2024-06-18 19:55:12', '2024-06-18 19:55:13'),
(25, '38237875', '72101339', 'python/Python-Mechatronics-Latin-America-38237875', 'Python and Mechatronics  ◦  Latin America or Eastern Europe', '5', 'US', 'USD', '1718727780', '750', '1082.9705882353', '68', '1125', '10', '', 0, '2024-06-18 19:55:13', '2024-06-18 19:55:13'),
(26, '38237867', '51604188', 'android/Need-Code-Example-how-send', 'Need Code Example of how to send a value in a Push Notification for Android that updates the App', '4.9913644214162', 'US', 'USD', '1718727652', '30', '112.99815384615', '65', '140', '10', '', 0, '2024-06-18 19:55:13', '2024-06-18 19:55:13'),
(27, '38238582', '6893903', 'php/Laravel-HTML-CSS-Project', 'Laravel / HTML / CSS Project', '4.9835897906299', 'US', 'USD', '1718742508', '30', '116.02721088435', '147', '140', '10', '487ab824a0ed5feb784d1a95e8f690b2', 1, '2024-06-18 20:35:18', '2024-06-18 20:35:19'),
(28, '38238561', '28098299', 'animation/Urgent-Animation-for-Product-Promotion-38238561', 'Urgent 3D Animation for Product Promotion', '5', 'CA', 'CAD', '1718742025', '30', '120.66382978723', '47', '140', '10', 'ae60d29cbe3c99ca668b6fbf790f648c', 1, '2024-06-18 20:35:19', '2024-06-18 20:35:20'),
(29, '38238553', '8354566', 'python/Python-Azure-Document-Intelligence-API', 'Python and  Azure AI Document Intelligence and API', '4.9791469194313', 'US', 'USD', '1718741608', '30', '113.42163265306', '98', '140', '10', '135ff42ed81779f7a026625fc4f930f8', 1, '2024-06-18 20:35:20', '2024-06-18 20:35:20'),
(30, '38238550', '70878655', 'ecommerce/Website-Redesign-Menu-Drive-Installation', 'Website Redesign and Menu Drive Installation', '5', 'US', 'USD', '1718741514', '30', '131.48686956522', '115', '140', '10', 'fa2d9c993112685a9675bec504e45abc', 1, '2024-06-18 20:35:20', '2024-06-18 20:35:21'),
(31, '38238526', '72385772', 'seo/SEO-Specialist-Needed-for-Page-38238526', 'Web Developer Needed for On-Page SEO Project', '5', 'US', 'USD', '1718741004', '30', '115.62365591398', '93', '140', '10', '55897283b90a69420d1a6a9b4681003a', 1, '2024-06-18 20:35:21', '2024-06-18 20:35:22'),
(32, '38238510', '18269119', 'flutter/Mobile-App-Development-with-FlutterFlow', 'Mobile App Development with FlutterFlow', '4.8947368421053', 'US', 'USD', '1718740621', '750', '1264', '16', '1125', '10', '', 0, '2024-06-18 20:35:22', '2024-06-18 20:35:22'),
(33, '38239554', '11185216', 'php/WordPress-Auto-Insurance-Comparison-Site', 'WordPress Auto Insurance Comparison Site', '5', 'US', 'USD', '1718771698', '30', '139.74712643678', '174', '140', '10', '9729754fa7acbbeff27ed4c20a1f165b', 1, '2024-06-19 05:21:08', '2024-06-19 05:21:09'),
(34, '38239551', '2646221', 'php/Zapier-ShipStation-Auto-Print-Workflow', 'Zapier ShipStation Auto Print Workflow', '4.9941234345854', 'US', 'USD', '1718771499', '30', '117.35552380952', '105', '140', '10', '544a9904eaa09ea64d7d519e7c5c4bfb', 1, '2024-06-19 05:21:09', '2024-06-19 05:21:10'),
(35, '38239497', '57372721', 'agile-development/Agile-Feature-Writing-under-NDA', 'Agile Feature Writing under NDA', '5', 'US', 'USD', '1718770095', '250', '325', '8', '500', '10', '', 0, '2024-06-19 05:21:10', '2024-06-19 05:21:10'),
(36, '38239449', '58626943', 'python/Automated-Trading-Bot-for-Interactive-38239449', 'Automated Trading Bot for Interactive Brokers', '5', 'US', 'USD', '1718768909', '250', '450.80898876404', '89', '500', '10', 'c8efc987e00094163dc1e5cb545a23ee', 1, '2024-06-19 05:21:10', '2024-06-19 05:21:11'),
(37, '38239425', '2848702', 'c-programming/Windows-App-Developer-Needed-for', 'Windows App Developer Needed for Search Interception and Redirection ', '4.9503771155261', 'US', 'USD', '1718768133', '750', '1079.4193548387', '62', '1125', '10', '16808766c2f28547579542f31e32eff4', 1, '2024-06-19 05:21:11', '2024-06-19 05:21:11'),
(38, '38239408', '10131285', 'android/Android-App-Submission-Assistance-38239408', 'Android App Submission Assistance -- 2', '4.9780894850005', 'US', 'USD', '1718767636', '80', '109.84210526316', '19', '115', '10', '9b8c77c1c22ff13fd0142818f813d2a8', 1, '2024-06-19 05:21:11', '2024-06-19 05:21:12'),
(39, '38239391', '11065561', 'software-architecture/Interactive-Education-Content-Generation', 'Interactive Education Content Generation using OpenAI', '5', 'US', 'USD', '1718767093', '250', '480.79894409938', '161', '500', '10', '50cb5f0bbf2eb28dc17b4f0c5216bdd9', 1, '2024-06-19 05:21:12', '2024-06-19 05:21:13'),
(40, '38239375', '34744370', 'javascript/Fiverr-WHMCS-Project', 'Fiverr & WHMCS Project  ', '5', 'AU', 'AUD', '1718766840', '250', '536.11428571429', '35', '500', '10', '7a4fe5112a6219a3ffb83c77bf9b95ad', 1, '2024-06-19 05:21:13', '2024-06-19 05:21:13'),
(41, '38239358', '8015072', 'angular-js/Real-time-Web-Based-Chat', 'Real-time Web Based Chat Platform', '5', 'US', 'USD', '1718766462', '3000', '4554.1', '60', '4000', '10', 'da8c5b017744bc5d2ee670ce0998cf0e', 1, '2024-06-19 05:21:13', '2024-06-19 05:21:14'),
(42, '38239256', '40935073', 'microsoft-outlook/Email-Recovery-Expert-Needed-Outlook', 'Email Recovery Expert Needed - Outlook', '5', 'AU', 'AUD', '1718762821', '30', '108.08473684211', '57', '140', '10', 'af8b1b0a6e20973c77f98e79b03c6683', 1, '2024-06-19 05:21:14', '2024-06-19 05:21:15'),
(43, '38239231', '23723989', 'php/Multilingual-Tutorial-Website-with-Logo', 'Multilingual Tutorial Website with Logo Design -- 2', '5', 'US', 'USD', '1718762186', '30', '135.57', '170', '140', '10', '46040c9cf6768a8ea00c83c27014f77f', 1, '2024-06-19 05:21:15', '2024-06-19 05:21:15'),
(44, '38239216', '66588494', 'python/Custom-Instagram-API', 'Custom Instagram API', '5', 'AU', 'AUD', '1718761899', '30', '154.11410958904', '73', '140', '10', '253b82b8f290e1063b794bc5ca87a7ad', 1, '2024-06-19 05:21:15', '2024-06-19 05:21:16'),
(45, '38239170', '28696986', 'python/Hire-AUTOMATIONS-BLAND-ZAPIER-MAKE', 'Hire AI AUTOMATIONS, BLAND AI, ZAPIER/MAKE, OPEN AI SKILLS PERMAMENTLY', '4.9759247323677', 'CA', 'CAD', '1718760261', '250', '448.30175824176', '91', '500', '10', 'd6935228b18599ad0a4b92c54c227084', 1, '2024-06-19 05:21:16', '2024-06-19 05:21:17'),
(46, '38239131', '64386125', 'php/Telegram-Chatbot-Development', 'Telegram Chatbot Development', '5', 'US', 'USD', '1718759178', '30', '136.32857142857', '70', '140', '10', 'dfd6129a0022fb4868ec1aac8b2027f5', 1, '2024-06-19 05:21:17', '2024-06-19 05:21:17'),
(47, '38239126', '32741419', 'web-scraping/Excel-mail-Update-Website-Search', 'Excel E-mail Update - Website Search Email Extraction', '4.9251009668339', 'US', 'USD', '1718759084', '50', '86.170731707317', '41', '75', '10', '0a582cc6de99b92119628c86f449713d', 1, '2024-06-19 05:21:17', '2024-06-19 05:21:18'),
(48, '38239120', '64740191', 'mobile-app-development/Development-React-Native-Framework-for', 'Development of a React Native Framework for Subscription-Based Application', '5', 'US', 'USD', '1718758955', '250', '533.75641025641', '78', '500', '10', 'a2e90b8df6c059ac9b55aaaba3427238', 1, '2024-06-19 05:21:18', '2024-06-19 05:21:19'),
(49, '38239117', '39824464', 'php/Full-Stack-Web-Dev-for', 'Full Stack Web Dev for Wordpress-Plex-PIM Integration', '5', 'US', 'USD', '1718758924', '250', '515.62365591398', '93', '500', '10', '9d1dc59eae11d62f5405f64e28d157aa', 1, '2024-06-19 05:21:19', '2024-06-19 05:21:19'),
(50, '38239104', '26607790', 'graphic-design/Modern-Travel-Photobook-with-Fold', 'Modern Travel Photobook with Fold-Outs', '4.9692219304005', 'US', 'USD', '1718758570', '30', '81.97', '70', '140', '10', '7a8e0259a584f6f2970f7f6538409336', 1, '2024-06-19 05:21:19', '2024-06-19 05:21:20'),
(51, '38239098', '211028', 'copywriting/Full-Content-Rewrite-for-Company', 'Full Content Rewrite for 2nd Company website', '5', 'US', 'USD', '1718758414', '30', '117.82608695652', '92', '140', '10', '3ce2525ddd3d421af4945b1b49b817c7', 1, '2024-06-19 05:21:20', '2024-06-19 05:21:21'),
(52, '38239073', '67374519', 'website-design/Enhancement-for-Website-38239073', 'UI Enhancement for Website', '5', 'AU', 'AUD', '1718757461', '250', '412', '203', '500', '10', 'ce35b38dc16f2df9d3cfd811e519fa0c', 1, '2024-06-19 05:21:21', '2024-06-19 05:21:21'),
(53, '38239051', '13737071', 'php/plugin-playstation-price-tracker', 'plugin playstation price tracker woocommerce', '5', 'US', 'USD', '1718756480', '30', '144.17647058824', '34', '140', '10', '615efec65413bda842ab8fddb90bfebc', 1, '2024-06-19 05:21:21', '2024-06-19 05:21:22'),
(54, '38239050', '59546154', 'social-media-marketing/Digital-Marketing-Management-for-Saudi', 'Digital Marketing Management for Saudi Arabia Market', '5', 'US', 'USD', '1718756470', '250', '351.625', '64', '375', '10', '0ec8232d349417dff681a6b3b46fcafb', 1, '2024-06-19 05:21:22', '2024-06-19 05:21:23'),
(55, '38239040', '1104448', 'website-design/Modern-Website-Design-Layout-Creation', 'Modern Website Design and Layout Creation', '4.5204678362573', 'US', 'USD', '1718756187', '250', '437.73493975904', '249', '500', '10', '785acae1856ef86c3e2bf20ccc84cf95', 1, '2024-06-19 05:21:23', '2024-06-19 05:21:24'),
(56, '38239033', '59546154', 'graphic-design/Develop-Redesign-Visual-Identity', 'Develop and Redesign Visual Identity', '5', 'US', 'USD', '1718755883', '250', '325.13698630137', '73', '375', '10', 'e3ab9771fa62ea3e5ee2834ca78b8be7', 1, '2024-06-19 05:21:24', '2024-06-19 05:21:25'),
(57, '38239008', '1064300', 'html/Feedback-Review-Management-SaaS', 'Feedback & Review Management SaaS Development', '4.9880562073597', 'AU', 'AUD', '1718755153', '750', '1112.010989011', '182', '1125', '10', 'fd92fe7e568d8f822c3390d49afa1517', 1, '2024-06-19 05:21:25', '2024-06-19 05:21:26'),
(58, '38238968', '35983259', 'python/Learning-language-program-using-Python', 'Learning a language program using Python', '5', 'AU', 'AUD', '1718753902', '30', '112.11764705882', '85', '140', '10', 'f812b09d13c91471f558f3eb4ff42686', 1, '2024-06-19 05:21:26', '2024-06-19 05:21:26'),
(59, '38238831', '22152759', 'php/WordPress-Developer-Needed-for-38238831', 'WordPress Developer Needed for Membership Page', '5', 'US', 'USD', '1718750641', '30', '129.95752895753', '259', '140', '10', 'b4ed418ed14ae49583d3d912d595af15', 1, '2024-06-19 05:21:26', '2024-06-19 05:21:27'),
(60, '38239784', '10681028', 'python/Anomaly-Detection-credit-card-using', 'Anomaly Detection in credit card using Isolation Forest', '5', 'US', 'USD', '1718774942', '250', '385.17021276596', '47', '500', '10', '941ad35213ba475e8a5e03201ba2db08', 1, '2024-06-19 05:30:06', '2024-06-19 05:30:07'),
(61, '38239821', '76904430', 'rendering/Fun-Vibrant-Shop-Design', 'Fun & Vibrant 3D Shop Design', '5', 'SG', 'SGD', '1718775853', '30', '104.23076923077', '13', '140', '10', '54a998f3b9ecf9d7e948314a2bc44903', 1, '2024-06-19 05:45:08', '2024-06-19 05:45:08'),
(62, '38239837', '10129275', 'mobile-app-development/Develop-Image-Enhancement-Feature-for', 'Develop Image Enhancement Feature for Existing App -- 2', '4.9538692261548', 'US', 'USD', '1718776216', '250', '425.05555555556', '54', '500', '10', '50848668189f99c159787f059165c751', 1, '2024-06-19 05:51:06', '2024-06-19 05:51:07'),
(63, '38239922', '42245339', 'php/Lavarel-Blogging-Website-Development', 'Lavarel Blogging Website Development', '5', 'US', 'USD', '1718777328', '250', '383.04', '75', '500', '10', '94c4d7dc8a4f5bb6dd1eaf9383421107', 1, '2024-06-19 06:10:08', '2024-06-19 06:10:08'),
(64, '38239933', '37418318', 'nodejs/Vue-GitHub-Pages-Deployment-Expert', 'Vue.js GitHub Pages Deployment Expert Needed', '5', 'AU', 'AUD', '1718777536', '30', '111.38235294118', '34', '140', '10', '20edf96de3bd67f02b8a3323d2de5c5a', 1, '2024-06-19 06:13:07', '2024-06-19 06:13:08'),
(65, '38239980', '19873852', 'iphone-app-development/Senior-iOS-Developer-MVVM-Expert', 'Senior iOS Developer - MVVM Expert', '4.996149133555', 'US', 'USD', '1718778148', '30', '91.4', '10', '140', '10', '7b42ef556de6b49126159dfffc05edfe', 1, '2024-06-19 06:23:07', '2024-06-19 06:23:08'),
(66, '38239987', '27493580', 'website-design/Business-Website-Development-38239987', 'Business Website Development', '5', 'AU', 'AUD', '1718778313', '750', '861.01639344262', '61', '1125', '10', 'a19d242e25fb734e4d80d2fa287dc71f', 1, '2024-06-19 06:26:07', '2024-06-19 06:26:08'),
(67, '38239986', '5517091', 'php/Interactive-Web-Browser-App', 'Interactive Web Browser App ', '5', 'AU', 'AUD', '1718778303', '30', '100.56818181818', '44', '140', '10', 'c87a7a4f702d47b2df0b8b4a45db025e', 1, '2024-06-19 06:26:08', '2024-06-19 06:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0SVvQQVACn08oPvWQqnhzltYQWjJqPzSj4v97Nq4', 1, '43.224.108.168', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVVlHUEh0a29qMmZFcTlDTTBGcVl2U3dCT2JVSmI3MldqVENhMXVnTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL3Byb2plY3RzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTg3NzQ3Mjc7fX0=', 1718778651),
('1Jdqvs9FIHNLDloJO2an4AO4pFvNg5XNGPu6AkZD', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDNiTHIyWjB6bVVtbHVvUW9PTXpFa3cyVjB2S3ZhUXZDSUhzVGd5WiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773682),
('1lwWRs1CFoDPyfPimwSC7DPgYVvdq5yHNt1IEmIe', NULL, '27.147.190.194', 'WhatsApp/2.23.20.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWY4QlBFS3NKOGdNazNmTkk4YmdoaHJlZzdZckRSSDZ3NUV1ZVRXMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774256),
('1y8rni68WnreZewW6oCoBZRq0W14dk4J92jflJGf', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSVc2SjBnRVdPSkg2S2JwRWNhMmdCR0pDcFZraGxXSFh1ZUF5SDNOMCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718771881),
('2pG4wVXiRPddT2WFmBR6DsSZiiZjZ6F7rD9x3SaX', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNFBqOHB5aElyT0hmcHJLRjIxbTdGUVgyTWV0UGt5TjdMb0EzczhESiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773381),
('4ZWCXdvqr561wCFFQhkIOqmxe144P53GscI7S3WJ', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ2l1Qk1oRGFPUjBZVGNWMk1TNzF3V3hBb09kMGUzanRpbkg1eGVnQSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773802),
('5BN05AtmDPXaiuJsMOomRt8T5jVuISXe2rXYMfaR', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0ZpN2s5NDRjc1hDdFFwQXJWTmljdHc2SGd2NVRURjFMRlFhMFJGRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772721),
('5PQqE4IvQyXNG8WOd6zUnq8uztBJLzaH6dNfPUKd', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzh2bnNscHJKS1o3RkNXU1R0Q1VGczFvNzVWSTkzcWJiQ3BnMTV1dCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772361),
('7dYEnSYyIVI4yXdZo3y2OMPu6pukoXUeJw0VROnc', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMURyWVYyenU1Y2pua1h1bEVTeG90YkFvQWdXb1hCWDloampMYjRBYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772781),
('A47bBmgQqX08mdgc4qg4LXzH5HFDugW9pa4KBAtn', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoickVOblpJRk5WbUhZYlpEZzFuSUtLbVFHZlBQODZ4RzR5WTVHa0tYRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772481),
('aJGuR1kzA6wwlnRZ5Ritgn5Dwhhrll4aOYShC7Qc', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0dRSHZRWjF2VDdIRWNsNU0xWXFmOFFTRDRyT2g0U3hVM0Z5RFBZaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718771821),
('awprzqeMcOvvosNE0HsN4uHNPObkOZC3DqTSzs6z', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQU84SG5TbHppamFFTURvTmo3SEtCeDVLZVAya1hXemdxaUdkR3pBSyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772421),
('bAcGdR7yKHVhGmGDDwHpCn9Ncm3G7lQ60zxmt4cl', NULL, '103.107.161.32', 'Mozilla/5.0 (Android 13; Mobile; rv:127.0) Gecko/127.0 Firefox/127.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiekdZYXY5bzdOZ3U1bGx0OXBxNmU2MHVCdmExUDFxbUd3ZTJzWU9kaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718774277),
('BTwLoSi9YbLC5Bc6JvZ3fYQhuAQfMA6YNHHE2xkQ', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib1lXSW5pTjV3UWthcWdWMjZobUtlcE9YOTJJYUtDM2I5bWViWENMdCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773081),
('buNNBH2I0nM8U2V4YE6FPuUDtG0xYVs8sLgz9FVo', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZlE2bjNYcXk1Y2dVWURFcHF2dmd4Vm5XT2hHMEIyM2Z2eW5Yc1ZsaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774101),
('CCOQWgmSgmvI4YIz8XByQuAa7Eo9y9Yj29zC2LNi', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkVzbnJIMjFqR1QxYXg3allsMzljMmJsWkdveFRqQ3g1NXoxT1g4OCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773621),
('cQWIaoYkjyMN7JekBPNhpFu0CMeW0JjTIDea8RHX', NULL, '103.15.42.199', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaTlBYU5RejNqODhDWVpkSDZpSVdia1hObm81b2dXRUN4NEdTTXlCcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MDoiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vaG9tZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwczovL3RlcnJhY290dGFiZC50eXJvc3R1ZGlvLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774732),
('CZ8VKSCxDugapG0EmCxGIY4DL0DXO9XDeF9e7wNE', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWEwUlNpcENESmk2YXZvQWtDYmVTRDV4aWpYTWM2UVNkZEU3cGN2SSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773141),
('daP0nqWFyNCblYJkUMHTbXJFmD5zFeISn2jxPME6', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUmRpQnhlZEVNTGtwR29lWFExTEhqNTJEV1hEWXdFZEpVbGhpM1FUaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773261),
('FnIXJIqsBDmmqYd81oKt2lX4BhuyhcV0IbEgbBX1', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaGhYZTVKVzBwUTM5dDJwUFFuQ1JiNG5zV1B3ZXFFTllLYWQwWjMzbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772181),
('Gp7gnASit9AnzogMOPUxWkinkS1UH4N39aAkd8sn', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMTRVMmhpV0xFNmVkTE02Z1ZQWXliRW5KOW9zVGtMYUQ3Um1lbktVRCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774041),
('gVrn4Meea98P1E2xDC3h2HjfgnG2CHS15R9NAOhO', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1h0dTI1V0Nkc2VJZkRONjVQNzVvaHg3UkVwb3RtcmUyb2FiYjV0TCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772841),
('HHLGEEups0OQrrm1DdrLl1tK5EjGT3LSdwkkJ9eo', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1VBNjRUM1VOODJRMXRVUGRHT0ozZU5RRnRuanRUZ0FUdm9SUzVjUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774281),
('hiWAlnzya2DIMCyrImWevuIOpQBPJQzLCOjA8HDu', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicEhyTkJsVHlGbDllSWk2MzlhdmQwZmwxV3Axa1U2SW51c2FQcjN6ZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774221),
('HJCqrfI6ohWMREjgQveM5d5meU01mCuqnimgLQRM', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQVBFWUpOazhnY21hYjZJWFVuRVIxbTdCWUxZNDdqcWU1dXhqNm9QeSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773021),
('HWSpa9fL9vbQpd9Gf2HrBkEMNSMntREVcOZseiaI', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0FESUYxazhnZ3RtNER0TmozczM3a0F0alR2OXZSR2ZrN0Y5eGFXNyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772061),
('I7NfhfJugdvoWTsh5X5Da5qEbnCx7Mfeh8GVvh2v', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmh5Y3BGaWFDcnprYWNuOEpGTTVJZ2luVW9YRWJFa3FNUFpTd3FhTCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773501),
('IIF8vF8XsNMw4Z1Jb8tiJovtsLSjehJnniyr4LOI', 1, '27.147.190.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTWVnWVBMMzluWDVGb3JMb1Nnb2lmd2RxREdkb05zY3o0aFdiQ2dwWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2xvZ2luIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTg3NzUzNDY7fX0=', 1718775346),
('j8o5LBnizwIjK3EamfwEeAMiIqx3eGIQjgN0ea0A', NULL, '45.118.245.68', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblRTRURVZ01UblZGR0ZIemxlM0YzSXVvMDI5aWZlaU9wNGFkTWhndCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vcHJvamVjdHMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1718774735),
('jrUg7ZD2lm8ZCgmOwWx9Vc7fcHl6zWCnYcnMc2Nl', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmlHeGpESmhUMnZEODdFMUMyT3ZDWlhwUThTWWpEN09JYWVFZDhuZSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772001),
('KBo4wwPAdjiL0ZINzkkVWk2BehwbyycKJdzfqIYz', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTFncDViOVBNcXRHTzVBVWFBZzhRQWRWdTVZWTZSakdCanFPcjVpNCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773441),
('kRFcczX77mdcaPoAdluYkBy0cqUakhWpFPmTx3ib', 1, '27.147.190.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMXNHUkVwV3hSRWV6QVdscHRsZ08zSldMVTRkdTFGZTVLcDdSMjlQViI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQxOiJodHRwczovL3RlcnJhY290dGFiZC50eXJvc3R1ZGlvLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzE4Nzc1MzM1O319', 1718775335),
('LSmsm5GCKmqii5efAx2Gp9vRTHgWgbQIt4fW7iuz', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieTRrQkc0cG1pUVlabWViVWd4NWJMNzlpcDhkYkU5dkx5VUFMVjNPSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772301),
('mq1HO60xeV4PwkCGOOWr34ISVqyoaNUKczpms4CR', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2V1TDJvb21YZ1hQeXZITHVBak8wZnNoT0ozMG1LMlZyMW9YeFNIZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772961),
('Nt8E20OKvTuuSuVfXnHkww1f88KzEvbQNzCH4A0Q', NULL, '51.195.65.152', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm9MWlpOMEZjUGhQczhwaG5oNmRkT1J0eFl0N2Z3SU8wTHdoY0ZmeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718777347),
('o6y7Q0EjIiv1ospl7ijtwvplxT1zLRcrMl0iSZcL', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0IzZjg5ZlpKczU4aXppbWoxMHM0dEtqcm0zaG9ad09rUzllcm5TUCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774341),
('o7B4nKPS4DosmAjLqXcevFdXJL4rc4VTphYgGjdu', 1, '103.107.161.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibWdia1FIMzBqSVRJM3lxVGVobTJyd1JuNWVERDk3Y2ZnUEVzb1lDcyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ0OiJodHRwczovL3RlcnJhY290dGFiZC50eXJvc3R1ZGlvLmNvbS9wcm9qZWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzE4Nzc3OTI1O319', 1718777926),
('oVJALF4m55iVUsa2HBKCDuiZQHQKAZI8Zc5j2FTE', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnJraGtDalM5VkNXMVZOQXQ3RWdoNlplME9WbFVzUFBrZU5CZWxXciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774161),
('P8SxZxC5g48vIkVMQ1HTo5IbnnSoKEit8LSCMf8L', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSXBreFoxR0VsZGd1N2F5YlBtcDBWajVOMDRObXZoWUNYT2RZMkpBNiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773921),
('q8m1swF2JkForiq7QOyjouqOb8EekgSQ5j4Dml2W', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXlHZ3NoSmFMeHVFd0FJV0M5UlhBd1gyUnE1VUJCTWRUUnFSbk10byI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718774401),
('qihF8godC5F7KunJVB1C9l7D8z3WzVvuXCNWhegU', 1, '27.147.190.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZVRralR0Rk9mbk5uUjNWUTdCRmtaNFRZUnN3ZFBSdUxVUjZZcU1yYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL3Byb2plY3RzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTg3NzUzNjQ7fX0=', 1718775377),
('R1nqy7RT3VGnZci3J57WeJbgUYA6FUnjYeknypzp', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYWkxbDBObVA2TVRRQVh4dE5xUzY3QkVkS1NvYjJoNDAyYzhxRndFeiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772541),
('Rao4rfHQMtimmck1ynAVwd6fzJS7ydGaeKrWJr1l', NULL, '27.147.190.194', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2xJWFozek8yYjYyaExGSHJSZXlMMjN5RDM3eXNZVUQxMmI0VHNONCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718774254),
('rKmp0JnThQ5xGDHPq0BHOkanqu8k5VHFTk0U7Crj', NULL, '27.147.190.194', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoick5JbG1DbGljMHRxa3VJWjkzUU9Bb1NVT0gzbzFtSEp5RjZ0MFNITSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718774256),
('s8Uk12s6KAZ1yseCHhUG69207GFDjE1LXW9VdsI7', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTWNPbUdqRnQzczYwdWhSMlZCRXdrQ0NKNEZVMFg0VkZQdDBkN1B0bCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772902),
('SFZ7MRQyca2OEWTqXcHqwOSogeiGl16o8PeFBv3K', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2F1dk0zSk43ckpDYU8xb2tDNkFsdGhvdjRaSnR6UG84Y2tJVEdMWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772241),
('SjkJxN3F89SfaWxGp6kJNnsOjCcpKZBACpn3Eu4c', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFpxOWppc0xNNU9OckxVd2x0ZnU2TW5ncVR6M09jSXdpOG1GZGRBciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773321),
('UdWGm6av3o2efJej49HKb8ZBWGhHLMgXw1PrFRiJ', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVWkzdktLU2ZZczlSTTJCZGk5V1B2M0FiSW5IamhBa1M0MEk1YXpjcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773561),
('v0534znPPRQYoDmyIS4GyBtccwEPsg0RuXvEAYj1', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1Y2TjJhbVpoeHNlMDRDRWp2ZUgzTDVQWFdZbDJDdktxWGVHTU9uSyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772121),
('vlxPHAmpRuwob5FiBSFswcggUwkcuW3wdvACX2kx', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGJEUUNhVDhmVlpMbWtQZ2pGNWdzZFk5aVZ1TGMybERTaHlGRDlBTSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772602),
('W9P7ncsdoLSsCQBHqpBrcmx7rmZAKdqRQhcQ5i2i', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTAzVDRGV3VqbFJ5Nzdmd1hlazF4TDNTaWd1YWJqUUFjV2VJRUNCYiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718772661),
('Wpuc4zhCKqJn98s8XrRQAwjrl7gLacSLkTNo7PTu', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamRqYXNnZWN3Qm1VRHhERlhoUWY2QXl0UHBKcnk2Sk5uSlhqUEZqOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718771942),
('WtpubfW0Sgykay3eZVVqoV8RPFcys2fW22bIpp56', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS1BkaWFjeVZ2dDVBRWFiRnFhdEdaYjNHckUydnBKVGllbTczOWJ2bSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773982),
('xrARbsudVFUPyPplIVZ4aFOirvomEJoXb1sia6LV', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0hBY25UQmQ1aGZmTnpCdjNjbVVEdGQ1SHNiSnF4eW1lejROYjBaaSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718771762),
('yKC8ffv9lOFMo0KKBmkeVlYjn7Q8xDsFb9aa2rJE', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYkNZdVBxRkhtSXI1WDBHcnBCdmxRUkFvU3FTWEhIMzZHNFdrUE5WcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773861),
('zF4NtJ3qcsXLU71L9kNRDtgMQbky9OdOs48IDPc2', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0Z4V2lJeDEyWWhESzFqRVdBT1VRZ1J4WGdST2ZGMHhaaFdnYVR5SCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773201),
('ZNwtsO2xwtmXudRqn0AMhD1PODeW8mZ89sFVbkMR', NULL, '51.195.65.152', 'curl/7.61.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3VlWHRNd0tBWVJJOFdiTHhFRlZ3cldpQzdZMjMyTXZNZFdzSjF5QyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly90ZXJyYWNvdHRhYmQudHlyb3N0dWRpby5jb20vYm90Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718773741);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'admin@tyrostudio.com', NULL, '$2y$12$c2uAZBXYbcoFiM0jo4uFHuF75oNWumB.DVjBxFaHQ3Xa.NFW.iN9i', 'admin', NULL, '2024-06-18 02:27:56', '2024-06-18 02:27:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bot_settings`
--
ALTER TABLE `bot_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bot_settings`
--
ALTER TABLE `bot_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
