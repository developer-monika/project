-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2017 at 06:32 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gphxyz_inventorysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE IF NOT EXISTS `billers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `invoice_footer` varchar(1000) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `logo`, `invoice_footer`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Mian Saleem', 'Tecdiary IT Solutions', 'Address', 'City', 'Sate', '0000', 'Malaysia', '012345678', 'saleem@tecdairy.com', 'logo.png', '', '', '', '', '', '', ''),
(2, 'john', 'mycpmpany1', 'xyz', 'abc', 'abc', '123456', 'USA', '0123456789', 'john@email.com', 'logo.png', '&lt;p&gt;\n this is first biller\n&lt;/p&gt;', '', '', '', '', '', ''),
(3, 'Nick', 'mycompany2', 'abc1', 'abc1', 'abc1', '0123456', 'UK', '0123456789', 'nick@email.com', 'logo88.png', '&lt;p&gt;\n this is test second biller\n&lt;/p&gt;', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`date`, `data`, `user_id`) VALUES
('2017-05-09 05:00:00', 'today is offer day...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`) VALUES
(1, 'C1', 'Category 1'),
(2, 'C-01', 'Electronics'),
(3, 'C-02', 'gifts cards'),
(4, 'C-03', 'furniture');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment`) VALUES
('&lt;h4&gt;Thank you for Purchasing Stock Manager Advance 2.3 with POS Module &lt;/h4&gt;\r\n&lt;p&gt;\r\n              This is latest the latest release of Stock Manager Advance.\r\n&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(2, 'nil', 'mycompany3', 'abc', 'abc', 'abc', '0123456', 'USA', '0123456789', 'nil@email.com', 'abc', 'xyz', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `damage_products`
--

CREATE TABLE IF NOT EXISTS `damage_products` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `damage_products`
--

INSERT INTO `damage_products` (`id`, `date`, `product_id`, `quantity`, `warehouse_id`, `note`, `user`, `updated_by`) VALUES
(1, '2017-05-09', 2, 20, 1, '&lt;p&gt;\n product is damage\n&lt;/p&gt;', 'Owner Owner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `date_format`
--

CREATE TABLE IF NOT EXISTS `date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_format`
--

INSERT INTO `date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `date`, `time`, `reference_no`, `customer`, `address`, `note`, `user`, `updated_by`) VALUES
(1, '2017-05-14', '01:20 AM', 'SL-0001', 'nil', 'abc abc abc 0123456 USA. \nTel: 0123456789', '', 'Madhur Patidar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `discount`, `type`) VALUES
(1, 'No Discount', '0.00', '2'),
(2, '2.5 Percent', '2.50', '1'),
(3, '5 Percent', '5.00', '1'),
(4, '10 Percent', '10.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'purchaser', 'Purchasing Staff'),
(4, 'salesman', 'Sales Staff'),
(5, 'viewer', 'View Only User');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_types`
--

CREATE TABLE IF NOT EXISTS `invoice_types` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `type` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `browser` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`, `browser`, `password`) VALUES
(29, 0x3138322e37302e3135392e313038, 'adhfkjhadkj@gkjasdfn.com', '2017-05-11 12:02:03', '', ''),
(30, 0x3138322e37302e3135392e313038, 'asfdf@dfgjlaf.com', '2017-05-11 12:06:06', '', ''),
(31, 0x3138322e37302e3135392e313038, 'jkklmklm@tecdiary.com', '2017-05-12 17:24:51', 'Chrome', ''),
(32, 0x3138322e37302e3135392e313038, 'owner@tecdiary.com', '2017-05-12 17:29:21', 'Chrome', ''),
(33, 0x3138322e37302e3135392e313038, 'monika@gmail.com', '2017-05-12 17:29:35', 'Chrome', ''),
(34, 0x3138322e37302e3135392e313038, 'o@tecdiary.com', '2017-05-12 06:10:27', 'Chrome', ''),
(35, 0x3138322e37302e3135392e313038, 'mark@tecdiary.com', '2017-05-12 08:20:18', 'Chrome', ''),
(36, 0x3138322e37302e3135392e313038, 'm@tecdiary.com', '2017-05-12 08:21:30', 'Chrome', ''),
(37, 0x3138322e37302e3135392e313038, 'm@tecdiary.com', '2017-05-12 08:22:27', 'Chrome', ''),
(38, 0x3138322e37302e3135392e313038, 'm@tecdiary.com', '2017-05-12 08:22:46', 'Chrome', ''),
(39, 0x3138322e37302e3135392e313038, 'gfty', '2017-05-12 09:41:31', 'Chrome', ''),
(40, 0x3138322e37302e3135392e313038, 'owner@tecdiary.com', '2017-05-12 09:47:31', 'Chrome', '0'),
(41, 0x3138322e37302e3135392e313038, 'owner@tecdiary.com', '2017-05-12 09:48:18', 'Chrome', '0'),
(42, 0x3138322e37302e3135392e313038, 'ownegfgfr@tecdiary.com', '2017-05-12 09:52:38', 'Chrome', 'gfgg'),
(43, 0x3138322e37302e3135392e313038, 'mark@tecdiary.com', '2017-05-12 10:17:56', 'Chrome', '12345678'),
(44, 0x3132322e3137352e3133352e30, 'manish@gmail.com', '2017-05-12 13:03:58', 'Chrome', '87654321'),
(45, 0x3132322e3137302e3232332e313731, 'mahesh@gmail.com', '2017-05-13 14:42:57', 'Firefox', 'er423'),
(46, 0x32372e35372e3135392e3935, 'owner@tecdiary.com', '2017-05-13 09:33:52', 'Chrome', '0'),
(47, 0x3137312e36312e372e3632, 'tgdtgbxtg', '2017-05-13 13:02:33', 'Chrome', 'dsfefs'),
(48, 0x3137312e34392e3133322e323336, 'fmvldvml@yahoo.com', '2017-05-14 10:45:41', 'Chrome', 'kjgf4tt4'),
(49, 0x3137312e36312e36332e3330, 'dshwh@accenture.com', '2017-05-15 17:36:35', 'Chrome', 'dfefe'),
(50, 0x3137312e36312e36332e3330, 'dxfded@accenture.com', '2017-05-15 17:36:53', 'Chrome', '343432432'),
(51, 0x3137312e36312e36332e3330, 'demo@davv.com', '2017-05-15 17:37:17', 'Chrome', '32u4832483u8'),
(52, 0x3137312e36312e36332e3330, 'manish@gmail.com', '2017-05-15 17:37:57', 'Chrome', 'cvndjfn'),
(53, 0x3137312e36312e36332e3330, 'akash@gmail.com', '2017-05-15 17:38:13', 'Chrome', '34424343'),
(54, 0x3137312e36312e36332e3330, 'dfdsfdsf@yahoo.com', '2017-05-15 14:50:58', 'Firefox', '3432432435'),
(55, 0x3137312e36312e36332e3330, 'vfrerfgvrv', '2017-05-15 14:51:10', 'Firefox', 'ferfrr54t43'),
(56, 0x3137312e36312e36332e3330, 'madhur@gmail.com', '2017-05-15 14:51:32', 'Firefox', '0'),
(57, 0x3137312e36312e36332e3330, 'manish@gmail.com', '2017-05-15 14:51:43', 'Firefox', '54353r4'),
(58, 0x3137312e36312e36332e3330, 'madhur@gmail.com', '2017-05-15 14:52:52', 'Mozilla', '0'),
(59, 0x3137312e36312e36332e3330, 'dewdewc', '2017-05-15 14:53:03', 'Mozilla', 'dfe343rdf'),
(60, 0x3137312e36312e36332e3330, 'madhur@gmail.com', '2017-05-15 14:55:28', 'Mozilla', '0'),
(61, 0x3137312e36312e36332e3330, 'dsmcnrjfnrj', '2017-05-15 14:55:40', 'Mozilla', '21324324'),
(62, 0x3137312e36312e36332e3330, 'ceewcew', '2017-05-15 14:56:11', 'Firefox', '12323434'),
(63, 0x3137312e36312e36332e3330, 'harsh@gmail.com', '2017-05-15 14:57:34', 'Firefox', '0'),
(64, 0x3137312e36312e36332e3330, 'manish@gmail.com', '2017-05-15 14:58:05', 'Firefox', '234556'),
(65, 0x32372e35372e3135392e3935, 'owner@tecdiary.com', '2017-05-15 16:11:50', 'Chrome', '0'),
(66, 0x31342e3133392e3234302e323330, 'dsfdsfdsv', '2017-05-15 16:18:07', 'Firefox', '32412412'),
(67, 0x32372e35372e3135392e3935, 'owner@tecdiary.com', '2017-05-15 16:50:54', 'Chrome', '0'),
(68, 0x3137312e36302e3138382e323237, 'owner@tecdiary.com', '2017-05-17 11:18:03', 'Chrome', '0'),
(69, 0x3137312e36302e3138382e323237, 'owner@tecdiary.com', '2017-05-17 11:53:29', 'Chrome', '0'),
(70, 0x3137312e36302e3138382e323237, 'owner@tecdiary.com', '2017-05-17 11:54:57', 'Chrome', '0'),
(71, 0x3137312e36302e3138382e323237, 'xsac@gmail.com', '2017-05-17 11:57:17', 'Chrome', 'mkdm'),
(72, 0x3137312e36302e3137382e3631, 'owner@tecdiary.com', '2017-05-22 06:01:04', 'Chrome', '0'),
(73, 0x3137312e36302e3137382e3631, 'owner@tecdiary.com', '2017-05-22 06:01:05', 'Chrome', '0'),
(74, 0x3137312e36302e3137382e3631, 'owner@tecdiary.com', '2017-05-22 06:18:17', 'Internet Explorer', '0');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `size` varchar(55) NOT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `price` decimal(25,2) NOT NULL,
  `alert_quantity` int(11) NOT NULL DEFAULT '20',
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(4) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `unit`, `size`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`) VALUES
(1, 'PR-01', 'Product 1', '1', 'Large', '120.00', '150.00', 20, 'pro1.jpg', 1, 0, '', '', '', '', '', '', 0, 2, 1, '<p>\n    Addic Analogue White Dial Womens Watch-W156\n</p>'),
(3, 'PR-04', 'Mobile', '12', 'Medium', '12000.00', '15000.00', 15, 'pro03.jpg', 2, 0, '', '', '', '', '', '', 1, 2, 1, '<p>\n    Lenovo Vibe K5 (Gold, Snapdragon 616, VoLTE update)\n</p>\n<div>\n <a></a>\n</div>'),
(4, 'PR-02', 'Watch', '1', '', '580.00', '750.00', 10, 'no_image.jpg', 2, 0, '', '', '', '', '', '', NULL, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT '0.00',
  `inv_total` decimal(25,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `warehouse_id`, `supplier_id`, `supplier_name`, `date`, `note`, `total`, `user`, `updated_by`, `total_tax`, `inv_total`) VALUES
(1, 'PO-0001', 1, 2, 'Supplier1', '2017-05-11', '&lt;p&gt;\n hello\n&lt;/p&gt;', '148.80', 'Owner Owner', NULL, '28.80', '120.00'),
(2, 'PO-0002', 1, 2, 'Supplier1', '2017-05-11', '&lt;p&gt;\n bg\n&lt;/p&gt;', '14880.00', 'Owner Owner', NULL, '2880.00', '12000.00'),
(3, 'PO-0003', 1, 2, 'Supplier1', '2017-05-13', '', '148.80', 'Madhur Patidar', NULL, '28.80', '120.00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE IF NOT EXISTS `purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `tax_amount` decimal(25,2) DEFAULT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `product_code`, `product_name`, `quantity`, `unit_price`, `tax_amount`, `gross_total`, `tax_rate_id`, `tax`, `val_tax`) VALUES
(1, 1, 1, 'PR-01', 'Product 1', 1, '120.00', NULL, '120.00', 2, '24.00%', '28.80'),
(2, 2, 3, 'PR-04', 'Mobile', 1, '12000.00', NULL, '12000.00', 2, '24.00%', '2880.00'),
(3, 3, 1, 'PR-01', 'Product 1', 1, '120.00', NULL, '120.00', 2, '24.00%', '28.80');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller_name` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `in_type` varchar(55) DEFAULT NULL,
  `total_tax2` decimal(25,2) DEFAULT NULL,
  `tax_rate2_id` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `inv_discount` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quote_items`
