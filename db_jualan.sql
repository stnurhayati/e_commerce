-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2020 pada 09.45
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_address`
--

CREATE TABLE `tbl_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_api`
--

CREATE TABLE `tbl_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_api`
--

INSERT INTO `tbl_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '02edXvpNO7WHLEh8lKdvNkn56KPaGM048lmDozck8fnGZvH1udr0yFRbDdW8WwO2LdjQ1ibl8a8jW5fNYSQCWU5R4foCL8xLTdJLuwMzmVQJzu941zZLCMpEu9hGCaHzo2Ytx7qxetzpGH00cMbcbqj6H7dFCEcetdpGU5BH06vL1Zc1PvcxGzFg0ng9WKoRpNnkzLA4mIi5Zsqbh4GLlVeRbWrbU7BUSI8PHgT9mmKN1aV6sutTX1hFFSMHkhoT', 1, '2019-11-05 08:21:27', '2019-11-05 08:21:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_api_ip`
--

CREATE TABLE `tbl_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_api_session`
--

CREATE TABLE `tbl_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_attribute`
--

CREATE TABLE `tbl_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_attribute`
--

INSERT INTO `tbl_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_attribute_description`
--

CREATE TABLE `tbl_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_attribute_description`
--

INSERT INTO `tbl_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_attribute_group`
--

CREATE TABLE `tbl_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_attribute_group`
--

INSERT INTO `tbl_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_attribute_group_description`
--

CREATE TABLE `tbl_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_attribute_group_description`
--

INSERT INTO `tbl_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_banner`
--

INSERT INTO `tbl_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_banner_image`
--

CREATE TABLE `tbl_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_banner_image`
--

INSERT INTO `tbl_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(112, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(103, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(111, 7, 1, 'Food', '', 'catalog/baru/download (4).jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(110, 7, 1, 'Hoodie', '', 'catalog/baru/images (2).jpg', 0),
(109, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 0, 1, 3, 1, '2009-01-31 01:04:25', '2019-11-20 12:54:48'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16'),
(59, '', 0, 1, 1, 10, 1, '2019-11-05 10:05:57', '2019-11-05 12:51:33'),
(60, '', 0, 1, 1, 10, 1, '2019-11-05 10:41:30', '2019-11-05 12:52:16'),
(61, '', 0, 1, 1, 10, 1, '2019-11-05 10:42:30', '2019-11-05 12:53:53'),
(62, '', 0, 1, 1, 10, 1, '2019-11-05 10:53:38', '2019-11-05 12:53:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category_description`
--

CREATE TABLE `tbl_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_category_description`
--

INSERT INTO `tbl_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(33, 1, 'Cameras', '', 'Cameras', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(25, 1, 'Components', '', 'Components', '', ''),
(24, 1, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(35, 1, 'test 1', '', 'test 1', '', ''),
(36, 1, 'test 2', '', 'test 2', '', ''),
(37, 1, 'test 5', '', 'test 5', '', ''),
(38, 1, 'test 4', '', 'test 4', '', ''),
(39, 1, 'test 6', '', 'test 6', '', ''),
(40, 1, 'test 7', '', 'test 7', '', ''),
(41, 1, 'test 8', '', 'test 8', '', ''),
(42, 1, 'test 9', '', 'test 9', '', ''),
(43, 1, 'test 11', '', 'test 11', '', ''),
(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(44, 1, 'test 12', '', 'test 12', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(47, 1, 'test 15', '', 'test 15', '', ''),
(48, 1, 'test 16', '', 'test 16', '', ''),
(49, 1, 'test 17', '', 'test 17', '', ''),
(50, 1, 'test 18', '', 'test 18', '', ''),
(51, 1, 'test 19', '', 'test 19', '', ''),
(52, 1, 'test 20', '', 'test 20', '', ''),
(53, 1, 'test 21', '', 'test 21', '', ''),
(54, 1, 'test 22', '', 'test 22', '', ''),
(55, 1, 'test 23', '', 'test 23', '', ''),
(56, 1, 'test 24', '', 'test 24', '', ''),
(57, 1, 'Tablets', '', 'Tablets', '', ''),
(58, 1, 'test 25', '', 'test 25', '', ''),
(59, 1, 'Accecories', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Dalam dunia busana, aksesori (atau aksesoris) adalah benda-benda yang dikenakan seseorang untuk mendukung atau menjadi pengganti pakaian. Bentuk aksesori bermacam-macam dan banyak di antaranya terkait dengan peran gender pemakainya.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Accecories', '', ''),
(60, 1, 'Dress', '', 'Dress', '', ''),
(61, 1, 'Shoes', '', 'Shoes', '', ''),
(62, 1, 'Food', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Food', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category_filter`
--

CREATE TABLE `tbl_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category_path`
--

CREATE TABLE `tbl_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_category_path`
--

INSERT INTO `tbl_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0),
(59, 59, 0),
(60, 60, 0),
(61, 61, 0),
(62, 62, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category_to_layout`
--

CREATE TABLE `tbl_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_category_to_layout`
--

INSERT INTO `tbl_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category_to_store`
--

CREATE TABLE `tbl_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_category_to_store`
--

INSERT INTO `tbl_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_coupon_category`
--

CREATE TABLE `tbl_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_coupon_history`
--

CREATE TABLE `tbl_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_coupon_product`
--

CREATE TABLE `tbl_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_currency`
--

INSERT INTO `tbl_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2019-11-20 05:54:09'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_activity`
--

CREATE TABLE `tbl_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_affiliate`
--

CREATE TABLE `tbl_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_approval`
--

CREATE TABLE `tbl_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_group`
--

CREATE TABLE `tbl_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_customer_group`
--

INSERT INTO `tbl_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_group_description`
--

CREATE TABLE `tbl_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_customer_group_description`
--

INSERT INTO `tbl_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_history`
--

CREATE TABLE `tbl_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_ip`
--

CREATE TABLE `tbl_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_login`
--

CREATE TABLE `tbl_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_customer_login`
--

INSERT INTO `tbl_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'nsiti7621@gmail.com', '::1', 1, '2019-11-20 05:42:03', '2019-11-20 05:42:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_online`
--

CREATE TABLE `tbl_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_reward`
--

CREATE TABLE `tbl_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_search`
--

CREATE TABLE `tbl_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_transaction`
--

CREATE TABLE `tbl_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer_wishlist`
--

CREATE TABLE `tbl_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_custom_field`
--

CREATE TABLE `tbl_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_custom_field_customer_group`
--

CREATE TABLE `tbl_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_custom_field_description`
--

CREATE TABLE `tbl_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_custom_field_value`
--

CREATE TABLE `tbl_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_custom_field_value_description`
--

CREATE TABLE `tbl_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_download`
--

CREATE TABLE `tbl_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_download_description`
--

CREATE TABLE `tbl_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_event`
--

INSERT INTO `tbl_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_extension`
--

CREATE TABLE `tbl_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_extension`
--

INSERT INTO `tbl_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(45, 'module', 'soconfig'),
(46, 'module', 'html'),
(65, 'module', 'so_html_content'),
(69, 'module', 'filter'),
(74, 'module', 'so_latest_blog'),
(75, 'module', 'simple_blog_category'),
(83, 'module', 'bestseller'),
(84, 'module', 'so_basic_products'),
(85, 'module', 'latest');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_extension_install`
--

CREATE TABLE `tbl_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_extension_install`
--

INSERT INTO `tbl_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'soladaztemplateoc302v1.1.0.ocmod.zip', '2019-11-05 15:15:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_extension_path`
--

CREATE TABLE `tbl_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_extension_path`
--

INSERT INTO `tbl_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'image/catalog/404', '2019-11-05 15:16:00'),
(2, 1, 'image/catalog/banner', '2019-11-05 15:16:00'),
(3, 1, 'image/catalog/cart.png', '2019-11-05 15:16:00'),
(4, 1, 'image/catalog/cms', '2019-11-05 15:16:00'),
(5, 1, 'image/catalog/favicon.png', '2019-11-05 15:16:00'),
(6, 1, 'image/catalog/favicon2.png', '2019-11-05 15:16:00'),
(7, 1, 'image/catalog/index.html', '2019-11-05 15:16:00'),
(8, 1, 'image/catalog/logo.png', '2019-11-05 15:16:00'),
(9, 1, 'image/catalog/opencart.ico', '2019-11-05 15:16:00'),
(10, 1, 'image/catalog/profile-pic.png', '2019-11-05 15:16:00'),
(11, 1, 'system/library/so', '2019-11-05 15:16:00'),
(12, 1, 'admin/language/en-gb/en-gb.php', '2019-11-05 15:16:00'),
(13, 1, 'admin/language/en-gb/en-gb.png', '2019-11-05 15:16:00'),
(14, 1, 'admin/model/extension/module', '2019-11-05 15:16:00'),
(15, 1, 'admin/view/javascript/ace', '2019-11-05 15:16:00'),
(16, 1, 'admin/view/javascript/common.js', '2019-11-05 15:16:00'),
(17, 1, 'catalog/controller/extension/mobile', '2019-11-05 15:16:00'),
(18, 1, 'catalog/controller/extension/simple_blog', '2019-11-05 15:16:00'),
(19, 1, 'catalog/controller/extension/soconfig', '2019-11-05 15:16:00'),
(20, 1, 'catalog/language/en-gb/en-gb.php', '2019-11-05 15:16:00'),
(21, 1, 'catalog/language/en-gb/en-gb.png', '2019-11-05 15:16:00'),
(22, 1, 'catalog/model/extension/simple_blog', '2019-11-05 15:16:00'),
(23, 1, 'catalog/model/extension/soconfig', '2019-11-05 15:16:00'),
(24, 1, 'catalog/view/javascript/common.js', '2019-11-05 15:16:00'),
(25, 1, 'catalog/view/javascript/qrcode.js', '2019-11-05 15:16:00'),
(26, 1, 'catalog/view/javascript/so_basic_products', '2019-11-05 15:16:00'),
(27, 1, 'catalog/view/javascript/so_latest_blog', '2019-11-05 15:16:00'),
(28, 1, 'catalog/view/javascript/soconfig', '2019-11-05 15:16:00'),
(29, 1, 'catalog/view/theme/so-ladaz', '2019-11-05 15:16:00'),
(30, 1, 'image/catalog/404/size-chart.jpg', '2019-11-05 15:16:00'),
(31, 1, 'image/catalog/banner/home9', '2019-11-05 15:16:00'),
(32, 1, 'image/catalog/banner/newletter-bg.jpg', '2019-11-05 15:16:00'),
(33, 1, 'image/catalog/cms/home9', '2019-11-05 15:16:00'),
(34, 1, 'image/catalog/cms/ico-phone.png', '2019-11-05 15:16:00'),
(35, 1, 'image/catalog/cms/img-clien-1.png', '2019-11-05 15:16:00'),
(36, 1, 'image/catalog/cms/img-clien-2.png', '2019-11-05 15:16:00'),
(37, 1, 'image/catalog/cms/img-clien-3.png', '2019-11-05 15:16:00'),
(38, 1, 'image/catalog/cms/img-clien.png', '2019-11-05 15:16:00'),
(39, 1, 'image/catalog/cms/left-image-static.png', '2019-11-05 15:16:00'),
(40, 1, 'image/catalog/cms/payment', '2019-11-05 15:16:00'),
(41, 1, 'image/catalog/demo/about', '2019-11-05 15:16:00'),
(42, 1, 'image/catalog/demo/cms', '2019-11-05 15:16:00'),
(43, 1, 'image/catalog/demo/payment', '2019-11-05 15:16:00'),
(44, 1, 'image/catalog/demo/size-chart.jpg', '2019-11-05 15:16:00'),
(45, 1, 'system/library/so/basic_products', '2019-11-05 15:16:00'),
(46, 1, 'system/library/so/cache', '2019-11-05 15:16:00'),
(47, 1, 'system/library/so/html_content', '2019-11-05 15:16:00'),
(48, 1, 'system/library/so/latest_blog', '2019-11-05 15:16:00'),
(49, 1, 'admin/controller/extension/module/category.php', '2019-11-05 15:16:00'),
(50, 1, 'admin/controller/extension/module/modification_editor.php', '2019-11-05 15:16:00'),
(51, 1, 'admin/controller/extension/module/simple_blog', '2019-11-05 15:16:00'),
(52, 1, 'admin/controller/extension/module/simple_blog.php', '2019-11-05 15:16:00'),
(53, 1, 'admin/controller/extension/module/simple_blog_category.php', '2019-11-05 15:16:00'),
(54, 1, 'admin/controller/extension/module/so_basic_products.php', '2019-11-05 15:16:00'),
(55, 1, 'admin/controller/extension/module/so_html_content.php', '2019-11-05 15:16:00'),
(56, 1, 'admin/controller/extension/module/so_latest_blog.php', '2019-11-05 15:16:00'),
(57, 1, 'admin/controller/extension/module/soconfig.php', '2019-11-05 15:16:00'),
(58, 1, 'admin/language/en-gb/catalog/attribute.php', '2019-11-05 15:16:00'),
(59, 1, 'admin/language/en-gb/catalog/attribute_group.php', '2019-11-05 15:16:00'),
(60, 1, 'admin/language/en-gb/catalog/category.php', '2019-11-05 15:16:00'),
(61, 1, 'admin/language/en-gb/catalog/download.php', '2019-11-05 15:16:00'),
(62, 1, 'admin/language/en-gb/catalog/filter.php', '2019-11-05 15:16:00'),
(63, 1, 'admin/language/en-gb/catalog/information.php', '2019-11-05 15:16:00'),
(64, 1, 'admin/language/en-gb/catalog/manufacturer.php', '2019-11-05 15:16:00'),
(65, 1, 'admin/language/en-gb/catalog/option.php', '2019-11-05 15:16:00'),
(66, 1, 'admin/language/en-gb/catalog/product.php', '2019-11-05 15:16:00'),
(67, 1, 'admin/language/en-gb/catalog/recurring.php', '2019-11-05 15:16:00'),
(68, 1, 'admin/language/en-gb/catalog/review.php', '2019-11-05 15:16:00'),
(69, 1, 'admin/language/en-gb/common/column_left.php', '2019-11-05 15:16:00'),
(70, 1, 'admin/language/en-gb/common/dashboard.php', '2019-11-05 15:16:00'),
(71, 1, 'admin/language/en-gb/common/developer.php', '2019-11-05 15:16:00'),
(72, 1, 'admin/language/en-gb/common/filemanager.php', '2019-11-05 15:16:00'),
(73, 1, 'admin/language/en-gb/common/footer.php', '2019-11-05 15:16:00'),
(74, 1, 'admin/language/en-gb/common/forgotten.php', '2019-11-05 15:16:00'),
(75, 1, 'admin/language/en-gb/common/header.php', '2019-11-05 15:16:00'),
(76, 1, 'admin/language/en-gb/common/login.php', '2019-11-05 15:16:00'),
(77, 1, 'admin/language/en-gb/common/profile.php', '2019-11-05 15:16:00'),
(78, 1, 'admin/language/en-gb/common/reset.php', '2019-11-05 15:16:00'),
(79, 1, 'admin/language/en-gb/common/security.php', '2019-11-05 15:16:00'),
(80, 1, 'admin/language/en-gb/customer/custom_field.php', '2019-11-05 15:16:00'),
(81, 1, 'admin/language/en-gb/customer/customer.php', '2019-11-05 15:16:00'),
(82, 1, 'admin/language/en-gb/customer/customer_approval.php', '2019-11-05 15:16:00'),
(83, 1, 'admin/language/en-gb/customer/customer_group.php', '2019-11-05 15:16:00'),
(84, 1, 'admin/language/en-gb/design/banner.php', '2019-11-05 15:16:00'),
(85, 1, 'admin/language/en-gb/design/layout.php', '2019-11-05 15:16:00'),
(86, 1, 'admin/language/en-gb/design/seo_url.php', '2019-11-05 15:16:00'),
(87, 1, 'admin/language/en-gb/design/theme.php', '2019-11-05 15:16:00'),
(88, 1, 'admin/language/en-gb/design/translation.php', '2019-11-05 15:16:00'),
(89, 1, 'admin/language/en-gb/error/not_found.php', '2019-11-05 15:16:00'),
(90, 1, 'admin/language/en-gb/error/permission.php', '2019-11-05 15:16:00'),
(91, 1, 'admin/language/en-gb/localisation/country.php', '2019-11-05 15:16:00'),
(92, 1, 'admin/language/en-gb/localisation/currency.php', '2019-11-05 15:16:00'),
(93, 1, 'admin/language/en-gb/localisation/geo_zone.php', '2019-11-05 15:16:00'),
(94, 1, 'admin/language/en-gb/localisation/language.php', '2019-11-05 15:16:00'),
(95, 1, 'admin/language/en-gb/localisation/length_class.php', '2019-11-05 15:16:00'),
(96, 1, 'admin/language/en-gb/localisation/location.php', '2019-11-05 15:16:00'),
(97, 1, 'admin/language/en-gb/localisation/order_status.php', '2019-11-05 15:16:00'),
(98, 1, 'admin/language/en-gb/localisation/return_action.php', '2019-11-05 15:16:00'),
(99, 1, 'admin/language/en-gb/localisation/return_reason.php', '2019-11-05 15:16:00'),
(100, 1, 'admin/language/en-gb/localisation/return_status.php', '2019-11-05 15:16:00'),
(101, 1, 'admin/language/en-gb/localisation/stock_status.php', '2019-11-05 15:16:00'),
(102, 1, 'admin/language/en-gb/localisation/tax_class.php', '2019-11-05 15:16:00'),
(103, 1, 'admin/language/en-gb/localisation/tax_rate.php', '2019-11-05 15:16:00'),
(104, 1, 'admin/language/en-gb/localisation/weight_class.php', '2019-11-05 15:16:00'),
(105, 1, 'admin/language/en-gb/localisation/zone.php', '2019-11-05 15:16:00'),
(106, 1, 'admin/language/en-gb/mail/affiliate_approve.php', '2019-11-05 15:16:00'),
(107, 1, 'admin/language/en-gb/mail/affiliate_deny.php', '2019-11-05 15:16:00'),
(108, 1, 'admin/language/en-gb/mail/customer_approve.php', '2019-11-05 15:16:00'),
(109, 1, 'admin/language/en-gb/mail/customer_deny.php', '2019-11-05 15:16:00'),
(110, 1, 'admin/language/en-gb/mail/forgotten.php', '2019-11-05 15:16:00'),
(111, 1, 'admin/language/en-gb/mail/return.php', '2019-11-05 15:16:00'),
(112, 1, 'admin/language/en-gb/mail/reward.php', '2019-11-05 15:16:00'),
(113, 1, 'admin/language/en-gb/mail/transaction.php', '2019-11-05 15:16:00'),
(114, 1, 'admin/language/en-gb/mail/voucher.php', '2019-11-05 15:16:00'),
(115, 1, 'admin/language/en-gb/marketing/contact.php', '2019-11-05 15:16:00'),
(116, 1, 'admin/language/en-gb/marketing/coupon.php', '2019-11-05 15:16:00'),
(117, 1, 'admin/language/en-gb/marketing/marketing.php', '2019-11-05 15:16:00'),
(118, 1, 'admin/language/en-gb/marketplace/api.php', '2019-11-05 15:16:00'),
(119, 1, 'admin/language/en-gb/marketplace/event.php', '2019-11-05 15:16:00'),
(120, 1, 'admin/language/en-gb/marketplace/extension.php', '2019-11-05 15:16:00'),
(121, 1, 'admin/language/en-gb/marketplace/install.php', '2019-11-05 15:16:00'),
(122, 1, 'admin/language/en-gb/marketplace/installer.php', '2019-11-05 15:16:00'),
(123, 1, 'admin/language/en-gb/marketplace/marketplace.php', '2019-11-05 15:16:00'),
(124, 1, 'admin/language/en-gb/marketplace/modification.php', '2019-11-05 15:16:00'),
(125, 1, 'admin/language/en-gb/marketplace/openbay.php', '2019-11-05 15:16:01'),
(126, 1, 'admin/language/en-gb/report/online.php', '2019-11-05 15:16:01'),
(127, 1, 'admin/language/en-gb/report/report.php', '2019-11-05 15:16:01'),
(128, 1, 'admin/language/en-gb/report/statistics.php', '2019-11-05 15:16:01'),
(129, 1, 'admin/language/en-gb/sale/order.php', '2019-11-05 15:16:01'),
(130, 1, 'admin/language/en-gb/sale/recurring.php', '2019-11-05 15:16:01'),
(131, 1, 'admin/language/en-gb/sale/return.php', '2019-11-05 15:16:01'),
(132, 1, 'admin/language/en-gb/sale/voucher.php', '2019-11-05 15:16:01'),
(133, 1, 'admin/language/en-gb/sale/voucher_theme.php', '2019-11-05 15:16:01'),
(134, 1, 'admin/language/en-gb/setting/setting.php', '2019-11-05 15:16:01'),
(135, 1, 'admin/language/en-gb/setting/store.php', '2019-11-05 15:16:01'),
(136, 1, 'admin/language/en-gb/tool/backup.php', '2019-11-05 15:16:01'),
(137, 1, 'admin/language/en-gb/tool/log.php', '2019-11-05 15:16:01'),
(138, 1, 'admin/language/en-gb/tool/upload.php', '2019-11-05 15:16:01'),
(139, 1, 'admin/language/en-gb/user/api.php', '2019-11-05 15:16:01'),
(140, 1, 'admin/language/en-gb/user/user.php', '2019-11-05 15:16:01'),
(141, 1, 'admin/language/en-gb/user/user_group.php', '2019-11-05 15:16:01'),
(142, 1, 'admin/model/extension/module/modification_editor.php', '2019-11-05 15:16:01'),
(143, 1, 'admin/model/extension/module/modification_manager.php', '2019-11-05 15:16:01'),
(144, 1, 'admin/model/extension/module/simple_blog', '2019-11-05 15:16:01'),
(145, 1, 'admin/model/extension/module/so_basic_products.php', '2019-11-05 15:16:01'),
(146, 1, 'admin/model/extension/module/so_html_content.php', '2019-11-05 15:16:01'),
(147, 1, 'admin/model/extension/module/so_latest_blog.php', '2019-11-05 15:16:01'),
(148, 1, 'admin/model/extension/module/soconfig', '2019-11-05 15:16:01'),
(149, 1, 'admin/view/javascript/ace/ace.js', '2019-11-05 15:16:01'),
(150, 1, 'admin/view/javascript/ace/mode-xml.js', '2019-11-05 15:16:01'),
(151, 1, 'admin/view/javascript/ace/theme-cobalt.js', '2019-11-05 15:16:01'),
(152, 1, 'admin/view/javascript/codemirror/mode', '2019-11-05 15:16:01'),
(153, 1, 'admin/view/template/extension/soconfig', '2019-11-05 15:16:01'),
(154, 1, 'catalog/controller/extension/mobile/home.php', '2019-11-05 15:16:01'),
(155, 1, 'catalog/controller/extension/module/category.php', '2019-11-05 15:16:01'),
(156, 1, 'catalog/controller/extension/module/simple_blog.php', '2019-11-05 15:16:01'),
(157, 1, 'catalog/controller/extension/module/simple_blog_category.php', '2019-11-05 15:16:01'),
(158, 1, 'catalog/controller/extension/module/so_basic_products.php', '2019-11-05 15:16:01'),
(159, 1, 'catalog/controller/extension/module/so_html_content.php', '2019-11-05 15:16:01'),
(160, 1, 'catalog/controller/extension/module/so_latest_blog.php', '2019-11-05 15:16:01'),
(161, 1, 'catalog/controller/extension/module/soconfig.php', '2019-11-05 15:16:01'),
(162, 1, 'catalog/controller/extension/simple_blog/article.php', '2019-11-05 15:16:01'),
(163, 1, 'catalog/controller/extension/simple_blog/author.php', '2019-11-05 15:16:01'),
(164, 1, 'catalog/controller/extension/simple_blog/category.php', '2019-11-05 15:16:01'),
(165, 1, 'catalog/controller/extension/simple_blog/search.php', '2019-11-05 15:16:01'),
(166, 1, 'catalog/controller/extension/soconfig/cart.php', '2019-11-05 15:16:01'),
(167, 1, 'catalog/controller/extension/soconfig/compare.php', '2019-11-05 15:16:01'),
(168, 1, 'catalog/controller/extension/soconfig/content_home1.php', '2019-11-05 15:16:01'),
(169, 1, 'catalog/controller/extension/soconfig/content_home2.php', '2019-11-05 15:16:01'),
(170, 1, 'catalog/controller/extension/soconfig/footer_block1.php', '2019-11-05 15:16:01'),
(171, 1, 'catalog/controller/extension/soconfig/footer_block2.php', '2019-11-05 15:16:01'),
(172, 1, 'catalog/controller/extension/soconfig/footer_block3.php', '2019-11-05 15:16:01'),
(173, 1, 'catalog/controller/extension/soconfig/header_block.php', '2019-11-05 15:16:01'),
(174, 1, 'catalog/controller/extension/soconfig/liveprice.php', '2019-11-05 15:16:01'),
(175, 1, 'catalog/controller/extension/soconfig/quickview.php', '2019-11-05 15:16:01'),
(176, 1, 'catalog/controller/extension/soconfig/quickview_header.php', '2019-11-05 15:16:01'),
(177, 1, 'catalog/controller/extension/soconfig/wishlist.php', '2019-11-05 15:16:01'),
(178, 1, 'catalog/language/en-gb/account/account.php', '2019-11-05 15:16:01'),
(179, 1, 'catalog/language/en-gb/account/address.php', '2019-11-05 15:16:01'),
(180, 1, 'catalog/language/en-gb/account/affiliate.php', '2019-11-05 15:16:01'),
(181, 1, 'catalog/language/en-gb/account/download.php', '2019-11-05 15:16:01'),
(182, 1, 'catalog/language/en-gb/account/edit.php', '2019-11-05 15:16:01'),
(183, 1, 'catalog/language/en-gb/account/forgotten.php', '2019-11-05 15:16:01'),
(184, 1, 'catalog/language/en-gb/account/login.php', '2019-11-05 15:16:01'),
(185, 1, 'catalog/language/en-gb/account/logout.php', '2019-11-05 15:16:01'),
(186, 1, 'catalog/language/en-gb/account/newsletter.php', '2019-11-05 15:16:01'),
(187, 1, 'catalog/language/en-gb/account/order.php', '2019-11-05 15:16:01'),
(188, 1, 'catalog/language/en-gb/account/password.php', '2019-11-05 15:16:01'),
(189, 1, 'catalog/language/en-gb/account/recurring.php', '2019-11-05 15:16:01'),
(190, 1, 'catalog/language/en-gb/account/register.php', '2019-11-05 15:16:01'),
(191, 1, 'catalog/language/en-gb/account/reset.php', '2019-11-05 15:16:01'),
(192, 1, 'catalog/language/en-gb/account/return.php', '2019-11-05 15:16:01'),
(193, 1, 'catalog/language/en-gb/account/reward.php', '2019-11-05 15:16:01'),
(194, 1, 'catalog/language/en-gb/account/success.php', '2019-11-05 15:16:01'),
(195, 1, 'catalog/language/en-gb/account/tracking.php', '2019-11-05 15:16:01'),
(196, 1, 'catalog/language/en-gb/account/transaction.php', '2019-11-05 15:16:01'),
(197, 1, 'catalog/language/en-gb/account/voucher.php', '2019-11-05 15:16:01'),
(198, 1, 'catalog/language/en-gb/account/wishlist.php', '2019-11-05 15:16:01'),
(199, 1, 'catalog/language/en-gb/affiliate/login.php', '2019-11-05 15:16:01'),
(200, 1, 'catalog/language/en-gb/affiliate/register.php', '2019-11-05 15:16:01'),
(201, 1, 'catalog/language/en-gb/affiliate/success.php', '2019-11-05 15:16:01'),
(202, 1, 'catalog/language/en-gb/api/cart.php', '2019-11-05 15:16:01'),
(203, 1, 'catalog/language/en-gb/api/coupon.php', '2019-11-05 15:16:01'),
(204, 1, 'catalog/language/en-gb/api/currency.php', '2019-11-05 15:16:01'),
(205, 1, 'catalog/language/en-gb/api/customer.php', '2019-11-05 15:16:01'),
(206, 1, 'catalog/language/en-gb/api/login.php', '2019-11-05 15:16:01'),
(207, 1, 'catalog/language/en-gb/api/order.php', '2019-11-05 15:16:01'),
(208, 1, 'catalog/language/en-gb/api/payment.php', '2019-11-05 15:16:01'),
(209, 1, 'catalog/language/en-gb/api/reward.php', '2019-11-05 15:16:01'),
(210, 1, 'catalog/language/en-gb/api/shipping.php', '2019-11-05 15:16:01'),
(211, 1, 'catalog/language/en-gb/api/voucher.php', '2019-11-05 15:16:01'),
(212, 1, 'catalog/language/en-gb/checkout/cart.php', '2019-11-05 15:16:01'),
(213, 1, 'catalog/language/en-gb/checkout/checkout.php', '2019-11-05 15:16:01'),
(214, 1, 'catalog/language/en-gb/checkout/failure.php', '2019-11-05 15:16:01'),
(215, 1, 'catalog/language/en-gb/checkout/success.php', '2019-11-05 15:16:01'),
(216, 1, 'catalog/language/en-gb/common/cart.php', '2019-11-05 15:16:01'),
(217, 1, 'catalog/language/en-gb/common/currency.php', '2019-11-05 15:16:01'),
(218, 1, 'catalog/language/en-gb/common/footer.php', '2019-11-05 15:16:01'),
(219, 1, 'catalog/language/en-gb/common/header.php', '2019-11-05 15:16:01'),
(220, 1, 'catalog/language/en-gb/common/language.php', '2019-11-05 15:16:01'),
(221, 1, 'catalog/language/en-gb/common/maintenance.php', '2019-11-05 15:16:01'),
(222, 1, 'catalog/language/en-gb/common/menu.php', '2019-11-05 15:16:01'),
(223, 1, 'catalog/language/en-gb/common/search.php', '2019-11-05 15:16:01'),
(224, 1, 'catalog/language/en-gb/error/not_found.php', '2019-11-05 15:16:01'),
(225, 1, 'catalog/language/en-gb/extension/simple_blog', '2019-11-05 15:16:01'),
(226, 1, 'catalog/language/en-gb/extension/soconfig', '2019-11-05 15:16:01'),
(227, 1, 'catalog/language/en-gb/information/contact.php', '2019-11-05 15:16:01'),
(228, 1, 'catalog/language/en-gb/information/information.php', '2019-11-05 15:16:01'),
(229, 1, 'catalog/language/en-gb/information/sitemap.php', '2019-11-05 15:16:01'),
(230, 1, 'catalog/language/en-gb/information/tracking.php', '2019-11-05 15:16:01'),
(231, 1, 'catalog/language/en-gb/mail/affiliate.php', '2019-11-05 15:16:01'),
(232, 1, 'catalog/language/en-gb/mail/forgotten.php', '2019-11-05 15:16:01'),
(233, 1, 'catalog/language/en-gb/mail/order_add.php', '2019-11-05 15:16:01'),
(234, 1, 'catalog/language/en-gb/mail/order_alert.php', '2019-11-05 15:16:01'),
(235, 1, 'catalog/language/en-gb/mail/order_edit.php', '2019-11-05 15:16:01'),
(236, 1, 'catalog/language/en-gb/mail/register.php', '2019-11-05 15:16:01'),
(237, 1, 'catalog/language/en-gb/mail/review.php', '2019-11-05 15:16:01'),
(238, 1, 'catalog/language/en-gb/mail/transaction.php', '2019-11-05 15:16:01'),
(239, 1, 'catalog/language/en-gb/mail/voucher.php', '2019-11-05 15:16:01'),
(240, 1, 'catalog/language/en-gb/product/category.php', '2019-11-05 15:16:01'),
(241, 1, 'catalog/language/en-gb/product/compare.php', '2019-11-05 15:16:01'),
(242, 1, 'catalog/language/en-gb/product/manufacturer.php', '2019-11-05 15:16:01'),
(243, 1, 'catalog/language/en-gb/product/product.php', '2019-11-05 15:16:01'),
(244, 1, 'catalog/language/en-gb/product/search.php', '2019-11-05 15:16:01'),
(245, 1, 'catalog/language/en-gb/product/special.php', '2019-11-05 15:16:01'),
(246, 1, 'catalog/language/en-gb/tool/upload.php', '2019-11-05 15:16:01'),
(247, 1, 'catalog/model/extension/module/laybuy_layout.php', '2019-11-05 15:16:01'),
(248, 1, 'catalog/model/extension/module/pp_login.php', '2019-11-05 15:16:01'),
(249, 1, 'catalog/model/extension/module/so_basic_products.php', '2019-11-05 15:16:01'),
(250, 1, 'catalog/model/extension/module/so_latest_blog.php', '2019-11-05 15:16:01'),
(251, 1, 'catalog/model/extension/simple_blog/article.php', '2019-11-05 15:16:01'),
(252, 1, 'catalog/model/extension/soconfig/general.php', '2019-11-05 15:16:01'),
(253, 1, 'catalog/view/javascript/jquery/jquery-2.1.1.min.js', '2019-11-05 15:16:01'),
(254, 1, 'catalog/view/javascript/jquery/jquery-2.1.1.min.map', '2019-11-05 15:16:01'),
(255, 1, 'catalog/view/javascript/jquery/owl-carousel', '2019-11-05 15:16:01'),
(256, 1, 'catalog/view/javascript/so_basic_products/css', '2019-11-05 15:16:01'),
(257, 1, 'catalog/view/javascript/so_latest_blog/css', '2019-11-05 15:16:01'),
(258, 1, 'catalog/view/javascript/so_latest_blog/js', '2019-11-05 15:16:01'),
(259, 1, 'catalog/view/javascript/soconfig/css', '2019-11-05 15:16:01'),
(260, 1, 'catalog/view/javascript/soconfig/data', '2019-11-05 15:16:01'),
(261, 1, 'catalog/view/javascript/soconfig/images', '2019-11-05 15:16:01'),
(262, 1, 'catalog/view/javascript/soconfig/js', '2019-11-05 15:16:01'),
(263, 1, 'catalog/view/theme/so-ladaz/css', '2019-11-05 15:16:01'),
(264, 1, 'catalog/view/theme/so-ladaz/image', '2019-11-05 15:16:01'),
(265, 1, 'catalog/view/theme/so-ladaz/images', '2019-11-05 15:16:01'),
(266, 1, 'catalog/view/theme/so-ladaz/js', '2019-11-05 15:16:01'),
(267, 1, 'catalog/view/theme/so-ladaz/sass', '2019-11-05 15:16:01'),
(268, 1, 'catalog/view/theme/so-ladaz/template', '2019-11-05 15:16:01'),
(269, 1, 'image/catalog/banner/home9/1.jpg', '2019-11-05 15:16:01'),
(270, 1, 'image/catalog/banner/home9/10.jpg', '2019-11-05 15:16:01'),
(271, 1, 'image/catalog/banner/home9/11.jpg', '2019-11-05 15:16:01'),
(272, 1, 'image/catalog/banner/home9/2.jpg', '2019-11-05 15:16:01'),
(273, 1, 'image/catalog/banner/home9/3.jpg', '2019-11-05 15:16:01'),
(274, 1, 'image/catalog/banner/home9/4.jpg', '2019-11-05 15:16:01'),
(275, 1, 'image/catalog/banner/home9/5.jpg', '2019-11-05 15:16:01'),
(276, 1, 'image/catalog/banner/home9/6.jpg', '2019-11-05 15:16:01'),
(277, 1, 'image/catalog/banner/home9/7.jpg', '2019-11-05 15:16:01'),
(278, 1, 'image/catalog/banner/home9/8.jpg', '2019-11-05 15:16:01'),
(279, 1, 'image/catalog/banner/home9/9.jpg', '2019-11-05 15:16:01'),
(280, 1, 'image/catalog/cms/home9/icon1.png', '2019-11-05 15:16:01'),
(281, 1, 'image/catalog/cms/home9/icon2.png', '2019-11-05 15:16:01'),
(282, 1, 'image/catalog/cms/home9/icon3.png', '2019-11-05 15:16:01'),
(283, 1, 'image/catalog/cms/home9/icon4.png', '2019-11-05 15:16:01'),
(284, 1, 'image/catalog/cms/home9/payment.png', '2019-11-05 15:16:01'),
(285, 1, 'image/catalog/cms/payment/payment-1.png', '2019-11-05 15:16:01'),
(286, 1, 'image/catalog/cms/payment/payment-2.png', '2019-11-05 15:16:01'),
(287, 1, 'image/catalog/cms/payment/payment-3.png', '2019-11-05 15:16:01'),
(288, 1, 'image/catalog/cms/payment/payment-4.png', '2019-11-05 15:16:01'),
(289, 1, 'image/catalog/cms/payment/payment-5.png', '2019-11-05 15:16:01'),
(290, 1, 'image/catalog/demo/about/image-about.jpg', '2019-11-05 15:16:01'),
(291, 1, 'image/catalog/demo/cms/img-clien-1.png', '2019-11-05 15:16:01'),
(292, 1, 'image/catalog/demo/cms/img-clien-2.png', '2019-11-05 15:16:01'),
(293, 1, 'image/catalog/demo/cms/img-clien-3.png', '2019-11-05 15:16:01'),
(294, 1, 'image/catalog/demo/cms/img-clien.png', '2019-11-05 15:16:01'),
(295, 1, 'image/catalog/demo/payment/app-1.png', '2019-11-05 15:16:01'),
(296, 1, 'image/catalog/demo/payment/app-2.png', '2019-11-05 15:16:01'),
(297, 1, 'image/catalog/demo/payment/payment-4.png', '2019-11-05 15:16:01'),
(298, 1, 'system/library/so/basic_products/Cache_Lite', '2019-11-05 15:16:01'),
(299, 1, 'system/library/so/cache/fonts', '2019-11-05 15:16:01'),
(300, 1, 'system/library/so/cache/minify', '2019-11-05 15:16:01'),
(301, 1, 'system/library/so/html_content/Cache_Lite', '2019-11-05 15:16:01'),
(302, 1, 'system/library/so/latest_blog/Cache_Lite', '2019-11-05 15:16:01'),
(303, 1, 'admin/controller/extension/module/simple_blog/article.php', '2019-11-05 15:16:01'),
(304, 1, 'admin/controller/extension/module/simple_blog/author.php', '2019-11-05 15:16:01'),
(305, 1, 'admin/controller/extension/module/simple_blog/category.php', '2019-11-05 15:16:01'),
(306, 1, 'admin/controller/extension/module/simple_blog/comment.php', '2019-11-05 15:16:01'),
(307, 1, 'admin/controller/extension/module/simple_blog/install.php', '2019-11-05 15:16:01'),
(308, 1, 'admin/controller/extension/module/simple_blog/report.php', '2019-11-05 15:16:01'),
(309, 1, 'admin/language/en-gb/extension/analytics/google.php', '2019-11-05 15:16:01'),
(310, 1, 'admin/language/en-gb/extension/captcha/basic.php', '2019-11-05 15:16:01'),
(311, 1, 'admin/language/en-gb/extension/captcha/google.php', '2019-11-05 15:16:01'),
(312, 1, 'admin/language/en-gb/extension/dashboard/activity.php', '2019-11-05 15:16:01'),
(313, 1, 'admin/language/en-gb/extension/dashboard/chart.php', '2019-11-05 15:16:01'),
(314, 1, 'admin/language/en-gb/extension/dashboard/customer.php', '2019-11-05 15:16:01'),
(315, 1, 'admin/language/en-gb/extension/dashboard/map.php', '2019-11-05 15:16:01'),
(316, 1, 'admin/language/en-gb/extension/dashboard/online.php', '2019-11-05 15:16:01'),
(317, 1, 'admin/language/en-gb/extension/dashboard/order.php', '2019-11-05 15:16:01'),
(318, 1, 'admin/language/en-gb/extension/dashboard/recent.php', '2019-11-05 15:16:01'),
(319, 1, 'admin/language/en-gb/extension/dashboard/sale.php', '2019-11-05 15:16:01'),
(320, 1, 'admin/language/en-gb/extension/extension/analytics.php', '2019-11-05 15:16:01'),
(321, 1, 'admin/language/en-gb/extension/extension/captcha.php', '2019-11-05 15:16:01'),
(322, 1, 'admin/language/en-gb/extension/extension/dashboard.php', '2019-11-05 15:16:01'),
(323, 1, 'admin/language/en-gb/extension/extension/feed.php', '2019-11-05 15:16:01'),
(324, 1, 'admin/language/en-gb/extension/extension/fraud.php', '2019-11-05 15:16:01'),
(325, 1, 'admin/language/en-gb/extension/extension/marketing.php', '2019-11-05 15:16:01'),
(326, 1, 'admin/language/en-gb/extension/extension/menu.php', '2019-11-05 15:16:01'),
(327, 1, 'admin/language/en-gb/extension/extension/module.php', '2019-11-05 15:16:01'),
(328, 1, 'admin/language/en-gb/extension/extension/other.php', '2019-11-05 15:16:01'),
(329, 1, 'admin/language/en-gb/extension/extension/payment.php', '2019-11-05 15:16:01'),
(330, 1, 'admin/language/en-gb/extension/extension/report.php', '2019-11-05 15:16:01'),
(331, 1, 'admin/language/en-gb/extension/extension/shipping.php', '2019-11-05 15:16:01'),
(332, 1, 'admin/language/en-gb/extension/extension/theme.php', '2019-11-05 15:16:01'),
(333, 1, 'admin/language/en-gb/extension/extension/total.php', '2019-11-05 15:16:01'),
(334, 1, 'admin/language/en-gb/extension/feed/google_base.php', '2019-11-05 15:16:01'),
(335, 1, 'admin/language/en-gb/extension/feed/google_sitemap.php', '2019-11-05 15:16:01'),
(336, 1, 'admin/language/en-gb/extension/feed/openbaypro.php', '2019-11-05 15:16:01'),
(337, 1, 'admin/language/en-gb/extension/fraud/fraudlabspro.php', '2019-11-05 15:16:01'),
(338, 1, 'admin/language/en-gb/extension/fraud/ip.php', '2019-11-05 15:16:01'),
(339, 1, 'admin/language/en-gb/extension/fraud/maxmind.php', '2019-11-05 15:16:01'),
(340, 1, 'admin/language/en-gb/extension/menu/default.php', '2019-11-05 15:16:01'),
(341, 1, 'admin/language/en-gb/extension/module/account.php', '2019-11-05 15:16:01'),
(342, 1, 'admin/language/en-gb/extension/module/amazon_login.php', '2019-11-05 15:16:01'),
(343, 1, 'admin/language/en-gb/extension/module/amazon_pay.php', '2019-11-05 15:16:01'),
(344, 1, 'admin/language/en-gb/extension/module/banner.php', '2019-11-05 15:16:01'),
(345, 1, 'admin/language/en-gb/extension/module/bestseller.php', '2019-11-05 15:16:01'),
(346, 1, 'admin/language/en-gb/extension/module/carousel.php', '2019-11-05 15:16:01'),
(347, 1, 'admin/language/en-gb/extension/module/category.php', '2019-11-05 15:16:01'),
(348, 1, 'admin/language/en-gb/extension/module/divido_calculator.php', '2019-11-05 15:16:01'),
(349, 1, 'admin/language/en-gb/extension/module/ebay_listing.php', '2019-11-05 15:16:01'),
(350, 1, 'admin/language/en-gb/extension/module/featured.php', '2019-11-05 15:16:01'),
(351, 1, 'admin/language/en-gb/extension/module/filter.php', '2019-11-05 15:16:01'),
(352, 1, 'admin/language/en-gb/extension/module/google_hangouts.php', '2019-11-05 15:16:01'),
(353, 1, 'admin/language/en-gb/extension/module/html.php', '2019-11-05 15:16:01'),
(354, 1, 'admin/language/en-gb/extension/module/information.php', '2019-11-05 15:16:01'),
(355, 1, 'admin/language/en-gb/extension/module/klarna_checkout_module.php', '2019-11-05 15:16:01'),
(356, 1, 'admin/language/en-gb/extension/module/latest.php', '2019-11-05 15:16:01'),
(357, 1, 'admin/language/en-gb/extension/module/laybuy_layout.php', '2019-11-05 15:16:01'),
(358, 1, 'admin/language/en-gb/extension/module/modification_editor.php', '2019-11-05 15:16:01'),
(359, 1, 'admin/language/en-gb/extension/module/pilibaba_button.php', '2019-11-05 15:16:01'),
(360, 1, 'admin/language/en-gb/extension/module/pp_braintree_button.php', '2019-11-05 15:16:01'),
(361, 1, 'admin/language/en-gb/extension/module/pp_button.php', '2019-11-05 15:16:01'),
(362, 1, 'admin/language/en-gb/extension/module/pp_login.php', '2019-11-05 15:16:01'),
(363, 1, 'admin/language/en-gb/extension/module/sagepay_direct_cards.php', '2019-11-05 15:16:01'),
(364, 1, 'admin/language/en-gb/extension/module/sagepay_server_cards.php', '2019-11-05 15:16:01'),
(365, 1, 'admin/language/en-gb/extension/module/simple_blog', '2019-11-05 15:16:01'),
(366, 1, 'admin/language/en-gb/extension/module/simple_blog.php', '2019-11-05 15:16:01'),
(367, 1, 'admin/language/en-gb/extension/module/simple_blog_category.php', '2019-11-05 15:16:01'),
(368, 1, 'admin/language/en-gb/extension/module/slideshow.php', '2019-11-05 15:16:01'),
(369, 1, 'admin/language/en-gb/extension/module/so_basic_products.php', '2019-11-05 15:16:01'),
(370, 1, 'admin/language/en-gb/extension/module/so_html_content.php', '2019-11-05 15:16:01'),
(371, 1, 'admin/language/en-gb/extension/module/so_latest_blog.php', '2019-11-05 15:16:01'),
(372, 1, 'admin/language/en-gb/extension/module/soconfig.php', '2019-11-05 15:16:01'),
(373, 1, 'admin/language/en-gb/extension/module/somobile.php', '2019-11-05 15:16:01'),
(374, 1, 'admin/language/en-gb/extension/module/special.php', '2019-11-05 15:16:01'),
(375, 1, 'admin/language/en-gb/extension/module/store.php', '2019-11-05 15:16:01'),
(376, 1, 'admin/language/en-gb/extension/openbay/amazon.php', '2019-11-05 15:16:01'),
(377, 1, 'admin/language/en-gb/extension/openbay/amazon_bulk_linking.php', '2019-11-05 15:16:01'),
(378, 1, 'admin/language/en-gb/extension/openbay/amazon_bulk_listing.php', '2019-11-05 15:16:01'),
(379, 1, 'admin/language/en-gb/extension/openbay/amazon_links.php', '2019-11-05 15:16:01'),
(380, 1, 'admin/language/en-gb/extension/openbay/amazon_listing.php', '2019-11-05 15:16:01'),
(381, 1, 'admin/language/en-gb/extension/openbay/amazon_listingsaved.php', '2019-11-05 15:16:01'),
(382, 1, 'admin/language/en-gb/extension/openbay/amazon_settings.php', '2019-11-05 15:16:01'),
(383, 1, 'admin/language/en-gb/extension/openbay/amazon_stockupdates.php', '2019-11-05 15:16:01'),
(384, 1, 'admin/language/en-gb/extension/openbay/amazon_subscription.php', '2019-11-05 15:16:01'),
(385, 1, 'admin/language/en-gb/extension/openbay/amazonus.php', '2019-11-05 15:16:01'),
(386, 1, 'admin/language/en-gb/extension/openbay/amazonus_bulk_linking.php', '2019-11-05 15:16:01'),
(387, 1, 'admin/language/en-gb/extension/openbay/amazonus_bulk_listing.php', '2019-11-05 15:16:01'),
(388, 1, 'admin/language/en-gb/extension/openbay/amazonus_links.php', '2019-11-05 15:16:01'),
(389, 1, 'admin/language/en-gb/extension/openbay/amazonus_listing.php', '2019-11-05 15:16:01'),
(390, 1, 'admin/language/en-gb/extension/openbay/amazonus_listingsaved.php', '2019-11-05 15:16:01'),
(391, 1, 'admin/language/en-gb/extension/openbay/amazonus_settings.php', '2019-11-05 15:16:01'),
(392, 1, 'admin/language/en-gb/extension/openbay/amazonus_stockupdates.php', '2019-11-05 15:16:01'),
(393, 1, 'admin/language/en-gb/extension/openbay/amazonus_subscription.php', '2019-11-05 15:16:01'),
(394, 1, 'admin/language/en-gb/extension/openbay/ebay.php', '2019-11-05 15:16:01'),
(395, 1, 'admin/language/en-gb/extension/openbay/ebay_edit.php', '2019-11-05 15:16:01'),
(396, 1, 'admin/language/en-gb/extension/openbay/ebay_import.php', '2019-11-05 15:16:01'),
(397, 1, 'admin/language/en-gb/extension/openbay/ebay_links.php', '2019-11-05 15:16:01'),
(398, 1, 'admin/language/en-gb/extension/openbay/ebay_new.php', '2019-11-05 15:16:01'),
(399, 1, 'admin/language/en-gb/extension/openbay/ebay_newbulk.php', '2019-11-05 15:16:01'),
(400, 1, 'admin/language/en-gb/extension/openbay/ebay_orders.php', '2019-11-05 15:16:01'),
(401, 1, 'admin/language/en-gb/extension/openbay/ebay_profile.php', '2019-11-05 15:16:01'),
(402, 1, 'admin/language/en-gb/extension/openbay/ebay_settings.php', '2019-11-05 15:16:01'),
(403, 1, 'admin/language/en-gb/extension/openbay/ebay_subscription.php', '2019-11-05 15:16:01'),
(404, 1, 'admin/language/en-gb/extension/openbay/ebay_summary.php', '2019-11-05 15:16:01'),
(405, 1, 'admin/language/en-gb/extension/openbay/ebay_syncronise.php', '2019-11-05 15:16:01'),
(406, 1, 'admin/language/en-gb/extension/openbay/ebay_template.php', '2019-11-05 15:16:01'),
(407, 1, 'admin/language/en-gb/extension/openbay/ebay_usage.php', '2019-11-05 15:16:01'),
(408, 1, 'admin/language/en-gb/extension/openbay/etsy.php', '2019-11-05 15:16:01'),
(409, 1, 'admin/language/en-gb/extension/openbay/etsy_create.php', '2019-11-05 15:16:01'),
(410, 1, 'admin/language/en-gb/extension/openbay/etsy_edit.php', '2019-11-05 15:16:01'),
(411, 1, 'admin/language/en-gb/extension/openbay/etsy_links.php', '2019-11-05 15:16:01'),
(412, 1, 'admin/language/en-gb/extension/openbay/etsy_listings.php', '2019-11-05 15:16:01'),
(413, 1, 'admin/language/en-gb/extension/openbay/etsy_settings.php', '2019-11-05 15:16:01'),
(414, 1, 'admin/language/en-gb/extension/openbay/fba.php', '2019-11-05 15:16:01'),
(415, 1, 'admin/language/en-gb/extension/openbay/fba_fulfillment.php', '2019-11-05 15:16:01'),
(416, 1, 'admin/language/en-gb/extension/openbay/fba_fulfillment_list.php', '2019-11-05 15:16:01'),
(417, 1, 'admin/language/en-gb/extension/openbay/fba_order.php', '2019-11-05 15:16:01'),
(418, 1, 'admin/language/en-gb/extension/openbay/fba_settings.php', '2019-11-05 15:16:01'),
(419, 1, 'admin/language/en-gb/extension/openbay/openbay_itemlist.php', '2019-11-05 15:16:01'),
(420, 1, 'admin/language/en-gb/extension/openbay/openbay_menu.php', '2019-11-05 15:16:01'),
(421, 1, 'admin/language/en-gb/extension/openbay/openbay_order.php', '2019-11-05 15:16:01'),
(422, 1, 'admin/language/en-gb/extension/payment/alipay.php', '2019-11-05 15:16:01'),
(423, 1, 'admin/language/en-gb/extension/payment/alipay_cross.php', '2019-11-05 15:16:01'),
(424, 1, 'admin/language/en-gb/extension/payment/amazon_login_pay.php', '2019-11-05 15:16:01'),
(425, 1, 'admin/language/en-gb/extension/payment/authorizenet_aim.php', '2019-11-05 15:16:01'),
(426, 1, 'admin/language/en-gb/extension/payment/authorizenet_sim.php', '2019-11-05 15:16:01'),
(427, 1, 'admin/language/en-gb/extension/payment/bank_transfer.php', '2019-11-05 15:16:01'),
(428, 1, 'admin/language/en-gb/extension/payment/bluepay_hosted.php', '2019-11-05 15:16:01'),
(429, 1, 'admin/language/en-gb/extension/payment/bluepay_redirect.php', '2019-11-05 15:16:01'),
(430, 1, 'admin/language/en-gb/extension/payment/cardconnect.php', '2019-11-05 15:16:01'),
(431, 1, 'admin/language/en-gb/extension/payment/cardinity.php', '2019-11-05 15:16:01'),
(432, 1, 'admin/language/en-gb/extension/payment/cheque.php', '2019-11-05 15:16:01'),
(433, 1, 'admin/language/en-gb/extension/payment/cod.php', '2019-11-05 15:16:01'),
(434, 1, 'admin/language/en-gb/extension/payment/divido.php', '2019-11-05 15:16:01'),
(435, 1, 'admin/language/en-gb/extension/payment/eway.php', '2019-11-05 15:16:01'),
(436, 1, 'admin/language/en-gb/extension/payment/firstdata.php', '2019-11-05 15:16:01'),
(437, 1, 'admin/language/en-gb/extension/payment/firstdata_remote.php', '2019-11-05 15:16:01'),
(438, 1, 'admin/language/en-gb/extension/payment/free_checkout.php', '2019-11-05 15:16:01'),
(439, 1, 'admin/language/en-gb/extension/payment/g2apay.php', '2019-11-05 15:16:01'),
(440, 1, 'admin/language/en-gb/extension/payment/globalpay.php', '2019-11-05 15:16:01'),
(441, 1, 'admin/language/en-gb/extension/payment/globalpay_remote.php', '2019-11-05 15:16:01'),
(442, 1, 'admin/language/en-gb/extension/payment/klarna_account.php', '2019-11-05 15:16:01'),
(443, 1, 'admin/language/en-gb/extension/payment/klarna_checkout.php', '2019-11-05 15:16:01'),
(444, 1, 'admin/language/en-gb/extension/payment/klarna_invoice.php', '2019-11-05 15:16:01'),
(445, 1, 'admin/language/en-gb/extension/payment/laybuy.php', '2019-11-05 15:16:01'),
(446, 1, 'admin/language/en-gb/extension/payment/liqpay.php', '2019-11-05 15:16:01'),
(447, 1, 'admin/language/en-gb/extension/payment/nochex.php', '2019-11-05 15:16:01'),
(448, 1, 'admin/language/en-gb/extension/payment/paymate.php', '2019-11-05 15:16:01'),
(449, 1, 'admin/language/en-gb/extension/payment/paypoint.php', '2019-11-05 15:16:01'),
(450, 1, 'admin/language/en-gb/extension/payment/payza.php', '2019-11-05 15:16:01'),
(451, 1, 'admin/language/en-gb/extension/payment/perpetual_payments.php', '2019-11-05 15:16:01'),
(452, 1, 'admin/language/en-gb/extension/payment/pilibaba.php', '2019-11-05 15:16:01'),
(453, 1, 'admin/language/en-gb/extension/payment/pp_braintree.php', '2019-11-05 15:16:01'),
(454, 1, 'admin/language/en-gb/extension/payment/pp_express.php', '2019-11-05 15:16:01'),
(455, 1, 'admin/language/en-gb/extension/payment/pp_express_order.php', '2019-11-05 15:16:01'),
(456, 1, 'admin/language/en-gb/extension/payment/pp_express_refund.php', '2019-11-05 15:16:01'),
(457, 1, 'admin/language/en-gb/extension/payment/pp_express_search.php', '2019-11-05 15:16:01'),
(458, 1, 'admin/language/en-gb/extension/payment/pp_express_view.php', '2019-11-05 15:16:01'),
(459, 1, 'admin/language/en-gb/extension/payment/pp_payflow.php', '2019-11-05 15:16:01'),
(460, 1, 'admin/language/en-gb/extension/payment/pp_payflow_iframe.php', '2019-11-05 15:16:01'),
(461, 1, 'admin/language/en-gb/extension/payment/pp_pro.php', '2019-11-05 15:16:01'),
(462, 1, 'admin/language/en-gb/extension/payment/pp_pro_iframe.php', '2019-11-05 15:16:01'),
(463, 1, 'admin/language/en-gb/extension/payment/pp_standard.php', '2019-11-05 15:16:01'),
(464, 1, 'admin/language/en-gb/extension/payment/realex.php', '2019-11-05 15:16:01'),
(465, 1, 'admin/language/en-gb/extension/payment/realex_remote.php', '2019-11-05 15:16:01'),
(466, 1, 'admin/language/en-gb/extension/payment/sagepay_direct.php', '2019-11-05 15:16:01'),
(467, 1, 'admin/language/en-gb/extension/payment/sagepay_server.php', '2019-11-05 15:16:01'),
(468, 1, 'admin/language/en-gb/extension/payment/sagepay_us.php', '2019-11-05 15:16:01'),
(469, 1, 'admin/language/en-gb/extension/payment/securetrading_pp.php', '2019-11-05 15:16:01'),
(470, 1, 'admin/language/en-gb/extension/payment/securetrading_ws.php', '2019-11-05 15:16:01'),
(471, 1, 'admin/language/en-gb/extension/payment/skrill.php', '2019-11-05 15:16:01'),
(472, 1, 'admin/language/en-gb/extension/payment/squareup.php', '2019-11-05 15:16:01'),
(473, 1, 'admin/language/en-gb/extension/payment/twocheckout.php', '2019-11-05 15:16:01'),
(474, 1, 'admin/language/en-gb/extension/payment/web_payment_software.php', '2019-11-05 15:16:01'),
(475, 1, 'admin/language/en-gb/extension/payment/wechat_pay.php', '2019-11-05 15:16:01'),
(476, 1, 'admin/language/en-gb/extension/payment/worldpay.php', '2019-11-05 15:16:01'),
(477, 1, 'admin/language/en-gb/extension/report/customer_activity.php', '2019-11-05 15:16:01'),
(478, 1, 'admin/language/en-gb/extension/report/customer_order.php', '2019-11-05 15:16:01'),
(479, 1, 'admin/language/en-gb/extension/report/customer_reward.php', '2019-11-05 15:16:01'),
(480, 1, 'admin/language/en-gb/extension/report/customer_search.php', '2019-11-05 15:16:01'),
(481, 1, 'admin/language/en-gb/extension/report/customer_transaction.php', '2019-11-05 15:16:01'),
(482, 1, 'admin/language/en-gb/extension/report/marketing.php', '2019-11-05 15:16:01'),
(483, 1, 'admin/language/en-gb/extension/report/product_purchased.php', '2019-11-05 15:16:01'),
(484, 1, 'admin/language/en-gb/extension/report/product_viewed.php', '2019-11-05 15:16:01'),
(485, 1, 'admin/language/en-gb/extension/report/sale_coupon.php', '2019-11-05 15:16:01'),
(486, 1, 'admin/language/en-gb/extension/report/sale_order.php', '2019-11-05 15:16:01'),
(487, 1, 'admin/language/en-gb/extension/report/sale_return.php', '2019-11-05 15:16:01'),
(488, 1, 'admin/language/en-gb/extension/report/sale_shipping.php', '2019-11-05 15:16:01'),
(489, 1, 'admin/language/en-gb/extension/report/sale_tax.php', '2019-11-05 15:16:01'),
(490, 1, 'admin/language/en-gb/extension/shipping/auspost.php', '2019-11-05 15:16:02'),
(491, 1, 'admin/language/en-gb/extension/shipping/citylink.php', '2019-11-05 15:16:02'),
(492, 1, 'admin/language/en-gb/extension/shipping/ec_ship.php', '2019-11-05 15:16:02'),
(493, 1, 'admin/language/en-gb/extension/shipping/fedex.php', '2019-11-05 15:16:02'),
(494, 1, 'admin/language/en-gb/extension/shipping/flat.php', '2019-11-05 15:16:02'),
(495, 1, 'admin/language/en-gb/extension/shipping/free.php', '2019-11-05 15:16:02'),
(496, 1, 'admin/language/en-gb/extension/shipping/item.php', '2019-11-05 15:16:02'),
(497, 1, 'admin/language/en-gb/extension/shipping/parcelforce_48.php', '2019-11-05 15:16:02'),
(498, 1, 'admin/language/en-gb/extension/shipping/pickup.php', '2019-11-05 15:16:02'),
(499, 1, 'admin/language/en-gb/extension/shipping/royal_mail.php', '2019-11-05 15:16:02'),
(500, 1, 'admin/language/en-gb/extension/shipping/ups.php', '2019-11-05 15:16:02'),
(501, 1, 'admin/language/en-gb/extension/shipping/usps.php', '2019-11-05 15:16:02'),
(502, 1, 'admin/language/en-gb/extension/shipping/weight.php', '2019-11-05 15:16:02'),
(503, 1, 'admin/language/en-gb/extension/theme/default.php', '2019-11-05 15:16:02'),
(504, 1, 'admin/language/en-gb/extension/total/coupon.php', '2019-11-05 15:16:02'),
(505, 1, 'admin/language/en-gb/extension/total/credit.php', '2019-11-05 15:16:02'),
(506, 1, 'admin/language/en-gb/extension/total/handling.php', '2019-11-05 15:16:02'),
(507, 1, 'admin/language/en-gb/extension/total/klarna_fee.php', '2019-11-05 15:16:02'),
(508, 1, 'admin/language/en-gb/extension/total/low_order_fee.php', '2019-11-05 15:16:02'),
(509, 1, 'admin/language/en-gb/extension/total/reward.php', '2019-11-05 15:16:02'),
(510, 1, 'admin/language/en-gb/extension/total/shipping.php', '2019-11-05 15:16:02'),
(511, 1, 'admin/language/en-gb/extension/total/sub_total.php', '2019-11-05 15:16:02'),
(512, 1, 'admin/language/en-gb/extension/total/tax.php', '2019-11-05 15:16:02'),
(513, 1, 'admin/language/en-gb/extension/total/total.php', '2019-11-05 15:16:02'),
(514, 1, 'admin/language/en-gb/extension/total/voucher.php', '2019-11-05 15:16:02'),
(515, 1, 'admin/model/extension/module/simple_blog/article.php', '2019-11-05 15:16:02'),
(516, 1, 'admin/model/extension/module/simple_blog/author.php', '2019-11-05 15:16:02'),
(517, 1, 'admin/model/extension/module/simple_blog/category.php', '2019-11-05 15:16:02'),
(518, 1, 'admin/model/extension/module/simple_blog/comment.php', '2019-11-05 15:16:02'),
(519, 1, 'admin/model/extension/module/simple_blog/install.php', '2019-11-05 15:16:02'),
(520, 1, 'admin/model/extension/module/simple_blog/report.php', '2019-11-05 15:16:02'),
(521, 1, 'admin/model/extension/module/soconfig/setting.php', '2019-11-05 15:16:02'),
(522, 1, 'admin/model/extension/module/soconfig/soproduct.php', '2019-11-05 15:16:02'),
(523, 1, 'admin/view/javascript/codemirror/lib/codemirror.css', '2019-11-05 15:16:02'),
(524, 1, 'admin/view/javascript/codemirror/lib/codemirror.js', '2019-11-05 15:16:02'),
(525, 1, 'admin/view/javascript/codemirror/lib/formatting.js', '2019-11-05 15:16:02'),
(526, 1, 'admin/view/javascript/codemirror/lib/xml.js', '2019-11-05 15:16:02'),
(527, 1, 'admin/view/javascript/codemirror/mode/xml', '2019-11-05 15:16:02'),
(528, 1, 'admin/view/javascript/codemirror/theme/3024-day.css', '2019-11-05 15:16:02'),
(529, 1, 'admin/view/javascript/codemirror/theme/3024-night.css', '2019-11-05 15:16:02'),
(530, 1, 'admin/view/javascript/codemirror/theme/abcdef.css', '2019-11-05 15:16:02'),
(531, 1, 'admin/view/javascript/codemirror/theme/ambiance-mobile.css', '2019-11-05 15:16:02'),
(532, 1, 'admin/view/javascript/codemirror/theme/ambiance.css', '2019-11-05 15:16:02'),
(533, 1, 'admin/view/javascript/codemirror/theme/base16-dark.css', '2019-11-05 15:16:02'),
(534, 1, 'admin/view/javascript/codemirror/theme/base16-light.css', '2019-11-05 15:16:02'),
(535, 1, 'admin/view/javascript/codemirror/theme/bespin.css', '2019-11-05 15:16:02'),
(536, 1, 'admin/view/javascript/codemirror/theme/blackboard.css', '2019-11-05 15:16:02'),
(537, 1, 'admin/view/javascript/codemirror/theme/cobalt.css', '2019-11-05 15:16:02'),
(538, 1, 'admin/view/javascript/codemirror/theme/colorforth.css', '2019-11-05 15:16:02'),
(539, 1, 'admin/view/javascript/codemirror/theme/dracula.css', '2019-11-05 15:16:02'),
(540, 1, 'admin/view/javascript/codemirror/theme/eclipse.css', '2019-11-05 15:16:02'),
(541, 1, 'admin/view/javascript/codemirror/theme/elegant.css', '2019-11-05 15:16:02'),
(542, 1, 'admin/view/javascript/codemirror/theme/erlang-dark.css', '2019-11-05 15:16:02'),
(543, 1, 'admin/view/javascript/codemirror/theme/hopscotch.css', '2019-11-05 15:16:02'),
(544, 1, 'admin/view/javascript/codemirror/theme/icecoder.css', '2019-11-05 15:16:02'),
(545, 1, 'admin/view/javascript/codemirror/theme/isotope.css', '2019-11-05 15:16:02'),
(546, 1, 'admin/view/javascript/codemirror/theme/lesser-dark.css', '2019-11-05 15:16:02'),
(547, 1, 'admin/view/javascript/codemirror/theme/liquibyte.css', '2019-11-05 15:16:02'),
(548, 1, 'admin/view/javascript/codemirror/theme/material.css', '2019-11-05 15:16:02'),
(549, 1, 'admin/view/javascript/codemirror/theme/mbo.css', '2019-11-05 15:16:02'),
(550, 1, 'admin/view/javascript/codemirror/theme/mdn-like.css', '2019-11-05 15:16:02'),
(551, 1, 'admin/view/javascript/codemirror/theme/midnight.css', '2019-11-05 15:16:02'),
(552, 1, 'admin/view/javascript/codemirror/theme/monokai.css', '2019-11-05 15:16:02'),
(553, 1, 'admin/view/javascript/codemirror/theme/neat.css', '2019-11-05 15:16:02'),
(554, 1, 'admin/view/javascript/codemirror/theme/neo.css', '2019-11-05 15:16:02'),
(555, 1, 'admin/view/javascript/codemirror/theme/night.css', '2019-11-05 15:16:02'),
(556, 1, 'admin/view/javascript/codemirror/theme/paraiso-dark.css', '2019-11-05 15:16:02'),
(557, 1, 'admin/view/javascript/codemirror/theme/paraiso-light.css', '2019-11-05 15:16:02'),
(558, 1, 'admin/view/javascript/codemirror/theme/pastel-on-dark.css', '2019-11-05 15:16:02'),
(559, 1, 'admin/view/javascript/codemirror/theme/railscasts.css', '2019-11-05 15:16:02'),
(560, 1, 'admin/view/javascript/codemirror/theme/rubyblue.css', '2019-11-05 15:16:02'),
(561, 1, 'admin/view/javascript/codemirror/theme/seti.css', '2019-11-05 15:16:02'),
(562, 1, 'admin/view/javascript/codemirror/theme/solarized.css', '2019-11-05 15:16:02'),
(563, 1, 'admin/view/javascript/codemirror/theme/the-matrix.css', '2019-11-05 15:16:02'),
(564, 1, 'admin/view/javascript/codemirror/theme/tomorrow-night-bright.css', '2019-11-05 15:16:02'),
(565, 1, 'admin/view/javascript/codemirror/theme/tomorrow-night-eighties.css', '2019-11-05 15:16:02'),
(566, 1, 'admin/view/javascript/codemirror/theme/ttcn.css', '2019-11-05 15:16:02'),
(567, 1, 'admin/view/javascript/codemirror/theme/twilight.css', '2019-11-05 15:16:02'),
(568, 1, 'admin/view/javascript/codemirror/theme/vibrant-ink.css', '2019-11-05 15:16:02'),
(569, 1, 'admin/view/javascript/codemirror/theme/xq-dark.css', '2019-11-05 15:16:02'),
(570, 1, 'admin/view/javascript/codemirror/theme/xq-light.css', '2019-11-05 15:16:02'),
(571, 1, 'admin/view/javascript/codemirror/theme/yeti.css', '2019-11-05 15:16:02'),
(572, 1, 'admin/view/javascript/codemirror/theme/zenburn.css', '2019-11-05 15:16:02'),
(573, 1, 'admin/view/template/extension/module/account.twig', '2019-11-05 15:16:02'),
(574, 1, 'admin/view/template/extension/module/amazon_login.twig', '2019-11-05 15:16:02'),
(575, 1, 'admin/view/template/extension/module/amazon_pay.twig', '2019-11-05 15:16:02'),
(576, 1, 'admin/view/template/extension/module/banner.twig', '2019-11-05 15:16:02'),
(577, 1, 'admin/view/template/extension/module/bestseller.twig', '2019-11-05 15:16:02'),
(578, 1, 'admin/view/template/extension/module/carousel.twig', '2019-11-05 15:16:02'),
(579, 1, 'admin/view/template/extension/module/category.twig', '2019-11-05 15:16:02'),
(580, 1, 'admin/view/template/extension/module/divido_calculator.twig', '2019-11-05 15:16:02'),
(581, 1, 'admin/view/template/extension/module/ebay_listing.twig', '2019-11-05 15:16:02'),
(582, 1, 'admin/view/template/extension/module/featured.twig', '2019-11-05 15:16:02'),
(583, 1, 'admin/view/template/extension/module/filter.twig', '2019-11-05 15:16:02'),
(584, 1, 'admin/view/template/extension/module/google_hangouts.twig', '2019-11-05 15:16:02'),
(585, 1, 'admin/view/template/extension/module/html.twig', '2019-11-05 15:16:02'),
(586, 1, 'admin/view/template/extension/module/information.twig', '2019-11-05 15:16:02'),
(587, 1, 'admin/view/template/extension/module/klarna_checkout_module.twig', '2019-11-05 15:16:02'),
(588, 1, 'admin/view/template/extension/module/latest.twig', '2019-11-05 15:16:02'),
(589, 1, 'admin/view/template/extension/module/laybuy_layout.twig', '2019-11-05 15:16:02'),
(590, 1, 'admin/view/template/extension/module/modification_editor.twig', '2019-11-05 15:16:02'),
(591, 1, 'admin/view/template/extension/module/modification_manager', '2019-11-05 15:16:02'),
(592, 1, 'admin/view/template/extension/module/pilibaba_button.twig', '2019-11-05 15:16:02'),
(593, 1, 'admin/view/template/extension/module/pp_braintree_button.twig', '2019-11-05 15:16:02'),
(594, 1, 'admin/view/template/extension/module/pp_button.twig', '2019-11-05 15:16:02'),
(595, 1, 'admin/view/template/extension/module/pp_login.twig', '2019-11-05 15:16:02'),
(596, 1, 'admin/view/template/extension/module/sagepay_direct_cards.twig', '2019-11-05 15:16:02'),
(597, 1, 'admin/view/template/extension/module/sagepay_server_cards.twig', '2019-11-05 15:16:02'),
(598, 1, 'admin/view/template/extension/module/simple_blog', '2019-11-05 15:16:02'),
(599, 1, 'admin/view/template/extension/module/simple_blog.twig', '2019-11-05 15:16:02'),
(600, 1, 'admin/view/template/extension/module/simple_blog_category.twig', '2019-11-05 15:16:02'),
(601, 1, 'admin/view/template/extension/module/slideshow.twig', '2019-11-05 15:16:02'),
(602, 1, 'admin/view/template/extension/module/so_basic_products.twig', '2019-11-05 15:16:02'),
(603, 1, 'admin/view/template/extension/module/so_html_content.twig', '2019-11-05 15:16:02'),
(604, 1, 'admin/view/template/extension/module/so_latest_blog', '2019-11-05 15:16:02'),
(605, 1, 'admin/view/template/extension/module/special.twig', '2019-11-05 15:16:02'),
(606, 1, 'admin/view/template/extension/module/store.twig', '2019-11-05 15:16:02'),
(607, 1, 'admin/view/template/extension/soconfig/asset', '2019-11-05 15:16:02'),
(608, 1, 'admin/view/template/extension/soconfig/class', '2019-11-05 15:16:02'),
(609, 1, 'admin/view/template/extension/soconfig/demo', '2019-11-05 15:16:02'),
(610, 1, 'admin/view/template/extension/soconfig/images', '2019-11-05 15:16:02'),
(611, 1, 'admin/view/template/extension/soconfig/layout_form.twig', '2019-11-05 15:16:02');
INSERT INTO `tbl_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(612, 1, 'admin/view/template/extension/soconfig/options_mobile.twig', '2019-11-05 15:16:02'),
(613, 1, 'admin/view/template/extension/soconfig/options_stores.twig', '2019-11-05 15:16:02'),
(614, 1, 'admin/view/template/extension/soconfig/patterns', '2019-11-05 15:16:02'),
(615, 1, 'admin/view/template/extension/soconfig/soconfig.twig', '2019-11-05 15:16:02'),
(616, 1, 'admin/view/template/extension/soconfig/somobile.twig', '2019-11-05 15:16:02'),
(617, 1, 'catalog/language/en-gb/extension/captcha/basic.php', '2019-11-05 15:16:02'),
(618, 1, 'catalog/language/en-gb/extension/captcha/google.php', '2019-11-05 15:16:02'),
(619, 1, 'catalog/language/en-gb/extension/credit_card/sagepay_direct.php', '2019-11-05 15:16:02'),
(620, 1, 'catalog/language/en-gb/extension/credit_card/sagepay_server.php', '2019-11-05 15:16:02'),
(621, 1, 'catalog/language/en-gb/extension/credit_card/squareup.php', '2019-11-05 15:16:02'),
(622, 1, 'catalog/language/en-gb/extension/module/account.php', '2019-11-05 15:16:02'),
(623, 1, 'catalog/language/en-gb/extension/module/amazon_login.php', '2019-11-05 15:16:02'),
(624, 1, 'catalog/language/en-gb/extension/module/amazon_pay.php', '2019-11-05 15:16:02'),
(625, 1, 'catalog/language/en-gb/extension/module/bestseller.php', '2019-11-05 15:16:02'),
(626, 1, 'catalog/language/en-gb/extension/module/category.php', '2019-11-05 15:16:02'),
(627, 1, 'catalog/language/en-gb/extension/module/divido_calculator.php', '2019-11-05 15:16:02'),
(628, 1, 'catalog/language/en-gb/extension/module/ebay_listing.php', '2019-11-05 15:16:02'),
(629, 1, 'catalog/language/en-gb/extension/module/featured.php', '2019-11-05 15:16:02'),
(630, 1, 'catalog/language/en-gb/extension/module/filter.php', '2019-11-05 15:16:02'),
(631, 1, 'catalog/language/en-gb/extension/module/google_hangouts.php', '2019-11-05 15:16:02'),
(632, 1, 'catalog/language/en-gb/extension/module/information.php', '2019-11-05 15:16:02'),
(633, 1, 'catalog/language/en-gb/extension/module/latest.php', '2019-11-05 15:16:02'),
(634, 1, 'catalog/language/en-gb/extension/module/laybuy_layout.php', '2019-11-05 15:16:02'),
(635, 1, 'catalog/language/en-gb/extension/module/simple_blog.php', '2019-11-05 15:16:02'),
(636, 1, 'catalog/language/en-gb/extension/module/simple_blog_category.php', '2019-11-05 15:16:02'),
(637, 1, 'catalog/language/en-gb/extension/module/so_basic_products.php', '2019-11-05 15:16:02'),
(638, 1, 'catalog/language/en-gb/extension/module/so_html_content.php', '2019-11-05 15:16:02'),
(639, 1, 'catalog/language/en-gb/extension/module/so_latest_blog.php', '2019-11-05 15:16:02'),
(640, 1, 'catalog/language/en-gb/extension/module/so_megamenu.php', '2019-11-05 15:16:02'),
(641, 1, 'catalog/language/en-gb/extension/module/special.php', '2019-11-05 15:16:02'),
(642, 1, 'catalog/language/en-gb/extension/module/store.php', '2019-11-05 15:16:02'),
(643, 1, 'catalog/language/en-gb/extension/openbay/amazon_order.php', '2019-11-05 15:16:02'),
(644, 1, 'catalog/language/en-gb/extension/openbay/amazonus_order.php', '2019-11-05 15:16:02'),
(645, 1, 'catalog/language/en-gb/extension/openbay/ebay_order.php', '2019-11-05 15:16:02'),
(646, 1, 'catalog/language/en-gb/extension/openbay/etsy_order.php', '2019-11-05 15:16:02'),
(647, 1, 'catalog/language/en-gb/extension/payment/alipay.php', '2019-11-05 15:16:02'),
(648, 1, 'catalog/language/en-gb/extension/payment/alipay_cross.php', '2019-11-05 15:16:02'),
(649, 1, 'catalog/language/en-gb/extension/payment/amazon_login_pay.php', '2019-11-05 15:16:02'),
(650, 1, 'catalog/language/en-gb/extension/payment/authorizenet_aim.php', '2019-11-05 15:16:02'),
(651, 1, 'catalog/language/en-gb/extension/payment/authorizenet_sim.php', '2019-11-05 15:16:02'),
(652, 1, 'catalog/language/en-gb/extension/payment/bank_transfer.php', '2019-11-05 15:16:02'),
(653, 1, 'catalog/language/en-gb/extension/payment/bluepay_hosted.php', '2019-11-05 15:16:02'),
(654, 1, 'catalog/language/en-gb/extension/payment/bluepay_redirect.php', '2019-11-05 15:16:02'),
(655, 1, 'catalog/language/en-gb/extension/payment/cardconnect.php', '2019-11-05 15:16:02'),
(656, 1, 'catalog/language/en-gb/extension/payment/cardinity.php', '2019-11-05 15:16:02'),
(657, 1, 'catalog/language/en-gb/extension/payment/cheque.php', '2019-11-05 15:16:02'),
(658, 1, 'catalog/language/en-gb/extension/payment/cod.php', '2019-11-05 15:16:02'),
(659, 1, 'catalog/language/en-gb/extension/payment/divido.php', '2019-11-05 15:16:02'),
(660, 1, 'catalog/language/en-gb/extension/payment/eway.php', '2019-11-05 15:16:02'),
(661, 1, 'catalog/language/en-gb/extension/payment/firstdata.php', '2019-11-05 15:16:02'),
(662, 1, 'catalog/language/en-gb/extension/payment/firstdata_remote.php', '2019-11-05 15:16:02'),
(663, 1, 'catalog/language/en-gb/extension/payment/free_checkout.php', '2019-11-05 15:16:02'),
(664, 1, 'catalog/language/en-gb/extension/payment/g2apay.php', '2019-11-05 15:16:02'),
(665, 1, 'catalog/language/en-gb/extension/payment/globalpay.php', '2019-11-05 15:16:02'),
(666, 1, 'catalog/language/en-gb/extension/payment/globalpay_remote.php', '2019-11-05 15:16:02'),
(667, 1, 'catalog/language/en-gb/extension/payment/klarna_account.php', '2019-11-05 15:16:02'),
(668, 1, 'catalog/language/en-gb/extension/payment/klarna_checkout.php', '2019-11-05 15:16:02'),
(669, 1, 'catalog/language/en-gb/extension/payment/klarna_invoice.php', '2019-11-05 15:16:02'),
(670, 1, 'catalog/language/en-gb/extension/payment/laybuy.php', '2019-11-05 15:16:02'),
(671, 1, 'catalog/language/en-gb/extension/payment/liqpay.php', '2019-11-05 15:16:02'),
(672, 1, 'catalog/language/en-gb/extension/payment/nochex.php', '2019-11-05 15:16:02'),
(673, 1, 'catalog/language/en-gb/extension/payment/paymate.php', '2019-11-05 15:16:02'),
(674, 1, 'catalog/language/en-gb/extension/payment/paypoint.php', '2019-11-05 15:16:02'),
(675, 1, 'catalog/language/en-gb/extension/payment/payza.php', '2019-11-05 15:16:02'),
(676, 1, 'catalog/language/en-gb/extension/payment/perpetual_payments.php', '2019-11-05 15:16:02'),
(677, 1, 'catalog/language/en-gb/extension/payment/pilibaba.php', '2019-11-05 15:16:02'),
(678, 1, 'catalog/language/en-gb/extension/payment/pp_braintree.php', '2019-11-05 15:16:02'),
(679, 1, 'catalog/language/en-gb/extension/payment/pp_express.php', '2019-11-05 15:16:02'),
(680, 1, 'catalog/language/en-gb/extension/payment/pp_payflow.php', '2019-11-05 15:16:02'),
(681, 1, 'catalog/language/en-gb/extension/payment/pp_payflow_iframe.php', '2019-11-05 15:16:02'),
(682, 1, 'catalog/language/en-gb/extension/payment/pp_pro.php', '2019-11-05 15:16:02'),
(683, 1, 'catalog/language/en-gb/extension/payment/pp_pro_iframe.php', '2019-11-05 15:16:02'),
(684, 1, 'catalog/language/en-gb/extension/payment/pp_standard.php', '2019-11-05 15:16:02'),
(685, 1, 'catalog/language/en-gb/extension/payment/realex.php', '2019-11-05 15:16:02'),
(686, 1, 'catalog/language/en-gb/extension/payment/realex_remote.php', '2019-11-05 15:16:02'),
(687, 1, 'catalog/language/en-gb/extension/payment/sagepay_direct.php', '2019-11-05 15:16:02'),
(688, 1, 'catalog/language/en-gb/extension/payment/sagepay_server.php', '2019-11-05 15:16:02'),
(689, 1, 'catalog/language/en-gb/extension/payment/sagepay_us.php', '2019-11-05 15:16:02'),
(690, 1, 'catalog/language/en-gb/extension/payment/securetrading_pp.php', '2019-11-05 15:16:02'),
(691, 1, 'catalog/language/en-gb/extension/payment/securetrading_ws.php', '2019-11-05 15:16:02'),
(692, 1, 'catalog/language/en-gb/extension/payment/skrill.php', '2019-11-05 15:16:02'),
(693, 1, 'catalog/language/en-gb/extension/payment/squareup.php', '2019-11-05 15:16:02'),
(694, 1, 'catalog/language/en-gb/extension/payment/twocheckout.php', '2019-11-05 15:16:02'),
(695, 1, 'catalog/language/en-gb/extension/payment/web_payment_software.php', '2019-11-05 15:16:02'),
(696, 1, 'catalog/language/en-gb/extension/payment/wechat_pay.php', '2019-11-05 15:16:02'),
(697, 1, 'catalog/language/en-gb/extension/payment/worldpay.php', '2019-11-05 15:16:02'),
(698, 1, 'catalog/language/en-gb/extension/recurring/pp_express.php', '2019-11-05 15:16:02'),
(699, 1, 'catalog/language/en-gb/extension/recurring/squareup.php', '2019-11-05 15:16:02'),
(700, 1, 'catalog/language/en-gb/extension/shipping/auspost.php', '2019-11-05 15:16:02'),
(701, 1, 'catalog/language/en-gb/extension/shipping/citylink.php', '2019-11-05 15:16:02'),
(702, 1, 'catalog/language/en-gb/extension/shipping/ec_ship.php', '2019-11-05 15:16:02'),
(703, 1, 'catalog/language/en-gb/extension/shipping/fedex.php', '2019-11-05 15:16:02'),
(704, 1, 'catalog/language/en-gb/extension/shipping/flat.php', '2019-11-05 15:16:02'),
(705, 1, 'catalog/language/en-gb/extension/shipping/free.php', '2019-11-05 15:16:02'),
(706, 1, 'catalog/language/en-gb/extension/shipping/item.php', '2019-11-05 15:16:02'),
(707, 1, 'catalog/language/en-gb/extension/shipping/parcelforce_48.php', '2019-11-05 15:16:02'),
(708, 1, 'catalog/language/en-gb/extension/shipping/pickup.php', '2019-11-05 15:16:02'),
(709, 1, 'catalog/language/en-gb/extension/shipping/pilibaba.php', '2019-11-05 15:16:02'),
(710, 1, 'catalog/language/en-gb/extension/shipping/royal_mail.php', '2019-11-05 15:16:02'),
(711, 1, 'catalog/language/en-gb/extension/shipping/ups.php', '2019-11-05 15:16:02'),
(712, 1, 'catalog/language/en-gb/extension/shipping/usps.php', '2019-11-05 15:16:02'),
(713, 1, 'catalog/language/en-gb/extension/shipping/weight.php', '2019-11-05 15:16:02'),
(714, 1, 'catalog/language/en-gb/extension/simple_blog/article.php', '2019-11-05 15:16:02'),
(715, 1, 'catalog/language/en-gb/extension/soconfig/cart.php', '2019-11-05 15:16:02'),
(716, 1, 'catalog/language/en-gb/extension/soconfig/compare.php', '2019-11-05 15:16:02'),
(717, 1, 'catalog/language/en-gb/extension/soconfig/soconfig.php', '2019-11-05 15:16:02'),
(718, 1, 'catalog/language/en-gb/extension/soconfig/somobile.php', '2019-11-05 15:16:02'),
(719, 1, 'catalog/language/en-gb/extension/soconfig/variables.php', '2019-11-05 15:16:02'),
(720, 1, 'catalog/language/en-gb/extension/soconfig/wishlist.php', '2019-11-05 15:16:02'),
(721, 1, 'catalog/language/en-gb/extension/total/coupon.php', '2019-11-05 15:16:02'),
(722, 1, 'catalog/language/en-gb/extension/total/credit.php', '2019-11-05 15:16:02'),
(723, 1, 'catalog/language/en-gb/extension/total/handling.php', '2019-11-05 15:16:02'),
(724, 1, 'catalog/language/en-gb/extension/total/klarna_fee.php', '2019-11-05 15:16:02'),
(725, 1, 'catalog/language/en-gb/extension/total/low_order_fee.php', '2019-11-05 15:16:02'),
(726, 1, 'catalog/language/en-gb/extension/total/reward.php', '2019-11-05 15:16:02'),
(727, 1, 'catalog/language/en-gb/extension/total/shipping.php', '2019-11-05 15:16:02'),
(728, 1, 'catalog/language/en-gb/extension/total/sub_total.php', '2019-11-05 15:16:02'),
(729, 1, 'catalog/language/en-gb/extension/total/total.php', '2019-11-05 15:16:02'),
(730, 1, 'catalog/language/en-gb/extension/total/voucher.php', '2019-11-05 15:16:02'),
(731, 1, 'catalog/view/javascript/bootstrap/css/bootstrap-theme.css', '2019-11-05 15:16:02'),
(732, 1, 'catalog/view/javascript/bootstrap/css/bootstrap-theme.css.map', '2019-11-05 15:16:02'),
(733, 1, 'catalog/view/javascript/bootstrap/css/bootstrap-theme.min.css', '2019-11-05 15:16:02'),
(734, 1, 'catalog/view/javascript/bootstrap/css/bootstrap.css', '2019-11-05 15:16:02'),
(735, 1, 'catalog/view/javascript/bootstrap/css/bootstrap.css.map', '2019-11-05 15:16:02'),
(736, 1, 'catalog/view/javascript/bootstrap/css/bootstrap.min.css', '2019-11-05 15:16:02'),
(737, 1, 'catalog/view/javascript/bootstrap/fonts/glyphicons-halflings-regular.eot', '2019-11-05 15:16:02'),
(738, 1, 'catalog/view/javascript/bootstrap/fonts/glyphicons-halflings-regular.svg', '2019-11-05 15:16:02'),
(739, 1, 'catalog/view/javascript/bootstrap/fonts/glyphicons-halflings-regular.ttf', '2019-11-05 15:16:02'),
(740, 1, 'catalog/view/javascript/bootstrap/fonts/glyphicons-halflings-regular.woff', '2019-11-05 15:16:02'),
(741, 1, 'catalog/view/javascript/bootstrap/fonts/glyphicons-halflings-regular.woff2', '2019-11-05 15:16:02'),
(742, 1, 'catalog/view/javascript/bootstrap/js/bootstrap.js', '2019-11-05 15:16:02'),
(743, 1, 'catalog/view/javascript/bootstrap/js/bootstrap.min.js', '2019-11-05 15:16:02'),
(744, 1, 'catalog/view/javascript/bootstrap/js/npm.js', '2019-11-05 15:16:02'),
(745, 1, 'catalog/view/javascript/font-awesome/css/font-awesome.css', '2019-11-05 15:16:02'),
(746, 1, 'catalog/view/javascript/font-awesome/css/font-awesome.min.css', '2019-11-05 15:16:02'),
(747, 1, 'catalog/view/javascript/font-awesome/fonts/FontAwesome.otf', '2019-11-05 15:16:02'),
(748, 1, 'catalog/view/javascript/font-awesome/fonts/fontawesome-webfont.eot', '2019-11-05 15:16:02'),
(749, 1, 'catalog/view/javascript/font-awesome/fonts/fontawesome-webfont.svg', '2019-11-05 15:16:02'),
(750, 1, 'catalog/view/javascript/font-awesome/fonts/fontawesome-webfont.ttf', '2019-11-05 15:16:02'),
(751, 1, 'catalog/view/javascript/font-awesome/fonts/fontawesome-webfont.woff', '2019-11-05 15:16:02'),
(752, 1, 'catalog/view/javascript/font-awesome/fonts/fontawesome-webfont.woff2', '2019-11-05 15:16:02'),
(753, 1, 'catalog/view/javascript/font-awesome/less/animated.less', '2019-11-05 15:16:02'),
(754, 1, 'catalog/view/javascript/font-awesome/less/bordered-pulled.less', '2019-11-05 15:16:02'),
(755, 1, 'catalog/view/javascript/font-awesome/less/core.less', '2019-11-05 15:16:02'),
(756, 1, 'catalog/view/javascript/font-awesome/less/fixed-width.less', '2019-11-05 15:16:02'),
(757, 1, 'catalog/view/javascript/font-awesome/less/font-awesome.less', '2019-11-05 15:16:02'),
(758, 1, 'catalog/view/javascript/font-awesome/less/icons.less', '2019-11-05 15:16:02'),
(759, 1, 'catalog/view/javascript/font-awesome/less/larger.less', '2019-11-05 15:16:02'),
(760, 1, 'catalog/view/javascript/font-awesome/less/list.less', '2019-11-05 15:16:02'),
(761, 1, 'catalog/view/javascript/font-awesome/less/mixins.less', '2019-11-05 15:16:02'),
(762, 1, 'catalog/view/javascript/font-awesome/less/path.less', '2019-11-05 15:16:02'),
(763, 1, 'catalog/view/javascript/font-awesome/less/rotated-flipped.less', '2019-11-05 15:16:02'),
(764, 1, 'catalog/view/javascript/font-awesome/less/screen-reader.less', '2019-11-05 15:16:02'),
(765, 1, 'catalog/view/javascript/font-awesome/less/stacked.less', '2019-11-05 15:16:02'),
(766, 1, 'catalog/view/javascript/font-awesome/less/variables.less', '2019-11-05 15:16:02'),
(767, 1, 'catalog/view/javascript/font-awesome/scss/_animated.scss', '2019-11-05 15:16:02'),
(768, 1, 'catalog/view/javascript/font-awesome/scss/_bordered-pulled.scss', '2019-11-05 15:16:02'),
(769, 1, 'catalog/view/javascript/font-awesome/scss/_core.scss', '2019-11-05 15:16:02'),
(770, 1, 'catalog/view/javascript/font-awesome/scss/_fixed-width.scss', '2019-11-05 15:16:02'),
(771, 1, 'catalog/view/javascript/font-awesome/scss/_icons.scss', '2019-11-05 15:16:02'),
(772, 1, 'catalog/view/javascript/font-awesome/scss/_larger.scss', '2019-11-05 15:16:02'),
(773, 1, 'catalog/view/javascript/font-awesome/scss/_list.scss', '2019-11-05 15:16:02'),
(774, 1, 'catalog/view/javascript/font-awesome/scss/_mixins.scss', '2019-11-05 15:16:02'),
(775, 1, 'catalog/view/javascript/font-awesome/scss/_path.scss', '2019-11-05 15:16:02'),
(776, 1, 'catalog/view/javascript/font-awesome/scss/_rotated-flipped.scss', '2019-11-05 15:16:02'),
(777, 1, 'catalog/view/javascript/font-awesome/scss/_screen-reader.scss', '2019-11-05 15:16:02'),
(778, 1, 'catalog/view/javascript/font-awesome/scss/_stacked.scss', '2019-11-05 15:16:02'),
(779, 1, 'catalog/view/javascript/font-awesome/scss/_variables.scss', '2019-11-05 15:16:02'),
(780, 1, 'catalog/view/javascript/font-awesome/scss/font-awesome.scss', '2019-11-05 15:16:02'),
(781, 1, 'catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css', '2019-11-05 15:16:02'),
(782, 1, 'catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js', '2019-11-05 15:16:02'),
(783, 1, 'catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js', '2019-11-05 15:16:02'),
(784, 1, 'catalog/view/javascript/jquery/magnific/magnific-popup.css', '2019-11-05 15:16:02'),
(785, 1, 'catalog/view/javascript/jquery/owl-carousel/AjaxLoader.gif', '2019-11-05 15:16:02'),
(786, 1, 'catalog/view/javascript/jquery/owl-carousel/grabbing.png', '2019-11-05 15:16:02'),
(787, 1, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.css', '2019-11-05 15:16:02'),
(788, 1, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.js', '2019-11-05 15:16:02'),
(789, 1, 'catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js', '2019-11-05 15:16:02'),
(790, 1, 'catalog/view/javascript/jquery/owl-carousel/owl.theme.css', '2019-11-05 15:16:02'),
(791, 1, 'catalog/view/javascript/jquery/owl-carousel/owl.transitions.css', '2019-11-05 15:16:02'),
(792, 1, 'catalog/view/javascript/so_basic_products/css/style.css', '2019-11-05 15:16:02'),
(793, 1, 'catalog/view/javascript/so_latest_blog/css/animate.css', '2019-11-05 15:16:02'),
(794, 1, 'catalog/view/javascript/so_latest_blog/css/owl.carousel.css', '2019-11-05 15:16:02'),
(795, 1, 'catalog/view/javascript/so_latest_blog/css/style.css', '2019-11-05 15:16:02'),
(796, 1, 'catalog/view/javascript/so_latest_blog/js/jquery-1.8.2.min.js', '2019-11-05 15:16:02'),
(797, 1, 'catalog/view/javascript/so_latest_blog/js/jquery-noconflict.js', '2019-11-05 15:16:02'),
(798, 1, 'catalog/view/javascript/so_latest_blog/js/owl.carousel.js', '2019-11-05 15:16:02'),
(799, 1, 'catalog/view/javascript/soconfig/css/bootstrap', '2019-11-05 15:16:02'),
(800, 1, 'catalog/view/javascript/soconfig/css/cpanel.css', '2019-11-05 15:16:02'),
(801, 1, 'catalog/view/javascript/soconfig/css/flexboxgrid.css', '2019-11-05 15:16:02'),
(802, 1, 'catalog/view/javascript/soconfig/css/fonts', '2019-11-05 15:16:02'),
(803, 1, 'catalog/view/javascript/soconfig/css/lib.css', '2019-11-05 15:16:02'),
(804, 1, 'catalog/view/javascript/soconfig/css/lightslider.css', '2019-11-05 15:16:02'),
(805, 1, 'catalog/view/javascript/soconfig/css/mobile', '2019-11-05 15:16:02'),
(806, 1, 'catalog/view/javascript/soconfig/css/owl.carousel.css', '2019-11-05 15:16:02'),
(807, 1, 'catalog/view/javascript/soconfig/css/ratchet', '2019-11-05 15:16:02'),
(808, 1, 'catalog/view/javascript/soconfig/data/cache', '2019-11-05 15:16:02'),
(809, 1, 'catalog/view/javascript/soconfig/images/lazy-loader.gif', '2019-11-05 15:16:02'),
(810, 1, 'catalog/view/javascript/soconfig/js/cpanel.js', '2019-11-05 15:16:02'),
(811, 1, 'catalog/view/javascript/soconfig/js/jquery.elevateZoom-3.0.8.min.js', '2019-11-05 15:16:02'),
(812, 1, 'catalog/view/javascript/soconfig/js/jquery.sticky-kit.min.js', '2019-11-05 15:16:02'),
(813, 1, 'catalog/view/javascript/soconfig/js/libs.js', '2019-11-05 15:16:02'),
(814, 1, 'catalog/view/javascript/soconfig/js/lightslider.js', '2019-11-05 15:16:02'),
(815, 1, 'catalog/view/javascript/soconfig/js/mobile', '2019-11-05 15:16:02'),
(816, 1, 'catalog/view/javascript/soconfig/js/owl.carousel.js', '2019-11-05 15:16:02'),
(817, 1, 'catalog/view/javascript/soconfig/js/ratchet', '2019-11-05 15:16:02'),
(818, 1, 'catalog/view/javascript/soconfig/js/so.system.js', '2019-11-05 15:16:02'),
(819, 1, 'catalog/view/javascript/soconfig/js/toppanel.js', '2019-11-05 15:16:02'),
(820, 1, 'catalog/view/javascript/soconfig/js/typo', '2019-11-05 15:16:02'),
(821, 1, 'catalog/view/theme/default/image/default.png', '2019-11-05 15:16:02'),
(822, 1, 'catalog/view/theme/default/image/eway_creditcard_amex.png', '2019-11-05 15:16:02'),
(823, 1, 'catalog/view/theme/default/image/eway_creditcard_diners.png', '2019-11-05 15:16:02'),
(824, 1, 'catalog/view/theme/default/image/eway_creditcard_jcb.png', '2019-11-05 15:16:02'),
(825, 1, 'catalog/view/theme/default/image/eway_creditcard_master.png', '2019-11-05 15:16:02'),
(826, 1, 'catalog/view/theme/default/image/eway_creditcard_visa.png', '2019-11-05 15:16:02'),
(827, 1, 'catalog/view/theme/default/image/eway_masterpass.png', '2019-11-05 15:16:02'),
(828, 1, 'catalog/view/theme/default/image/eway_paypal.png', '2019-11-05 15:16:02'),
(829, 1, 'catalog/view/theme/default/image/eway_vme.png', '2019-11-05 15:16:02'),
(830, 1, 'catalog/view/theme/default/image/klarna_green_full.png', '2019-11-05 15:16:02'),
(831, 1, 'catalog/view/theme/default/image/klarna_green_middle.png', '2019-11-05 15:16:02'),
(832, 1, 'catalog/view/theme/default/image/klarna_nld_banner.png', '2019-11-05 15:16:02'),
(833, 1, 'catalog/view/theme/default/image/paypal_express_mobile.png', '2019-11-05 15:16:02'),
(834, 1, 'catalog/view/theme/default/image/pilibaba_button.png', '2019-11-05 15:16:02'),
(835, 1, 'catalog/view/theme/default/stylesheet/stylesheet.css', '2019-11-05 15:16:02'),
(836, 1, 'catalog/view/theme/default/template/position', '2019-11-05 15:16:02'),
(837, 1, 'catalog/view/theme/so-ladaz/css/custom.css', '2019-11-05 15:16:02'),
(838, 1, 'catalog/view/theme/so-ladaz/css/footer', '2019-11-05 15:16:02'),
(839, 1, 'catalog/view/theme/so-ladaz/css/header', '2019-11-05 15:16:02'),
(840, 1, 'catalog/view/theme/so-ladaz/css/ie9-and-up.css', '2019-11-05 15:16:02'),
(841, 1, 'catalog/view/theme/so-ladaz/css/layout1', '2019-11-05 15:16:02'),
(842, 1, 'catalog/view/theme/so-ladaz/css/responsive-rtl.css', '2019-11-05 15:16:02'),
(843, 1, 'catalog/view/theme/so-ladaz/css/responsive.css', '2019-11-05 15:16:02'),
(844, 1, 'catalog/view/theme/so-ladaz/css/theme.css', '2019-11-05 15:16:02'),
(845, 1, 'catalog/view/theme/so-ladaz/image/default.png', '2019-11-05 15:16:02'),
(846, 1, 'catalog/view/theme/so-ladaz/image/so-etrostores.jpg', '2019-11-05 15:16:02'),
(847, 1, 'catalog/view/theme/so-ladaz/image/so-etrostores2.jpg', '2019-11-05 15:16:03'),
(848, 1, 'catalog/view/theme/so-ladaz/image/so-etrostores3.jpg', '2019-11-05 15:16:03'),
(849, 1, 'catalog/view/theme/so-ladaz/images/ajax-loader.gif', '2019-11-05 15:16:03'),
(850, 1, 'catalog/view/theme/so-ladaz/images/attention_icon.png', '2019-11-05 15:16:03'),
(851, 1, 'catalog/view/theme/so-ladaz/images/bg-title-about.png', '2019-11-05 15:16:03'),
(852, 1, 'catalog/view/theme/so-ladaz/images/bg-title-block.png', '2019-11-05 15:16:03'),
(853, 1, 'catalog/view/theme/so-ladaz/images/blank.gif', '2019-11-05 15:16:03'),
(854, 1, 'catalog/view/theme/so-ladaz/images/blank.png', '2019-11-05 15:16:03'),
(855, 1, 'catalog/view/theme/so-ladaz/images/btn-next-hp.png', '2019-11-05 15:16:03'),
(856, 1, 'catalog/view/theme/so-ladaz/images/btn-prev-hp.png', '2019-11-05 15:16:03'),
(857, 1, 'catalog/view/theme/so-ladaz/images/container-paper-back.png', '2019-11-05 15:16:03'),
(858, 1, 'catalog/view/theme/so-ladaz/images/dot-border.png', '2019-11-05 15:16:03'),
(859, 1, 'catalog/view/theme/so-ladaz/images/icon', '2019-11-05 15:16:03'),
(860, 1, 'catalog/view/theme/so-ladaz/images/icon-cart.png', '2019-11-05 15:16:03'),
(861, 1, 'catalog/view/theme/so-ladaz/images/icon-title.png', '2019-11-05 15:16:03'),
(862, 1, 'catalog/view/theme/so-ladaz/images/icon-whylist.png', '2019-11-05 15:16:03'),
(863, 1, 'catalog/view/theme/so-ladaz/images/lazy-loader.gif', '2019-11-05 15:16:03'),
(864, 1, 'catalog/view/theme/so-ladaz/images/line-bg.png', '2019-11-05 15:16:03'),
(865, 1, 'catalog/view/theme/so-ladaz/images/menu-bg.gif', '2019-11-05 15:16:03'),
(866, 1, 'catalog/view/theme/so-ladaz/images/newsletter-btn.png', '2019-11-05 15:16:03'),
(867, 1, 'catalog/view/theme/so-ladaz/images/patterns', '2019-11-05 15:16:03'),
(868, 1, 'catalog/view/theme/so-ladaz/images/payment-bg.png', '2019-11-05 15:16:03'),
(869, 1, 'catalog/view/theme/so-ladaz/images/plus.png', '2019-11-05 15:16:03'),
(870, 1, 'catalog/view/theme/so-ladaz/images/rate', '2019-11-05 15:16:03'),
(871, 1, 'catalog/view/theme/so-ladaz/images/size-chart-icon.png', '2019-11-05 15:16:03'),
(872, 1, 'catalog/view/theme/so-ladaz/images/video-hover.png', '2019-11-05 15:16:03'),
(873, 1, 'catalog/view/theme/so-ladaz/images/video.png', '2019-11-05 15:16:03'),
(874, 1, 'catalog/view/theme/so-ladaz/js/common.js', '2019-11-05 15:16:03'),
(875, 1, 'catalog/view/theme/so-ladaz/js/custom.js', '2019-11-05 15:16:03'),
(876, 1, 'catalog/view/theme/so-ladaz/js/so.custom.js', '2019-11-05 15:16:03'),
(877, 1, 'catalog/view/theme/so-ladaz/sass/bourbon', '2019-11-05 15:16:03'),
(878, 1, 'catalog/view/theme/so-ladaz/sass/footer', '2019-11-05 15:16:03'),
(879, 1, 'catalog/view/theme/so-ladaz/sass/header', '2019-11-05 15:16:03'),
(880, 1, 'catalog/view/theme/so-ladaz/sass/ie9-and-up.scss', '2019-11-05 15:16:03'),
(881, 1, 'catalog/view/theme/so-ladaz/sass/layout', '2019-11-05 15:16:03'),
(882, 1, 'catalog/view/theme/so-ladaz/sass/layout-1.scss', '2019-11-05 15:16:03'),
(883, 1, 'catalog/view/theme/so-ladaz/sass/responsive', '2019-11-05 15:16:03'),
(884, 1, 'catalog/view/theme/so-ladaz/sass/responsive.scss', '2019-11-05 15:16:03'),
(885, 1, 'catalog/view/theme/so-ladaz/sass/theme', '2019-11-05 15:16:03'),
(886, 1, 'catalog/view/theme/so-ladaz/sass/typo', '2019-11-05 15:16:03'),
(887, 1, 'catalog/view/theme/so-ladaz/sass/utilities', '2019-11-05 15:16:03'),
(888, 1, 'catalog/view/theme/so-ladaz/template/account', '2019-11-05 15:16:03'),
(889, 1, 'catalog/view/theme/so-ladaz/template/common', '2019-11-05 15:16:03'),
(890, 1, 'catalog/view/theme/so-ladaz/template/custom', '2019-11-05 15:16:03'),
(891, 1, 'catalog/view/theme/so-ladaz/template/error', '2019-11-05 15:16:03'),
(892, 1, 'catalog/view/theme/so-ladaz/template/extension', '2019-11-05 15:16:03'),
(893, 1, 'catalog/view/theme/so-ladaz/template/footer', '2019-11-05 15:16:03'),
(894, 1, 'catalog/view/theme/so-ladaz/template/header', '2019-11-05 15:16:03'),
(895, 1, 'catalog/view/theme/so-ladaz/template/information', '2019-11-05 15:16:03'),
(896, 1, 'catalog/view/theme/so-ladaz/template/mobile', '2019-11-05 15:16:03'),
(897, 1, 'catalog/view/theme/so-ladaz/template/position', '2019-11-05 15:16:03'),
(898, 1, 'catalog/view/theme/so-ladaz/template/product', '2019-11-05 15:16:03'),
(899, 1, 'catalog/view/theme/so-ladaz/template/social', '2019-11-05 15:16:03'),
(900, 1, 'catalog/view/theme/so-ladaz/template/soconfig', '2019-11-05 15:16:03'),
(901, 1, 'system/library/so/basic_products/Cache_Lite/Lite', '2019-11-05 15:16:03'),
(902, 1, 'system/library/so/basic_products/Cache_Lite/Lite.php', '2019-11-05 15:16:03'),
(903, 1, 'system/library/so/cache/fonts/FontAwesome.otf', '2019-11-05 15:16:03'),
(904, 1, 'system/library/so/cache/fonts/fontawesome-webfont.eot', '2019-11-05 15:16:03'),
(905, 1, 'system/library/so/cache/fonts/fontawesome-webfont.svg', '2019-11-05 15:16:03'),
(906, 1, 'system/library/so/cache/fonts/fontawesome-webfont.ttf', '2019-11-05 15:16:03'),
(907, 1, 'system/library/so/cache/fonts/fontawesome-webfont.woff', '2019-11-05 15:16:03'),
(908, 1, 'system/library/so/cache/fonts/fontawesome-webfont.woff2', '2019-11-05 15:16:03'),
(909, 1, 'system/library/so/cache/fonts/glyphicons-halflings-regular.eot', '2019-11-05 15:16:03'),
(910, 1, 'system/library/so/cache/fonts/glyphicons-halflings-regular.svg', '2019-11-05 15:16:03'),
(911, 1, 'system/library/so/cache/fonts/glyphicons-halflings-regular.ttf', '2019-11-05 15:16:03'),
(912, 1, 'system/library/so/cache/fonts/glyphicons-halflings-regular.woff', '2019-11-05 15:16:03'),
(913, 1, 'system/library/so/cache/fonts/glyphicons-halflings-regular.woff2', '2019-11-05 15:16:03'),
(914, 1, 'system/library/so/cache/fonts/ratchicons.eot', '2019-11-05 15:16:03'),
(915, 1, 'system/library/so/cache/fonts/ratchicons.svg', '2019-11-05 15:16:03'),
(916, 1, 'system/library/so/cache/fonts/ratchicons.ttf', '2019-11-05 15:16:03'),
(917, 1, 'system/library/so/cache/fonts/ratchicons.woff', '2019-11-05 15:16:03'),
(918, 1, 'system/library/so/cache/minify/009f71780b577fc370e5a3e3b85bf098.css', '2019-11-05 15:16:03'),
(919, 1, 'system/library/so/cache/minify/07d9ded4499136c0c257db6d3f01a9ba.css', '2019-11-05 15:16:03'),
(920, 1, 'system/library/so/cache/minify/1a305116a0b6674c41b6831080eb4909.js', '2019-11-05 15:16:03'),
(921, 1, 'system/library/so/cache/minify/1d0ee6ec2baacacf9f9c6506bb732140.js', '2019-11-05 15:16:03'),
(922, 1, 'system/library/so/cache/minify/211f1f0704d4adfcb5112a446d07c5ee.css', '2019-11-05 15:16:03'),
(923, 1, 'system/library/so/cache/minify/237a4c260aab833b4f8d2da706fedb1c.css', '2019-11-05 15:16:03'),
(924, 1, 'system/library/so/cache/minify/256728ea6270d49bb8f30883676cebc3.js', '2019-11-05 15:16:03'),
(925, 1, 'system/library/so/cache/minify/35678dab529676a23568a76d421ac76a.js', '2019-11-05 15:16:03'),
(926, 1, 'system/library/so/cache/minify/36910259997643bf1bf37557a5ff2fda.js', '2019-11-05 15:16:03'),
(927, 1, 'system/library/so/cache/minify/414026e9cfb67a60e8968f8c9f968aad.css', '2019-11-05 15:16:03'),
(928, 1, 'system/library/so/cache/minify/4357684e2544943cffe5b4577d2b967d.js', '2019-11-05 15:16:03'),
(929, 1, 'system/library/so/cache/minify/4590a69a26683d8f3b60f8d388738e63.js', '2019-11-05 15:16:03'),
(930, 1, 'system/library/so/cache/minify/4f7cf7b6ce795aa487d2a6ef242a8884.css', '2019-11-05 15:16:03'),
(931, 1, 'system/library/so/cache/minify/506dc6adbfd93d7498e78b221667c937.js', '2019-11-05 15:16:03'),
(932, 1, 'system/library/so/cache/minify/558b007b4820b90d6f760165c4cf3d2f.js', '2019-11-05 15:16:03'),
(933, 1, 'system/library/so/cache/minify/5991f8e07d6828a2051b193a9a7071cb.css', '2019-11-05 15:16:03'),
(934, 1, 'system/library/so/cache/minify/5c3676d264b20f31f3726e5a496c1741.css', '2019-11-05 15:16:03'),
(935, 1, 'system/library/so/cache/minify/5cfc551b75033a8f84e24c2587a97021.js', '2019-11-05 15:16:03'),
(936, 1, 'system/library/so/cache/minify/5d8e81a56733ba53b366bf3153bd4360.css', '2019-11-05 15:16:03'),
(937, 1, 'system/library/so/cache/minify/6632d6e22bc6d407fe2daba39f43dbd0.css', '2019-11-05 15:16:03'),
(938, 1, 'system/library/so/cache/minify/6eb72076e6d462051bd17e06588f3759.css', '2019-11-05 15:16:03'),
(939, 1, 'system/library/so/cache/minify/730729938124fc9ca363a5cd00dfe5eb.js', '2019-11-05 15:16:03'),
(940, 1, 'system/library/so/cache/minify/8b024152aa176e94935e4245572585de.js', '2019-11-05 15:16:03'),
(941, 1, 'system/library/so/cache/minify/97060e0fd68eecb870cc4b48f2b2816a.js', '2019-11-05 15:16:03'),
(942, 1, 'system/library/so/cache/minify/983639eb3c100f3defba2c9b96210381.js', '2019-11-05 15:16:03'),
(943, 1, 'system/library/so/cache/minify/ba36fda96b3515b46e81695fb7f04483.css', '2019-11-05 15:16:03'),
(944, 1, 'system/library/so/cache/minify/bdc01e896c9a9b6d17b2e253a9395c73.css', '2019-11-05 15:16:03'),
(945, 1, 'system/library/so/cache/minify/c0f2a1abcb6b9505ff1ac71c0edf66f3.css', '2019-11-05 15:16:03'),
(946, 1, 'system/library/so/cache/minify/c1430f543c2eaae7e06ad8586aaa64b4.js', '2019-11-05 15:16:03'),
(947, 1, 'system/library/so/cache/minify/c4fdec9bf697ee5dccfe0104943af7f4.css', '2019-11-05 15:16:03'),
(948, 1, 'system/library/so/cache/minify/cd5bc7d08dd46da33151af14827ab714.js', '2019-11-05 15:16:03'),
(949, 1, 'system/library/so/cache/minify/d0c35cd654765d35f200162b7f2f7c1e.css', '2019-11-05 15:16:03'),
(950, 1, 'system/library/so/cache/minify/e2f332c6cb47600dda6d5b48b18e2e11.css', '2019-11-05 15:16:03'),
(951, 1, 'system/library/so/cache/minify/e400840f3e2815b17613a731895c70b3.js', '2019-11-05 15:16:03'),
(952, 1, 'system/library/so/cache/minify/e53aff49e089032863723de4d6a0889e.css', '2019-11-05 15:16:03'),
(953, 1, 'system/library/so/cache/minify/e77dcbec92cd55f8123f2938e29a6354.css', '2019-11-05 15:16:03'),
(954, 1, 'system/library/so/cache/minify/eb40070c10be0ce3c4e1977e95adea30.css', '2019-11-05 15:16:03'),
(955, 1, 'system/library/so/cache/minify/fb80c52b17324730f003e07c84c82c09.js', '2019-11-05 15:16:03'),
(956, 1, 'system/library/so/html_content/Cache_Lite/Lite', '2019-11-05 15:16:03'),
(957, 1, 'system/library/so/html_content/Cache_Lite/Lite.php', '2019-11-05 15:16:03'),
(958, 1, 'system/library/so/latest_blog/Cache_Lite/Lite', '2019-11-05 15:16:03'),
(959, 1, 'system/library/so/latest_blog/Cache_Lite/Lite.php', '2019-11-05 15:16:03'),
(960, 1, 'admin/language/en-gb/extension/module/simple_blog/article.php', '2019-11-05 15:16:03'),
(961, 1, 'admin/language/en-gb/extension/module/simple_blog/author.php', '2019-11-05 15:16:03'),
(962, 1, 'admin/language/en-gb/extension/module/simple_blog/category.php', '2019-11-05 15:16:03'),
(963, 1, 'admin/language/en-gb/extension/module/simple_blog/comment.php', '2019-11-05 15:16:03'),
(964, 1, 'admin/language/en-gb/extension/module/simple_blog/install.php', '2019-11-05 15:16:03'),
(965, 1, 'admin/language/en-gb/extension/module/simple_blog/report.php', '2019-11-05 15:16:03'),
(966, 1, 'admin/view/javascript/codemirror/mode/xml/xml.js', '2019-11-05 15:16:03'),
(967, 1, 'admin/view/template/extension/module/modification_manager/form.twig', '2019-11-05 15:16:03'),
(968, 1, 'admin/view/template/extension/module/modification_manager/list.twig', '2019-11-05 15:16:03'),
(969, 1, 'admin/view/template/extension/module/simple_blog/article_form.twig', '2019-11-05 15:16:03'),
(970, 1, 'admin/view/template/extension/module/simple_blog/article_list.twig', '2019-11-05 15:16:03'),
(971, 1, 'admin/view/template/extension/module/simple_blog/author_form.twig', '2019-11-05 15:16:03'),
(972, 1, 'admin/view/template/extension/module/simple_blog/author_list.twig', '2019-11-05 15:16:03'),
(973, 1, 'admin/view/template/extension/module/simple_blog/category_form.twig', '2019-11-05 15:16:03'),
(974, 1, 'admin/view/template/extension/module/simple_blog/category_list.twig', '2019-11-05 15:16:03'),
(975, 1, 'admin/view/template/extension/module/simple_blog/comment_form.twig', '2019-11-05 15:16:03'),
(976, 1, 'admin/view/template/extension/module/simple_blog/comment_list.twig', '2019-11-05 15:16:03'),
(977, 1, 'admin/view/template/extension/module/simple_blog/image', '2019-11-05 15:16:03'),
(978, 1, 'admin/view/template/extension/module/simple_blog/install.twig', '2019-11-05 15:16:03'),
(979, 1, 'admin/view/template/extension/module/simple_blog/notification.twig', '2019-11-05 15:16:03'),
(980, 1, 'admin/view/template/extension/module/simple_blog/report.twig', '2019-11-05 15:16:03'),
(981, 1, 'admin/view/template/extension/module/so_latest_blog/notification.twig', '2019-11-05 15:16:03'),
(982, 1, 'admin/view/template/extension/module/so_latest_blog/so_latest_blog.twig', '2019-11-05 15:16:03'),
(983, 1, 'admin/view/template/extension/soconfig/asset/css', '2019-11-05 15:16:03'),
(984, 1, 'admin/view/template/extension/soconfig/asset/js', '2019-11-05 15:16:03'),
(985, 1, 'admin/view/template/extension/soconfig/asset/plugin', '2019-11-05 15:16:03'),
(986, 1, 'admin/view/template/extension/soconfig/class/device.php', '2019-11-05 15:16:03'),
(987, 1, 'admin/view/template/extension/soconfig/class/minify', '2019-11-05 15:16:03'),
(988, 1, 'admin/view/template/extension/soconfig/class/scssphp', '2019-11-05 15:16:03'),
(989, 1, 'admin/view/template/extension/soconfig/class/so_field.php', '2019-11-05 15:16:03'),
(990, 1, 'admin/view/template/extension/soconfig/class/soconfig.php', '2019-11-05 15:16:03'),
(991, 1, 'admin/view/template/extension/soconfig/class/soconfig_cache.php', '2019-11-05 15:16:03'),
(992, 1, 'admin/view/template/extension/soconfig/class/soconfig_minifier.php', '2019-11-05 15:16:03'),
(993, 1, 'admin/view/template/extension/soconfig/class/soconfig_settings.php', '2019-11-05 15:16:03'),
(994, 1, 'admin/view/template/extension/soconfig/class/soconfig_tools.php', '2019-11-05 15:16:03'),
(995, 1, 'admin/view/template/extension/soconfig/demo/default', '2019-11-05 15:16:03'),
(996, 1, 'admin/view/template/extension/soconfig/images/desktop', '2019-11-05 15:16:03'),
(997, 1, 'admin/view/template/extension/soconfig/images/general', '2019-11-05 15:16:03'),
(998, 1, 'admin/view/template/extension/soconfig/images/mobile', '2019-11-05 15:16:03'),
(999, 1, 'admin/view/template/extension/soconfig/patterns/1.png', '2019-11-05 15:16:03'),
(1000, 1, 'admin/view/template/extension/soconfig/patterns/10.png', '2019-11-05 15:16:03'),
(1001, 1, 'admin/view/template/extension/soconfig/patterns/11.png', '2019-11-05 15:16:03'),
(1002, 1, 'admin/view/template/extension/soconfig/patterns/12.png', '2019-11-05 15:16:03'),
(1003, 1, 'admin/view/template/extension/soconfig/patterns/13.png', '2019-11-05 15:16:03'),
(1004, 1, 'admin/view/template/extension/soconfig/patterns/14.png', '2019-11-05 15:16:03'),
(1005, 1, 'admin/view/template/extension/soconfig/patterns/15.png', '2019-11-05 15:16:03'),
(1006, 1, 'admin/view/template/extension/soconfig/patterns/16.png', '2019-11-05 15:16:03'),
(1007, 1, 'admin/view/template/extension/soconfig/patterns/17.png', '2019-11-05 15:16:03'),
(1008, 1, 'admin/view/template/extension/soconfig/patterns/18.png', '2019-11-05 15:16:03'),
(1009, 1, 'admin/view/template/extension/soconfig/patterns/19.png', '2019-11-05 15:16:03'),
(1010, 1, 'admin/view/template/extension/soconfig/patterns/2.png', '2019-11-05 15:16:03'),
(1011, 1, 'admin/view/template/extension/soconfig/patterns/20.png', '2019-11-05 15:16:03'),
(1012, 1, 'admin/view/template/extension/soconfig/patterns/21.png', '2019-11-05 15:16:03'),
(1013, 1, 'admin/view/template/extension/soconfig/patterns/22.png', '2019-11-05 15:16:03'),
(1014, 1, 'admin/view/template/extension/soconfig/patterns/23.png', '2019-11-05 15:16:03'),
(1015, 1, 'admin/view/template/extension/soconfig/patterns/24.png', '2019-11-05 15:16:03'),
(1016, 1, 'admin/view/template/extension/soconfig/patterns/25.png', '2019-11-05 15:16:03'),
(1017, 1, 'admin/view/template/extension/soconfig/patterns/26.png', '2019-11-05 15:16:03'),
(1018, 1, 'admin/view/template/extension/soconfig/patterns/27.png', '2019-11-05 15:16:03'),
(1019, 1, 'admin/view/template/extension/soconfig/patterns/28.png', '2019-11-05 15:16:03'),
(1020, 1, 'admin/view/template/extension/soconfig/patterns/29.png', '2019-11-05 15:16:03'),
(1021, 1, 'admin/view/template/extension/soconfig/patterns/3.png', '2019-11-05 15:16:03'),
(1022, 1, 'admin/view/template/extension/soconfig/patterns/30.png', '2019-11-05 15:16:03'),
(1023, 1, 'admin/view/template/extension/soconfig/patterns/31.png', '2019-11-05 15:16:03'),
(1024, 1, 'admin/view/template/extension/soconfig/patterns/32.png', '2019-11-05 15:16:03'),
(1025, 1, 'admin/view/template/extension/soconfig/patterns/33.png', '2019-11-05 15:16:03'),
(1026, 1, 'admin/view/template/extension/soconfig/patterns/34.png', '2019-11-05 15:16:03'),
(1027, 1, 'admin/view/template/extension/soconfig/patterns/35.png', '2019-11-05 15:16:03'),
(1028, 1, 'admin/view/template/extension/soconfig/patterns/36.png', '2019-11-05 15:16:03'),
(1029, 1, 'admin/view/template/extension/soconfig/patterns/37.png', '2019-11-05 15:16:03'),
(1030, 1, 'admin/view/template/extension/soconfig/patterns/38.png', '2019-11-05 15:16:03'),
(1031, 1, 'admin/view/template/extension/soconfig/patterns/39.png', '2019-11-05 15:16:03'),
(1032, 1, 'admin/view/template/extension/soconfig/patterns/4.png', '2019-11-05 15:16:03'),
(1033, 1, 'admin/view/template/extension/soconfig/patterns/40.png', '2019-11-05 15:16:03'),
(1034, 1, 'admin/view/template/extension/soconfig/patterns/41.png', '2019-11-05 15:16:03'),
(1035, 1, 'admin/view/template/extension/soconfig/patterns/42.png', '2019-11-05 15:16:03'),
(1036, 1, 'admin/view/template/extension/soconfig/patterns/43.png', '2019-11-05 15:16:03'),
(1037, 1, 'admin/view/template/extension/soconfig/patterns/44.png', '2019-11-05 15:16:03'),
(1038, 1, 'admin/view/template/extension/soconfig/patterns/45.png', '2019-11-05 15:16:03'),
(1039, 1, 'admin/view/template/extension/soconfig/patterns/46.png', '2019-11-05 15:16:03'),
(1040, 1, 'admin/view/template/extension/soconfig/patterns/47.png', '2019-11-05 15:16:03'),
(1041, 1, 'admin/view/template/extension/soconfig/patterns/48.png', '2019-11-05 15:16:03'),
(1042, 1, 'admin/view/template/extension/soconfig/patterns/49.png', '2019-11-05 15:16:03'),
(1043, 1, 'admin/view/template/extension/soconfig/patterns/5.png', '2019-11-05 15:16:03'),
(1044, 1, 'admin/view/template/extension/soconfig/patterns/50.png', '2019-11-05 15:16:03'),
(1045, 1, 'admin/view/template/extension/soconfig/patterns/51.png', '2019-11-05 15:16:03'),
(1046, 1, 'admin/view/template/extension/soconfig/patterns/52.png', '2019-11-05 15:16:03'),
(1047, 1, 'admin/view/template/extension/soconfig/patterns/53.png', '2019-11-05 15:16:03'),
(1048, 1, 'admin/view/template/extension/soconfig/patterns/6.png', '2019-11-05 15:16:03'),
(1049, 1, 'admin/view/template/extension/soconfig/patterns/7.png', '2019-11-05 15:16:03'),
(1050, 1, 'admin/view/template/extension/soconfig/patterns/8.png', '2019-11-05 15:16:03'),
(1051, 1, 'admin/view/template/extension/soconfig/patterns/9.png', '2019-11-05 15:16:03'),
(1052, 1, 'catalog/view/javascript/jquery/datetimepicker/moment/locales.js', '2019-11-05 15:16:03'),
(1053, 1, 'catalog/view/javascript/jquery/datetimepicker/moment/locales.min.js', '2019-11-05 15:16:03'),
(1054, 1, 'catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.js', '2019-11-05 15:16:03'),
(1055, 1, 'catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js', '2019-11-05 15:16:03'),
(1056, 1, 'catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js', '2019-11-05 15:16:03'),
(1057, 1, 'catalog/view/javascript/jquery/datetimepicker/moment/tests.js', '2019-11-05 15:16:03'),
(1058, 1, 'catalog/view/javascript/jquery/swiper/css/opencart.css', '2019-11-05 15:16:03'),
(1059, 1, 'catalog/view/javascript/jquery/swiper/css/swiper.css', '2019-11-05 15:16:03'),
(1060, 1, 'catalog/view/javascript/jquery/swiper/css/swiper.min.css', '2019-11-05 15:16:03'),
(1061, 1, 'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js', '2019-11-05 15:16:03'),
(1062, 1, 'catalog/view/javascript/jquery/swiper/js/swiper.jquery.min.js', '2019-11-05 15:16:03'),
(1063, 1, 'catalog/view/javascript/jquery/swiper/js/swiper.jquery.umd.js', '2019-11-05 15:16:03'),
(1064, 1, 'catalog/view/javascript/jquery/swiper/js/swiper.jquery.umd.min.js', '2019-11-05 15:16:03'),
(1065, 1, 'catalog/view/javascript/jquery/swiper/js/swiper.js', '2019-11-05 15:16:03'),
(1066, 1, 'catalog/view/javascript/jquery/swiper/js/swiper.min.js', '2019-11-05 15:16:03'),
(1067, 1, 'catalog/view/javascript/soconfig/css/bootstrap/bootstrap.none.css', '2019-11-05 15:16:03'),
(1068, 1, 'catalog/view/javascript/soconfig/css/bootstrap/bootstrap.rtl.min.css', '2019-11-05 15:16:03'),
(1069, 1, 'catalog/view/javascript/soconfig/css/fonts/glyphicons-halflings-regular.eot', '2019-11-05 15:16:03'),
(1070, 1, 'catalog/view/javascript/soconfig/css/fonts/glyphicons-halflings-regular.svg', '2019-11-05 15:16:03'),
(1071, 1, 'catalog/view/javascript/soconfig/css/fonts/glyphicons-halflings-regular.ttf', '2019-11-05 15:16:03'),
(1072, 1, 'catalog/view/javascript/soconfig/css/fonts/glyphicons-halflings-regular.woff', '2019-11-05 15:16:03'),
(1073, 1, 'catalog/view/javascript/soconfig/css/fonts/glyphicons-halflings-regular.woff2', '2019-11-05 15:16:03'),
(1074, 1, 'catalog/view/javascript/soconfig/css/fonts/ratchicons.eot', '2019-11-05 15:16:03'),
(1075, 1, 'catalog/view/javascript/soconfig/css/fonts/ratchicons.svg', '2019-11-05 15:16:03'),
(1076, 1, 'catalog/view/javascript/soconfig/css/fonts/ratchicons.ttf', '2019-11-05 15:16:03'),
(1077, 1, 'catalog/view/javascript/soconfig/css/fonts/ratchicons.woff', '2019-11-05 15:16:03'),
(1078, 1, 'catalog/view/javascript/soconfig/css/mobile/scroller.css', '2019-11-05 15:16:03'),
(1079, 1, 'catalog/view/javascript/soconfig/css/mobile/slick.css', '2019-11-05 15:16:03'),
(1080, 1, 'catalog/view/javascript/soconfig/css/ratchet/ratchet-rtl.css', '2019-11-05 15:16:03'),
(1081, 1, 'catalog/view/javascript/soconfig/css/ratchet/ratchet.css', '2019-11-05 15:16:03'),
(1082, 1, 'catalog/view/javascript/soconfig/css/ratchet/ratchet.min.css', '2019-11-05 15:16:03'),
(1083, 1, 'catalog/view/javascript/soconfig/data/cache/minify', '2019-11-05 15:16:03'),
(1084, 1, 'catalog/view/javascript/soconfig/js/mobile/scroller.js', '2019-11-05 15:16:03'),
(1085, 1, 'catalog/view/javascript/soconfig/js/mobile/slick.min.js', '2019-11-05 15:16:03'),
(1086, 1, 'catalog/view/javascript/soconfig/js/mobile/so.mobile.js', '2019-11-05 15:16:03'),
(1087, 1, 'catalog/view/javascript/soconfig/js/mobile/topnav.js', '2019-11-05 15:16:03'),
(1088, 1, 'catalog/view/javascript/soconfig/js/ratchet/ratchet.js', '2019-11-05 15:16:03'),
(1089, 1, 'catalog/view/javascript/soconfig/js/ratchet/ratchet.min.js', '2019-11-05 15:16:03'),
(1090, 1, 'catalog/view/javascript/soconfig/js/typo/application.js', '2019-11-05 15:16:03'),
(1091, 1, 'catalog/view/javascript/soconfig/js/typo/element.js', '2019-11-05 15:16:03'),
(1092, 1, 'catalog/view/theme/default/template/account/account.twig', '2019-11-05 15:16:03'),
(1093, 1, 'catalog/view/theme/default/template/account/address_form.twig', '2019-11-05 15:16:03'),
(1094, 1, 'catalog/view/theme/default/template/account/address_list.twig', '2019-11-05 15:16:03'),
(1095, 1, 'catalog/view/theme/default/template/account/affiliate.twig', '2019-11-05 15:16:03'),
(1096, 1, 'catalog/view/theme/default/template/account/download.twig', '2019-11-05 15:16:03'),
(1097, 1, 'catalog/view/theme/default/template/account/edit.twig', '2019-11-05 15:16:03'),
(1098, 1, 'catalog/view/theme/default/template/account/forgotten.twig', '2019-11-05 15:16:03'),
(1099, 1, 'catalog/view/theme/default/template/account/login.twig', '2019-11-05 15:16:03'),
(1100, 1, 'catalog/view/theme/default/template/account/newsletter.twig', '2019-11-05 15:16:03'),
(1101, 1, 'catalog/view/theme/default/template/account/order_info.twig', '2019-11-05 15:16:03'),
(1102, 1, 'catalog/view/theme/default/template/account/order_list.twig', '2019-11-05 15:16:03'),
(1103, 1, 'catalog/view/theme/default/template/account/password.twig', '2019-11-05 15:16:03'),
(1104, 1, 'catalog/view/theme/default/template/account/recurring_info.twig', '2019-11-05 15:16:03'),
(1105, 1, 'catalog/view/theme/default/template/account/recurring_list.twig', '2019-11-05 15:16:03'),
(1106, 1, 'catalog/view/theme/default/template/account/register.twig', '2019-11-05 15:16:03'),
(1107, 1, 'catalog/view/theme/default/template/account/reset.twig', '2019-11-05 15:16:03'),
(1108, 1, 'catalog/view/theme/default/template/account/return_form.twig', '2019-11-05 15:16:03'),
(1109, 1, 'catalog/view/theme/default/template/account/return_info.twig', '2019-11-05 15:16:03'),
(1110, 1, 'catalog/view/theme/default/template/account/return_list.twig', '2019-11-05 15:16:03'),
(1111, 1, 'catalog/view/theme/default/template/account/reward.twig', '2019-11-05 15:16:03'),
(1112, 1, 'catalog/view/theme/default/template/account/tracking.twig', '2019-11-05 15:16:03'),
(1113, 1, 'catalog/view/theme/default/template/account/transaction.twig', '2019-11-05 15:16:03'),
(1114, 1, 'catalog/view/theme/default/template/account/voucher.twig', '2019-11-05 15:16:03'),
(1115, 1, 'catalog/view/theme/default/template/account/wishlist.twig', '2019-11-05 15:16:03'),
(1116, 1, 'catalog/view/theme/default/template/affiliate/login.twig', '2019-11-05 15:16:03'),
(1117, 1, 'catalog/view/theme/default/template/affiliate/register.twig', '2019-11-05 15:16:03'),
(1118, 1, 'catalog/view/theme/default/template/affiliate/transaction.twig', '2019-11-05 15:16:03'),
(1119, 1, 'catalog/view/theme/default/template/checkout/cart.twig', '2019-11-05 15:16:03'),
(1120, 1, 'catalog/view/theme/default/template/checkout/checkout.twig', '2019-11-05 15:16:03'),
(1121, 1, 'catalog/view/theme/default/template/checkout/confirm.twig', '2019-11-05 15:16:03'),
(1122, 1, 'catalog/view/theme/default/template/checkout/guest.twig', '2019-11-05 15:16:03'),
(1123, 1, 'catalog/view/theme/default/template/checkout/guest_shipping.twig', '2019-11-05 15:16:03'),
(1124, 1, 'catalog/view/theme/default/template/checkout/login.twig', '2019-11-05 15:16:03'),
(1125, 1, 'catalog/view/theme/default/template/checkout/payment_address.twig', '2019-11-05 15:16:03'),
(1126, 1, 'catalog/view/theme/default/template/checkout/payment_method.twig', '2019-11-05 15:16:03'),
(1127, 1, 'catalog/view/theme/default/template/checkout/register.twig', '2019-11-05 15:16:03'),
(1128, 1, 'catalog/view/theme/default/template/checkout/shipping_address.twig', '2019-11-05 15:16:03'),
(1129, 1, 'catalog/view/theme/default/template/checkout/shipping_method.twig', '2019-11-05 15:16:03'),
(1130, 1, 'catalog/view/theme/default/template/common/cart.twig', '2019-11-05 15:16:03'),
(1131, 1, 'catalog/view/theme/default/template/common/column_left.twig', '2019-11-05 15:16:03'),
(1132, 1, 'catalog/view/theme/default/template/common/column_right.twig', '2019-11-05 15:16:03'),
(1133, 1, 'catalog/view/theme/default/template/common/content_bottom.twig', '2019-11-05 15:16:03'),
(1134, 1, 'catalog/view/theme/default/template/common/content_top.twig', '2019-11-05 15:16:03'),
(1135, 1, 'catalog/view/theme/default/template/common/currency.twig', '2019-11-05 15:16:03'),
(1136, 1, 'catalog/view/theme/default/template/common/footer.twig', '2019-11-05 15:16:03'),
(1137, 1, 'catalog/view/theme/default/template/common/header.twig', '2019-11-05 15:16:03'),
(1138, 1, 'catalog/view/theme/default/template/common/home.twig', '2019-11-05 15:16:03'),
(1139, 1, 'catalog/view/theme/default/template/common/language.twig', '2019-11-05 15:16:03'),
(1140, 1, 'catalog/view/theme/default/template/common/maintenance.twig', '2019-11-05 15:16:03'),
(1141, 1, 'catalog/view/theme/default/template/common/menu.twig', '2019-11-05 15:16:03'),
(1142, 1, 'catalog/view/theme/default/template/common/search.twig', '2019-11-05 15:16:03'),
(1143, 1, 'catalog/view/theme/default/template/common/success.twig', '2019-11-05 15:16:03'),
(1144, 1, 'catalog/view/theme/default/template/error/not_found.twig', '2019-11-05 15:16:03'),
(1145, 1, 'catalog/view/theme/default/template/information/contact.twig', '2019-11-05 15:16:03'),
(1146, 1, 'catalog/view/theme/default/template/information/information.twig', '2019-11-05 15:16:03'),
(1147, 1, 'catalog/view/theme/default/template/information/sitemap.twig', '2019-11-05 15:16:03'),
(1148, 1, 'catalog/view/theme/default/template/information/tracking.twig', '2019-11-05 15:16:03'),
(1149, 1, 'catalog/view/theme/default/template/mail/affiliate.twig', '2019-11-05 15:16:03'),
(1150, 1, 'catalog/view/theme/default/template/mail/affiliate_alert.twig', '2019-11-05 15:16:03'),
(1151, 1, 'catalog/view/theme/default/template/mail/forgotten.twig', '2019-11-05 15:16:03'),
(1152, 1, 'catalog/view/theme/default/template/mail/order_add.twig', '2019-11-05 15:16:03'),
(1153, 1, 'catalog/view/theme/default/template/mail/order_alert.twig', '2019-11-05 15:16:03'),
(1154, 1, 'catalog/view/theme/default/template/mail/order_edit.twig', '2019-11-05 15:16:04'),
(1155, 1, 'catalog/view/theme/default/template/mail/register.twig', '2019-11-05 15:16:04'),
(1156, 1, 'catalog/view/theme/default/template/mail/register_alert.twig', '2019-11-05 15:16:04'),
(1157, 1, 'catalog/view/theme/default/template/mail/transaction.twig', '2019-11-05 15:16:04'),
(1158, 1, 'catalog/view/theme/default/template/mail/voucher.twig', '2019-11-05 15:16:04'),
(1159, 1, 'catalog/view/theme/default/template/position/content_block.twig', '2019-11-05 15:16:04');
INSERT INTO `tbl_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1160, 1, 'catalog/view/theme/default/template/position/content_home.twig', '2019-11-05 15:16:04'),
(1161, 1, 'catalog/view/theme/default/template/position/content_menu1.twig', '2019-11-05 15:16:04'),
(1162, 1, 'catalog/view/theme/default/template/position/content_menu2.twig', '2019-11-05 15:16:04'),
(1163, 1, 'catalog/view/theme/default/template/position/footer_block1.twig', '2019-11-05 15:16:04'),
(1164, 1, 'catalog/view/theme/default/template/position/footer_block2.twig', '2019-11-05 15:16:04'),
(1165, 1, 'catalog/view/theme/default/template/position/footer_block3.twig', '2019-11-05 15:16:04'),
(1166, 1, 'catalog/view/theme/default/template/position/header_block.twig', '2019-11-05 15:16:04'),
(1167, 1, 'catalog/view/theme/default/template/position/search_block.twig', '2019-11-05 15:16:04'),
(1168, 1, 'catalog/view/theme/default/template/product/category.twig', '2019-11-05 15:16:04'),
(1169, 1, 'catalog/view/theme/default/template/product/compare.twig', '2019-11-05 15:16:04'),
(1170, 1, 'catalog/view/theme/default/template/product/manufacturer_info.twig', '2019-11-05 15:16:04'),
(1171, 1, 'catalog/view/theme/default/template/product/manufacturer_list.twig', '2019-11-05 15:16:04'),
(1172, 1, 'catalog/view/theme/default/template/product/product.twig', '2019-11-05 15:16:04'),
(1173, 1, 'catalog/view/theme/default/template/product/review.twig', '2019-11-05 15:16:04'),
(1174, 1, 'catalog/view/theme/default/template/product/search.twig', '2019-11-05 15:16:04'),
(1175, 1, 'catalog/view/theme/default/template/product/special.twig', '2019-11-05 15:16:04'),
(1176, 1, 'catalog/view/theme/so-ladaz/css/footer/footer1-rtl.css', '2019-11-05 15:16:04'),
(1177, 1, 'catalog/view/theme/so-ladaz/css/footer/footer1.css', '2019-11-05 15:16:04'),
(1178, 1, 'catalog/view/theme/so-ladaz/css/header/header1-rtl.css', '2019-11-05 15:16:04'),
(1179, 1, 'catalog/view/theme/so-ladaz/css/header/header1.css', '2019-11-05 15:16:04'),
(1180, 1, 'catalog/view/theme/so-ladaz/css/layout1/blue-rtl.css', '2019-11-05 15:16:04'),
(1181, 1, 'catalog/view/theme/so-ladaz/css/layout1/blue.css', '2019-11-05 15:16:04'),
(1182, 1, 'catalog/view/theme/so-ladaz/css/layout1/cyan-rtl.css', '2019-11-05 15:16:04'),
(1183, 1, 'catalog/view/theme/so-ladaz/css/layout1/cyan.css', '2019-11-05 15:16:04'),
(1184, 1, 'catalog/view/theme/so-ladaz/css/layout1/orange-rtl.css', '2019-11-05 15:16:04'),
(1185, 1, 'catalog/view/theme/so-ladaz/css/layout1/orange.css', '2019-11-05 15:16:04'),
(1186, 1, 'catalog/view/theme/so-ladaz/css/layout1/pink-rtl.css', '2019-11-05 15:16:04'),
(1187, 1, 'catalog/view/theme/so-ladaz/css/layout1/pink.css', '2019-11-05 15:16:04'),
(1188, 1, 'catalog/view/theme/so-ladaz/css/layout1/red-rtl.css', '2019-11-05 15:16:04'),
(1189, 1, 'catalog/view/theme/so-ladaz/css/layout1/red.css', '2019-11-05 15:16:04'),
(1190, 1, 'catalog/view/theme/so-ladaz/css/layout1/yellow-rtl.css', '2019-11-05 15:16:04'),
(1191, 1, 'catalog/view/theme/so-ladaz/css/layout1/yellow.css', '2019-11-05 15:16:04'),
(1192, 1, 'catalog/view/theme/so-ladaz/images/icon/bg-cat-sear1.png', '2019-11-05 15:16:04'),
(1193, 1, 'catalog/view/theme/so-ladaz/images/icon/bg-select.png', '2019-11-05 15:16:04'),
(1194, 1, 'catalog/view/theme/so-ladaz/images/icon/btn-menu-mobile.png', '2019-11-05 15:16:04'),
(1195, 1, 'catalog/view/theme/so-ladaz/images/icon/css_sprites.png', '2019-11-05 15:16:04'),
(1196, 1, 'catalog/view/theme/so-ladaz/images/icon/ico-slider.png', '2019-11-05 15:16:04'),
(1197, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-contact-w.png', '2019-11-05 15:16:04'),
(1198, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-contact.png', '2019-11-05 15:16:04'),
(1199, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-electronic.png', '2019-11-05 15:16:04'),
(1200, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-fashion.png', '2019-11-05 15:16:04'),
(1201, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-furniture.png', '2019-11-05 15:16:04'),
(1202, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-tit.png', '2019-11-05 15:16:04'),
(1203, 1, 'catalog/view/theme/so-ladaz/images/icon/icon-toys.png', '2019-11-05 15:16:04'),
(1204, 1, 'catalog/view/theme/so-ladaz/images/icon/icon_quickview.png', '2019-11-05 15:16:04'),
(1205, 1, 'catalog/view/theme/so-ladaz/images/icon/icon_quote.png', '2019-11-05 15:16:04'),
(1206, 1, 'catalog/view/theme/so-ladaz/images/icon/id4-icon-newsletter.png', '2019-11-05 15:16:04'),
(1207, 1, 'catalog/view/theme/so-ladaz/images/icon/id4-icons-policy.png', '2019-11-05 15:16:04'),
(1208, 1, 'catalog/view/theme/so-ladaz/images/icon/id6-promotion.png', '2019-11-05 15:16:04'),
(1209, 1, 'catalog/view/theme/so-ladaz/images/icon/id7-promotion.png', '2019-11-05 15:16:04'),
(1210, 1, 'catalog/view/theme/so-ladaz/images/icon/id8-promotion.png', '2019-11-05 15:16:04'),
(1211, 1, 'catalog/view/theme/so-ladaz/images/icon/id9-promotion.png', '2019-11-05 15:16:04'),
(1212, 1, 'catalog/view/theme/so-ladaz/images/icon/label-deal.png', '2019-11-05 15:16:04'),
(1213, 1, 'catalog/view/theme/so-ladaz/images/icon/next-prev-detail.png', '2019-11-05 15:16:04'),
(1214, 1, 'catalog/view/theme/so-ladaz/images/icon/promotion.png', '2019-11-05 15:16:04'),
(1215, 1, 'catalog/view/theme/so-ladaz/images/icon/show-c.png', '2019-11-05 15:16:04'),
(1216, 1, 'catalog/view/theme/so-ladaz/images/icon/title_vmenu.png', '2019-11-05 15:16:04'),
(1217, 1, 'catalog/view/theme/so-ladaz/images/patterns/1.png', '2019-11-05 15:16:04'),
(1218, 1, 'catalog/view/theme/so-ladaz/images/patterns/10.png', '2019-11-05 15:16:04'),
(1219, 1, 'catalog/view/theme/so-ladaz/images/patterns/11.png', '2019-11-05 15:16:04'),
(1220, 1, 'catalog/view/theme/so-ladaz/images/patterns/12.png', '2019-11-05 15:16:04'),
(1221, 1, 'catalog/view/theme/so-ladaz/images/patterns/13.png', '2019-11-05 15:16:04'),
(1222, 1, 'catalog/view/theme/so-ladaz/images/patterns/14.png', '2019-11-05 15:16:04'),
(1223, 1, 'catalog/view/theme/so-ladaz/images/patterns/15.png', '2019-11-05 15:16:04'),
(1224, 1, 'catalog/view/theme/so-ladaz/images/patterns/16.png', '2019-11-05 15:16:04'),
(1225, 1, 'catalog/view/theme/so-ladaz/images/patterns/17.png', '2019-11-05 15:16:04'),
(1226, 1, 'catalog/view/theme/so-ladaz/images/patterns/18.png', '2019-11-05 15:16:04'),
(1227, 1, 'catalog/view/theme/so-ladaz/images/patterns/19.png', '2019-11-05 15:16:04'),
(1228, 1, 'catalog/view/theme/so-ladaz/images/patterns/2.png', '2019-11-05 15:16:04'),
(1229, 1, 'catalog/view/theme/so-ladaz/images/patterns/20.png', '2019-11-05 15:16:04'),
(1230, 1, 'catalog/view/theme/so-ladaz/images/patterns/21.png', '2019-11-05 15:16:04'),
(1231, 1, 'catalog/view/theme/so-ladaz/images/patterns/22.png', '2019-11-05 15:16:04'),
(1232, 1, 'catalog/view/theme/so-ladaz/images/patterns/23.png', '2019-11-05 15:16:04'),
(1233, 1, 'catalog/view/theme/so-ladaz/images/patterns/24.png', '2019-11-05 15:16:04'),
(1234, 1, 'catalog/view/theme/so-ladaz/images/patterns/25.png', '2019-11-05 15:16:04'),
(1235, 1, 'catalog/view/theme/so-ladaz/images/patterns/26.png', '2019-11-05 15:16:04'),
(1236, 1, 'catalog/view/theme/so-ladaz/images/patterns/27.png', '2019-11-05 15:16:04'),
(1237, 1, 'catalog/view/theme/so-ladaz/images/patterns/28.png', '2019-11-05 15:16:04'),
(1238, 1, 'catalog/view/theme/so-ladaz/images/patterns/29.png', '2019-11-05 15:16:04'),
(1239, 1, 'catalog/view/theme/so-ladaz/images/patterns/3.png', '2019-11-05 15:16:04'),
(1240, 1, 'catalog/view/theme/so-ladaz/images/patterns/30.png', '2019-11-05 15:16:04'),
(1241, 1, 'catalog/view/theme/so-ladaz/images/patterns/31.png', '2019-11-05 15:16:04'),
(1242, 1, 'catalog/view/theme/so-ladaz/images/patterns/32.png', '2019-11-05 15:16:04'),
(1243, 1, 'catalog/view/theme/so-ladaz/images/patterns/33.png', '2019-11-05 15:16:04'),
(1244, 1, 'catalog/view/theme/so-ladaz/images/patterns/34.png', '2019-11-05 15:16:04'),
(1245, 1, 'catalog/view/theme/so-ladaz/images/patterns/35.png', '2019-11-05 15:16:04'),
(1246, 1, 'catalog/view/theme/so-ladaz/images/patterns/36.png', '2019-11-05 15:16:04'),
(1247, 1, 'catalog/view/theme/so-ladaz/images/patterns/37.png', '2019-11-05 15:16:04'),
(1248, 1, 'catalog/view/theme/so-ladaz/images/patterns/38.png', '2019-11-05 15:16:04'),
(1249, 1, 'catalog/view/theme/so-ladaz/images/patterns/39.png', '2019-11-05 15:16:04'),
(1250, 1, 'catalog/view/theme/so-ladaz/images/patterns/4.png', '2019-11-05 15:16:04'),
(1251, 1, 'catalog/view/theme/so-ladaz/images/patterns/40.png', '2019-11-05 15:16:04'),
(1252, 1, 'catalog/view/theme/so-ladaz/images/patterns/41.png', '2019-11-05 15:16:04'),
(1253, 1, 'catalog/view/theme/so-ladaz/images/patterns/42.png', '2019-11-05 15:16:04'),
(1254, 1, 'catalog/view/theme/so-ladaz/images/patterns/43.png', '2019-11-05 15:16:04'),
(1255, 1, 'catalog/view/theme/so-ladaz/images/patterns/44.png', '2019-11-05 15:16:04'),
(1256, 1, 'catalog/view/theme/so-ladaz/images/patterns/45.png', '2019-11-05 15:16:04'),
(1257, 1, 'catalog/view/theme/so-ladaz/images/patterns/46.png', '2019-11-05 15:16:04'),
(1258, 1, 'catalog/view/theme/so-ladaz/images/patterns/47.png', '2019-11-05 15:16:04'),
(1259, 1, 'catalog/view/theme/so-ladaz/images/patterns/48.png', '2019-11-05 15:16:04'),
(1260, 1, 'catalog/view/theme/so-ladaz/images/patterns/49.png', '2019-11-05 15:16:04'),
(1261, 1, 'catalog/view/theme/so-ladaz/images/patterns/5.png', '2019-11-05 15:16:04'),
(1262, 1, 'catalog/view/theme/so-ladaz/images/patterns/50.png', '2019-11-05 15:16:04'),
(1263, 1, 'catalog/view/theme/so-ladaz/images/patterns/51.png', '2019-11-05 15:16:04'),
(1264, 1, 'catalog/view/theme/so-ladaz/images/patterns/52.png', '2019-11-05 15:16:04'),
(1265, 1, 'catalog/view/theme/so-ladaz/images/patterns/53.png', '2019-11-05 15:16:04'),
(1266, 1, 'catalog/view/theme/so-ladaz/images/patterns/6.png', '2019-11-05 15:16:04'),
(1267, 1, 'catalog/view/theme/so-ladaz/images/patterns/7.png', '2019-11-05 15:16:04'),
(1268, 1, 'catalog/view/theme/so-ladaz/images/patterns/8.png', '2019-11-05 15:16:04'),
(1269, 1, 'catalog/view/theme/so-ladaz/images/patterns/9.png', '2019-11-05 15:16:04'),
(1270, 1, 'catalog/view/theme/so-ladaz/images/rate/rating0.png', '2019-11-05 15:16:04'),
(1271, 1, 'catalog/view/theme/so-ladaz/images/rate/rating1.png', '2019-11-05 15:16:04'),
(1272, 1, 'catalog/view/theme/so-ladaz/images/rate/rating2.png', '2019-11-05 15:16:04'),
(1273, 1, 'catalog/view/theme/so-ladaz/images/rate/rating3.png', '2019-11-05 15:16:04'),
(1274, 1, 'catalog/view/theme/so-ladaz/images/rate/rating4.png', '2019-11-05 15:16:04'),
(1275, 1, 'catalog/view/theme/so-ladaz/images/rate/rating5.png', '2019-11-05 15:16:04'),
(1276, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/_bourbon-deprecated-upcoming.scss', '2019-11-05 15:16:04'),
(1277, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/_bourbon.scss', '2019-11-05 15:16:04'),
(1278, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons', '2019-11-05 15:16:04'),
(1279, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3', '2019-11-05 15:16:04'),
(1280, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions', '2019-11-05 15:16:04'),
(1281, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers', '2019-11-05 15:16:04'),
(1282, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/settings', '2019-11-05 15:16:04'),
(1283, 1, 'catalog/view/theme/so-ladaz/sass/footer/_footer.scss', '2019-11-05 15:16:04'),
(1284, 1, 'catalog/view/theme/so-ladaz/sass/footer/footer1.scss', '2019-11-05 15:16:04'),
(1285, 1, 'catalog/view/theme/so-ladaz/sass/header/_header.scss', '2019-11-05 15:16:04'),
(1286, 1, 'catalog/view/theme/so-ladaz/sass/header/header1.scss', '2019-11-05 15:16:04'),
(1287, 1, 'catalog/view/theme/so-ladaz/sass/layout/_layout1.scss', '2019-11-05 15:16:04'),
(1288, 1, 'catalog/view/theme/so-ladaz/sass/responsive/responsive-1200px-min.scss', '2019-11-05 15:16:04'),
(1289, 1, 'catalog/view/theme/so-ladaz/sass/responsive/responsive-479px-max.scss', '2019-11-05 15:16:04'),
(1290, 1, 'catalog/view/theme/so-ladaz/sass/responsive/responsive-767px-max.scss', '2019-11-05 15:16:04'),
(1291, 1, 'catalog/view/theme/so-ladaz/sass/responsive/responsive-768px-991px.scss', '2019-11-05 15:16:04'),
(1292, 1, 'catalog/view/theme/so-ladaz/sass/responsive/responsive-992px-1199px.scss', '2019-11-05 15:16:04'),
(1293, 1, 'catalog/view/theme/so-ladaz/sass/theme/_blog.scss', '2019-11-05 15:16:04'),
(1294, 1, 'catalog/view/theme/so-ladaz/sass/theme/_bonus_page.scss', '2019-11-05 15:16:04'),
(1295, 1, 'catalog/view/theme/so-ladaz/sass/theme/_garenal.scss', '2019-11-05 15:16:04'),
(1296, 1, 'catalog/view/theme/so-ladaz/sass/theme/_module.scss', '2019-11-05 15:16:04'),
(1297, 1, 'catalog/view/theme/so-ladaz/sass/theme/_opencart.scss', '2019-11-05 15:16:04'),
(1298, 1, 'catalog/view/theme/so-ladaz/sass/theme/_pattern.scss', '2019-11-05 15:16:04'),
(1299, 1, 'catalog/view/theme/so-ladaz/sass/theme/_preloader.scss', '2019-11-05 15:16:04'),
(1300, 1, 'catalog/view/theme/so-ladaz/sass/theme/_productdetail.scss', '2019-11-05 15:16:04'),
(1301, 1, 'catalog/view/theme/so-ladaz/sass/theme/_productlist.scss', '2019-11-05 15:16:04'),
(1302, 1, 'catalog/view/theme/so-ladaz/sass/theme/_system.scss', '2019-11-05 15:16:04'),
(1303, 1, 'catalog/view/theme/so-ladaz/sass/theme/_typo.scss', '2019-11-05 15:16:04'),
(1304, 1, 'catalog/view/theme/so-ladaz/sass/typo/_buttons.scss', '2019-11-05 15:16:04'),
(1305, 1, 'catalog/view/theme/so-ladaz/sass/typo/_callouts.scss', '2019-11-05 15:16:04'),
(1306, 1, 'catalog/view/theme/so-ladaz/sass/typo/_clipboard-js.scss', '2019-11-05 15:16:04'),
(1307, 1, 'catalog/view/theme/so-ladaz/sass/typo/_colors.scss', '2019-11-05 15:16:04'),
(1308, 1, 'catalog/view/theme/so-ladaz/sass/typo/_component-examples.scss', '2019-11-05 15:16:04'),
(1309, 1, 'catalog/view/theme/so-ladaz/sass/typo/_content.scss', '2019-11-05 15:16:04'),
(1310, 1, 'catalog/view/theme/so-ladaz/sass/typo/_examples.scss', '2019-11-05 15:16:04'),
(1311, 1, 'catalog/view/theme/so-ladaz/sass/typo/_functions.scss', '2019-11-05 15:16:04'),
(1312, 1, 'catalog/view/theme/so-ladaz/sass/typo/_mixins.scss', '2019-11-05 15:16:04'),
(1313, 1, 'catalog/view/theme/so-ladaz/sass/typo/_typo.scss', '2019-11-05 15:16:04'),
(1314, 1, 'catalog/view/theme/so-ladaz/sass/typo/_utilities.scss', '2019-11-05 15:16:04'),
(1315, 1, 'catalog/view/theme/so-ladaz/sass/typo/_variables.scss', '2019-11-05 15:16:04'),
(1316, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins', '2019-11-05 15:16:04'),
(1317, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities', '2019-11-05 15:16:04'),
(1318, 1, 'catalog/view/theme/so-ladaz/sass/utilities/_bootstrap_breakpoints.scss', '2019-11-05 15:16:04'),
(1319, 1, 'catalog/view/theme/so-ladaz/sass/utilities/_directional.scss', '2019-11-05 15:16:04'),
(1320, 1, 'catalog/view/theme/so-ladaz/sass/utilities/_rem.scss', '2019-11-05 15:16:04'),
(1321, 1, 'catalog/view/theme/so-ladaz/sass/utilities/_theme_variables.scss', '2019-11-05 15:16:04'),
(1322, 1, 'catalog/view/theme/so-ladaz/sass/utilities/_utilities.scss', '2019-11-05 15:16:04'),
(1323, 1, 'catalog/view/theme/so-ladaz/template/account/login.twig', '2019-11-05 15:16:04'),
(1324, 1, 'catalog/view/theme/so-ladaz/template/common/cart.twig', '2019-11-05 15:16:04'),
(1325, 1, 'catalog/view/theme/so-ladaz/template/common/column_left.twig', '2019-11-05 15:16:04'),
(1326, 1, 'catalog/view/theme/so-ladaz/template/common/column_right.twig', '2019-11-05 15:16:04'),
(1327, 1, 'catalog/view/theme/so-ladaz/template/common/content_bottom.twig', '2019-11-05 15:16:05'),
(1328, 1, 'catalog/view/theme/so-ladaz/template/common/content_top.twig', '2019-11-05 15:16:05'),
(1329, 1, 'catalog/view/theme/so-ladaz/template/common/currency.twig', '2019-11-05 15:16:05'),
(1330, 1, 'catalog/view/theme/so-ladaz/template/common/footer.twig', '2019-11-05 15:16:05'),
(1331, 1, 'catalog/view/theme/so-ladaz/template/common/header.twig', '2019-11-05 15:16:05'),
(1332, 1, 'catalog/view/theme/so-ladaz/template/common/home.twig', '2019-11-05 15:16:05'),
(1333, 1, 'catalog/view/theme/so-ladaz/template/common/language.twig', '2019-11-05 15:16:05'),
(1334, 1, 'catalog/view/theme/so-ladaz/template/common/maintenance.twig', '2019-11-05 15:16:05'),
(1335, 1, 'catalog/view/theme/so-ladaz/template/common/menu.twig', '2019-11-05 15:16:05'),
(1336, 1, 'catalog/view/theme/so-ladaz/template/common/search.twig', '2019-11-05 15:16:05'),
(1337, 1, 'catalog/view/theme/so-ladaz/template/common/success.twig', '2019-11-05 15:16:05'),
(1338, 1, 'catalog/view/theme/so-ladaz/template/custom/bestseller.twig', '2019-11-05 15:16:05'),
(1339, 1, 'catalog/view/theme/so-ladaz/template/custom/categories.twig', '2019-11-05 15:16:05'),
(1340, 1, 'catalog/view/theme/so-ladaz/template/custom/newarrivals.twig', '2019-11-05 15:16:05'),
(1341, 1, 'catalog/view/theme/so-ladaz/template/error/not_found.twig', '2019-11-05 15:16:05'),
(1342, 1, 'catalog/view/theme/so-ladaz/template/extension/captcha', '2019-11-05 15:16:05'),
(1343, 1, 'catalog/view/theme/so-ladaz/template/extension/credit_card', '2019-11-05 15:16:05'),
(1344, 1, 'catalog/view/theme/so-ladaz/template/extension/module', '2019-11-05 15:16:05'),
(1345, 1, 'catalog/view/theme/so-ladaz/template/extension/payment', '2019-11-05 15:16:05'),
(1346, 1, 'catalog/view/theme/so-ladaz/template/extension/recurring', '2019-11-05 15:16:05'),
(1347, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog', '2019-11-05 15:16:05'),
(1348, 1, 'catalog/view/theme/so-ladaz/template/extension/total', '2019-11-05 15:16:05'),
(1349, 1, 'catalog/view/theme/so-ladaz/template/footer/footer1.twig', '2019-11-05 15:16:05'),
(1350, 1, 'catalog/view/theme/so-ladaz/template/header/header1.twig', '2019-11-05 15:16:05'),
(1351, 1, 'catalog/view/theme/so-ladaz/template/information/contact.twig', '2019-11-05 15:16:05'),
(1352, 1, 'catalog/view/theme/so-ladaz/template/information/information.twig', '2019-11-05 15:16:05'),
(1353, 1, 'catalog/view/theme/so-ladaz/template/information/sitemap.twig', '2019-11-05 15:16:05'),
(1354, 1, 'catalog/view/theme/so-ladaz/template/mobile/home.twig', '2019-11-05 15:16:05'),
(1355, 1, 'catalog/view/theme/so-ladaz/template/position/content_block.twig', '2019-11-05 15:16:05'),
(1356, 1, 'catalog/view/theme/so-ladaz/template/product/category.twig', '2019-11-05 15:16:05'),
(1357, 1, 'catalog/view/theme/so-ladaz/template/product/compare.twig', '2019-11-05 15:16:05'),
(1358, 1, 'catalog/view/theme/so-ladaz/template/product/gallery', '2019-11-05 15:16:05'),
(1359, 1, 'catalog/view/theme/so-ladaz/template/product/manufacturer_info.twig', '2019-11-05 15:16:05'),
(1360, 1, 'catalog/view/theme/so-ladaz/template/product/manufacturer_list.twig', '2019-11-05 15:16:05'),
(1361, 1, 'catalog/view/theme/so-ladaz/template/product/product.twig', '2019-11-05 15:16:05'),
(1362, 1, 'catalog/view/theme/so-ladaz/template/product/review.twig', '2019-11-05 15:16:05'),
(1363, 1, 'catalog/view/theme/so-ladaz/template/product/search.twig', '2019-11-05 15:16:05'),
(1364, 1, 'catalog/view/theme/so-ladaz/template/product/special.twig', '2019-11-05 15:16:05'),
(1365, 1, 'catalog/view/theme/so-ladaz/template/social/facebook.php', '2019-11-05 15:16:05'),
(1366, 1, 'catalog/view/theme/so-ladaz/template/social/twitter.php', '2019-11-05 15:16:05'),
(1367, 1, 'catalog/view/theme/so-ladaz/template/social/youtubevideo.php', '2019-11-05 15:16:05'),
(1368, 1, 'catalog/view/theme/so-ladaz/template/soconfig/breadcrumbs.twig', '2019-11-05 15:16:05'),
(1369, 1, 'catalog/view/theme/so-ladaz/template/soconfig/countdown.twig', '2019-11-05 15:16:05'),
(1370, 1, 'catalog/view/theme/so-ladaz/template/soconfig/icon-defs.twig', '2019-11-05 15:16:05'),
(1371, 1, 'catalog/view/theme/so-ladaz/template/soconfig/listing.twig', '2019-11-05 15:16:05'),
(1372, 1, 'catalog/view/theme/so-ladaz/template/soconfig/preloader.twig', '2019-11-05 15:16:05'),
(1373, 1, 'catalog/view/theme/so-ladaz/template/soconfig/quickview.twig', '2019-11-05 15:16:05'),
(1374, 1, 'catalog/view/theme/so-ladaz/template/soconfig/quickview_header.twig', '2019-11-05 15:16:05'),
(1375, 1, 'catalog/view/theme/so-ladaz/template/soconfig/related_product.twig', '2019-11-05 15:16:05'),
(1376, 1, 'catalog/view/theme/so-ladaz/template/soconfig/subcategory.twig', '2019-11-05 15:16:05'),
(1377, 1, 'system/library/so/basic_products/Cache_Lite/Lite/File.php', '2019-11-05 15:16:05'),
(1378, 1, 'system/library/so/basic_products/Cache_Lite/Lite/Function.php', '2019-11-05 15:16:05'),
(1379, 1, 'system/library/so/basic_products/Cache_Lite/Lite/NestedOutput.php', '2019-11-05 15:16:05'),
(1380, 1, 'system/library/so/basic_products/Cache_Lite/Lite/Output.php', '2019-11-05 15:16:05'),
(1381, 1, 'system/library/so/html_content/Cache_Lite/Lite/File.php', '2019-11-05 15:16:05'),
(1382, 1, 'system/library/so/html_content/Cache_Lite/Lite/Function.php', '2019-11-05 15:16:05'),
(1383, 1, 'system/library/so/html_content/Cache_Lite/Lite/NestedOutput.php', '2019-11-05 15:16:05'),
(1384, 1, 'system/library/so/html_content/Cache_Lite/Lite/Output.php', '2019-11-05 15:16:05'),
(1385, 1, 'system/library/so/latest_blog/Cache_Lite/Lite/File.php', '2019-11-05 15:16:05'),
(1386, 1, 'system/library/so/latest_blog/Cache_Lite/Lite/Function.php', '2019-11-05 15:16:05'),
(1387, 1, 'system/library/so/latest_blog/Cache_Lite/Lite/NestedOutput.php', '2019-11-05 15:16:05'),
(1388, 1, 'system/library/so/latest_blog/Cache_Lite/Lite/Output.php', '2019-11-05 15:16:05'),
(1389, 1, 'admin/view/template/extension/module/simple_blog/image/default.png', '2019-11-05 15:16:05'),
(1390, 1, 'admin/view/template/extension/module/simple_blog/image/style1.png', '2019-11-05 15:16:05'),
(1391, 1, 'admin/view/template/extension/module/simple_blog/image/style2.png', '2019-11-05 15:16:05'),
(1392, 1, 'admin/view/template/extension/module/simple_blog/image/style3.png', '2019-11-05 15:16:05'),
(1393, 1, 'admin/view/template/extension/module/simple_blog/image/style4.png', '2019-11-05 15:16:05'),
(1394, 1, 'admin/view/template/extension/module/simple_blog/image/style5.png', '2019-11-05 15:16:05'),
(1395, 1, 'admin/view/template/extension/soconfig/asset/css/banner-effect.css', '2019-11-05 15:16:05'),
(1396, 1, 'admin/view/template/extension/soconfig/asset/css/theme-rtl.css', '2019-11-05 15:16:05'),
(1397, 1, 'admin/view/template/extension/soconfig/asset/css/theme.css', '2019-11-05 15:16:05'),
(1398, 1, 'admin/view/template/extension/soconfig/asset/js/jquery.cookie.js', '2019-11-05 15:16:05'),
(1399, 1, 'admin/view/template/extension/soconfig/asset/js/jquery.sticky-kit.min.js', '2019-11-05 15:16:05'),
(1400, 1, 'admin/view/template/extension/soconfig/asset/js/theme.js', '2019-11-05 15:16:05'),
(1401, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker', '2019-11-05 15:16:05'),
(1402, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2', '2019-11-05 15:16:05'),
(1403, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote', '2019-11-05 15:16:05'),
(1404, 1, 'admin/view/template/extension/soconfig/class/minify/css', '2019-11-05 15:16:05'),
(1405, 1, 'admin/view/template/extension/soconfig/class/minify/jsmin.php', '2019-11-05 15:16:05'),
(1406, 1, 'admin/view/template/extension/soconfig/class/scssphp/LICENSE.md', '2019-11-05 15:16:05'),
(1407, 1, 'admin/view/template/extension/soconfig/class/scssphp/README.md', '2019-11-05 15:16:05'),
(1408, 1, 'admin/view/template/extension/soconfig/class/scssphp/bin', '2019-11-05 15:16:05'),
(1409, 1, 'admin/view/template/extension/soconfig/class/scssphp/composer.json', '2019-11-05 15:16:05'),
(1410, 1, 'admin/view/template/extension/soconfig/class/scssphp/scss.inc.php', '2019-11-05 15:16:05'),
(1411, 1, 'admin/view/template/extension/soconfig/class/scssphp/src', '2019-11-05 15:16:05'),
(1412, 1, 'admin/view/template/extension/soconfig/demo/default/install.php', '2019-11-05 15:16:05'),
(1413, 1, 'admin/view/template/extension/soconfig/demo/default/themes.sql', '2019-11-05 15:16:05'),
(1414, 1, 'admin/view/template/extension/soconfig/images/desktop/banner-01.png', '2019-11-05 15:16:05'),
(1415, 1, 'admin/view/template/extension/soconfig/images/desktop/typefooter1.jpg', '2019-11-05 15:16:05'),
(1416, 1, 'admin/view/template/extension/soconfig/images/desktop/typeheader1.jpg', '2019-11-05 15:16:05'),
(1417, 1, 'admin/view/template/extension/soconfig/images/desktop/typelayout1.jpg', '2019-11-05 15:16:05'),
(1418, 1, 'admin/view/template/extension/soconfig/images/general/cart_info.png', '2019-11-05 15:16:05'),
(1419, 1, 'admin/view/template/extension/soconfig/images/general/category_info.png', '2019-11-05 15:16:05'),
(1420, 1, 'admin/view/template/extension/soconfig/images/general/product-grid.png', '2019-11-05 15:16:05'),
(1421, 1, 'admin/view/template/extension/soconfig/images/general/product_detail.png', '2019-11-05 15:16:05'),
(1422, 1, 'admin/view/template/extension/soconfig/images/general/product_list.png', '2019-11-05 15:16:05'),
(1423, 1, 'admin/view/template/extension/soconfig/images/general/social_list.png', '2019-11-05 15:16:05'),
(1424, 1, 'admin/view/template/extension/soconfig/images/general/sticky_menu_top.png', '2019-11-05 15:16:05'),
(1425, 1, 'admin/view/template/extension/soconfig/images/general/sub_category.png', '2019-11-05 15:16:05'),
(1426, 1, 'admin/view/template/extension/soconfig/images/general/top_bar.png', '2019-11-05 15:16:05'),
(1427, 1, 'admin/view/template/extension/soconfig/images/mobile/menumore.png', '2019-11-05 15:16:05'),
(1428, 1, 'admin/view/template/extension/soconfig/images/mobile/mobilelayout1.jpg', '2019-11-05 15:16:05'),
(1429, 1, 'admin/view/template/extension/soconfig/images/mobile/mobilelayout2.jpg', '2019-11-05 15:16:05'),
(1430, 1, 'admin/view/template/extension/soconfig/images/mobile/mobilelayout3.jpg', '2019-11-05 15:16:05'),
(1431, 1, 'admin/view/template/extension/soconfig/images/mobile/mtypeheader1.jpg', '2019-11-05 15:16:05'),
(1432, 1, 'admin/view/template/extension/soconfig/images/mobile/mtypeheader2.jpg', '2019-11-05 15:16:05'),
(1433, 1, 'admin/view/template/extension/soconfig/images/mobile/mtypeheader3.jpg', '2019-11-05 15:16:05'),
(1434, 1, 'admin/view/template/extension/soconfig/images/mobile/navbar.png', '2019-11-05 15:16:05'),
(1435, 1, 'catalog/view/javascript/jquery/swiper/js/maps/swiper.jquery.min.js.map', '2019-11-05 15:16:05'),
(1436, 1, 'catalog/view/javascript/jquery/swiper/js/maps/swiper.jquery.umd.min.js.map', '2019-11-05 15:16:05'),
(1437, 1, 'catalog/view/javascript/jquery/swiper/js/maps/swiper.min.js.map', '2019-11-05 15:16:05'),
(1438, 1, 'catalog/view/javascript/soconfig/data/cache/minify/07d9ded4499136c0c257db6d3f01a9ba.css', '2019-11-05 15:16:05'),
(1439, 1, 'catalog/view/javascript/soconfig/data/cache/minify/09588d15a90b198e226581b42694fca8.css', '2019-11-05 15:16:05'),
(1440, 1, 'catalog/view/javascript/soconfig/data/cache/minify/0e06b3479303721784dea759192e1a87.css', '2019-11-05 15:16:05'),
(1441, 1, 'catalog/view/javascript/soconfig/data/cache/minify/11140ba1110ff97dd964ddcfdbf9715a.js', '2019-11-05 15:16:05'),
(1442, 1, 'catalog/view/javascript/soconfig/data/cache/minify/17643f6cbcf09930b99e7113fd6e5440.css', '2019-11-05 15:16:05'),
(1443, 1, 'catalog/view/javascript/soconfig/data/cache/minify/1a305116a0b6674c41b6831080eb4909.js', '2019-11-05 15:16:05'),
(1444, 1, 'catalog/view/javascript/soconfig/data/cache/minify/256728ea6270d49bb8f30883676cebc3.js', '2019-11-05 15:16:05'),
(1445, 1, 'catalog/view/javascript/soconfig/data/cache/minify/3a39b9c0378365255b985b6540c3a9f1.css', '2019-11-05 15:16:05'),
(1446, 1, 'catalog/view/javascript/soconfig/data/cache/minify/4357684e2544943cffe5b4577d2b967d.js', '2019-11-05 15:16:05'),
(1447, 1, 'catalog/view/javascript/soconfig/data/cache/minify/4590a69a26683d8f3b60f8d388738e63.js', '2019-11-05 15:16:05'),
(1448, 1, 'catalog/view/javascript/soconfig/data/cache/minify/4f7cf7b6ce795aa487d2a6ef242a8884.css', '2019-11-05 15:16:05'),
(1449, 1, 'catalog/view/javascript/soconfig/data/cache/minify/54983d43e9321d4a0386272afa2f6b48.css', '2019-11-05 15:16:05'),
(1450, 1, 'catalog/view/javascript/soconfig/data/cache/minify/558b007b4820b90d6f760165c4cf3d2f.js', '2019-11-05 15:16:05'),
(1451, 1, 'catalog/view/javascript/soconfig/data/cache/minify/582bab6166ca6754c803c58a5226ba58.js', '2019-11-05 15:16:05'),
(1452, 1, 'catalog/view/javascript/soconfig/data/cache/minify/61a282556bd2bd5f99cb4fc5849b1b2e.css', '2019-11-05 15:16:05'),
(1453, 1, 'catalog/view/javascript/soconfig/data/cache/minify/61f5cb050ed9f27ff12ec9262c78e721.js', '2019-11-05 15:16:05'),
(1454, 1, 'catalog/view/javascript/soconfig/data/cache/minify/6632d6e22bc6d407fe2daba39f43dbd0.css', '2019-11-05 15:16:05'),
(1455, 1, 'catalog/view/javascript/soconfig/data/cache/minify/9709fb51004241ff16402d72e3bce7be.css', '2019-11-05 15:16:05'),
(1456, 1, 'catalog/view/javascript/soconfig/data/cache/minify/a0191a5dc03568043363b4553544259d.css', '2019-11-05 15:16:05'),
(1457, 1, 'catalog/view/javascript/soconfig/data/cache/minify/a4917a1a694ec3cb079452ac0a4c3a5f.js', '2019-11-05 15:16:05'),
(1458, 1, 'catalog/view/javascript/soconfig/data/cache/minify/bdc01e896c9a9b6d17b2e253a9395c73.css', '2019-11-05 15:16:05'),
(1459, 1, 'catalog/view/javascript/soconfig/data/cache/minify/cd5bc7d08dd46da33151af14827ab714.js', '2019-11-05 15:16:05'),
(1460, 1, 'catalog/view/javascript/soconfig/data/cache/minify/d41d8cd98f00b204e9800998ecf8427e.css', '2019-11-05 15:16:05'),
(1461, 1, 'catalog/view/javascript/soconfig/data/cache/minify/dc3659b0088b1f7a37e52f621d3197f4.css', '2019-11-05 15:16:05'),
(1462, 1, 'catalog/view/theme/default/template/extension/captcha/basic.twig', '2019-11-05 15:16:05'),
(1463, 1, 'catalog/view/theme/default/template/extension/captcha/google.twig', '2019-11-05 15:16:05'),
(1464, 1, 'catalog/view/theme/default/template/extension/credit_card/sagepay_direct_form.twig', '2019-11-05 15:16:05'),
(1465, 1, 'catalog/view/theme/default/template/extension/credit_card/sagepay_direct_list.twig', '2019-11-05 15:16:05'),
(1466, 1, 'catalog/view/theme/default/template/extension/credit_card/sagepay_server_list.twig', '2019-11-05 15:16:05'),
(1467, 1, 'catalog/view/theme/default/template/extension/credit_card/squareup.twig', '2019-11-05 15:16:05'),
(1468, 1, 'catalog/view/theme/default/template/extension/module/account.twig', '2019-11-05 15:16:05'),
(1469, 1, 'catalog/view/theme/default/template/extension/module/amazon_login.twig', '2019-11-05 15:16:05'),
(1470, 1, 'catalog/view/theme/default/template/extension/module/amazon_pay.twig', '2019-11-05 15:16:05'),
(1471, 1, 'catalog/view/theme/default/template/extension/module/banner.twig', '2019-11-05 15:16:05'),
(1472, 1, 'catalog/view/theme/default/template/extension/module/bestseller.twig', '2019-11-05 15:16:05'),
(1473, 1, 'catalog/view/theme/default/template/extension/module/carousel.twig', '2019-11-05 15:16:05'),
(1474, 1, 'catalog/view/theme/default/template/extension/module/category.twig', '2019-11-05 15:16:05'),
(1475, 1, 'catalog/view/theme/default/template/extension/module/divido_calculator.twig', '2019-11-05 15:16:05'),
(1476, 1, 'catalog/view/theme/default/template/extension/module/ebay_listing.twig', '2019-11-05 15:16:05'),
(1477, 1, 'catalog/view/theme/default/template/extension/module/featured.twig', '2019-11-05 15:16:05'),
(1478, 1, 'catalog/view/theme/default/template/extension/module/filter.twig', '2019-11-05 15:16:05'),
(1479, 1, 'catalog/view/theme/default/template/extension/module/google_hangouts.twig', '2019-11-05 15:16:05'),
(1480, 1, 'catalog/view/theme/default/template/extension/module/html.twig', '2019-11-05 15:16:05'),
(1481, 1, 'catalog/view/theme/default/template/extension/module/information.twig', '2019-11-05 15:16:05'),
(1482, 1, 'catalog/view/theme/default/template/extension/module/klarna_checkout_module.twig', '2019-11-05 15:16:05'),
(1483, 1, 'catalog/view/theme/default/template/extension/module/latest.twig', '2019-11-05 15:16:05'),
(1484, 1, 'catalog/view/theme/default/template/extension/module/laybuy_layout.twig', '2019-11-05 15:16:05'),
(1485, 1, 'catalog/view/theme/default/template/extension/module/pilibaba_button.twig', '2019-11-05 15:16:05'),
(1486, 1, 'catalog/view/theme/default/template/extension/module/pp_braintree_button.twig', '2019-11-05 15:16:05'),
(1487, 1, 'catalog/view/theme/default/template/extension/module/pp_button.twig', '2019-11-05 15:16:05'),
(1488, 1, 'catalog/view/theme/default/template/extension/module/pp_login.twig', '2019-11-05 15:16:05'),
(1489, 1, 'catalog/view/theme/default/template/extension/module/sagepay_direct_cards.twig', '2019-11-05 15:16:05'),
(1490, 1, 'catalog/view/theme/default/template/extension/module/sagepay_server_cards.twig', '2019-11-05 15:16:05'),
(1491, 1, 'catalog/view/theme/default/template/extension/module/slideshow.twig', '2019-11-05 15:16:05'),
(1492, 1, 'catalog/view/theme/default/template/extension/module/so_basic_products', '2019-11-05 15:16:05'),
(1493, 1, 'catalog/view/theme/default/template/extension/module/so_html_content', '2019-11-05 15:16:05'),
(1494, 1, 'catalog/view/theme/default/template/extension/module/so_latest_blog', '2019-11-05 15:16:05'),
(1495, 1, 'catalog/view/theme/default/template/extension/module/special.twig', '2019-11-05 15:16:05'),
(1496, 1, 'catalog/view/theme/default/template/extension/module/store.twig', '2019-11-05 15:16:05'),
(1497, 1, 'catalog/view/theme/default/template/extension/payment/alipay.twig', '2019-11-05 15:16:05'),
(1498, 1, 'catalog/view/theme/default/template/extension/payment/alipay_cross.twig', '2019-11-05 15:16:05'),
(1499, 1, 'catalog/view/theme/default/template/extension/payment/amazon_login_pay_address.twig', '2019-11-05 15:16:05'),
(1500, 1, 'catalog/view/theme/default/template/extension/payment/amazon_login_pay_confirm.twig', '2019-11-05 15:16:05'),
(1501, 1, 'catalog/view/theme/default/template/extension/payment/amazon_login_pay_failure.twig', '2019-11-05 15:16:05'),
(1502, 1, 'catalog/view/theme/default/template/extension/payment/amazon_login_pay_payment.twig', '2019-11-05 15:16:05'),
(1503, 1, 'catalog/view/theme/default/template/extension/payment/authorizenet_aim.twig', '2019-11-05 15:16:05'),
(1504, 1, 'catalog/view/theme/default/template/extension/payment/authorizenet_sim.twig', '2019-11-05 15:16:05'),
(1505, 1, 'catalog/view/theme/default/template/extension/payment/bank_transfer.twig', '2019-11-05 15:16:05'),
(1506, 1, 'catalog/view/theme/default/template/extension/payment/bluepay_hosted.twig', '2019-11-05 15:16:05'),
(1507, 1, 'catalog/view/theme/default/template/extension/payment/bluepay_redirect.twig', '2019-11-05 15:16:05'),
(1508, 1, 'catalog/view/theme/default/template/extension/payment/cardconnect.twig', '2019-11-05 15:16:05'),
(1509, 1, 'catalog/view/theme/default/template/extension/payment/cardinity.twig', '2019-11-05 15:16:05'),
(1510, 1, 'catalog/view/theme/default/template/extension/payment/cardinity_3ds.twig', '2019-11-05 15:16:05'),
(1511, 1, 'catalog/view/theme/default/template/extension/payment/cheque.twig', '2019-11-05 15:16:05'),
(1512, 1, 'catalog/view/theme/default/template/extension/payment/cod.twig', '2019-11-05 15:16:05'),
(1513, 1, 'catalog/view/theme/default/template/extension/payment/divido.twig', '2019-11-05 15:16:05'),
(1514, 1, 'catalog/view/theme/default/template/extension/payment/divido_calculator.twig', '2019-11-05 15:16:05'),
(1515, 1, 'catalog/view/theme/default/template/extension/payment/divido_widget.twig', '2019-11-05 15:16:05'),
(1516, 1, 'catalog/view/theme/default/template/extension/payment/eway.twig', '2019-11-05 15:16:05'),
(1517, 1, 'catalog/view/theme/default/template/extension/payment/eway_iframe.twig', '2019-11-05 15:16:05'),
(1518, 1, 'catalog/view/theme/default/template/extension/payment/firstdata.twig', '2019-11-05 15:16:05'),
(1519, 1, 'catalog/view/theme/default/template/extension/payment/firstdata_remote.twig', '2019-11-05 15:16:05'),
(1520, 1, 'catalog/view/theme/default/template/extension/payment/free_checkout.twig', '2019-11-05 15:16:05'),
(1521, 1, 'catalog/view/theme/default/template/extension/payment/g2apay.twig', '2019-11-05 15:16:05'),
(1522, 1, 'catalog/view/theme/default/template/extension/payment/globalpay.twig', '2019-11-05 15:16:05'),
(1523, 1, 'catalog/view/theme/default/template/extension/payment/globalpay_remote.twig', '2019-11-05 15:16:05'),
(1524, 1, 'catalog/view/theme/default/template/extension/payment/globalpay_response.twig', '2019-11-05 15:16:05'),
(1525, 1, 'catalog/view/theme/default/template/extension/payment/klarna_account.twig', '2019-11-05 15:16:05'),
(1526, 1, 'catalog/view/theme/default/template/extension/payment/klarna_checkout.twig', '2019-11-05 15:16:05'),
(1527, 1, 'catalog/view/theme/default/template/extension/payment/klarna_checkout_main.twig', '2019-11-05 15:16:05'),
(1528, 1, 'catalog/view/theme/default/template/extension/payment/klarna_checkout_sidebar.twig', '2019-11-05 15:16:05'),
(1529, 1, 'catalog/view/theme/default/template/extension/payment/klarna_checkout_success.twig', '2019-11-05 15:16:05'),
(1530, 1, 'catalog/view/theme/default/template/extension/payment/klarna_invoice.twig', '2019-11-05 15:16:05'),
(1531, 1, 'catalog/view/theme/default/template/extension/payment/laybuy.twig', '2019-11-05 15:16:05'),
(1532, 1, 'catalog/view/theme/default/template/extension/payment/liqpay.twig', '2019-11-05 15:16:05'),
(1533, 1, 'catalog/view/theme/default/template/extension/payment/nochex.twig', '2019-11-05 15:16:05'),
(1534, 1, 'catalog/view/theme/default/template/extension/payment/paymate.twig', '2019-11-05 15:16:05'),
(1535, 1, 'catalog/view/theme/default/template/extension/payment/paypoint.twig', '2019-11-05 15:16:05'),
(1536, 1, 'catalog/view/theme/default/template/extension/payment/paypoint_failure.twig', '2019-11-05 15:16:05'),
(1537, 1, 'catalog/view/theme/default/template/extension/payment/paypoint_success.twig', '2019-11-05 15:16:05'),
(1538, 1, 'catalog/view/theme/default/template/extension/payment/payza.twig', '2019-11-05 15:16:05'),
(1539, 1, 'catalog/view/theme/default/template/extension/payment/perpetual_payments.twig', '2019-11-05 15:16:05'),
(1540, 1, 'catalog/view/theme/default/template/extension/payment/pilibaba.twig', '2019-11-05 15:16:05'),
(1541, 1, 'catalog/view/theme/default/template/extension/payment/pp_braintree.twig', '2019-11-05 15:16:05'),
(1542, 1, 'catalog/view/theme/default/template/extension/payment/pp_braintree_confirm.twig', '2019-11-05 15:16:05'),
(1543, 1, 'catalog/view/theme/default/template/extension/payment/pp_express.twig', '2019-11-05 15:16:05'),
(1544, 1, 'catalog/view/theme/default/template/extension/payment/pp_express_confirm.twig', '2019-11-05 15:16:05'),
(1545, 1, 'catalog/view/theme/default/template/extension/payment/pp_payflow.twig', '2019-11-05 15:16:05'),
(1546, 1, 'catalog/view/theme/default/template/extension/payment/pp_payflow_iframe.twig', '2019-11-05 15:16:05'),
(1547, 1, 'catalog/view/theme/default/template/extension/payment/pp_payflow_iframe_return.twig', '2019-11-05 15:16:05'),
(1548, 1, 'catalog/view/theme/default/template/extension/payment/pp_pro.twig', '2019-11-05 15:16:05'),
(1549, 1, 'catalog/view/theme/default/template/extension/payment/pp_pro_iframe.twig', '2019-11-05 15:16:05'),
(1550, 1, 'catalog/view/theme/default/template/extension/payment/pp_pro_iframe_body.twig', '2019-11-05 15:16:05'),
(1551, 1, 'catalog/view/theme/default/template/extension/payment/pp_standard.twig', '2019-11-05 15:16:05'),
(1552, 1, 'catalog/view/theme/default/template/extension/payment/realex.twig', '2019-11-05 15:16:05'),
(1553, 1, 'catalog/view/theme/default/template/extension/payment/realex_remote.twig', '2019-11-05 15:16:05'),
(1554, 1, 'catalog/view/theme/default/template/extension/payment/realex_response.twig', '2019-11-05 15:16:05'),
(1555, 1, 'catalog/view/theme/default/template/extension/payment/sagepay_direct.twig', '2019-11-05 15:16:05'),
(1556, 1, 'catalog/view/theme/default/template/extension/payment/sagepay_server.twig', '2019-11-05 15:16:05'),
(1557, 1, 'catalog/view/theme/default/template/extension/payment/sagepay_us.twig', '2019-11-05 15:16:05'),
(1558, 1, 'catalog/view/theme/default/template/extension/payment/securetrading_pp.twig', '2019-11-05 15:16:05'),
(1559, 1, 'catalog/view/theme/default/template/extension/payment/securetrading_ws.twig', '2019-11-05 15:16:05'),
(1560, 1, 'catalog/view/theme/default/template/extension/payment/skrill.twig', '2019-11-05 15:16:05'),
(1561, 1, 'catalog/view/theme/default/template/extension/payment/squareup.twig', '2019-11-05 15:16:05'),
(1562, 1, 'catalog/view/theme/default/template/extension/payment/twocheckout.twig', '2019-11-05 15:16:05'),
(1563, 1, 'catalog/view/theme/default/template/extension/payment/web_payment_software.twig', '2019-11-05 15:16:05'),
(1564, 1, 'catalog/view/theme/default/template/extension/payment/wechat_pay.twig', '2019-11-05 15:16:05'),
(1565, 1, 'catalog/view/theme/default/template/extension/payment/wechat_pay_qrcode.twig', '2019-11-05 15:16:05'),
(1566, 1, 'catalog/view/theme/default/template/extension/payment/worldpay.twig', '2019-11-05 15:16:05'),
(1567, 1, 'catalog/view/theme/default/template/extension/payment/worldpay_failure.twig', '2019-11-05 15:16:05'),
(1568, 1, 'catalog/view/theme/default/template/extension/payment/worldpay_success.twig', '2019-11-05 15:16:05'),
(1569, 1, 'catalog/view/theme/default/template/extension/recurring/pp_express.twig', '2019-11-05 15:16:05'),
(1570, 1, 'catalog/view/theme/default/template/extension/recurring/squareup.twig', '2019-11-05 15:16:05'),
(1571, 1, 'catalog/view/theme/default/template/extension/total/coupon.twig', '2019-11-05 15:16:05'),
(1572, 1, 'catalog/view/theme/default/template/extension/total/reward.twig', '2019-11-05 15:16:05'),
(1573, 1, 'catalog/view/theme/default/template/extension/total/shipping.twig', '2019-11-05 15:16:05'),
(1574, 1, 'catalog/view/theme/default/template/extension/total/voucher.twig', '2019-11-05 15:16:05'),
(1575, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_border-color.scss', '2019-11-05 15:16:05'),
(1576, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_border-radius.scss', '2019-11-05 15:16:05'),
(1577, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_border-style.scss', '2019-11-05 15:16:05'),
(1578, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_border-width.scss', '2019-11-05 15:16:05'),
(1579, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_buttons.scss', '2019-11-05 15:16:05'),
(1580, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_clearfix.scss', '2019-11-05 15:16:05'),
(1581, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_ellipsis.scss', '2019-11-05 15:16:05'),
(1582, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_font-stacks.scss', '2019-11-05 15:16:05'),
(1583, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_hide-text.scss', '2019-11-05 15:16:05'),
(1584, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_margin.scss', '2019-11-05 15:16:05'),
(1585, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_padding.scss', '2019-11-05 15:16:05'),
(1586, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_position.scss', '2019-11-05 15:16:05'),
(1587, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_prefixer.scss', '2019-11-05 15:16:05'),
(1588, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_retina-image.scss', '2019-11-05 15:16:05'),
(1589, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_size.scss', '2019-11-05 15:16:05'),
(1590, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_text-inputs.scss', '2019-11-05 15:16:05'),
(1591, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_timing-functions.scss', '2019-11-05 15:16:05'),
(1592, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_triangle.scss', '2019-11-05 15:16:05'),
(1593, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/addons/_word-wrap.scss', '2019-11-05 15:16:05'),
(1594, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_animation.scss', '2019-11-05 15:16:05'),
(1595, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_appearance.scss', '2019-11-05 15:16:05'),
(1596, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_backface-visibility.scss', '2019-11-05 15:16:05'),
(1597, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_background-image.scss', '2019-11-05 15:16:05'),
(1598, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_background.scss', '2019-11-05 15:16:05'),
(1599, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_border-image.scss', '2019-11-05 15:16:05'),
(1600, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_calc.scss', '2019-11-05 15:16:05'),
(1601, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_columns.scss', '2019-11-05 15:16:05'),
(1602, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_filter.scss', '2019-11-05 15:16:05'),
(1603, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_flex-box.scss', '2019-11-05 15:16:05'),
(1604, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_font-face.scss', '2019-11-05 15:16:05'),
(1605, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_font-feature-settings.scss', '2019-11-05 15:16:05'),
(1606, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_hidpi-media-query.scss', '2019-11-05 15:16:05'),
(1607, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_hyphens.scss', '2019-11-05 15:16:05'),
(1608, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_image-rendering.scss', '2019-11-05 15:16:05'),
(1609, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_keyframes.scss', '2019-11-05 15:16:05'),
(1610, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_linear-gradient.scss', '2019-11-05 15:16:05'),
(1611, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_perspective.scss', '2019-11-05 15:16:05'),
(1612, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_placeholder.scss', '2019-11-05 15:16:05'),
(1613, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_radial-gradient.scss', '2019-11-05 15:16:05'),
(1614, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_selection.scss', '2019-11-05 15:16:05'),
(1615, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_text-decoration.scss', '2019-11-05 15:16:05'),
(1616, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_transform.scss', '2019-11-05 15:16:05'),
(1617, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_transition.scss', '2019-11-05 15:16:05'),
(1618, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/css3/_user-select.scss', '2019-11-05 15:16:05'),
(1619, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_assign-inputs.scss', '2019-11-05 15:16:05'),
(1620, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_contains-falsy.scss', '2019-11-05 15:16:05'),
(1621, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_contains.scss', '2019-11-05 15:16:05'),
(1622, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_is-length.scss', '2019-11-05 15:16:05'),
(1623, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_is-light.scss', '2019-11-05 15:16:05'),
(1624, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_is-number.scss', '2019-11-05 15:16:05'),
(1625, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_is-size.scss', '2019-11-05 15:16:05'),
(1626, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_modular-scale.scss', '2019-11-05 15:16:05'),
(1627, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_px-to-em.scss', '2019-11-05 15:16:05'),
(1628, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_px-to-rem.scss', '2019-11-05 15:16:05'),
(1629, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_shade.scss', '2019-11-05 15:16:05'),
(1630, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_strip-units.scss', '2019-11-05 15:16:05'),
(1631, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_tint.scss', '2019-11-05 15:16:05'),
(1632, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_transition-property-name.scss', '2019-11-05 15:16:05'),
(1633, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/functions/_unpack.scss', '2019-11-05 15:16:05'),
(1634, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_convert-units.scss', '2019-11-05 15:16:05'),
(1635, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_directional-values.scss', '2019-11-05 15:16:05'),
(1636, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_font-source-declaration.scss', '2019-11-05 15:16:05'),
(1637, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_gradient-positions-parser.scss', '2019-11-05 15:16:05'),
(1638, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_linear-angle-parser.scss', '2019-11-05 15:16:05'),
(1639, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_linear-gradient-parser.scss', '2019-11-05 15:16:05'),
(1640, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_linear-positions-parser.scss', '2019-11-05 15:16:05'),
(1641, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_linear-side-corner-parser.scss', '2019-11-05 15:16:05'),
(1642, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_radial-arg-parser.scss', '2019-11-05 15:16:05'),
(1643, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_radial-gradient-parser.scss', '2019-11-05 15:16:05'),
(1644, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_radial-positions-parser.scss', '2019-11-05 15:16:05'),
(1645, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_render-gradients.scss', '2019-11-05 15:16:05'),
(1646, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_shape-size-stripper.scss', '2019-11-05 15:16:05'),
(1647, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/helpers/_str-to-num.scss', '2019-11-05 15:16:05'),
(1648, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/settings/_asset-pipeline.scss', '2019-11-05 15:16:05'),
(1649, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/settings/_prefixer.scss', '2019-11-05 15:16:05'),
(1650, 1, 'catalog/view/theme/so-ladaz/sass/bourbon/settings/_px-to-em.scss', '2019-11-05 15:16:05'),
(1651, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_alert.scss', '2019-11-05 15:16:06'),
(1652, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_background-variant.scss', '2019-11-05 15:16:06'),
(1653, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_badge.scss', '2019-11-05 15:16:06'),
(1654, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_border-radius.scss', '2019-11-05 15:16:06'),
(1655, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_box-shadow.scss', '2019-11-05 15:16:06'),
(1656, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_breakpoints.scss', '2019-11-05 15:16:06'),
(1657, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_buttons.scss', '2019-11-05 15:16:06'),
(1658, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_clearfix.scss', '2019-11-05 15:16:06'),
(1659, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_float.scss', '2019-11-05 15:16:06'),
(1660, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_forms.scss', '2019-11-05 15:16:06'),
(1661, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_gradients.scss', '2019-11-05 15:16:06'),
(1662, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_grid-framework.scss', '2019-11-05 15:16:06'),
(1663, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_grid.scss', '2019-11-05 15:16:06');
INSERT INTO `tbl_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1664, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_hover.scss', '2019-11-05 15:16:06'),
(1665, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_image.scss', '2019-11-05 15:16:06'),
(1666, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_list-group.scss', '2019-11-05 15:16:06'),
(1667, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_lists.scss', '2019-11-05 15:16:06'),
(1668, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_nav-divider.scss', '2019-11-05 15:16:06'),
(1669, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_navbar-align.scss', '2019-11-05 15:16:06'),
(1670, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_pagination.scss', '2019-11-05 15:16:06'),
(1671, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_reset-text.scss', '2019-11-05 15:16:06'),
(1672, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_resize.scss', '2019-11-05 15:16:06'),
(1673, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_screen-reader.scss', '2019-11-05 15:16:06'),
(1674, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_size.scss', '2019-11-05 15:16:06'),
(1675, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_table-row.scss', '2019-11-05 15:16:06'),
(1676, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_text-emphasis.scss', '2019-11-05 15:16:06'),
(1677, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_text-hide.scss', '2019-11-05 15:16:06'),
(1678, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_text-truncate.scss', '2019-11-05 15:16:06'),
(1679, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_transition.scss', '2019-11-05 15:16:06'),
(1680, 1, 'catalog/view/theme/so-ladaz/sass/typo/mixins/_visibility.scss', '2019-11-05 15:16:06'),
(1681, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_align.scss', '2019-11-05 15:16:06'),
(1682, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_background.scss', '2019-11-05 15:16:06'),
(1683, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_borders.scss', '2019-11-05 15:16:06'),
(1684, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_clearfix.scss', '2019-11-05 15:16:06'),
(1685, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_display.scss', '2019-11-05 15:16:06'),
(1686, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_embed.scss', '2019-11-05 15:16:06'),
(1687, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_flex.scss', '2019-11-05 15:16:06'),
(1688, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_float.scss', '2019-11-05 15:16:06'),
(1689, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_position.scss', '2019-11-05 15:16:06'),
(1690, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_screenreaders.scss', '2019-11-05 15:16:06'),
(1691, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_sizing.scss', '2019-11-05 15:16:06'),
(1692, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_spacing.scss', '2019-11-05 15:16:06'),
(1693, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_text.scss', '2019-11-05 15:16:06'),
(1694, 1, 'catalog/view/theme/so-ladaz/sass/typo/utilities/_visibility.scss', '2019-11-05 15:16:06'),
(1695, 1, 'catalog/view/theme/so-ladaz/template/extension/captcha/basic.twig', '2019-11-05 15:16:06'),
(1696, 1, 'catalog/view/theme/so-ladaz/template/extension/captcha/google.twig', '2019-11-05 15:16:06'),
(1697, 1, 'catalog/view/theme/so-ladaz/template/extension/credit_card/sagepay_direct_form.twig', '2019-11-05 15:16:06'),
(1698, 1, 'catalog/view/theme/so-ladaz/template/extension/credit_card/sagepay_direct_list.twig', '2019-11-05 15:16:06'),
(1699, 1, 'catalog/view/theme/so-ladaz/template/extension/credit_card/sagepay_server_list.twig', '2019-11-05 15:16:06'),
(1700, 1, 'catalog/view/theme/so-ladaz/template/extension/module/account.twig', '2019-11-05 15:16:06'),
(1701, 1, 'catalog/view/theme/so-ladaz/template/extension/module/bestseller.twig', '2019-11-05 15:16:06'),
(1702, 1, 'catalog/view/theme/so-ladaz/template/extension/module/category.twig', '2019-11-05 15:16:06'),
(1703, 1, 'catalog/view/theme/so-ladaz/template/extension/module/featured.twig', '2019-11-05 15:16:06'),
(1704, 1, 'catalog/view/theme/so-ladaz/template/extension/module/latest.twig', '2019-11-05 15:16:06'),
(1705, 1, 'catalog/view/theme/so-ladaz/template/extension/module/slideshow.twig', '2019-11-05 15:16:06'),
(1706, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_basic_products', '2019-11-05 15:16:06'),
(1707, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_latest_blog', '2019-11-05 15:16:06'),
(1708, 1, 'catalog/view/theme/so-ladaz/template/extension/module/special.twig', '2019-11-05 15:16:06'),
(1709, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/amazon_login_pay_address.twig', '2019-11-05 15:16:06'),
(1710, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/amazon_login_pay_confirm.twig', '2019-11-05 15:16:06'),
(1711, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/amazon_login_pay_failure.twig', '2019-11-05 15:16:06'),
(1712, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/amazon_login_pay_payment.twig', '2019-11-05 15:16:06'),
(1713, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/authorizenet_aim.twig', '2019-11-05 15:16:06'),
(1714, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/authorizenet_sim.twig', '2019-11-05 15:16:06'),
(1715, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/bank_transfer.twig', '2019-11-05 15:16:06'),
(1716, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/bluepay_hosted.twig', '2019-11-05 15:16:06'),
(1717, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/bluepay_redirect.twig', '2019-11-05 15:16:06'),
(1718, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/cardconnect.twig', '2019-11-05 15:16:06'),
(1719, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/cardinity.twig', '2019-11-05 15:16:06'),
(1720, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/cardinity_3ds.twig', '2019-11-05 15:16:06'),
(1721, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/cheque.twig', '2019-11-05 15:16:06'),
(1722, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/cod.twig', '2019-11-05 15:16:06'),
(1723, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/divido.twig', '2019-11-05 15:16:06'),
(1724, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/divido_calculator.twig', '2019-11-05 15:16:06'),
(1725, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/divido_widget.twig', '2019-11-05 15:16:06'),
(1726, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/eway.twig', '2019-11-05 15:16:06'),
(1727, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/eway_iframe.twig', '2019-11-05 15:16:06'),
(1728, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/firstdata.twig', '2019-11-05 15:16:06'),
(1729, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/firstdata_remote.twig', '2019-11-05 15:16:06'),
(1730, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/free_checkout.twig', '2019-11-05 15:16:06'),
(1731, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/g2apay.twig', '2019-11-05 15:16:06'),
(1732, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/globalpay.twig', '2019-11-05 15:16:06'),
(1733, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/globalpay_remote.twig', '2019-11-05 15:16:06'),
(1734, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/globalpay_response.twig', '2019-11-05 15:16:06'),
(1735, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/klarna_account.twig', '2019-11-05 15:16:06'),
(1736, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/klarna_checkout.twig', '2019-11-05 15:16:06'),
(1737, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/klarna_checkout_main.twig', '2019-11-05 15:16:06'),
(1738, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/klarna_checkout_sidebar.twig', '2019-11-05 15:16:06'),
(1739, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/klarna_checkout_success.twig', '2019-11-05 15:16:06'),
(1740, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/klarna_invoice.twig', '2019-11-05 15:16:06'),
(1741, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/laybuy.twig', '2019-11-05 15:16:06'),
(1742, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/liqpay.twig', '2019-11-05 15:16:06'),
(1743, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/nochex.twig', '2019-11-05 15:16:06'),
(1744, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/paymate.twig', '2019-11-05 15:16:06'),
(1745, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/paypoint.twig', '2019-11-05 15:16:06'),
(1746, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/paypoint_failure.twig', '2019-11-05 15:16:06'),
(1747, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/paypoint_success.twig', '2019-11-05 15:16:06'),
(1748, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/payza.twig', '2019-11-05 15:16:06'),
(1749, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/perpetual_payments.twig', '2019-11-05 15:16:06'),
(1750, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pilibaba.twig', '2019-11-05 15:16:06'),
(1751, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_braintree.twig', '2019-11-05 15:16:06'),
(1752, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_braintree_confirm.twig', '2019-11-05 15:16:06'),
(1753, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_express.twig', '2019-11-05 15:16:06'),
(1754, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_express_confirm.twig', '2019-11-05 15:16:06'),
(1755, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_payflow.twig', '2019-11-05 15:16:06'),
(1756, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_payflow_iframe.twig', '2019-11-05 15:16:06'),
(1757, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_payflow_iframe_return.twig', '2019-11-05 15:16:06'),
(1758, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_pro.twig', '2019-11-05 15:16:06'),
(1759, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_pro_iframe.twig', '2019-11-05 15:16:06'),
(1760, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_pro_iframe_body.twig', '2019-11-05 15:16:06'),
(1761, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/pp_standard.twig', '2019-11-05 15:16:06'),
(1762, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/realex.twig', '2019-11-05 15:16:06'),
(1763, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/realex_remote.twig', '2019-11-05 15:16:06'),
(1764, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/realex_response.twig', '2019-11-05 15:16:06'),
(1765, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/sagepay_direct.twig', '2019-11-05 15:16:06'),
(1766, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/sagepay_server.twig', '2019-11-05 15:16:06'),
(1767, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/sagepay_us.twig', '2019-11-05 15:16:06'),
(1768, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/securetrading_pp.twig', '2019-11-05 15:16:06'),
(1769, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/securetrading_ws.twig', '2019-11-05 15:16:06'),
(1770, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/skrill.twig', '2019-11-05 15:16:06'),
(1771, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/twocheckout.twig', '2019-11-05 15:16:06'),
(1772, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/web_payment_software.twig', '2019-11-05 15:16:06'),
(1773, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/worldpay.twig', '2019-11-05 15:16:06'),
(1774, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/worldpay_failure.twig', '2019-11-05 15:16:06'),
(1775, 1, 'catalog/view/theme/so-ladaz/template/extension/payment/worldpay_success.twig', '2019-11-05 15:16:06'),
(1776, 1, 'catalog/view/theme/so-ladaz/template/extension/recurring/pp_express.twig', '2019-11-05 15:16:06'),
(1777, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article.twig', '2019-11-05 15:16:06'),
(1778, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_comment.twig', '2019-11-05 15:16:06'),
(1779, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info', '2019-11-05 15:16:06'),
(1780, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info.twig', '2019-11-05 15:16:06'),
(1781, 1, 'catalog/view/theme/so-ladaz/template/extension/total/coupon.twig', '2019-11-05 15:16:06'),
(1782, 1, 'catalog/view/theme/so-ladaz/template/extension/total/reward.twig', '2019-11-05 15:16:06'),
(1783, 1, 'catalog/view/theme/so-ladaz/template/extension/total/shipping.twig', '2019-11-05 15:16:06'),
(1784, 1, 'catalog/view/theme/so-ladaz/template/extension/total/voucher.twig', '2019-11-05 15:16:06'),
(1785, 1, 'catalog/view/theme/so-ladaz/template/product/gallery/gallery-bottom.twig', '2019-11-05 15:16:06'),
(1786, 1, 'catalog/view/theme/so-ladaz/template/product/gallery/gallery-grid.twig', '2019-11-05 15:16:06'),
(1787, 1, 'catalog/view/theme/so-ladaz/template/product/gallery/gallery-left.twig', '2019-11-05 15:16:06'),
(1788, 1, 'catalog/view/theme/so-ladaz/template/product/gallery/gallery-list.twig', '2019-11-05 15:16:06'),
(1789, 1, 'catalog/view/theme/so-ladaz/template/product/gallery/gallery-slider.twig', '2019-11-05 15:16:06'),
(1790, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/css', '2019-11-05 15:16:06'),
(1791, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images', '2019-11-05 15:16:06'),
(1792, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/index.html', '2019-11-05 15:16:06'),
(1793, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/js', '2019-11-05 15:16:06'),
(1794, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/css', '2019-11-05 15:16:06'),
(1795, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/js', '2019-11-05 15:16:06'),
(1796, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/font', '2019-11-05 15:16:06'),
(1797, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang', '2019-11-05 15:16:06'),
(1798, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/opencart.js', '2019-11-05 15:16:06'),
(1799, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/plugin', '2019-11-05 15:16:06'),
(1800, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/summernote-image-attributes.js', '2019-11-05 15:16:06'),
(1801, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/summernote.css', '2019-11-05 15:16:06'),
(1802, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/summernote.js', '2019-11-05 15:16:06'),
(1803, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/summernote.min.js', '2019-11-05 15:16:06'),
(1804, 1, 'admin/view/template/extension/soconfig/class/minify/css/CSS.php', '2019-11-05 15:16:06'),
(1805, 1, 'admin/view/template/extension/soconfig/class/minify/css/Converter.php', '2019-11-05 15:16:06'),
(1806, 1, 'admin/view/template/extension/soconfig/class/minify/css/Minify.php', '2019-11-05 15:16:06'),
(1807, 1, 'admin/view/template/extension/soconfig/class/scssphp/bin/pscss', '2019-11-05 15:16:06'),
(1808, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Base', '2019-11-05 15:16:06'),
(1809, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Block.php', '2019-11-05 15:16:06'),
(1810, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Colors.php', '2019-11-05 15:16:06'),
(1811, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Compiler', '2019-11-05 15:16:06'),
(1812, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Compiler.php', '2019-11-05 15:16:06'),
(1813, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Exception', '2019-11-05 15:16:06'),
(1814, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter', '2019-11-05 15:16:06'),
(1815, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter.php', '2019-11-05 15:16:06'),
(1816, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Node', '2019-11-05 15:16:06'),
(1817, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Node.php', '2019-11-05 15:16:06'),
(1818, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Parser.php', '2019-11-05 15:16:06'),
(1819, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Server.php', '2019-11-05 15:16:06'),
(1820, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Type.php', '2019-11-05 15:16:06'),
(1821, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Util.php', '2019-11-05 15:16:06'),
(1822, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Version.php', '2019-11-05 15:16:06'),
(1823, 1, 'catalog/view/theme/default/template/extension/module/so_basic_products/default.twig', '2019-11-05 15:16:06'),
(1824, 1, 'catalog/view/theme/default/template/extension/module/so_basic_products/layout_acc_vertical.twig', '2019-11-05 15:16:06'),
(1825, 1, 'catalog/view/theme/default/template/extension/module/so_basic_products/layout_default.twig', '2019-11-05 15:16:06'),
(1826, 1, 'catalog/view/theme/default/template/extension/module/so_html_content/default.twig', '2019-11-05 15:16:06'),
(1827, 1, 'catalog/view/theme/default/template/extension/module/so_latest_blog/default.twig', '2019-11-05 15:16:06'),
(1828, 1, 'catalog/view/theme/default/template/extension/module/so_latest_blog/default_items.twig', '2019-11-05 15:16:06'),
(1829, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_basic_products/default.twig', '2019-11-05 15:16:06'),
(1830, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_basic_products/layout_acc_vertical.twig', '2019-11-05 15:16:06'),
(1831, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_basic_products/layout_default.twig', '2019-11-05 15:16:06'),
(1832, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_latest_blog/default.twig', '2019-11-05 15:16:06'),
(1833, 1, 'catalog/view/theme/so-ladaz/template/extension/module/so_latest_blog/default_items.twig', '2019-11-05 15:16:06'),
(1834, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info/default.twig', '2019-11-05 15:16:06'),
(1835, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info/style1.twig', '2019-11-05 15:16:06'),
(1836, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info/style2.twig', '2019-11-05 15:16:06'),
(1837, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info/style3.twig', '2019-11-05 15:16:06'),
(1838, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info/style4.twig', '2019-11-05 15:16:06'),
(1839, 1, 'catalog/view/theme/so-ladaz/template/extension/simple_blog/article_info/style5.twig', '2019-11-05 15:16:06'),
(1840, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/css/colorpicker.css', '2019-11-05 15:16:06'),
(1841, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/blank.gif', '2019-11-05 15:16:06'),
(1842, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_background.png', '2019-11-05 15:16:06'),
(1843, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_hex.png', '2019-11-05 15:16:06'),
(1844, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_hsb_b.png', '2019-11-05 15:16:06'),
(1845, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_hsb_h.png', '2019-11-05 15:16:06'),
(1846, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_hsb_s.png', '2019-11-05 15:16:06'),
(1847, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_indic.gif', '2019-11-05 15:16:06'),
(1848, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_overlay.png', '2019-11-05 15:16:06'),
(1849, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_rgb_b.png', '2019-11-05 15:16:06'),
(1850, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_rgb_g.png', '2019-11-05 15:16:06'),
(1851, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_rgb_r.png', '2019-11-05 15:16:06'),
(1852, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_select.gif', '2019-11-05 15:16:06'),
(1853, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/colorpicker_submit.png', '2019-11-05 15:16:06'),
(1854, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_background.png', '2019-11-05 15:16:06'),
(1855, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_hex.png', '2019-11-05 15:16:06'),
(1856, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_hsb_b.png', '2019-11-05 15:16:06'),
(1857, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_hsb_h.png', '2019-11-05 15:16:06'),
(1858, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_hsb_s.png', '2019-11-05 15:16:06'),
(1859, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_indic.gif', '2019-11-05 15:16:06'),
(1860, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_rgb_b.png', '2019-11-05 15:16:06'),
(1861, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_rgb_g.png', '2019-11-05 15:16:06'),
(1862, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_rgb_r.png', '2019-11-05 15:16:06'),
(1863, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/custom_submit.png', '2019-11-05 15:16:06'),
(1864, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/select.png', '2019-11-05 15:16:06'),
(1865, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/select2.png', '2019-11-05 15:16:06'),
(1866, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/images/slider.png', '2019-11-05 15:16:06'),
(1867, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/js/colorpicker.js', '2019-11-05 15:16:06'),
(1868, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/js/eye.js', '2019-11-05 15:16:06'),
(1869, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/js/jquery.js', '2019-11-05 15:16:06'),
(1870, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/js/layout.js', '2019-11-05 15:16:06'),
(1871, 1, 'admin/view/template/extension/soconfig/asset/plugin/bs-colorpicker/js/utils.js', '2019-11-05 15:16:06'),
(1872, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/css/select2.css', '2019-11-05 15:16:06'),
(1873, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/css/select2.min.css', '2019-11-05 15:16:06'),
(1874, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/js/select2.full.js', '2019-11-05 15:16:06'),
(1875, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/js/select2.full.min.js', '2019-11-05 15:16:06'),
(1876, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/js/select2.js', '2019-11-05 15:16:06'),
(1877, 1, 'admin/view/template/extension/soconfig/asset/plugin/select2/js/select2.min.js', '2019-11-05 15:16:06'),
(1878, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/font/summernote.eot', '2019-11-05 15:16:06'),
(1879, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/font/summernote.ttf', '2019-11-05 15:16:06'),
(1880, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/font/summernote.woff', '2019-11-05 15:16:06'),
(1881, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-ar-AR.js', '2019-11-05 15:16:06'),
(1882, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-bg-BG.js', '2019-11-05 15:16:06'),
(1883, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-ca-ES.js', '2019-11-05 15:16:06'),
(1884, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-cs-CZ.js', '2019-11-05 15:16:06'),
(1885, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-da-DK.js', '2019-11-05 15:16:06'),
(1886, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-de-DE.js', '2019-11-05 15:16:06'),
(1887, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-es-ES.js', '2019-11-05 15:16:06'),
(1888, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-es-EU.js', '2019-11-05 15:16:06'),
(1889, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-fa-IR.js', '2019-11-05 15:16:06'),
(1890, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-fi-FI.js', '2019-11-05 15:16:06'),
(1891, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-fr-FR.js', '2019-11-05 15:16:06'),
(1892, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-he-IL.js', '2019-11-05 15:16:06'),
(1893, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-hu-HU.js', '2019-11-05 15:16:06'),
(1894, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-id-ID.js', '2019-11-05 15:16:06'),
(1895, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-it-IT.js', '2019-11-05 15:16:06'),
(1896, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-ja-JP.js', '2019-11-05 15:16:06'),
(1897, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-ko-KR.js', '2019-11-05 15:16:06'),
(1898, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-lt-LT.js', '2019-11-05 15:16:06'),
(1899, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-nb-NO.js', '2019-11-05 15:16:06'),
(1900, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-nl-NL.js', '2019-11-05 15:16:06'),
(1901, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-pl-PL.js', '2019-11-05 15:16:06'),
(1902, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-pt-BR.js', '2019-11-05 15:16:06'),
(1903, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-pt-PT.js', '2019-11-05 15:16:06'),
(1904, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-ro-RO.js', '2019-11-05 15:16:06'),
(1905, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-ru-RU.js', '2019-11-05 15:16:06'),
(1906, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-sk-SK.js', '2019-11-05 15:16:06'),
(1907, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-sl-SI.js', '2019-11-05 15:16:06'),
(1908, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-sr-RS-Latin.js', '2019-11-05 15:16:06'),
(1909, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-sr-RS.js', '2019-11-05 15:16:06'),
(1910, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-sv-SE.js', '2019-11-05 15:16:06'),
(1911, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-th-TH.js', '2019-11-05 15:16:06'),
(1912, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-tr-TR.js', '2019-11-05 15:16:06'),
(1913, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-uk-UA.js', '2019-11-05 15:16:06'),
(1914, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-vi-VN.js', '2019-11-05 15:16:06'),
(1915, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-zh-CN.js', '2019-11-05 15:16:06'),
(1916, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/lang/summernote-zh-TW.js', '2019-11-05 15:16:06'),
(1917, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/plugin/hello', '2019-11-05 15:16:06'),
(1918, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/plugin/specialchars', '2019-11-05 15:16:06'),
(1919, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Base/Range.php', '2019-11-05 15:16:06'),
(1920, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Compiler/Environment.php', '2019-11-05 15:16:06'),
(1921, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Exception/CompilerException.php', '2019-11-05 15:16:06'),
(1922, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Exception/ParserException.php', '2019-11-05 15:16:06'),
(1923, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Exception/RangeException.php', '2019-11-05 15:16:06'),
(1924, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Exception/ServerException.php', '2019-11-05 15:16:06'),
(1925, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/Compact.php', '2019-11-05 15:16:06'),
(1926, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/Compressed.php', '2019-11-05 15:16:06'),
(1927, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/Crunched.php', '2019-11-05 15:16:06'),
(1928, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/Debug.php', '2019-11-05 15:16:06'),
(1929, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/Expanded.php', '2019-11-05 15:16:06'),
(1930, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/Nested.php', '2019-11-05 15:16:06'),
(1931, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Formatter/OutputBlock.php', '2019-11-05 15:16:06'),
(1932, 1, 'admin/view/template/extension/soconfig/class/scssphp/src/Node/Number.php', '2019-11-05 15:16:06'),
(1933, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/plugin/hello/summernote-ext-hello.js', '2019-11-05 15:16:06'),
(1934, 1, 'admin/view/template/extension/soconfig/asset/plugin/summernote/plugin/specialchars/summernote-ext-specialchars.js', '2019-11-05 15:16:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_filter`
--

CREATE TABLE `tbl_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_filter_description`
--

CREATE TABLE `tbl_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_filter_group`
--

CREATE TABLE `tbl_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_filter_group_description`
--

CREATE TABLE `tbl_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_geo_zone`
--

CREATE TABLE `tbl_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_geo_zone`
--

INSERT INTO `tbl_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_googleshopping_category`
--

CREATE TABLE `tbl_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_googleshopping_product`
--

CREATE TABLE `tbl_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_googleshopping_product`
--

INSERT INTO `tbl_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 51, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 52, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 53, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 54, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 55, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 56, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 57, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 58, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 59, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 60, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 61, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 62, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 63, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 64, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 65, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 66, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 67, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 68, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 69, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 70, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_googleshopping_product_status`
--

CREATE TABLE `tbl_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_googleshopping_product_target`
--

CREATE TABLE `tbl_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_googleshopping_target`
--

CREATE TABLE `tbl_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_information`
--

CREATE TABLE `tbl_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_information`
--

INSERT INTO `tbl_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_information_description`
--

CREATE TABLE `tbl_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_information_description`
--

INSERT INTO `tbl_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_information_to_layout`
--

CREATE TABLE `tbl_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_information_to_store`
--

CREATE TABLE `tbl_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_information_to_store`
--

INSERT INTO `tbl_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_language`
--

CREATE TABLE `tbl_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_language`
--

INSERT INTO `tbl_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_layout`
--

CREATE TABLE `tbl_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_layout`
--

INSERT INTO `tbl_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_layout_module`
--

CREATE TABLE `tbl_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_layout_module`
--

INSERT INTO `tbl_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(4094, 32, 'so_html_content.82', 'column_left', 1),
(4115, 5, 'account', 'column_left', 2),
(4064, 6, 'account', 'column_right', 2),
(4093, 32, 'simple_blog_category.104', 'column_left', 0),
(4083, 1, 'so_html_content.185', 'footer_block2', 0),
(4082, 1, 'so_html_content.81', 'footer_block1', 0),
(4080, 1, 'so_html_content.191', 'content_top', 5),
(4081, 1, 'so_latest_blog.103', 'content_top', 6),
(4079, 1, 'latest.193', 'content_top', 4),
(4078, 1, 'so_html_content.190', 'content_top', 3),
(4076, 1, 'featured.28', 'content_top', 1),
(4074, 1, 'so_html_content.186', 'content_home2', 1),
(4077, 1, 'so_html_content.189', 'content_top', 2),
(4075, 1, 'so_html_content.187', 'content_top', 0),
(4073, 1, 'slideshow.27', 'content_home1', 1),
(4087, 3, 'so_html_content.81', 'footer_block1', 0),
(4065, 6, 'so_html_content.81', 'footer_block1', 0),
(4066, 6, 'so_html_content.185', 'footer_block2', 0),
(4067, 6, 'so_html_content.82', 'footer_block3', 0),
(4088, 3, 'so_html_content.185', 'footer_block2', 0),
(4086, 3, 'so_basic_products.192', 'column_left', 1),
(4085, 3, 'category', 'column_left', 0),
(4084, 1, 'so_html_content.82', 'footer_block3', 0),
(4089, 3, 'so_html_content.82', 'footer_block3', 0),
(4090, 10, 'so_html_content.81', 'footer_block1', 0),
(4091, 10, 'so_html_content.185', 'footer_block2', 0),
(4092, 10, 'so_html_content.82', 'footer_block3', 0),
(4095, 32, 'so_html_content.81', 'footer_block1', 0),
(4096, 32, 'so_html_content.185', 'footer_block2', 0),
(4097, 32, 'so_html_content.82', 'footer_block3', 0),
(4101, 7, 'so_html_content.185', 'footer_block2', 0),
(4100, 7, 'so_html_content.81', 'footer_block1', 0),
(4102, 7, 'so_html_content.82', 'footer_block3', 0),
(4103, 12, 'so_html_content.81', 'footer_block1', 0),
(4104, 12, 'so_html_content.185', 'footer_block2', 0),
(4105, 12, 'so_html_content.82', 'footer_block3', 0),
(4106, 8, 'so_html_content.81', 'footer_block1', 0),
(4107, 8, 'so_html_content.185', 'footer_block2', 0),
(4108, 8, 'so_html_content.82', 'footer_block3', 0),
(4109, 4, 'so_html_content.81', 'footer_block1', 0),
(4110, 4, 'so_html_content.185', 'footer_block2', 0),
(4111, 4, 'so_html_content.82', 'footer_block3', 0),
(4112, 11, 'so_html_content.81', 'footer_block1', 0),
(4113, 11, 'so_html_content.185', 'footer_block2', 0),
(4114, 11, 'so_html_content.82', 'footer_block3', 0),
(4116, 5, 'so_html_content.81', 'footer_block1', 0),
(4117, 5, 'so_html_content.185', 'footer_block2', 0),
(4118, 5, 'so_html_content.82', 'footer_block3', 0),
(4119, 2, 'so_html_content.81', 'footer_block1', 0),
(4120, 2, 'so_html_content.185', 'footer_block2', 0),
(4121, 2, 'so_html_content.82', 'footer_block3', 0),
(4122, 9, 'so_html_content.81', 'footer_block1', 0),
(4123, 9, 'so_html_content.185', 'footer_block2', 0),
(4124, 9, 'so_html_content.82', 'footer_block3', 0),
(4125, 13, 'so_html_content.81', 'footer_block1', 0),
(4126, 13, 'so_html_content.185', 'footer_block2', 0),
(4127, 13, 'so_html_content.82', 'footer_block3', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_layout_route`
--

CREATE TABLE `tbl_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_layout_route`
--

INSERT INTO `tbl_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_length_class`
--

CREATE TABLE `tbl_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_length_class`
--

INSERT INTO `tbl_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_length_class_description`
--

CREATE TABLE `tbl_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_length_class_description`
--

INSERT INTO `tbl_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_manufacturer`
--

CREATE TABLE `tbl_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_manufacturer_to_store`
--

CREATE TABLE `tbl_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_manufacturer_to_store`
--

INSERT INTO `tbl_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_marketing`
--

CREATE TABLE `tbl_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_modification`
--

CREATE TABLE `tbl_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_modification`
--

INSERT INTO `tbl_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(21, 0, 'So Placeholder', 'ocmod-soplaceholder', 'OpencartWorks', '1.0.0', 'http://www.OpencartWorks.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?> \n<modification> \n <name><![CDATA[So Placeholder]]></name> \n <code>ocmod-soplaceholder</code> \n <version><![CDATA[1.0.0]]></version> \n <author><![CDATA[OpencartWorks]]></author> \n <link>http://www.OpencartWorks.com</link> \n \n<!--========Catalog/controller/product=============--> \n <file path=\"catalog/controller/product/category.php\"> \n <operation> \n <search><![CDATA[$image = $this->model_tool_image->resize(\'placeholder.png\', $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));]]></search> \n <add position=\"replace\"><![CDATA[$image = $this->model_tool_image->resize($placeholder, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));]]></add> \n </operation> \n <operation > \n <search ><![CDATA[// Set the last category breadcrumb]]></search> \n <add position=\"before\"><![CDATA[ \n $placeholder=\'placeholder.png\'; \n if($this->soconfig->get_settings(\'placeholder_status\')){ \n $placeholder = $this->soconfig->get_settings(\'placeholder_img\'); \n }else{ \n $placeholder = \'placeholder.png\'; \n } \n ]]> \n </add> \n </operation> \n <operation > \n <search ><![CDATA[$data[\'thumb\'] = \'\';]]></search> \n <add position=\"replace\"><![CDATA[ \n $data[\'thumb\'] = $this->model_tool_image->resize($placeholder, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_category_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_category_height\')); \n ]]> \n </add> \n </operation> \n <operation > \n <search ><![CDATA[$data[\'categories\'][] ]]></search> \n <add position=\"before\"><![CDATA[ \n if ($result[\'image\']) $image = $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' .$this->config->get(\'config_theme\') . \'_image_category_width\'), $this->config->get(\'theme_\' .$this->config->get(\'config_theme\') . \'_image_category_height\')); \n else $image = $this->model_tool_image->resize($placeholder, $this->config->get(\'theme_\' .$this->config->get(\'config_theme\') . \'_image_category_width\'),$this->config->get( \'theme_\' .$this->config->get(\'config_theme\') . \'_image_category_height\')); \n ]]> \n </add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'categories\'][]]]></search> \n <add position=\"after\"><![CDATA[ \'thumb\' => $image,]]></add> \n </operation> \n \n \n \n </file> \n \n \n</modification> ', 1, '2018-01-04 09:04:09', '2018-03-22 15:32:49'),
(3, 0, 'So ThemeConfig', 'ocmod-soconfig', 'OpenCartWorks', '3.0.0', 'http://www.OpencartWorks.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?> \n<modification> \n <name><![CDATA[So ThemeConfig]]></name> \n <code>ocmod-soconfig</code> \n <version><![CDATA[3.0.0]]></version> \n <author><![CDATA[OpenCartWorks]]></author> \n <link>http://www.OpencartWorks.com</link> \n \n<!--========Catalog/controller/common=============--> \n <file path=\"catalog/controller/common/language.php\"> \n <operation> \n <search ><![CDATA[$data[\'languages\'] = array();]]></search> \n <add position=\"after\"><![CDATA[ \n if (isset($this->request->get[\'lang\']) && $this->request->get[\'lang\'] == \'ar-ar\') { \n $this->session->data[\'language\'] = $this->request->get[\'lang\']; \n $this->response->redirect($this->url->link(\'common/home\')); \n } \n ]]></add> \n </operation> \n </file> \n \n <file path=\"catalog/controller/common/cart.php\"> \n <operation > \n <search ><![CDATA[public function index()]]></search> \n <add position=\"after\" offset=\"2\"><![CDATA[ \n /*======Show Themeconfig=======*/ \n $this->load->language(\'extension/soconfig/cart\'); \n $data[\'objlang\'] = $this->language; \n ]]></add> \n </operation> \n </file> \n \n <file path=\"catalog/controller/common/header.php\"> \n <operation > \n <search ><![CDATA[public function index()]]></search> \n <add position=\"after\"><![CDATA[ \n /*======Show Themeconfig=======*/ \n $data[\'soconfig\'] = $this->soconfig; \n $this->load->language(\'extension/soconfig/compare\'); \n $data[\'objlang\'] = $this->language; \n $data[\'lang_id\'] = $this->config->get(\'config_language_id\'); \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'url_layoutbox\'] = isset($this->request->get[\'layoutbox\']) ? $this->request->get[\'layoutbox\'] : \'\' ; \n $data[\'url_pattern\'] = isset($this->request->get[\'pattern\']) ? $this->request->get[\'pattern\'] : \'\' ; \n $data[\'account_fb\'] = isset($this->request->get[\'account_fb\']) ? $this->request->get[\'account_fb\'] : \'\' ; \n $data[\'compare\'] = $this->url->link(\'product/compare\', \'\', true); \n \n // add position \n $data[\'header_block\'] = $this->load->controller(\'extension/soconfig/header_block\'); \n $data[\'content_home1\'] = $this->load->controller(\'extension/soconfig/content_home1\'); \n $data[\'content_home2\'] = $this->load->controller(\'extension/soconfig/content_home2\'); \n \n // For page specific css \n if (isset($this->request->get[\'route\'])) $data[\'class\'] = str_replace(\'/\', \'-\', $this->request->get[\'route\']); \n else $data[\'class\'] = \'common-home\'; \n \n //Decodes HTML Entities \n $data[\'selector_body\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'selector_body\'), ENT_QUOTES, \'UTF-8\'); \n $data[\'selector_menu\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'selector_menu\'), ENT_QUOTES, \'UTF-8\'); \n $data[\'selector_heading\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'selector_heading\'), ENT_QUOTES, \'UTF-8\'); \n $data[\'mselector_body\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'mselector_body\'), ENT_QUOTES, \'UTF-8\'); \n $data[\'mselector_menu\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'mselector_menu\'), ENT_QUOTES, \'UTF-8\'); \n $data[\'mselector_heading\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'mselector_heading\'), ENT_QUOTES, \'UTF-8\'); \n \n if (!defined (\'OWL_CAROUSEL\')){ \n $this->document->addStyle(\'catalog/view/javascript/soconfig/css/owl.carousel.css\'); \n $this->document->addScript(\'catalog/view/javascript/soconfig/js/owl.carousel.js\'); \n define( \'OWL_CAROUSEL\', 1 ); \n } \n ]]></add> \n </operation> \n </file> \n \n <file path=\"catalog/controller/common/footer.php\"> \n <operation > \n <search ><![CDATA[public function index()]]></search> \n <add position=\"after\"><![CDATA[ \n /*======Show Themeconfig=======*/ \n $data[\'soconfig\'] = $this->soconfig; \n $this->load->language(\'extension/soconfig/compare\'); \n $data[\'objlang\'] = $this->language; \n $data[\'lang_id\'] = $this->config->get(\'config_language_id\'); \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'account_fb\'] = isset($this->request->get[\'account_fb\']) ? $this->request->get[\'account_fb\'] : \'\' ; \n $data[\'compare\'] = $this->url->link(\'product/compare\', \'\', true); \n \n // add position \n $data[\'footer_block1\'] = $this->load->controller(\'extension/soconfig/footer_block1\'); \n $data[\'footer_block2\'] = $this->load->controller(\'extension/soconfig/footer_block2\'); \n $data[\'footer_block3\'] = $this->load->controller(\'extension/soconfig/footer_block3\'); \n \n \n \n ]]></add> \n </operation> \n </file> \n <file path=\"catalog/controller/common/maintenance.php\"> \n <operation > \n <search ><![CDATA[public function index()]]></search> \n <add position=\"after\"><![CDATA[ \n /*======Show Themeconfig=======*/ \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n $data[\'soconfig\'] = $this->soconfig; \n if ($this->request->server[\'HTTPS\']) $server = $this->config->get(\'config_ssl\'); \n else $server = $this->config->get(\'config_url\'); \n $data[\'config_logo\'] = $server.\'image/\'.$this->config->get(\'config_logo\'); \n $data[\'comingsoon_content\'] = html_entity_decode($data[\'soconfig\']->get_settings(\'comingsoon_content\'), ENT_QUOTES, \'UTF-8\'); \n $data[\'content_comingsoon\'] = $this->load->controller(\'extension/soconfig/content_soon\'); \n ]]></add> \n </operation> \n \n </file> \n <file path=\"catalog/controller/common/home.php\"> \n <operation > \n <search ><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search> \n <add position=\"before\"><![CDATA[ \n $data[\'content_home1\'] = $this->load->controller(\'extension/soconfig/content_home1\'); \n $data[\'content_home2\'] = $this->load->controller(\'extension/soconfig/content_home2\'); \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n ]]></add> \n </operation> \n \n </file> \n \n<!-- ==========catalog/controller/product=========--> \n <file path=\"catalog/controller/product/{search,special,manufacturer,category}*.php\"> \n <operation> \n <search ><![CDATA[public function index()]]></search> \n <add position=\"after\"><![CDATA[ \n /*=======Show Themeconfig=======*/ \n $this->load->model(\'extension/soconfig/general\'); \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n $data[\'soconfig\'] = $this->soconfig; \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'our_url\'] = $this->registry->get(\'url\'); \n /*=======url query parameters=======*/ \n $data[\'url_sidebarsticky\'] = isset($this->request->get[\'sidebarsticky\']) ? $this->request->get[\'sidebarsticky\'] : \'\' ; \n $data[\'url_cartinfo\'] = isset($this->request->get[\'cartinfo\']) ? $this->request->get[\'cartinfo\'] : \'\' ; \n $data[\'url_thumbgallery\'] = isset($this->request->get[\'thumbgallery\']) ? $this->request->get[\'thumbgallery\'] : \'\' ; \n $data[\'url_listview\'] = isset($this->request->get[\'listview\']) ? $this->request->get[\'listview\'] : \'\' ; \n $data[\'url_asidePosition\'] = isset($this->request->get[\'asidePosition\']) ? $this->request->get[\'asidePosition\'] : \'\' ; \n $data[\'url_asideType\'] = isset($this->request->get[\'asideType\']) ? $this->request->get[\'asideType\'] : \'\' ; \n $data[\'url_layoutbox\'] = isset($this->request->get[\'layoutbox\']) ? $this->request->get[\'layoutbox\'] : \'\' ; \n ]]></add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'products\'][] = array(]]></search> \n <add position=\"before\"><![CDATA[ \n /*======Image Galleries=======*/ \n $data[\'image_galleries\'] = array(); \n $image_galleries = $this->model_catalog_product->getProductImages($result[\'product_id\']); \n foreach ($image_galleries as $image_gallery) { \n $data[\'image_galleries\'][] = array( \n \'cart\' => $this->model_tool_image->resize($image_gallery[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\')), \n \'thumb\' => $this->model_tool_image->resize($image_gallery[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\')) \n ); \n } \n $data[\'first_gallery\'] = array( \n \'cart\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\')), \n \'thumb\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\')) \n ); \n /*======Check New Label=======*/ \n if ((float)$result[\'special\']) $discount = \'-\'.round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0).\'%\'; \n else $discount = false; \n \n $sold = 0; \n if($this->model_extension_soconfig_general->getUnitsSold($result[\'product_id\'])){ \n $sold = $this->model_extension_soconfig_general->getUnitsSold($result[\'product_id\']); \n } \n \n $data[\'orders\'] = sprintf($this->language->get(\'text_product_orders\'),$sold); \n $data[\'reviews\'] = sprintf($this->language->get(\'text_reviews\'), (int)$result[\'reviews\']); \n ]]></add> \n </operation> \n \n <operation> \n <search><![CDATA[$data[\'products\'][] = array]]></search> \n <add position=\"after\" trim=\"true\" offset=\"2\"><![CDATA[ \n \'special_end_date\' => $this->model_extension_soconfig_general->getDateEnd($result[\'product_id\']), \n \'image_galleries\' => $data[\'image_galleries\'], \n \'first_gallery\' => $data[\'first_gallery\'], \n \'discount\' => $discount, \n \'stock_status\' => $result[\'stock_status\'], \n \'orders\' => $data[\'orders\'], \n \'reviews\' => $data[\'reviews\'], \n \'href_quickview\' => htmlspecialchars_decode($this->url->link(\'extension/soconfig/quickview&product_id=\'.$result[\'product_id\'] )), \n \'quantity\' => $result[\'quantity\'],]]></add> \n </operation> \n \n </file> \n \n <file path=\"catalog/controller/product/manufacturer.php\"> \n <operation> \n <search ><![CDATA[public function info()]]></search> \n <add position=\"after\"><![CDATA[ \n /*=======Show Themeconfig=======*/ \n $this->load->model(\'extension/soconfig/general\'); \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n $data[\'soconfig\'] = $this->soconfig; \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'our_url\'] = $this->registry->get(\'url\'); \n ]]></add> \n </operation> \n </file> \n <file path=\"catalog/controller/product/product.php\"> \n <operation> \n <search ><![CDATA[public function index()]]></search> \n <add position=\"after\"><![CDATA[ \n /*=======Show Themeconfig=======*/ \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n $data[\'soconfig\'] = $this->soconfig; \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'our_url\'] = $this->registry->get(\'url\'); \n $direction = $this->language->get(\'direction\'); \n $data[\'direction\'] = $this->language->get(\'direction\') == \'rtl\' ? \'yes\' : \'no\' ; \n /*=======url query parameters=======*/ \n $data[\'url_sidebarsticky\'] = isset($this->request->get[\'sidebarsticky\']) ? $this->request->get[\'sidebarsticky\'] : \'\' ; \n $data[\'url_productGallery\'] = isset($this->request->get[\'productGallery\']) ? $this->request->get[\'productGallery\'] : \'\' ; \n $data[\'url_asidePosition\'] = isset($this->request->get[\'asidePosition\']) ? $this->request->get[\'asidePosition\'] : \'\' ; \n $data[\'url_asideType\'] = isset($this->request->get[\'asideType\']) ? $this->request->get[\'asideType\'] : \'\' ; \n ]]></add> \n </operation> \n <operation error=\"skip\"> \n <search ><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js\');]]></search> \n <add position=\"replace\"><![CDATA[ \n $this->document->addScript(\'catalog/view/javascript/soconfig/js/jquery.elevateZoom-3.0.8.min.js\'); \n $this->document->addScript(\'catalog/view/javascript/soconfig/js/jquery.sticky-kit.min.js\'); \n $this->document->addScript(\'catalog/view/javascript/soconfig/js/lightslider.js\'); \n ]]></add> \n </operation> \n \n <operation error=\"skip\"> \n <search ><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/magnific/magnific-popup.css\');]]></search> \n <add position=\"replace\"><![CDATA[$this->document->addStyle(\'catalog/view/javascript/soconfig/css/lightslider.css\');]]></add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'description\'] = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');]]></search> \n <add position=\"after\"><![CDATA[ \n //custom code \n $this->load->model(\'extension/soconfig/general\'); \n $data[\'special_end_date\'] = $this->model_extension_soconfig_general->getDateEnd($product_id); \n $limit = 250; \n $full_description = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\'); \n $product_description_short = (strlen($full_description) > $limit ? utf8_substr($full_description, 0, $limit) . \'...\' : $full_description); \n $data[\'description_short\'] = strip_tags($product_description_short); \n \n ]]></add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'options\'] = array();]]></search> \n <add position=\"before\"><![CDATA[ \n if ((float)$product_info[\'special\']) $data[\'discount\'] = \'-\'.round((($product_info[\'price\'] - $product_info[\'special\'])/$product_info[\'price\'])*100, 0).\'%\'; \n else $data[\'discount\'] = false; \n /*======Check New Label=======*/ \n $sold = 0; \n if($this->model_extension_soconfig_general->getUnitsSold($product_info[\'product_id\'])){ \n $sold = $this->model_extension_soconfig_general->getUnitsSold($product_info[\'product_id\']); \n } \n \n $data[\'orders\'] = sprintf($this->language->get(\'text_product_orders\'),$sold); \n /*====== insert image to the beginning of array=======*/ \n $firstimg = array(\'popup\' => $data[\'popup\'],\'thumb\' => $data[\'thumb\']); \n array_unshift($data[\'images\'], $firstimg); \n \n ]]></add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'products\'][] = array(]]></search> \n <add position=\"before\"><![CDATA[ \n if ((float)$result[\'special\']) $discount = \'-\'.round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0).\'%\'; \n else $discount = false; \n ]]></add> \n </operation> \n <operation> \n <search><![CDATA[$data[\'products\'][] = array]]></search> \n <add position=\"after\" trim=\"true\" offset=\"2\"><![CDATA[ \n \'special_end_date\' => $this->model_extension_soconfig_general->getDateEnd($result[\'product_id\']), \n \'discount\' => $discount,]]></add> \n </operation> \n <operation> \n <search><![CDATA[$data[\'images\'] = array()]]></search> \n <add position=\"before\" trim=\"true\" ><![CDATA[ \n if ($product_info[\'image\']) { \n $data[\'popup\'] = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\')); \n } else { \n $data[\'popup\'] = $this->model_tool_image->resize(\'placeholder.png\', $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\')); \n } \n \n if ($product_info[\'image\']) { \n $data[\'thumb\'] = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')); \n } else { \n $data[\'thumb\'] = $this->model_tool_image->resize(\'placeholder.png\', $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')); \n }]]> \n </add> \n </operation> \n </file> \n \n <file path=\"catalog/controller/extension/module/{featured}*.php\"> \n <operation> \n <search ><![CDATA[public function index(]]></search> \n <add position=\"after\"><![CDATA[ \n /*=======Show Themeconfig=======*/ \n $this->load->model(\'extension/soconfig/general\'); \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n $data[\'soconfig\'] = $this->soconfig; \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'our_url\'] = $this->registry->get(\'url\'); \n /*=======url query parameters=======*/ \n $data[\'url_sidebarsticky\'] = isset($this->request->get[\'sidebarsticky\']) ? $this->request->get[\'sidebarsticky\'] : \'\' ; \n $data[\'url_cartinfo\'] = isset($this->request->get[\'cartinfo\']) ? $this->request->get[\'cartinfo\'] : \'\' ; \n $data[\'url_thumbgallery\'] = isset($this->request->get[\'thumbgallery\']) ? $this->request->get[\'thumbgallery\'] : \'\' ; \n $data[\'url_listview\'] = isset($this->request->get[\'listview\']) ? $this->request->get[\'listview\'] : \'\' ; \n $data[\'url_asidePosition\'] = isset($this->request->get[\'asidePosition\']) ? $this->request->get[\'asidePosition\'] : \'\' ; \n $data[\'url_asideType\'] = isset($this->request->get[\'asideType\']) ? $this->request->get[\'asideType\'] : \'\' ; \n $data[\'url_layoutbox\'] = isset($this->request->get[\'layoutbox\']) ? $this->request->get[\'layoutbox\'] : \'\' ; \n ]]></add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'products\'][] = array(]]></search> \n <add position=\"before\"><![CDATA[ \n /*======Image Galleries=======*/ \n $data[\'image_galleries\'] = array(); \n $image_galleries = $this->model_catalog_product->getProductImages($product_info[\'product_id\']); \n foreach ($image_galleries as $image_gallery) { \n $data[\'image_galleries\'][] = array( \n \'cart\' => $this->model_tool_image->resize($image_gallery[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\')), \n \'thumb\' => $this->model_tool_image->resize($image_gallery[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\')) \n ); \n } \n $data[\'first_gallery\'] = array( \n \'cart\' => $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\')), \n \'thumb\' => $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\')) \n ); \n /*======Check New Label=======*/ \n if ((float)$product_info[\'special\']) $discount = \'-\'.round((($product_info[\'price\'] - $product_info[\'special\'])/$product_info[\'price\'])*100, 0).\'%\'; \n else $discount = false; \n \n $sold = 0; \n if($this->model_extension_soconfig_general->getUnitsSold($product_info[\'product_id\'])){ \n $sold = $this->model_extension_soconfig_general->getUnitsSold($product_info[\'product_id\']); \n } \n \n $data[\'orders\'] = sprintf($this->language->get(\'text_product_orders\'),$sold); \n $data[\'reviews\'] = sprintf($this->language->get(\'text_reviews\'), (int)$product_info[\'reviews\']); \n ]]></add> \n </operation> \n \n <operation> \n <search><![CDATA[$data[\'products\'][] = array]]></search> \n <add position=\"after\" trim=\"true\" offset=\"2\"><![CDATA[ \n \'special_end_date\' => $this->model_extension_soconfig_general->getDateEnd($product_info[\'product_id\']), \n \'image_galleries\' => $data[\'image_galleries\'], \n \'first_gallery\' => $data[\'first_gallery\'], \n \'discount\' => $discount, \n \'stock_status\' => $product_info[\'stock_status\'], \n \'orders\' => $data[\'orders\'], \n \'reviews\' => $data[\'reviews\'], \n \'href_quickview\' => htmlspecialchars_decode($this->url->link(\'extension/soconfig/quickview&product_id=\'.$product_info[\'product_id\'] )), \n \'quantity\' => $product_info[\'quantity\'],]]></add> \n </operation> \n \n </file> \n \n <file path=\"catalog/controller/extension/module/{bestseller,latest,special}*.php\"> \n <operation> \n <search ><![CDATA[public function index(]]></search> \n <add position=\"after\"><![CDATA[ \n /*=======Show Themeconfig=======*/ \n $this->load->model(\'extension/soconfig/general\'); \n $this->load->language(\'extension/soconfig/soconfig\'); \n $data[\'objlang\'] = $this->language; \n $data[\'soconfig\'] = $this->soconfig; \n $data[\'theme_directory\'] = $this->config->get(\'theme_default_directory\'); \n $data[\'our_url\'] = $this->registry->get(\'url\'); \n /*=======url query parameters=======*/ \n $data[\'url_sidebarsticky\'] = isset($this->request->get[\'sidebarsticky\']) ? $this->request->get[\'sidebarsticky\'] : \'\' ; \n $data[\'url_cartinfo\'] = isset($this->request->get[\'cartinfo\']) ? $this->request->get[\'cartinfo\'] : \'\' ; \n $data[\'url_thumbgallery\'] = isset($this->request->get[\'thumbgallery\']) ? $this->request->get[\'thumbgallery\'] : \'\' ; \n $data[\'url_listview\'] = isset($this->request->get[\'listview\']) ? $this->request->get[\'listview\'] : \'\' ; \n $data[\'url_asidePosition\'] = isset($this->request->get[\'asidePosition\']) ? $this->request->get[\'asidePosition\'] : \'\' ; \n $data[\'url_asideType\'] = isset($this->request->get[\'asideType\']) ? $this->request->get[\'asideType\'] : \'\' ; \n $data[\'url_layoutbox\'] = isset($this->request->get[\'layoutbox\']) ? $this->request->get[\'layoutbox\'] : \'\' ; \n ]]></add> \n </operation> \n \n <operation> \n <search ><![CDATA[$data[\'products\'][] = array(]]></search> \n <add position=\"before\"><![CDATA[ \n /*======Image Galleries=======*/ \n $data[\'image_galleries\'] = array(); \n $image_galleries = $this->model_catalog_product->getProductImages($result[\'product_id\']); \n foreach ($image_galleries as $image_gallery) { \n $data[\'image_galleries\'][] = array( \n \'cart\' => $this->model_tool_image->resize($image_gallery[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\')), \n \'thumb\' => $this->model_tool_image->resize($image_gallery[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\')) \n ); \n } \n $data[\'first_gallery\'] = array( \n \'cart\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_cart_width\')), \n \'thumb\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\')) \n ); \n /*======Check New Label=======*/ \n if ((float)$result[\'special\']) $discount = \'-\'.round((($result[\'price\'] - $result[\'special\'])/$result[\'price\'])*100, 0).\'%\'; \n else $discount = false; \n \n $sold = 0; \n if($this->model_extension_soconfig_general->getUnitsSold($result[\'product_id\'])){ \n $sold = $this->model_extension_soconfig_general->getUnitsSold($result[\'product_id\']); \n } \n \n $data[\'orders\'] = sprintf($this->language->get(\'text_product_orders\'),$sold); \n $data[\'reviews\'] = sprintf($this->language->get(\'text_reviews\'), (int)$result[\'reviews\']); \n ]]></add> \n </operation> \n \n <operation> \n <search><![CDATA[$data[\'products\'][] = array]]></search> \n <add position=\"after\" trim=\"true\" offset=\"2\"><![CDATA[ \n \'special_end_date\' => $this->model_extension_soconfig_general->getDateEnd($result [\'product_id\']), \n \'image_galleries\' => $data[\'image_galleries\'], \n \'first_gallery\' => $data[\'first_gallery\'], \n \'discount\' => $discount, \n \'stock_status\' => $result[\'stock_status\'], \n \'orders\' => $data[\'orders\'], \n \'reviews\' => $data[\'reviews\'], \n \'href_quickview\' => htmlspecialchars_decode($this->url->link(\'extension/soconfig/quickview&product_id=\'.$result[\'product_id\'] )), \n \'quantity\' => $result[\'quantity\'],]]></add> \n </operation> \n \n </file> \n<!-- =======system/engine/router===============--> \n <file path=\"system/engine/router.php\"> \n <operation> \n <search ><![CDATA[while ($action instanceof Action)]]></search> \n <add position=\"before\"><![CDATA[ \n require_once(dirname(DIR_APPLICATION).\'/admin/view/template/extension/soconfig/class/soconfig.php\'); \n $soconfig = new Soconfig($this->registry); \n $this->registry->set(\'soconfig\', $soconfig); \n ]]></add> \n </operation> \n </file> \n \n<!-- ======= Show admin/controller==========--> \n <file path=\"admin/controller/design/layout.php\"> \n <operation > \n <search ><![CDATA[public function index()]]></search> \n <add position=\"before\" offset=\"3\"><![CDATA[require_once (DIR_APPLICATION.\'view/template/extension/soconfig/class/so_field.php\');]]></add> \n </operation> \n <operation > \n <search ><![CDATA[// Modules layout]]></search> \n <add position=\"before\"><![CDATA[ \n /*===== Load CSS & JS ========== */ \n if(!defined(\'DIR_SOCONFIG\')) define(\'DIR_SOCONFIG\',\'view/template/extension/soconfig/\'); \n $this->document->addScript(DIR_SOCONFIG.\'asset/plugin/select2/js/select2.min.js\'); \n $this->document->addStyle(DIR_SOCONFIG.\'asset/plugin/select2/css/select2.min.css\'); \n $fields = new So_Fields($data); \n $data[\'fields\'] = $fields; \n ]]></add> \n </operation> \n <operation > \n <search ><![CDATA[design/layout_form]]></search> \n <add position=\"replace\"><![CDATA[extension/soconfig/layout_form]]></add> \n </operation> \n </file> \n \n</modification> ', 1, '2017-06-22 17:09:33', '2018-04-03 14:50:48'),
(10, 0, 'So Menu - OpenCartWorks', 'ocmod-menu-opencartwork', 'OpencartWorks', '3.0.0', 'http://www.OpencartWorks.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?> \n<modification> \n <name><![CDATA[So Menu - OpenCartWorks]]></name> \n <code>ocmod-menu-opencartwork</code> \n <version><![CDATA[3.0.0]]></version> \n <author><![CDATA[OpencartWorks]]></author> \n <link>http://www.OpencartWorks.com</link> \n \n<!-- ======= Show Menu Opencart For Navigation==========--> \n <file path=\"admin/controller/common/column_left.php\"> \n <operation> \n <search><![CDATA[$design = array();]]></search> \n <add position=\"before\"><![CDATA[ \n $magentech = array(); \n if ($this->user->hasPermission(\'access\', \'extension/module/soconfig\')) { \n $magentech[] = array( \n \'name\' => \'So Themes Config\', \n \'href\' => $this->url->link(\'extension/module/soconfig\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($this->user->hasPermission(\'access\', \'extension/module/so_html_content\')) { \n $magentech[] = array( \n \'name\' => \'So Html Content\', \n \'href\' => $this->url->link(\'extension/module/so_html_content\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n if ($this->user->hasPermission(\'access\', \'extension/module/so_basic_products\')) { \n $magentech[] = array( \n \'name\' => \'So Basic Product\', \n \'href\' => $this->url->link(\'extension/module/so_basic_products\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($this->user->hasPermission(\'access\', \'extension/module/so_latest_blog\')) { \n $magentech[] = array( \n \'name\' => \'So Latest Blog\', \n \'href\' => $this->url->link(\'extension/module/so_latest_blog\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($magentech) { \n $data[\'menus\'][] = array( \n \'id\' => \'menu-magentech\', \n \'icon\' => \'fa-cubes icon-so\', \n \'name\' => \'OpenCartWorks\', \n \'href\' => \'\', \n \'children\' => $magentech \n ); \n } \n \n ]]></add> \n \n </operation> \n </file> \n</modification> ', 1, '2017-09-04 09:04:58', '2018-03-22 15:35:04'),
(18, 0, 'Bug Fixing OC-3.x', 'ocmod-bugfix', 'OpencartWorks', '3.0.0', 'http://www.OpencartWorks.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?> \n<modification> \n <name><![CDATA[Bug Fixing OC-3.x]]></name> \n <code>ocmod-bugfix</code> \n <version><![CDATA[3.0.0]]></version> \n <author><![CDATA[OpencartWorks]]></author> \n <link>http://www.OpencartWorks.com</link> \n \n \n<!--========admin/controller/common=============--> \n<file path=\"admin/controller/design/theme.php\"> \n <operation > \n <search><![CDATA[if ($theme == \'theme_default\')]]></search> \n <add position=\"replace\"><![CDATA[ if ($theme == \'default\')]]></add> \n </operation> \n <operation > \n <search><![CDATA[{default,\' . $theme . \'}]]></search> \n <add position=\"replace\"><![CDATA[{\' . $theme . \'}]]></add> \n </operation> \n</file> \n <!--========Catalog/controller/common=============--> \n <file path=\"catalog/controller/information/contact.php\"> \n <operation > \n <search><![CDATA[$this->load->language(\'information/contact\')]]></search> \n <add position=\"after\"><![CDATA[ \n $data[\'text_message\'] = $this->language->get(\'text_success\'); \n ]]></add> \n </operation> \n </file> \n \n <file path=\"catalog/language/*/common/cart.php\"> \n <operation > \n <search><![CDATA[$_[\'text_empty\']]]></search> \n <add position=\"replace\"><![CDATA[ $_[\'text_empty_cart\'] ]]></add> \n </operation> \n </file> \n \n <file path=\"catalog/view/theme/*/template/common/cart.twig\"> \n <operation > \n <search><![CDATA[text_empty]]></search> \n <add position=\"replace\"><![CDATA[ text_empty_cart ]]></add> \n </operation> \n </file> \n \n</modification> \n ', 1, '2017-10-25 10:35:01', '2017-10-25 10:35:01'),
(19, 0, 'So Product Feature', 'ocmod-productoption', 'OpencartWorks', '1.0.0', 'http://www.OpencartWorks.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?> \n<modification> \n <name><![CDATA[So Product Feature]]></name> \n <code>ocmod-productoption</code> \n <version><![CDATA[1.0.0]]></version> \n <author><![CDATA[OpencartWorks]]></author> \n <link>http://www.OpencartWorks.com</link> \n \n<!--========Catalog/controller/product=============--> \n<file path=\"admin/language/*/catalog/product.php\"> \n <operation> \n <search><![CDATA[// Entry]]></search> \n <add position=\"after\"><![CDATA[ \n // Backend Product Options \n $_[\'tab_feature\'] = \'SO Feature <span class=\"label label-primary\">News</span>\'; \n $_[\'entry_video_link\'] = \'Video youtube link\'; \n $_[\'entry_custom_tab_title\'] = \'Title custom tab \'; \n $_[\'entry_description_custom_tab\'] = \'Description custom tab \'; \n \n ]]></add> \n </operation> \n</file> \n <file path=\"admin/model/catalog/product.php\"> \n <operation> \n <search><![CDATA[$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_description SET product_id = \'\" . (int)$product_id . \"\', language_id = \'\" . (int)$language_id . \"\', name = \'\" . $this->db->escape($value[\'name\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', tag = \'\" . $this->db->escape($value[\'tag\']) . \"\', meta_title = \'\" . $this->db->escape($value[\'meta_title\']) . \"\', meta_description = \'\" . $this->db->escape($value[\'meta_description\']) . \"\', meta_keyword = \'\" . $this->db->escape($value[\'meta_keyword\']) . \"\'\");]]></search> \n <add position=\"replace\"><![CDATA[ \n if ($this->checkProductOptionColumnExist()) { \n $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_description SET product_id = \'\" . (int)$product_id . \"\', language_id = \'\" . (int)$language_id . \"\', name = \'\" . $this->db->escape($value[\'name\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', tag = \'\" . $this->db->escape($value[\'tag\']) . \"\', meta_title = \'\" . $this->db->escape($value[\'meta_title\']) . \"\', meta_description = \'\" . $this->db->escape($value[\'meta_description\']) . \"\', meta_keyword = \'\" . $this->db->escape($value[\'meta_keyword\']) . \"\', video = \'\" . $this->db->escape($value[\'video\']) . \"\', tab_title = \'\" . $this->db->escape($value[\'tab_title\']) . \"\', html_product_tab = \'\" . $this->db->escape($value[\'html_product_tab\']) . \"\'\"); \n } \n else { \n $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_description SET product_id = \'\" . (int)$product_id . \"\', language_id = \'\" . (int)$language_id . \"\', name = \'\" . $this->db->escape($value[\'name\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', tag = \'\" . $this->db->escape($value[\'tag\']) . \"\', meta_title = \'\" . $this->db->escape($value[\'meta_title\']) . \"\', meta_description = \'\" . $this->db->escape($value[\'meta_description\']) . \"\', meta_keyword = \'\" . $this->db->escape($value[\'meta_keyword\']) . \"\'\"); \n } \n ]]></add> \n </operation> \n <operation> \n <search><![CDATA[public function getTotalProductsByTaxClassId($tax_class_id) {]]></search> \n <add position=\"before\"><![CDATA[ \n public function checkProductOptionColumnExist() { \n $sql = \"SHOW COLUMNS FROM \" .DB_PREFIX. \"product_description LIKE \'video\'\"; \n $query = $this->db->query($sql); \n return count($query->rows)>0 ? true : false; \n } \n ]]></add> \n </operation> \n <operation> \n <search><![CDATA[$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"product_description WHERE product_id = \'\" . (int)$product_id . \"\'\");]]></search> \n <add position=\"after\" offset=\"2\"><![CDATA[ \n $product_video = array(); \n $product_tabtitle = array(); \n $product_tabproduct = array(); \n if(isset($result[\'video\']))$product_video = $result[\'video\']; \n if(isset($result[\'tab_title\']))$product_tabtitle = $result[\'tab_title\']; \n if(isset($result[\'html_product_tab\']))$product_tabproduct = $result[\'html_product_tab\']; \n \n ]]></add> \n </operation> \n <operation> \n <search><![CDATA[\'tag\' => $result[\'tag\']]]></search> \n <add position=\"before\" offset=\"2\"><![CDATA[ \n \'video\' => $product_video, \n \'tab_title\' => $product_tabtitle, \n \'html_product_tab\' => $product_tabproduct, \n ]]></add> \n </operation> \n \n \n</file> \n \n<file path=\"admin/controller/catalog/product.php\"> \n <operation> \n <search><![CDATA[$data[\'products\'][] = array]]></search> \n <add position=\"before\" ><![CDATA[ \n $product_video = array(); \n $product_tabtitle = array(); \n if(isset($result[\'video\'])){$product_video = $result[\'video\'];} \n if(isset($result[\'tab_title\'])){$product_tabtitle = $result[\'tab_title\'];} \n ]]></add> \n </operation> \n <operation> \n <search><![CDATA[$data[\'products\'][] = array]]></search> \n <add position=\"after\" offset=\"2\"><![CDATA[\'video\' => $product_video, \n \'tab_title\' => $product_tabtitle,]]></add> \n </operation> \n <operation> \n <search><![CDATA[$data[\'layouts\'] = $this->model_design_layout->getLayouts();]]></search> \n <add position=\"after\"><![CDATA[ \n $checkProductOptionColumn = \"SHOW COLUMNS FROM \" .DB_PREFIX. \"product_description LIKE \'video\'\"; \n $querycheckProductOption = $this->db->query($checkProductOptionColumn); \n $data[\'checkProductOption\']= !empty($querycheckProductOption->rows) ? true : false;]]></add> \n </operation> \n</file> \n<file path=\"admin/view/template/catalog/product_list.twig\"> \n <operation> \n <search><![CDATA[<td class=\"text-left\">{{ product.name }}</td>]]></search> \n <add position=\"replace\"><![CDATA[ \n <td class=\"text-left\">{{ product.name }} {% if product.video or product.tab_title %}<span class=\"label label-primary\">SO Feature</span>{% endif %}</td> \n ]]> \n </add> \n </operation> \n</file> \n<file path=\"admin/view/template/catalog/product_form.twig\"> \n <operation> \n <search><![CDATA[<li class=\"active\"><a href=\"#tab-general\" data-toggle=\"tab\">{{ tab_general }}</a></li>]]></search> \n <add position=\"after\"><![CDATA[{% if checkProductOption %}<li><a href=\"#tab-soproduct\" data-toggle=\"tab\">{{ tab_feature }}</a></li>{% endif %}]]> \n </add> \n </operation> \n <operation> \n <search><![CDATA[ <div class=\"tab-pane\" id=\"tab-data\">]]></search> \n <add position=\"before\"><![CDATA[ \n {% if checkProductOption %} \n <div class=\"tab-pane\" id=\"tab-soproduct\"> \n <ul class=\"nav nav-tabs\" id=\"solanguage\"> \n {% for language in languages %} \n <li><a href=\"#solanguage{{ language.language_id }}\" data-toggle=\"tab\"><img src=\"language/{{ language.code }}/{{ language.code }}.png\" title=\"{{ language.name }}\" /> {{ language.name }}</a></li> \n {% endfor %} \n </ul> \n <div class=\"tab-content\"> \n {% for language in languages %} \n <div class=\"tab-pane\" id=\"solanguage{{ language.language_id }}\"> \n <div class=\"form-group \"> \n <label class=\"col-sm-2 control-label\" for=\"input-video{{ language.language_id }}\"> \n <strong style=\"color:red\">NEW! </strong> \n <span data-toggle=\"tooltip\" title=\"\" data-original-title=\"Enter full video thumbnail link on Product Page\"> {{entry_video_link}} </span> \n <div style=\"font-weight:normal;\"> \n (e.g. https://www.youtube.com/watch?v=Wdtw_A5FDGs) \n </div> \n </label> \n <div class=\"col-sm-10\"> \n \n <input type=\"text\" name=\"product_description[{{ language.language_id }}][video]\" value=\"{{ product_description[language.language_id] ? product_description[language.language_id].video }}\" placeholder=\"{{ entry_video_link }}\" id=\"input-video{{ language.language_id }}\" class=\"form-control\" /> \n \n </div> \n </div> \n \n <div class=\"form-group\"> \n <label class=\"col-sm-2 control-label\" > \n <strong style=\"color:red\">NEW! </strong> \n <span data-toggle=\"tooltip\" title=\"\" data-original-title=\"Enter title for custom tab on Product Page\"> {{entry_custom_tab_title}} </span> \n </label> \n \n <div class=\"col-sm-10\"> \n <input type=\"text\" name=\"product_description[{{ language.language_id }}][tab_title]\" value=\"{{ product_description[language.language_id] ? product_description[language.language_id].tab_title }}\" placeholder=\"{{ entry_custom_tab_title }}\" id=\"input-tab-title{{ language.language_id }}\" class=\"form-control\" /> \n \n </div> \n </div> \n \n <div class=\"form-group\"> \n <label class=\"col-sm-2 control-label\" > \n <strong style=\"color:red\">NEW! </strong> \n <span data-toggle=\"tooltip\" title=\"\" data-original-title=\"Enter any html content for custom tab on Product Page\"> \n {{ entry_description_custom_tab }}</span> \n </label> \n \n <div class=\"col-sm-10\"> \n <textarea name=\"product_description[{{ language.language_id }}][html_product_tab]\" placeholder=\"{{ entry_description }}\" id=\"input-html_product_tab{{ language.language_id }}\" data-toggle=\"summernote\" data-lang=\"{{ summernote }}\" class=\"form-control\">{{ product_description[language.language_id] ? product_description[language.language_id].html_product_tab }}</textarea> \n </div> \n </div> \n \n \n </div> \n {% endfor %} \n </div> \n </div> \n <script type=\"text/javascript\"><!-- \n $(\'#tab-soproduct .nav-tabs > li:first\').tab(\'show\'); \n $(\'#tab-soproduct .tab-content > .tab-pane:first\').addClass(\'active\'); \n --> \n </script> \n {% endif %} \n ]]> \n </add> \n </operation> \n</file> \n \n <file path=\"catalog/controller/product/product.php\"> \n <operation> \n <search ><![CDATA[$data[\'options\'] = array();]]></search> \n <add position=\"before\"><![CDATA[ \n $productoption_info = $this->model_extension_soconfig_general->getProduct($product_id); \n $data[\'product_video\'] = array(); \n $data[\'product_tabtitle\'] = array(); \n $data[\'product_tabcontent\'] = array(); \n if(isset($productoption_info[\'video\'])) $data[\'product_video\'] = $productoption_info[\'video\']; \n if(isset($productoption_info[\'tab_title\'])) $data[\'product_tabtitle\'] = $productoption_info[\'tab_title\']; \n if(isset($productoption_info[\'html_product_tab\'])) $data[\'product_tabcontent\'] = html_entity_decode($productoption_info[\'html_product_tab\'], ENT_QUOTES, \'UTF-8\'); \n ]]></add> \n </operation> \n </file> \n</modification> ', 1, '2018-01-03 15:01:14', '2018-01-03 15:01:14');
INSERT INTO `tbl_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(20, 44, 'Modification Manager', 'modification_manager', 'Opencart-templates', '3.0.4', 'http://www.opencart-templates.co.uk/modification-manager', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n <name>Modification Manager</name>\n <code>modification_manager</code>\n <version>3.0.4</version>\n <author>Opencart-templates</author>\n <link>http://www.opencart-templates.co.uk/modification-manager</link>\n\n <file path=\"admin/language/en-gb/marketplace/modification.php\">\n <operation>\n <search index=\"0\"><![CDATA[<?php]]></search>\n <add position=\"after\"><![CDATA[\n$_[\'tab_error\'] = \'Error\';\n$_[\'tab_files\'] = \'Files\';\n\n$_[\'text_add\'] = \'Add Modification\';\n$_[\'text_edit\'] = \'Edit Modification: %s\';\n\n$_[\'text_enabled\'] = \'Enabled\';\n$_[\'text_disabled\'] = \'Disabled\';\n\n$_[\'entry_author\'] = \'Author\';\n$_[\'entry_name\'] = \'Name\';\n$_[\'entry_xml\'] = \'XML\';\n\n$_[\'button_filter\'] = \'Filter\';\n$_[\'button_reset\'] = \'Reset\';\n$_[\'button_download\'] = \'Download\';\n\n$_[\'column_date_modified\'] = \'Last Modified\';\n\n$_[\'error_warning\'] = \'There has been an error. Please check your data and try again\';\n$_[\'error_required\'] = \'This field is required\';\n$_[\'error_name\'] = \'Missing name tag\';\n$_[\'error_code\'] = \'Missing code tag\';\n$_[\'error_exists\'] = \'Modification \\\'%s\\\' is already using the same code: %s!\';]]></add>\n </operation>\n </file>\n\n <file path=\"admin/controller/marketplace/modification.php\">\n <operation>\n <search index=\"0\"><![CDATA[public function index() {]]></search>\n <add position=\"after\"><![CDATA[ $this->load->model(\'extension/module/modification_manager\');\n\n $this->model_extension_module_modification_manager->install();\n]]></add>\n </operation>\n <operation>\n <search><![CDATA[$this->model_setting_modification]]></search>\n <add position=\"before\"><![CDATA[$this->load->model(\'extension/module/modification_manager\');\n]]></add>\n </operation>\n <operation>\n <search><![CDATA[$this->model_setting_modification->]]></search>\n <add position=\"replace\"><![CDATA[$this->model_extension_module_modification_manager->]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$sort = \'name\';]]></search>\n <add position=\"replace\"><![CDATA[$sort = \'date_modified\';]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$order = \'ASC\';]]></search>\n <add position=\"replace\"><![CDATA[$order = \'DESC\';]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$handle = fopen(DIR_LOGS . \'ocmod.log\', \'w+\');]]></search>\n <add position=\"before\"><![CDATA[ fclose($handle);\n \n $handle = fopen(DIR_LOGS . \'ocmod_error.log\', \'w+\');]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$maintenance = $this->config->get(\'config_maintenance\');]]></search>\n <add position=\"after\"><![CDATA[\n // Clear logs on refresh\n $handle = fopen(DIR_LOGS . \'ocmod.log\', \'w+\');\n fclose($handle);\n\n $handle = fopen(DIR_LOGS . \'ocmod_error.log\', \'w+\');\n fclose($handle);\n]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\n <add position=\"before\"><![CDATA[ $this->load->model(\'extension/module/modification_manager\');\n\n if (isset($this->request->get[\'filter_name\'])) {\n $filter_name = $this->request->get[\'filter_name\'];\n } else {\n $filter_name = null;\n }\n\n if (isset($this->request->get[\'filter_xml\'])) {\n $filter_xml = $this->request->get[\'filter_xml\'];\n } else {\n $filter_xml = null;\n }\n\n if (isset($this->request->get[\'filter_author\'])) {\n $filter_author = $this->request->get[\'filter_author\'];\n } else {\n $filter_author = null;\n }\n\n $url = $this->getListUrlParams();\n\n $data[\'add\'] = $this->url->link(\'marketplace/modification/add\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n $data[\'clear_log\'] = $this->url->link(\'marketplace/modification/clearlog\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n $data[\'filter_action\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n $data[\'reset_url\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n\n $data[\'tab_files\'] = $this->language->get(\'tab_files\');\n $data[\'tab_error\'] = $this->language->get(\'tab_error\');]]></add>\n </operation>\n \n <operation>\n <search index=\"0\"><![CDATA[$data[\'sort_name\'] =]]></search>\n <add position=\"before\"><![CDATA[ if (isset($this->request->get[\'filter_name\'])) {\n $url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($this->request->get[\'filter_author\'])) {\n $url .= \'&filter_author=\' . urlencode(html_entity_decode($this->request->get[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($this->request->get[\'filter_xml\'])) {\n $url .= \'&filter_xml=\' . urlencode(html_entity_decode($this->request->get[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n $data[\'sort_date_modified\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=date_modified\' . $url, true);]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$filter_data = array(]]></search>\n <add position=\"after\"><![CDATA[ \'filter_name\' => $filter_name,\n \'filter_author\' => $filter_author,\n \'filter_xml\' => $filter_xml,]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$data[\'modifications\'][] = array(]]></search>\n <add position=\"after\"><![CDATA[ \'date_modified\' => $result[\'date_modified\'] && $result[\'date_modified\'] != \'0000-00-00 00:00:00\' ? date(date(\'Ymd\') == date(\'Ymd\', strtotime($result[\'date_modified\'])) ? \'G:i\' : $this->language->get(\'date_format_short\'), strtotime($result[\'date_modified\'])) : null,\n \'edit\' => $this->url->link(\'marketplace/modification/edit\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&modification_id=\' . $result[\'modification_id\'] . $url, true),\n \'download\' => $this->url->link(\'marketplace/modification/download\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&modification_id=\' . $result[\'modification_id\'] , true),]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$pagination = new Pagination();]]></search>\n <add position=\"before\"><![CDATA[ if (isset($this->request->get[\'filter_name\'])) {\n $url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($this->request->get[\'filter_author\'])) {\n $url .= \'&filter_author=\' . urlencode(html_entity_decode($this->request->get[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($this->request->get[\'filter_xml\'])) {\n $url .= \'&filter_xml=\' . urlencode(html_entity_decode($this->request->get[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n }]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$data[\'clear_log\'] =]]></search>\n <add position=\"before\"><![CDATA[ $data[\'filter_name\'] = $filter_name;\n $data[\'filter_author\'] = $filter_author;\n $data[\'filter_xml\'] = $filter_xml;\n\n $data[\'modified_files\'] = array();\n\n $modified_files = self::modifiedFiles(DIR_MODIFICATION);\n\n $modification_files = $this->getModificationXmlFiles();\n\n foreach($modified_files as $modified_file) {\n if(isset($modification_files[$modified_file])){\n $modifications = $modification_files[$modified_file];\n } else {\n $modifications = array();\n }\n\n $data[\'modified_files\'][] = array(\n \'file\' => $modified_file,\n \'modifications\' => $modifications\n );\n }\n\n // Error log\n $error_file = DIR_LOGS . \'ocmod_error.log\';\n\n if (file_exists($error_file)) {\n $data[\'error_log\'] = htmlentities(file_get_contents($error_file, FILE_USE_INCLUDE_PATH, null));\n } else {\n $data[\'error_log\'] = \'\';\n }\n ]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$this->load->view(\'marketplace/modification\']]></search>\n <add position=\"replace\"><![CDATA[$this->load->view(\'extension/module/modification_manager/list\']]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$this->response->redirect($this->url->link(!empty($data[\'redirect\']) ? $data[\'redirect\'] : \'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));]]></search>\n <ignoreif position=\"replace\"><![CDATA[if (!empty($data[\'redirect\'])) {]]></ignoreif>\n <add position=\"replace\"><![CDATA[$url = $this->getListUrlParams();\n\n if (!empty($data[\'redirect\'])) {\n $redirect = $data[\'redirect\'];\n } elseif (!empty($this->request->get[\'redirect\'])) {\n $redirect = $this->request->get[\'redirect\'];\n } else {\n $redirect = \'marketplace/modification\';\n }\n\n $this->response->redirect($this->url->link($redirect, \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[if ($this->validate()) {]]></search>\n <add position=\"after\"><![CDATA[ $error_log = array();\n\n // Clear vqmod cache\n $vqmod_path = substr(DIR_SYSTEM, 0, -7) . \'vqmod/\';\n\n if (file_exists($vqmod_path)) {\n $vqmod_cache = glob($vqmod_path.\'vqcache/vq*\');\n\n if ($vqmod_cache) {\n foreach ($vqmod_cache as $file) {\n if (file_exists($file)) {\n @unlink($file);\n }\n }\n }\n\n if (file_exists($vqmod_path.\'mods.cache\')) {\n @unlink($vqmod_path.\'mods.cache\');\n }\n\n if (file_exists($vqmod_path.\'checked.cache\')) {\n @unlink($vqmod_path.\'checked.cache\');\n }\n }\n]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$log[] = \'MOD:]]></search>\n <add position=\"after\"><![CDATA[ $error_log_mod = \'MOD: \' . $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$operations = $file->getElementsByTagName(\'operation\');]]></search>\n <add position=\"after\"><![CDATA[ \n $file_error = $file->getAttribute(\'error\');]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$files = glob($path, GLOB_BRACE);]]></search>\n <add position=\"after\"><![CDATA[ if (!$files) {\n if ($file_error != \'skip\') {\n $error_log[] = \'----------------------------------------------------------------\';\n $error_log[] = $error_log_mod;\n $error_log[] = \'MISSING FILE!\';\n $error_log[] = $path; \n }\n }]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[if (!$status) {]]></search>\n <add position=\"after\"><![CDATA[ if ($error != \'skip\') {\n $error_log[] = \"\\n\";\n $error_log[] = $error_log_mod;\n $error_log[] = \'NOT FOUND!\';\n $error_log[] = \'CODE: \' . $search;\n $error_log[] = \'FILE: \' . $key;\n }]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[$ocmod->write(implode(\"\\n\", $log));]]></search>\n <add position=\"after\"><![CDATA[\n if ($error_log) {\n $ocmod = new Log(\'ocmod_error.log\');\n $ocmod->write(implode(\"\\n\", $error_log));\n }]]></add>\n </operation>\n <operation>\n <search index=\"0\"><![CDATA[protected function validate(]]></search>\n <add position=\"before\"><![CDATA[\n\npublic function add() {\n $this->load->language(\'marketplace/modification\');\n\n $this->load->model(\'extension/module/modification_manager\');\n\n if (($this->request->server[\'REQUEST_METHOD\'] == \'POST\') && $this->validateForm()) {\n $xml = html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\');\n\n $dom = new DOMDocument(\'1.0\', \'UTF-8\');\n $dom->preserveWhiteSpace = false;\n $dom->loadXml($xml);\n\n $data = array(\n \'version\' => \'\',\n \'author\' => \'\',\n \'link\' => \'\',\n \'status\' => 1\n );\n\n $data[\'xml\'] = $xml;\n\n $data[\'name\'] = $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n\n $data[\'code\'] = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n\n if ($dom->getElementsByTagName(\'version\')->length) {\n $data[\'version\'] = $dom->getElementsByTagName(\'version\')->item(0)->textContent;\n }\n\n if ($dom->getElementsByTagName(\'author\')->length) {\n $data[\'author\'] = $dom->getElementsByTagName(\'author\')->item(0)->textContent;\n }\n\n $this->model_extension_module_modification_manager->addModification($data);\n\n $modification_id = $this->db->getLastId();\n\n $this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n $this->response->redirect($this->url->link(\'marketplace/modification/edit\', \'user_token=\' . $this->session->data[\'user_token\'] . $this->getListUrlParams(array(\'modification_id\' => $modification_id)), true));\n }\n\n $this->getForm();\n }\n\n public function edit() {\n $this->load->language(\'marketplace/modification\');\n\n $this->load->model(\'extension/module/modification_manager\');\n \n if (($this->request->server[\'REQUEST_METHOD\'] == \'POST\') && !empty($this->request->get[\'modification_id\']) && $this->validateForm()) {\n $modification_id = $this->request->get[\'modification_id\'];\n\n $xml = html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\');\n\n $dom = new DOMDocument(\'1.0\', \'UTF-8\');\n $dom->preserveWhiteSpace = false;\n $dom->loadXml($xml);\n\n $data = array();\n\n $data[\'xml\'] = $xml;\n\n $data[\'name\'] = $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n\n $data[\'code\'] = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n\n if ($dom->getElementsByTagName(\'version\')->length) {\n $data[\'version\'] = $dom->getElementsByTagName(\'version\')->item(0)->textContent;\n } else {\n $data[\'version\'] = \'\';\n }\n\n if ($dom->getElementsByTagName(\'author\')->length) {\n $data[\'author\'] = $dom->getElementsByTagName(\'author\')->item(0)->textContent;\n } else {\n $data[\'author\'] = \'\';\n }\n\n if ($dom->getElementsByTagName(\'link\')->length) {\n $data[\'link\'] = $dom->getElementsByTagName(\'link\')->item(0)->textContent;\n } else {\n $data[\'link\'] = \'\';\n }\n\n $this->model_extension_module_modification_manager->editModification($modification_id, $data);\n\n $url = $this->getListUrlParams(array(\'modification_id\' => $modification_id));\n\n if (isset($this->request->get[\'refresh\'])) {\n $this->response->redirect($this->url->link(\'marketplace/modification/refresh\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n }\n\n if ($this->db->countAffected()) {\n $this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n $this->response->redirect($this->url->link(\'marketplace/modification/edit\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n }\n }\n\n $this->getForm();\n }\n \n public function download() {\n \n if (!$this->user->hasPermission(\'modify\', \'marketplace/modification\')) {\n $this->response->redirect($this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'], true));\n }\n\n if (isset($this->request->get[\'modification_id\'])) {\n $modification_id = $this->request->get[\'modification_id\'];\n } else {\n $modification_id = 0;\n }\n \n $this->load->model(\'extension/module/modification_manager\');\n $modification = $this->model_extension_module_modification_manager->getModification($modification_id);\n\n if ($modification) {\n $filename = $modification[\'code\'] . \'.ocmod.xml\';\n $file = $modification[\'xml\'];\n\n ob_start();\n echo $file;\n $download = ob_get_contents();\n $size = ob_get_length();\n ob_end_clean();\n \n if (!headers_sent()) {\n if (!empty($modification[\'xml\'])) {\n header(\'Content-Type: application/octet-stream\');\n header(\'Content-Disposition: attachment; filename=\"\' . $filename . \'\"\');\n header(\'Content-Transfer-Encoding: binary\');\n header(\'Expires: 0\');\n header(\'Cache-Control: must-revalidate, post-check=0, pre-check=0\');\n header(\'Pragma: public\');\n header(\'Content-Length: \' . $size);\n\n if (ob_get_level()) {\n ob_end_clean();\n }\n\n echo $download;\n\n exit();\n } else {\n exit($this->language->get(\'error_file\'));\n }\n } else {\n exit($this->language->get(\'error_headers\'));\n }\n } else {\n $this->response->redirect($this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n }\n }\n \n public function getForm() {\n $data[\'heading_title\'] = $this->language->get(\'heading_title\');\n\n $data[\'text_enabled\'] = $this->language->get(\'text_enabled\');\n $data[\'text_disabled\'] = $this->language->get(\'text_disabled\');\n\n $data[\'button_save\'] = $this->language->get(\'button_save\');\n $data[\'button_download\'] = $this->language->get(\'button_download\');\n $data[\'button_refresh\'] = $this->language->get(\'button_refresh\');\n $data[\'button_cancel\'] = $this->language->get(\'button_cancel\');\n\n if (isset($this->error[\'warning\'])) {\n $data[\'error_warning\'] = $this->error[\'warning\'];\n } elseif (!empty($this->error)) {\n $data[\'error_warning\'] = $this->language->get(\'error_warning\');\n } else {\n $data[\'error_warning\'] = \'\';\n }\n\n if (isset($this->session->data[\'success\'])) {\n $data[\'success\'] = $this->session->data[\'success\'];\n\n unset($this->session->data[\'success\']);\n } else {\n $data[\'success\'] = false;\n }\n\n if (isset($this->error[\'xml\'])) {\n $data[\'error_xml\'] = $this->error[\'xml\'];\n }\n\n $data[\'breadcrumbs\'] = array();\n\n $data[\'breadcrumbs\'][] = array(\n \'text\' => $this->language->get(\'text_home\'),\n \'href\' => $this->url->link(\'common/dashboard\', \'user_token=\' . $this->session->data[\'user_token\'], true)\n );\n\n $data[\'breadcrumbs\'][] = array(\n \'text\' => $this->language->get(\'heading_title\'),\n \'href\' => $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $this->getListUrlParams(), true)\n );\n\n if (isset($this->request->get[\'modification_id\'])) {\n $this->load->model(\'extension/module/modification_manager\');\n\n $modification_info = $this->model_extension_module_modification_manager->getModification($this->request->get[\'modification_id\']);\n if (!$modification_info) exit;\n\n $data[\'text_form\'] = sprintf($this->language->get(\'text_edit\'), $modification_info[\'name\']);\n\n $data[\'action\'] = $this->url->link(\'marketplace/modification/edit\', \'&modification_id=\' . $modification_info[\'modification_id\'] . \'&user_token=\' . $this->session->data[\'user_token\'], true);\n\n $data[\'refresh\'] = $this->url->link(\'marketplace/modification/edit\', \'&modification_id=\' . $modification_info[\'modification_id\'] . \'&refresh=1&user_token=\' . $this->session->data[\'user_token\'], true);\n\n $this->document->setTitle($modification_info[\'name\'] . \' » \' . $data[\'heading_title\']);\n } else {\n $data[\'text_form\'] = $this->language->get(\'text_add\');\n\n $data[\'refresh\'] = false;\n\n $data[\'action\'] = $this->url->link(\'marketplace/modification/add\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n\n $this->document->setTitle($data[\'heading_title\']);\n }\n\n $data[\'cancel\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $this->getListUrlParams(), true);\n\n $data[\'modification\'] = array();\n\n if (!empty($modification_info)) {\n $data[\'modification\'][\'status\'] = $modification_info[\'status\'];\n } else {\n $data[\'modification\'][\'status\'] = 0;\n }\n\n if (isset($this->request->post[\'xml\'])) {\n $data[\'modification\'][\'xml\'] = html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\');\n } elseif (!empty($modification_info)) {\n $data[\'modification\'][\'xml\'] = $modification_info[\'xml\'];\n } else {\n $data[\'modification\'][\'xml\'] = \'\';\n }\n\n $this->document->addStyle(\'view/javascript/codemirror/lib/codemirror.css\');\n $this->document->addScript(\'view/javascript/codemirror/lib/codemirror.js\');\n $this->document->addScript(\'view/javascript/codemirror/mode/xml/xml.js\');\n\n $data[\'header\'] = $this->load->controller(\'common/header\');\n $data[\'column_left\'] = $this->load->controller(\'common/column_left\');\n $data[\'footer\'] = $this->load->controller(\'common/footer\');\n\n $this->response->setOutput($this->load->view(\'extension/module/modification_manager/form\', $data));\n }\n\n private function validateForm() {\n if (!$this->user->hasPermission(\'modify\', \'marketplace/modification\')) {\n $this->error[\'warning\'] = $this->language->get(\'error_permission\');\n }\n\n $error = false;\n\n // Required\n if (empty($this->request->post[\'xml\'])) {\n $error = $this->language->get(\'error_required\');\n }\n\n // 2. Validate XML\n if (!$error) {\n libxml_use_internal_errors(true);\n\n $dom = new DOMDocument(\'1.0\', \'UTF-8\');\n\n if(!$dom->loadXml(html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\'))){\n\n foreach (libxml_get_errors() as $error) {\n $msg = \'\';\n\n switch ($error->level) {\n case LIBXML_ERR_WARNING :\n $msg .= \"Warning $error->code: \";\n break;\n case LIBXML_ERR_ERROR :\n $msg .= \"Error $error->code: \";\n break;\n case LIBXML_ERR_FATAL :\n $msg .= \"Fatal Error $error->code: \";\n break;\n }\n\n $msg .= trim ( $error->message ) . \"\\nLine: $error->line\";\n\n $error = $msg;\n }\n\n libxml_clear_errors();\n }\n\n libxml_use_internal_errors(false);\n }\n\n // 3. Required tags\n if (!$error && (!$dom->getElementsByTagName(\'name\') || $dom->getElementsByTagName(\'name\')->length == 0 || $dom->getElementsByTagName(\'name\')->item(0)->textContent == \'\')) {\n $error = $this->language->get(\'error_name\');\n }\n\n if (!$error && (!$dom->getElementsByTagName(\'code\') || $dom->getElementsByTagName(\'code\')->length == 0 || $dom->getElementsByTagName(\'code\')->item(0)->textContent == \'\')) {\n $error = $this->language->get(\'error_code\');\n }\n\n // 4. Check code isn\'t duplicate\n if (!$error) {\n $code = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n\n $this->load->model(\'extension/module/modification_manager\');\n \n $modification_info = $this->model_extension_module_modification_manager->getModificationByCode($code);\n\n if ($modification_info && (!isset($this->request->get[\'modification_id\']) || $modification_info[\'modification_id\'] != $this->request->get[\'modification_id\'])) {\n $error = sprintf($this->language->get(\'error_exists\'), $modification_info[\'name\'], $modification_info[\'code\']);\n }\n }\n\n if ($error) {\n $this->error[\'xml\'] = $error;\n }\n\n return !$this->error;\n }\n\n static function modifiedFiles($dir, $dirLen = 0) {\n $tree = glob(rtrim($dir, \'/\') . \'/*\');\n if (!$dirLen) {\n $dirLen = strlen($dir);\n }\n $files = array();\n\n if (is_array($tree)) {\n foreach($tree as $file) {\n if ($file == $dir . \'index.html\') {\n continue;\n } elseif (is_file($file)) {\n $files[] = substr($file, $dirLen);\n } elseif (is_dir($file)) {\n $files = array_merge($files, self::modifiedFiles($file, $dirLen));\n }\n }\n }\n\n return $files;\n }\n\n protected function getListUrlParams(array $params = array()) {\n if (isset($params[\'sort\'])) {\n $params[\'sort\'] = $params[\'sort\'];\n } elseif (isset($this->request->get[\'sort\'])) {\n $params[\'sort\'] = $this->request->get[\'sort\'];\n }\n\n if (isset($params[\'order\'])) {\n $params[\'order\'] = $params[\'order\'];\n } elseif (isset($this->request->get[\'order\'])) {\n $params[\'order\'] = $this->request->get[\'order\'];\n }\n\n if (isset($params[\'filter_name\'])) {\n $params[\'filter_name\'] = urlencode(html_entity_decode($params[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n } elseif (isset($this->request->get[\'filter_name\'])) {\n $params[\'filter_name\'] = urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($params[\'filter_author\'])) {\n $params[\'filter_author\'] = urlencode(html_entity_decode($params[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n } elseif (isset($this->request->get[\'filter_author\'])) {\n $params[\'filter_author\'] = urlencode(html_entity_decode($this->request->get[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($params[\'filter_xml\'])) {\n $params[\'filter_xml\'] = urlencode(html_entity_decode($params[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n } elseif (isset($this->request->get[\'filter_xml\'])) {\n $params[\'filter_xml\'] = urlencode(html_entity_decode($this->request->get[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n }\n\n if (isset($params[\'page\'])) {\n $params[\'page\'] = $params[\'page\'];\n } elseif (isset($this->request->get[\'page\'])) {\n $params[\'page\'] = $this->request->get[\'page\'];\n }\n\n $paramsJoined = array();\n\n foreach($params as $param => $value) {\n $paramsJoined[] = \"$param=$value\";\n }\n\n return \'&\' . implode(\'&\', $paramsJoined);\n }\n\n protected function getModificationXmlFiles() {\n $return = array();\n\n $baseLen = strlen(substr(DIR_SYSTEM, 0, -7));\n\n $xml = array();\n\n $xml[] = file_get_contents(DIR_SYSTEM . \'modification.xml\');\n\n $files = glob(DIR_SYSTEM . \'*.ocmod.xml\');\n\n if ($files) {\n foreach ($files as $file) {\n $xml[] = file_get_contents($file);\n }\n }\n\n $results = $this->model_extension_module_modification_manager->getModifications();\n\n foreach ($results as $result) {\n if ($result[\'status\']) {\n $xml[] = $result[\'xml\'];\n }\n }\n\n foreach ($xml as $xml) {\n if (empty($xml)){\n continue;\n }\n\n $dom = new DOMDocument(\'1.0\', \'UTF-8\');\n $dom->preserveWhiteSpace = false;\n $dom->loadXml($xml);\n\n $files = $dom->getElementsByTagName(\'modification\')->item(0)->getElementsByTagName(\'file\');\n\n foreach ($files as $file) {\n $operations = $file->getElementsByTagName(\'operation\');\n\n $files = explode(\',\', $file->getAttribute(\'path\'));\n\n foreach ($files as $file) {\n $path = \'\';\n\n // Get the full path of the files that are going to be used for modification\n if (substr($file, 0, 7) == \'catalog\') {\n $path = DIR_CATALOG . str_replace(\'../\', \'\', substr($file, 8));\n }\n\n if (substr($file, 0, 5) == \'admin\') {\n $path = DIR_APPLICATION . str_replace(\'../\', \'\', substr($file, 6));\n }\n\n if (substr($file, 0, 6) == \'system\') {\n $path = DIR_SYSTEM . str_replace(\'../\', \'\', substr($file, 7));\n }\n\n if ($path) {\n $files = glob($path, GLOB_BRACE);\n\n if ($files) {\n foreach ($files as $file) {\n $file = substr($file, $baseLen);\n\n if (!isset($return[$file])) {\n $return[$file] = array();\n }\n\n if ($dom->getElementsByTagName(\'code\')->length) {\n $code = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n } else {\n continue;\n }\n\n if (!empty($return[$file])) {\n foreach ($return[$file] as $return_file) {\n if ($return_file[\'code\'] == $code) {\n continue 2;\n }\n }\n }\n\n if ($dom->getElementsByTagName(\'name\')->length) {\n $name = $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n } else {\n continue;\n }\n\n if ($dom->getElementsByTagName(\'author\')->length) {\n $author = $dom->getElementsByTagName(\'author\')->item(0)->textContent;\n } else {\n $author = \'\';\n }\n\n $return[$file][] = array(\n \'code\' => $code,\n \'name\' => $name,\n \'author\' => $author\n );\n }\n }\n }\n }\n }\n }\n\n return $return;\n }\n\n]]></add>\n </operation>\n </file>\n</modification>', 1, '2018-01-03 17:29:19', '2018-01-03 17:29:19'),
(22, 0, 'Simple Blog', 'Simpleblog', 'OpenCartWorks', '3.1.0', 'http://www.opencartworks.com/', '<?xml version=\"1.0\" encoding=\"utf-8\"?> \n<modification> \n <name><![CDATA[Simple Blog]]></name> \n <code>Simpleblog</code> \n <version><![CDATA[3.1.0]]></version> \n <author><![CDATA[OpenCartWorks]]></author> \n \n <link><![CDATA[http://www.opencartworks.com/]]></link> \n <file path=\"admin/controller/common/column_left.php\"> \n <operation> \n <search><![CDATA[$report = array();]]></search> \n <add position=\"before\"><![CDATA[ \n // Simple Blog \n $simpleblog = array(); \n \n if ($this->user->hasPermission(\'access\', \'extension/module/simple_blog/author\')) { \n $simpleblog[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_author\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog/author\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($this->user->hasPermission(\'access\', \'extension/module/simple_blog/article\')) { \n $simpleblog[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_article\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog/article\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($this->user->hasPermission(\'access\', \'extension/module/simple_blog/category\')) { \n $simpleblog[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_category\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog/category\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($this->user->hasPermission(\'access\', \'extension/module/simple_blog/comment\')) { \n $simpleblog[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_article_comment\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog/comment\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n if ($this->user->hasPermission(\'access\', \'extension/module/simple_blog/report\')) { \n $simpleblog[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_view_report\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog/report\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n } \n \n $simpleblogsettings = array(); \n \n $simpleblogsettings[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_general_setting\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n \n $simpleblogsettings[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_category_setting\'), \n \'href\' => $this->url->link(\'extension/module/simple_blog_category\', \'user_token=\' . $this->session->data[\'user_token\'], true), \n \'children\' => array() \n ); \n \n if ($simpleblogsettings) { \n $simpleblog[] = array( \n \'name\' => $this->language->get(\'text_simple_blog_setting\'), \n \'href\' => \'\', \n \'children\' => $simpleblogsettings \n ); \n } \n \n if ($simpleblog) { \n $data[\'menus\'][] = array( \n \'id\' => \'menu-simpleblog\', \n \'icon\' => \'fa-file-text-o\', \n \'name\' => $this->language->get(\'text_simple_blogs\'), \n \'href\' => \'\', \n \'children\' => $simpleblog \n ); \n } \n ]]></add> \n </operation> \n </file> \n \n <file path=\"admin/language/*/common/column_left.php\"> \n <operation> \n <search><![CDATA[$_[\'text_other_status\']]]></search> \n <add position=\"after\"><![CDATA[ \n $_[\'text_simple_blogs\'] = \'Simple Blog\'; \n $_[\'text_simple_blog_author\'] = \'Author\'; \n $_[\'text_simple_blog_category\'] = \'Category\'; \n $_[\'text_simple_blog_article\'] = \'Article\'; \n $_[\'text_simple_blog_article_comment\'] = \'Article Comment\'; \n $_[\'text_simple_blog_setting\'] = \'Setting\'; \n $_[\'text_simple_blog_general_setting\'] = \'General Setting\'; \n $_[\'text_simple_blog_category_setting\'] = \'Category Setting\'; \n $_[\'text_simple_blog_view_report\'] = \'Report\'; \n ]]></add> \n </operation> \n </file> \n <!-- End admin/controller--> \n \n <!--catalog/controller/common--> \n <file path=\"catalog/controller/startup/seo_url.php\"> \n <operation> \n <search><![CDATA[if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {]]></search> \n <add position=\"replace\"><![CDATA[ \n if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\' && $url[0] != \'simple_blog_article_id\' && $url[0] != \'simple_blog_category_id\' && $url[0] != \'simple_blog_author_id\') { \n ]]></add> \n </operation> \n <operation> \n <search><![CDATA[if ($url[0] == \'category_id\') {]]></search> \n <add position=\"before\"><![CDATA[ \n if($url[0] == \'simple_blog_article_id\') { \n $this->request->get[\'simple_blog_article_id\'] = $url[1]; \n } \n if($url[0] == \'simple_blog_author_id\') { \n $this->request->get[\'simple_blog_author_id\'] = $url[1]; \n } \n if ($url[0] == \'simple_blog_category_id\') { \n $this->request->get[\'simple_blog_category_id\'] = $url[1]; \n } \n ]]></add> \n </operation> \n \n <operation> \n <search><![CDATA[$this->request->get[\'route\'] = \'error/not_found\']]></search> \n <add position=\"replace\"><![CDATA[ \n if (($this->config->has(\'simple_blog_seo_keyword\')) && ($this->db->escape($part) == $this->config->get(\'simple_blog_seo_keyword\'))) { \n \n } else if($this->db->escape($part) == \'simple-blog\') { \n \n } else { \n $this->request->get[\'route\'] = \'error/not_found\'; \n break; \n } \n ]]></add> \n </operation> \n \n <operation> \n <search><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search> \n <add position=\"replace\"><![CDATA[ \n $this->request->get[\'route\'] = \'information/information\'; \n } else if (isset($this->request->get[\'simple_blog_article_id\'])) { \n $this->request->get[\'route\'] = \'extension/simple_blog/article/view\'; \n } else if (isset($this->request->get[\'simple_blog_author_id\'])) { \n $this->request->get[\'route\'] = \'extension/simple_blog/author\'; \n } else if (isset($this->request->get[\'simple_blog_category_id\'])) { \n $this->request->get[\'route\'] = \'extension/simple_blog/category\'; \n } else { \n if(($this->config->has(\'simple_blog_seo_keyword\'))) { \n if($this->request->get[\'_route_\'] == $this->config->get(\'simple_blog_seo_keyword\')) { \n $this->request->get[\'route\'] = \'extension/simple_blog/article\'; \n } \n }else { \n $this->request->get[\'route\'] = \'extension/simple_blog/article\'; \n } \n ]]></add> \n </operation> \n \n <operation> \n <search><![CDATA[} elseif ($key == \'path\') {]]></search> \n <add position=\"replace\"><![CDATA[ \n } else if($data[\'route\'] == \'extension/simple_blog/article/view\' && $key == \'simple_blog_article_id\') { \n $query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\"); \n \n if ($query->num_rows) { \n $url .= \'/\' . $query->row[\'keyword\']; \n unset($data[$key]); \n } \n } else if($data[\'route\'] == \'extension/simple_blog/author\' && $key == \'simple_blog_author_id\') { \n $query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\"); \n \n if ($query->num_rows) { \n $url .= \'/\' . $query->row[\'keyword\']; \n unset($data[$key]); \n } \n } else if($data[\'route\'] == \'extension/simple_blog/category\' && $key == \'simple_blog_category_id\') { \n $query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\"); \n \n if ($query->num_rows) { \n $url .= \'/\' . $query->row[\'keyword\']; \n unset($data[$key]); \n } \n } else if($data[\'route\'] == \'extension/simple_blog/search\') { \n if(isset($key) && ($key == \'blog_search\')) { \n $url .= \'/search&blog_search=\' . $value; \n } \n } else if(isset($data[\'route\']) && $data[\'route\'] == \'extension/simple_blog/article\' && $key != \'simple_blog_article_id\' && $key != \'simple_blog_author_id\' && $key != \'simple_blog_category_id\' && $key != \'page\') { \n if($this->config->has(\'simple_blog_seo_keyword\')) { \n $url .= \'/\' . $this->config->get(\'simple_blog_seo_keyword\'); \n } \n else { \n $url .= \'/simple-blog\'; \n } \n } elseif ($key == \'path\') { \n \n ]]></add> \n </operation> \n \n </file> \n \n <file path=\"catalog/controller/common/header.php\"> \n <!--changes for Blog--> \n <operation> \n <search><![CDATA[$categories = $this->model_catalog_category->getCategories(0);]]></search> \n <add position=\"after\"><![CDATA[ \n /***blog changes***/ \n $data[\'blog_link_status\'] = 1; \n $data[\'blog_link_url\'] = \'index.php?route=simple_blog/article\'; \n if(isset($this->request->get[\'route\'])) { \n $route = $this->request->get[\'route\']; \n } else { \n $route = \'common/home\'; \n } \n \n $route = explode(\"/\", $route); \n \n if($this->config->get(\'simple_blog_status\')) { \n $this->load->model(\'simple_blog/article\'); \n \n $count_blog_categories = $this->model_simple_blog_article->getTotalCategories(0); \n } \n \n if (isset($count_blog_categories) && $this->config->get(\'simple_blog_display_category\') && $this->config->get(\'simple_blog_status\')) { \n \n $categories = $this->model_simple_blog_article->getCategories(0); \n \n foreach ($categories as $category) { \n if ($category[\'top\']) { \n // Level 2 \n $children_data = array(); \n \n $children = $this->model_simple_blog_article->getCategories($category[\'simple_blog_category_id\']); \n \n foreach ($children as $child) { \n \n $article_total = $this->model_simple_blog_article->getTotalArticles($child[\'simple_blog_category_id\']); \n if ($child[\'image\']) { \n $this->load->model(\'tool/image\'); \n \n $image = $this->model_tool_image->resize($child[\'image\'], 205, 130); \n } else { \n $image = false; \n } \n \n $children_data[] = array( \n \'image\' => $image, \n \'external_link\' => $child[\'external_link\'], \n \'name\' => $child[\'name\'], \n \'href\' => $this->url->link(\'simple_blog/category\', \'simple_blog_category_id=\' . $category[\'simple_blog_category_id\'] . \'_\' . $child[\'simple_blog_category_id\']) \n ); \n } \n \n $menu_class = \'simple_blog\'; \n \n // Level 1 \n $data[\'categories\'][] = array( \n \'name\' => $category[\'name\'], \n \'external_link\' => $category[\'external_link\'], \n \'children\' => $children_data, \n \'menu_class\' => $menu_class, \n \'column\' => $category[\'blog_category_column\'] ? $category[\'blog_category_column\'] : 1, \n \'href\' => $this->url->link(\'simple_blog/category\', \'simple_blog_category_id=\' . $category[\'simple_blog_category_id\']) \n ); \n } \n } \n } \n $categories = $this->model_catalog_category->getCategories(0); \n /***end blog changes***/ \n ]]></add> \n </operation> \n </file> \n</modification> ', 1, '2018-04-03 14:25:55', '2018-04-03 14:26:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_module`
--

CREATE TABLE `tbl_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_module`
--

INSERT INTO `tbl_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Featured Product', 'featured', '{\"name\":\"Featured Product\",\"product_name\":\"\",\"product\":[\"42\",\"77\",\"71\",\"73\",\"82\",\"80\",\"52\",\"58\"],\"limit\":\"8\",\"width\":\"270\",\"height\":\"270\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"870\",\"height\":\"433\",\"status\":\"1\"}'),
(31, 'Home Slider', 'banner', '{\"name\":\"Home Slider\",\"banner_id\":\"7\",\"width\":\"870\",\"height\":\"452\",\"status\":\"1\"}'),
(81, 'Footer - Contact Us', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Footer - Contact Us\",\"status\":\"1\",\"class_suffix\":\"\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;content-block-footer&quot;&gt;\\r\\n&lt;h3 class=&quot;modtitle&quot;&gt;CONTACT US&lt;\\/h3&gt;\\r\\n\\r\\n\\r\\n&lt;p class=&quot;des-ft&quot;&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;footer-contact-content block-content&quot;&gt;\\r\\n&lt;p class=&quot;address&quot;&gt;&lt;i class=&quot;fa fa-home&quot;&gt;&lt;\\/i&gt;&lt;span&gt;8901 Marmora Road, Glasgow, D04 89GR&lt;\\/span&gt;&lt;\\/p&gt; \\r\\n&lt;p class=&quot;phone&quot;&gt;&lt;i class=&quot;fa fa-mobile&quot;&gt;&lt;\\/i&gt;&lt;span&gt;Telephone: (801) 2345 - 6789&lt;\\/span&gt;&lt;\\/p&gt; \\r\\n&lt;p class=&quot;email&quot;&gt;&lt;i class=&quot;fa fa-envelope&quot;&gt;&lt;\\/i&gt;&lt;span&gt;E-mail: &lt;a title=&quot;Mail to: demo@furnicom.com&quot; href=&quot;mailto:name@email.com&quot;&gt;support@magentech.com&lt;\\/a&gt;&lt;\\/span&gt;&lt;\\/p&gt; \\r\\n&lt;\\/div&gt;\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n&lt;ul class=&quot;social-block &quot;&gt;\\r\\n\\r\\n\\t\\t&lt;li class=&quot;rss&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;#&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-rss&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/twitter.com\\/smartaddons&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/www.facebook.com\\/MagenTech&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t\\t\\t&lt;li class=&quot;google_plus&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/plus.google.com\\/u\\/0\\/+Smartaddons\\/posts&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t&lt;li class=&quot;pinterest&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/www.pinterest.com\\/smartaddons\\/&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-pinterest&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t\\t&lt;\\/ul&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"1\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;content-block-footer&quot;&gt;\\r\\n&lt;h3 class=&quot;modtitle&quot;&gt;CONTACT US&lt;\\/h3&gt;\\r\\n\\r\\n\\r\\n&lt;p class=&quot;des-ft&quot;&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;footer-contact-content block-content&quot;&gt;\\r\\n&lt;p class=&quot;address&quot;&gt;&lt;i class=&quot;fa fa-home&quot;&gt;&lt;\\/i&gt;&lt;span&gt;8901 Marmora Road, Glasgow, D04 89GR&lt;\\/span&gt;&lt;\\/p&gt; \\r\\n&lt;p class=&quot;phone&quot;&gt;&lt;i class=&quot;fa fa-mobile&quot;&gt;&lt;\\/i&gt;&lt;span&gt;Telephone: (801) 2345 - 6789&lt;\\/span&gt;&lt;\\/p&gt; \\r\\n&lt;p class=&quot;email&quot;&gt;&lt;i class=&quot;fa fa-envelope&quot;&gt;&lt;\\/i&gt;&lt;span&gt;E-mail: &lt;a title=&quot;Mail to: demo@furnicom.com&quot; href=&quot;mailto:name@email.com&quot;&gt;support@magentech.com&lt;\\/a&gt;&lt;\\/span&gt;&lt;\\/p&gt; \\r\\n&lt;\\/div&gt;\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n&lt;ul class=&quot;social-block &quot;&gt;\\r\\n\\r\\n\\t\\t&lt;li class=&quot;rss&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;#&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-rss&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/twitter.com\\/smartaddons&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/www.facebook.com\\/MagenTech&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t\\t\\t&lt;li class=&quot;google_plus&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/plus.google.com\\/u\\/0\\/+Smartaddons\\/posts&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t&lt;li class=&quot;pinterest&quot;&gt;&lt;a class=&quot;_blank&quot; href=&quot;https:\\/\\/www.pinterest.com\\/smartaddons\\/&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-pinterest&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\t\\t\\t&lt;\\/ul&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}},\"moduleid\":\"81\"}'),
(82, 'Footer - Secvices', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Footer - Secvices\",\"status\":\"1\",\"class_suffix\":\"custom-sevicer\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;box-bottom-support&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-paper-plane&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;Money Back Guarantee&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;30 Days Money Back&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1 box-footer-sp&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;Free Worldwide Shipping&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;On Order Over $100&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1 box-footer-sp&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-tag&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;Member Discount&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;Upto 70 % Discount&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1 box-footer-sp&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-life-ring&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;24\\/7 Online Support&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;24\\/7 Technical Support&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\t\\t\\t\\t\\r\\n&lt;\\/div&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"1\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;box-bottom-support&quot;&gt;\\r\\n\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-paper-plane&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;Money Back Guarantee&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;30 Days Money Back&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1 box-footer-sp&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;Free Worldwide Shipping&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;On Order Over $100&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1 box-footer-sp&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-tag&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;Member Discount&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;Upto 70 % Discount&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\r\\n\\t\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-6 box-1 box-footer-sp&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;icon-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;i class=&quot;fa fa-life-ring&quot;&gt;&lt;\\/i&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;content-sp&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;font-sn&quot;&gt;&lt;strong&gt;24\\/7 Online Support&lt;\\/strong&gt;&lt;\\/a&gt;&lt;br&gt;\\r\\n\\t\\t\\t\\t&lt;span&gt;24\\/7 Technical Support&lt;\\/span&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\t\\t\\t\\t\\r\\n&lt;\\/div&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}},\"moduleid\":\"82\"}'),
(185, 'Footer - Testimonials', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Footer - Testimonials\",\"status\":\"1\",\"class_suffix\":\"\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\" \",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n&lt;h3 class=&quot;modtitle&quot;&gt;TESTIMONIALS&lt;\\/h3&gt;\\r\\n\\r\\n&lt;div class=&quot;block clients_say&quot;&gt;\\r\\n\\t&lt;div class=&quot;slider-clients-say contentslider &quot; data-rtl=&quot;{{direction}}&quot; data-autoplay=&quot;no&quot; data-pagination=&quot;no&quot; data-delay=&quot;4&quot; data-speed=&quot;0.6&quot; data-margin=&quot;0&quot; data-items_column0=&quot;1&quot; data-items_column1=&quot;1&quot; data-items_column2=&quot;1&quot; data-items_column3=&quot;{{related_col_xs}}&quot; data-items_column4=&quot;1&quot; data-arrows=&quot;yes&quot; data-lazyload=&quot;yes&quot; data-loop=&quot;no&quot; data-hoverpause=&quot;yes&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;block_content&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;info&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/cms\\/img-clien-2.png&quot; alt=&quot;banner&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;content-if&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;text&quot;&gt;&quot;Duis aliquam, magna ac fermentum are we finibus, orci viverra risus, into varius telluso tortor sed eros. Sedion pharetra ante sit amet suscipit ornare. Integer et auctor diam sit dolor.&quot;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;author&quot;&gt;Jack Andrson&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p class=&quot;name-if font-sn&quot;&gt;Web designer&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;block_content&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;info&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/cms\\/img-clien-3.png&quot; alt=&quot;banner&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;content-if&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;text&quot;&gt;&quot;Duis aliquam, magna ac fermentum are we finibus, orci viverra risus, into varius telluso tortor sed eros. Sedion pharetra ante sit amet suscipit ornare. Integer et auctor diam sit dolor.&quot;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;author&quot;&gt;Aliquam Tellus&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p class=&quot;name-if font-sn&quot;&gt;Ornare Mauris&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;block_content&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;info&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/cms\\/img-clien.png&quot; alt=&quot;banner&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;content-if&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;text&quot;&gt;&quot;Duis aliquam, magna ac fermentum are we finibus, orci viverra risus, into varius telluso tortor sed eros. Sedion pharetra ante sit amet suscipit ornare. Integer et auctor diam sit dolor.&quot;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;author&quot;&gt;Jack Andrson&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p class=&quot;name-if font-sn&quot;&gt;Web designer&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"1\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n&lt;h3 class=&quot;modtitle&quot;&gt;TESTIMONIALS&lt;\\/h3&gt;\\r\\n\\r\\n&lt;div class=&quot;block clients_say&quot;&gt;\\r\\n\\t&lt;div class=&quot;slider-clients-say contentslider &quot; data-rtl=&quot;{{direction}}&quot; data-autoplay=&quot;no&quot; data-pagination=&quot;no&quot; data-delay=&quot;4&quot; data-speed=&quot;0.6&quot; data-margin=&quot;0&quot; data-items_column0=&quot;1&quot; data-items_column1=&quot;1&quot; data-items_column2=&quot;1&quot; data-items_column3=&quot;{{related_col_xs}}&quot; data-items_column4=&quot;1&quot; data-arrows=&quot;yes&quot; data-lazyload=&quot;yes&quot; data-loop=&quot;no&quot; data-hoverpause=&quot;yes&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;block_content&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;info&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/cms\\/img-clien-2.png&quot; alt=&quot;banner&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;content-if&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;text&quot;&gt;&quot;Duis aliquam, magna ac fermentum are we finibus, orci viverra risus, into varius telluso tortor sed eros. Sedion pharetra ante sit amet suscipit ornare. Integer et auctor diam sit dolor.&quot;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;author&quot;&gt;Jack Andrson&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p class=&quot;name-if font-sn&quot;&gt;Web designer&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;block_content&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;info&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/cms\\/img-clien-3.png&quot; alt=&quot;banner&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;content-if&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;text&quot;&gt;&quot;Duis aliquam, magna ac fermentum are we finibus, orci viverra risus, into varius telluso tortor sed eros. Sedion pharetra ante sit amet suscipit ornare. Integer et auctor diam sit dolor.&quot;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;author&quot;&gt;Aliquam Tellus&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p class=&quot;name-if font-sn&quot;&gt;Ornare Mauris&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;block_content&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;info&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/cms\\/img-clien.png&quot; alt=&quot;banner&quot;&gt;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;content-if&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;text&quot;&gt;&quot;Duis aliquam, magna ac fermentum are we finibus, orci viverra risus, into varius telluso tortor sed eros. Sedion pharetra ante sit amet suscipit ornare. Integer et auctor diam sit dolor.&quot;&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;author&quot;&gt;Jack Andrson&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p class=&quot;name-if font-sn&quot;&gt;Web designer&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}},\"moduleid\":\"185\"}'),
(103, 'Home 1 - Latest Blogs ', 'so_latest_blog', '{\"action\":\"save_edit\",\"name\":\"Home 1 - Latest Blogs \",\"module_description\":{\"2\":{\"head_name\":\"Latest Blogs\"},\"1\":{\"head_name\":\"Latest Blogs\"}},\"head_name\":\"Latest Blogs\",\"disp_title_module\":\"1\",\"status\":\"1\",\"store_layout\":\"default\",\"class_suffix\":\"custom-ourblog\",\"item_link_target\":\"_self\",\"nb_column0\":\"3\",\"nb_column1\":\"3\",\"nb_column2\":\"2\",\"nb_column3\":\"1\",\"nb_column4\":\"1\",\"type_show\":\"slider\",\"nb_row\":\"1\",\"category\":[\"2\",\"1\",\"3\"],\"child_category\":\"1\",\"category_depth\":\"1\",\"sort\":\"bd.article_title\",\"order\":\"ASC\",\"limit\":\"5\",\"display_title\":\"1\",\"title_maxlength\":\"50\",\"display_description\":\"1\",\"description_maxlength\":\"85\",\"display_author\":\"0\",\"display_comment\":\"0\",\"display_view\":\"0\",\"display_date_added\":\"1\",\"display_readmore\":\"0\",\"readmore_text\":\"Read more\",\"blog_image\":\"1\",\"blog_get_featured_image\":\"1\",\"width\":\"370\",\"height\":\"256\",\"blog_placeholder_path\":\"nophoto.png\",\"margin\":\"30\",\"slideBy\":\"1\",\"autoplay\":\"0\",\"autoplay_timeout\":\"5000\",\"pausehover\":\"0\",\"autoplaySpeed\":\"1000\",\"startPosition\":\"0\",\"mouseDrag\":\"1\",\"touchDrag\":\"1\",\"loop\":\"0\",\"button_page\":\"top\",\"dots\":\"0\",\"dotsSpeed\":\"500\",\"navs\":\"1\",\"navSpeed\":\"500\",\"effect\":\"none\",\"duration\":\"800\",\"delay\":\"500\",\"pre_text\":\"\",\"post_text\":\"\",\"use_cache\":\"0\",\"cache_time\":\"3600\",\"moduleid\":\"103\"}'),
(104, 'Simple Blog Category', 'simple_blog_category', '{\"status\":\"1\",\"name\":\"Simple Blog Category\"}'),
(186, 'Slideshow - Banner Left', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Slideshow - Banner Left\",\"status\":\"1\",\"class_suffix\":\"slidershow-right\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;banner-l&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners&quot;&gt;\\r\\n\\t&lt;div class=&quot;col-s-1&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/1.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-s-2&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/2.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"1\":{\"title\":\"\",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;banner-l&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners&quot;&gt;\\r\\n\\t&lt;div class=&quot;col-s-1&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/1.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-s-2&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/2.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}},\"moduleid\":\"186\"}'),
(187, 'Home page - Banner Top', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Home page - Banner Top\",\"status\":\"1\",\"class_suffix\":\"\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-top row&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;st-1-l col-lg-4 col-md-4 col-sm-4&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/3.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/4.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;st-1-r col-lg-4 col-md-4 col-sm-4&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/5.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;banner-top row&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;st-1-l col-lg-4 col-md-4 col-sm-4&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/3.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/4.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;st-1-r col-lg-4 col-md-4 col-sm-4&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/5.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"moduleid\":\"187\"}'),
(188, 'Best sellers', 'bestseller', '{\"name\":\"Best sellers\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(189, 'Home page - Services', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Home page - Services\",\"status\":\"1\",\"class_suffix\":\"custom-services\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\" \",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;row box-polyci&quot;&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info1&quot;&gt;\\r\\n\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon1.png&quot; alt=&quot;Image Client&quot;&gt;\\t\\r\\n\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;30 DAYS RETURN&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;p&gt;money back guarantee&lt;\\/p&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info2&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon2.png&quot; alt=&quot;Image Client&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;FREE SHIPPING&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;on all orders over $99&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info3&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon3.png&quot; alt=&quot;Image Client&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;LOWEST PRICE&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;guarantee&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info4&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon4.png&quot; alt=&quot;Image Client&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;SAFE SHOPPING&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;guarantee&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"1\":{\"title\":\" \",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;row box-polyci&quot;&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info1&quot;&gt;\\r\\n\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon1.png&quot; alt=&quot;Image Client&quot;&gt;\\t\\r\\n\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;30 DAYS RETURN&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t&lt;p&gt;money back guarantee&lt;\\/p&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info2&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon2.png&quot; alt=&quot;Image Client&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;FREE SHIPPING&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;on all orders over $99&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info3&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon3.png&quot; alt=&quot;Image Client&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;LOWEST PRICE&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;guarantee&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-3 col-md-3 col-sm-3&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-info banner-info4&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;inner&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/cms\\/home9\\/icon4.png&quot; alt=&quot;Image Client&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;banner-cont&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;a href=&quot;#&quot;&gt;SAFE SHOPPING&lt;\\/a&gt;\\r\\n\\t\\t\\t\\t\\t&lt;p&gt;guarantee&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}},\"moduleid\":\"189\"}'),
(190, 'Home page - Banner Middle', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Home page - Banner Middle\",\"status\":\"1\",\"class_suffix\":\"custom-bannerct\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\" \",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;row box-banner-ct&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners col-lg-4 col-md-4 col-sm-4&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-ct1&quot;&gt;\\r\\n\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/6.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banners box-ct1&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;banner-ct2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/7.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;banners banner-ct3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/8.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;banners col-lg-4 col-md-4 col-sm-4&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot; banner-ct4&quot;&gt;\\r\\n\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/9.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"},\"1\":{\"title\":\" \",\"description\":\"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;div class=&quot;row box-banner-ct&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners col-lg-4 col-md-4 col-sm-4&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banner-ct1&quot;&gt;\\r\\n\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/6.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-4 col-md-4 col-sm-4&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;banners box-ct1&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;banner-ct2&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/7.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;banners banner-ct3&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/8.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;banners col-lg-4 col-md-4 col-sm-4&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot; banner-ct4&quot;&gt;\\r\\n\\t\\t\\t&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/9.jpg&quot; alt=&quot;Image Client&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}},\"moduleid\":\"190\"}'),
(191, 'Home page - Banner Bottom', 'so_html_content', '{\"action\":\"save_edit\",\"name\":\"Home page - Banner Bottom\",\"status\":\"1\",\"class_suffix\":\"\",\"store_layout\":\"default\",\"use_cache\":\"0\",\"cache_time\":\"3600 \",\"module_description\":{\"2\":{\"title\":\" \",\"description\":\"&lt;div class=&quot;banner-bottom row&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;st-1-l col-lg-6 col-md-6 col-sm-6&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/10.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-6 col-md-6 col-sm-6&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/11.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\r\\n&lt;\\/div&gt;&lt;\\/div&gt;\"},\"1\":{\"title\":\" \",\"description\":\"&lt;div class=&quot;banner-bottom row&quot;&gt;\\r\\n\\t&lt;div class=&quot;banners&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;st-1-l col-lg-6 col-md-6 col-sm-6&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/10.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\t&lt;div class=&quot;col-lg-6 col-md-6 col-sm-6&quot;&gt;&lt;a title=&quot;Static Image&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/banner\\/home9\\/11.jpg&quot; alt=&quot;Static Image&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;\\r\\n\\t\\r\\n&lt;\\/div&gt;&lt;\\/div&gt;\"}},\"moduleid\":\"191\"}'),
(192, 'New Arrivals', 'so_basic_products', '{\"action\":\"save_edit\",\"name\":\"New Arrivals\",\"module_description\":{\"2\":{\"head_name\":\"New Arrivals\"},\"1\":{\"head_name\":\"New Arrivals\"}},\"disp_title_module\":\"1\",\"status\":\"1\",\"class_suffix\":\"\",\"item_link_target\":\"_blank\",\"layout_theme\":\"default\",\"nb_column0\":\"1\",\"nb_column1\":\"1\",\"nb_column2\":\"1\",\"nb_column3\":\"1\",\"nb_column4\":\"4\",\"category\":[\"24\",\"76\",\"85\",\"74\",\"73\"],\"child_category\":\"1\",\"category_depth\":\"1\",\"product_sort\":\"p.date_added\",\"product_ordering\":\"ASC\",\"limitation\":\"4\",\"display_title\":\"1\",\"title_maxlength\":\"50 \",\"display_description\":\"0\",\"description_maxlength\":\"100\",\"display_price\":\"1\",\"display_add_to_cart\":\"0\",\"display_wishlist\":\"0\",\"display_compare\":\"0\",\"display_rating\":\"1\",\"display_sale\":\"1\",\"display_new\":\"1\",\"date_day\":\"7\",\"product_image_num\":\"1\",\"product_image\":\"1\",\"product_get_image_data\":\"1\",\"product_get_image_image\":\"1\",\"width\":\"100\",\"height\":\"100\",\"product_placeholder_path\":\"nophoto.png\",\"pre_text\":\"\",\"post_text\":\"\",\"use_cache\":\"0\",\"cache_time\":\"3600\",\"moduleid\":\"192\"}');
INSERT INTO `tbl_module` (`module_id`, `name`, `code`, `setting`) VALUES
(193, 'New Arrivals', 'latest', '{\"name\":\"New Arrivals\",\"limit\":\"8\",\"width\":\"270\",\"height\":\"270\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_option`
--

CREATE TABLE `tbl_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_option`
--

INSERT INTO `tbl_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_option_description`
--

CREATE TABLE `tbl_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_option_description`
--

INSERT INTO `tbl_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_option_value`
--

CREATE TABLE `tbl_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_option_value`
--

INSERT INTO `tbl_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_option_value_description`
--

CREATE TABLE `tbl_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_option_value_description`
--

INSERT INTO `tbl_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_history`
--

CREATE TABLE `tbl_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_option`
--

CREATE TABLE `tbl_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_product`
--

CREATE TABLE `tbl_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_recurring`
--

CREATE TABLE `tbl_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_recurring_transaction`
--

CREATE TABLE `tbl_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_shipment`
--

CREATE TABLE `tbl_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_status`
--

CREATE TABLE `tbl_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_order_status`
--

INSERT INTO `tbl_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_total`
--

CREATE TABLE `tbl_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_voucher`
--

CREATE TABLE `tbl_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2019-11-05 12:43:20'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/images (5).jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 3, '2009-02-03 21:07:37', '2019-11-05 10:39:32'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2019-11-05 12:44:24'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2019-11-05 12:44:51'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2019-11-05 12:45:14'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2019-11-05 12:47:01'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2019-11-05 12:41:56'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2011-09-30 01:06:23'),
(50, 'product 90', '', '', '', '', '', '', '', 67, 6, 'catalog/download (9).jpg', 0, 1, '35.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2019-11-05 10:09:00', '2019-11-05 10:39:06'),
(51, 'product91', '', '', '', '', '', '', '', 10, 6, 'catalog/download (14).jpg', 0, 1, '800.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 10:30:45', '2019-11-05 10:43:15'),
(52, 'product 92', '', '', '', '', '', '', '', 54, 6, 'catalog/baru/download (7).jpg', 0, 1, '78000.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 10:41:03', '2019-11-05 11:09:02'),
(53, 'product 93', '', '', '', '', '', '', '', 7, 6, 'catalog/baru/download (8).jpg', 0, 1, '190.0000', 0, 9, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 10:47:35', '2019-11-05 13:00:46'),
(54, 'product 94', '', '', '', '', '', '', '', 11, 6, 'catalog/baru/download (15).jpg', 0, 1, '1.3050', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 10:53:05', '2019-11-05 10:58:38'),
(55, 'product 95', '', '', '', '', '', '', '', 2300, 6, 'catalog/baru/download (2).jpg', 0, 1, '23.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 10:55:05', '2019-11-05 11:01:59'),
(56, 'product 96', '', '', '', '', '', '', '', 98, 6, 'catalog/baru/download (3).jpg', 0, 1, '19.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 10:56:49', '2019-11-05 11:13:42'),
(57, 'product 97', '', '', '', '', '', '', '', 6500, 6, 'catalog/baru/download (4).jpg', 0, 1, '57.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:03:46', '2019-11-05 11:04:16'),
(58, 'product 98', '', '', '', '', '', '', '', 86, 6, 'catalog/baru/download (5).jpg', 0, 1, '98.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:06:29', '2019-11-05 11:09:52'),
(59, 'product 99', '', '', '', '', '', '', '', 43, 6, 'catalog/download (6).jpg', 0, 1, '120.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:08:08', '2019-11-05 11:10:25'),
(60, 'product 99', '', '', '', '', '', '', '', 85, 6, 'catalog/baru/download (10).jpg', 0, 1, '112.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:13:09', '2019-11-05 11:15:01'),
(61, 'product 100', '', '', '', '', '', '', '', 14, 6, 'catalog/baru/download (11).jpg', 0, 1, '231.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:17:14', '2019-11-05 11:17:14'),
(62, 'product 101', '', '', '', '', '', '', '', 27, 6, 'catalog/baru/download (13).jpg', 0, 1, '315.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:19:06', '2019-11-05 11:19:06'),
(63, 'product 102', '', '', '', '', '', '', '', 81, 6, 'catalog/baru/images (3).jpg', 0, 1, '32.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:22:05', '2019-11-05 11:22:05'),
(64, 'product 103', '', '', '', '', '', '', '', 16, 6, 'catalog/baru/images (2).jpg', 0, 1, '210.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:23:23', '2019-11-05 11:24:12'),
(65, 'product 104', '', '', '', '', '', '', '', 654, 6, 'catalog/baru/images.png', 0, 1, '28.0000', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:25:38', '2019-11-05 11:27:15'),
(66, 'product 105', '', '', '', '', '', '', '', 4, 6, 'catalog/baru/images (8).jpg', 0, 1, '3.8700', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 11:59:55', '2019-11-05 11:59:55'),
(67, 'product 106', '', '', '', '', '', '', '', 8, 6, 'catalog/baru/images (7).jpg', 0, 1, '1.2800', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 12:03:31', '2019-11-05 12:03:31'),
(68, 'product 107', '', '', '', '', '', '', '', 14, 6, 'catalog/download (17).jpg', 0, 1, '13.5400', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 12:35:41', '2019-11-05 12:41:26'),
(69, 'product 108', '', '', '', '', '', '', '', 12, 6, 'catalog/download (18).jpg', 0, 1, '18.7600', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 12:37:42', '2019-11-05 12:43:52'),
(70, 'product 109', '', '', '', '', '', '', '', 7, 6, 'catalog/download (19).jpg', 0, 1, '18.2390', 0, 0, '2019-11-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-11-05 12:40:01', '2019-11-05 12:42:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_attribute`
--

CREATE TABLE `tbl_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_attribute`
--

INSERT INTO `tbl_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 4, 1, '8gb'),
(47, 2, 1, '4'),
(43, 2, 1, '1'),
(42, 3, 1, '100mhz'),
(47, 4, 1, '16GB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_description`
--

CREATE TABLE `tbl_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_description`
--

INSERT INTO `tbl_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 1, 'Apple EarPods', '&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;Designed by Apple&lt;br&gt;Deeper, richer bass tones&lt;br&gt;Greater protection from sweat and water&lt;br&gt;Control music and video playback&lt;br&gt;Answer and end calls&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;font-family: OpenSansBold;&quot;&gt;Compatibility Information&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;The remote and mic are supported by all models of iPod, iPhone, and iPad (not all models support volume up/down functions). Audio is supported by all iPod models.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;Requires software version 1.0.3 for iPod nano (4th generation), 2.0.1 for iPod classic (120GB), and 2.2 or later for iPod touch (2nd generation).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;font-family: OpenSansBold;&quot;&gt;iPhone Models&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 6s&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 6s Plus&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 6&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 6 Plus&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone SE&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 5s&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 5c&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPhone 5&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;font-family: OpenSansBold;&quot;&gt;iPad Models&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad Pro 10.5-inch&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad Pro 12.9-inch (2nd Generation)&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad Pro 12.9-inch (1st Generation)&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad Pro 9.7-inch&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad mini 4&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad mini 3&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad mini 2&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad mini&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad Air 2&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPad Air&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;font-family: OpenSansBold;&quot;&gt;iPod Models&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPod touch 6th Generation&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPod touch 5th Generation&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPod nano 7th Generation&lt;/span&gt;&lt;br style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;&lt;span style=&quot;color: rgb(67, 68, 68); font-family: OpenSansRegular;&quot;&gt;iPod shuffle 4th Generation&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple EarPods All Variant', '', ''),
(50, 1, 'bucket hat', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 28px; white-space: pre-wrap; background-color: rgb(248, 249, 250);&quot;&gt;accept unit or custom purchases, and happy shopping&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'creatif bucket hat ', '', ''),
(51, 1, 'sneaker', '&lt;p&gt;Adidas no. 36 37 38 39 40&lt;/p&gt;', '', 'sneakesrs adidas 90', '', ''),
(52, 1, 'Tunnic Dress', '&lt;p&gt;Real Pict&lt;/p&gt;', '', 'Tunnic All Size', '', ''),
(53, 1, 'Hoodie', '&lt;p&gt;bahan baby tery&lt;/p&gt;', '', 'hoodie ', '', ''),
(54, 1, 'H&amp;M senaker man', 'sneakers import size 37,38,39,40,41', '', 'h&amp;m', '', ''),
(55, 1, 'Ramen', '&lt;p&gt;Ramen instant All Variant&lt;/p&gt;', '', 'Japanesse Food', '', ''),
(56, 1, 'Mie Ayam Cak nun', 'mudah dimasak, halal, murah :v', '', 'Mie', '', ''),
(57, 1, 'sate maranggi', '&lt;p&gt;Fresh Frozen Food&lt;/p&gt;', '', 'Rasa sesuai pesanan', '', ''),
(58, 1, 'Gamis Syar\'i Madinah', '&lt;p&gt;Syar\'i&amp;nbsp; tersedia warna marron, dustty, baby pink, hitam , dll&lt;/p&gt;&lt;p&gt;. Bahan adem&lt;/p&gt;', '', 'BaJu', '', ''),
(59, 1, 'Long Jumpsuit ', '&lt;p&gt;warna hitam, abu, putih dan&amp;nbsp;&lt;/p&gt;&lt;p&gt;bahannya adem&lt;/p&gt;', '', 'baju', '', ''),
(60, 1, 'Tupperware Lunck Box + Bag handmade', 'kedap udara, tahan panas, tersedia warna hijau, biru, ungu dan pink', '', 'tupperware', '', ''),
(61, 1, '1 Set Tupperware Toples Mint Variant', '&lt;p&gt;dibuat dari bahan yang ramah lingkungan dan mudah dibersikan, tersedia warna hijau, biru. ungu, merah, dan orange&lt;/p&gt;', '', 'toples', '', ''),
(62, 1, 'Headset Gaming Pro', 'tersedia warna biru-hitam, hijau-hitam, dan kuning-hitam', '', 'headset', '', ''),
(63, 1, 'Bucket Hat Sweety', '&lt;p&gt;bahan kanvas, dan tersedia berbagai macam design lainnya&lt;/p&gt;', '', 'hat', '', ''),
(64, 1, 'Sweet Hoodie', '&lt;p&gt;Bahan cotton Combad, dan tersedia warna orange, hitam dan putih&lt;/p&gt;', '', 'hoodie', '', ''),
(65, 1, 'Burger ', 'Fresh Frozen Food', '', 'berbagai macam topping', '', ''),
(66, 1, 'Easy Mouse Shoes', '&lt;p&gt;merek fashion, limited edition, hanya tersedia warna hitam-kuning dan hitam hijau&lt;/p&gt;', '', 'shoes', '', ''),
(67, 1, 'Unitey Shoes Woman', '&lt;p&gt;hanya tersedia warna putih dengan ukuran 36,37,38, dan 39&lt;/p&gt;', '', 'Shoes', '', ''),
(68, 1, 'HP 15-dw0008ca', '&lt;p&gt;HP&lt;/p&gt;&lt;p&gt;Touchscreen&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'laptop', '', ''),
(69, 1, 'Lenovo Thinkpad X1', '&lt;p&gt;Lenovo&lt;/p&gt;&lt;p&gt;Extreme Gen 1&lt;/p&gt;', '', 'lenovo', '', ''),
(70, 1, 'HP Pavilion  14-ce0505sa', '&lt;p&gt;HP Pavilion&amp;nbsp;&lt;/p&gt;&lt;p&gt;14 inchi&lt;/p&gt;&lt;p&gt;intel core i7 gen 8&lt;/p&gt;', '', 'hp', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_discount`
--

CREATE TABLE `tbl_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_discount`
--

INSERT INTO `tbl_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(455, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(454, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(453, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_filter`
--

CREATE TABLE `tbl_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_image`
--

CREATE TABLE `tbl_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_image`
--

INSERT INTO `tbl_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2378, 47, 'catalog/demo/hp_2.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2380, 41, 'catalog/demo/imac_2.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(2384, 43, 'catalog/demo/macbook_3.jpg', 0),
(2383, 43, 'catalog/demo/macbook_2.jpg', 0),
(2390, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(2389, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(2393, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(2392, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(2405, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(2404, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2377, 47, 'catalog/demo/hp_3.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2379, 41, 'catalog/demo/imac_3.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(2382, 43, 'catalog/demo/macbook_4.jpg', 0),
(2381, 43, 'catalog/demo/macbook_5.jpg', 0),
(2388, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(2391, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(2403, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(2402, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2376, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2375, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2374, 42, 'catalog/demo/hp_1.jpg', 0),
(2373, 42, 'catalog/demo/canon_logo.jpg', 0),
(2372, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_option`
--

CREATE TABLE `tbl_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_option`
--

INSERT INTO `tbl_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(222, 42, 7, '', 1),
(219, 42, 8, '2011-02-20', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(226, 30, 5, '', 1),
(223, 42, 2, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_option_value`
--

CREATE TABLE `tbl_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_option_value`
--

INSERT INTO `tbl_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_recurring`
--

CREATE TABLE `tbl_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_related`
--

CREATE TABLE `tbl_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_related`
--

INSERT INTO `tbl_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_reward`
--

CREATE TABLE `tbl_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_reward`
--

INSERT INTO `tbl_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(550, 42, 1, 100),
(551, 47, 1, 300),
(379, 28, 1, 400),
(552, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(554, 44, 1, 700),
(555, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_special`
--

CREATE TABLE `tbl_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_special`
--

INSERT INTO `tbl_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(444, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_to_category`
--

CREATE TABLE `tbl_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_to_category`
--

INSERT INTO `tbl_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(41, 46),
(42, 20),
(42, 28),
(42, 59),
(43, 18),
(43, 20),
(43, 46),
(44, 18),
(44, 20),
(44, 46),
(45, 18),
(45, 46),
(46, 18),
(46, 20),
(46, 45),
(47, 18),
(47, 20),
(47, 45),
(48, 20),
(48, 34),
(49, 57),
(50, 59),
(51, 61),
(52, 60),
(53, 60),
(54, 61),
(55, 62),
(56, 62),
(58, 60),
(59, 60),
(60, 62),
(61, 62),
(62, 59),
(63, 59),
(64, 60),
(65, 62),
(66, 61),
(67, 61),
(68, 18),
(68, 45),
(69, 18),
(69, 45),
(70, 18),
(70, 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_to_download`
--

CREATE TABLE `tbl_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_to_layout`
--

CREATE TABLE `tbl_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_to_layout`
--

INSERT INTO `tbl_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(47, 0, 0),
(41, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product_to_store`
--

CREATE TABLE `tbl_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_product_to_store`
--

INSERT INTO `tbl_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_recurring`
--

CREATE TABLE `tbl_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_recurring_description`
--

CREATE TABLE `tbl_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return`
--

CREATE TABLE `tbl_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return_action`
--

CREATE TABLE `tbl_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_return_action`
--

INSERT INTO `tbl_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return_history`
--

CREATE TABLE `tbl_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return_reason`
--

CREATE TABLE `tbl_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_return_reason`
--

INSERT INTO `tbl_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_return_status`
--

CREATE TABLE `tbl_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_return_status`
--

INSERT INTO `tbl_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_seo_url`
--

CREATE TABLE `tbl_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_seo_url`
--

INSERT INTO `tbl_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(836, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(848, 0, 1, 'product_id=42', 'test'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(781, 0, 1, 'category_id=36', 'test2'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(858, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(780, 0, 1, 'category_id=35', 'test1'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(790, 0, 1, 'category_id=43', 'test11'),
(791, 0, 1, 'category_id=44', 'test12'),
(792, 0, 1, 'category_id=47', 'test15'),
(793, 0, 1, 'category_id=48', 'test16'),
(794, 0, 1, 'category_id=49', 'test17'),
(795, 0, 1, 'category_id=50', 'test18'),
(796, 0, 1, 'category_id=51', 'test19'),
(797, 0, 1, 'category_id=52', 'test20'),
(798, 0, 1, 'category_id=58', 'test25'),
(799, 0, 1, 'category_id=53', 'test21'),
(800, 0, 1, 'category_id=54', 'test22'),
(801, 0, 1, 'category_id=55', 'test23'),
(802, 0, 1, 'category_id=56', 'test24'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(849, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(851, 0, 1, 'product_id=43', 'macbook'),
(853, 0, 1, 'product_id=44', 'macbook-air'),
(854, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(857, 0, 1, 'product_id=46', 'sony-vaio'),
(850, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_session`
--

CREATE TABLE `tbl_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_session`
--

INSERT INTO `tbl_session` (`session_id`, `data`, `expire`) VALUES
('3ec75d9620c4ea74853300eeaa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"RfUNBUGJOa\",\"device\":\"desktop\",\"user_id\":\"1\",\"user_token\":\"X7dvJjsem5hQ7ymnp3l82URjNQgF7oRl\"}', '2019-11-05 14:12:03'),
('5ed0e5cea8191083c1a5722deb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"device\":\"desktop\"}', '2019-11-08 04:51:57'),
('bbe629f37f0065c7f42a608f9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"device\":\"desktop\"}', '2019-11-06 03:36:04'),
('f2b9e38727a7b3913ac9aa353b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"device\":\"desktop\"}', '2019-12-29 15:16:21'),
('f2ef841f7deaa0a5c12e4aeba0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"device\":\"desktop\",\"user_id\":\"1\",\"user_token\":\"4BkAH57pR2Wswzs6cKLj5Fffx6D2h3nY\"}', '2019-11-20 06:18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(701, 0, 'config', 'config_mail_smtp_password', '', 0),
(702, 0, 'config', 'config_mail_smtp_port', '25', 0),
(703, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(704, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(705, 0, 'config', 'config_mail_alert_email', '', 0),
(706, 0, 'config', 'config_maintenance', '0', 0),
(707, 0, 'config', 'config_seo_url', '0', 0),
(708, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(666, 0, 'config', 'config_customer_online', '0', 0),
(667, 0, 'config', 'config_customer_activity', '0', 0),
(668, 0, 'config', 'config_customer_search', '0', 0),
(669, 0, 'config', 'config_customer_group_id', '1', 0),
(670, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(671, 0, 'config', 'config_customer_price', '0', 0),
(672, 0, 'config', 'config_login_attempts', '5', 0),
(673, 0, 'config', 'config_account_id', '3', 0),
(674, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(675, 0, 'config', 'config_cart_weight', '1', 0),
(676, 0, 'config', 'config_checkout_guest', '1', 0),
(677, 0, 'config', 'config_checkout_id', '5', 0),
(678, 0, 'config', 'config_order_status_id', '1', 0),
(679, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(680, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(681, 0, 'config', 'config_fraud_status_id', '7', 0),
(682, 0, 'config', 'config_api_id', '1', 0),
(683, 0, 'config', 'config_stock_display', '0', 0),
(684, 0, 'config', 'config_stock_warning', '0', 0),
(685, 0, 'config', 'config_stock_checkout', '0', 0),
(686, 0, 'config', 'config_affiliate_group_id', '1', 0),
(687, 0, 'config', 'config_affiliate_approval', '0', 0),
(688, 0, 'config', 'config_affiliate_auto', '0', 0),
(689, 0, 'config', 'config_affiliate_commission', '5', 0),
(690, 0, 'config', 'config_affiliate_id', '4', 0),
(691, 0, 'config', 'config_return_id', '0', 0),
(692, 0, 'config', 'config_return_status_id', '2', 0),
(693, 0, 'config', 'config_captcha', '', 0),
(694, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(695, 0, 'config', 'config_logo', 'catalog/download.jpg', 0),
(696, 0, 'config', 'config_icon', 'catalog/baru/download (1).jpg', 0),
(697, 0, 'config', 'config_mail_engine', 'mail', 0),
(698, 0, 'config', 'config_mail_parameter', '', 0),
(699, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(700, 0, 'config', 'config_mail_smtp_username', '', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(7983, 0, 'theme_default', 'theme_default_image_category_width', '270', 0),
(7984, 0, 'theme_default', 'theme_default_image_category_height', '270', 0),
(7985, 0, 'theme_default', 'theme_default_image_thumb_width', '150', 0),
(7986, 0, 'theme_default', 'theme_default_image_thumb_height', '150', 0),
(7987, 0, 'theme_default', 'theme_default_image_popup_width', '1000', 0),
(7988, 0, 'theme_default', 'theme_default_image_popup_height', '1000', 0),
(7989, 0, 'theme_default', 'theme_default_image_product_width', '270', 0),
(7990, 0, 'theme_default', 'theme_default_image_product_height', '270', 0),
(7991, 0, 'theme_default', 'theme_default_image_additional_width', '270', 0),
(7992, 0, 'theme_default', 'theme_default_image_additional_height', '270', 0),
(7993, 0, 'theme_default', 'theme_default_image_related_width', '270', 0),
(7994, 0, 'theme_default', 'theme_default_image_related_height', '270', 0),
(7995, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(7996, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(7997, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(7998, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(7999, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(8000, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(8001, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(199, 0, 'developer', 'developer_theme', '1', 0),
(200, 0, 'developer', 'developer_sass', '1', 0),
(7979, 0, 'theme_default', 'theme_default_directory', 'so-ladaz', 0),
(8002, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(7980, 0, 'theme_default', 'theme_default_status', '1', 0),
(7982, 0, 'theme_default', 'theme_default_product_description_length', '350', 0),
(7981, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(717, 0, 'config', 'config_error_display', '1', 0),
(718, 0, 'config', 'config_error_log', '1', 0),
(719, 0, 'config', 'config_error_filename', 'error.log', 0),
(714, 0, 'config', 'config_file_max_size', '300000', 0),
(715, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(716, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(713, 0, 'config', 'config_encryption', 'JfLJCjcnJMKgzdZIkdlrOvyb8jKUcxHWweFSXC7axPc78P5VZYDxHG3eg1xzSdfdE1RaOFrzCtMvzt7RcJPXdxSlnPKvdw8neFGUF0PlFc9zVZdH85js5CRVOEuj0S4H1W7p2Fb1mXeTKdVRlAW0h6unu5e3Sx4SlrRwtwysARp63XDSGnKGF97X4dGvxJksyUk384OnpJ62Fx8DkSFHLjuts1nJ0lX36n7q26anezkDlTNzTMYE73v9p7O4RTyIhwvDaN6TcVlzvecyA5cGHruXzQID3y5hoviOSf1rpztmzHnHDmExibVmaYw2DdIztVrsM39DUExD0J6ZWq3EKlna2iKmGWsBvdCKUV4wz102SiBm5OTheewto0rzuQZk0rzwNzPyfWlkrBd6dhYVVKda1iZshYieY6QqpbLhUHxSwywvzKjQvTKD36NpiMHlbqLK85obCFw4QzqhA6TA7bBTLjH2BqtkHpISoyI84bMi1CMijP1HWdCyy39ovuhbqxNTdRObp10WbGuPHNPT565aqcq2oXx6Jkjfijr8OTMx3ZQReoaDtjerle0MW2zb14awgZRVtRMOLbPlsdORNWEtdMF0wzFv1YRgoJwEvIG8OfHJl9qoBMnv5ZPqJWgdPZ15qaxFzfiOxw5TsVuoKy8mFbESQrK4EJ2HmbYSVJhSL9Q8SNsJEfssG7eE9TXaytET4D7vnWIQgAiwq5IguORnEyBZ5lVGRHmHWrU6w3MEfukxiRruNM4qv6Px8X4cjLwiB9IFQU9mUqesVCR1TPeRDNPA7i4pNMQXI8ijfr2LXPcDx5TctOesxuBjtkDRI9KZmrv0U7jk7C3bQBPw8TCH9i3edJb3zirg6bz4FmkdDuqfCsqHRI21MFBAcdbnj77cC7apIpc99YBcAOlti99n4yborgey4Aa7bc6PebhydVnJmNxwlctF2P5jc9yzTjCwPow7Fm4fGuKkdufHPyY0fMuDXQpTgx7wC8lmCwt4wtGsfJF7AC1LpKSYG46R', 0),
(712, 0, 'config', 'config_shared', '0', 0),
(711, 0, 'config', 'config_password', '1', 0),
(710, 0, 'config', 'config_secure', '0', 0),
(709, 0, 'config', 'config_compression', '0', 0),
(665, 0, 'config', 'config_tax_customer', 'shipping', 0),
(664, 0, 'config', 'config_tax_default', 'shipping', 0),
(645, 0, 'config', 'config_fax', '', 0),
(646, 0, 'config', 'config_image', 'catalog/smiles_joy_sadness_118714_1920x1080.jpg', 0),
(663, 0, 'config', 'config_tax', '1', 0),
(662, 0, 'config', 'config_voucher_max', '1000', 0),
(661, 0, 'config', 'config_voucher_min', '1', 0),
(660, 0, 'config', 'config_review_guest', '1', 0),
(659, 0, 'config', 'config_review_status', '1', 0),
(658, 0, 'config', 'config_limit_admin', '20', 0),
(657, 0, 'config', 'config_product_count', '1', 0),
(656, 0, 'config', 'config_weight_class_id', '1', 0),
(655, 0, 'config', 'config_length_class_id', '1', 0),
(654, 0, 'config', 'config_currency_auto', '1', 0),
(653, 0, 'config', 'config_currency', 'USD', 0),
(652, 0, 'config', 'config_admin_language', 'en-gb', 0),
(651, 0, 'config', 'config_language', 'en-gb', 0),
(650, 0, 'config', 'config_zone_id', '3563', 0),
(649, 0, 'config', 'config_country_id', '222', 0),
(648, 0, 'config', 'config_comment', '', 0),
(647, 0, 'config', 'config_open', '', 0),
(636, 0, 'config', 'config_meta_keyword', 'hamburksn uangmu karena 35% dari keuntungan akan kami sumbangkan untuk melunasi hutang negara', 0),
(644, 0, 'config', 'config_telephone', '085811667903', 0),
(642, 0, 'config', 'config_geocode', '17211', 0),
(643, 0, 'config', 'config_email', 'nsiti7621@gmail.com', 0),
(641, 0, 'config', 'config_address', 'Kp. Bali Tanggul NO.58 RT/18 RW/13  Desa Segara Makmur Kec. Tarumajaya Kab. Bekasi', 0),
(640, 0, 'config', 'config_owner', 'siti nurhayati', 0),
(639, 0, 'config', 'config_name', 'SATOE.DKI', 0),
(637, 0, 'config', 'config_theme', 'default', 0),
(638, 0, 'config', 'config_layout_id', '2', 0),
(635, 0, 'config', 'config_meta_description', 'My Store', 0),
(634, 0, 'config', 'config_meta_title', 'SATOE.DKI', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_shipping_courier`
--

CREATE TABLE `tbl_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_shipping_courier`
--

INSERT INTO `tbl_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_simple_blog_category`
--

CREATE TABLE `tbl_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL,
  `image` text NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `external_link` text NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_simple_blog_category`
--

INSERT INTO `tbl_simple_blog_category` (`simple_blog_category_id`, `image`, `parent_id`, `top`, `blog_category_column`, `external_link`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, '', 0, 0, 0, '', 10, 0, 1, '2017-08-25 14:18:26', '2017-11-16 16:18:41'),
(2, '', 0, 0, 0, '', 10, 0, 1, '2017-08-25 14:18:51', '2017-11-16 16:18:55'),
(3, '', 0, 0, 0, '', 10, 0, 1, '2017-08-25 14:19:12', '2017-11-16 16:19:10'),
(4, '', 0, 0, 0, '', 10, 0, 1, '2017-08-25 14:19:25', '2017-11-16 16:19:23'),
(5, '', 0, 0, 0, '', 10, 0, 1, '2017-08-25 14:19:52', '2017-11-16 16:19:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_simple_blog_category_description`
--

CREATE TABLE `tbl_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_simple_blog_category_description`
--

INSERT INTO `tbl_simple_blog_category_description` (`simple_blog_category_description_id`, `simple_blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(16, 1, 1, 'Demo Category 1', '', '', ''),
(15, 1, 2, 'Demo Category 1 ', '', '', ''),
(18, 2, 1, 'Demo Category 2', '', '', ''),
(17, 2, 2, 'Demo Category 2', '', '', ''),
(20, 3, 1, 'Demo Category 3', '', '', ''),
(19, 3, 2, 'Demo Category 3', '', '', ''),
(22, 4, 1, 'Demo Category 4', '', '', ''),
(21, 4, 2, 'Demo Category 4', '', '', ''),
(24, 5, 1, 'Demo Category 5', '', '', ''),
(23, 5, 2, 'Demo Category 5', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soconfig`
--

CREATE TABLE `tbl_soconfig` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_soconfig`
--

INSERT INTO `tbl_soconfig` (`id`, `store_id`, `key`, `value`, `serialized`) VALUES
(71317, 0, 'soconfig_pages_store', '{\"catalog_col_position\":\"outside\",\"catalog_col_type\":\"default\",\"catalog_sidebar_sticky\":\"disable\",\"product_catalog_refine\":\"2\",\"catalog_refine_number\":\"5\",\"lstimg_cate_status\":\"1\",\"product_catalog_mode\":\"grid-4\",\"discount_status\":\"1\",\"countdown_status\":\"1\",\"rating_status\":\"1\",\"product_order\":\"1\",\"card_gallery\":\"2\",\"placeholder_status\":\"1\",\"placeholder_img\":\"\",\"desktop_addcart_position\":\"left\",\"quick_status\":\"1\",\"desktop_addcart_status\":\"1\",\"desktop_wishlist_status\":\"1\",\"desktop_Compare_status\":\"1\",\"radio_style\":\"1\",\"thumbnails_position\":\"bottom\",\"product_enablezoom\":\"1\",\"product_enablesizechart\":\"0\",\"tabs_position\":\"2\",\"product_enableshowmore\":\"0\",\"product_enableshipping\":\"1\",\"product_contentshipping\":{\"2\":\"\",\"1\":\"\"},\"product_page_button\":\"1\",\"product_socialshare\":{\"2\":\"&lt;div class=&quot;title-share&quot;&gt;Share This&lt;\\/div&gt;\\r\\n&lt;div class=&quot;wrap-content&quot;&gt;&lt;div class=&quot;addthis_inline_share_toolbox&quot;&gt;&lt;\\/div&gt;&lt;\\/div&gt;\",\"1\":\"&lt;div class=&quot;title-share&quot;&gt;Share This&lt;\\/div&gt;\\r\\n&lt;div class=&quot;wrap-content&quot;&gt;&lt;div class=&quot;addthis_inline_share_toolbox&quot;&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"related_status\":\"1\",\"product_related_column_lg\":\"5\",\"product_related_column_md\":\"3\",\"product_related_column_sm\":\"3\",\"product_related_column_xs\":\"1\",\"comingsoon_imglogo\":\"\",\"comingsoon_title\":{\"2\":\"\",\"1\":\"\"},\"comingsoon_date\":\"\",\"comingsoon_content\":{\"2\":\"\",\"1\":\"\"}}', 1),
(71314, 0, 'soconfig_general_store', '{\"typelayout\":\"1\",\"themecolor\":\"orange\",\"toppanel_status\":\"1\",\"toppanel_type\":\"3\",\"phone_status\":\"1\",\"contact_number\":{\"2\":\"&lt;b&gt;Hotline:&lt;\\/b&gt;(801) 2345 - 6789\",\"1\":\"&lt;b&gt;Hotline:&lt;\\/b&gt;(801) 2345 - 6789\"},\"welcome_message_status\":\"1\",\"welcome_message\":{\"2\":\"&lt;div class=&quot;list-msg&quot;&gt; &lt;div class=&quot;list-msg--item&quot;&gt;&lt;label class=&quot;label-msg&quot;&gt;This week&lt;\\/label&gt; &lt;a href=&quot;#&quot;&gt;Sale special too good gear category&lt;\\/a&gt;&lt;\\/div&gt; &lt;div class=&quot;list-msg--item&quot;&gt;&lt;label class=&quot;label-msg&quot;&gt;Tomorrow&lt;\\/label&gt; &lt;a href=&quot;#&quot;&gt;Laten ipsum dolor sit amet.In gravida pellentesque&lt;\\/a&gt;&lt;\\/div&gt; &lt;\\/div&gt;\",\"1\":\"&lt;div class=&quot;list-msg&quot;&gt; &lt;div class=&quot;list-msg--item&quot;&gt;&lt;label class=&quot;label-msg&quot;&gt;This week&lt;\\/label&gt; &lt;a href=&quot;#&quot;&gt;Sale special too good gear category&lt;\\/a&gt;&lt;\\/div&gt; &lt;div class=&quot;list-msg--item&quot;&gt;&lt;label class=&quot;label-msg&quot;&gt;Tomorrow&lt;\\/label&gt; &lt;a href=&quot;#&quot;&gt;Laten ipsum dolor sit amet.In gravida pellentesque&lt;\\/a&gt;&lt;\\/div&gt; &lt;\\/div&gt;\"},\"checkout_status\":\"1\",\"lang_status\":\"1\",\"preloader\":\"1\",\"preloader_animation\":\"line\",\"backtop\":\"1\",\"imgpayment_status\":\"1\",\"imgpayment\":\"catalog\\/demo\\/payment\\/payment-4.png\",\"copyright\":\"So Ladaz \\u00a9 2016 - {year} Opencart Themes Demo Store. All Rights Reserved. Designed by &lt;a href=&quot;http:\\/\\/www.opencartworks.com\\/&quot; target=&quot;_blank&quot;&gt;OpenCartWorks.Com&lt;\\/a&gt;\",\"typeheader\":\"1\",\"typefooter\":\"1\",\"type_banner\":\"7\",\"img_sizechart\":\"\"}', 1),
(71318, 0, 'soconfig_fonts_store', '{\"body_status\":\"google\",\"normal_body\":\"Arial, Helvetica, sans-serif\",\"url_body\":\"https:\\/\\/fonts.googleapis.com\\/css?family=Roboto:300,400,400i,500,500i,700\",\"family_body\":\"\'Roboto\', sans-serif\",\"selector_body\":\"body, #wrapper\",\"menu_status\":\"standard\",\"normal_menu\":\"inherit\",\"url_menu\":\"https:\\/\\/fonts.googleapis.com\\/css?family=Roboto:300,400,500,700\",\"family_menu\":\"\'Roboto\', sans-serif\",\"selector_menu\":\"\",\"heading_status\":\"standard\",\"normal_heading\":\"inherit\",\"url_heading\":\"\",\"family_heading\":\"\",\"selector_heading\":\"\"}', 1),
(71319, 0, 'soconfig_social_store', '{\"social_sidebar\":\"0\",\"social_fb_status\":\"0\",\"facebook\":\"magentech\",\"social_twitter_status\":\"0\",\"twitter\":\"smartaddons\",\"social_custom_status\":\"0\",\"video_code\":{\"2\":\"&lt;h3&gt;Guide Create Social Wickgets&amp;nbsp;&lt;\\/h3&gt;\\r\\n&lt;p&gt;You please login admin, then select\\r\\n&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;Extension tab &amp;gt; Modules &amp;gt; Theme Control Panel &amp;gt; Tab Social Wickgets:&lt;\\/span&gt;\\r\\nPlease enter data content&lt;\\/p&gt;\",\"1\":\"&lt;h3&gt;Guide Create Social Wickgets&amp;nbsp;&lt;\\/h3&gt;\\r\\n&lt;p&gt;You please login admin, then select\\r\\n&lt;span style=&quot;font-weight: bold;&quot;&gt;&amp;nbsp;Extension tab &amp;gt; Modules &amp;gt; Theme Control Panel &amp;gt; Tab Social Wickgets:&lt;\\/span&gt;\\r\\nPlease enter data content&lt;\\/p&gt;\"}}', 1),
(71320, 0, 'soconfig_custom_store', '{\"cssinput_status\":\"0\",\"cssinput_content\":\"\",\"cssfile_status\":\"0\",\"cssfile_url\":[\"catalog\\/view\\/theme\\/so-revo\\/css\\/custom.css\"],\"jsinput_status\":\"0\",\"jsinput_content\":\"\"}', 1),
(71315, 0, 'soconfig_advanced_store', '{\"name_color\":\"yellow\",\"theme_color\":\"#ff9600\",\"scsscompile\":\"0\",\"scssformat\":\"Nested\",\"compileMutiColor\":\"0\",\"cssminify\":\"0\",\"cssExclude\":[{\"namecss\":\"catalog\\/view\\/javascript\\/font-awesome\\/css\\/font-awesome.min.css\"}],\"jsminify\":\"0\"}', 1),
(71316, 0, 'soconfig_layout_store', '{\"layoutstyle\":\"full\",\"theme_bgcolor\":\"#7a167a\",\"pattern\":\"6\",\"contentbg\":\"\",\"content_bg_mode\":\"repeat\",\"content_attachment\":\"scroll\"}', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_statistics`
--

CREATE TABLE `tbl_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_statistics`
--

INSERT INTO `tbl_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_stock_status`
--

CREATE TABLE `tbl_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_stock_status`
--

INSERT INTO `tbl_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_store`
--

CREATE TABLE `tbl_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tax_class`
--

CREATE TABLE `tbl_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_tax_class`
--

INSERT INTO `tbl_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tax_rate`
--

CREATE TABLE `tbl_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_tax_rate`
--

INSERT INTO `tbl_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tax_rate_to_customer_group`
--

CREATE TABLE `tbl_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_tax_rate_to_customer_group`
--

INSERT INTO `tbl_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tax_rule`
--

CREATE TABLE `tbl_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_tax_rule`
--

INSERT INTO `tbl_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_translation`
--

CREATE TABLE `tbl_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_upload`
--

CREATE TABLE `tbl_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'siti', 'b4a9195885a5325e65b92a4dff6a89454fb46092', '58NDF3bDE', 'siti', 'nurhayati', 'nsiti7621@gmail.com', 'catalog/download.jpg', 'C236rcH1OMnWmTSPUh9Ka5mPcqC8LokDHPO14Xdn', '::1', 1, '2019-11-05 08:21:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_group`
--

CREATE TABLE `tbl_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_user_group`
--

INSERT INTO `tbl_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/modification_editor\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/simple_blog\",\"extension\\/module\\/simple_blog\\/article\",\"extension\\/module\\/simple_blog\\/author\",\"extension\\/module\\/simple_blog\\/category\",\"extension\\/module\\/simple_blog\\/comment\",\"extension\\/module\\/simple_blog\\/install\",\"extension\\/module\\/simple_blog\\/report\",\"extension\\/module\\/simple_blog_category\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/so_basic_products\",\"extension\\/module\\/so_html_content\",\"extension\\/module\\/so_latest_blog\",\"extension\\/module\\/soconfig\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/soconfig\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/modification_editor\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/simple_blog\",\"extension\\/module\\/simple_blog\\/article\",\"extension\\/module\\/simple_blog\\/author\",\"extension\\/module\\/simple_blog\\/category\",\"extension\\/module\\/simple_blog\\/comment\",\"extension\\/module\\/simple_blog\\/install\",\"extension\\/module\\/simple_blog\\/report\",\"extension\\/module\\/simple_blog_category\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/so_basic_products\",\"extension\\/module\\/so_html_content\",\"extension\\/module\\/so_latest_blog\",\"extension\\/module\\/soconfig\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/soconfig\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_voucher_history`
--

CREATE TABLE `tbl_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_voucher_theme`
--

CREATE TABLE `tbl_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_voucher_theme`
--

INSERT INTO `tbl_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_voucher_theme_description`
--

CREATE TABLE `tbl_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_voucher_theme_description`
--

INSERT INTO `tbl_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_weight_class`
--

CREATE TABLE `tbl_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_weight_class`
--

INSERT INTO `tbl_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_weight_class_description`
--

CREATE TABLE `tbl_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_weight_class_description`
--

INSERT INTO `tbl_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_zone`
--

CREATE TABLE `tbl_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_zone`
--

INSERT INTO `tbl_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `tbl_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `tbl_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_zone_to_geo_zone`
--

CREATE TABLE `tbl_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_zone_to_geo_zone`
--

INSERT INTO `tbl_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `tbl_api`
--
ALTER TABLE `tbl_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indeks untuk tabel `tbl_api_ip`
--
ALTER TABLE `tbl_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indeks untuk tabel `tbl_api_session`
--
ALTER TABLE `tbl_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indeks untuk tabel `tbl_attribute`
--
ALTER TABLE `tbl_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indeks untuk tabel `tbl_attribute_description`
--
ALTER TABLE `tbl_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_attribute_group`
--
ALTER TABLE `tbl_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indeks untuk tabel `tbl_attribute_group_description`
--
ALTER TABLE `tbl_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indeks untuk tabel `tbl_banner_image`
--
ALTER TABLE `tbl_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indeks untuk tabel `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indeks untuk tabel `tbl_category_description`
--
ALTER TABLE `tbl_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indeks untuk tabel `tbl_category_filter`
--
ALTER TABLE `tbl_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indeks untuk tabel `tbl_category_path`
--
ALTER TABLE `tbl_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indeks untuk tabel `tbl_category_to_layout`
--
ALTER TABLE `tbl_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_category_to_store`
--
ALTER TABLE `tbl_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indeks untuk tabel `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indeks untuk tabel `tbl_coupon_category`
--
ALTER TABLE `tbl_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indeks untuk tabel `tbl_coupon_history`
--
ALTER TABLE `tbl_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indeks untuk tabel `tbl_coupon_product`
--
ALTER TABLE `tbl_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indeks untuk tabel `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `tbl_customer_activity`
--
ALTER TABLE `tbl_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indeks untuk tabel `tbl_customer_affiliate`
--
ALTER TABLE `tbl_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `tbl_customer_approval`
--
ALTER TABLE `tbl_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indeks untuk tabel `tbl_customer_group`
--
ALTER TABLE `tbl_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indeks untuk tabel `tbl_customer_group_description`
--
ALTER TABLE `tbl_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_customer_history`
--
ALTER TABLE `tbl_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indeks untuk tabel `tbl_customer_ip`
--
ALTER TABLE `tbl_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indeks untuk tabel `tbl_customer_login`
--
ALTER TABLE `tbl_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indeks untuk tabel `tbl_customer_online`
--
ALTER TABLE `tbl_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indeks untuk tabel `tbl_customer_reward`
--
ALTER TABLE `tbl_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indeks untuk tabel `tbl_customer_search`
--
ALTER TABLE `tbl_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indeks untuk tabel `tbl_customer_transaction`
--
ALTER TABLE `tbl_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indeks untuk tabel `tbl_customer_wishlist`
--
ALTER TABLE `tbl_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indeks untuk tabel `tbl_custom_field`
--
ALTER TABLE `tbl_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indeks untuk tabel `tbl_custom_field_customer_group`
--
ALTER TABLE `tbl_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indeks untuk tabel `tbl_custom_field_description`
--
ALTER TABLE `tbl_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_custom_field_value`
--
ALTER TABLE `tbl_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indeks untuk tabel `tbl_custom_field_value_description`
--
ALTER TABLE `tbl_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indeks untuk tabel `tbl_download_description`
--
ALTER TABLE `tbl_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indeks untuk tabel `tbl_extension`
--
ALTER TABLE `tbl_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indeks untuk tabel `tbl_extension_install`
--
ALTER TABLE `tbl_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indeks untuk tabel `tbl_extension_path`
--
ALTER TABLE `tbl_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indeks untuk tabel `tbl_filter`
--
ALTER TABLE `tbl_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indeks untuk tabel `tbl_filter_description`
--
ALTER TABLE `tbl_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_filter_group`
--
ALTER TABLE `tbl_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indeks untuk tabel `tbl_filter_group_description`
--
ALTER TABLE `tbl_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_geo_zone`
--
ALTER TABLE `tbl_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indeks untuk tabel `tbl_googleshopping_category`
--
ALTER TABLE `tbl_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_googleshopping_product`
--
ALTER TABLE `tbl_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_googleshopping_product_status`
--
ALTER TABLE `tbl_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Indeks untuk tabel `tbl_googleshopping_product_target`
--
ALTER TABLE `tbl_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Indeks untuk tabel `tbl_googleshopping_target`
--
ALTER TABLE `tbl_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indeks untuk tabel `tbl_information`
--
ALTER TABLE `tbl_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indeks untuk tabel `tbl_information_description`
--
ALTER TABLE `tbl_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_information_to_layout`
--
ALTER TABLE `tbl_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_information_to_store`
--
ALTER TABLE `tbl_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indeks untuk tabel `tbl_layout`
--
ALTER TABLE `tbl_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indeks untuk tabel `tbl_layout_module`
--
ALTER TABLE `tbl_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indeks untuk tabel `tbl_layout_route`
--
ALTER TABLE `tbl_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indeks untuk tabel `tbl_length_class`
--
ALTER TABLE `tbl_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indeks untuk tabel `tbl_length_class_description`
--
ALTER TABLE `tbl_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indeks untuk tabel `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indeks untuk tabel `tbl_manufacturer_to_store`
--
ALTER TABLE `tbl_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_marketing`
--
ALTER TABLE `tbl_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indeks untuk tabel `tbl_modification`
--
ALTER TABLE `tbl_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indeks untuk tabel `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indeks untuk tabel `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indeks untuk tabel `tbl_option_description`
--
ALTER TABLE `tbl_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_option_value`
--
ALTER TABLE `tbl_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indeks untuk tabel `tbl_option_value_description`
--
ALTER TABLE `tbl_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `tbl_order_history`
--
ALTER TABLE `tbl_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indeks untuk tabel `tbl_order_option`
--
ALTER TABLE `tbl_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indeks untuk tabel `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `tbl_order_recurring`
--
ALTER TABLE `tbl_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indeks untuk tabel `tbl_order_recurring_transaction`
--
ALTER TABLE `tbl_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indeks untuk tabel `tbl_order_shipment`
--
ALTER TABLE `tbl_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indeks untuk tabel `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_order_total`
--
ALTER TABLE `tbl_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `tbl_order_voucher`
--
ALTER TABLE `tbl_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `tbl_product_attribute`
--
ALTER TABLE `tbl_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_product_description`
--
ALTER TABLE `tbl_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indeks untuk tabel `tbl_product_discount`
--
ALTER TABLE `tbl_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `tbl_product_filter`
--
ALTER TABLE `tbl_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indeks untuk tabel `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `tbl_product_option`
--
ALTER TABLE `tbl_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indeks untuk tabel `tbl_product_option_value`
--
ALTER TABLE `tbl_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indeks untuk tabel `tbl_product_recurring`
--
ALTER TABLE `tbl_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indeks untuk tabel `tbl_product_related`
--
ALTER TABLE `tbl_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indeks untuk tabel `tbl_product_reward`
--
ALTER TABLE `tbl_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indeks untuk tabel `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `tbl_product_to_category`
--
ALTER TABLE `tbl_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `tbl_product_to_download`
--
ALTER TABLE `tbl_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indeks untuk tabel `tbl_product_to_layout`
--
ALTER TABLE `tbl_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_product_to_store`
--
ALTER TABLE `tbl_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indeks untuk tabel `tbl_recurring`
--
ALTER TABLE `tbl_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indeks untuk tabel `tbl_recurring_description`
--
ALTER TABLE `tbl_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indeks untuk tabel `tbl_return_action`
--
ALTER TABLE `tbl_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_return_history`
--
ALTER TABLE `tbl_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indeks untuk tabel `tbl_return_reason`
--
ALTER TABLE `tbl_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_return_status`
--
ALTER TABLE `tbl_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `tbl_seo_url`
--
ALTER TABLE `tbl_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indeks untuk tabel `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indeks untuk tabel `tbl_shipping_courier`
--
ALTER TABLE `tbl_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indeks untuk tabel `tbl_simple_blog_category`
--
ALTER TABLE `tbl_simple_blog_category`
  ADD PRIMARY KEY (`simple_blog_category_id`);

--
-- Indeks untuk tabel `tbl_simple_blog_category_description`
--
ALTER TABLE `tbl_simple_blog_category_description`
  ADD PRIMARY KEY (`simple_blog_category_description_id`);

--
-- Indeks untuk tabel `tbl_soconfig`
--
ALTER TABLE `tbl_soconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_statistics`
--
ALTER TABLE `tbl_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indeks untuk tabel `tbl_stock_status`
--
ALTER TABLE `tbl_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_store`
--
ALTER TABLE `tbl_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indeks untuk tabel `tbl_tax_class`
--
ALTER TABLE `tbl_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indeks untuk tabel `tbl_tax_rate`
--
ALTER TABLE `tbl_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indeks untuk tabel `tbl_tax_rate_to_customer_group`
--
ALTER TABLE `tbl_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indeks untuk tabel `tbl_tax_rule`
--
ALTER TABLE `tbl_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indeks untuk tabel `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indeks untuk tabel `tbl_translation`
--
ALTER TABLE `tbl_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indeks untuk tabel `tbl_upload`
--
ALTER TABLE `tbl_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indeks untuk tabel `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indeks untuk tabel `tbl_voucher_history`
--
ALTER TABLE `tbl_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indeks untuk tabel `tbl_voucher_theme`
--
ALTER TABLE `tbl_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indeks untuk tabel `tbl_voucher_theme_description`
--
ALTER TABLE `tbl_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_weight_class`
--
ALTER TABLE `tbl_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indeks untuk tabel `tbl_weight_class_description`
--
ALTER TABLE `tbl_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indeks untuk tabel `tbl_zone`
--
ALTER TABLE `tbl_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indeks untuk tabel `tbl_zone_to_geo_zone`
--
ALTER TABLE `tbl_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_api`
--
ALTER TABLE `tbl_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_api_ip`
--
ALTER TABLE `tbl_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_api_session`
--
ALTER TABLE `tbl_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_attribute`
--
ALTER TABLE `tbl_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_attribute_group`
--
ALTER TABLE `tbl_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_banner_image`
--
ALTER TABLE `tbl_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT untuk tabel `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_coupon_history`
--
ALTER TABLE `tbl_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_coupon_product`
--
ALTER TABLE `tbl_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_activity`
--
ALTER TABLE `tbl_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_approval`
--
ALTER TABLE `tbl_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_group`
--
ALTER TABLE `tbl_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_history`
--
ALTER TABLE `tbl_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_ip`
--
ALTER TABLE `tbl_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_login`
--
ALTER TABLE `tbl_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_reward`
--
ALTER TABLE `tbl_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_search`
--
ALTER TABLE `tbl_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer_transaction`
--
ALTER TABLE `tbl_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_custom_field`
--
ALTER TABLE `tbl_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_custom_field_value`
--
ALTER TABLE `tbl_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tbl_extension`
--
ALTER TABLE `tbl_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `tbl_extension_install`
--
ALTER TABLE `tbl_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_extension_path`
--
ALTER TABLE `tbl_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1935;

--
-- AUTO_INCREMENT untuk tabel `tbl_filter`
--
ALTER TABLE `tbl_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_filter_group`
--
ALTER TABLE `tbl_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_geo_zone`
--
ALTER TABLE `tbl_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_googleshopping_product`
--
ALTER TABLE `tbl_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_information`
--
ALTER TABLE `tbl_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_layout`
--
ALTER TABLE `tbl_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_layout_module`
--
ALTER TABLE `tbl_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4128;

--
-- AUTO_INCREMENT untuk tabel `tbl_layout_route`
--
ALTER TABLE `tbl_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `tbl_length_class`
--
ALTER TABLE `tbl_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_marketing`
--
ALTER TABLE `tbl_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_modification`
--
ALTER TABLE `tbl_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT untuk tabel `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_option_value`
--
ALTER TABLE `tbl_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_history`
--
ALTER TABLE `tbl_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_option`
--
ALTER TABLE `tbl_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_recurring`
--
ALTER TABLE `tbl_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_recurring_transaction`
--
ALTER TABLE `tbl_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_shipment`
--
ALTER TABLE `tbl_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_total`
--
ALTER TABLE `tbl_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_voucher`
--
ALTER TABLE `tbl_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `tbl_product_discount`
--
ALTER TABLE `tbl_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT untuk tabel `tbl_product_image`
--
ALTER TABLE `tbl_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2406;

--
-- AUTO_INCREMENT untuk tabel `tbl_product_option`
--
ALTER TABLE `tbl_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT untuk tabel `tbl_product_option_value`
--
ALTER TABLE `tbl_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_product_reward`
--
ALTER TABLE `tbl_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT untuk tabel `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT untuk tabel `tbl_recurring`
--
ALTER TABLE `tbl_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_return_action`
--
ALTER TABLE `tbl_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_return_history`
--
ALTER TABLE `tbl_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_return_reason`
--
ALTER TABLE `tbl_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_return_status`
--
ALTER TABLE `tbl_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_seo_url`
--
ALTER TABLE `tbl_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=859;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8003;

--
-- AUTO_INCREMENT untuk tabel `tbl_simple_blog_category`
--
ALTER TABLE `tbl_simple_blog_category`
  MODIFY `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_simple_blog_category_description`
--
ALTER TABLE `tbl_simple_blog_category_description`
  MODIFY `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_soconfig`
--
ALTER TABLE `tbl_soconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71321;

--
-- AUTO_INCREMENT untuk tabel `tbl_statistics`
--
ALTER TABLE `tbl_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_stock_status`
--
ALTER TABLE `tbl_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_store`
--
ALTER TABLE `tbl_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tax_class`
--
ALTER TABLE `tbl_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_tax_rate`
--
ALTER TABLE `tbl_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `tbl_tax_rule`
--
ALTER TABLE `tbl_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_translation`
--
ALTER TABLE `tbl_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_upload`
--
ALTER TABLE `tbl_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_voucher_history`
--
ALTER TABLE `tbl_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_voucher_theme`
--
ALTER TABLE `tbl_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_weight_class`
--
ALTER TABLE `tbl_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_zone`
--
ALTER TABLE `tbl_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT untuk tabel `tbl_zone_to_geo_zone`
--
ALTER TABLE `tbl_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
