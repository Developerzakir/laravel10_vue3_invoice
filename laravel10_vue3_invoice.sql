-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 06:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel10_vue3_invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `key`, `prefix`, `value`, `created_at`, `updated_at`) VALUES
(1, 'invoice', 'INV-', '20000', '2023-09-20 23:26:55', '2023-09-20 23:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Kyle Green', 'Dixie Glover MD', 'nathanial.padberg@hansen.com', '27332 Damaris Villages Apt. 514\nLake Samantatown, MD 40910-8905', '2023-09-20 23:43:45', '2023-09-20 23:43:45'),
(2, 'Audrey Rolfson', 'Reginald Eichmann', 'bernie.parker@wuckert.com', '87832 Carley Trace\nSouth Buddy, ID 96920', '2023-09-20 23:43:45', '2023-09-20 23:43:45'),
(3, 'Tillman Streich DDS', 'Miss Susie Herman', 'hills.halle@hotmail.com', '41293 Pfannerstill Pine Suite 914\nJedidiahfort, IL 35865', '2023-09-20 23:43:45', '2023-09-20 23:43:45'),
(4, 'Ashlee Durgan', 'Mylene Schuppe PhD', 'xbartell@bartoletti.com', '46064 Hansen Via Apt. 842\nKihnview, VT 12589', '2023-09-20 23:43:45', '2023-09-20 23:43:45'),
(5, 'Kelton Macejkovic', 'Braxton Mohr', 'anissa.jast@harber.com', '1498 Rempel Harbor\nJefferyfort, AL 58530-2232', '2023-09-20 23:43:45', '2023-09-20 23:43:45');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `terms_and_conditions` text NOT NULL,
  `sub_total` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `number`, `customer_id`, `date`, `due_date`, `reference`, `terms_and_conditions`, `sub_total`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, '820', 5, '2002-04-11', '1990-10-06', 'REF-308', 'Dignissimos quia quisquam velit ut est. Et quidem rerum maiores fuga odit. Consequatur quibusdam aut unde ea laudantium repudiandae reiciendis repellat.', 956, 97, 1089, '2023-09-20 23:58:04', '2023-09-20 23:58:04'),
