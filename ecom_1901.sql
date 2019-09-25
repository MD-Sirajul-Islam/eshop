-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 04:08 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_1901`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Apple', 'apple-2019-07-03.jpg', 'apple', NULL, 1, '2019-07-03 12:31:55', '2019-07-03 12:31:55', NULL),
(2, 'Easy', 'easy-2019-07-03.jpg', 'easy', NULL, 1, '2019-07-03 12:32:41', '2019-07-03 12:32:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Man', 'man', 1, '2019-06-26 12:49:43', '2019-06-26 13:34:10', NULL),
(2, 'Women', 'women', 1, '2019-06-26 13:01:58', '2019-06-26 13:01:58', NULL),
(3, 'Elecrtonics', 'dell', 1, '2019-07-08 12:30:44', '2019-07-08 12:30:44', NULL),
(4, 'Kids', 'kids', 1, NULL, NULL, NULL),
(5, 'Home Aplinence', 'home0-app', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, '2019-07-10 14:02:37', '2019-07-10 14:02:37'),
(3, 3, 1, '2019-07-15 13:01:57', '2019-07-15 13:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'black', 1, NULL, NULL),
(2, 'white', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-07-10 13:35:25', '2019-07-10 13:35:25'),
(2, 1, 2, '2019-07-10 13:35:25', '2019-07-10 13:35:25'),
(3, 1, 1, '2019-07-10 14:02:37', '2019-07-10 14:02:37'),
(4, 1, 2, '2019-07-10 14:02:37', '2019-07-10 14:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_uses`
--

