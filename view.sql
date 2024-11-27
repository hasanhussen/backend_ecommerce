-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 08:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_usersid` int(11) NOT NULL,
  `address_city` varchar(255) NOT NULL,
  `address_name` varchar(100) NOT NULL,
  `address_street` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_usersid`, `address_city`, `address_name`, `address_street`) VALUES
(2, 2, 'Tartous', 'home', 'alkarama');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_verfiycode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_verfiycode`) VALUES
(1, 'admin@gmail.com', '1e2f566cbda0a9c855240bf21b8bae030404cad7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cart_usersid` int(11) NOT NULL,
  `cart_itemsid` int(11) NOT NULL,
  `cart_orders` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_usersid`, `cart_itemsid`, `cart_orders`) VALUES
(1, 2, 1, 3),
(2, 2, 1, 1),
(3, 2, 1, 2),
(4, 2, 1, 3),
(5, 2, 2, 3),
(6, 2, 2, 3),
(7, 2, 2, 8),
(8, 2, 2, 9),
(9, 2, 2, 10),
(10, 2, 2, 10),
(11, 2, 2, 10),
(12, 2, 1, 10),
(13, 2, 1, 11),
(14, 2, 2, 12),
(15, 2, 9, 12),
(16, 2, 8, 12);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartview`
-- (See below for the actual view)
--
CREATE TABLE `cartview` (
`itemsprice` double
,`countitems` bigint(21)
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`cart_orders` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(100) NOT NULL,
  `categories_name_ar` varchar(100) NOT NULL,
  `categories_image` varchar(255) NOT NULL,
  `categories_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_name_ar`, `categories_image`, `categories_datetime`) VALUES
(2, 'laptop2', 'لابتوب', 'laptop.svg', '2024-10-09 19:33:05'),
(3, 'camera', 'كاميرات', 'camera.svg', '2024-10-09 19:33:05'),
(10, 'mobile', 'موبايل', '5694mobile.svg', '2024-11-21 14:44:03'),
(11, 'shoes', 'أحذية', 'shoes.svg', '2024-11-21 14:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(100) NOT NULL,
  `coupon_count` int(11) NOT NULL,
  `coupon_discount` smallint(6) NOT NULL DEFAULT 0,
  `coupon_expiredate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_count`, `coupon_discount`, `coupon_expiredate`) VALUES
(1, 'hasan', 3, 20, '2024-11-30 18:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_email` varchar(100) NOT NULL,
  `delivery_password` varchar(100) NOT NULL,
  `delivery_phone` varchar(100) NOT NULL,
  `delivery_verfiycode` int(11) NOT NULL,
  `delivery_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `delivery_name`, `delivery_email`, `delivery_password`, `delivery_phone`, `delivery_verfiycode`, `delivery_create`) VALUES
(1, 'Hasan Hussen', 'hasandelivery@gmail.com', 'a8899cc9c28057b810a2b08d64e56dbf576f89b6', '0936593248', 82435, '2024-10-13 14:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `favorite_usersid` int(11) NOT NULL,
  `favorite_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `favorite_usersid`, `favorite_itemsid`) VALUES
(1, 2, 2),
(2, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `items_name` varchar(100) NOT NULL,
  `items_name_ar` varchar(100) NOT NULL,
  `items_desc` varchar(255) NOT NULL,
  `items_desc_ar` varchar(255) NOT NULL,
  `items_image` varchar(255) NOT NULL,
  `items_count` int(11) NOT NULL,
  `items_active` tinyint(4) NOT NULL DEFAULT 1,
  `items_price` float NOT NULL,
  `items_discount` smallint(6) NOT NULL,
  `items_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `items_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`items_id`, `items_name`, `items_name_ar`, `items_desc`, `items_desc_ar`, `items_image`, `items_count`, `items_active`, `items_price`, `items_discount`, `items_date`, `items_cat`) VALUES
