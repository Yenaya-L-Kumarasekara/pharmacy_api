-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 12, 2024 at 05:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wireapps`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `category_type` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcategory`, `category_type`, `created_at`, `updated_at`) VALUES
(1, 'Cream', '2024-05-09 15:00:56', '2024-05-09 15:00:56'),
(2, 'Tablet', '2024-05-09 16:38:26', '2024-05-09 16:38:26'),
(3, 'Category A', '2024-05-10 09:54:56', '2024-05-10 09:54:56'),
(4, 'Category B', '2024-05-10 09:54:56', '2024-05-10 09:54:56'),
(5, 'Category C', '2024-05-10 09:54:56', '2024-05-10 09:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Yenu', 'livi', '123456789', 'jhdusgfg@gmail.com', '12,sdhsh,dbsg', '2024-05-09 18:04:59', '2024-05-10 06:56:34', NULL),
(3, 'John', 'Doe', '1234567890', 'john@example.com', '123 Main St', '2024-05-10 09:40:09', '2024-05-10 09:40:09', NULL),
(4, 'Jane', 'Doe', '0987654321', 'jane@example.com', '456 Elm St', '2024-05-10 09:40:09', '2024-05-10 09:40:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
CREATE TABLE IF NOT EXISTS `medication` (
  `idmedication` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `buying_price` varchar(45) DEFAULT NULL,
  `selling_price` varchar(45) DEFAULT NULL,
  `total_price` varchar(45) NOT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `lot_number` varchar(45) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `category_idcategory` int(11) NOT NULL,
  PRIMARY KEY (`idmedication`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`idmedication`, `name`, `description`, `quantity`, `buying_price`, `selling_price`, `total_price`, `discount`, `lot_number`, `expiry_date`, `manufacture_date`, `created_at`, `updated_at`, `deleted_at`, `category_idcategory`) VALUES
(6, 'Panadine', 'Panadine 10mg', 100, '20', '20', '2000', NULL, 'Lot01', '2025-12-12', '2024-02-12', '2024-05-10 08:02:26', '2024-05-10 08:05:34', NULL, 2),
(7, 'Panadineasdscss', 'Panadine 10mg', 20, '15', '20', '300', NULL, 'Lot01', '2025-12-12', '2024-02-12', '2024-05-10 08:06:02', '2024-05-10 08:06:18', '2024-05-10 08:06:18', 2),
(8, 'Medicine A', 'Description for Medicine A', 100, '10.5', '15', '1050', '0', 'ABC123', '2024-12-31', '2024-01-01', '2024-05-10 09:50:24', '2024-05-10 09:50:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_05_09_104755_create_sessions_table', 1),
(2, '2024_05_09_145057_create_oauth_auth_codes_table', 2),
(3, '2024_05_09_145058_create_oauth_access_tokens_table', 2),
(4, '2024_05_09_145059_create_oauth_refresh_tokens_table', 2),
(5, '2024_05_09_145100_create_oauth_clients_table', 2),
(6, '2024_05_09_145101_create_oauth_personal_access_clients_table', 2),
(7, '2024_05_10_084130_create_sessions_table', 3),
(8, '2024_05_10_090043_create_oauth_auth_codes_table', 4),
(9, '2024_05_10_090044_create_oauth_access_tokens_table', 4),
(10, '2024_05_10_090045_create_oauth_refresh_tokens_table', 4),
(11, '2024_05_10_090046_create_oauth_clients_table', 4),
(12, '2024_05_10_090047_create_oauth_personal_access_clients_table', 4),
(13, '2024_05_10_090133_create_sessions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4dbeff5dd88fb9a54ab29f13fbf167b2817d2fb72a90fac0b8d6b75745d954e5e0e62943f7facca5', 5, 1, 'YourAppNameToken', '[]', 0, '2024-05-10 03:31:43', '2024-05-10 03:31:43', '2025-05-10 09:01:43'),
('8ce90b7e8b65d6d0b5fdd1720287154e7e42492fb6e4876ee0a78e1b325bee6d7ae3064c13a5fd7a', 5, 1, 'YourAppNameToken', '[]', 0, '2024-05-10 03:32:31', '2024-05-10 03:32:31', '2025-05-10 09:02:31'),
('1ccbbf1dad0dd262f13091810655fa93311dd43d59520be18494f4b870efc350c012b2d44a078b47', 5, 1, 'YourAppNameToken', '[]', 0, '2024-05-10 03:34:01', '2024-05-10 03:34:01', '2025-05-10 09:04:01'),
('e86190cbd293300a1aff94d0130d5fccb2d9da46d93158a209d71b4f5f7747e4b4ccbb2b5b672ab3', 5, 1, 'YourAppNameToken', '[]', 0, '2024-05-10 04:36:37', '2024-05-10 04:36:38', '2025-05-10 10:06:37'),
('a9c8f18052bca7da141c9c43aaf6f5c213d4b8b65b2b832404f8bf05810ff4572d810b5b0e5b27cb', 5, 1, 'YourAppNameToken', '[]', 0, '2024-05-10 04:36:47', '2024-05-10 04:36:47', '2025-05-10 10:06:47'),
('ce2a274e3496a7fe8511d06ba4f0da2666c1cf7c4729286abe731dae79154df7096661599ec1d87b', 6, 1, 'YourAppNameToken', '[]', 1, '2024-05-10 04:40:29', '2024-05-10 04:45:58', '2025-05-10 10:10:29'),
('8830083b19d2a2fb9ed769be21e9585557c56f3bcff84347fb7db1d32527138acf76497fa05ccbea', 6, 1, 'YourAppNameToken', '[]', 1, '2024-05-10 04:46:19', '2024-05-10 04:46:26', '2025-05-10 10:16:19'),
('b204b314f04860ff1e3118d05251d2ceeda27be6ade99e538aa42798b5833734f7228507c0eff10b', 6, 1, 'YourAppNameToken', '[]', 0, '2024-05-10 04:46:44', '2024-05-10 04:46:44', '2025-05-10 10:16:44'),
('7700d908048090876927a931095300fe3c0327e046eccbed50580131c9f3b52296f43cbb3cc44c01', 6, 1, 'YourAppNameToken', '[]', 1, '2024-05-10 04:47:07', '2024-05-10 04:47:15', '2025-05-10 10:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '0NwKpF61scjj1LzeI1zEht7bL6JANV5TtPoyE551', NULL, 'http://localhost', 1, 0, 0, '2024-05-10 03:30:48', '2024-05-10 03:30:48'),
(2, NULL, 'Laravel Password Grant Client', 'Do9Vjcv4zw0uTcH0WLKx3CG06GlLlzzqV0y90zUe', 'users', 'http://localhost', 0, 1, 0, '2024-05-10 03:30:48', '2024-05-10 03:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-10 03:30:48', '2024-05-10 03:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(5, 'maduka', 'madukadila', 'maduka@gmail.com', 'Cashier', '$2y$12$hCXjGF5ByuJfp6HASKz.ne0KtY3awzlgJZsVJSmP4xoYdqbrUqDUm', '2024-05-10 02:57:44', '2024-05-10 02:57:44'),
(6, 'yenaya', 'yenaya123', 'iresha@gmail.com', 'Owner', '$2y$12$1k1PIP8XxIZDPDKiMOeRNO1x3d1mXrvm5cSdf7ssip/DMVzTwU8uW', '2024-05-10 04:39:26', '2024-05-10 04:39:26'),
(4, 'Yenaya', 'yenaya', 'yenaya@gmail.com', 'Owner', '$2y$12$V83qYK91T83vI0Y2H1Asq.Dx52W7QigEjstbKnE20WODGaobIF1nK', '2024-05-09 06:44:48', '2024-05-09 06:44:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