CREATE TABLE `contact_uses` (
  `conus_id` int(10) UNSIGNED NOT NULL,
  `conus_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_uses`
--

INSERT INTO `contact_uses` (`conus_id`, `conus_name`, `conus_email`, `conus_phone`, `conus_subject`, `conus_message`, `conus_slug`, `conus_status`, `created_at`, `updated_at`) VALUES
(1, 'Ariful Islam', 'arif@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5cd94ad4a47d2', 1, '2019-05-06 10:45:40', NULL),
(2, 'Dipu Sarkar', 'dipu@gmail.com', '01798132328', 'sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5cd94c67dc5da', 1, '2019-05-12 05:55:23', NULL),
(3, 'Dipto Ahamed', 'dipto@gmail.com', '017988132328', 'dqwdqwed qeqwewq e', 'dasd asda sdsa dasd sadsadsadasd asd', 'CON5cd94fa586a12', 1, '2019-05-13 11:06:13', NULL),
(4, 'Sujon Ahamed', 'sujanahmed0183@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'qeqeqweqwewqeqwewqewq ewqewqe qweqweqweqwe qwqwe qweqw qwe', 'CON5cdbf34068249', 1, '2019-05-15 11:08:48', NULL),
(5, 'Sujon Ahamed', 'sujanahmed0183@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'qeqeqweqwewqeqwewqewq ewqewqe qweqweqweqwe qwqwe qweqw qwe', 'CON5cdbf37f39042', 1, '2019-05-15 11:09:51', NULL),
(6, 'Sujon ahamed', 'sujanahmed0183@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'qeqwe qeqweqwe qwe qweqw', 'CON5cdbf3e8375a2', 1, '2019-05-15 11:11:36', NULL),
(7, 'Sujon ahamed', 'sujanahmed0183@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'qeqwe qeqweqwe qwe qweqw', 'CON5cdbf40d4e421', 1, '2019-05-15 11:12:13', NULL),
(8, 'Sujon ahamed', 'sujanahmed0183@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'qeqwe qeqweqwe qwe qweqw', 'CON5cdbf4dd2ea1b', 1, '2019-05-15 11:15:41', NULL),
(9, 'Dipu Sarkar', 'dipu123sharkar@gmail.com', '017988132328', 'dqwdqwed qeqwewq e', 'Dipu Good Boy.', 'CON5cdbf5328122e', 1, '2019-05-15 11:17:06', NULL),
(10, 'Nahid Hasan', 'nahidakanda58@gmail.com', '0179881325655', 'dqwdqwed qeqwewq e', 'Welcome to Programming.', 'CON5cdbf60519b46', 1, '2019-05-15 11:20:37', NULL),
(11, 'Sujon ahamed', 'sujon@gmail.com', '01982132328', 'dqwdqwed qeqwewq e', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliua Ut enim.', 'CON5d07883754e05', 1, '2019-06-17 12:31:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_17_191504_create_user_roles_table', 2),
(4, '2019_05_08_173543_create_contact_uses_table', 3),
(5, '2019_06_19_191229_create_social_media_table', 4),
(6, '2019_06_24_182742_create_categories_table', 5),
(7, '2019_07_01_184815_create_brands_table', 6),
(8, '2019_07_08_184448_create_products_table', 7),
(9, '2019_07_08_185953_create_colors_table', 8),
(10, '2019_07_08_190213_create_color_product_table', 9),
(11, '2019_07_08_190611_create_images_table', 10),
(12, '2019_07_10_191233_create_category_product_table', 11),
(13, '2019_07_15_194329_create_sliders_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `image_name`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 'casual-shirt-2019-07-155d2c7b6246d01.jpg', '1', '2019-07-15 13:10:58', '2019-07-15 13:10:58'),
(4, 'casual-shirt-2019-07-155d2c7bef011b7.jpg', '1', '2019-07-15 13:13:19', '2019-07-15 13:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT '0',
  `short_dec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_dec` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `price`, `discount`, `stock`, `sales`, `short_dec`, `long_dec`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Casual Shirt', 100.00, 10.00, 50, 0, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore agna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaec', 1, '2019-07-10 14:02:37', '2019-07-15 13:21:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_one_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_two_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_one_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_two_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `btn_one_text`, `btn_two_text`, `btn_one_url`, `btn_two_url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Best Wooden', 'Chair & Waredrobe', 'View More', 'Purchase', '#', '#', 'casual-shirt-2019-07-155d2c7b6246d01.jpg', 1, NULL, NULL),
(2, 'Lorem Ppsum', 'POPs Doller', 'Buy Now', 'See More', '#', '#', 'casual-shirt-2019-07-155d2c7b6246d01.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` int(10) UNSIGNED NOT NULL,
  `sm_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_youtube`, `sm_google`, `sm_skype`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'b', '2', 'c', '3', 1, '2019-06-19 08:00:00', '2019-06-19 13:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '---',
  `role_id` int(11) NOT NULL DEFAULT '5',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Creative Shaper', 'creative@gmail.com', '---', 1, '$2y$10$3pnSX8CHHDzr/LxKArRlJuk00yxhB3QiokscwXnJx//OqansBXSny', 'BCHIZXE87iyXQ5tuhlhjmIDlTcY3PmmzRNAL7NkpTUTsptcBTuBA4cr02zGh', '2019-04-08 06:54:18', '2019-04-08 06:54:18'),
(2, 'Tushar Imran Tushar', 'tushar@gmail.com', '01982832374372', 4, '$2y$10$RU7BYotHc.uk6boWYqnXYOnnx7e91fier4k5TXV4eGusou8IXtenW', '289LxjOG6KMqrPq4u3FNRfqjWKmom7pEzvV4uvsEzYzuq6bVfnoDRFhY6Lg2', '2019-04-15 07:15:12', '2019-04-24 13:20:24'),
(3, 'Sujon Ahamed', 'sujon@gmail.com', '---', 1, '$2y$10$Z33mNZT/o/OdjqIopslbbeNY42gr2a.DqKTAPlIwVM3N94qiSQHsS', 'KuKZd1ZJGD0iaWHzs28hzEQ2o9UaFAMv7cfP13IPxwMa8SpbPGCB8Z2hz9f7', '2019-04-15 07:15:41', '2019-04-15 07:15:41'),
(4, 'Dipto Ahamed', 'dipto@gmail.com', '---', 4, '$2y$10$rCKzWoku9YsBIBpb9tfllee0hasR1FJ.fR0sJ7l3n7BkUuRWdFgSm', 'ArOM60zS0IuO5ess3nK0DM6jgcwWD8VSVsoZvqzS1B3xhrm43Ge9R5Yo4pBQ', '2019-04-15 07:27:17', '2019-04-15 07:27:17'),
(5, 'Shoel Rana', 'shoel@gmail.com', '---', 5, '12345678', NULL, '2019-04-17 06:30:07', NULL),
(6, 'Shoel Ranaa', 'shaoel@gmail.com', '---', 1, '1234567', NULL, '2019-04-17 12:31:07', NULL),
(7, 'Ami ', 'ami@gmail.com', '---', 5, '$2y$10$zF5juHPYVsTKZZt7nrlDkeJDoInlbeotn7.Zga8QT72Ckb41wx9ma', NULL, '2019-04-17 12:34:32', NULL),
(8, 'Dipto Ahamed', 'creataive@gmail.com', '---', 3, '$2y$10$ihmsum2kEwKb0oogo77h6.QPZYn7.ud88dsM/n43coLrXlX6y72.a', NULL, '2019-04-17 12:56:07', NULL),
(9, 'Dipto Ahamed', 'creataaaaive@gmail.com', '---', 5, '$2y$10$Rpm7Le3jv8YGtHjSyO17vOP9qqEpUBanABUAIqhxLSyHjfPW3PcBa', NULL, '2019-04-17 13:00:42', NULL),
(10, 'Ariful Islam', 'crazykinaag7117@gmail.com', '---', 4, '$2y$10$nLQOLcy3ro117CmRRcBLM.2JrKf3OkyfFmmZJtLlZCOfUCKUL/7d2', NULL, '2019-04-17 13:03:07', NULL),
(11, 'Ariful Islam', 'creati2ve@gmail.com', '---', 5, '$2y$10$DWTesYYO8MqwOheYtRJHDeYOjoTiZMju18xSo81/XnLA3sFsC07nW', NULL, '2019-04-17 13:10:41', NULL),
(12, 'Sujon ahamed', 'crazykiqwqwqng7117@gmail.com', '---', 5, '$2y$10$EVaWgK5UoQQXmnX1cwAaGOkIXEKFt8W.ywyN5bwK5D571MsuRkh5G', NULL, '2019-04-17 13:11:55', NULL),
(13, 'Creative Shaper ', 'creative21@gmail.com', '---', 2, '$2y$10$VeL2Wvr2PXVPe8.sKMCw6./KUT5RindgCUVBXfNj6j.OcMiAmc.nO', NULL, '2019-04-17 13:34:29', NULL),
(14, 'Dipto Ahamed', 'creativeaaa@gmail.com', '1098772', 3, '$2y$10$DHREziVkzUgAuZOp/RT8aO4gyM1MXcbc.5BIgG9JIu4Z1R8SC4iiW', NULL, '2019-04-24 12:36:05', NULL),
(15, 'Faisal Ahamed', 'faisal@gmail.com', '017777', 5, '$2y$10$1J9ZKYjrDhlu86Bpn8bHueSuCat7QC0tZCJrrhvXmWCylu0o/0mPq', 'mLwHCy4cRrU3zzRJMh9oUWnYdNBBy3H6KAplTW5L6cASGeijwvngCB5lMdMK', '2019-04-24 12:47:48', '2019-04-24 12:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 1, '2019-04-17 01:00:00', NULL),
(2, 'Admin', 1, '2019-04-17 01:00:00', NULL),
(3, 'Author', 1, '2019-04-17 02:00:00', NULL),
(4, 'Editor', 1, '2019-04-16 23:00:00', NULL),
(5, 'Subscriber', 1, '2019-04-17 03:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_uses`
--
ALTER TABLE `contact_uses`
  ADD PRIMARY KEY (`conus_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `user_roles_role_name_unique` (`role_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_uses`
--
ALTER TABLE `contact_uses`
  MODIFY `conus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
