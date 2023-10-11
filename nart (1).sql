-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2023 lúc 03:14 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_brand`
--

CREATE TABLE `db_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Pepsico', 'pepsico', 'https://tse1.mm.bing.net/th?id=OIP.Wwu-axrwZewqPIu7QW9DQgHaEo&pid=Api&rs=1&c=1&qlt=95&w=192&h=120', NULL, NULL, '2023-10-05 06:15:59', 1, 1, NULL),
(2, 'cocacola', 'coca-cola', 'https://tse1.mm.bing.net/th?id=OIP.j4QCPpAQZAWzrpWFrEGioQHaEK&pid=Api&rs=1&c=1&qlt=95&w=176&h=99', 0, NULL, NULL, 1, NULL, 2),
(3, 'URC', 'urc', '	https://urc.com.vn/templates/images/logo.png', 0, NULL, NULL, 1, NULL, 2),
(4, 'tan hiep phat', 'THP', 'https://tse1.mm.bing.net/th?id=OIP.noxkVG_i1UuKH_AulNI44wHaHa&pid=Api&rs=1&c=1&qlt=95&w=112&h=112', 0, NULL, NULL, 1, NULL, 2),
(5, 'Lavie', 'la-vie', 'https://tse1.mm.bing.net/th?id=OIP.QqIE27o5bC_4xsfUYLKhXQHaGS&pid=Api&rs=1&c=1&qlt=95&w=128&h=109', 0, NULL, NULL, 1, NULL, 2),
(6, 'Redbull', 'red-bull', 'https://tse1.mm.bing.net/th?id=OIP.JE5lQeQFTIDRx7xOAWzt6QHaEK&pid=Api&rs=1&c=1&qlt=95&w=177&h=99', 0, NULL, NULL, 1, NULL, 2),
(7, 'thuc pham quoc te', 'TPQT', 'https://thucphamquocte.vn/wp-content/uploads/2021/07/TPQT-LOGO-h200.png', 0, NULL, NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `slug` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `sort_order` int(10) UNSIGNED DEFAULT 0,
  `metakey` varchar(255) DEFAULT NULL,
  `metadesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'nuoc chai', 'nuoc-chai', 'https://png.pngtree.com/png-clipart/20230923/origi…object-white-bottle-vector-png-image_12545853.png', 0, 0, '', '', NULL, NULL, 1, NULL, 2),
(2, 'nuoc lon', 'buoc-lon', NULL, 0, 0, '', '', NULL, NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `zalo` varchar(1000) NOT NULL,
  `facebook` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `youtube` varchar(1000) NOT NULL,
  `metadesc` varchar(1000) NOT NULL,
  `metakey` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `replay_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_menu`
--

CREATE TABLE `db_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_post`
--

CREATE TABLE `db_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `slug` varchar(1000) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `price_sale` double(8,2) DEFAULT NULL,
  `qty` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `detail` mediumtext DEFAULT NULL,
  `metakey` varchar(255) DEFAULT NULL,
  `metadesc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `qty`, `image`, `detail`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 1, 'stingdau', 'stingdau', 10000.00, 9800.00, NULL, 'https://tse1.mm.bing.net/th?id=OIP.tuDr41mcbq83YfneTBcH-gHaHa&pid=Api&rs=1&c=1&qlt=95&w=124&h=124', 'null', NULL, NULL, '2023-10-11 04:23:46', '2023-10-11 04:23:46', 1, NULL, NULL),
(2, 1, 1, 'stingvang', 'sting-vang-chai', 10000.00, 9700.00, 0, '	https://tse1.mm.bing.net/th?id=OIP.ZK5beDqW65aXzX8M7XnTtAHaHa&pid=Api&rs=1&c=1&qlt=95&w=110&h=110', '', '', '', NULL, NULL, 1, NULL, 2),
(3, 2, 1, 'stinglon', 'sting-lon', 12000.00, 10000.00, 0, 'https://tse1.mm.bing.net/th?id=OIP.uuGJurxM35Ot-AyDOiodMAHaHa&pid=Api&rs=1&c=1&qlt=95&w=107&h=107', '', '', '', NULL, NULL, 1, NULL, 2),
(4, 2, 1, 'stingvanglon', 'sting-vang-lon', 12000.00, 9800.00, 0, 'https://tse1.mm.bing.net/th?id=OIP.wUX8WuOMugLz3iVoqEUALAHaHa&pid=Api&rs=1&c=1&qlt=95&w=113&h=113', '', '', '', NULL, NULL, 1, NULL, 2),
(5, NULL, NULL, 'cocacola', 'coca-cola', 9000.00, 8900.00, NULL, 'https://tse3.mm.bing.net/th?id=OIP.l0REUGMkMMuWIHA4rOtD3wHaHa&pid=Api&P=0&h=180', NULL, NULL, NULL, NULL, NULL, 1, NULL, 2),
(6, NULL, NULL, 'pepsi', 'pepsi', 11000.00, 10900.00, NULL, 'https://tse1.mm.bing.net/th?id=OIP.tPx2w0iGj-8JMDExHaYTQgHaHa&pid=Api&P=0&h=180', NULL, NULL, NULL, NULL, NULL, 1, NULL, 2),
(7, NULL, NULL, 'aquafina', 'aquafina', 6700.00, 5000.00, NULL, 'https://tse2.mm.bing.net/th?id=OIP.-fEj_aM7jxziXSuZhfeMqwHaHa&pid=Api&P=0&h=180', NULL, NULL, NULL, '2023-10-05 05:30:51', '2023-10-05 05:30:51', 1, NULL, NULL),
(8, NULL, NULL, 'revive', 'revive', 12000.00, 11000.00, NULL, '	https://tse2.mm.bing.net/th?id=OIP.hZ8k51H68ZfWHU9mpfst0wHaHa&pid=Api&P=0&h=180', NULL, NULL, NULL, '2023-10-05 05:59:45', '2023-10-05 05:59:45', 1, NULL, NULL),
(9, NULL, NULL, 'suaTHdau', 'suathdau', 15000.00, 13500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:00:15', '2023-10-05 06:00:15', 1, NULL, NULL),
(10, NULL, NULL, 'suaTHchuoi', 'suathchuoi', 15000.00, 13500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:00:22', '2023-10-05 06:00:22', 1, NULL, NULL),
(11, NULL, NULL, 'suaTHcam', 'suathcam', 15000.00, 13500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:00:27', '2023-10-05 06:00:27', 1, NULL, NULL),
(12, NULL, NULL, 'mirindanholon', 'mirindanholon', 12000.00, 10000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:00:49', '2023-10-05 06:00:49', 1, NULL, NULL),
(13, NULL, NULL, 'mirindaxasilon', 'mirindaxasilon', 12000.00, 10000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:01:11', '2023-10-05 06:01:11', 1, NULL, NULL),
(14, NULL, NULL, 'redbull', 'redbull', 12000.00, 11500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:02:17', '2023-10-05 06:02:17', 1, NULL, NULL),
(15, NULL, NULL, '7uplon', '7uplon', 12000.00, 11000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:02:32', '2023-10-05 06:02:32', 1, NULL, NULL),
(16, NULL, NULL, 'pepsilon', 'pepsilon', 12000.00, 10000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:02:47', '2023-10-05 06:02:47', 1, NULL, NULL),
(17, NULL, NULL, 'cocakduonglon', 'cocakduonglon', 13000.00, 12000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:03:17', '2023-10-05 06:03:17', 1, NULL, NULL),
(18, NULL, NULL, 'pepsivichanhlon', 'pepsivichanhlon', 13000.00, 12000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:03:29', '2023-10-05 06:03:29', 1, NULL, NULL),
(19, NULL, NULL, 'number1', 'number1', 11000.00, 10000.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:03:42', '2023-10-05 06:03:42', 1, NULL, NULL),
(20, NULL, NULL, '7up', '7up', 10000.00, 9500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:04:10', '2023-10-05 06:04:10', 1, NULL, NULL),
(21, NULL, NULL, 'mirindacam', 'mirindacam', 10000.00, 9500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:04:26', '2023-10-05 06:04:26', 1, NULL, NULL),
(22, NULL, NULL, 'mirindaxasi', 'mirindaxasi', 10000.00, 9500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:04:34', '2023-10-05 06:04:34', 1, NULL, NULL),
(23, NULL, NULL, 'mirindathai', 'mirindathai', 10000.00, 9500.00, NULL, NULL, NULL, NULL, NULL, '2023-10-05 06:04:41', '2023-10-05 06:04:41', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_productsale`
--

CREATE TABLE `db_productsale` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price_sale` double NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_productstore`
--

CREATE TABLE `db_productstore` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(1000) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_topic`
--

CREATE TABLE `db_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_productsale`
--
ALTER TABLE `db_productsale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_productstore`
--
ALTER TABLE `db_productstore`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_user_email_unique` (`email`),
  ADD UNIQUE KEY `db_user_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `db_productsale`
--
ALTER TABLE `db_productsale`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_productstore`
--
ALTER TABLE `db_productstore`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
