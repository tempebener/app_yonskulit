-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2022 at 01:15 PM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9658553_yons-kulit`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_addresses`
--

CREATE TABLE `sma_addresses` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_addresses`
--

INSERT INTO `sma_addresses` (`id`, `company_id`, `line1`, `line2`, `city`, `postal_code`, `state`, `country`, `phone`, `updated_at`) VALUES
(1, 7, 'Jl.Percetakan', '', 'Jakarta', '10560', 'DKI Jakarta', 'Indonesia', '0865', '2020-04-29 15:34:26'),
(2, 9, 'jalan', 'jalan', 'Jakarta Timur', '13870', 'DKI Jakarta', 'Indonesia', '085777714746', '2020-04-30 09:58:06'),
(3, 10, '1', '2', 'Jakarta', '38292', 'Jakarta', 'Indonesia', '02929832', '2020-05-05 07:23:44'),
(4, 10, '1', '2', 'Jakarta', '38292', 'Jakarta', 'Indonesia', '02929832', '2020-05-05 07:24:58'),
(5, 11, ';l;o', '\';l', 'pl', ';l', ';l', 'kl', 'l', '2020-05-08 09:35:17'),
(6, 10, 'Jl. Kebon Kelapa', 'Jl. Kebon Kelapa', 'Jakarta', '13120', 'Jakarta', 'Indonesia', '08999592439', '2020-05-10 09:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustments`
--

CREATE TABLE `sma_adjustments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustment_items`
--

CREATE TABLE `sma_adjustment_items` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustment_items`
--

INSERT INTO `sma_adjustment_items` (`id`, `adjustment_id`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `serial_no`, `type`) VALUES
(6, 2, 70, NULL, 15.0000, 1, '', 'addition'),
(7, 3, 71, NULL, 5.0000, 1, '', 'addition'),
(8, 4, 72, NULL, 7.0000, 1, '', 'addition'),
(9, 5, 73, NULL, 12.0000, 1, '', 'addition'),
(10, 6, 74, NULL, 11.0000, 1, '', 'addition'),
(11, 7, 75, NULL, 10.0000, 1, '', 'addition'),
(12, 8, 76, NULL, 15.0000, 1, '', 'addition'),
(13, 9, 77, NULL, 9.0000, 1, '', 'addition'),
(14, 10, 80, NULL, 11.0000, 1, '', 'addition'),
(15, 11, 79, NULL, 4.0000, 1, '', 'addition'),
(16, 12, 78, NULL, 13.0000, 1, '', 'addition'),
(17, 13, 36, NULL, 9.0000, 1, '', 'addition'),
(18, 14, 37, NULL, 16.0000, 1, '', 'addition'),
(19, 15, 38, NULL, 10.0000, 1, '', 'addition'),
(20, 16, 40, NULL, 9.0000, 1, '', 'addition'),
(21, 17, 39, NULL, 12.0000, 1, '', 'addition'),
(22, 18, 45, NULL, 5.0000, 1, '', 'addition'),
(23, 19, 46, NULL, 5.0000, 1, '', 'addition'),
(24, 20, 49, NULL, 8.0000, 1, '', 'addition'),
(25, 21, 50, NULL, 8.0000, 1, '', 'addition'),
(26, 22, 51, NULL, 8.0000, 1, '', 'addition'),
(27, 23, 52, NULL, 17.0000, 1, '', 'addition'),
(28, 24, 55, NULL, 11.0000, 1, '', 'addition'),
(29, 25, 56, NULL, 12.0000, 1, '', 'addition'),
(30, 26, 57, NULL, 1.0000, 1, '', 'addition'),
(31, 27, 58, NULL, 8.0000, 1, '', 'addition'),
(32, 28, 59, NULL, 8.0000, 1, '', 'addition'),
(33, 29, 60, NULL, 11.0000, 1, '', 'addition'),
(34, 30, 65, NULL, 17.0000, 1, '', 'addition'),
(35, 31, 69, NULL, 4.0000, 1, '', 'addition'),
(36, 32, 68, NULL, 16.0000, 1, '', 'addition'),
(37, 33, 66, NULL, 12.0000, 1, '', 'addition'),
(38, 34, 70, NULL, 15.0000, 1, '', 'subtraction');

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_keys`
--

CREATE TABLE `sma_api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference` varchar(40) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_limits`
--

CREATE TABLE `sma_api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_api_logs`
--

CREATE TABLE `sma_api_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_brands`
--

CREATE TABLE `sma_brands` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`, `slug`, `description`) VALUES
(1, 'SS001', 'Yons Kulit', 'e15916c9ecc685e84216ad128e76a706.png', 'yons-kulit', 'Yons Kulit');

-- --------------------------------------------------------

--
-- Table structure for table `sma_calendar`
--

CREATE TABLE `sma_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_captcha`
--

CREATE TABLE `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_cart`
--

CREATE TABLE `sma_cart` (
  `id` varchar(40) NOT NULL,
  `time` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_cart`
--

INSERT INTO `sma_cart` (`id`, `time`, `user_id`, `data`) VALUES
('b30885dac6c34d769c334ea5bcf7e45b', '1633585601', 1, '{\"cart_total\":165000,\"total_item_tax\":0,\"total_items\":2,\"total_unique_items\":2,\"5ea48a218366bada88417826348d2239\":{\"id\":\"28dd2c7955ce926456240b2ff0100bde\",\"product_id\":\"77\",\"qty\":1,\"name\":\"WMeat Aus Beef All Variant (Tumis\\/Sop) 1 kg\",\"slug\":\"wmeat-aus-beef-all-variant-tumissop-1-kg\",\"code\":\"OLN-016\",\"price\":70000,\"tax\":\"0\",\"image\":\"724c029ebd487ee39194dff3334f6f17.jpg\",\"option\":false,\"options\":null,\"rowid\":\"5ea48a218366bada88417826348d2239\",\"row_tax\":\"0.0000\",\"subtotal\":\"70000.0000\"},\"814d291a255988a5d16ddb0854ab5cfe\":{\"id\":\"f033ab37c30201f73f142449d037028d\",\"product_id\":\"80\",\"qty\":1,\"name\":\"Tenderloin Cube 300 gr\",\"slug\":\"tenderloin-cube-300-gr\",\"code\":\"OLN-0290\",\"price\":95000,\"tax\":\"0\",\"image\":\"c6b8a473fc3a58f605852cf57f3a3a09.jpg\",\"option\":false,\"options\":null,\"rowid\":\"814d291a255988a5d16ddb0854ab5cfe\",\"row_tax\":\"0.0000\",\"subtotal\":\"95000.0000\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `sma_categories`
--

CREATE TABLE `sma_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`, `slug`, `description`) VALUES
(1, 'G01', 'General', '7d7d5d9156717f196f3739f6292477a9.jpg', 0, 'general', 'general'),
(2, 'K001', 'Kulit', NULL, 0, 'kulit', 'Kulit');

-- --------------------------------------------------------

--
-- Table structure for table `sma_combo_items`
--

CREATE TABLE `sma_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_companies`
--

CREATE TABLE `sma_companies` (
  `id` int(11) NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `invoice_footer` text DEFAULT NULL,
  `payment_term` int(11) DEFAULT 0,
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT 0,
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `gst_no`) VALUES
(1, NULL, 'biller', NULL, NULL, 'Yons Kulit', 'Yons Kulit', '', 'Jalan Tanggul, RT 07 RW 04, Kelurahan Teluk Pucung', 'Bekasi Utara', 'Jawa Barat', '17121', 'Indonesia', '087873643838', 'yonskulit0@gmail.com', '', '', '', '', '', '', 'PEMBAYARAN BISA DILAKUKAN MELALUI TRANSFER KE BCA 0661764987', 0, 'logo.jpg', 0, NULL, NULL, NULL, ''),
(2, 1, 'supplier', NULL, NULL, 'WHUB', 'Widodo Makmur Retailindo', '', 'sdad', 'ada', '', '', '', '123123132', 'allchickenmart@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(3, 1, 'customer', 1, 'General', 'Walk-in Client', 'Walk-in Client', '', '', '', '', '', '', '012345678', 'customer@tecdiary.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 1, 'Default', ''),
(49, 3, 'customer', 1, 'General', 'BAYU', 'PT ABC', '', 'graha widodo', 'jakarta', 'DKI JAKARTA', '', '', '081212345678', 'bayu@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(50, 3, 'customer', 1, 'General', 'BAYU', 'BAYU', '', 'graha widodo', 'jakarta', 'DKI JAKARTA', '', '', '081212345678', 'bayu@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'WMEAT STORE', ''),
(47, 3, 'customer', 6, 'Ecommerce', 'tokped', 'tokped', '', 'tokped', 'jakarta', '', '', '', '123456', 'tokped@admin.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 2, 'Ecommerce', ''),
(48, 4, 'supplier', NULL, NULL, 'PT Cianjur Arta Makmur', 'PT Cianjur Arta Makmur', '', 'The Beige Cipayung ', 'Jakarta', '', '', '', '(+62) 817-1095-54', 'WMeat.Official@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, ''),
(51, 4, 'supplier', NULL, NULL, 'PT CAM', 'PT CIANJUR ARTHA MAKMUR', '-', 'cikalong kulon, cianjur', 'jawa barat', 'Jawa Barat', '', 'Indonesia', '+62 12345678', 'XXX@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, NULL, NULL, '-'),
(52, 3, 'customer', 1, 'General', 'Haji Dida', 'Haji Dida', '', 'Purwakarta', 'Bandung barat', 'Jawa barat', '', '', '+62 853-1688-7749', 'HajiDida@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 2, 'Industri Samak', ''),
(53, 3, 'customer', 1, 'General', 'Cianjur', 'Cianjur', '', 'cikalong kulon, cianjur', 'cianjur', 'Jawa Barat', '', '', '021', 'cianjur@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'Pengrajin Krupuk', ''),
(54, 3, 'customer', 1, 'General', 'Tangerang', 'Tangerang', '', 'Tangerang ', 'Tangerang', 'Banten', '', 'Indonesia', '021', 'Tangerang@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 3, 'Pengrajin Krupuk', ''),
(55, 3, 'customer', 1, 'General', 'Asep', 'Asep', '', 'Subang', 'Subang', 'Jawa Barat', '', 'Indonesia', '021', 'Asep@gmail.com', '', '', '', '', '', '', NULL, 0, 'logo.png', 0, NULL, 5, 'Agen', '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_costing`
--

CREATE TABLE `sma_costing` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT 0,
  `overselling` tinyint(1) DEFAULT 0,
  `option_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(6, '2021-10-08', 50, 6, 5, 21, 1.0000, 0.0000, 0.0000, 90000.0000, 90000.0000, 5.0000, 1, 0, NULL),
(7, '2021-10-08', 70, 7, 6, 34, 1.0000, 0.0000, 0.0000, 5000.0000, 5000.0000, 14.0000, 1, 0, NULL),
(8, '2022-01-06', 1, 1, 1, 5, 335.0000, 12000.0000, 12000.0000, 14000.0000, 14000.0000, 218.3000, 1, 0, NULL),
(9, '2022-01-06', 1, 2, 2, 5, 218.3000, 12000.0000, 12000.0000, 14000.0000, 14000.0000, 0.0000, 1, 0, NULL),
(10, '2022-01-06', 1, 2, 2, 8, 154.7000, 12000.0000, 12000.0000, 14000.0000, 14000.0000, 345.3000, 1, 0, NULL),
(11, '2022-01-06', 2147483647, 3, 3, NULL, 334.0000, 0.0000, 0.0000, 18500.0000, 18500.0000, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_currencies`
--

CREATE TABLE `sma_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 0,
  `symbol` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`, `symbol`) VALUES
