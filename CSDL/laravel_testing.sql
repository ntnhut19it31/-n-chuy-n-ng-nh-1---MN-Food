-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2022 lúc 05:48 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_testing`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `about_content`, `image`, `logo`, `footer_logo`, `favicon`, `fb`, `twitter`, `insta`, `android`, `ios`, `copyright`, `title`, `short_title`, `mobile`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'About  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'about-5fa8f1af82a9a.jpg', 'logo-6030f93f7573e.png', 'footer-6030f93f752a7.png', 'favicon-6030f9f848460.png', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://play.google.com/store/apps', 'https://www.apple.com/in/itunes/', 'Copyright Restaurant Website © 2020.All Rights Reserved.', 'Single restaurant food ordering Website and Delivery Boy App with Admin Panel', 'Restaurant Website', '+91 7016428845', 'infotechgravity@gmail.com', '518-519, Amby Valley Arcade, VIP Cir, nr. Essar Petroleum, Uttran, Surat, Gujarat 394105', '2021-02-20 12:00:56', '2021-02-20 19:00:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addons`
--

INSERT INTO `addons` (`id`, `cat_id`, `item_id`, `name`, `price`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'NhutNguyen', '0', 1, 2, '2022-11-30 10:15:28', '2022-11-30 10:15:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'banner-63879000e2844.jpg', '2022-11-30 10:16:48', '2022-11-30 10:16:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item_id`, `addons_id`, `qty`, `price`, `item_notes`, `is_available`, `created_at`, `updated_at`) VALUES
(6, 3, 1, NULL, 1, '50', NULL, 1, '2022-12-03 22:25:51', '2022-12-03 22:25:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Rice', 'category-63863b2335b5c.jpg', 1, 2, '2022-11-29 10:02:27', '2022-11-29 10:02:49'),
(2, 'Noodles', 'category-63863ba424b0e.jpg', 1, 2, '2022-11-29 10:04:36', '2022-11-29 10:04:36'),
(3, 'Seafood', 'category-638641c09e2a0.jpg', 1, 2, '2022-11-29 10:30:40', '2022-11-29 10:30:40'),
(4, 'Soup', 'category-638642223dae8.jpg', 1, 2, '2022-11-29 10:32:18', '2022-11-29 10:32:18'),
(5, 'Beef', 'category-6386428de68fa.jpg', 1, 2, '2022-11-29 10:34:05', '2022-11-29 10:34:05'),
(6, 'salad', 'category-638642dc416af.jpg', 1, 2, '2022-11-29 10:35:24', '2022-12-03 22:46:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nhựt', 'Nguyễn', 'nguyenthinhut2001@gmail.com', 'hihi', '2022-11-30 10:52:30', '2022-11-30 10:52:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite`
--

INSERT INTO `favorite` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2022-11-29 10:43:16', '2022-11-29 10:43:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ingredients`
--

INSERT INTO `ingredients` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'ingredients-638644a8d1676.jpg', '2022-11-29 10:43:04', '2022-11-29 10:43:04'),
(2, 2, 'ingredients-638ca5f62eba9.jpg', '2022-12-04 06:51:50', '2022-12-04 06:51:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`id`, `cat_id`, `item_name`, `item_description`, `item_price`, `delivery_time`, `item_status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rice Chicken', 'Món cơm gà Hải Nam ở Malaysia cũng được bày bán trong nhiều tiệm ăn và hàng ăn Trung Hoa tại đất nước này, và nó cũng xuất hiện trong nhiều chuỗi hàng quán kinh doanh có tiếng như The Chicken Rice Shop, KFC\'s Rasamas và Nam Heong. Phần lớn các hàng quán bán cơm gà cũng phục vụ các phiên bản cơm gà chiên, nướng, quay thay cho món gà hấp truyền thống, bao gồm cả gà nướng vỉ hay gà nướng với mật ong.', '50', '6h30 - 21h30', 1, 2, '2022-11-29 10:43:04', '2022-11-29 10:43:04'),
(2, 1, 'Rice Beef', 'Cơm bò dai ngon', '40', '7h30 - 21h30', 1, 2, '2022-12-04 06:51:50', '2022-12-04 06:51:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'item-638644a8cc2f3.jpg', '2022-11-29 10:43:04', '2022-11-29 10:43:04'),
(2, 2, 'item-638ca5f62d9f1.jpg', '2022-12-04 06:51:50', '2022-12-04 06:51:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_06_05_070854_create_categories_table', 2),
(7, '2020_06_05_103122_create_item_table', 3),
(9, '2020_06_05_110205_create_item_images_table', 4),
(10, '2020_06_05_125414_create_ingredients_table', 5),
(14, '2020_06_06_055110_create_cart_table', 6),
(16, '2020_06_07_051607_create_order_table', 7),
(18, '2020_06_07_063234_create_order_details_table', 8),
(19, '2020_06_16_094849_create_ratting_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 68),
(2, 'App\\User', 69),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 81),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 84),
(2, 'App\\User', 85),
(2, 'App\\User', 86),
(2, 'App\\User', 87),
(2, 'App\\User', 88),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119),
(2, 'App\\User', 120),
(2, 'App\\User', 121),
(2, 'App\\User', 122),
(2, 'App\\User', 123),
(2, 'App\\User', 124),
(2, 'App\\User', 125),
(2, 'App\\User', 126),
(2, 'App\\User', 127),
(2, 'App\\User', 128),
(2, 'App\\User', 129),
(2, 'App\\User', 130),
(2, 'App\\User', 131),
(2, 'App\\User', 132),
(2, 'App\\User', 133),
(2, 'App\\User', 134),
(2, 'App\\User', 135),
(2, 'App\\User', 136),
(2, 'App\\User', 137),
(2, 'App\\User', 138),
(2, 'App\\User', 139),
(2, 'App\\User', 140),
(2, 'App\\User', 141),
(2, 'App\\User', 142);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promocode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_pr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `order_number`, `user_id`, `driver_id`, `order_total`, `razorpay_payment_id`, `payment_type`, `order_type`, `address`, `pincode`, `lat`, `lang`, `building`, `landmark`, `promocode`, `discount_amount`, `discount_pr`, `tax`, `tax_amount`, `delivery_charge`, `order_notes`, `order_from`, `status`, `is_notification`, `created_at`, `updated_at`) VALUES
(1, '4E5TJJPRNT', 3, NULL, '52.5', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '5', '2.5', '0.00', 'giao vào lúc hành chính', 'web', 5, 2, '2022-11-30 10:36:03', '2022-12-04 06:34:01'),
(2, 'TQYCO3D5QS', 3, NULL, '52.5', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '5', '2.5', '0.00', 'Giao giúp mình giờ hành chính nhé,', 'web', 4, 2, '2022-11-30 10:45:03', '2022-12-04 06:34:01'),
(3, 'N3303OKRHM', 3, NULL, '52.5', NULL, '0', 2, '', '', '', '', '', '', NULL, '0.00', NULL, '5', '2.5', '0.00', 'Giao hàng vào giờ hành chính nha', 'web', 1, 2, '2022-12-03 22:02:39', '2022-12-04 06:34:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addons_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `order_id`, `item_id`, `price`, `qty`, `item_notes`, `addons_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '50', '1', 'ttt', '1', '2022-11-30 10:36:03', '2022-11-30 10:36:03'),
(2, 3, 2, 1, '50.00', '1', 'Món này nhìn vẻ ngon nhỉ', '1', '2022-11-30 10:45:03', '2022-11-30 10:45:03'),
(3, 3, 3, 1, '50', '1', NULL, NULL, '2022-12-03 22:02:39', '2022-12-03 22:02:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `is_available` int(11) NOT NULL,
  `test_public_key` text NOT NULL,
  `test_secret_key` text NOT NULL,
  `live_public_key` text DEFAULT NULL,
  `live_secret_key` text DEFAULT NULL,
  `environment` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `payment_name`, `is_available`, `test_public_key`, `test_secret_key`, `live_public_key`, `live_secret_key`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 1, '', '', NULL, NULL, 1, '2020-12-29 07:45:15', '2021-02-21 01:26:11'),
(2, 'RazorPay', 1, '', '', NULL, NULL, 1, '2020-12-29 07:45:15', '2021-02-21 01:26:27'),
(3, 'COD', 1, '', '', NULL, NULL, 1, '2020-12-29 07:54:50', '2020-12-29 09:38:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pincode`
--

CREATE TABLE `pincode` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pincode`
--

INSERT INTO `pincode` (`id`, `pincode`, `created_at`, `updated_at`) VALUES
(1, '123', '2022-11-30 10:17:21', '2022-11-30 10:17:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2022-11-30 10:39:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promocode`
--

CREATE TABLE `promocode` (
  `id` bigint(20) NOT NULL,
  `offer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promocode`
--

INSERT INTO `promocode` (`id`, `offer_name`, `offer_code`, `offer_amount`, `description`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 'i', 'j', '6', 'uuuu', 1, '2022-11-30 10:17:50', '2022-11-30 10:17:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratting`
--

CREATE TABLE `ratting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratting`
--

INSERT INTO `ratting` (`id`, `user_id`, `ratting`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, '5', 'món rice chicken good nha', '2022-11-30 10:55:05', '2022-11-30 10:55:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19'),
(2, 'user', 'User', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', 'Món ăn tuyệt phẩm', 'slider-638ca3dd47186.jpg', '2022-12-04 06:42:53', '2022-12-04 06:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `termscondition_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `terms`
--

INSERT INTO `terms` (`id`, `termscondition_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-13 12:37:35', '2020-12-31 10:36:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `always_close` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `time`
--

INSERT INTO `time` (`id`, `day`, `open_time`, `close_time`, `always_close`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '12:30am', '1:00am', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23'),
(2, 'Tuesday', '12:00am', '11:59pm', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23'),
(3, 'Wednesday', '12:00am', '11:59pm', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23'),
(4, 'Thursday', '12:00am', '11:59pm', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23'),
(5, 'Friday', '12:00am', '11:59pm', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23'),
(6, 'Saturday', '12:00am', '11:59pm', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23'),
(7, 'Sunday', '12:00am', '11:59pm', 2, '2022-12-04 14:50:23', '2022-12-04 07:50:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `wallet` varchar(20) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `order_type` int(11) NOT NULL,
  `transaction_type` varchar(255) NOT NULL COMMENT '1 = Cancelled Order, 2 = Order Confirmed, 3 = Referral',
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `tax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `min_order_amount` int(11) DEFAULT NULL,
  `max_order_amount` int(11) DEFAULT NULL,
  `lat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_amount` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '00',
  `referral_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `otp` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL COMMENT '1 = Yes , 2 = No',
  `purchase_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `profile_image`, `password`, `login_type`, `google_id`, `facebook_id`, `type`, `tax`, `delivery_charge`, `currency`, `max_order_qty`, `min_order_amount`, `max_order_amount`, `lat`, `lang`, `map`, `firebase`, `timezone`, `token`, `referral_amount`, `wallet`, `referral_code`, `is_available`, `otp`, `is_verified`, `purchase_key`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '', 'unknown.png', '$2y$10$RKFRI21R2SVyf/QMSj92H.srHuJXPWKk7VCbK8R3LJvRHuUobvjai', 'email', NULL, NULL, 1, '5', '10', '$', 10, 10, 1000, '40.7128', '-74.0060', 'Map Key', 'Firebase Key', 'Asia/Kolkata', '', '20', NULL, NULL, 1, NULL, NULL, '0', '2020-06-05 07:21:20', '2021-02-21 01:20:49'),
(3, 'Nhựt Nguyễn', 'nguyenthinhut2001@gmail.com', '0914735900', 'unknown.png', '$2y$10$9TjRO/JNI9wx.etDg3i.M.C2ilHVYym41Wm8lOPBBJloXWMXu/gIG', 'email', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'zK5sPq93m2', 1, NULL, 1, NULL, '2022-11-27 08:45:07', '2022-11-27 08:45:45'),
(4, 'Duyen May', 'ntnhut0908@gmail.com', '01649406201', 'unknown.png', '$2y$10$SqV0gD4t/VmmSF7ZOW1IsebYLQ0KiFwANscgjmuPv/x2Aac0w6q6e', 'email', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', 'WKgAJ96hC7', 1, NULL, 1, NULL, '2022-11-27 19:06:23', '2022-11-27 19:14:38'),
(5, 'Hưng', 'nguyenthinhut.0908@gmail.com', '0394991244', 'unknown.png', '$2y$10$J7uf/sBMjNDHdVq40FD0XusgTR84SOMvq8MJNMGjNpg.I8h10RXEm', '', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '00', NULL, 1, NULL, NULL, NULL, '2022-11-29 11:02:15', '2022-11-29 11:02:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_item_id_foreign` (`item_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_item_id_foreign` (`item_id`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_item_id_foreign` (`item_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratting_user_id_foreign` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