--

CREATE TABLE IF NOT EXISTS `quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller_name` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `in_type` varchar(55) DEFAULT NULL,
  `total_tax2` decimal(25,2) DEFAULT NULL,
  `tax_rate2_id` int(11) DEFAULT NULL,
  `inv_discount` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `paid_by` varchar(55) DEFAULT 'cash',
  `count` int(11) DEFAULT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00',
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `paid` decimal(25,2) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(100) DEFAULT NULL,
  `cheque_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `warehouse_id`, `biller_id`, `biller_name`, `customer_id`, `customer_name`, `date`, `note`, `internal_note`, `inv_total`, `total_tax`, `total`, `invoice_type`, `in_type`, `total_tax2`, `tax_rate2_id`, `inv_discount`, `discount_id`, `user`, `updated_by`, `paid_by`, `count`, `shipping`, `pos`, `paid`, `cc_no`, `cc_holder`, `cheque_no`) VALUES
(1, 'SL-0001', 1, 2, 'john', 2, 'nil', '2017-05-14', '', '', '120.00', '28.80', '148.80', NULL, NULL, '0.00', 1, '0.00', 0, 'Madhur Patidar', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(2, 'SL-0002', 1, 3, 'Nick', 2, 'nil', '2017-05-15', '', '', '150.00', '0.00', '150.00', NULL, NULL, '0.00', 1, '0.00', 0, 'Madhur Patidar', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(3, 'SL-0003', 1, 2, 'john', 2, 'nil', '2017-05-15', '', '', '150.00', '0.00', '146.25', NULL, NULL, '0.00', 1, '3.75', 0, 'Madhur Patidar', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE IF NOT EXISTS `sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`, `serial_no`, `discount_val`, `discount`, `discount_id`) VALUES
(1, 1, 2, 'PR-02', 'Watch', '10', 2, '24.00%', 1, '120.00', '120.00', '28.80', '', '0.00', '0.00', 1),
(2, 2, 1, 'PR-01', 'Product 1', 'Box', 1, '0.00', 1, '150.00', '150.00', '0.00', '', '0.00', '0.00', 1),
(3, 3, 1, 'PR-01', 'Product 1', '1', 1, '0.00', 1, '150.00', '150.00', '0.00', '', '3.75', '2.50%', 2);

-- --------------------------------------------------------

--
-- Table structure for table `session_tbl`
--

CREATE TABLE IF NOT EXISTS `session_tbl` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_invoice_type` int(2) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `no_of_rows` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '2.3',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) NOT NULL,
  `quote_prefix` varchar(55) NOT NULL,
  `purchase_prefix` varchar(55) NOT NULL,
  `transfer_prefix` varchar(55) NOT NULL,
  `barcode_symbology` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `discount_option` tinyint(4) NOT NULL,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `restrict_sale` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `bstatesave` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `currency_prefix`, `default_invoice_type`, `default_tax_rate`, `rows_per_page`, `no_of_rows`, `total_rows`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `barcode_symbology`, `theme`, `product_serial`, `default_discount`, `discount_option`, `discount_method`, `tax1`, `tax2`, `restrict_sale`, `restrict_user`, `restrict_calendar`, `bstatesave`) VALUES
