-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 27, 2023 lúc 02:38 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `watchdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
(24, 'Casio', NULL, 'Casio_logo.svg.png', 'Durable Good quality', '2023-08-25 11:23:05', '2023-08-25 19:10:25'),
(25, 'Apple', NULL, 'apple-emblem.jpeg', 'Modern, luxurious', '2023-08-25 11:24:33', '2023-08-25 11:24:33'),
(26, 'Rolex', NULL, 'Logo-Rolex.jpg', 'Elegant, Polite', '2023-08-25 11:25:58', '2023-08-25 20:16:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_18_152918_create_brands_table', 1),
(6, '2023_08_19_145943_create_watches_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(150) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anh Quan', 'Quan@devtmin.com', NULL, '$2y$10$/HB.7vpVQaQBxBVhhXRkCuKwJTx/ro5aglFwbEWmNBQoOoh398SZ2', 'Admin', 'iVa7Jt98UxQGIy0pwZpWgwYDGULblylicLDMoIdUtKODn859maPaMFn7tEm0', '2023-08-18 02:25:30', '2023-08-18 02:25:30'),
(2, 'Dang Hai', 'Hai@devtmin.com', NULL, '$2y$10$zpI.3WOkls0ezKPdIsEznOCeVVDvm4NxN6o6kPglswyM/z0Tuj1r.', 'Admin', NULL, '2023-08-18 06:14:14', '2023-08-18 06:14:14'),
(3, 'cat', 'nguyenbaanh112003@gmail.com', NULL, '$2y$10$Ovi07u.Mn/qNRUA5ZHbQ7uxI8KkwQiLtRDWQyIn7sUwrZDFn1SX8G', 'Admin', NULL, '2023-08-20 10:52:12', '2023-08-20 10:52:12'),
(5, 'nba', 'nguyenbaanh11003@gmail.com', NULL, '$2y$10$.EYec9p98w0yAE5dvQ19o.TJOU1yxYPPqpSaYCfvjCGks1fayxi6i', 'Admin', NULL, '2023-08-20 10:52:41', '2023-08-20 10:52:41'),
(6, 'nba', 'maan96602@gmail.com', NULL, '$2y$10$SyAAjK4gYPjfBuogV8EG2usBNVJ9cnOpBztchIT58p23D1i/YqWa2', 'Admin', NULL, '2023-08-21 20:50:51', '2023-08-21 20:50:51'),
(7, 'nba', 'maan902@gmail.com', NULL, '$2y$10$6Q.jG8veA3HgiM.HGW8CZupAlFPIlGREPsTKGmsWty0tqfvcrOCMy', 'Admin', NULL, '2023-08-22 01:48:57', '2023-08-22 01:48:57'),
(8, 'nba', 'nguyenbaanh003@gmail.com', NULL, '$2y$10$eQYlHMgDejkFK96ZLSl3Oenj2JX2eoZ3NRA0a4YkCpR31Lp9KeHly', 'Admin', NULL, '2023-08-22 01:54:41', '2023-08-22 01:54:41'),
(9, 'nba', 'nguyenb03@gmail.com', NULL, '$2y$10$Spo3cCewddNUdsPlOA9.ce5weUEG7uOwMZpSZojcZiR1MjKrp5A/W', 'Admin', NULL, '2023-08-22 13:03:19', '2023-08-22 13:03:19'),
(10, 'nba', 'maan9@gmail.com', NULL, '$2y$10$omS49T1eEruuN8/sWsKCKej3sLEGYO7.xpfVRD2.9Q.fak.AvCWTi', 'Admin', NULL, '2023-08-23 05:06:22', '2023-08-23 05:06:22'),
(11, 'nba', 'nguyeb03@gmail.com', NULL, '$2y$10$TmXfFd3cWAFw6TEY10oWBOuURhbOKogfnMAvbwzTx/XUZs/T/hMPO', 'Admin', NULL, '2023-08-23 09:29:33', '2023-08-23 09:29:33'),
(12, 'nba', 'Quan@detmin.com', NULL, '$2y$10$IJPbzksZPv7gHDZmRzBFcO.2UdB4LwQfovtzONtio190V7jkB/IVq', 'Admin', NULL, '2023-08-25 17:51:08', '2023-08-25 17:51:08'),
(13, 'nba', 'nguyenb0@gmail.com', NULL, '$2y$10$cVQH.eE8gpeY1qZbgQ8NrO3GY95vrbGVnr57KKqoDVGGBH6z9gjmS', 'Admin', NULL, '2023-08-25 19:20:53', '2023-08-25 19:20:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `watches`
--

CREATE TABLE `watches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `watches`
--

