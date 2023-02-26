-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 10:21 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museum`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dateBorrow` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateReturn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `dateBorrow`, `dateReturn`, `name`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-03-27', '2022-03-30', 'tope', 'TRMS-76385LB', 1, '2022-03-26 03:01:43', '2022-03-26 03:01:43'),
(2, '2022-03-28', '2022-03-30', 'Sculpture', 'TRMS-66402LB', 1, '2022-03-26 09:50:10', '2022-03-26 09:50:10'),
(3, '2022-03-27', '2022-03-28', 'Sculpture', 'TRMS-31921LB', 1, '2022-03-26 15:28:14', '2022-03-26 15:28:14'),
(4, '2022-03-27', '2022-03-30', 'Sculpture', 'TRMS-1882LB', 2, '2022-03-26 15:30:55', '2022-03-26 15:30:55'),
(5, '2022-03-29', '2022-04-01', 'Mask', 'TRMS-85474LB', 5, '2022-03-28 12:13:21', '2022-03-28 12:13:21'),
(6, '2022-03-30', '2022-03-31', 'Sculpture', 'TRMS-176LB', 9, '2022-03-30 06:22:58', '2022-03-30 06:22:58');

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
(69, '2014_10_12_000000_create_users_table', 1),
(70, '2014_10_12_100000_create_password_resets_table', 1),
(71, '2019_08_19_000000_create_failed_jobs_table', 1),
(72, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(73, '2022_03_24_133804_visits', 1),
(74, '2022_03_25_100440_tourists', 1),
(75, '2022_03_25_101530_speaks', 1),
(76, '2022_03_25_102649_loans', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speaks`
--

CREATE TABLE `speaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speaks`
--

INSERT INTO `speaks` (`id`, `date`, `name`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-03-30', 'Oluwatoyin Janet Agbesua', 'TRMS-94287SCS', 1, '2022-03-26 03:01:04', '2022-03-26 03:01:04'),
(2, '2022-03-30', 'Oluwatoyin Janet Agbesua', 'TRMS-87365SCS', 1, '2022-03-26 09:49:52', '2022-03-26 09:49:52'),
(3, '2022-03-28', 'Daniel Henshaw', 'TRMS-56051SCS', 1, '2022-03-26 15:27:54', '2022-03-26 15:27:54'),
(4, '2022-03-28', 'Oluwatoyin', 'TRMS-39251SCS', 2, '2022-03-26 15:30:37', '2022-03-26 15:30:37'),
(5, '2022-03-30', 'Abiola', 'TRMS-60155SCS', 5, '2022-03-28 12:12:41', '2022-03-28 12:12:41'),
(6, '2022-03-30', 'Abiola', 'TRMS-60155SCS', 5, '2022-03-28 12:12:41', '2022-03-28 12:12:41'),
(7, '2022-03-31', 'Oluwatoyin Janet Agbesua', 'TRMS-33248SCS', 9, '2022-03-30 06:22:36', '2022-03-30 06:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `tourists`
--

CREATE TABLE `tourists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tourists`
--

INSERT INTO `tourists` (`id`, `date`, `name`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-03-26', 'Oluwatoyin Janet Agbesua', 'TRMS-11557BV', 1, '2022-03-25 19:24:42', '2022-03-25 19:24:42'),
(2, '2022-03-28', 'Daniel Henshaw', 'TRMS-97026BT', 1, '2022-03-25 19:25:41', '2022-03-25 19:25:41'),
(3, '2022-03-28', 'Oluwatoyin Janet Agbesua', 'TRMS-9335BT', 1, '2022-03-26 03:00:31', '2022-03-26 03:00:31'),
(4, '2022-03-31', 'Oluwatoyin Janet Agbesua', 'TRMS-17813BT', 1, '2022-03-26 09:49:25', '2022-03-26 09:49:25'),
(5, '2022-03-27', 'Oluwatoyin Agbesua', 'TRMS-74252BT', 1, '2022-03-26 15:27:32', '2022-03-26 15:27:32'),
(6, '2022-03-28', 'Oluwatoyin Agbesua', 'TRMS-40584BT', 2, '2022-03-26 15:29:52', '2022-03-26 15:29:52'),
(7, '2022-03-29', 'Oluwatoyin Janet Agbesua', 'TRMS-88988BT', 5, '2022-03-28 12:11:16', '2022-03-28 12:11:16'),
(8, '2022-03-31', 'Oluwatoyin Janet Agbesua', 'TRMS-92320BT', 9, '2022-03-30 06:21:57', '2022-03-30 06:21:57'),
(9, '2022-03-31', 'Daniel Henshaw', 'TRMS-82971BT', 14, '2022-03-30 06:42:35', '2022-03-30 06:42:35'),
(10, '2022-03-31', 'Oluwatoyin Janet Agbesua', 'TRMS-94154BT', 14, '2022-03-31 10:14:32', '2022-03-31 10:14:32'),
(11, '2022-03-31', 'Oluwatoyin Janet Agbesua', 'TRMS-94154BT', 14, '2022-03-31 10:15:40', '2022-03-31 10:15:40'),
(12, '2022-03-31', 'Oluwatoyin Janet Agbesua', 'TRMS-94154BT', 14, '2022-03-31 10:15:52', '2022-03-31 10:15:52'),
(13, '2022-04-25', 'Daniel Henshaw', 'TRMS-54562BT', 1, '2022-04-24 15:12:22', '2022-04-24 15:12:22'),
(14, '2022-04-25', 'Oluwatoyin Agbesua', 'TRMS-99175BT', 1, '2022-04-24 15:41:30', '2022-04-24 15:41:30'),
(15, '2022-04-28', 'Oluwatoyin Agbesua', 'TRMS-91911BT', 1, '2022-04-27 02:31:17', '2022-04-27 02:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phoneNumber`, `google_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Oluwatoyin Janet Agbesua', '07068494903', NULL, 'agbesuaoluwatoyin96@gmail.com', NULL, '$2y$10$fBZrbUX7BsEf7rm25GZJtutnnIJVfLxgyIP/L.lJf/v6TP7FiKVJq', 'BQM0ijC7P74dPKUryx3x1k6q7Zk8Lf0NkdrQAbBdRbsyA0euHDShCylsgjH7', '2022-03-25 19:21:48', '2022-04-27 02:21:54'),
(2, 'Abiola', '07068494903', NULL, 'abiola@gmail.com', NULL, '$2y$10$GJX1huEAC7lRCzrBBHAlfu8FENLecOY3olTWXPWoZKSxEfhaIdkRK', '6GRr347DBrbxoIL4FwMUxZAyUE6BrahWQDJRw5uxbAPNqEwgJM7TMuWe31sS', '2022-03-26 15:29:16', '2022-03-26 15:29:16'),
(3, 'Oluwatoyin Agbesua', '07068494903', NULL, 'janet@gmail.com', NULL, '$2y$10$7wJsaBu41XOxgBUeZTR.xuxZGDIJ0vOYbhuoVS/Hsb2zTo53Djo5u', NULL, '2022-03-28 12:00:47', '2022-03-28 12:00:47'),
(4, 'Oluwatoyin Agbesua', '07068494903', NULL, 'toyin@gmail.com', NULL, '$2y$10$cL2buuIvf3sdKmWIoqcVmOowIIPu.Bw9o5OwaulTDwcWbhEa7kJCa', 'nYziMijA0f1BgDaxIvirY7xvBQGRsh6Ae2cNbCRMfxxcnbTql6PrvzocdBuB', '2022-03-28 12:02:35', '2022-03-28 12:02:35'),
(5, 'Oluwatoyin Janet Agbesua', '07068494903', NULL, 'seun@gmail.com', NULL, '$2y$10$psrOwy0tVlOKwsDdifhxSePmYfeFrrot.0j8mHBVBVpKBA.xIS4gS', '7uipN7vNOpdBcHjmAjqIWSK1QUMNhyTSSvaQBcuoSfliTUrHiKFpm2TPelrg', '2022-03-28 12:10:06', '2022-03-28 12:10:06'),
(6, 'Ifeoluwa', '07068494903', NULL, 'ife@gmail', NULL, '$2y$10$YrgI8Jx6dGBboXHpRQTj3.JVpG/o.9fb7VCLtBqX.HBzo5gJc7U7e', NULL, '2022-03-28 12:26:20', '2022-03-28 12:26:20'),
(7, 'Agbesua', '07068494903', NULL, 'tope@gmail.com', NULL, '$2y$10$hAvDqLlrhwv6xKXHB4SiGu/qQq0kbG7H8KfKQQWTz17/5yHI2lAIy', NULL, '2022-03-28 12:30:12', '2022-03-28 12:30:12'),
(8, 'Janet', '07068494903', NULL, 'agbesua@gmail.com', NULL, '$2y$10$D4EJ7dExx9C/Znqc6sOYz./Dr0aAVR9cC5/0bfFl.mQkcL.kgTcum', NULL, '2022-03-30 06:19:04', '2022-03-30 06:19:04'),
(9, 'Bolanle', '07068494903', NULL, 'bola@gmail.com', NULL, '$2y$10$dYu2M6e7QBs/6bP.3Yxkx.HSLNct0TETOFSVq2gVyMFv5d/umMHCe', 'C32H7wcugmVL4wx1c6uGnvOARgDGbnwvg5yHvHlJ8gr18egILLhrgGpTozeK', '2022-03-30 06:21:06', '2022-03-30 06:21:06'),
(10, 'sile', '07068494903', NULL, 'sile@gmail.com', NULL, '$2y$10$G/HmjQPFW3a2drIHVi6BUeBceEfFHhx.aMx2VqTJPu91G4XZ0O2nq', '3mZVGkBOsx3Zk7XgJuDcz2eZwjpwb19TV9oXpJ0LgRr8Zxt5E9hfTLThgovI', '2022-03-30 06:28:43', '2022-03-30 06:28:43'),
(11, 'kunle', '07068494903', NULL, 'kunle@gmail.com', NULL, '$2y$10$6B9pWhGZwMXQtAajjXgLhe70JUqmpFsG0rF.TQUAWtf2Roz.LTxW2', NULL, '2022-03-30 06:36:20', '2022-03-30 06:36:20'),
(12, 'sayo', '07068494903', NULL, 'ssayo@gmail.com', NULL, '$2y$10$PxLEE2sJVVu9HTOhRGU1QOH4QVBaXvsy0iqtqZUyPnU2z57uEj5Me', NULL, '2022-03-30 06:37:49', '2022-03-30 06:37:49'),
(13, 'sayo', '07068494903', NULL, 'sayo@gmail.com', NULL, '$2y$10$CBstaXpLguKyp.PHB74xAuHduqtBERsuRcWTpAzN7Gvj.UYXb3ONK', NULL, '2022-03-30 06:38:22', '2022-03-30 06:38:22'),
(14, 'joke', '07068494903', NULL, 'joke@gmail.com', NULL, '$2y$10$R2SSAIBTx6V9drkfREyC...9wc9HpdFtT5xnsmNziJ8foJevgbPYq', '7GMdNYA4rO2uvqAbkcBUBcVbxkJiOIaA7ZL7ykSPh2A0KSuWt6sKZ67xUeE6', '2022-03-30 06:41:53', '2022-03-30 06:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `date`, `number`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2022-03-26', 'TAG-1', 'TRMS-52292BV', 1, '2022-03-25 19:22:16', '2022-03-25 19:22:16'),
(2, '2022-03-26', 'TAG-1', 'TRMS-52292BV', 1, '2022-03-25 19:22:37', '2022-03-25 19:22:37'),
(3, '2022-03-30', 'TAG-1', 'TRMS-33842BV', 1, '2022-03-25 19:22:50', '2022-03-25 19:22:50'),
(4, '2022-03-30', 'TAG-1', 'TRMS-90128BV', 1, '2022-03-26 02:58:32', '2022-03-26 02:58:32'),
(5, '2022-03-27', 'TAG-1', 'TRMS-8990BV', 1, '2022-03-26 08:57:37', '2022-03-26 08:57:37'),
(6, '2022-03-27', 'TAG-1', 'TRMS-40327BV', 1, '2022-03-26 09:15:59', '2022-03-26 09:15:59'),
(7, '2022-03-27', 'TAG-1', 'TRMS-40327BV', 1, '2022-03-26 09:16:26', '2022-03-26 09:16:26'),
(8, '2022-03-27', 'TAG-1', 'TRMS-4216BV', 1, '2022-03-26 09:17:08', '2022-03-26 09:17:08'),
(9, '2022-03-28', 'TAG-1', 'TRMS-97182BV', 1, '2022-03-26 09:49:06', '2022-03-26 09:49:06'),
(10, '2022-03-27', 'TAG-1', 'TRMS-29233BV', 1, '2022-03-26 15:27:00', '2022-03-26 15:27:00'),
(11, '2022-03-29', 'TAG-2', 'TRMS-94650BV', 2, '2022-03-26 15:30:14', '2022-03-26 15:30:14'),
(12, '2022-03-29', 'TAG-5', 'TRMS-95021BV', 5, '2022-03-28 12:12:00', '2022-03-28 12:12:00'),
(13, '2022-03-31', 'TAG-9', 'TRMS-38834BV', 9, '2022-03-30 06:22:15', '2022-03-30 06:22:15');

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
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `speaks`
--
ALTER TABLE `speaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourists`
--
ALTER TABLE `tourists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speaks`
--
ALTER TABLE `speaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tourists`
--
ALTER TABLE `tourists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