(2, '966', 4, '2012-11-12', '1974-03-21', 'REF-286', 'Sapiente quia blanditiis aut iure. Voluptas ea velit distinctio.', 621, 75, 498, '2023-09-20 23:58:04', '2023-09-20 23:58:04'),
(3, '252', 2, '2000-05-22', '2004-07-31', 'REF-60', 'Repellat sed voluptatibus minus id. Minima ipsam ut ut eum ut unde ut sapiente.', 460, 35, 836, '2023-09-20 23:58:04', '2023-09-20 23:58:04'),
(4, '491', 1, '1997-09-27', '1972-03-07', 'REF-70', 'Cupiditate commodi et est voluptas excepturi dicta. Dolore ea odit consectetur aut.', 454, 72, 1642, '2023-09-20 23:58:04', '2023-09-20 23:58:04'),
(5, '216', 3, '2012-11-23', '1976-06-20', 'REF-206', 'Dolore harum dolor dolorem animi magnam dolorem. Et nemo laboriosam nihil incidunt modi est quia. Laborum hic iusto mollitia minus consequuntur.', 706, 90, 261, '2023-09-20 23:58:04', '2023-09-20 23:58:04'),
(6, 'INV-20006', 4, '2023-09-22', '2023-09-28', 'dwewew', 'Default Terms and conditions', 1752, 20, 1732, '2023-09-22 12:20:29', '2023-09-22 12:20:29'),
(7, 'INV-20007', 1, '2023-09-22', '2023-09-30', 'zakirbd', 'Default Terms and conditions', 1698, 30, 1668, '2023-09-22 12:24:55', '2023-09-22 12:24:55'),
(8, 'INV-20008', 2, '2023-09-22', '2023-09-29', 'fd ff d', 'Default Terms and conditions', 2547, 40, 2507, '2023-09-22 12:29:05', '2023-09-22 12:29:05'),
(9, 'INV-20009', 3, '2023-09-22', '2023-09-28', 'null', 'Default Terms and conditions', 606, 10, 596, '2023-09-22 12:30:08', '2023-09-22 12:30:08'),
(10, 'INV-20010', 5, '2023-09-22', '2023-09-26', 'rwe wr', 'Default Terms and conditions', 1108, 50, 1058, '2023-09-22 12:31:08', '2023-09-22 12:31:08'),
(11, 'INV-20011', 3, '2023-09-23', '2023-09-29', 'dddd', 'Default Terms and conditions', 2628, 10, 2618, '2023-09-22 22:50:12', '2023-09-22 22:50:12'),
(12, 'INV-20012', 4, '2023-09-23', '2023-09-30', 'dsgsjfg', 'Default Terms and conditions', 1818, 30, 1788, '2023-09-23 09:32:45', '2023-09-23 09:32:45'),
(13, 'INV-20013', 2, '2023-09-25', '2023-09-29', 'dddddd', 'Default Terms and conditions', 3504, 20, 3484, '2023-09-25 09:44:04', '2023-09-25 09:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 459, 97, 4202, 5, '2023-09-21 00:04:44', '2023-09-21 00:04:44'),
(2, 346, 30, 807, 2, '2023-09-21 00:04:44', '2023-09-21 00:04:44'),
(3, 265, 50, 3402, 4, '2023-09-21 00:04:44', '2023-09-21 00:04:44'),
(4, 890, 58, 4391, 2, '2023-09-21 00:04:44', '2023-09-21 00:04:44'),
(5, 299, 11, 4995, 1, '2023-09-21 00:04:44', '2023-09-21 00:04:44'),
(6, 6, 10, 876, 2, '2023-09-22 12:20:29', '2023-09-22 12:20:29'),
(7, 7, 8, 849, 2, '2023-09-22 12:24:55', '2023-09-22 12:24:55'),
(8, 8, 8, 849, 3, '2023-09-22 12:29:05', '2023-09-22 12:29:05'),
(9, 9, 9, 606, 1, '2023-09-22 12:30:08', '2023-09-22 12:30:08'),
(11, 11, 10, 876, 3, '2023-09-22 22:50:12', '2023-09-22 22:50:12'),
(13, 13, 10, 876, 4, '2023-09-25 09:44:04', '2023-09-25 09:44:04');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_21_051921_create_counters_table', 1),
(6, '2023_09_21_052747_create_products_table', 2),
(7, '2023_09_21_053616_create_customers_table', 3),
(8, '2023_09_21_054429_create_invoices_table', 4),
(9, '2023_09_21_055908_create_invoice_items_table', 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_code`, `description`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 'IC-100022', 'Name Of Product434', 988, '2023-09-20 23:35:23', '2023-09-20 23:35:23'),
(2, 'IC-100067', 'Name Of Product315', 855, '2023-09-20 23:35:23', '2023-09-20 23:35:23'),
(3, 'IC-100046', 'Name Of Product263', 848, '2023-09-20 23:35:23', '2023-09-20 23:35:23'),
(4, 'IC-100098', 'Name Of Product394', 359, '2023-09-20 23:35:23', '2023-09-20 23:35:23'),
(5, 'IC-100031', 'Name Of Product310', 587, '2023-09-20 23:35:23', '2023-09-20 23:35:23'),
(6, 'IC-100079', 'Name Of Product190', 855, '2023-09-20 23:41:34', '2023-09-20 23:41:34'),
(7, 'IC-100070', 'Name Of Product270', 277, '2023-09-20 23:41:34', '2023-09-20 23:41:34'),
(8, 'IC-100025', 'Name Of Product184', 849, '2023-09-20 23:41:34', '2023-09-20 23:41:34'),
(9, 'IC-100028', 'Name Of Product410', 606, '2023-09-20 23:41:34', '2023-09-20 23:41:34'),
(10, 'IC-100016', 'Name Of Product16', 876, '2023-09-20 23:41:34', '2023-09-20 23:41:34');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `counters_key_unique` (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_number_unique` (`number`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_item_code_unique` (`item_code`);

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
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
