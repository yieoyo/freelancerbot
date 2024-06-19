-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tyrostud_flbot
DROP DATABASE IF EXISTS `tyrostud_flbot`;
CREATE DATABASE IF NOT EXISTS `tyrostud_flbot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tyrostud_flbot`;

-- Dumping structure for table tyrostud_flbot.bot_settings
DROP TABLE IF EXISTS `bot_settings`;
CREATE TABLE IF NOT EXISTS `bot_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fluser_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fluser_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_reputation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_proposal` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skip_project` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `allow_country` longtext COLLATE utf8mb4_unicode_ci,
  `allow_skill` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.bot_settings: ~0 rows (approximately)
INSERT INTO `bot_settings` (`id`, `fluser_id`, `fluser_token`, `page_limit`, `min_price`, `buyer_reputation`, `bid_period`, `bid_proposal`, `skip_project`, `status`, `created_at`, `updated_at`, `allow_country`, `allow_skill`) VALUES
	(1, '51803546', 'hkVl6gS9Kjqvo1WMiPs423VJm5jx0K', '100', '29.0', '4.5', '10', 'Hello!\r\nI\'m Mehrab, a Google-certified UX Specialist and IT Specialist, Meta certified Frontend Designer and Developer and currently working Senior Web Designer and Developer at SW HR Consulting LLC, with extensive experience in web, software, mobile application design and development and digital marketing. I am committed to crafting your digital success and ensuring you are 100% satisfied with the results. Pay only when you are 100% satisfied. I STRICTLY BITE ONLY WHICH I CAN CHEW!', 'shopify,prestashop,magento', 1, '2024-06-18 07:53:35', '2024-06-18 18:00:04', 'as, tz, zm, ba, gy, ly, um, uy, sy, ye, mx, no, rw, tw, zw, vg, ve, vi, vn, it, mz, iq, md, pw, np, pa, pg, pr, sg, py, my, mv, mk, do, is, sv, lk, kg, tr, kw, xk, tj, uz, ke, jo, jm, kz, ht, hn, xc, ph, hu, hk, lu, gl, gd, gi, gh, gm, ge, fk, fj, fi, gf, tf, pf, ir, za, et, ee, ag, cu, cz, ec, cr, co, cl, cv, cm, ca, kh, bi, bo, bs, bg, az, am, ai, at, bh, ao, dz, al, cy, by, si, sk, ar, br, pe, lt, lv, es, pt, hr, nl, be, eg, qa, ae, sa, pl, dk, ie, fr, ro, ch, se, gb, de, au, nz, us, gr', '2158, 613, 323, 237, 959, 710, 95, 7, 669, 106, 72, 44, 59, 20, 74, 116, 77, 305, 13, 3, 9, 17, 69, 115, 335');

-- Dumping structure for table tyrostud_flbot.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.cache: ~0 rows (approximately)

-- Dumping structure for table tyrostud_flbot.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.cache_locks: ~0 rows (approximately)

-- Dumping structure for table tyrostud_flbot.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table tyrostud_flbot.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.jobs: ~0 rows (approximately)

-- Dumping structure for table tyrostud_flbot.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.job_batches: ~0 rows (approximately)

-- Dumping structure for table tyrostud_flbot.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.migrations: ~5 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_06_17_134201_create_projects_table', 1),
	(6, '2024_06_18_130910_create_bot_settings_table', 2);

-- Dumping structure for table tyrostud_flbot.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table tyrostud_flbot.projects
DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `projectid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `employer_reputation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avg_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `request_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.projects: ~68 rows (approximately)
INSERT INTO `projects` (`id`, `projectid`, `userid`, `seo_url`, `name`, `employer_reputation`, `country`, `currency`, `pub_time`, `min_price`, `avg_price`, `bid_count`, `bid_price`, `period`, `request_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, '38240264', '11524839', 'javascript/Synfusion-JavaScript-Document-Editor', 'Synfusion JavaScript Document Editor with Excel Data', '4.9852274199819', 'HK', 'HKD', '1718782972', '2000', '3767.511627907', '129', '4000', '10', '', 0, '2024-06-19 07:59:59', '2024-06-19 07:59:59'),
	(2, '38240228', '52584171', 'php/Wordpress-Developer-Needed-38240228', 'Wordpress Developer Needed', '5', 'US', 'USD', '1718782456', '30', '157.37944664032', '253', '140', '10', '', 0, '2024-06-19 08:00:00', '2024-06-19 08:00:00'),
	(3, '38240205', '77186286', 'web-scraping/Commerce-Web-Crawling-Service', 'E-Commerce Web Crawling Service', '0', 'HK', 'HKD', '1718782130', '2000', '3665.8974358974', '117', '4000', '10', '', 0, '2024-06-19 08:00:01', '2024-06-19 08:00:01'),
	(4, '38240173', '77186107', 'website-design/Mediation-Services-Web-Development', 'Mediation Services Web Development', '0', 'AU', 'AUD', '1718781673', '30', '149.84146341463', '164', '140', '10', '', 0, '2024-06-19 08:00:01', '2024-06-19 08:00:01'),
	(5, '38240118', '77185828', 'ecommerce/Tienda-web-woocommerce', 'Tienda web woocommerce', '0', 'US', 'USD', '1718780853', '30', '150.01818181818', '55', '140', '10', '', 0, '2024-06-19 08:00:02', '2024-06-19 08:00:02'),
	(6, '38240088', '68505257', '3d-animation/Urgent-Casino-Themed-Jackpot-Winner', 'Urgent Casino-Themed Jackpot Winner Animation', '5', 'AU', 'AUD', '1718780239', '250', '419.95744680851', '47', '500', '10', '', 0, '2024-06-19 08:00:03', '2024-06-19 08:00:03'),
	(7, '38240048', '75360500', 'flutter/Flutter-developer-Integrate-apis-only', 'Flutter developer - Integrate 4-5 apis only', '0', 'SG', 'SGD', '1718779481', '40', '76.84126984127', '63', '50', '10', '', 0, '2024-06-19 08:00:04', '2024-06-19 08:00:04'),
	(8, '38239987', '27493580', 'website-design/Business-Website-Development-38239987', 'Business Website Development', '5', 'AU', 'AUD', '1718778313', '750', '983.36885245902', '244', '1125', '10', '', 0, '2024-06-19 08:00:04', '2024-06-19 08:00:04'),
	(9, '38239986', '5517091', 'php/Interactive-Web-Browser-App', 'Interactive Web Browser App ', '5', 'AU', 'AUD', '1718778303', '30', '124.23387096774', '124', '140', '10', '', 0, '2024-06-19 08:00:05', '2024-06-19 08:00:05'),
	(10, '38239978', '74782884', 'graphic-design/Engaging-Marketing-PDF-Presentation', 'Engaging Marketing PDF Presentation', '0', 'AU', 'AUD', '1718778155', '30', '78', '80', '140', '10', '', 0, '2024-06-19 08:00:06', '2024-06-19 08:00:06'),
	(11, '38239980', '19873852', 'iphone-app-development/Senior-iOS-Developer-MVVM-Expert', 'Senior iOS Developer - MVVM Expert', '4.996149133555', 'US', 'USD', '1718778148', '30', '161.98333333333', '60', '140', '10', '', 0, '2024-06-19 08:00:06', '2024-06-19 08:00:06'),
	(12, '38239950', '77184457', 'android/eCommerce-Mobile-App-Development-from', 'eCommerce Mobile App Development from WooCommerce', '0', 'US', 'USD', '1718777799', '250', '486.48128342246', '187', '500', '10', '', 0, '2024-06-19 08:00:07', '2024-06-19 08:00:07'),
	(13, '38239933', '37418318', 'nodejs/Vue-GitHub-Pages-Deployment-Expert', 'Vue.js GitHub Pages Deployment Expert Needed', '5', 'AU', 'AUD', '1718777536', '30', '133.56204379562', '137', '140', '10', '', 0, '2024-06-19 08:00:08', '2024-06-19 08:00:08'),
	(14, '38239922', '42245339', 'php/Lavarel-Blogging-Website-Development', 'Lavarel Blogging Website Development', '5', 'US', 'USD', '1718777328', '250', '463.56053811659', '223', '500', '10', '', 0, '2024-06-19 08:00:08', '2024-06-19 08:00:08'),
	(15, '38239886', '77184563', 'illustration/Classic-Cartoon-Style-Blonde-Cowgirl', 'Classic Cartoon Style Blonde Cowgirl Illustration', '0', 'US', 'USD', '1718776777', '30', '90.344827586207', '87', '140', '10', '', 0, '2024-06-19 08:00:09', '2024-06-19 08:00:09'),
	(16, '38239879', '77184542', 'logo-design/Detailed-Black-White-Logo-Designs', 'Detailed Black and White Logo Designs', '0', 'US', 'USD', '1718776706', '30', '69.352', '125', '140', '10', '', 0, '2024-06-19 08:00:10', '2024-06-19 08:00:10'),
	(17, '38239819', '77184259', 'graphic-design/score-sheet', 'score sheet', '0', 'HK', 'HKD', '1718776591', '80', '119.76595744681', '47', '160', '10', '', 0, '2024-06-19 08:00:10', '2024-06-19 08:00:10'),
	(18, '38239862', '77184487', 'python/Lottery-Prediction-Algorithm-Development-38239862', 'Lottery Prediction Algorithm Development -- 2', '0', 'US', 'USD', '1718776563', '250', '419.25510204082', '98', '500', '10', '', 0, '2024-06-19 08:00:11', '2024-06-19 08:00:11'),
	(19, '38239846', '60278734', 'wordpress/Wordpress-editor-38239846', 'Wordpress editor', '0', 'US', 'USD', '1718776332', '30', '129.87969543147', '197', '140', '10', '', 0, '2024-06-19 08:00:12', '2024-06-19 08:00:12'),
	(20, '38239837', '10129275', 'mobile-app-development/Develop-Image-Enhancement-Feature-for', 'Develop Image Enhancement Feature for Existing App -- 2', '4.9538692261548', 'US', 'USD', '1718776216', '250', '488.42331288344', '163', '500', '10', '', 0, '2024-06-19 08:00:12', '2024-06-19 08:00:12'),
	(21, '38239515', '77182757', 'iphone-app-development/Multi-Functional-Chat-Fund-Transfer', 'Multi-Functional Chat & Fund Transfer App', '0', 'US', 'USD', '1718775028', '3000', '3976.8157894737', '76', '4000', '10', '', 0, '2024-06-19 08:00:13', '2024-06-19 08:00:13'),
	(22, '38239784', '10681028', 'python/Anomaly-Detection-credit-card-using', 'Anomaly Detection in credit card using Isolation Forest', '5', 'US', 'USD', '1718774942', '250', '417.05555555556', '90', '500', '10', '', 0, '2024-06-19 08:00:14', '2024-06-19 08:00:14'),
	(23, '38239774', '77183925', 'python/Expert-Python-Developer-for-Code', 'Expert Python Developer for Code Creation', '0', 'US', 'USD', '1718774808', '30', '124.69230769231', '104', '140', '10', '', 0, '2024-06-19 08:00:14', '2024-06-19 08:00:14'),
	(24, '38239720', '30176120', 'website-design/Create-simple-Artist-Website', 'Create simple Artist Website', '0', 'US', 'USD', '1718773846', '30', '149.4011627907', '172', '140', '10', '', 0, '2024-06-19 08:00:15', '2024-06-19 08:00:15'),
	(25, '38239697', '77183487', 'php/commerce-Inventory-Software-Development', 'E-commerce & Inventory Software Development', '0', 'US', 'USD', '1718773610', '750', '1070.1703056769', '229', '1125', '10', '', 0, '2024-06-19 08:00:16', '2024-06-19 08:00:16'),
	(26, '38239623', '77183391', 'metatrader/MQL-Coder-for-Custom-Strategy', 'MQL4 Coder for Custom Strategy', '0', 'SG', 'SGD', '1718772889', '250', '425.10752688172', '93', '500', '10', '', 0, '2024-06-19 08:00:16', '2024-06-19 08:00:16'),
	(27, '38239589', '14747668', 'iphone-app-development/Intuitive-FinTech-App-Design-Development', 'Intuitive FinTech App Design & Development', '0', 'US', 'USD', '1718772657', '750', '1102.1231884058', '138', '1125', '10', '', 0, '2024-06-19 08:00:17', '2024-06-19 08:00:17'),
	(28, '38239554', '11185216', 'php/WordPress-Auto-Insurance-Comparison-Site', 'WordPress Auto Insurance Comparison Site', '5', 'US', 'USD', '1718771698', '30', '152.85853658537', '205', '140', '10', '', 0, '2024-06-19 08:00:18', '2024-06-19 08:00:18'),
	(29, '38239551', '2646221', 'php/Zapier-ShipStation-Auto-Print-Workflow', 'Zapier ShipStation Auto Print Workflow', '4.9941234345854', 'US', 'USD', '1718771499', '30', '121.07307017544', '114', '140', '10', '', 0, '2024-06-19 08:00:18', '2024-06-19 08:00:18'),
	(30, '38239544', '33339721', 'python/Comprehensive-Python-CRM-ERP-System-38239544', 'Comprehensive Python CRM/ERP System Builder -- 2', '0', 'US', 'USD', '1718771361', '5000', '8041.5', '46', '7500', '10', '', 0, '2024-06-19 08:00:19', '2024-06-19 08:00:19'),
	(31, '38239493', '77182604', 'c-sharp-programming/Cross-Platform-Tablet-Data-Entry', 'Cross-Platform Tablet Data Entry Tool Development', '0', 'AU', 'AUD', '1718770473', '3000', '6841.2903225806', '62', '6500', '10', '', 0, '2024-06-19 08:00:20', '2024-06-19 08:00:20'),
	(32, '38239497', '57372721', 'agile-development/Agile-Feature-Writing-under-NDA', 'Agile Feature Writing under NDA', '5', 'US', 'USD', '1718770095', '250', '396.42857142857', '14', '500', '10', '', 0, '2024-06-19 08:00:20', '2024-06-19 08:00:20'),
	(33, '38239454', '77182397', 'product-design/Innovative-Drinking-Water-Filtration', 'Innovative Drinking Water Filtration Design', '0', 'AU', 'AUD', '1718769009', '30', '127.04', '50', '140', '10', '', 0, '2024-06-19 08:00:21', '2024-06-19 08:00:21'),
	(34, '38239449', '58626943', 'python/Automated-Trading-Bot-for-Interactive-38239449', 'Automated Trading Bot for Interactive Brokers', '5', 'US', 'USD', '1718768909', '250', '456.0625', '96', '500', '10', '', 0, '2024-06-19 08:00:22', '2024-06-19 08:00:22'),
	(35, '38239408', '10131285', 'android/Android-App-Submission-Assistance-38239408', 'Android App Submission Assistance -- 2', '4.9780894850005', 'US', 'USD', '1718767636', '80', '127.25', '32', '115', '10', '', 0, '2024-06-19 08:00:22', '2024-06-19 08:00:22'),
	(36, '38239396', '77181948', 'python/Revolut-API-Development-with-Python', 'Revolut API Development with Python', '0', 'US', 'USD', '1718767344', '30', '121.43689320388', '103', '140', '10', '', 0, '2024-06-19 08:00:23', '2024-06-19 08:00:23'),
	(37, '38239391', '11065561', 'software-architecture/Interactive-Education-Content-Generation', 'Interactive Education Content Generation using OpenAI', '5', 'US', 'USD', '1718767093', '250', '480.10768786127', '173', '500', '10', '', 0, '2024-06-19 08:00:24', '2024-06-19 08:00:24'),
	(38, '38239381', '77181876', 'graphic-design/Minimalist-Boston-Terrier-Logo-Design', 'Minimalist Boston Terrier Logo Design', '0', 'US', 'USD', '1718767058', '30', '83.696629213483', '89', '140', '10', '', 0, '2024-06-19 08:00:24', '2024-06-19 08:00:24'),
	(39, '38239375', '34744370', 'javascript/Fiverr-WHMCS-Project', 'Fiverr & WHMCS Project  ', '5', 'AU', 'AUD', '1718766840', '250', '639.1', '40', '500', '10', '', 0, '2024-06-19 08:00:25', '2024-06-19 08:00:25'),
	(40, '38239358', '8015072', 'angular-js/Real-time-Web-Based-Chat', 'Real-time Web Based Chat Platform', '5', 'US', 'USD', '1718766462', '3000', '4496.6133333333', '75', '4000', '10', '', 0, '2024-06-19 08:00:26', '2024-06-19 08:00:26'),
	(41, '38239351', '77181741', 'website-design/Modern-Minimalistic-SEO-Optimized', 'Modern, Minimalistic, SEO Optimized Website -- 2', '0', 'US', 'USD', '1718766409', '250', '457.74803149606', '127', '500', '10', '', 0, '2024-06-19 08:00:26', '2024-06-19 08:00:26'),
	(42, '38239349', '77181731', 'html/Immersive-Web-Based-Virtual-World', 'Immersive Web-Based Virtual World Creation', '0', 'NZ', 'NZD', '1718766401', '30', '120.42028985507', '69', '140', '10', '', 0, '2024-06-19 08:00:27', '2024-06-19 08:00:27'),
	(43, '38239328', '77181537', 'php/Development-mobile-application-website', 'Development of a mobile application and a website', '0', 'US', 'USD', '1718765438', '1500', '2295.8333333333', '120', '2250', '10', '', 0, '2024-06-19 08:00:28', '2024-06-19 08:00:28'),
	(44, '38239327', '77181234', 'php/Cross-Platform-Figma-Plugin-Developer', 'Cross-Platform Figma Plugin Developer', '0', 'US', 'USD', '1718765357', '30', '134.30184782609', '92', '140', '10', '', 0, '2024-06-19 08:00:28', '2024-06-19 08:00:28'),
	(45, '38239316', '77181441', 'logo-design/Minimalistic-Brand-Logo-Creation-38239316', 'Minimalistic Brand Logo Creation', '0', 'US', 'USD', '1718765087', '250', '324.21212121212', '132', '500', '10', '', 0, '2024-06-19 08:00:29', '2024-06-19 08:00:29'),
	(46, '38239304', '77181365', 'logo-design/Saints-Human-Based-Athletics-Mascot', '"Saints" Human-Based Athletics Mascot Design', '0', 'US', 'USD', '1718764679', '30', '87.92703125', '64', '140', '10', '', 0, '2024-06-19 08:00:30', '2024-06-19 08:00:30'),
	(47, '38239281', '16437278', 'website-design/WordPress-Business-Site-Needed', 'WordPress Business Site Needed', '0', 'AU', 'AUD', '1718763846', '30', '157.88394308943', '246', '140', '10', '', 0, '2024-06-19 08:00:30', '2024-06-19 08:00:30'),
	(48, '38239245', '77180214', 'css/Comprehensive-Graphic-Design-Programming', 'Comprehensive Graphic Design & Programming', '0', 'US', 'USD', '1718763422', '250', '450.71774193548', '124', '500', '10', '', 0, '2024-06-19 08:00:31', '2024-06-19 08:00:31'),
	(49, '38239256', '40935073', 'microsoft-outlook/Email-Recovery-Expert-Needed-Outlook', 'Email Recovery Expert Needed - Outlook', '5', 'AU', 'AUD', '1718762821', '30', '110.48901639344', '61', '140', '10', '', 0, '2024-06-19 08:00:32', '2024-06-19 08:00:32'),
	(50, '38239246', '77180929', 'graphic-design/Custom-Worship-Song-Lyric-Photobook', 'Custom Worship Song Lyric Photobook', '0', 'CA', 'CAD', '1718762588', '30', '75.964468085106', '47', '140', '10', '', 0, '2024-06-19 08:00:32', '2024-06-19 08:00:32'),
	(51, '38239239', '76663856', 'php/Creaci-Landing-Page-con-Env', 'Creación de Landing Page con Envío a Base de Datos y Correo Electrónico', '0', 'US', 'USD', '1718762422', '30', '108.15037593985', '133', '140', '10', '', 0, '2024-06-19 08:00:33', '2024-06-19 08:00:33'),
	(52, '38239231', '23723989', 'php/Multilingual-Tutorial-Website-with-Logo', 'Multilingual Tutorial Website with Logo Design -- 2', '5', 'US', 'USD', '1718762186', '30', '145.03791208791', '182', '140', '10', '', 0, '2024-06-19 08:00:34', '2024-06-19 08:00:34'),
	(53, '38239219', '56251165', 'php/WordPress-Site-Enhancements-with-BeTheme', 'WordPress Site Enhancements with BeTheme', '0', 'AU', 'AUD', '1718762066', '250', '438.84', '200', '500', '10', '', 0, '2024-06-19 08:00:34', '2024-06-19 08:00:34'),
	(54, '38239216', '66588494', 'python/Custom-Instagram-API', 'Custom Instagram API', '5', 'AU', 'AUD', '1718761899', '30', '147.74584158416', '101', '140', '10', '', 0, '2024-06-19 08:00:35', '2024-06-19 08:00:35'),
	(55, '38239211', '56454426', 'unity-3d/Interactive-Indoor-Unity-Scene', 'Interactive Indoor Unity Scene', '0', 'US', 'USD', '1718761761', '30', '140.10144927536', '69', '140', '10', '', 0, '2024-06-19 08:00:36', '2024-06-19 08:00:36'),
	(56, '38239189', '77180609', 'graphic-design/Cart-Cartoon-Designing', 'Cart Cartoon Designing', '0', 'US', 'USD', '1718761114', '250', '336.125', '84', '500', '10', '', 0, '2024-06-19 08:00:36', '2024-06-19 08:00:36'),
	(57, '38239183', '77180601', 'php/Construir-sistema-pos', 'Construir un sistema pos', '0', 'US', 'USD', '1718760941', '250', '453.88888888889', '45', '500', '10', '', 0, '2024-06-19 08:00:37', '2024-06-19 08:00:37'),
	(58, '38239168', '77180445', 'game-development/Same-Game-Development', 'Same Game Development', '0', 'US', 'USD', '1718760574', '250', '546.96363636364', '55', '500', '10', '', 0, '2024-06-19 08:00:38', '2024-06-19 08:00:38'),
	(59, '38239170', '28696986', 'python/Hire-AUTOMATIONS-BLAND-ZAPIER-MAKE', 'Hire AI AUTOMATIONS, BLAND AI, ZAPIER/MAKE, OPEN AI SKILLS PERMAMENTLY', '4.9759247323677', 'CA', 'CAD', '1718760261', '250', '449.74768', '125', '500', '10', '', 0, '2024-06-19 08:00:38', '2024-06-19 08:00:38'),
	(60, '38239163', '77180488', 'facebook-marketing/Expert-Digital-Marketer-for-Women', 'Expert Digital Marketer for Women\'s Clothing', '0', 'US', 'USD', '1718760222', '750', '880.8', '10', '1125', '10', '', 0, '2024-06-19 08:00:39', '2024-06-19 08:00:39'),
	(61, '38239146', '77112619', 'coding/ESP-Bulb-Counting-Data-Transfer', 'ESP32 Bulb Counting & Data Transfer', '0', 'US', 'USD', '1718759626', '250', '437.72927083333', '96', '500', '10', '', 0, '2024-06-19 08:00:40', '2024-06-19 08:00:40'),
	(62, '38239131', '64386125', 'php/Telegram-Chatbot-Development', 'Telegram Chatbot Development', '5', 'US', 'USD', '1718759178', '30', '130.62393162393', '117', '140', '10', '', 0, '2024-06-19 08:00:40', '2024-06-19 08:00:40'),
	(63, '38239126', '32741419', 'web-scraping/Excel-mail-Update-Website-Search', 'Excel E-mail Update - Website Search Email Extraction', '4.9251009668339', 'US', 'USD', '1718759084', '50', '95.375', '56', '75', '10', '', 0, '2024-06-19 08:00:41', '2024-06-19 08:00:41'),
	(64, '38239120', '64740191', 'mobile-app-development/Development-React-Native-Framework-for', 'Development of a React Native Framework for Subscription-Based Application', '5', 'US', 'USD', '1718758955', '250', '587.86330935252', '139', '500', '10', '', 0, '2024-06-19 08:00:42', '2024-06-19 08:00:42'),
	(65, '38239117', '39824464', 'php/Full-Stack-Web-Dev-for', 'Full Stack Web Dev for Wordpress-Plex-PIM Integration', '5', 'US', 'USD', '1718758924', '250', '506.77692307692', '130', '500', '10', '', 0, '2024-06-19 08:00:42', '2024-06-19 08:00:42'),
	(66, '38239104', '26607790', 'graphic-design/Modern-Travel-Photobook-with-Fold', 'Modern Travel Photobook with Fold-Outs', '4.9692219304005', 'US', 'USD', '1718758570', '30', '94.218681318681', '91', '140', '10', '', 0, '2024-06-19 08:00:43', '2024-06-19 08:00:43'),
	(67, '38239098', '211028', 'copywriting/Full-Content-Rewrite-for-Company', 'Full Content Rewrite for 2nd Company website', '5', 'US', 'USD', '1718758414', '30', '116.59210526316', '152', '140', '10', '', 0, '2024-06-19 08:00:44', '2024-06-19 08:00:44'),
	(68, '38239073', '67374519', 'website-design/Enhancement-for-Website-38239073', 'UI Enhancement for Website', '5', 'AU', 'AUD', '1718757461', '250', '422.75', '260', '500', '10', '', 0, '2024-06-19 08:00:44', '2024-06-19 08:00:44'),
	(69, '38239057', '77179908', 'illustration/Cartoonish-Children-Book-Illustration', 'Cartoonish Children\'s Book Illustration for a book about a girl with leg braces', '0', 'US', 'USD', '1718756785', '250', '387.92774193548', '93', '500', '10', '', 0, '2024-06-19 08:00:45', '2024-06-19 08:00:45'),
	(70, '38239059', '75784410', 'logo-design/Classic-Logo-Design-for-Companies', 'Classic Logo Design for 2 Companies', '0', 'US', 'USD', '1718756761', '250', '335.75149700599', '167', '500', '10', '', 0, '2024-06-19 08:00:46', '2024-06-19 08:00:46');

-- Dumping structure for table tyrostud_flbot.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.sessions: ~58 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('0SVvQQVACn08oPvWQqnhzltYQWjJqPzSj4v97Nq4', 1, '43.224.108.168', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVVlHUEh0a29qMmZFcTlDTTBGcVl2U3dCT2JVSmI3MldqVENhMXVnTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL3Byb2plY3RzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTg3NzQ3Mjc7fX0=', 1718778651),
	('Nt8E20OKvTuuSuVfXnHkww1f88KzEvbQNzCH4A0Q', NULL, '51.195.65.152', 'curl/7.61.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm9MWlpOMEZjUGhQczhwaG5oNmRkT1J0eFl0N2Z3SU8wTHdoY0ZmeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGVycmFjb3R0YWJkLnR5cm9zdHVkaW8uY29tL2JvdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718777347),
	('o7B4nKPS4DosmAjLqXcevFdXJL4rc4VTphYgGjdu', 1, '103.107.161.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibWdia1FIMzBqSVRJM3lxVGVobTJyd1JuNWVERDk3Y2ZnUEVzb1lDcyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ0OiJodHRwczovL3RlcnJhY290dGFiZC50eXJvc3R1ZGlvLmNvbS9wcm9qZWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzE4Nzc3OTI1O319', 1718777926),
	('SpQuu49Rac9ON2I3xaoUo0aj1zGZXwVCLmSUZYE1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiS0xXRTJWMzlseEpwUFpJdHk5UGNLbjVtbVdaeU1qSHhQWUl5OW1YQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9mcmVlbGFuY2VyYm90LnRlc3QvcHJvamVjdHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTcxODc4MDAxNzt9fQ==', 1718784342);

-- Dumping structure for table tyrostud_flbot.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tyrostud_flbot.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'John Doe', 'admin@tyrostudio.com', NULL, '$2y$12$c2uAZBXYbcoFiM0jo4uFHuF75oNWumB.DVjBxFaHQ3Xa.NFW.iN9i', 'admin', NULL, '2024-06-18 02:27:56', '2024-06-18 02:27:56');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
