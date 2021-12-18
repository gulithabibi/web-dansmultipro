-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 10:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dans_job`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_28_043917_create_products_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapptoken', '3939aa45e3db6143b0aebce71e9432d0f533779840eb657ecf917100a303e9df', '[\"*\"]', NULL, '2021-11-28 05:35:17', '2021-11-28 05:35:17'),
(5, 'App\\Models\\User', 2, 'myapptoken', 'b43be4a6bcca0720af4c6ed8b34966a083cab04345f324a53c683bf77a9e1d6f', '[\"*\"]', NULL, '2021-12-17 18:25:58', '2021-12-17 18:25:58'),
(6, 'App\\Models\\User', 2, 'myapptoken', '7eacd44413d0ab952c0a7c7feaf009016db04348809ba3804080f96036ebc225', '[\"*\"]', NULL, '2021-12-17 18:28:36', '2021-12-17 18:28:36'),
(7, 'App\\Models\\User', 2, 'myapptoken', '0b1d29a77c333a2a111b3bab658a8f494e94898341145fe3314bd1f21b10b585', '[\"*\"]', NULL, '2021-12-17 23:51:58', '2021-12-17 23:51:58'),
(8, 'App\\Models\\User', 2, 'myapptoken', '287a02a9ca03138ac544833ca1eac3db40e73e022b7fa3285d08a6e18c50a168', '[\"*\"]', NULL, '2021-12-17 23:52:19', '2021-12-17 23:52:19'),
(9, 'App\\Models\\User', 2, 'myapptoken', 'a71a8fe65de3006878d2773d34c1dfe0aadcc6a19fe87fac02dc13799c79c977', '[\"*\"]', NULL, '2021-12-17 23:56:39', '2021-12-17 23:56:39'),
(10, 'App\\Models\\User', 2, 'myapptoken', '56edbfc950df3dcbe5bad79488a9cbea29c7593766037d5f02c28cd4c05ab4db', '[\"*\"]', NULL, '2021-12-18 00:02:15', '2021-12-18 00:02:15'),
(11, 'App\\Models\\User', 2, 'myapptoken', '98c4fb214ef42fa463c02ef5e61e7baa00af0ed03f702e04b42cad4e52cf87d1', '[\"*\"]', NULL, '2021-12-18 00:05:20', '2021-12-18 00:05:20'),
(12, 'App\\Models\\User', 2, 'myapptoken', '6474c0449541f7388e0b179068d40a96a91237f852d5ba8329df6a4d4a35f9f2', '[\"*\"]', NULL, '2021-12-18 00:09:19', '2021-12-18 00:09:19'),
(13, 'App\\Models\\User', 2, 'myapptoken', '75812820f5ecf1da6483dfe776daf1d4ff0b3fd3e4ca3a272faa3c632046adc3', '[\"*\"]', NULL, '2021-12-18 00:09:55', '2021-12-18 00:09:55'),
(14, 'App\\Models\\User', 2, 'myapptoken', '546728a824fdea585e47823593f57c3d8bdfb7d9593da041fe721bb8597d60aa', '[\"*\"]', NULL, '2021-12-18 00:10:24', '2021-12-18 00:10:24'),
(15, 'App\\Models\\User', 1, 'myapptoken', '16017d39008044adb3f53f0048b5eb9f0be68d16db8ab1107c2fc10e46c54e4f', '[\"*\"]', NULL, '2021-12-18 01:13:39', '2021-12-18 01:13:39'),
(16, 'App\\Models\\User', 1, 'myapptoken', '5f39f60b08b68d5b8e282285bd540a560048cdd34556b60f51bc2f93b6bc2414', '[\"*\"]', NULL, '2021-12-18 01:17:53', '2021-12-18 01:17:53'),
(17, 'App\\Models\\User', 1, 'myapptoken', 'fa5172a966813130096fff1c444a1243e3ce6d662b30816ef9013c577c2fa44a', '[\"*\"]', NULL, '2021-12-18 01:36:38', '2021-12-18 01:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'IPhone 12', 'iphone-12', '188.99', 'this porduct three', '2021-11-27 21:06:24', '2021-11-28 04:12:47'),
(2, 'Product three', 'product-three', '88.99', 'this porduct three', '2021-11-27 21:07:30', '2021-11-28 03:55:10'),
(3, 'Product three', 'product-three', '12.66', 'this porduct three', '2021-11-27 21:31:15', '2021-11-27 21:31:15'),
(5, 'Samsung j7plus', 'samsung-j7plus', '90.66', 'this samsung j 7 plus', '2021-11-28 05:41:10', '2021-11-28 05:41:10'),
(6, 'Samsung j7plus', 'samsung-j7plus', '90.66', 'this samsung j 7 plus', '2021-11-28 06:03:06', '2021-11-28 06:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gulit', 'gulit@gmail.com', NULL, '$2y$10$azTS1gs31GDUtUhGjHZvvesxIFIFyzy3iF9UttTQ6u5C.GX5WM5xW', NULL, '2021-11-28 05:35:17', '2021-11-28 05:35:17'),
(2, 'hany', 'hany@gmail.com', NULL, '$2y$10$xsHX6n2H/iJdvJoUtRyQKuvv4ZDZmgf.qv/8wU5WGE3BSv8ISC3P2', NULL, '2021-11-28 05:38:35', '2021-11-28 05:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