(2, 'IDR', 'Rupiah', 1.0000, 0, 'Rp');

-- --------------------------------------------------------

--
-- Table structure for table `sma_customer_groups`
--

CREATE TABLE `sma_customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(2, 'Reseller', -5),
(3, 'Distributor', -15),
(4, 'New Customer (+10)', 10),
(5, 'WMEAT STORE', 0),
(6, 'Ecommerce', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_date_format`
--

CREATE TABLE `sma_date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `sma_deliveries`
--

CREATE TABLE `sma_deliveries` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_deposits`
--

CREATE TABLE `sma_deposits` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expenses`
--

CREATE TABLE `sma_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expense_categories`
--

CREATE TABLE `sma_expense_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_expense_categories`
--

INSERT INTO `sma_expense_categories` (`id`, `code`, `name`) VALUES
(1, '99', 'Category'),
(2, 'K1', 'Upah tenaga sasap');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_cards`
--

CREATE TABLE `sma_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_card_topups`
--

CREATE TABLE `sma_gift_card_topups` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_groups`
--

CREATE TABLE `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'customer', 'Customer'),
(4, 'supplier', 'Supplier'),
(5, 'sales', 'Sales Staff'),
(6, 'manajer', 'Manajer'),
(7, 'kasir', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `sma_login_attempts`
--

CREATE TABLE `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_migrations`
--

CREATE TABLE `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Table structure for table `sma_notifications`
--

CREATE TABLE `sma_notifications` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT 3
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_order_ref`
--

CREATE TABLE `sma_order_ref` (
  `ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT 1,
  `qu` int(11) NOT NULL DEFAULT 1,
  `po` int(11) NOT NULL DEFAULT 1,
  `to` int(11) NOT NULL DEFAULT 1,
  `pos` int(11) NOT NULL DEFAULT 1,
  `do` int(11) NOT NULL DEFAULT 1,
  `pay` int(11) NOT NULL DEFAULT 1,
  `re` int(11) NOT NULL DEFAULT 1,
  `rep` int(11) NOT NULL DEFAULT 1,
  `ex` int(11) NOT NULL DEFAULT 1,
  `ppay` int(11) NOT NULL DEFAULT 1,
  `qa` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2015-03-01', 6, 1, 2, 1, 6, 1, 9, 1, 1, 1, 3, 35);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pages`
--

CREATE TABLE `sma_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(180) NOT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `body` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_no` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_payments`
--

CREATE TABLE `sma_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT 0.0000,
  `pos_balance` decimal(25,4) DEFAULT 0.0000,
  `approval_code` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`) VALUES
(4, '2021-10-08 07:06:46', 5, NULL, NULL, 'SI2021/10/0004', NULL, 'cash', '', '', '', '', '', '', 12000.0000, NULL, 1, NULL, 'received', '', 12000.0000, -78000.0000, NULL),
(5, '2021-10-08 09:02:39', 6, NULL, NULL, 'SI2021/10/0005', NULL, 'cash', '', '', '', '', '', '', 5000.0000, NULL, 1, NULL, 'received', '', 5000.0000, 0.0000, NULL),
(6, '2022-01-07 04:00:00', NULL, NULL, 3, 'PI2022/01/0001', NULL, 'cash', '', '', '', '', '', 'Visa', 6000000.0000, NULL, 6, NULL, 'sent', '', 0.0000, 0.0000, NULL),
(7, '2022-01-07 04:00:00', NULL, NULL, 2, 'PI2022/01/0002', NULL, 'cash', '', '', '', '', '', 'Visa', 6636000.0000, NULL, 6, NULL, 'sent', '', 0.0000, 0.0000, NULL),
(8, '2022-01-06 16:55:00', 3, NULL, NULL, 'SI2022/01/0006', NULL, 'cash', '', '', '', '', '', 'Visa', 6179000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(9, '2022-01-06 16:00:00', 2, NULL, NULL, 'SI2022/01/0007', NULL, 'cash', '', '', '', '', '', 'Visa', 5222000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL),
(10, '2022-01-06 16:55:00', 1, NULL, NULL, 'SI2022/01/0008', NULL, 'cash', '', '', '', '', '', 'Visa', 4690000.0000, NULL, 6, NULL, 'received', '', 0.0000, 0.0000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_paypal`
--

CREATE TABLE `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT 2.0000,
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT 3.9000,
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT 4.4000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 0, 'mypaypal@paypal.com', 'USD', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_permissions`
--

CREATE TABLE `sma_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT 0,
  `products-add` tinyint(1) DEFAULT 0,
  `products-edit` tinyint(1) DEFAULT 0,
  `products-delete` tinyint(1) DEFAULT 0,
  `products-cost` tinyint(1) DEFAULT 0,
  `products-price` tinyint(1) DEFAULT 0,
  `quotes-index` tinyint(1) DEFAULT 0,
  `quotes-add` tinyint(1) DEFAULT 0,
  `quotes-edit` tinyint(1) DEFAULT 0,
  `quotes-pdf` tinyint(1) DEFAULT 0,
  `quotes-email` tinyint(1) DEFAULT 0,
  `quotes-delete` tinyint(1) DEFAULT 0,
  `sales-index` tinyint(1) DEFAULT 0,
  `sales-add` tinyint(1) DEFAULT 0,
  `sales-edit` tinyint(1) DEFAULT 0,
  `sales-pdf` tinyint(1) DEFAULT 0,
  `sales-email` tinyint(1) DEFAULT 0,
  `sales-delete` tinyint(1) DEFAULT 0,
  `purchases-index` tinyint(1) DEFAULT 0,
  `purchases-add` tinyint(1) DEFAULT 0,
  `purchases-edit` tinyint(1) DEFAULT 0,
  `purchases-pdf` tinyint(1) DEFAULT 0,
  `purchases-email` tinyint(1) DEFAULT 0,
  `purchases-delete` tinyint(1) DEFAULT 0,
  `transfers-index` tinyint(1) DEFAULT 0,
  `transfers-add` tinyint(1) DEFAULT 0,
  `transfers-edit` tinyint(1) DEFAULT 0,
  `transfers-pdf` tinyint(1) DEFAULT 0,
  `transfers-email` tinyint(1) DEFAULT 0,
  `transfers-delete` tinyint(1) DEFAULT 0,
  `customers-index` tinyint(1) DEFAULT 0,
  `customers-add` tinyint(1) DEFAULT 0,
  `customers-edit` tinyint(1) DEFAULT 0,
  `customers-delete` tinyint(1) DEFAULT 0,
  `suppliers-index` tinyint(1) DEFAULT 0,
  `suppliers-add` tinyint(1) DEFAULT 0,
  `suppliers-edit` tinyint(1) DEFAULT 0,
  `suppliers-delete` tinyint(1) DEFAULT 0,
  `sales-deliveries` tinyint(1) DEFAULT 0,
  `sales-add_delivery` tinyint(1) DEFAULT 0,
  `sales-edit_delivery` tinyint(1) DEFAULT 0,
  `sales-delete_delivery` tinyint(1) DEFAULT 0,
  `sales-email_delivery` tinyint(1) DEFAULT 0,
  `sales-pdf_delivery` tinyint(1) DEFAULT 0,
  `sales-gift_cards` tinyint(1) DEFAULT 0,
  `sales-add_gift_card` tinyint(1) DEFAULT 0,
  `sales-edit_gift_card` tinyint(1) DEFAULT 0,
  `sales-delete_gift_card` tinyint(1) DEFAULT 0,
  `pos-index` tinyint(1) DEFAULT 0,
  `sales-return_sales` tinyint(1) DEFAULT 0,
  `reports-index` tinyint(1) DEFAULT 0,
  `reports-warehouse_stock` tinyint(1) DEFAULT 0,
  `reports-quantity_alerts` tinyint(1) DEFAULT 0,
  `reports-expiry_alerts` tinyint(1) DEFAULT 0,
  `reports-products` tinyint(1) DEFAULT 0,
  `reports-daily_sales` tinyint(1) DEFAULT 0,
  `reports-monthly_sales` tinyint(1) DEFAULT 0,
  `reports-sales` tinyint(1) DEFAULT 0,
  `reports-payments` tinyint(1) DEFAULT 0,
  `reports-purchases` tinyint(1) DEFAULT 0,
  `reports-profit_loss` tinyint(1) DEFAULT 0,
  `reports-customers` tinyint(1) DEFAULT 0,
  `reports-suppliers` tinyint(1) DEFAULT 0,
  `reports-staff` tinyint(1) DEFAULT 0,
  `reports-register` tinyint(1) DEFAULT 0,
  `sales-payments` tinyint(1) DEFAULT 0,
  `purchases-payments` tinyint(1) DEFAULT 0,
  `purchases-expenses` tinyint(1) DEFAULT 0,
  `products-adjustments` tinyint(1) NOT NULL DEFAULT 0,
  `bulk_actions` tinyint(1) NOT NULL DEFAULT 0,
  `customers-deposits` tinyint(1) NOT NULL DEFAULT 0,
  `customers-delete_deposit` tinyint(1) NOT NULL DEFAULT 0,
  `products-barcode` tinyint(1) NOT NULL DEFAULT 0,
  `purchases-return_purchases` tinyint(1) NOT NULL DEFAULT 0,
  `reports-expenses` tinyint(1) NOT NULL DEFAULT 0,
  `reports-daily_purchases` tinyint(1) DEFAULT 0,
  `reports-monthly_purchases` tinyint(1) DEFAULT 0,
  `products-stock_count` tinyint(1) DEFAULT 0,
  `edit_price` tinyint(1) DEFAULT 0,
  `returns-index` tinyint(1) DEFAULT 0,
  `returns-add` tinyint(1) DEFAULT 0,
  `returns-edit` tinyint(1) DEFAULT 0,
  `returns-delete` tinyint(1) DEFAULT 0,
  `returns-email` tinyint(1) DEFAULT 0,
  `returns-pdf` tinyint(1) DEFAULT 0,
  `reports-tax` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `returns-index`, `returns-add`, `returns-edit`, `returns-delete`, `returns-email`, `returns-pdf`, `reports-tax`) VALUES
(1, 5, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 7, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_register`
--

CREATE TABLE `sma_pos_register` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2021-02-15 03:31:58', 1, 0.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021-10-04 07:14:27', 6, 10000.0000, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_settings`
--

CREATE TABLE `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT 1,
  `paypal_pro` tinyint(1) DEFAULT 0,
  `stripe` tinyint(1) DEFAULT 0,
  `rounding` tinyint(1) DEFAULT 0,
  `char_per_line` tinyint(4) DEFAULT 42,
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `after_sale_page` tinyint(1) DEFAULT 0,
  `item_order` tinyint(1) DEFAULT 0,
  `authorize` tinyint(1) DEFAULT 0,
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT 1,
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT 0,
  `customer_details` tinyint(1) DEFAULT NULL,
  `local_printers` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`, `local_printers`) VALUES
(1, 22, 20, 2, 3, 1, '1', '', '', '', '', '1', 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 0, NULL, 0, 'default', 1, 0, 0, 2, 42, '12345678', 'purchase_code', 'envato_username', '3.4.25', 0, 0, 0, '', 1, 1, 'null', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_price_groups`
--

CREATE TABLE `sma_price_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(1, 'Default'),
(2, 'Industri Samak'),
(3, 'Pengrajin Krupuk'),
(5, 'Agen');

-- --------------------------------------------------------

--
-- Table structure for table `sma_printers`
--

CREATE TABLE `sma_printers` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_printers`
--

INSERT INTO `sma_printers` (`id`, `title`, `type`, `profile`, `char_per_line`, `path`, `ip_address`, `port`) VALUES
(1, 'POS ', 'windows', 'default', 0, 'smb://ITPC//POS80', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_products`
--

CREATE TABLE `sma_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT 20.0000,
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT 1,
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT 0,
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT 0,
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL,
  `sale_unit` int(11) DEFAULT NULL,
  `purchase_unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `slug` varchar(55) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `weight` decimal(10,4) DEFAULT NULL,
  `hsn_code` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0,
  `second_name` varchar(255) DEFAULT NULL,
  `hide_pos` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `slug`, `featured`, `weight`, `hsn_code`, `views`, `hide`, `second_name`, `hide_pos`) VALUES
(1, 'KB01', 'Kulit Basah Tua', 25, 12000.0000, 0.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', 345.3000, NULL, 0, '', NULL, 'code128', '', '<p>Kulit Basah</p>', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'kulit-basah-tua', NULL, 0.0000, NULL, 0, 0, 'Kulit Basah', 0),
(2, 'KB02', 'Kulit Basah Muda', 25, 17000.0000, 0.0000, 0.0000, 'no_image.png', 2, NULL, '', '', '', '', '', '', NULL, NULL, 1, '', NULL, 'code128', '', '', NULL, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 25, 25, 1, 'kulit-basah-muda', NULL, 0.0000, NULL, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_prices`
--

CREATE TABLE `sma_product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_prices`
--

INSERT INTO `sma_product_prices` (`id`, `product_id`, `price_group_id`, `price`) VALUES
(1, 70, 2, 6000.0000),
(2, 71, 2, 5000.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_variants`
--

CREATE TABLE `sma_product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_promos`
--

CREATE TABLE `sma_promos` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product2buy` int(11) NOT NULL,
  `product2get` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchases`
--

CREATE TABLE `sma_purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending' COMMENT 'Paid or pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchases`
--

INSERT INTO `sma_purchases` (`id`, `reference_no`, `date`, `supplier_id`, `supplier`, `warehouse_id`, `note`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `paid`, `status`, `payment_status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `payment_term`, `due_date`, `return_id`, `surcharge`, `return_purchase_ref`, `purchase_id`, `return_purchase_total`, `cgst`, `sgst`, `igst`) VALUES
(2, '-', '2022-01-06 11:00:00', 48, 'PT Cianjur Arta Makmur', 1, '', 6636000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 6636000.0000, 6636000.0000, 'received', 'paid', 6, 6, '2022-01-08 00:53:20', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL),
(3, '-', '2022-01-06 11:00:00', 48, 'PT Cianjur Arta Makmur', 1, '', 6000000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 6000000.0000, 6000000.0000, 'received', 'paid', 6, 6, '2022-01-08 00:56:43', NULL, 0, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_items`
--

CREATE TABLE `sma_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT 0.0000,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(8, 3, NULL, 1, 'KB01', 'Kulit Basah Tua', NULL, 12000.0000, 500.0000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 6000000.0000, 345.3000, '2022-01-06', 'received', 12000.0000, 12000.0000, 500.0000, NULL, NULL, 25, 'KG', 500.0000, NULL, NULL, NULL, NULL),
(5, 2, NULL, 1, 'KB01', 'Kulit Basah Tua', NULL, 12000.0000, 553.3000, 1, 0.0000, NULL, '', '0', 0.0000, NULL, 6636000.0000, 0.0000, '2022-01-06', 'received', 12000.0000, 12000.0000, 553.3000, NULL, NULL, 25, 'KG', 553.0000, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes`
--

CREATE TABLE `sma_quotes` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_quote_items`
--

CREATE TABLE `sma_quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_returns`
--

CREATE TABLE `sma_returns` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT 0.0000,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `paid` decimal(25,4) DEFAULT 0.0000,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_return_items`
--

CREATE TABLE `sma_return_items` (
  `id` int(11) NOT NULL,
  `return_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_sales`
--

CREATE TABLE `sma_sales` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT 0.0000,
  `order_discount` decimal(25,4) DEFAULT 0.0000,
  `product_tax` decimal(25,4) DEFAULT 0.0000,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT 0.0000,
  `total_tax` decimal(25,4) DEFAULT 0.0000,
  `shipping` decimal(25,4) DEFAULT 0.0000,
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` smallint(6) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `paid` decimal(25,4) DEFAULT 0.0000,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `api` tinyint(1) DEFAULT 0,
  `shop` tinyint(1) DEFAULT 0,
  `address_id` int(11) DEFAULT NULL,
  `reserve_id` int(11) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `manual_payment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `api`, `shop`, `address_id`, `reserve_id`, `hash`, `manual_payment`, `cgst`, `sgst`, `igst`, `payment_method`) VALUES
(1, '2022-01-06 16:55:00', 'SO2022/01/0002', 53, 'Cianjur', 1, 'WMEAT', 1, '', '', 4690000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 4690000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 335, 0, 4690000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'ad549f8dd1670f99a1150ee68fa221bb41d5d1dafb04bb3fdbd8f22066246a0d', NULL, NULL, NULL, NULL, NULL),
(2, '2022-01-06 16:55:00', 'SO2022/01/0003', 54, 'Tangerang', 1, 'WMEAT', 1, '', '', 5222000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 5222000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 373, 0, 5222000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'e5228d932b9215cbf3c69eccc2a75855d3b1ce1f19a2408c1c7198c03bf48e37', NULL, NULL, NULL, NULL, NULL),
(3, '2022-01-06 16:55:00', 'SO2022/01/0004', 55, 'Asep', 1, 'WMEAT', 1, '', '', 6179000.0000, 0.0000, '', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 6179000.0000, 'completed', 'paid', 0, NULL, 6, NULL, NULL, 334, 0, 6179000.0000, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0, 0, NULL, NULL, 'e6d2f60864e5a470f17ddbbcecd96c6638c3a71a49137b83c99214406bb802af', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_items`
--

CREATE TABLE `sma_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`, `gst`, `cgst`, `sgst`, `igst`) VALUES
(1, 1, 1, 'KB01', 'Kulit Basah Tua', 'standard', 0, 14000.0000, 14000.0000, 335.0000, 1, 0.0000, NULL, '', '0', 0.0000, 4690000.0000, '', 14000.0000, NULL, 25, 'KG', 335.0000, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'KB01', 'Kulit Basah Tua', 'standard', 0, 14000.0000, 14000.0000, 373.0000, 1, 0.0000, NULL, '', '0', 0.0000, 5222000.0000, '', 14000.0000, NULL, 25, 'KG', 373.0000, NULL, NULL, NULL, NULL, NULL),
(3, 3, 4294967295, 'SSP1', 'Sasapan kulit tua', 'manual', 0, 18500.0000, 18500.0000, 334.0000, 1, 0.0000, NULL, '', '0', 0.0000, 6179000.0000, '', 18500.0000, NULL, NULL, NULL, 334.0000, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sessions`
--

CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('b93a034ed8a0d0732c470e3e7a9b13830da6adea', '92.118.160.17', 1639880393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393838303339333b),
('09c423eb248d433feb11b46ea2a8f4575e298ccf', '92.118.160.17', 1639880391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393838303339313b),
('e572986803736e751d7cdce7d63496982c3c636f', '92.118.160.17', 1639880392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393838303339323b),
('bb1dedc2d3aedb6486cf37bd303d7bd4ba1bdcc3', '103.66.198.42', 1639734117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393733343130383b7265717565737465645f706167657c733a31343a2261646d696e2f70726f6475637473223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339373233303334223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('66c7e69c73be596abfa78b5c6792000dcef34e2a', '103.66.198.42', 1639714944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343934313b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339373134303933223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('b6d17db4aab3262815a74ad3eb1ed94aae2179b2', '103.66.198.42', 1639723037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393732333032383b7265717565737465645f706167657c733a33373a2261646d696e2f73797374656d5f73657474696e67732f637573746f6d65725f67726f757073223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339373133363333223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b),
('b4bcc4ac22ea09c3d84c7b2e6fb28fd7eb3c4d5c', '103.66.198.42', 1639714680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343638303b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393231333138223b6c6173745f69707c733a31343a223131302e3133382e39322e313539223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('5d78c7a4ac0caeb4e21233806c00b2de7f22f15d', '103.66.198.42', 1639714351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343335313b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363333393231333138223b6c6173745f69707c733a31343a223131302e3133382e39322e313539223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('d7e64e18809724eb15807d27a0f893e0b74a576a', '103.66.198.42', 1639714056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343035363b),
('be643f2485a51d4c8be59f273050325f5caa48a9', '103.66.198.42', 1639714061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343036313b),
('8241e5f72fd056108a00a7f6d1ed22714c245a9a', '103.66.198.42', 1639714061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343036313b),
('6789218095cefcebd7bc609a0569b2c9a4c971d1', '103.66.198.42', 1639714061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731343036313b),
('9bb96f2c8611e12119f6edcdb0b54a13b0d22b55', '103.66.198.42', 1639706155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393730363135343b),
('464379b971291f16ef196895ad2e1bcc21403d33', '103.66.198.42', 1639713971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393731333937313b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339363232393036223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b5f5f63695f766172737c613a333a7b733a353a226572726f72223b733a333a226f6c64223b733a373a22637372666b6579223b733a333a226e6577223b733a393a226373726676616c7565223b733a333a226e6577223b7d6572726f727c733a38303a22426964616e67206564697420757365722076616c69646174696f6e2070617373776f7264206c6162656c206861727573207365746964616b6e796120382070616e6a616e67206b6172616b7465722e0a223b637372666b65797c733a383a225679585763346e39223b6373726676616c75657c733a32303a2233717a5730536973434e38646779467461424a58223b),
('02d7e3ac2d43ab94a775eae941c7bfb01dfc4dce', '103.66.198.42', 1639648001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393634383030313b),
('d687cac896f1ce75a58e940c07a4fc9bf0b8d58d', '103.66.198.42', 1639648001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393634383030313b),
('22aed464f4412c97ada9b6f7de17d3c1dd37cf81', '103.66.198.42', 1639623094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632333039343b7265717565737465645f706167657c733a31333a2261646d696e2f77656c636f6d65223b),
('491c0437e92e873c4fa99dcf0fc64b6ba48025f6', '103.66.198.42', 1639623094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632333039343b),
('0c950ce69009b9746ced86a0966de56d4a322534', '103.162.237.45', 1639578580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393537383538303b),
('7f00af80fda1c09194c90fa7dc276b2483951580', '103.66.198.42', 1639621343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632313334333b),
('8125f2cdb3111f9f6ab236f37bec7a1b101c295f', '103.66.198.42', 1639621348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632313334333b),
('3b3722b4765bb7f4660d488c4994720df4690156', '103.66.198.42', 1639621846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632313834363b),
('2533a72b8cacdd39f20db0e5e68d4e2bfc87d7fe', '103.66.198.42', 1639553261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393535333235393b),
('4c59e8ed4b2ea699fe035bd22b9f44301566d71d', '103.66.198.42', 1639543198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534333139383b),
('1428bf743f3caef4a1dfefdace6584558030e217', '103.66.198.42', 1639543347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534333334373b),
('08baf24b4a59f9309125f3c39eab86f8d24db692', '103.66.198.42', 1639623095, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393632323930303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339343731373938223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c733a3135333a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f6a732f6a71756572792d322e302e332e6d696e2e6d6170223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('b54ea1ef748af841be6bc38c4d9b2d1c37f1bb80', '103.66.198.42', 1639471881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393437313838313b),
('df3eacdda2e2ac47ba54186b290bfab0e8d6bb7b', '103.66.198.42', 1639542445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534323434353b),
('a5d50343d5e8e4f5ac7080f9ef8d842948b023a1', '103.66.198.42', 1639542202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534323230323b),
('f926e683a3f9285364ac42136191eff548bdd2ae', '103.66.198.42', 1639543189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534333138393b),
('2c89f7398354cf87b16f53454e629752bf2e065f', '103.66.198.42', 1639544019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534333935303b),
('271a7d0ff0d1cbcf088b0587f1c98c8f29d4b5cf', '27.115.124.38', 1639183624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393138333632343b),
('ae11517d6bd121b35cac84754afd3fc7e91494c8', '103.66.198.42', 1639365659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393336353635383b),
('670f0bc2ef7532a5eae3d82602ecef34c3448ecf', '34.86.35.12', 1639426162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393432363136323b),
('755bd7534ccb7accbedbca83faa4716b0d2d071b', '103.66.198.42', 1639543950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393534333935303b),
('c920751538ee11a97b890468b177383b79319e71', '124.126.78.138', 1639066850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393036363835303b),
('04dc09ce76dd751b6bb30cebcb8f2aa9c60501fc', '61.164.47.194', 1639078550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393037383535303b),
('7d7f34bff5d6166933131632602571d5965f536e', '61.164.47.194', 1639078551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393037383535313b),
('dad7ae84de168a8888dd4618e370a6abac542e8a', '61.164.47.194', 1639099972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393039393937323b),
('8b768390355a18af2dbe3130dc341fce02c782bd', '124.126.78.138', 1639066845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393036363834353b),
('9b8902968c60cb5e2421a0da2823b7713b30f712', '124.126.78.138', 1639066836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393036363833363b),
('e774af41c2d772d24f8d9e2f2307e321712b095e', '182.118.85.66', 1638960348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383936303334353b),
('cc9a80f6131888b8cdc618fae41690b30a491c0c', '51.254.49.109', 1638961576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383936313537363b),
('c534f384d6b30647793046d5a2c8710e646cad11', '123.58.210.246', 1638961646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383936313634363b),
('47ab207865cb2bb5165f0ae01dc8dcddbcec59ed', '111.94.228.89', 1638966065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383936363036353b),
('fe943efc64552e0b56fee1f04fa3e68603c81ddf', '36.110.211.5', 1638959724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393732343b),
('9cd97685e6fff015a08781e46ed8a52b6350bf92', '171.13.14.36', 1638959832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393832323b),
('f0fe8728bf2d39e4f7d69e74b8de02245fd2b92e', '171.13.14.84', 1638959897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393839343b),
('4f64243c8405d542c26490e3ee000af0d699eb5b', '27.115.124.109', 1638959949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393934393b),
('0f5783afeab35743f237b73fd4f0f7f364d0fde6', '128.1.199.17', 1639006745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393030363734353b),
('77187d6e9f5538466a3e090a51fed1e486542cb0', '36.110.211.3', 1638959720, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393732303b),
('ed5e273ddf7099a56ffebfa2662ade11cd4c3ff2', '112.215.235.142', 1638946996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383934363939363b7265717565737465645f706167657c733a353a2261646d696e223b),
('c6cb9327fa7e5abd72f2de38afd1d042e6b549f3', '103.66.198.42', 1638945278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383934353237383b),
('002d2e58f698cfa5007ff79d8c5533a1c52b6238', '103.66.198.42', 1638946996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383934363939363b7265717565737465645f706167657c733a353a2261646d696e223b),
('acb65dcb033807e18b32e25bcf739fa366a71961', '36.110.211.3', 1638959718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393731383b),
('9b2f9678e3eeb9f0223075e71796612a0d04b1ba', '36.110.211.3', 1638959718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393731383b),
('7357f08f2b15397e624327465a23dcb53c7be8fa', '36.110.211.5', 1638959719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393731393b),
('0d4f1f724e007c697c246ddf7e17ed9978173766', '36.110.211.5', 1638959719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383935393731393b),
('3822a314f7d13dc899802774fbbc7633ddbed89d', '103.66.198.42', 1638936211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383933363231313b),
('60d3400cbf73bf72885b8d66fe0719a299835a50', '103.66.198.42', 1638938544, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383933383534343b),
('11df5af6fc4910f5d375e2a11ea5c771cbea4acc', '103.66.198.42', 1638938859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383933383835393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363338383733313132223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('02a1ef822a62e0441202f8fe497968f1e98067b1', '103.66.198.42', 1638945277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383934353237373b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363338383733313132223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('fa6a9406d32965a8cf70aa7a0f25d309832d24b5', '112.215.235.142', 1638942218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383934323231383b7265717565737465645f706167657c733a353a2261646d696e223b),
('0ce07eab3548a4d088c1f59659cf65700dca2bc1', '61.164.47.194', 1639999753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393939393735333b),
('7730dd0990d7ea91d214ad0fde396f258efac938', '61.164.47.194', 1639999754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393939393735343b),
('91c35a9708a864ccafb0ed35a1255225a83489ce', '61.164.47.194', 1639999754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633393939393735343b),
('8c9826a08dfd4b31be4a9b0900e43edf78f39f8e', '61.164.47.194', 1640021591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303032313539313b),
('c1e71f8de3feb6afa5b50f85d8b9a2cad8c4d7ce', '61.164.47.194', 1640021592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303032313539323b),
('6b832934c8e03b94e2c8f11bd96fffb77ed5628e', '61.164.47.194', 1640021592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303032313539323b),
('7692c1aa02a94626e423fb2d0bb3bc8474a2156e', '34.96.130.27', 1640048291, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303034383239313b),
('387609eb40bf18ffe21074e057d3fb0f52e2c919', '176.34.89.165', 1640095926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303039353932353b),
('1ad2dc50410fd2d0b3ab1dedfd2ea1799de9be41', '176.34.89.165', 1640095934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303039353933343b),
('64ea88b43f471729476c3e6e24bf29afd3e6e619', '51.158.127.119', 1640240387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303234303338373b),
('6b4233a03b30f2dc29db57b8eba8d7dc5d73a77d', '34.86.35.3', 1640350710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303335303731303b),
('eb0531d3610162c676dfea9f1588528946898b8f', '34.86.35.12', 1640702923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303730323932333b),
('d6bf452f91688f8ac0beaacf7b47c2fba1b4d6aa', '51.15.251.143', 1640920481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303932303438313b),
('8314b8e0d1a922df47215c6ef16f6c42731f62f4', '34.86.35.0', 1641005077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313030353037373b),
('83dbdde16e1c66138a67df6b879d92111588aa3c', '92.118.160.37', 1641185233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313138353233323b),
('e75e8743a590402f850950af55f8d2e7d65a625f', '92.118.160.37', 1641185233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313138353233333b),
('e7102bbe900cc12bda97af1b452d60417866f6a8', '92.118.160.37', 1641185234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313138353233343b),
('e587c4ea6368a6a2a9b3ae9c8cc6d0888cacd30d', '45.129.18.26', 1641286281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313238363238313b),
('841f9bb95f260b55cee89e5aa8d9acc143612531', '45.129.18.186', 1641286282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313238363238323b),
('f5c95c137169599997753f213762ed063ee20e69', '45.129.18.183', 1641286282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313238363238323b),
('74d7c90b6ffe64837a68ba2d9428c9917176873c', '103.66.198.42', 1641444943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313434343934333b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339373134393434223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('6aeb4fc530a8185112f80f4108d4e7f18f1b583a', '103.66.198.42', 1641445044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313434353034343b),
('30c2f705195479e72db46835f0e0410b2881aacc', '34.96.130.1', 1641505298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313530353239383b),
('63370c1035c220ffbc3dbef34dba27665aead1e8', '111.94.228.89', 1641602718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630323731383b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a227279786d4e74453865475a705464316c77424635223b),
('246c4a30e3587a573b24c6de281189362952bfb6', '111.94.228.89', 1641603031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630333033313b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a224a7943325a6257526a4c44753564634131384e76223b),
('005f95c02c57af85514cefb48b1aa82c5e13bdc2', '111.94.228.89', 1641603363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630333336333b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22576879477a55754e66724b637344613652385076223b),
('e948a8821ec858b15faa76141de7c434fd5ca09d', '111.94.228.89', 1641603753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630333735333b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22416338366b515378354d5a55623467486664734b223b),
('ca18a2535410bec007b32efd3a6932e9e0aa9d8d', '111.94.228.89', 1641604071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630343037313b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22416338366b515378354d5a55623467486664734b223b),
('a74c65ccafc6ecdc25ede721c60e3745714a91c3', '111.94.228.89', 1641605386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630353338363b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22416338366b515378354d5a55623467486664734b223b),
('e0f081c70b17ba22f808c83bbefde509e919a059', '111.94.228.89', 1641606630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630363633303b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a2257416f5534503551614473765448644e53424639223b),
('1f2db9dabe4f8b9605667ae3fe053e11d9f4b184', '111.94.228.89', 1641608129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630383132393b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431343434363335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a2257416f5534503551614473765448644e53424639223b),
('107dd814ecc8804beb4d80417db7d78a7a8e0b92', '111.94.228.89', 1641608140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313630383134303b),
('cad507e1ac7d41d129ca5f154b8867ab806911f5', '164.90.143.201', 1641618556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313631383535363b),
('8521115372f3e39670a161d912e13774417bf629', '45.129.18.174', 1641719831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313731393833313b),
('863394d9d07eb8e8cd0f51ae18319fcec24f0e96', '45.129.18.88', 1641719833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313731393833333b),
('41ba314f466ab576b289c1132b589070bb37a741', '45.129.18.199', 1641719833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313731393833333b),
('1e49ec490a3090f113c1a2f882ebe927238aab5f', '111.94.228.89', 1641770868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313737303738313b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431363032323435223b6c6173745f69707c733a31333a223131312e39342e3232382e3839223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('b5623dc14d7601d6ead6d3bd0c84895acfb66ccd', '114.124.217.85', 1641788853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313738383835333b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431373730383139223b6c6173745f69707c733a31333a223131312e39342e3232382e3839223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('5490e002f507d885093cdf78c4f8743b9071c858', '114.124.217.85', 1641790313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313739303331333b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431373730383139223b6c6173745f69707c733a31333a223131312e39342e3232382e3839223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b),
('7f9ec42c630c74b5879dc8e06d49b65d7169c6ae', '114.124.217.85', 1641790464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313739303331333b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431373730383139223b6c6173745f69707c733a31333a223131312e39342e3232382e3839223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b7265717565737465645f706167657c733a31333a2273686f702f70726f6475637473223b),
('f46ed48a2153a180086d4c2d1f6e74a48e414174', '111.94.228.89', 1641817824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313831373832333b7265717565737465645f706167657c733a31313a2261646d696e2f73616c6573223b),
('9a307a086a77e3fd4d266f63036bb43311d9db2f', '92.118.160.41', 1641844827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313834343832373b),
('4457361bb9a4aefc37313b62550502b4c7d0c562', '92.118.160.41', 1641844829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313834343832393b),
('a6393ad716c2ed54ef56721885f8950ed7d22d7d', '92.118.160.41', 1641844830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313834343833303b),
('3d33c0c5c55dd91f95b460e49e447d12ddad8854', '92.118.160.37', 1641857651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313835373635313b),
('c2e161ae6c64632fd33ac9318026689d103f6fd1', '92.118.160.37', 1641857652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313835373635323b),
('fc37dd9c67b035ca2e5adbca9035f6600f7fbd46', '92.118.160.37', 1641857662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313835373636323b),
('26efb6e9418f85db7ae055c633e3f3582f476d7c', '103.66.198.42', 1641864768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836343736383b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363339373334313134223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b6c6173745f61637469766974797c693a313634313836343431363b),
('dcadbc9cb5fef15ce2032cf286c6d7048b5862d5', '103.66.198.42', 1641864470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836343336373b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431373838353738223b6c6173745f69707c733a31343a223131342e3132342e3231372e3835223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22446774536a713778627731754d51684358355a76223b),
('b9cce1553e42479469bb21fa679ea11dc6512075', '103.66.198.42', 1641864786, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836343535343b6964656e746974797c733a343a22796f6e6f223b757365726e616d657c733a343a22796f6e6f223b656d61696c7c733a31393a22796f6e6f40796f6e732d6b756c69742e636f6d223b757365725f69647c733a313a2236223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383634333935223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2231223b616c6c6f775f646973636f756e747c733a313a2231223b62696c6c65725f69647c733a313a2231223b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6572726f727c4e3b),
('d87dd9bb282684817a7aef6a870ca046455c3fef', '156.67.209.1', 1641865118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353131383b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('17d06754c5acb734f8df820f431bdbffd90ccc43', '156.67.209.1', 1641865118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353131383b),
('10800ce2fb7660b53626327b41ae015ed2e52e06', '103.66.198.42', 1641865327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353332373b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383634333932223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634313836353037333b),
('f5f0b8b3cb6418248ba54e30c82170f28e361430', '156.67.209.1', 1641865117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353131373b),
('b71cab537ba74eac32329eb06e24625d828a3b24', '156.67.209.1', 1641865118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353131383b),
('80a68cb10d002eed6b5ec1fc1595c001d449a6ec', '156.67.209.1', 1641865118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353131383b),
('0a7a1bbb40a78f06e0b26c6df5276ee51631cbbb', '156.67.209.1', 1641865120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353132303b),
('b6ce3ba242bfe5b379cbb347dad537859bdef1ea', '156.67.209.1', 1641865120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353132303b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('0413b3853918f28e49f8f119e0047431c439995d', '156.67.209.1', 1641865120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353132303b),
('5fba578973daab58ab75afadac07617981d89592', '156.67.209.1', 1641865120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353132303b),
('a9bd50a78f44fe9c98bc5e5d68062a624f51ca4d', '156.67.209.1', 1641865120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353132303b),
('6e3a6c47ba782b4cebe3074b8a49087bf819fdf8', '103.66.198.42', 1641865661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836353636313b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383634333932223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634313836353037333b),
('4d58514c6a80c592e01901a547db025a3a8cf183', '103.66.198.42', 1641866099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836363039393b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383634333932223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6c6173745f61637469766974797c693a313634313836353037333b),
('68ec982aab4f40678581b3b0e57dfd931ce360c2', '103.66.198.42', 1641866099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313836363039393b),
('4b20ed9c962c5a6d1591deb5804927a244e268e4', '103.66.198.42', 1641875790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837353739303b),
('3a77dc8b8401611a3b51f2ee306be6e096560fe9', '103.66.198.42', 1641876122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837363132323b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383735383031223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a2251336438706b4966446f5a4d67567a3771554630223b),
('4e23f443583d450ed9610655177f80704f93d368', '103.66.198.42', 1641876112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837363131323b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383634393335223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b6d6573736167657c733a32373a223c703e416e646120626572686173696c206d6173756b2e3c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('b920ebacacd030c9281b492f813623115342a199', '103.66.198.42', 1641876730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837363733303b7265717565737465645f706167657c733a32303a2261646d696e2f62696c6c6572732f656469742f31223b),
('709e7a063e6a2f482f07430ac54efebdd05755e2', '103.66.198.42', 1641876440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837363434303b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383735383031223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22676d56345a7a736e694b37633945624e6674646c223b72656d6f76655f706f6c737c733a313a2231223b),
('741a26da07b6477a88d886ce32b0a64f82c86eef', '103.66.198.42', 1641880384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303338343b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383735383031223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22676d56345a7a736e694b37633945624e6674646c223b),
('2ccc373e49cc49c83ce95fa4c90f0f73ec508ecf', '103.66.198.42', 1641877152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837373135323b7265717565737465645f706167657c733a32303a2261646d696e2f62696c6c6572732f656469742f31223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383735383034223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('0dadb3b79b8172b8d3bb606d6c505f6fbb680fa8', '103.66.198.42', 1641876767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837363736373b7265717565737465645f706167657c733a31313a2261646d696e2f73616c6573223b),
('1e16bd4ac113e2154d765d15e6ba5bec6f7d9332', '103.66.198.42', 1641879556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837393535363b7265717565737465645f706167657c733a31333a2261646d696e2f77656c636f6d65223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383737323536223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('c8ce070de611d4541024a016a2691edc033123da', '103.66.198.42', 1641877261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313837373137323b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383736373431223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('bd40ab90d9c07f3dc86bef9b8697bdb0ce155eb4', '103.66.198.42', 1641880249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303234393b7265717565737465645f706167657c733a31333a2261646d696e2f77656c636f6d65223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383737323536223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('ed5b64ed8a8b9b8870a38f6567851621b060941a', '103.66.198.42', 1641880978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303937383b7265717565737465645f706167657c733a31333a2261646d696e2f77656c636f6d65223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383737323536223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('b0ac9cc9301066cf7e0d7647ce64f7bae8188b93', '156.67.209.1', 1641880270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303237303b);
INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('04cdc64bee949e25fb763c8bd52a600a1222db2c', '156.67.209.1', 1641880271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303237313b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('444ff870ffcef0993003fbf23d31f7e02772d255', '156.67.209.1', 1641880271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303237313b),
('29e32da5615dd3921f033426faa30d18875aee4f', '156.67.209.1', 1641880271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303237313b),
('f2d1bad46d75258116e95ff6745e350e7c1e5ca0', '156.67.209.1', 1641880271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303237313b),
('e73303e51b5b7091be57345695ba8d1e2e8bd1e3', '103.66.198.42', 1641881213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313231333b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383735383031223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22676d56345a7a736e694b37633945624e6674646c223b),
('da4479ff70424e518fc0f2cc46feb4320d45eb6b', '156.67.209.1', 1641880413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303431333b),
('09b2bc6aa3624e74f14840603eeef4138f029d77', '156.67.209.1', 1641880413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303431333b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('f5ac4693473f5491f1fe65dd1e7e02bf70225390', '156.67.209.1', 1641880413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303431333b),
('da69a632403dd543fd939d516852c3037ec4d178', '156.67.209.1', 1641880413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303431333b),
('c19e7e9341fcb347952c3caaef6c1b6308e02eae', '156.67.209.1', 1641880413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303431333b),
('ca91209acb643cea7ea45388a88b991e440dc057', '103.66.198.42', 1641881167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838303937383b7265717565737465645f706167657c733a31333a2261646d696e2f77656c636f6d65223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383737323536223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('081b74d9c81c2a45a44b1a93988af3a52be778b0', '156.67.209.1', 1641881025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313032353b),
('8e25a350fc9cce564719fd7d5025a466a8f208b3', '156.67.209.1', 1641881025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313032353b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('bd5c033e969fef37709ddfc5a8f1f39e42c368b2', '156.67.209.1', 1641881026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313032363b),
('4d9353669560bef264f8159eb398e08f785ceeb6', '156.67.209.1', 1641881026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313032363b),
('c18d1d570c32ef939605bba33e83bacaa721de3b', '156.67.209.1', 1641881026, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313032363b),
('7705ed4b7410ed88bdc99a88d23c2f7fd19aac9b', '156.67.209.1', 1641881139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313133393b),
('966b2b2618c93bd3245257854d19aa4eb726068f', '156.67.209.1', 1641881139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313133393b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('a301404dc40d31e6d3f1d1822224a5d1e6db38d5', '156.67.209.1', 1641881139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313133393b),
('2def30c00e74ff79bf8f68bdfe9a47a3ccc8a026', '156.67.209.1', 1641881139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313133393b),
('1ec018d0bf96aa127112476a2e52faeb054fe340', '156.67.209.1', 1641881139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313133393b),
('ae081c0c11265b0b5d97b6a64ce76d89a0c26383', '103.66.198.42', 1641881529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313231333b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31383a226f776e65724074656364696172792e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363431383735383031223b6c6173745f69707c733a31333a223130332e36362e3139382e3432223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b757365725f637372667c733a32303a22676d56345a7a736e694b37633945624e6674646c223b),
('6fd70b9888acb5b859da0f0529d4e4d76d53529c', '156.67.209.1', 1641881374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313337343b),
('9e0de4385b705e3a2a3e053aed0abe1cf31670a7', '156.67.209.1', 1641881374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313337343b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('cdfb469274a0fd024f16fdc8a671de47c7e6efe7', '156.67.209.1', 1641881374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313337343b),
('fe55760a930ddfb0868d55a6c50463eb6626cc90', '156.67.209.1', 1641881375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313337353b),
('4f2733f3eccd950286015923812592b9348a5f8d', '156.67.209.1', 1641881375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313337353b),
('164c0f93fc83dcece6ddf278d1f028f7daa12268', '156.67.209.1', 1641881492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313439323b),
('34f8018cde2bdbe1a7134d744ae79a296cc073c3', '156.67.209.1', 1641881492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313439323b6572726f727c733a3137393a223c68343e343034204e6f7420466f756e64213c2f68343e3c703e546865207061676520796f7520617265206c6f6f6b696e6720666f722063616e206e6f7420626520666f756e642e3c2f703e687474703a2f2f6170702e796f6e732d6b756c69742e636f6d2f7468656d65732f64656661756c742f61646d696e2f6173736574732f7374796c65732f7064662f666f6e74732f676c79706869636f6e732d68616c666c696e67732d726567756c61722e747466223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('e5da0dd1c1e87733829bf9f5f5fdf7395649f142', '156.67.209.1', 1641881492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313439323b),
('980a0274f1475980ab375ee84899ff96164814f8', '156.67.209.1', 1641881492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313439323b),
('55dbd6bea7009bd9b09e548b36ea0bfe2806fb42', '156.67.209.1', 1641881492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634313838313439323b);

-- --------------------------------------------------------

--
-- Table structure for table `sma_settings`
--

CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT 0,
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT 0,
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT 0,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT 0,
  `restrict_user` tinyint(4) NOT NULL DEFAULT 0,
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT 0,
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT 0,
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT 0,
  `captcha` tinyint(1) NOT NULL DEFAULT 1,
  `reference_format` tinyint(1) NOT NULL DEFAULT 1,
  `racks` tinyint(1) DEFAULT 0,
  `attributes` tinyint(1) NOT NULL DEFAULT 0,
  `product_expiry` tinyint(1) NOT NULL DEFAULT 0,
  `decimals` tinyint(2) NOT NULL DEFAULT 2,
  `qty_decimals` tinyint(2) NOT NULL DEFAULT 2,
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT 0,
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT 0,
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT 0,
  `sac` tinyint(1) DEFAULT 0,
  `display_all_products` tinyint(1) DEFAULT 0,
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT 0,
  `barcode_separator` varchar(2) NOT NULL DEFAULT '-',
  `set_focus` tinyint(1) NOT NULL DEFAULT 0,
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT 1,
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT 90,
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `apis` tinyint(1) NOT NULL DEFAULT 0,
  `state` varchar(100) DEFAULT NULL,
  `pdf_lib` varchar(20) DEFAULT 'dompdf'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `apis`, `state`, `pdf_lib`) VALUES
(1, 'logo.png', 'logo2.png', 'Yons Kulit', 'indonesian', 1, 0, 'IDR', 0, 10, '2.0.0', 0, 5, 'SO', 'PR', 'PO', 'TR', 'DO', 'SI', 'SR', 'RP', '', 1, 'default', 1, 1, 1, 1, 0, 0, 0, 1, 0, 'Asia/Jakarta', 1080, 1080, 150, 150, 1, 0, 0, 0, NULL, 'smtp', '/usr/sbin/sendmail', 'srv128.niagahoster.com', 'info@yons-kulit.com', 'yonskulit1234', '465', 'ssl', NULL, 1, 'yonskulit0@gmail.com', 0, 4, 1, 0, 2, 1, 1, 1, 2, 0, ',', '.', 0, 1, 'nulled', 'nulled', 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'Rp', 0, '-', 0, 3, 1, 'PI', 90, '', 0, 0, 'AN', 'dompdf');

-- --------------------------------------------------------

--
-- Table structure for table `sma_shop_settings`
--

CREATE TABLE `sma_shop_settings` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(55) NOT NULL,
  `description` varchar(160) NOT NULL,
  `warehouse` int(11) NOT NULL,
  `biller` int(11) NOT NULL,
  `about_link` varchar(55) NOT NULL,
  `terms_link` varchar(55) NOT NULL,
  `privacy_link` varchar(55) NOT NULL,
  `contact_link` varchar(55) NOT NULL,
  `payment_text` varchar(100) NOT NULL,
  `follow_text` varchar(100) NOT NULL,
  `facebook` varchar(55) NOT NULL,
  `twitter` varchar(55) DEFAULT NULL,
  `google_plus` varchar(55) DEFAULT NULL,
  `instagram` varchar(55) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `cookie_message` varchar(180) DEFAULT NULL,
  `cookie_link` varchar(55) DEFAULT NULL,
  `slider` text DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.4.25',
  `logo` varchar(55) DEFAULT NULL,
  `bank_details` varchar(255) DEFAULT NULL,
  `products_page` tinyint(1) DEFAULT NULL,
  `hide0` tinyint(1) DEFAULT 0,
  `products_description` varchar(255) DEFAULT NULL,
  `private` tinyint(1) DEFAULT 0,
  `hide_price` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_shop_settings`
--

INSERT INTO `sma_shop_settings` (`shop_id`, `shop_name`, `description`, `warehouse`, `biller`, `about_link`, `terms_link`, `privacy_link`, `contact_link`, `payment_text`, `follow_text`, `facebook`, `twitter`, `google_plus`, `instagram`, `phone`, `email`, `cookie_message`, `cookie_link`, `slider`, `shipping`, `purchase_code`, `envato_username`, `version`, `logo`, `bank_details`, `products_page`, `hide0`, `products_description`, `private`, `hide_price`) VALUES
(1, 'WMEAT STORE', 'Toko Daging', 1, 1, '', '', '', '', 'We accept Transfer or you can pay with your credit/debit cards.', 'Please click the link below to follow us on social media.', '#', '', '', '', '08111109554', 'admin@wmeat.id', 'We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.', '', '[{\"image\":\"e0575ef5b42f6ad7fa1934e22f2b8eac.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"77a111434cd27c1d67a68b637179fc14.jpg\",\"link\":\"\",\"caption\":\"\"},{\"image\":\"aef8f66d5c4d4327b78683ca44f23ebd.jpg\",\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"},{\"link\":\"\",\"caption\":\"\"}]', 0, '', 'envato_username', '2.0.0', 'logo.png', '', 0, 0, 'ada karena dipercaya', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_skrill`
--

CREATE TABLE `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 0, 'testaccount2@moneybookers.com', 'mbtest', 'USD', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sms_settings`
--

CREATE TABLE `sma_sms_settings` (
  `id` int(11) NOT NULL,
  `auto_send` tinyint(1) DEFAULT NULL,
  `config` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sms_settings`
--

INSERT INTO `sma_sms_settings` (`id`, `auto_send`, `config`) VALUES
(1, NULL, '{\"gateway\":\"Log\",\"Log\":{}');

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_counts`
--

CREATE TABLE `sma_stock_counts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `products` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `differences` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_stock_counts`
--

INSERT INTO `sma_stock_counts` (`id`, `date`, `reference_no`, `warehouse_id`, `type`, `initial_file`, `final_file`, `brands`, `brand_names`, `categories`, `category_names`, `note`, `products`, `rows`, `differences`, `matches`, `missing`, `created_by`, `updated_by`, `updated_at`, `finalized`) VALUES
(1, '2021-02-10 09:28:00', '', 1, 'full', '7424e1a1aa651546e3b9753dcb93488b.csv', NULL, '', '', '', '', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, '2021-10-05 04:46:00', '', 1, 'full', '9d04c6ef463ca91f6ab7b6e233899dcd.csv', NULL, '', '', '', '', NULL, 2, 2, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(3, '2021-10-08 07:03:00', '', 1, 'partial', 'f05d9dc3867467d5c438a008415229d8.csv', NULL, '1', 'WMEAT', '2', 'BEEF', NULL, 31, 31, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_count_items`
--

CREATE TABLE `sma_stock_count_items` (
  `id` int(11) NOT NULL,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_variant` varchar(55) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `expected` decimal(15,4) NOT NULL,
  `counted` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_bills`
--

CREATE TABLE `sma_suspended_bills` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `shipping` decimal(15,4) DEFAULT 0.0000,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_items`
--

CREATE TABLE `sma_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT 0.0000,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_tax_rates`
--

CREATE TABLE `sma_tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', 0.0000, '2'),
(2, 'VAT @10%', 'VAT10', 10.0000, '1'),
(3, 'GST @6%', 'GST', 6.0000, '1'),
(4, 'VAT @20%', 'VT20', 20.0000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfers`
--

CREATE TABLE `sma_transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT 0.0000,
  `attachment` varchar(55) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfer_items`
--

CREATE TABLE `sma_transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `gst` varchar(20) DEFAULT NULL,
  `cgst` decimal(25,4) DEFAULT NULL,
  `sgst` decimal(25,4) DEFAULT NULL,
  `igst` decimal(25,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_units`
--

CREATE TABLE `sma_units` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(1) DEFAULT NULL,
  `unit_value` varchar(55) DEFAULT NULL,
  `operation_value` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(21, 'Gram', 'Gram', NULL, NULL, NULL, NULL),
(22, 'KGs', 'Kilogram', 21, '*', NULL, '1000'),
(23, 'PCS', 'PCS', NULL, NULL, NULL, NULL),
(24, 'Ons', 'Ons', NULL, NULL, NULL, NULL),
(25, 'KG', 'Kilogram', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_users`
--

CREATE TABLE `sma_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `biller_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT 0,
  `show_price` tinyint(1) DEFAULT 0,
  `award_points` int(11) DEFAULT 0,
  `view_right` tinyint(1) NOT NULL DEFAULT 0,
  `edit_right` tinyint(1) NOT NULL DEFAULT 0,
  `allow_discount` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(1, 0x3130332e36362e3139382e3432, 0x0000, 'owner', 'a1a91380a8bf75d6792ebb3769baa14487f6b774', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '094f1a95d80432cae8c46f211e2dbd68cc70dab2', 1351661704, 1641877286, 1, 'Owner', 'Owner', 'WTouch', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(4, 0x3130332e36362e3139382e3432, 0x31332e31322e31302e31, 'sales', 'b25cad49eaca2f14789cafa0f9a80760bf0f6532', NULL, 'wmeat.shop@gmail.com', NULL, NULL, NULL, NULL, 1588179657, 1588910176, 1, 'sales', 'WMeat', 'WMeat', '123', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0),
(6, 0x3130332e36362e3139382e3432, 0x3130332e36362e3139382e3432, 'yono', '01deab9fc0b540990f7122fb935f1d1dcfe34413', NULL, 'yono@yons-kulit.com', NULL, NULL, NULL, NULL, 1588574208, 1641864573, 1, 'yono', 'Yons Kulit', 'Yons Kulit', '0', NULL, 'male', 1, 1, 1, NULL, 0, 0, 0, 0, 1, 1),
(7, NULL, 0x3130332e36362e3139382e3432, 'kasir', '336f67258f03959f629375a6f91c3b351989a097', NULL, 'kasir@wmeat.store', NULL, NULL, NULL, NULL, 1588909335, 1588909335, 1, 'kasir', 'wmeat', 'WMeat', '123456', NULL, 'male', 7, 1, 6, NULL, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_user_logins`
--

CREATE TABLE `sma_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(1, 1, NULL, 0x35382e31312e32372e313232, 'owner@tecdiary.com', '2019-10-22 04:21:08'),
(5, 1, NULL, 0x3a3a31, 'owner@tecdiary.com', '2020-04-28 09:21:14'),
(6, 1, NULL, 0x3a3a31, 'owner', '2020-04-29 02:42:58'),
(7, 1, NULL, 0x3a3a31, 'owner', '2020-04-29 04:26:54'),
(8, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 08:08:57'),
(9, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 13:37:27'),
(10, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 14:33:30'),
(11, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 15:22:03'),
(12, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 15:33:14'),
(13, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 15:36:34'),
(14, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:16:26'),
(15, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:20:48'),
(16, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:23:45'),
(17, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:24:55'),
(18, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:29:01'),
(19, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:30:56'),
(20, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:32:21'),
(21, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:34:29'),
(22, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-29 16:36:11'),
(23, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 16:40:45'),
(24, 4, NULL, 0x31332e31322e31302e31, 'sales', '2020-04-29 17:01:16'),
(25, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-29 17:05:43'),
(26, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 02:54:26'),
(27, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 02:59:20'),
(28, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 04:40:19'),
(29, 5, NULL, 0x31332e31322e31302e31, 'anto@wmp-group.co.id', '2020-04-30 04:51:55'),
(30, 5, NULL, 0x31332e31322e31302e31, 'anto@wmp-group.co.id', '2020-04-30 09:56:06'),
(31, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 09:59:11'),
(32, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-30 11:15:51'),
(33, 2, NULL, 0x31332e31322e31302e31, 'arie', '2020-04-30 14:39:18'),
(34, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-04-30 14:44:35'),
(35, 1, NULL, 0x31332e31322e31302e31, 'owner', '2020-05-01 05:36:57'),
(36, 1, NULL, 0x3134302e3231332e352e313236, 'owner', '2020-05-02 21:23:20'),
(37, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-04 03:54:50'),
(38, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-04 06:20:21'),
(39, 6, NULL, 0x3130332e36362e3139382e3432, 'manajer', '2020-05-04 06:36:58'),
(40, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-04 08:34:33'),
(41, 1, NULL, 0x3131322e3231352e3230312e3233, 'owner', '2020-05-04 13:50:41'),
(42, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-05 02:40:32'),
(43, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-05 06:57:27'),
(44, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-05 07:15:22'),
(45, 1, NULL, 0x3130332e36362e3139382e3432, 'Owner', '2020-05-05 07:26:34'),
(46, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-06 04:11:35'),
(47, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:38:37'),
(48, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:44:48'),
(49, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:45:42'),
(50, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:50:59'),
(51, 4, NULL, 0x3130332e36362e3139382e3432, 'sales', '2020-05-08 03:51:27'),
(52, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:51:48'),
(53, 4, NULL, 0x3130332e36362e3139382e3432, 'sales', '2020-05-08 03:52:19'),
(54, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 03:52:42'),
(55, 4, NULL, 0x3130332e36362e3139382e3432, 'sales', '2020-05-08 03:56:16'),
(56, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 08:07:25'),
(57, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 09:22:08'),
(58, 1, NULL, 0x3130332e36362e3139382e3432, 'Owner', '2020-05-08 09:28:52'),
(59, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 09:31:21'),
(60, 8, NULL, 0x3130332e36362e3139382e3432, 'reginasahnita@gmail.com', '2020-05-08 09:33:22'),
(61, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-08 09:41:31'),
(62, 1, NULL, 0x3230322e38302e3231372e37, 'owner', '2020-05-10 09:49:48'),
(63, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-11 09:00:28'),
(64, 1, NULL, 0x3138302e3234332e3135342e323038, 'owner', '2020-05-12 06:22:35'),
(65, 1, NULL, 0x3138302e3234332e3135342e323038, 'owner', '2020-05-12 08:17:54'),
(66, 1, NULL, 0x3138302e3234332e3135342e323038, 'owner', '2020-05-12 08:37:56'),
(67, 1, NULL, 0x3134302e3231332e312e3532, 'owner', '2020-05-13 10:48:25'),
(68, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-05-14 04:29:32'),
(69, 1, NULL, 0x3131322e3231352e3230302e313438, 'owner', '2020-05-14 05:07:12'),
(70, 1, NULL, 0x3131322e3231352e3230302e313438, 'owner', '2020-05-14 05:08:05'),
(71, 1, NULL, 0x3131322e3231352e3230302e313438, 'owner', '2020-05-14 05:13:04'),
(72, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-06-05 08:44:30'),
(73, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2020-06-05 09:29:33'),
(74, 1, NULL, 0x3a3a31, 'owner', '2020-07-26 04:22:47'),
(75, 1, NULL, 0x3a3a31, 'owner', '2020-11-29 02:18:34'),
(76, 1, NULL, 0x3a3a31, 'owner', '2020-12-29 16:47:28'),
(77, 1, NULL, 0x3a3a31, 'owner', '2020-12-30 14:23:56'),
(78, 1, NULL, 0x3a3a31, 'owner', '2021-01-27 11:25:36'),
(79, 1, NULL, 0x3a3a31, 'owner', '2021-02-05 08:45:45'),
(80, 1, NULL, 0x3a3a31, 'owner', '2021-02-06 08:20:45'),
(81, 1, NULL, 0x3a3a31, 'owner', '2021-02-08 08:59:06'),
(82, 1, NULL, 0x3a3a31, 'owner', '2021-02-09 15:45:41'),
(83, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 02:04:57'),
(84, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 02:06:06'),
(85, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 04:29:01'),
(86, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 05:05:57'),
(87, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 05:10:39'),
(88, 6, NULL, 0x3a3a31, 'manajer', '2021-02-10 05:37:55'),
(89, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 07:36:55'),
(90, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 07:40:59'),
(91, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 09:17:53'),
(92, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 11:59:27'),
(93, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 11:59:48'),
(94, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-10 12:00:46'),
(95, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-10 12:03:59'),
(96, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:13:35'),
(97, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-10 12:15:10'),
(98, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:16:24'),
(99, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:20:16'),
(100, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:21:02'),
(101, 1, NULL, 0x3a3a31, 'owner', '2021-02-10 12:29:53'),
(102, 1, NULL, 0x3a3a31, 'owner', '2021-02-11 03:36:18'),
(103, 1, NULL, 0x3a3a31, 'owner', '2021-02-11 05:55:53'),
(104, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-15 03:31:05'),
(105, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-15 09:16:31'),
(106, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-02-16 03:14:37'),
(107, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-02-16 10:19:30'),
(108, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 03:15:53'),
(109, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 03:30:18'),
(110, 6, NULL, 0x3132352e3136362e39332e313833, 'manajer', '2021-10-04 03:31:01'),
(111, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 03:31:29'),
(112, 6, NULL, 0x3131302e3133382e38392e3432, 'manajer', '2021-10-04 03:40:10'),
(113, 6, NULL, 0x3131302e3133382e38392e3432, 'manajer ', '2021-10-04 03:48:54'),
(114, 6, NULL, 0x3131302e3133382e38392e3432, 'manajer', '2021-10-04 03:49:55'),
(115, 1, NULL, 0x3132352e3136362e39332e313833, 'owner', '2021-10-04 06:00:23'),
(116, 6, NULL, 0x33362e38332e3230342e3337, 'manajer', '2021-10-04 06:35:42'),
(117, 1, NULL, 0x3134302e3231332e33332e3531, 'owner', '2021-10-04 06:40:24'),
(118, 6, NULL, 0x3134302e3231332e302e323033, 'manajer ', '2021-10-04 06:55:15'),
(119, 6, NULL, 0x36312e39342e3231342e3832, 'manajer', '2021-10-04 07:24:37'),
(120, 1, NULL, 0x3131302e3133382e39312e313836, 'owner', '2021-10-05 02:41:36'),
(121, 6, NULL, 0x33362e37302e32382e323439, 'manajer', '2021-10-05 02:53:19'),
(122, 6, NULL, 0x33362e37302e32382e323439, 'Manajer', '2021-10-05 06:43:10'),
(123, 1, NULL, 0x3131302e3133382e39312e313836, 'owner', '2021-10-05 06:58:29'),
(124, 6, NULL, 0x3131302e3133382e39312e3131, 'manajer', '2021-10-06 02:02:21'),
(125, 6, NULL, 0x3131302e3133382e38372e3235, 'manajer', '2021-10-06 06:06:10'),
(126, 1, NULL, 0x3131302e3133382e39342e313337, 'owner', '2021-10-06 08:02:50'),
(127, 1, NULL, 0x3131302e3133382e39342e313337, 'owner', '2021-10-06 10:59:11'),
(128, 6, NULL, 0x3131302e3133382e39332e3831, 'manajer', '2021-10-07 01:50:59'),
(129, 1, NULL, 0x3131302e3133382e39332e3831, 'owner', '2021-10-07 03:29:51'),
(130, 1, NULL, 0x33362e38332e3230362e323435, 'owner', '2021-10-07 05:47:24'),
(131, 1, NULL, 0x3131302e3133382e39322e313839, 'owner', '2021-10-08 01:31:29'),
(132, 1, NULL, 0x3131302e3133382e39322e313839, 'owner', '2021-10-08 01:37:58'),
(133, 6, NULL, 0x3132352e3136362e37382e3939, 'manajer', '2021-10-08 03:11:10'),
(134, 6, NULL, 0x3132352e3136362e37382e3939, 'manajer', '2021-10-08 06:15:55'),
(135, 1, NULL, 0x3132352e3136362e37382e3939, 'owner', '2021-10-08 06:54:54'),
(136, 6, NULL, 0x3132352e3136362e37382e3939, 'manajer', '2021-10-08 08:49:12'),
(137, 6, NULL, 0x3131302e3133382e39352e313836, 'manajer', '2021-10-09 05:12:32'),
(138, 6, NULL, 0x3131302e3133382e39322e313539, 'manajer', '2021-10-11 03:01:58'),
(139, 1, NULL, 0x3138302e3235322e33342e313636, 'owner', '2021-10-11 03:09:12'),
(140, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-11 07:07:42'),
(141, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-11 07:24:41'),
(142, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-11 07:25:07'),
(143, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-12 02:13:01'),
(144, 1, NULL, 0x3132372e302e302e31, 'owner', '2021-10-12 02:15:51'),
(145, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 09:49:32'),
(146, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 09:58:52'),
(147, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 10:00:26'),
(148, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-07 10:31:52'),
(149, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-08 04:42:24'),
(150, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-14 08:49:58'),
(151, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-16 02:48:26'),
(152, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-17 04:00:33'),
(153, 6, NULL, 0x3130332e36362e3139382e3432, 'yono', '2021-12-17 04:08:13'),
(154, 6, NULL, 0x3130332e36362e3139382e3432, 'yono', '2021-12-17 04:22:24'),
(155, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-17 06:37:14'),
(156, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2021-12-17 09:41:54'),
(157, 6, NULL, 0x3130332e36362e3139382e3432, 'yono', '2022-01-06 04:50:35'),
(158, 6, NULL, 0x3131312e39342e3232382e3839, 'yono', '2022-01-08 00:37:25'),
(159, 6, NULL, 0x3131312e39342e3232382e3839, 'yono', '2022-01-09 23:26:59'),
(160, 6, NULL, 0x3131342e3132342e3231372e3835, 'Yono', '2022-01-10 04:22:58'),
(161, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 01:26:32'),
(162, 6, NULL, 0x3130332e36362e3139382e3432, 'Yono', '2022-01-11 01:26:35'),
(163, 6, NULL, 0x3130332e36362e3139382e3432, 'Yono', '2022-01-11 01:29:33'),
(164, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 01:35:35'),
(165, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 04:36:41'),
(166, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 04:36:44'),
(167, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 04:52:21'),
(168, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 05:00:56'),
(169, 1, NULL, 0x3130332e36362e3139382e3432, 'owner', '2022-01-11 05:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `sma_variants`
--

CREATE TABLE `sma_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_variants`
--

INSERT INTO `sma_variants` (`id`, `name`) VALUES
(1, 'size 300'),
(17, 'size 1 KG'),
(15, 'size 800'),
(16, 'size 500'),
(18, '500 GR');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses`
--

CREATE TABLE `sma_warehouses` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, 'WHI', 'Yons kulit', '<p>wisma asri 2 blok AA4 No 64</p>', NULL, '082113231317', 'yonskulit@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products`
--

CREATE TABLE `sma_warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(37, 37, 1, 16.0000, NULL, 0.0000),
(38, 38, 1, 10.0000, NULL, 0.0000),
(39, 39, 1, 27.0000, NULL, 0.0000),
(40, 40, 1, 9.0000, NULL, 0.0000),
(41, 45, 1, 5.0000, NULL, 0.0000),
(42, 46, 1, 5.0000, NULL, 0.0000),
(27, 70, 1, 14.0000, NULL, 0.0000),
(44, 50, 1, 5.0000, NULL, 0.0000),
(43, 49, 1, 8.0000, NULL, 0.0000),
(28, 71, 1, 5.0000, NULL, 0.0000),
(29, 72, 1, 7.0000, NULL, 0.0000),
(30, 73, 1, 12.0000, NULL, 0.0000),
(31, 74, 1, 11.0000, NULL, 0.0000),
(32, 75, 1, 10.0000, NULL, 0.0000),
(33, 76, 1, 15.0000, NULL, 0.0000),
(34, 77, 1, 9.0000, NULL, 0.0000),
(35, 78, 1, 13.0000, NULL, 0.0000),
(36, 36, 1, 9.0000, NULL, 0.0000),
(45, 51, 1, 8.0000, NULL, 0.0000),
(46, 52, 1, 17.0000, NULL, 0.0000),
(47, 55, 1, 11.0000, NULL, 0.0000),
(48, 56, 1, 12.0000, NULL, 0.0000),
(49, 57, 1, 3.0000, NULL, 0.0000),
(50, 58, 1, 8.0000, NULL, 0.0000),
(51, 59, 1, 8.0000, NULL, 0.0000),
(52, 60, 1, 11.0000, NULL, 0.0000),
(53, 65, 1, 27.0000, NULL, 0.0000),
(54, 69, 1, 4.0000, NULL, 0.0000),
(55, 68, 1, 16.0000, NULL, 0.0000),
(56, 66, 1, 12.0000, NULL, 0.0000),
(57, 79, 1, 4.0000, NULL, 0.0000),
(58, 80, 1, 11.0000, NULL, 0.0000),
(60, 1, 1, 345.3000, NULL, 12000.0000),
(61, 2, 1, 0.0000, NULL, 17000.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products_variants`
--

CREATE TABLE `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_wishlist`
--

CREATE TABLE `sma_wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_brands`
--
ALTER TABLE `sma_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `sma_cart`
--
ALTER TABLE `sma_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_categories`
--
ALTER TABLE `sma_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_companies`
--
ALTER TABLE `sma_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Indexes for table `sma_costing`
--
ALTER TABLE `sma_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `sma_groups`
--
ALTER TABLE `sma_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `sma_pages`
--
ALTER TABLE `sma_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_payments`
--
ALTER TABLE `sma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_paypal`
--
ALTER TABLE `sma_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_printers`
--
ALTER TABLE `sma_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_products`
--
ALTER TABLE `sma_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `price_group_id` (`price_group_id`);

--
-- Indexes for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_id_name` (`product_id`,`name`);

--
-- Indexes for table `sma_promos`
--
ALTER TABLE `sma_promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_returns`
--
ALTER TABLE `sma_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`return_id`),
  ADD KEY `return_id_2` (`return_id`,`product_id`);

--
-- Indexes for table `sma_sales`
--
ALTER TABLE `sma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`sale_id`),
  ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_sessions`
--
ALTER TABLE `sma_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sma_settings`
--
ALTER TABLE `sma_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sma_shop_settings`
--
ALTER TABLE `sma_shop_settings`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `sma_skrill`
--
ALTER TABLE `sma_skrill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_count_id` (`stock_count_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_units`
--
ALTER TABLE `sma_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `sma_users`
--
ALTER TABLE `sma_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indexes for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_variants`
--
ALTER TABLE `sma_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sma_api_keys`
--
ALTER TABLE `sma_api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_api_limits`
--
ALTER TABLE `sma_api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_api_logs`
--
ALTER TABLE `sma_api_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_brands`
--
ALTER TABLE `sma_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_categories`
--
ALTER TABLE `sma_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_pages`
--
ALTER TABLE `sma_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_promos`
--
ALTER TABLE `sma_promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_returns`
--
ALTER TABLE `sma_returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_return_items`
--
ALTER TABLE `sma_return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_sms_settings`
--
ALTER TABLE `sma_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_units`
--
ALTER TABLE `sma_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sma_wishlist`
--
ALTER TABLE `sma_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