(1, 'header_logo.png', 'login_logo.png', 'Inventory System For Enterprise', 'english', 1, 'USD', 2, 2, 10, 9, 30, '2.3', 1, 6, 'SL', 'QU', 'PO', 'TR', 'code128', 'blue', 1, 1, 2, 2, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Test Supplier', 'Supplier Company Name', 'Supplier Address', 'Petaling Jaya', 'Selangor', '46050', 'Malaysia', '0123456789', 'supplier@tecdiary.com', '-', '-', '-', '-', '-', '-'),
(2, 'Supplier1', 'mycompany1', 'abc', 'abc', 'abc', '0123456', 'UK', '0123456789', 'suplier1@email.com', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(8,2) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `rate`, `type`) VALUES
(1, 'No Tax', '0.00', '2'),
(2, 'VAT', '24.00', '1'),
(3, 'GST', '6.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) DEFAULT NULL,
  `tr_total` decimal(25,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE IF NOT EXISTS `transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `tax_val` decimal(25,2) DEFAULT NULL,
  `unit_price` decimal(25,2) DEFAULT NULL,
  `gross_total` decimal(25,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` timestamp NULL DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `browser` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `browser`) VALUES
(1, 0x7f0000, 'owner', '54af4ba64ec0a86f4f3e1e45159df08902ab8f40', NULL, 'owner@tecdiary.com', NULL, NULL, NULL, '6d51ca3212f297271477fb4f3ec312d68dfd1702', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'Owner', 'Owner', 'Stock Manager', '0105292122', ''),
(18, 0x3138322e37302e3135392e313038, 'mark abc', '8700d7980b1089b1720c5d9c9e0664714424ce0f', NULL, 'mark@gmail.com', NULL, NULL, NULL, NULL, '2017-05-12 05:32:02', '0000-00-00 00:00:00', 1, 'Mark', 'abc', 'Company1', '0123456789', 'Chrome'),
(19, 0x3138322e37302e3135392e313038, 'demo abc', 'ebd76dd394f0410223a21322291d4fd306a91615', NULL, 'demo@gmail.com', NULL, NULL, NULL, NULL, '2017-05-12 05:32:51', '0000-00-00 00:00:00', 1, 'demo', 'abc', 'Company1', '0123456789', 'Chrome'),
(20, 0x3138322e37302e3135392e313038, 'mg mg', '625075835a790652e61e85febb968c9bc36b3077', NULL, 'mg@gmail.com', NULL, NULL, NULL, NULL, '2017-05-12 05:33:53', '0000-00-00 00:00:00', 1, 'mg', 'mg', 'Company1', '0123456789', 'Chrome'),
(21, 0x3138322e37302e3135392e313038, 'xyz xyz', '4c89465eab55970370b8f9bf1fd478ae42425a5c', NULL, 'xyz@gmail.com', NULL, NULL, NULL, NULL, '2017-05-12 05:34:41', '0000-00-00 00:00:00', 1, 'xyz', 'xyz', 'Company1', '0123456789', 'Chrome'),
(22, 0x3132322e3137352e3133352e30, 'ramesh gupta', '49a60b335ab47f23511f8e479a8ba51ccbd12391', NULL, 'ramesh@gmail.com', NULL, NULL, NULL, NULL, '2017-05-12 08:07:48', '0000-00-00 00:00:00', 1, 'ramesh', 'gupta', 'sons', '9655566546', 'Chrome'),
(23, 0x3132322e3137352e3133352e30, 'nitin kumar', '6f7d5ece4a24e61f4eec844ab1c464d8237c92bf', NULL, 'nitin@yahoo.com', NULL, NULL, NULL, NULL, '2017-05-12 08:14:04', '0000-00-00 00:00:00', 1, 'nitin', 'kumar', 'gyh', '5656547567', 'Chrome'),
(24, 0x3137312e36312e372e3632, 'madhur patidar', '3abca9472a8615ac88ecbe42efc1765c862e27a5', NULL, 'madhur@gmail.com', NULL, NULL, NULL, NULL, '2017-05-13 05:04:31', '0000-00-00 00:00:00', 1, 'Madhur', 'Patidar', 'Abc', '9859485945', 'Chrome'),
(25, 0x3137312e36312e372e3632, 'gaurav kumar', '3c566bece6e5f87148940a2b6c503bb2b30e1e10', NULL, 'gaurav@rediffmail.com', NULL, NULL, NULL, NULL, '2017-05-13 09:05:49', '2017-05-13 09:05:49', 1, 'Gaurav', 'Kumar', 'tyu', '9454959555', 'Chrome'),
(26, 0x3137312e36312e36332e3330, 'harsh jain', '1200bb2e6c0db6eac92d8e978bc3bb37e28c9952', NULL, 'harsh@gmail.com', NULL, NULL, NULL, NULL, '2017-05-15 12:48:30', '0000-00-00 00:00:00', 1, 'Harsh', 'Jain', 'qwe', '2323283293', 'Chrome'),
(27, 0x3137312e36312e36332e3330, 'mohan patil', 'e3c98ee44dd8eb90d7a278e9fe4ddf33be91d92a', NULL, 'mohan@yahoo.com', NULL, NULL, NULL, NULL, '2017-05-15 09:13:57', '0000-00-00 00:00:00', 1, 'Mohan', 'Patil', 'fds', '9483943984', 'Chrome'),
(28, 0x3137312e36312e36332e3330, 'sunil agrawal', 'aa4820b39eb58c961f83a90da54c68fed107d694', NULL, 'sunil@accenture.com', NULL, NULL, NULL, NULL, '2017-05-15 09:15:40', '0000-00-00 00:00:00', 1, 'Sunil', 'Agrawal', 'yud', '9895649556', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 5),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 3),
(8, 8, 4),
(9, 9, 5),
(10, 10, 1),
(11, 11, 1),
(12, 12, 3),
(13, 13, 5),
(14, 14, 2),
(15, 15, 5),
(16, 1, 4),
(17, 16, 4),
(18, 17, 1),
(19, 18, 2),
(20, 19, 3),
(21, 20, 4),
(22, 21, 5),
(23, 22, 5),
(24, 23, 1),
(25, 24, 1),
(26, 25, 4),
(27, 26, 5),
(28, 27, 3),
(29, 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `forgotten_password_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `code`, `name`, `address`, `city`) VALUES
(1, 'WHI', 'Warehouse 1', 'Address', 'City');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses_products`
--

CREATE TABLE IF NOT EXISTS `warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouses_products`
--

INSERT INTO `warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`) VALUES
(2, 1, 1, 0),
(3, 3, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damage_products`
--
ALTER TABLE `damage_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_format`
--
ALTER TABLE `date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_types`
--
ALTER TABLE `invoice_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`), ADD KEY `category_id` (`category_id`), ADD KEY `id` (`id`), ADD KEY `id_2` (`id`), ADD KEY `category_id_2` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`), ADD KEY `purchase_id` (`purchase_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `quote_items`
--
ALTER TABLE `quote_items`
  ADD PRIMARY KEY (`id`), ADD KEY `quote_id` (`quote_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`), ADD KEY `sale_id` (`sale_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`), ADD KEY `transfer_id` (`transfer_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `warehouses_products`
--
ALTER TABLE `warehouses_products`
  ADD PRIMARY KEY (`id`), ADD KEY `product_id` (`product_id`), ADD KEY `warehouse_id` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `damage_products`
--
ALTER TABLE `damage_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `date_format`
--
ALTER TABLE `date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice_types`
--
ALTER TABLE `invoice_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quote_items`
--
ALTER TABLE `quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `warehouses_products`
--
ALTER TABLE `warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