(1, 'camera', 'كاميرة', 'new camera 2024', 'كاميرة حديثة بمواصفات عالمية ', 'camera.png', 22, 1, 700, 0, '2024-11-25 17:19:38', 3),
(2, 'laptop', 'لابتوب', 'new laptop 2024', 'لابتوب حديث بمواصفات عالمية ', 'laptop.png', 22, 1, 700, 0, '2024-11-25 17:20:02', 2),
(7, 'shose adidas', 'حذاء اديداس', 'New model of advanced Adidas shoes', 'نموذج جديد من احذية اديداس المتطورة', 'shoes.png', 5, 1, 50, 0, '2024-11-21 15:01:52', 11),
(8, 'smasung mobile', 'جوال سامسونغ', 'A mobile phone manufactured by Samsung in 2022 that offers many advantages', 'موبايل مصنع من قبل شركة سامسونغ عام 2022 يوفر الكثير من المزايا ', 'smasung.jpg', 5, 1, 150, 0, '2024-11-25 16:18:42', 10),
(9, 'Realme 6 pro', 'ريلمي 6 برو', 'Realme 6 Pro mobile phone, good specifications at reasonable prices', 'جوال ريلمي 6 برو مواصفات جيدة بأسعار مناسبة', 'realme.jpg', 12, 1, 300, 0, '2024-11-25 16:18:07', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `items1view`
-- (See below for the actual view)
--
CREATE TABLE `items1view` (
`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`categories_id` int(11)
,`categories_name` varchar(100)
,`categories_name_ar` varchar(100)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemstopselling`
-- (See below for the actual view)
--
CREATE TABLE `itemstopselling` (
`countitems` bigint(21)
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`cart_orders` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`itemspricedisount` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `myfavorite`
-- (See below for the actual view)
--
CREATE TABLE `myfavorite` (
`favorite_id` int(11)
,`favorite_usersid` int(11)
,`favorite_itemsid` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
,`users_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_body` varchar(255) NOT NULL,
  `notification_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `notification_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_title`, `notification_body`, `notification_datetime`, `notification_userid`) VALUES
(10, 'notification1', 'The Order is ready', '2024-11-01 16:11:30', 2),
(11, 'notification2', 'The Order is ready', '2024-11-01 16:11:30', 2),
(12, 'success', 'The Order Has been Approved', '2024-11-02 12:26:58', 2),
(13, 'success', 'The Order is ready.', '2024-11-02 12:34:26', 2),
(14, 'success', 'The Order is ready.', '2024-11-02 12:44:33', 2),
(15, 'success', 'The Order is ready.', '2024-11-02 12:59:38', 2),
(16, 'success', 'The Order is ready.', '2024-11-02 13:09:09', 2),
(17, 'success', 'The Order Has been Approved', '2024-11-02 13:10:33', 2),
(18, 'success', 'The Order is ready.', '2024-11-02 13:16:43', 2),
(19, 'success', 'The Order is ready.', '2024-11-02 13:39:04', 2),
(20, 'success', 'The Order is ready.', '2024-11-02 13:44:39', 2),
(21, 'success', 'The Order is ready.', '2024-11-02 13:46:02', 2),
(22, 'success', 'The Order is ready.', '2024-11-02 13:52:32', 2),
(23, 'success', 'The Order is ready.', '2024-11-02 13:53:35', 2),
(24, 'success', 'The Order is ready.', '2024-11-02 15:11:17', 2),
(25, 'success', 'The Order is ready.', '2024-11-02 15:11:45', 2),
(26, 'success', 'The Order is ready.', '2024-11-02 15:12:05', 2),
(27, 'success', 'The Order Has been Approved', '2024-11-03 11:31:27', 2),
(28, 'success', 'The Order is ready.', '2024-11-03 11:31:55', 2),
(29, 'success', 'The Order is ready.', '2024-11-03 11:35:51', 2),
(30, 'success', 'Your order is on the way', '2024-11-06 14:37:17', 2),
(31, 'success', 'The Order Has been Approved', '2024-11-23 16:02:53', 2),
(32, 'success', 'The Order is ready.', '2024-11-24 15:54:22', 2),
(33, 'success', 'The Order is ready.', '2024-11-24 15:56:26', 2),
(34, 'success', 'The Order is ready.', '2024-11-24 15:56:54', 2),
(35, 'success', 'The Order is ready.', '2024-11-24 16:00:18', 2),
(36, 'success', 'The Order is ready.', '2024-11-24 16:14:15', 2),
(37, 'success', 'The Order is ready.', '2024-11-24 16:20:25', 2),
(38, 'success', 'The Order is ready.', '2024-11-24 16:22:01', 2),
(39, 'success', 'The Order Has been Approved', '2024-11-25 16:28:50', 2),
(40, 'success', 'The Order Has been Approved', '2024-11-25 16:30:05', 2),
(41, 'success', 'The Order Has been Approved', '2024-11-25 16:33:08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification_admin`
--

CREATE TABLE `notification_admin` (
  `notification_admin_id` int(11) NOT NULL,
  `notification_admin_title` varchar(100) NOT NULL,
  `notification_admin_body` varchar(255) NOT NULL,
  `notification_admin_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_admin`
--

INSERT INTO `notification_admin` (`notification_admin_id`, `notification_admin_title`, `notification_admin_body`, `notification_admin_date`) VALUES
(1, 'warning', 'The Order 4 Has been Approved by delivery 1', '2024-11-05 17:03:53'),
(2, 'warning', 'The Order 7 Has been Approved by delivery 1', '2024-11-06 14:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_usersid` int(11) NOT NULL,
  `orders_address` int(11) NOT NULL,
  `orders_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => delivery ; 1=>recive',
  `orders_pricedelivery` int(11) NOT NULL DEFAULT 0,
  `orders_price` float NOT NULL,
  `orders_coupon` int(11) NOT NULL DEFAULT 0,
  `orders_totalprice` float NOT NULL,
  `orders_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `orders_paymentmethod` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=> cash ; 1=>card',
  `orders_rating` tinyint(4) NOT NULL DEFAULT 0,
  `orders_noterating` varchar(255) NOT NULL DEFAULT 'none',
  `orders_delivery` int(11) NOT NULL DEFAULT 0,
  `orders_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_usersid`, `orders_address`, `orders_type`, `orders_pricedelivery`, `orders_price`, `orders_coupon`, `orders_totalprice`, `orders_datetime`, `orders_paymentmethod`, `orders_rating`, `orders_noterating`, `orders_delivery`, `orders_status`) VALUES
(2, 2, 0, 0, 0, 700, 0, 700, '2024-10-14 20:07:49', 0, 0, 'none', 0, 4),
(3, 2, 2, 0, 10, 2100, 0, 2110, '2024-10-15 20:28:50', 0, 0, 'none', 1, 4),
(7, 2, 0, 1, 0, 700, 0, 700, '2024-10-14 20:07:49', 0, 0, 'none', 1, 3),
(8, 2, 0, 0, 0, 700, 0, 700, '2024-10-29 16:16:42', 0, 0, 'none', 0, 2),
(9, 2, 0, 1, 0, 700, 0, 700, '2024-10-29 16:32:37', 0, 0, 'none', 0, 4),
(10, 2, 0, 1, 0, 2800, 0, 2800, '2024-11-23 17:51:00', 0, 0, 'none', 0, 0),
(11, 2, 2, 0, 10, 700, 1, 570, '2024-11-23 18:52:10', 0, 0, 'none', 0, 2),
(12, 2, 2, 0, 10, 1150, 1, 930, '2024-11-25 19:23:52', 0, 0, 'none', 0, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersdetailsview`
-- (See below for the actual view)
--
CREATE TABLE `ordersdetailsview` (
`itemsprice` double
,`countitems` bigint(21)
,`cart_id` int(11)
,`cart_usersid` int(11)
,`cart_itemsid` int(11)
,`cart_orders` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_count` int(11)
,`items_active` tinyint(4)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_cat` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersview`
-- (See below for the actual view)
--
CREATE TABLE `ordersview` (
`orders_id` int(11)
,`orders_usersid` int(11)
,`orders_address` int(11)
,`orders_type` tinyint(4)
,`orders_pricedelivery` int(11)
,`orders_price` float
,`orders_coupon` int(11)
,`orders_totalprice` float
,`orders_datetime` datetime
,`orders_paymentmethod` tinyint(4)
,`orders_rating` tinyint(4)
,`orders_noterating` varchar(255)
,`orders_delivery` int(11)
,`orders_status` int(11)
,`address_id` int(11)
,`address_usersid` int(11)
,`address_city` varchar(255)
,`address_name` varchar(100)
,`address_street` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `settings_titlehome` varchar(50) NOT NULL,
  `settings_bodyhome` varchar(100) NOT NULL,
  `settings_deliverytime` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_phone` varchar(100) NOT NULL,
  `users_verfiycode` int(11) NOT NULL,
  `users_approve` tinyint(4) NOT NULL DEFAULT 0,
  `users_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_password`, `users_email`, `users_phone`, `users_verfiycode`, `users_approve`, `users_create`) VALUES
(2, 'hasan98', 'cb62efac0f1a9797971f2b121a2199dcb1042c36', 'hasanhussen03@gmail.com', '0936593248', 40989, 1, '2024-10-13 14:19:44');

-- --------------------------------------------------------

--
-- Structure for view `cartview`
--
DROP TABLE IF EXISTS `cartview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartview`  AS  select sum(`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100) AS `itemsprice`,count(`cart`.`cart_itemsid`) AS `countitems`,`cart`.`cart_id` AS `cart_id`,`cart`.`cart_usersid` AS `cart_usersid`,`cart`.`cart_itemsid` AS `cart_itemsid`,`cart`.`cart_orders` AS `cart_orders`,`items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat` from (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) where `cart`.`cart_orders` = 0 group by `cart`.`cart_itemsid`,`cart`.`cart_usersid`,`cart`.`cart_orders` ;

-- --------------------------------------------------------

--
-- Structure for view `items1view`
--
DROP TABLE IF EXISTS `items1view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `items1view`  AS  select `items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat`,`categories`.`categories_id` AS `categories_id`,`categories`.`categories_name` AS `categories_name`,`categories`.`categories_name_ar` AS `categories_name_ar`,`categories`.`categories_image` AS `categories_image`,`categories`.`categories_datetime` AS `categories_datetime` from (`items` join `categories` on(`items`.`items_cat` = `categories`.`categories_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `itemstopselling`
--
DROP TABLE IF EXISTS `itemstopselling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemstopselling`  AS  select count(`cart`.`cart_id`) AS `countitems`,`cart`.`cart_id` AS `cart_id`,`cart`.`cart_usersid` AS `cart_usersid`,`cart`.`cart_itemsid` AS `cart_itemsid`,`cart`.`cart_orders` AS `cart_orders`,`items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat`,`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100 AS `itemspricedisount` from (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) where `cart`.`cart_orders` <> 0 group by `cart`.`cart_itemsid` ;

-- --------------------------------------------------------

--
-- Structure for view `myfavorite`
--
DROP TABLE IF EXISTS `myfavorite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `myfavorite`  AS  select `favorite`.`favorite_id` AS `favorite_id`,`favorite`.`favorite_usersid` AS `favorite_usersid`,`favorite`.`favorite_itemsid` AS `favorite_itemsid`,`items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat`,`users`.`users_id` AS `users_id` from ((`favorite` join `users` on(`users`.`users_id` = `favorite`.`favorite_usersid`)) join `items` on(`items`.`items_id` = `favorite`.`favorite_itemsid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ordersdetailsview`
--
DROP TABLE IF EXISTS `ordersdetailsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersdetailsview`  AS  select sum(`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100) AS `itemsprice`,count(`cart`.`cart_itemsid`) AS `countitems`,`cart`.`cart_id` AS `cart_id`,`cart`.`cart_usersid` AS `cart_usersid`,`cart`.`cart_itemsid` AS `cart_itemsid`,`cart`.`cart_orders` AS `cart_orders`,`items`.`items_id` AS `items_id`,`items`.`items_name` AS `items_name`,`items`.`items_name_ar` AS `items_name_ar`,`items`.`items_desc` AS `items_desc`,`items`.`items_desc_ar` AS `items_desc_ar`,`items`.`items_image` AS `items_image`,`items`.`items_count` AS `items_count`,`items`.`items_active` AS `items_active`,`items`.`items_price` AS `items_price`,`items`.`items_discount` AS `items_discount`,`items`.`items_date` AS `items_date`,`items`.`items_cat` AS `items_cat` from (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) where `cart`.`cart_orders` <> 0 group by `cart`.`cart_itemsid`,`cart`.`cart_usersid`,`cart`.`cart_orders` ;

-- --------------------------------------------------------

--
-- Structure for view `ordersview`
--
DROP TABLE IF EXISTS `ordersview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersview`  AS  select `orders`.`orders_id` AS `orders_id`,`orders`.`orders_usersid` AS `orders_usersid`,`orders`.`orders_address` AS `orders_address`,`orders`.`orders_type` AS `orders_type`,`orders`.`orders_pricedelivery` AS `orders_pricedelivery`,`orders`.`orders_price` AS `orders_price`,`orders`.`orders_coupon` AS `orders_coupon`,`orders`.`orders_totalprice` AS `orders_totalprice`,`orders`.`orders_datetime` AS `orders_datetime`,`orders`.`orders_paymentmethod` AS `orders_paymentmethod`,`orders`.`orders_rating` AS `orders_rating`,`orders`.`orders_noterating` AS `orders_noterating`,`orders`.`orders_delivery` AS `orders_delivery`,`orders`.`orders_status` AS `orders_status`,`address`.`address_id` AS `address_id`,`address`.`address_usersid` AS `address_usersid`,`address`.`address_city` AS `address_city`,`address`.`address_name` AS `address_name`,`address`.`address_street` AS `address_street` from (`orders` left join `address` on(`address`.`address_id` = `orders`.`orders_address`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `address_usersid` (`address_usersid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_usersid` (`cart_usersid`),
  ADD KEY `cart_itemsid` (`cart_itemsid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `coupon_name` (`coupon_name`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorite_itemsid` (`favorite_itemsid`),
  ADD KEY `favorite_usersid` (`favorite_usersid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`),
  ADD KEY `items_cat` (`items_cat`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `notification_usersid` (`notification_userid`);

--
-- Indexes for table `notification_admin`
--
ALTER TABLE `notification_admin`
  ADD PRIMARY KEY (`notification_admin_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notification_admin`
--
ALTER TABLE `notification_admin`
  MODIFY `notification_admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`address_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cart_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cart_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`favorite_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`favorite_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`items_cat`) REFERENCES `categories` (`categories_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`notification_userid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
