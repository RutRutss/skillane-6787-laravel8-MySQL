-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 11:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_hide` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `tel`, `email`, `is_hide`, `created_at`, `updated_at`) VALUES
(5, 'Company E', '0567890123', 'contact@companye.com', 1, '2024-11-14 16:13:03', '2024-11-24 01:18:11'),
(6, 'Company F', '0678901234', 'contact@companyf.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:59:39'),
(7, 'Company G', '0789012345', 'contact@companyg.com', 1, '2024-11-14 16:13:03', '2024-11-24 01:18:12'),
(8, 'Company H', '0890123456', 'contact@companyh.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:47'),
(9, 'Company I', '0901234567', 'contact@companyi.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:48'),
(10, 'Company J', '0122345678', 'contact@companyj.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:48'),
(11, 'Company K', '0233456789', 'contact@companyk.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:49'),
(12, 'Company L', '0344567890', 'contact@companyl.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:50'),
(13, 'Company M', '0455678901', 'contact@companym.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:50'),
(14, 'Company N', '0566789012', 'contact@companyn.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:51'),
(15, 'Company O', '0677890123', 'contact@companyo.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:51'),
(16, 'Company P', '0788901234', 'contact@companyp.com', 0, '2024-11-14 16:13:03', '2024-11-23 21:38:52'),
(19, 'Company S', '0123456780', 'contact@companys.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(20, 'Company T', '0234567891', 'contact@companyt.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(21, 'Company U', '0345678902', 'contact@companyu.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(22, 'Company V', '0456789013', 'contact@companyv.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(23, 'Company W', '0567890124', 'contact@companyw.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(24, 'Company X', '0678901235', 'contact@companyx.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(25, 'Company Y', '0789012346', 'contact@companyy.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(26, 'Company Z', '0890123457', 'contact@companyz.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(27, 'Company AA', '0901234568', 'contact@companyaa.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(28, 'Company AB', '0122345679', 'contact@companyab.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(29, 'Company AC', '0233456790', 'contact@companyac.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(30, 'Company AD', '0344567891', 'contact@companyad.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(31, 'Company AE', '0455678902', 'contact@companyae.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(32, 'Company AF', '0566789013', 'contact@companyaf.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(33, 'Company AG', '0677890124', 'contact@companyag.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(34, 'Company AH', '0788901235', 'contact@companyah.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(35, 'Company AI', '0899012346', 'contact@companyai.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(36, 'Company AJ', '0900123457', 'contact@companyaj.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(37, 'Company AK', '0123456781', 'contact@companyak.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(38, 'Company AL', '0234567892', 'contact@companyal.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(39, 'Company AM', '0345678903', 'contact@companyam.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(40, 'Company AN', '0456789014', 'contact@companyan.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(41, 'Company AO', '0567890125', 'contact@companyao.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(42, 'Company AP', '0678901236', 'contact@companyap.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(43, 'Company AQ', '0789012347', 'contact@companyaq.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(44, 'Company AR', '0890123458', 'contact@companyar.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(45, 'Company AS', '0901234569', 'contact@companyas.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(46, 'Company AT', '0122345680', 'contact@companyat.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(47, 'Company AU', '0233456791', 'contact@companyau.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(48, 'Company AV', '0344567892', 'contact@companyav.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(49, 'Company AW', '0455678903', 'contact@companyaw.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(50, 'Company AX', '0566789014', 'contact@companyax.com', 0, '2024-11-14 16:13:03', '2024-11-14 16:13:03'),
(51, 'apple', '01111111111', 'apple@mail.com', 0, '2024-11-17 02:48:57', '2024-11-17 02:48:57');

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2024_11_10_105225_create_companies_table', 1),
(20, '2024_11_10_105309_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `gtin` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `weight_gross` double(8,2) NOT NULL,
  `weight_net` double(8,2) NOT NULL,
  `weight_unit` varchar(255) NOT NULL,
  `is_hide` tinyint(1) NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `gtin`, `desc`, `weight_gross`, `weight_net`, `weight_unit`, `is_hide`, `company_id`, `created_at`, `updated_at`) VALUES
(6, 'Som', 'https://picsum.photos/200', '123456789017', 'Description of Som', 20.00, 18.50, 'kg', 0, 6, '2024-11-14 16:16:30', '2024-11-24 02:58:37'),
(7, 'Product 7', 'https://picsum.photos/200/300', '123456789018', 'Description of Product 7', 11.00, 10.00, 'kg', 1, 7, '2024-11-14 16:16:30', '2024-11-24 01:18:12'),
(8, 'Product 8', 'https://picsum.photos/200/300', '123456789019', 'Description of Product 8', 22.00, 21.00, 'kg', 1, 8, '2024-11-14 16:16:30', '2024-11-24 01:19:03'),
(9, 'Product 9', 'https://picsum.photos/200/300', '123456789020', 'Description of Product 9', 19.50, 18.00, 'kg', 0, 9, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(10, 'Product 10', 'https://picsum.photos/200/300', '123456789021', 'Description of Product 10', 14.00, 13.00, 'kg', 0, 10, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(11, 'Product 11', 'https://picsum.photos/200/300', '123456789022', 'Description of Product 11', 13.50, 12.50, 'kg', 0, 11, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(12, 'Product 12', 'https://picsum.photos/200/300', '123456789023', 'Description of Product 12', 16.00, 14.50, 'kg', 0, 12, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(13, 'Product 13', 'https://picsum.photos/200/300', '123456789024', 'Description of Product 13', 17.50, 16.00, 'kg', 0, 13, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(14, 'Product 14', 'https://picsum.photos/200/300', '123456789025', 'Description of Product 14', 14.50, 13.00, 'kg', 0, 14, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(15, 'Product 15', 'https://picsum.photos/200/300', '123456789026', 'Description of Product 15', 23.00, 21.50, 'kg', 0, 15, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(16, 'Product 16', 'https://picsum.photos/200/300', '123456789027', 'Description of Product 16', 24.00, 22.00, 'kg', 0, 16, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(19, 'Product 19', 'https://picsum.photos/200/300', '123456789030', 'Description of Product 19', 18.00, 16.50, 'kg', 0, 19, '2024-11-14 16:16:30', '2024-11-23 21:24:28'),
(20, 'Product 20', 'https://picsum.photos/200/300', '123456789031', 'Description of Product 20', 25.00, 23.50, 'kg', 0, 20, '2024-11-14 16:16:30', '2024-11-23 21:30:44'),
(21, 'Product 21', 'https://picsum.photos/200/300', '123456789032', 'Description of Product 21', 17.00, 15.50, 'kg', 0, 21, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(22, 'Product 22', 'https://picsum.photos/200/300', '123456789033', 'Description of Product 22', 15.50, 14.00, 'kg', 0, 22, '2024-11-14 16:16:30', '2024-11-23 21:22:16'),
(23, 'Product 23', 'https://picsum.photos/200/300', '123456789034', 'Description of Product 23', 19.00, 17.50, 'kg', 0, 23, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(24, 'Product 24', 'https://picsum.photos/200/300', '123456789035', 'Description of Product 24', 21.00, 19.50, 'kg', 0, 24, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(25, 'Product 25', 'https://picsum.photos/200/300', '123456789036', 'Description of Product 25', 22.50, 21.00, 'kg', 0, 25, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(26, 'Product 26', 'https://picsum.photos/200/300', '123456789037', 'Description of Product 26', 24.50, 23.00, 'kg', 0, 26, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(27, 'Product 27', 'https://picsum.photos/200/300', '123456789038', 'Description of Product 27', 19.00, 17.50, 'kg', 0, 27, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(28, 'Product 28', 'https://picsum.photos/200/300', '123456789039', 'Description of Product 28', 20.00, 18.50, 'kg', 0, 28, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(29, 'Product 29', 'https://picsum.photos/200/300', '123456789040', 'Description of Product 29', 25.00, 23.50, 'kg', 0, 29, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(30, 'Product 30', 'https://picsum.photos/200/300', '123456789041', 'Description of Product 30', 18.00, 16.50, 'kg', 0, 30, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(31, 'Product 31', 'https://picsum.photos/200/300', '123456789042', 'Description of Product 31', 12.00, 10.50, 'kg', 0, 31, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(32, 'Product 32', 'https://picsum.photos/200/300', '123456789043', 'Description of Product 32', 14.50, 13.00, 'kg', 0, 32, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(33, 'Product 33', 'https://picsum.photos/200/300', '123456789044', 'Description of Product 33', 15.00, 13.50, 'kg', 0, 33, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(34, 'Product 34', 'https://picsum.photos/200/300', '123456789045', 'Description of Product 34', 11.00, 9.50, 'kg', 0, 34, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(35, 'Product 35', 'https://picsum.photos/200/300', '123456789046', 'Description of Product 35', 16.50, 15.00, 'kg', 0, 35, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(36, 'Product 36', 'https://picsum.photos/200/300', '123456789047', 'Description of Product 36', 17.00, 15.50, 'kg', 0, 36, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(37, 'Product 37', 'https://picsum.photos/200/300', '123456789048', 'Description of Product 37', 12.50, 11.00, 'kg', 0, 37, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(38, 'Product 38', 'https://picsum.photos/200/300', '123456789049', 'Description of Product 38', 13.00, 12.00, 'kg', 0, 38, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(39, 'Product 39', 'https://picsum.photos/200/300', '123456789050', 'Description of Product 39', 16.00, 14.50, 'kg', 0, 39, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(40, 'Product 40', 'https://picsum.photos/200/300', '123456789051', 'Description of Product 40', 18.50, 17.00, 'kg', 0, 40, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(41, 'Product 41', 'https://picsum.photos/200/300', '123456789052', 'Description of Product 41', 14.00, 12.50, 'kg', 0, 41, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(42, 'Product 42', 'https://picsum.photos/200/300', '123456789053', 'Description of Product 42', 15.50, 14.00, 'kg', 0, 42, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(43, 'Product 43', 'https://picsum.photos/200/300', '123456789054', 'Description of Product 43', 16.00, 14.00, 'kg', 0, 43, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(44, 'Product 44', 'https://picsum.photos/200/300', '123456789055', 'Description of Product 44', 13.50, 12.00, 'kg', 0, 44, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(45, 'Product 45', 'https://picsum.photos/200/300', '123456789056', 'Description of Product 45', 19.50, 18.00, 'kg', 0, 45, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(46, 'Product 46', 'https://picsum.photos/200/300', '123456789057', 'Description of Product 46', 18.00, 16.00, 'kg', 0, 46, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(47, 'Product 47', 'https://picsum.photos/200/300', '123456789058', 'Description of Product 47', 17.00, 15.00, 'kg', 0, 47, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(48, 'Product 48', 'https://picsum.photos/200/300', '123456789059', 'Description of Product 48', 16.00, 14.50, 'kg', 0, 48, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(49, 'Product 49', 'https://picsum.photos/200/300', '123456789060', 'Description of Product 49', 15.00, 13.50, 'kg', 0, 49, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(50, 'Product 50', 'https://picsum.photos/200/300', '123456789061', 'Description of Product 50', 20.00, 18.50, 'kg', 0, 50, '2024-11-14 16:16:30', '2024-11-14 16:16:30'),
(56, 'asdfasdf', 'https://picsum.photos/200', '3265464', 'asdfasdf', 2.00, 3.00, 'k', 1, 5, '2024-11-24 01:49:23', '2024-11-24 01:49:23'),
(57, 'yturtryu', 'https://picsum.photos/200', 'rtyurtyurtyu', '65465465', 3.00, 5.00, 'k', 1, 12, '2024-11-24 01:49:54', '2024-11-24 01:49:54');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', NULL, '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL),
(3, 'admin2', 'admin2@mail.com', NULL, 'c84258e9c39059a89ab77d846ddab909', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_company_id_foreign` (`company_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