INSERT INTO `watches` (`id`, `name`, `slug`, `price`, `size`, `material`, `color`, `description`, `image`, `brand_id`, `created_at`, `updated_at`) VALUES
(21, 'Apple Watch Series 6', NULL, '200$', '24', 'Gold', 'Green', 'Good', 'Apple-Watch-Series-6-Gold-F.jpeg', 25, '2023-08-25 11:34:22', '2023-08-25 11:34:22'),
(23, 'Apple Watch Series 7', NULL, '300$', '25', 'Platium', 'Green', 'Good', 'Apple Watch Series 7.jpeg', 25, '2023-08-25 17:52:06', '2023-08-25 17:52:06'),
(24, 'Apple Watch Series 3', NULL, '200$', '24', 'Platium', 'Yellow', 'Good', 'Apple Watch Series 3.jpeg', 25, '2023-08-25 17:52:42', '2023-08-25 17:52:42'),
(25, 'Apple Watch Series 4', NULL, '210$', '25', 'Gold', 'Yellow', 'Good', 'Apple Watch Series 4.jpeg', 25, '2023-08-25 17:53:46', '2023-08-25 17:53:46'),
(26, 'Apple Watch Series 5', NULL, '200$', '24', 'Gold', 'Green', 'Good', 'Apple Watch Series 8.jpeg', 25, '2023-08-25 17:54:25', '2023-08-25 17:54:25'),
(27, 'Casio Digital Watch', NULL, '150$', '24', 'Gold', 'Yellow', 'Good', 'Casio Digital Watch.webp', 24, '2023-08-25 17:58:49', '2023-08-25 17:58:49'),
(28, 'Casio B640', NULL, '200$', '25', 'Gold', 'Green', 'Good', 'Casio B640.webp', 24, '2023-08-25 18:00:04', '2023-08-25 18:00:04'),
(30, 'Casio 800H', NULL, '200$', '24', 'Gold', 'Green', 'Good', 'W-800H-1AVDF.webp', 24, '2023-08-25 18:02:40', '2023-08-25 18:02:40'),
(33, 'Casio Golden', NULL, '200$', '25', 'Gold', 'Yellow', 'Good', 'images.jpeg', 24, '2023-08-25 18:07:48', '2023-08-25 18:07:48'),
(34, 'Casio Enticer', NULL, '200$', '24', 'Gold', 'Green', 'Good', 'Casio Enticer.webp', 24, '2023-08-25 18:10:05', '2023-08-25 18:10:05'),
(35, 'Rolex Platium Submarier', NULL, '1000$', '24', 'Gold', 'Golden', 'Good', 'Rolex Platium Submarier.png', 26, '2023-08-25 18:13:19', '2023-08-25 18:13:19'),
(36, 'Rolex Spiderman', NULL, '1200$', '25', 'Gold', 'Yellow', 'Good', 'Rolex Spiderman.jpeg', 26, '2023-08-25 18:14:43', '2023-08-25 18:14:43'),
(39, 'Rolex Golden Watch', NULL, '1000$', '24', 'Gold', 'Yellow', 'Good', 'Rolex Golden Watch Quataz.png', 26, '2023-08-25 18:19:21', '2023-08-25 18:19:21'),
(41, 'Rolex Datejust', NULL, '1000$', '24', 'Gold', 'Yellow', 'Good', 'Rolex Datejust .png', 26, '2023-08-25 18:25:56', '2023-08-25 18:25:56'),
(43, 'Rolex Everose', NULL, '1300$', '25', 'Platium', 'Pink', 'Good', 'Rolex Everose.png', 26, '2023-08-25 18:29:17', '2023-08-25 20:14:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `watches`
--
ALTER TABLE `watches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watches_brand_id_foreign` (`brand_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `watches`
--
ALTER TABLE `watches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `watches`
--
ALTER TABLE `watches`
  ADD CONSTRAINT `watches_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
