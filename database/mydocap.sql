-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 02:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydocap`
--

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_12_16_063539_create_products_table', 2),
(4, '2021_01_17_064139_create_todos_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'p1', 'desc1', NULL, NULL),
(4, 'ho', 'ha', '2021-01-08 19:12:46', '2021-01-08 19:12:46'),
(5, 'ho', 'ha', '2021-01-08 22:49:59', '2021-01-08 22:49:59'),
(6, 'ho', 'ha', '2021-01-08 22:50:25', '2021-01-08 22:50:25'),
(7, 'ho', 'ha', '2021-01-08 22:50:28', '2021-01-08 22:50:28'),
(8, 'ho', 'ha', '2021-01-12 00:49:18', '2021-01-12 00:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desciption` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `desciption`, `created_at`, `updated_at`) VALUES
(1, 'sleep early', NULL, NULL),
(2, 'drink water', NULL, NULL),
(4, 'happy', '2021-01-17 00:34:13', '2021-01-17 00:34:13'),
(5, 'meditate', '2021-01-17 00:35:40', '2021-01-17 00:35:40'),
(6, 'joyful', '2021-01-17 00:56:03', '2021-01-17 00:56:03'),
(7, 'heartland', '2021-01-17 02:46:37', '2021-01-17 02:46:37'),
(8, 'eat', '2021-01-17 02:47:28', '2021-01-17 02:47:28'),
(9, 'help', '2021-01-17 02:49:20', '2021-01-17 02:49:20'),
(10, 'meditate', '2021-01-17 02:50:29', '2021-01-17 02:50:29'),
(11, 'drink', '2021-01-17 02:51:49', '2021-01-17 02:51:49'),
(12, 'drink', '2021-01-17 02:52:41', '2021-01-17 02:52:41'),
(13, 'joy', '2021-01-17 03:41:38', '2021-01-17 03:41:38'),
(14, 'pray', '2021-01-17 04:03:26', '2021-01-17 04:03:26'),
(15, 'heart', '2021-01-17 06:03:58', '2021-01-17 06:03:58'),
(16, 'pangit', '2021-01-18 07:06:40', '2021-01-18 07:06:40'),
(17, 'eat', '2021-01-18 07:23:57', '2021-01-18 07:23:57'),
(18, 'sleep', '2021-01-18 07:31:37', '2021-01-18 07:31:37'),
(19, 'deep', '2021-01-18 07:48:16', '2021-01-18 07:48:16'),
(20, 'deep', '2021-01-18 07:49:21', '2021-01-18 07:49:21'),
(21, 'pleas', '2021-01-18 07:54:57', '2021-01-18 07:54:57'),
(22, 'hoy', '2021-01-18 07:55:17', '2021-01-18 07:55:17'),
(23, 'sige na', '2021-01-18 07:55:28', '2021-01-18 07:55:28'),
(24, 'hays', '2021-01-18 08:05:11', '2021-01-18 08:05:11'),
(25, 'jogging', '2021-01-18 22:17:56', '2021-01-18 22:17:56'),
(26, 'jogging1', '2021-01-18 23:06:40', '2021-01-18 23:06:40'),
(27, 'walk', '2021-01-19 01:36:54', '2021-01-19 01:36:54'),
(28, 'talk', '2021-01-19 01:43:01', '2021-01-19 01:43:01'),
(29, 'sleep', '2021-01-19 02:32:47', '2021-01-19 02:32:47'),
(30, 'early', '2021-01-19 02:33:25', '2021-01-19 02:33:25');

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
(1, 'joy', 'bailiojoy@gmail.com', NULL, '$2y$10$DFW.viY9rvPDG1eDfKZPieRtu.MR9akmt2ZVu55J97lo4hj//CdDi', NULL, '2020-12-14 08:53:33', '2020-12-14 08:53:33'),
(4, 'man', 'man@gmail.com', NULL, '$2y$10$iXvRqgQb7Xku8LyLf28Gru5xZEd.CemkLmLn4bcy16getZTnS7n9e', NULL, '2020-12-15 19:11:30', '2020-12-15 19:11:30'),
(20, 'mayoy', 'mayggv@gmail.com', NULL, '$2y$10$YaebfGDE.ULkTn9CzJvGZ.i6bO15qhxhOmUXml4TUandy5l4MKD9u', NULL, '2021-01-08 23:19:03', '2021-01-08 23:19:03'),
(26, '123456', 'lola@gmail.com', NULL, '$2y$10$Tc1NZnu6jkYW/I1NyDrxTefsHea5kKcmTEL.BNxhnOJWro.F2XoSK', NULL, '2021-01-08 23:46:02', '2021-01-08 23:46:02'),
(27, '123456', 'lolopa@gmail.com', NULL, '$2y$10$djl.5yX6KaMBvZZAl21b5eQp0keCLDFsypnzuW6k4/xlOWo8mWlU6', NULL, '2021-01-08 23:52:13', '2021-01-08 23:52:13'),
(28, 'bebe', 'susan@gmail.com', NULL, '$2y$10$KU4COWX0MmRG6SwbZB7qW.1MXy7Sf./T2y6J5e/6DKl3g1/Iyxpzm', NULL, '2021-01-08 23:52:28', '2021-01-08 23:52:28'),
(30, 'bebe', 'susana@gmail.com', NULL, '$2y$10$GSzdXIDbfcr//XWkHEQLmO6QZAztz6lrxGnwRBRVugH.slGhg8WIu', NULL, '2021-01-08 23:53:45', '2021-01-08 23:53:45'),
(31, 'joyaxx', 'joyax@gmail.com', NULL, '$2y$10$V8gHT4Cu1BZh0JfjPuorFepC0ZEfq/7sMTfA/lRo37m9h4stFuBjy', NULL, '2021-01-09 00:01:32', '2021-01-09 00:01:32'),
(32, 'joyaxx', 'fora@gmail.com', NULL, '$2y$10$QAktIgMZvJ8x/NKt4bd7/.YcwH2gGWjHldYsbAk3SduKMxKyZ3aUa', NULL, '2021-01-09 00:14:18', '2021-01-09 00:14:18'),
(33, 'marlon', 'Marlon@gmail.com', NULL, '$2y$10$I8JjI4oKo8J1eNapP7QFDeJWJXnRxjcSJnwyRsdq6Mr1TmttCV/G2', NULL, '2021-01-09 07:57:55', '2021-01-09 07:57:55'),
(35, 'lea', 'lea@gmail.com', NULL, '$2y$10$ZnTEcAoS97kwL2FgtnYCW.K00Szx4VAhSxDYDND7JbiRGrzG9BcPi', NULL, '2021-01-09 08:26:03', '2021-01-09 08:26:03'),
(37, 'mia', 'mia@gmail.com', NULL, '$2y$10$w2xFNGfyhsGdsLqWPzU25.W4jwJZrcvy7rWaN5JSUtn5HvIZ1rhNK', NULL, '2021-01-09 08:35:48', '2021-01-09 08:35:48'),
(38, 'love', 'love@gmail.com', NULL, '$2y$10$UY553biRAJHyCZklZFZqr.kA6pEgS1wJFPlhxqKm5Mm6bu1n.wxQ.', NULL, '2021-01-09 09:47:21', '2021-01-09 09:47:21'),
(39, 'hate', 'hate@gmail.com', NULL, '$2y$10$ieWXmYckHJj4iDMXZIsPoet6dDdRnuyAhDl67ku9ue7GFmMbqzgcS', NULL, '2021-01-09 10:02:34', '2021-01-09 10:02:34'),
(40, 'hate', 'hat@gmail.com', NULL, '$2y$10$VULokffIco/Ye5I4ZJ7VSuWuZFgeXQ1ZP/sfc1VWWsoxZi6zHyCVG', NULL, '2021-01-09 10:07:18', '2021-01-09 10:07:18'),
(41, 'james', 'bond@gmail.com', NULL, '$2y$10$oaZ/x7qk/3PzG9k1f2pEQu9U7.moYnFMas3oVS8yFXhwBzyeodnB.', NULL, '2021-01-09 10:37:24', '2021-01-09 10:37:24'),
(44, 'royal', 'royal@gmail.com', NULL, '$2y$10$sL7K.8vLX4ZCBPdt1vnlW.1rfjEJl0E2cO71iCOjzJPfNi3LUVBuG', NULL, '2021-01-09 17:36:39', '2021-01-09 17:36:39'),
(45, 'royal', 'royaal@gmail.com', NULL, '$2y$10$AFSl01o0Fec23V8CPPdK0ewoP5fiz3Oby.dfSlxYComFvwhIf9ttm', NULL, '2021-01-09 17:46:26', '2021-01-09 17:46:26'),
(47, 'ano', 'ano@gmail.com', NULL, '$2y$10$yyhK7TOw7Jf56RBarKI61e4i1mkN/pq.2d.alGlCsHBLs9n1oQ4yu', NULL, '2021-01-09 17:56:48', '2021-01-09 17:56:48'),
(48, 'ui', 'yu@gmail.com', NULL, '$2y$10$0hp5Nb5tEIQf..DCF0G3hua5TjBF7jf0CFyCVYRtfMSXn0mrt3lSu', NULL, '2021-01-09 18:15:59', '2021-01-09 18:15:59'),
(53, 'i', 'ingo@gmail.com', NULL, '$2y$10$0fR.qxIcIiAS4F7eMZJEb.hZ2a9rTSU2ux1PRcHsZv8Y/DvEzxuru', NULL, '2021-01-09 21:27:06', '2021-01-09 21:27:06'),
(56, 'jubile', 'juleo@gmail.com', NULL, '$2y$10$I0xYA.TjAb9CRVI4IloLAuZmWxiPbOD7klGjcYYal26eCaG1OX7m2', NULL, '2021-01-10 00:25:36', '2021-01-10 00:25:36'),
(57, 'jubile', 'julpo@gmail.com', NULL, '$2y$10$VEZbdtWVYpTR8c4UZf20yuNvFGHx68ojBBruT8tqvV3SYq6HFU35O', NULL, '2021-01-10 00:36:42', '2021-01-10 00:36:42'),
(58, 'jubile', 'justino@gmail.com', NULL, '$2y$10$S3sKd9q7kbW5LtRIwtvCKOkZAkyMBge/vZpNuNKumZoVEKSPG/BBO', NULL, '2021-01-10 00:44:30', '2021-01-10 00:44:30'),
(59, 'jubile', 'lapasan@gmail.com', NULL, '$2y$10$jB3nv1ZHZfkcraSMy9drG.OkXqcv/Tk4zN.wnyrRk2eSSixrr54ia', NULL, '2021-01-10 00:45:14', '2021-01-10 00:45:14'),
(60, 'plol', 'agon@gmail.com', NULL, '$2y$10$ga9ELF5PYBN0liOn6bHEU.0/U2v9JQ/MnXemfyjd555620fYobM/u', NULL, '2021-01-10 00:48:36', '2021-01-10 00:48:36'),
(61, 'joy', 'joy@gmail.com', NULL, '$2y$10$6deig1P9E8uK0n5PBihlfuVBGSjdvXcndCvcKAneBhIlrUWsZLx52', NULL, '2021-01-10 02:02:40', '2021-01-10 02:02:40'),
(62, 'help', 'help@gmail.com', NULL, '$2y$10$9iOMu3lxMRodg1ZuQGUNmu6PVo.3IPjGsjx7plYR.e2sW2XQjhWPi', NULL, '2021-01-10 06:22:30', '2021-01-10 06:22:30'),
(64, 'jiy', 'yuy@gmail.com', NULL, '$2y$10$uoAxcjs04zZ8w55mlxaUAOIHjYwJYjSrQNtsmmDsxp1MWaQZO0K6m', NULL, '2021-01-12 02:02:33', '2021-01-12 02:02:33'),
(65, 'joy', 'yosa@gmail.com', NULL, '$2y$10$b8Hn8MVuYviCd8chaRH6O.Tvl8OJsFjQa4RLSF000pcMk90CW0tMq', NULL, '2021-01-12 03:35:23', '2021-01-12 03:35:23'),
(66, 'maryjoy', 'joybailio@gmail.com', NULL, '$2y$10$fZhd4bD3I8Q1xmexX9I.VeUMgpLL.JTDDJxVSTjA11tW6pNXdvPMm', NULL, '2021-01-12 04:10:47', '2021-01-12 04:10:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
