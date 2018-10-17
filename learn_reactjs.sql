-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2018 lúc 07:56 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `learn_reactjs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '3R6QHG0DaP', 'LvLBNEMCLu@gmail.com', NULL, '$2y$10$1Xf08kydP5rWTlz5izomrOFPZuZ0wy8M0JjGU1tOPcSFmfjuD3/Eu', NULL, NULL, NULL),
(2, 'cGQBF7XVO7', 'xb7TQBV76v@gmail.com', NULL, '$2y$10$OBIiteUqnUbWlb4OPAlevuuJPVqZh/tUrZWDPRKDW33UW/pQ6cFru', NULL, NULL, NULL),
(3, 'FWItWTjUH0', '4gDoA3hicT@gmail.com', NULL, '$2y$10$xKwY/o8e6szlNwZGzMIqvu9QlWUWPu4uD73gOg7dH1T4U1K87dMFG', NULL, NULL, NULL),
(4, 'QtFDGKejWB', '0FkEUoIAZi@gmail.com', NULL, '$2y$10$o3nts2dg67CHp/K0IEVCcOeHk06EJ5E4zJ27YSiWvXV0hgBN6yrpi', NULL, NULL, NULL),
(5, 'mgLyPYYKbH', 'OxdmzTHoD2@gmail.com', NULL, '$2y$10$vOnLaqHVYZ6stnw2XlHsMuB3/K302/fp/xkatQ6FkBJxH8uBJP.X6', NULL, NULL, NULL),
(6, 'gO5PPULjle', '1HFGTGkOGT@gmail.com', NULL, '$2y$10$SjwOxq7RSLcHEtVHvvuBzuODHBszjdEBXKbZpavL/AmvexYjXQfGy', NULL, NULL, NULL),
(7, 'SsyLa1yHYE', 'hQ1tOsgKX0@gmail.com', NULL, '$2y$10$9VwRR1TMKMY7aLVdoJSvP.CIjmeU4FgcjFL2vw2q.qyKy2yJfIn96', NULL, NULL, NULL),
(8, 'rA7cRyDlxr', 'rph0hDfJ1I@gmail.com', NULL, '$2y$10$57kaJD2aWrvCMCyDdRUbJ.pbxqyo6WZJog0BmnL5tDAjAjnQPCuXK', NULL, NULL, NULL),
(9, 'zK4tb1rBJz', 'A9KTXRGIew@gmail.com', NULL, '$2y$10$GR.M6B87wxowRnosVLy2auVnD7kwRe91IqibHK5FaMGruwwZLFEYO', NULL, NULL, NULL),
(10, 'r0xCeFkM6H', 'XzezuzgVUv@gmail.com', NULL, '$2y$10$EfYlk7XgsOCbo3ZtRVUzke0QcONg6Jwi/UlCqJNvUHVVYTwJ7B0Ka', NULL, NULL, NULL),
(11, 'b9mLOYsgV3', 'BSvUZn4GAZ@gmail.com', NULL, '$2y$10$.4TICO8fIcPtYe4uPxYq.eC2GCv5nF3zz3Rc.JvN8u1UqC6L803Xe', NULL, NULL, NULL),
(12, 'Modesto Ernser', 'brandy74@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UK8shNyfdS', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(13, 'Mr. Demetrius Moore II', 'elyse.satterfield@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qjwi7BNR6U', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(14, 'Prof. Fredrick Doyle', 'adell76@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XlMCIlUj8s', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(15, 'Kylie Towne', 'faustino72@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'JVAhLEJu0c', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(16, 'Prof. Neal Connelly', 'lincoln34@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tmR4izV60M', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(17, 'Raphael Stoltenberg', 'quigley.lora@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SwFc7FzoLl', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(18, 'Miss Kara Bergnaum Jr.', 'madams@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8TNgzj4Ma5', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(19, 'Rowland Jacobs', 'brielle.moen@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XhcjUs7m2Y', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(20, 'Amelie McKenzie', 'nasir.hessel@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'eiQS2sWXF4', '2018-10-17 10:00:57', '2018-10-17 10:00:57'),
(21, 'Jeffry Willms II', 'waelchi.jackie@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7EEdAKNpZi', '2018-10-17 10:00:57', '2018-10-17 10:00:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
