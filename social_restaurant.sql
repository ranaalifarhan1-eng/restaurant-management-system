-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2020 at 12:22 PM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_currencies`
--

CREATE TABLE `tbl_admin_currencies` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `symbol` varchar(25) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_currencies`
--

INSERT INTO `tbl_admin_currencies` (`id`, `country`, `currency`, `code`, `symbol`, `del_status`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 'Live'),
(2, 'America', 'Dollars', 'USD', '$', 'Live'),
(3, 'Afghanistan', 'Afghanis', 'AF', '؋', 'Live'),
(4, 'Argentina', 'Pesos', 'ARS', '$', 'Live'),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 'Live'),
(6, 'Australia', 'Dollars', 'AUD', '$', 'Live'),
(7, 'Azerbaijan', 'New Manats', 'AZ', 'ман', 'Live'),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 'Live'),
(9, 'Barbados', 'Dollars', 'BBD', '$', 'Live'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 'Live'),
(11, 'Belgium', 'Euro', 'EUR', '€', 'Live'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 'Live'),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 'Live'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', 'Live'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 'Live'),
(16, 'Botswana', 'Pula\'s', 'BWP', 'P', 'Live'),
(17, 'Bulgaria', 'Leva', 'BG', 'лв', 'Live'),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 'Live'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 'Live'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 'Live'),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 'Live'),
(22, 'Canada', 'Dollars', 'CAD', '$', 'Live'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 'Live'),
(24, 'Chile', 'Pesos', 'CLP', '$', 'Live'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 'Live'),
(26, 'Colombia', 'Pesos', 'COP', '$', 'Live'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 'Live'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 'Live'),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 'Live'),
(30, 'Cyprus', 'Euro', 'EUR', '€', 'Live'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 'Live'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 'Live'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 'Live'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 'Live'),
(35, 'Egypt', 'Pounds', 'EGP', '£', 'Live'),
(36, 'El Salvador', 'Colones', 'SVC', '$', 'Live'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 'Live'),
(38, 'Euro', 'Euro', 'EUR', '€', 'Live'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 'Live'),
(40, 'Fiji', 'Dollars', 'FJD', '$', 'Live'),
(41, 'France', 'Euro', 'EUR', '€', 'Live'),
(42, 'Ghana', 'Cedis', 'GHC', '¢', 'Live'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 'Live'),
(44, 'Greece', 'Euro', 'EUR', '€', 'Live'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 'Live'),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 'Live'),
(47, 'Guyana', 'Dollars', 'GYD', '$', 'Live'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 'Live'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 'Live'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 'Live'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 'Live'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 'Live'),
(53, 'India', 'Rupees', 'INR', 'Rp', 'Live'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 'Live'),
(55, 'Iran', 'Rials', 'IRR', '﷼', 'Live'),
(56, 'Ireland', 'Euro', 'EUR', '€', 'Live'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 'Live'),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 'Live'),
(59, 'Italy', 'Euro', 'EUR', '€', 'Live'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 'Live'),
(61, 'Japan', 'Yen', 'JPY', '¥', 'Live'),
(62, 'Jersey', 'Pounds', 'JEP', '£', 'Live'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 'Live'),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 'Live'),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 'Live'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 'Live'),
(67, 'Laos', 'Kips', 'LAK', '₭', 'Live'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 'Live'),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 'Live'),
(70, 'Liberia', 'Dollars', 'LRD', '$', 'Live'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 'Live'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 'Live'),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 'Live'),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 'Live'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 'Live'),
(76, 'Malta', 'Euro', 'EUR', '€', 'Live'),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 'Live'),
(78, 'Mexico', 'Pesos', 'MX', '$', 'Live'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 'Live'),
(80, 'Mozambique', 'Meticais', 'MZ', 'MT', 'Live'),
(81, 'Namibia', 'Dollars', 'NAD', '$', 'Live'),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 'Live'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 'Live'),
(84, 'Netherlands', 'Euro', 'EUR', '€', 'Live'),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 'Live'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 'Live'),
(87, 'Nigeria', 'Nairas', 'NG', '₦', 'Live'),
(88, 'North Korea', 'Won', 'KPW', '₩', 'Live'),
(89, 'Norway', 'Krone', 'NOK', 'kr', 'Live'),
(90, 'Oman', 'Rials', 'OMR', '﷼', 'Live'),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 'Live'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 'Live'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 'Live'),
(94, 'Peru', 'Nuevos Soles', 'PE', 'S/.', 'Live'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 'Live'),
(96, 'Poland', 'Zlotych', 'PL', 'zł', 'Live'),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 'Live'),
(98, 'Romania', 'New Lei', 'RO', 'lei', 'Live'),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 'Live'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 'Live'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 'Live'),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 'Live'),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 'Live'),
(104, 'Singapore', 'Dollars', 'SGD', '$', 'Live'),
(105, 'Slovenia', 'Euro', 'EUR', '€', 'Live'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 'Live'),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 'Live'),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 'Live'),
(109, 'South Korea', 'Won', 'KRW', '₩', 'Live'),
(110, 'Spain', 'Euro', 'EUR', '€', 'Live'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 'Live'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 'Live'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 'Live'),
(114, 'Suriname', 'Dollars', 'SRD', '$', 'Live'),
(115, 'Syria', 'Pounds', 'SYP', '£', 'Live'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 'Live'),
(117, 'Thailand', 'Baht', 'THB', '฿', 'Live'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 'Live'),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 'Live'),
(120, 'Turkey', 'Liras', 'TRL', '£', 'Live'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 'Live'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 'Live'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 'Live'),
(124, 'United States of America', 'Dollars', 'USD', '$', 'Live'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', 'Live'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 'Live'),
(127, 'Vatican City', 'Euro', 'EUR', '€', 'Live'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 'Live'),
(129, 'Vietnam', 'Dong', 'VND', '₫', 'Live'),
(130, 'Yemen', 'Rials', 'YER', '﷼', 'Live'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 'Live'),
(132, 'Bangladesh', 'Bangladeshi Taka', 'BDT', '৳', 'Live'),
(133, 'Kuwait ', 'KWD', 'KWD', 'KWD', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_user_menus`
--

CREATE TABLE `tbl_admin_user_menus` (
  `id` int(10) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `controller_name` varchar(50) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin_user_menus`
--

INSERT INTO `tbl_admin_user_menus` (`id`, `menu_name`, `controller_name`, `del_status`) VALUES
(1, 'Sale', 'Sale', 'Live'),
(2, 'Purchase', 'Purchase', 'Live'),
(3, 'Inventory', 'Inventory', 'Live'),
(4, 'Waste', 'Waste', 'Live'),
(6, 'Expense', 'Expense', 'Live'),
(7, 'Report', 'Report', 'Live'),
(8, 'Dashboard', 'Dashboard', 'Live'),
(9, 'Master', 'Master', 'Live'),
(10, 'User', 'User', 'Live'),
(11, 'Supplier Payment', 'SupplierPayment', 'Live'),
(13, 'Inventory Adjustment', 'Inventory_adjustment', 'Live'),
(14, 'Short Message Service', 'Short_message_service', 'Live'),
(15, 'Customer Due Receive', 'Customer_due_receive', 'Live'),
(17, 'Bar', 'Bar', 'Live'),
(18, 'Kitchen', 'Kitchen', 'Live'),
(19, 'Waiter', 'Waiter', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `reference_no`, `employee_id`, `date`, `in_time`, `out_time`, `note`, `user_id`, `company_id`, `del_status`) VALUES
(1, '000001', NULL, '2018-12-12', '20:16:56', '23:30:00', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int(10) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `outlet_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `currency`, `timezone`, `date_format`, `outlet_id`) VALUES
(1, '৳', 'Asia/Dhaka', 'd/m/Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live',
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `phone`, `email`, `address`, `gst_number`, `area_id`, `user_id`, `company_id`, `del_status`, `date_of_birth`, `date_of_anniversary`) VALUES
(1, 'Walk-in Customer', '', NULL, NULL, NULL, 0, 1, 1, 'Live', NULL, NULL),
(2, 'test', '1231312', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(3, 'test', '1231312', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(4, 'test', '1231312', '', '', '', NULL, 1, 1, 'Live', '1970-01-01', '1970-01-01'),
(5, 'Ali Farhan', '03234644578', 'rana.alifarhan1@gmail.com', 'M1-71 Eden Tower, 82-E/1 Main Boulevard, Gulberg 3', '', NULL, 1, 1, 'Live', '2020-02-13', '2020-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_due_receives`
--

CREATE TABLE `tbl_customer_due_receives` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_date` date DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_items`
--

CREATE TABLE `tbl_expense_items` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus`
--

CREATE TABLE `tbl_food_menus` (
  `id` int(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sale_price` float(10,2) DEFAULT NULL,
  `tax_information` text DEFAULT NULL,
  `vat_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `veg_item` varchar(50) DEFAULT 'Veg No',
  `beverage_item` varchar(50) DEFAULT 'Beverage No',
  `bar_item` varchar(50) DEFAULT 'Bar No',
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus`
--

INSERT INTO `tbl_food_menus` (`id`, `code`, `name`, `category_id`, `description`, `sale_price`, `tax_information`, `vat_id`, `user_id`, `company_id`, `photo`, `veg_item`, `beverage_item`, `bar_item`, `del_status`) VALUES
(1, '001', 'Kbab Tika', 1, '', 500.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(2, '002', 'Zinger', 2, '', 149.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(3, '003', 'Chicken Malai Boti', 9, '', 795.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(4, '004', 'Chicken Piece', 9, '', 295.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(5, '005', 'Chicken Kabab', 9, '1', 695.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(6, '006', 'Chicken Gola Kabab', 9, '', 795.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(7, '007', 'Chicken Reshmi Kabab', 9, '', 795.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(8, '008', 'Chicken Sikandri Kabab', 9, '', 895.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(9, '009', 'Chicken Achar Boti', 9, '', 695.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(10, '010', 'Kastoori Boti', 9, '', 895.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(11, '011', 'Chicken Cheese Kabab', 9, '', 845.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(12, '012', 'Rijstani Tikka Boti', 9, '', 699.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(13, '012', 'Rijstani Tikka Boti', 9, '', 699.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Deleted'),
(14, '014', 'Mutton Kabab', 9, '1', 1345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(15, '015', 'Beef Kabab', 9, '', 750.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(16, '016', 'Grill Chops', 9, '', 1395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(17, '017', 'BBQ Platter Half', 9, '', 1999.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(18, '018', 'BBQ Platter Full', 9, '', 3970.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(19, '019', 'Whole Chicken Grill', 9, '', 995.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(20, '018', 'Fries', 7, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(21, '020', 'Whole Fish Grill', 9, '', 1195.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(22, '020', 'Shahi Kulfi', 19, '', 100.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(23, '022', 'Fish Tikka', 9, '', 895.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(24, '023', 'Firni', 19, '', 120.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(25, '022', 'Fires Masala Fries', 7, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(26, '024', 'Tawa Chicken', 10, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(27, '025', 'Garma garam gulab Jaman', 19, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(28, '026', 'Spicy honeywings', 7, '', 280.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(29, '028', 'Gajar ka Halwa', 19, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(30, '027', 'Tawa Chicken Makhani', 10, '', 375.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(31, '031', 'Paithe ka Halwa', 19, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(32, '031', 'Hara Brain Masala', 10, '', 745.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(33, '032', 'Shakar Kandi ki firni', 19, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(34, '031', 'Chicken Cheese Naan', 7, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(35, '028', 'Chicken Boneless Handi (Half)', 11, '', 625.00, '[]', NULL, 1, 1, NULL, 'Veg Yes', 'Beverage No', 'Bar No', 'Live'),
(36, '035', 'Taka Tak Special', 10, '', 945.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(37, '037', 'Tawa Mutton Chops', 10, '', 1345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(38, '038', 'Tawa Mutton Keema', 10, '', 845.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(39, '037', 'Chicken Boneless Handi Full', 11, '', 1075.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(40, '036', 'Cold Coffee with icecream Vanilla', 18, '', 380.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(41, '039', 'Tawa Chicken Qeema', 10, '', 445.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(42, '041', 'Qeema Wala Naan', 7, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(43, '041', 'Cold Coffee with icecream Caramel', 18, '', 380.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(44, '042', 'Tawa Kabab Masala', 10, '', 675.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(45, '044', 'Cold Coffee with icecream Chocolate', 18, '', 380.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(46, '043', 'Shahi Special Naan', 7, '', 495.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(47, '046', 'Cappucino', 18, '', 350.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(48, '043', 'Chicken Mukhani Handi (Half)', 11, '', 625.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(49, '048', 'Coffee Latte', 18, '', 320.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(50, '047', 'Achari Naan', 7, '', 120.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(51, '049', 'Vegetable Rice', 13, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(52, '050', 'Mocha Clino', 18, '', 360.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(53, '051', 'Nutella Naan', 7, '', 240.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(54, '052', 'Chicken Fried Rice', 13, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(55, '041', 'Chicken Mukhani Handi (Full)', 11, '', 1150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(56, '053', 'Black Tea', 18, '', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(57, '054', 'Finger Fish', 7, '', 645.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(58, '057', 'Green Tea', 18, '', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(59, '057', 'Chicken Egg Fried Rice', 13, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(60, '057', 'Chicken Rajistani Handi (Half)', 11, '', 625.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(61, '058', 'Chicken Corn Soup', 7, '', 275.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(62, '059', 'Pink Tea', 18, '', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(63, '063', 'Plain Tea', 18, '', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(64, '061', 'Masala Rice', 13, '', 425.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(65, '063', 'Hot and Sour Soup', 7, '', 275.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(66, '057', 'Chicken Rajistani Handi (Full)', 11, '', 1220.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(67, '066', 'Add Extra Flavour', 18, '', 70.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(68, '066', '19 B-Soup', 7, '', 275.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(69, '066', 'Chicken Manchurian', 13, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(70, '069', 'Mineral Water', 17, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(71, '070', 'Chicken Shashlik', 13, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(72, '061', 'Chicken Achari Handi (Half)', 11, '', 645.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(73, '069', 'Chicken Karahi (Half)', 8, '', 495.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(74, '071', 'Can', 17, '', 95.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(75, '072', 'Chicken Chowmein', 13, '', 565.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(76, '075', 'Soft Drink', 17, '', 75.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(77, '074', 'chicken Karahi (Full)', 8, '', 990.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(78, '073', 'Chicken Achari  Handi (Full)', 11, '', 1145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(79, '078', 'Mint Margarita', 17, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(80, '076', 'Lahori Rohu Fish', 14, '', 1100.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(81, '079', 'Chicken Makhani Karahi (half)', 8, '', 495.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(82, '079', 'Chicken Madrasi Handi (Half)', 11, '', 625.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(83, '080', 'Pinacolada', 17, '', 220.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(84, '081', 'Amber Jack Bam Fish', 14, '', 1195.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(85, '084', 'Peach Chiller', 17, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(86, '082', 'Chicken Makhani Karahi (Full)', 8, '', 9990.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(87, '079', 'Chicken Madrasi Handi (Half)', 11, '', 625.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(88, '085', 'Grilled Fish', 14, '', 1245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(89, '086', 'Ocean Blue Chiller', 17, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(90, '089', 'Tawa Fish', 13, '', 1045.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(91, '085', 'Chieck Madrasi Handi', 11, '1', 1145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(92, '087', 'chicken Special Karahi (Full)', 8, '', 1050.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(93, '093', 'Cheese Naan', 15, '', 150.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(94, '093', 'Blue Berry Smoothie', 17, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(95, '093', 'chicken Black Pepper Karahi (Half)', 8, '', 525.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(96, '094', 'Garlic Naan', 15, '', 95.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(97, '095', 'Strawberry Smoothie', 17, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(98, '093', 'Chicken Mughlai Handi (Half)', 11, '', 745.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(99, '098', 'Banana Smoothie', 17, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(100, '097', 'Special Kulcha', 15, '', 100.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(101, '098', 'chicken Black Pepper Karahi (Full)', 8, '', 1050.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(102, '101', 'Oreo Choclate Shake', 17, '', 295.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(103, '101', 'Tandoori Paratta', 15, '', 110.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(104, '103', 'Vanilla Chocolate Shake', 17, '', 295.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(105, '102', 'chicken Special Lazat Karahi (Full)', 8, '', 1250.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(106, '106', 'Fresh Lime', 17, '', 165.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage Yes', 'Bar No', 'Live'),
(107, '105', 'Chicken Cheese Handi (Half)', 11, '', 625.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(108, '104', 'Sada Naan', 15, '', 45.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(109, '106', 'Mutton Karahi (Half)', 8, '', 950.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(110, '107', 'Mint Raita', 16, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(111, '101', 'Chicken Cheese Handi (Full)', 11, '', 1175.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(112, '111', 'Sada Roti', 15, '', 40.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(113, '111', 'Zira Raita', 16, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(114, '113', 'Rogni Naan', 15, '', 65.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(115, '111', 'Mutton karahi (Full)', 8, '', 1900.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(116, '108', 'B.B.Q Handi', 11, '', 675.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(117, '115', 'Kalwanji Naan', 15, '', 95.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(118, '117', 'Pudina Chatni', 16, '', 125.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(119, '118', 'Shahi Naan', 15, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(120, '117', 'B.B.Q Handi Full', 11, '', 1215.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(121, '119', 'Kachumar Salad', 16, '', 195.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(122, '117', 'Mutton Special karahi (Full)', 8, '', 2195.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(123, '122', 'Fresh Salad', 16, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(124, '123', 'Mutton Special karahi (Half)', 8, '', 1100.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(125, '124', 'Russian Salad', 16, '', 385.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(126, '122', 'Mutton Boneless Handi (Half)', 11, '', 945.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(127, '125', 'Muttin Black Pepper Karahi (Half)', 8, '', 995.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(128, '126', 'Diwani Handi', 12, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(129, '127', 'Mutton Boneless Handi (Full)', 11, '', 1900.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(130, '129', 'Daal Mash', 12, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(131, '128', 'Mutton Black Pepper karahi (Full)', 8, '', 1995.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(132, '130', 'Mutton Mukhani Handi (Half)', 11, '', 995.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(133, '132', 'Mutton Joint karahi (Full)', 8, '', 2900.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(134, '132', 'Achari Alo', 12, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(135, '127', 'Mutton Mukahani Handi (Full)', 11, '', 2000.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(136, '135', 'Baryani', 12, '', 495.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(137, '137', 'Shahi Palalo', 12, '', 495.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(138, '137', 'Mutton Rajistani Handi (Half)', 11, '', 975.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(139, '138', 'Palak Panir', 12, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(140, '137', 'Mutton Cheese Handi (Half)', 11, '', 1050.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(141, '139', 'Mutton Rajistani Handi (Full)', 11, '', 1945.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(142, '141', 'Bangain Ka Bhurta', 12, '', 325.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(143, '141', 'Mutton Cheese Handi (Full)', 11, '', 2100.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(144, '144', 'Mutton Madrasi handi Half', 11, '', 990.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(145, '144', 'Mutton Mughlai Handi (Half)', 11, '', 1120.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(146, '144', 'Mutton Achari Handi (half)', 11, '', 945.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(147, '146', 'Mutton Madrasi handi full', 11, '', 1995.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(148, '146', 'Mutton Mughlai Handi (Full)', 11, '', 2245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(149, '147', 'Mutton Achari Handi (Full)', 11, '', 1900.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(150, '150', 'Puri', 20, '', 110.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Bev No', 'Bar No', 'Live'),
(151, '151', 'Sada Qatlama', 20, '', 200.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(152, '152', 'Chicken Kachori', 20, '', 200.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(153, '153', 'Seet Pura', 20, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(154, '154', 'Halwa', 20, '', 120.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(155, '155', 'Anda Chane', 20, '', 245.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(156, '156', 'Murgh Chane', 20, '', 345.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(157, '157', 'Beef Nehari', 20, '', 395.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(158, '158', 'Mutton Paya', 20, '', 495.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(159, '159', 'Sada Paratha', 20, '', 100.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(160, '160', 'Chicken Cheese Paratha', 20, '', 399.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(161, '161', 'Sada Naan', 20, '', 45.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(162, '162', 'Lassi', 20, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(163, '163', 'Chai', 20, '', 145.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live'),
(164, '164', 'Coffee', 20, '', 195.00, '[]', NULL, 1, 1, NULL, 'Veg No', 'Beverage No', 'Bar No', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_ingredients`
--

CREATE TABLE `tbl_food_menus_ingredients` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_food_menus_ingredients`
--

INSERT INTO `tbl_food_menus_ingredients` (`id`, `ingredient_id`, `consumption`, `food_menu_id`, `user_id`, `company_id`, `del_status`) VALUES
(1, 1, 1.00, 1, 1, 1, 'Live'),
(2, 1, 1.00, 2, 1, 1, 'Live'),
(3, 1, 1.00, 3, 1, 1, 'Live'),
(4, 1, 1.00, 4, 1, 1, 'Live'),
(5, 1, 1.00, 5, 1, 1, 'Live'),
(6, 1, 1.00, 6, 1, 1, 'Live'),
(7, 1, 1.00, 7, 1, 1, 'Live'),
(8, 1, 1.00, 8, 1, 1, 'Live'),
(9, 1, 1.00, 9, 1, 1, 'Live'),
(10, 1, 1.00, 10, 1, 1, 'Live'),
(11, 1, 1.00, 11, 1, 1, 'Live'),
(12, 1, 1.00, 12, 1, 1, 'Live'),
(13, 1, 1.00, 13, 1, 1, 'Live'),
(14, 1, 1.00, 14, 1, 1, 'Live'),
(15, 1, 1.00, 15, 1, 1, 'Live'),
(16, 1, 1.00, 16, 1, 1, 'Live'),
(17, 1, 1.00, 17, 1, 1, 'Live'),
(18, 1, 1.00, 18, 1, 1, 'Live'),
(19, 1, 1.00, 19, 1, 1, 'Live'),
(20, 1, 1.00, 20, 1, 1, 'Live'),
(21, 1, 1.00, 21, 1, 1, 'Live'),
(22, 1, 1.00, 22, 1, 1, 'Live'),
(23, 1, 1.00, 23, 1, 1, 'Live'),
(24, 1, 1.00, 24, 1, 1, 'Live'),
(25, 1, 1.00, 25, 1, 1, 'Live'),
(26, 1, 1.00, 26, 1, 1, 'Live'),
(27, 1, 1.00, 27, 1, 1, 'Live'),
(28, 1, 1.00, 28, 1, 1, 'Live'),
(29, 1, 1.00, 29, 1, 1, 'Live'),
(30, 1, 1.00, 30, 1, 1, 'Live'),
(31, 1, 1.00, 31, 1, 1, 'Live'),
(32, 1, 1.00, 32, 1, 1, 'Live'),
(33, 1, 1.00, 33, 1, 1, 'Live'),
(34, 1, 1.00, 34, 1, 1, 'Live'),
(35, 1, 1.00, 35, 1, 1, 'Live'),
(36, 1, 1.00, 36, 1, 1, 'Live'),
(37, 1, 1.00, 37, 1, 1, 'Live'),
(38, 1, 1.00, 38, 1, 1, 'Live'),
(39, 1, 1.00, 39, 1, 1, 'Live'),
(40, 1, 1.00, 40, 1, 1, 'Live'),
(41, 1, 1.00, 41, 1, 1, 'Live'),
(42, 1, 1.00, 42, 1, 1, 'Live'),
(43, 1, 1.00, 43, 1, 1, 'Live'),
(44, 1, 1.00, 44, 1, 1, 'Live'),
(45, 1, 1.00, 45, 1, 1, 'Live'),
(46, 1, 1.00, 46, 1, 1, 'Live'),
(47, 1, 1.00, 47, 1, 1, 'Live'),
(48, 1, 1.00, 48, 1, 1, 'Live'),
(49, 1, 1.00, 49, 1, 1, 'Live'),
(50, 1, 1.00, 50, 1, 1, 'Live'),
(51, 1, 1.00, 51, 1, 1, 'Live'),
(52, 1, 1.00, 52, 1, 1, 'Live'),
(53, 1, 1.00, 53, 1, 1, 'Live'),
(54, 1, 1.00, 54, 1, 1, 'Live'),
(55, 1, 1.00, 55, 1, 1, 'Live'),
(56, 1, 1.00, 56, 1, 1, 'Live'),
(57, 1, 1.00, 57, 1, 1, 'Live'),
(58, 1, 1.00, 58, 1, 1, 'Live'),
(59, 1, 1.00, 59, 1, 1, 'Live'),
(60, 1, 1.00, 60, 1, 1, 'Live'),
(61, 1, 1.00, 61, 1, 1, 'Live'),
(62, 1, 1.00, 62, 1, 1, 'Live'),
(63, 1, 1.00, 63, 1, 1, 'Live'),
(64, 1, 1.00, 64, 1, 1, 'Live'),
(65, 1, 1.00, 65, 1, 1, 'Live'),
(66, 1, 1.00, 66, 1, 1, 'Live'),
(67, 1, 1.00, 67, 1, 1, 'Live'),
(68, 1, 1.00, 68, 1, 1, 'Live'),
(69, 1, 1.00, 69, 1, 1, 'Live'),
(70, 1, 1.00, 70, 1, 1, 'Live'),
(71, 1, 1.00, 71, 1, 1, 'Live'),
(72, 1, 1.00, 72, 1, 1, 'Live'),
(73, 1, 1.00, 73, 1, 1, 'Live'),
(74, 1, 1.00, 74, 1, 1, 'Live'),
(75, 1, 1.00, 75, 1, 1, 'Live'),
(76, 1, 1.00, 76, 1, 1, 'Live'),
(78, 1, 1.00, 78, 1, 1, 'Live'),
(79, 1, 1.00, 77, 1, 1, 'Live'),
(80, 1, 1.00, 79, 1, 1, 'Live'),
(81, 1, 1.00, 80, 1, 1, 'Live'),
(82, 1, 1.00, 81, 1, 1, 'Live'),
(83, 1, 1.00, 82, 1, 1, 'Live'),
(84, 1, 1.00, 83, 1, 1, 'Live'),
(85, 1, 1.00, 84, 1, 1, 'Live'),
(86, 1, 1.00, 85, 1, 1, 'Live'),
(87, 1, 1.00, 86, 1, 1, 'Live'),
(88, 1, 1.00, 87, 1, 1, 'Live'),
(90, 1, 1.00, 89, 1, 1, 'Live'),
(91, 1, 1.00, 90, 1, 1, 'Live'),
(92, 1, 1.00, 91, 1, 1, 'Live'),
(93, 1, 1.00, 92, 1, 1, 'Live'),
(94, 1, 1.00, 93, 1, 1, 'Live'),
(95, 1, 1.00, 94, 1, 1, 'Live'),
(96, 1, 1.00, 95, 1, 1, 'Live'),
(97, 1, 1.00, 96, 1, 1, 'Live'),
(98, 1, 1.00, 97, 1, 1, 'Live'),
(99, 1, 1.00, 98, 1, 1, 'Live'),
(100, 1, 1.00, 99, 1, 1, 'Live'),
(101, 1, 1.00, 100, 1, 1, 'Live'),
(102, 1, 1.00, 101, 1, 1, 'Live'),
(103, 1, 1.00, 102, 1, 1, 'Live'),
(104, 1, 1.00, 103, 1, 1, 'Live'),
(105, 1, 1.00, 104, 1, 1, 'Live'),
(106, 1, 1.00, 105, 1, 1, 'Live'),
(107, 1, 1.00, 106, 1, 1, 'Live'),
(108, 1, 1.00, 107, 1, 1, 'Live'),
(109, 1, 1.00, 108, 1, 1, 'Live'),
(110, 1, 1.00, 109, 1, 1, 'Live'),
(112, 1, 1.00, 111, 1, 1, 'Live'),
(113, 1, 1.00, 112, 1, 1, 'Live'),
(114, 1, 1.00, 113, 1, 1, 'Live'),
(115, 1, 1.00, 114, 1, 1, 'Live'),
(116, 1, 1.00, 115, 1, 1, 'Live'),
(117, 1, 1.00, 116, 1, 1, 'Live'),
(118, 1, 1.00, 110, 1, 1, 'Live'),
(119, 1, 1.00, 117, 1, 1, 'Live'),
(120, 1, 1.00, 118, 1, 1, 'Live'),
(121, 1, 1.00, 119, 1, 1, 'Live'),
(122, 1, 1.00, 120, 1, 1, 'Live'),
(123, 1, 1.00, 121, 1, 1, 'Live'),
(124, 1, 1.00, 122, 1, 1, 'Live'),
(125, 1, 1.00, 123, 1, 1, 'Live'),
(126, 1, 1.00, 124, 1, 1, 'Live'),
(127, 1, 1.00, 125, 1, 1, 'Live'),
(128, 1, 1.00, 126, 1, 1, 'Live'),
(129, 1, 1.00, 127, 1, 1, 'Live'),
(131, 1, 1.00, 129, 1, 1, 'Live'),
(132, 1, 1.00, 130, 1, 1, 'Live'),
(133, 1, 1.00, 131, 1, 1, 'Live'),
(134, 1, 1.00, 128, 1, 1, 'Live'),
(135, 1, 1.00, 132, 1, 1, 'Live'),
(136, 1, 1.00, 133, 1, 1, 'Live'),
(137, 1, 1.00, 134, 1, 1, 'Live'),
(138, 1, 1.00, 135, 1, 1, 'Live'),
(139, 1, 1.00, 136, 1, 1, 'Live'),
(140, 1, 1.00, 137, 1, 1, 'Live'),
(141, 1, 1.00, 138, 1, 1, 'Live'),
(142, 1, 1.00, 139, 1, 1, 'Live'),
(143, 1, 1.00, 140, 1, 1, 'Live'),
(144, 1, 1.00, 141, 1, 1, 'Live'),
(145, 1, 1.00, 142, 1, 1, 'Live'),
(146, 1, 1.00, 143, 1, 1, 'Live'),
(147, 1, 1.00, 144, 1, 1, 'Live'),
(148, 1, 1.00, 145, 1, 1, 'Live'),
(149, 1, 1.00, 146, 1, 1, 'Live'),
(150, 1, 1.00, 147, 1, 1, 'Live'),
(151, 1, 1.00, 148, 1, 1, 'Live'),
(152, 1, 1.00, 149, 1, 1, 'Live'),
(154, 1, 1.00, 151, 1, 1, 'Live'),
(155, 1, 1.00, 152, 1, 1, 'Live'),
(156, 1, 1.00, 150, 1, 1, 'Live'),
(157, 1, 1.00, 153, 1, 1, 'Live'),
(158, 1, 1.00, 154, 1, 1, 'Live'),
(159, 1, 1.00, 155, 1, 1, 'Live'),
(160, 1, 1.00, 156, 1, 1, 'Live'),
(161, 1, 1.00, 157, 1, 1, 'Live'),
(162, 1, 1.00, 158, 1, 1, 'Live'),
(163, 1, 1.00, 159, 1, 1, 'Live'),
(164, 1, 1.00, 160, 1, 1, 'Live'),
(165, 1, 1.00, 161, 1, 1, 'Live'),
(166, 1, 1.00, 162, 1, 1, 'Live'),
(167, 1, 1.00, 163, 1, 1, 'Live'),
(168, 1, 1.00, 164, 1, 1, 'Live'),
(169, 2, 1.00, 88, 1, 1, 'Live'),
(170, 10, 1.00, 88, 1, 1, 'Live'),
(171, 7, 1.00, 88, 1, 1, 'Live'),
(172, 3, 0.10, 88, 1, 1, 'Live'),
(173, 4, 0.10, 88, 1, 1, 'Live'),
(174, 8, 5.00, 88, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menus_modifiers`
--

CREATE TABLE `tbl_food_menus_modifiers` (
  `id` bigint(50) NOT NULL,
  `modifier_id` int(10) DEFAULT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_menu_categories`
--

CREATE TABLE `tbl_food_menu_categories` (
  `id` int(10) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food_menu_categories`
--

INSERT INTO `tbl_food_menu_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Pizza', '', 1, 1, 'Deleted'),
(2, 'Burger', '', 1, 1, 'Deleted'),
(3, 'Sandwich', '', 1, 1, 'Deleted'),
(4, 'Shawarma', '', 1, 1, 'Deleted'),
(5, 'Platter', '', 1, 1, 'Deleted'),
(6, 'Paratha Roll', '', 1, 1, 'Deleted'),
(7, 'Starter', '', 1, 1, 'Live'),
(8, 'Karahi', '', 1, 1, 'Live'),
(9, 'BBQ', '', 1, 1, 'Live'),
(10, 'Taka Tak', '', 1, 1, 'Live'),
(11, 'Handi', '', 1, 1, 'Live'),
(12, 'Dhaba', '', 1, 1, 'Live'),
(13, 'Chinese', '', 1, 1, 'Live'),
(14, 'Fish', '', 1, 1, 'Live'),
(15, 'Tandoor', '', 1, 1, 'Live'),
(16, 'Raita Salad', '', 1, 1, 'Live'),
(17, 'Beverages', '', 1, 1, 'Live'),
(18, 'Cofee &amp; tea', '', 1, 1, 'Live'),
(19, 'Desert', '', 1, 1, 'Live'),
(20, 'Breakfast', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds`
--

CREATE TABLE `tbl_holds` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `hold_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_payment_date` date DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `token_no` varchar(50) DEFAULT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `sale_time` varchar(15) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) DEFAULT 0,
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '1=new order, 2=cancelled order, 3=invoiced order',
  `sale_vat_objects` text DEFAULT NULL,
  `order_type` tinyint(1) DEFAULT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds`
--

INSERT INTO `tbl_holds` (`id`, `customer_id`, `hold_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `due_payment_date`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `token_no`, `sale_date`, `date_time`, `sale_time`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `sale_vat_objects`, `order_type`, `del_status`) VALUES
(2, '', '1', 3, 3435.00, NULL, NULL, NULL, NULL, NULL, 0.00, 3435.00, NULL, 0, 0.00, 3435.00, 0.00, 0.00, 0.00, '', 'plain', NULL, '2020-02-13', '2020-02-13 17:47:17', '2020-02-13 10:4', 1, 0, 1, 1, '[]', 0, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details`
--

CREATE TABLE `tbl_holds_details` (
  `id` int(10) NOT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text DEFAULT NULL,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `holds_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_holds_details`
--

INSERT INTO `tbl_holds_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `holds_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(4, 23, 'Fish Tikka (022)', 1, 895.00, 895.00, 895.00, 0.00, '[]', '0', 'plain', '', 0.00, 2, 1, 1, 'Live'),
(5, 14, 'Mutton Kabab (014)', 1, 1345.00, 1345.00, 1345.00, 0.00, '[]', '0', 'plain', '', 0.00, 2, 1, 1, 'Live'),
(6, 21, 'Whole Fish Grill (020)', 1, 1195.00, 1195.00, 1195.00, 0.00, '[]', '0', 'plain', '', 0.00, 2, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holds_details_modifiers`
--

CREATE TABLE `tbl_holds_details_modifiers` (
  `id` int(15) NOT NULL,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `holds_id` int(15) NOT NULL,
  `holds_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredients`
--

CREATE TABLE `tbl_ingredients` (
  `id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `purchase_price` float(10,2) DEFAULT NULL,
  `alert_quantity` float(10,2) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredients`
--

INSERT INTO `tbl_ingredients` (`id`, `code`, `name`, `category_id`, `purchase_price`, `alert_quantity`, `unit_id`, `user_id`, `company_id`, `del_status`) VALUES
(1, '001', 'Cocacola', 1, 27.00, 20.00, 1, 1, 1, 'Live'),
(2, '002', 'Oil', 3, 1000.00, 12.00, 1, 1, 1, 'Live'),
(3, '004', 'Red Chilli', 4, 50.00, 12.00, 2, 1, 1, 'Live'),
(4, '005', 'White Chilli', 4, 50.00, 12.00, 2, 1, 1, 'Deleted'),
(5, '006', 'Salt', 4, 1000.00, 1000.00, 2, 1, 1, 'Live'),
(6, '006', 'Mastard Powder', 4, 50.00, 12.00, 1, 1, 1, 'Deleted'),
(7, '008', 'Garlic Powder', 4, 50.00, 12.00, 1, 1, 1, 'Live'),
(8, '008', 'Lemon', 5, 100.00, 12.00, 1, 1, 1, 'Live'),
(9, '010', 'Soya Sauce', 6, 150.00, 10.00, 1, 1, 1, 'Live'),
(10, '011', 'Chilli Sauce', 6, 150.00, 12.00, 1, 1, 1, 'Deleted'),
(11, '011', 'Sufi', 3, 1000.00, 10.00, 1, 1, 1, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ingredient_categories`
--

CREATE TABLE `tbl_ingredient_categories` (
  `id` int(10) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_ingredient_categories`
--

INSERT INTO `tbl_ingredient_categories` (`id`, `category_name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Drinks', '', 1, 1, 'Deleted'),
(2, 'Pizza', '', 1, 1, 'Deleted'),
(3, 'Oil', 'Oil for Cooking', 1, 1, 'Live'),
(4, 'Spices', 'Spices for Cooking', 1, 1, 'Deleted'),
(5, 'Vegetable', '', 1, 1, 'Live'),
(6, 'Sauce', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment`
--

CREATE TABLE `tbl_inventory_adjustment` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_inventory_adjustment`
--

INSERT INTO `tbl_inventory_adjustment` (`id`, `reference_no`, `date`, `note`, `employee_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '000001', '2020-02-13', 'k;l', 1, 1, 1, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_adjustment_ingredients`
--

CREATE TABLE `tbl_inventory_adjustment_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption_amount` float(10,2) DEFAULT NULL,
  `inventory_adjustment_id` int(10) DEFAULT NULL,
  `consumption_status` enum('Plus','Minus','','') DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_inventory_adjustment_ingredients`
--

INSERT INTO `tbl_inventory_adjustment_ingredients` (`id`, `ingredient_id`, `consumption_amount`, `inventory_adjustment_id`, `consumption_status`, `outlet_id`, `del_status`) VALUES
(0, 10, 2.00, 1, 'Plus', 1, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifiers`
--

CREATE TABLE `tbl_modifiers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modifier_ingredients`
--

CREATE TABLE `tbl_modifier_ingredients` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `modifier_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` bigint(50) NOT NULL,
  `notification` text NOT NULL,
  `outlet_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_bar_kitchen_panel`
--

CREATE TABLE `tbl_notification_bar_kitchen_panel` (
  `id` int(15) NOT NULL,
  `notification` text NOT NULL,
  `outlet_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_bar_kitchen_panel`
--

INSERT INTO `tbl_notification_bar_kitchen_panel` (`id`, `notification`, `outlet_id`) VALUES
(19, 'Order:B 000033 has been modified', 1),
(20, 'Order:B 000040 has been modified', 1),
(21, 'Order:B 000040 has been modified', 1),
(22, 'Order:B 000039 has been modified', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_table`
--

CREATE TABLE `tbl_orders_table` (
  `id` bigint(50) NOT NULL,
  `persons` int(5) NOT NULL,
  `booking_time` datetime NOT NULL,
  `sale_id` int(10) NOT NULL,
  `sale_no` varchar(20) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `table_id` int(10) NOT NULL,
  `del_status` varchar(20) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orders_table`
--

INSERT INTO `tbl_orders_table` (`id`, `persons`, `booking_time`, `sale_id`, `sale_no`, `outlet_id`, `table_id`, `del_status`) VALUES
(1, 3, '2019-11-23 09:23:54', 7, '000007', 1, 1, 'Deleted'),
(2, 3, '2019-11-23 09:23:54', 8, '000008', 1, 1, 'Deleted'),
(3, 3, '2019-11-23 11:53:19', 10, '000010', 1, 1, 'Deleted'),
(4, 3, '2019-11-23 12:07:20', 11, '000011', 1, 1, 'Deleted'),
(6, 4, '2019-11-23 13:39:56', 16, '000016', 1, 1, 'Deleted'),
(7, 2, '2019-11-23 13:54:18', 17, '000017', 1, 1, 'Deleted'),
(8, 2, '2019-11-23 14:18:40', 18, '000018', 1, 1, 'Deleted'),
(9, 2, '2019-11-23 14:39:11', 20, '000020', 1, 1, 'Deleted'),
(10, 2, '2019-11-23 14:39:11', 20, '000020', 1, 2, 'Deleted'),
(11, 4, '2019-11-24 08:24:27', 26, '000026', 1, 1, 'Deleted'),
(12, 1, '2019-11-24 08:24:27', 26, '000026', 1, 2, 'Deleted'),
(16, 4, '2020-02-05 15:26:05', 38, '000038', 1, 2, 'Deleted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlets`
--

CREATE TABLE `tbl_outlets` (
  `id` int(10) NOT NULL,
  `outlet_name` varchar(50) DEFAULT NULL,
  `outlet_code` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `invoice_print` enum('Yes','No') DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `invoice_footer` varchar(500) DEFAULT NULL,
  `collect_tax` varchar(10) DEFAULT NULL,
  `tax_title` varchar(10) DEFAULT NULL,
  `tax_registration_no` varchar(30) DEFAULT NULL,
  `tax_is_gst` varchar(10) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `pre_or_post_payment` varchar(500) DEFAULT 'Post Payment',
  `user_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outlets`
--

INSERT INTO `tbl_outlets` (`id`, `outlet_name`, `outlet_code`, `address`, `phone`, `invoice_print`, `starting_date`, `invoice_footer`, `collect_tax`, `tax_title`, `tax_registration_no`, `tax_is_gst`, `state_code`, `pre_or_post_payment`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Restaurant', '000001', 'Food Street Badshahi Mosque, LHR', '04237375433', 'Yes', '2018-02-18', 'Thank you for visiting us!', 'No', '', '', 'No', '', 'Post Payment', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlet_taxes`
--

CREATE TABLE `tbl_outlet_taxes` (
  `id` int(15) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `company_id` int(15) NOT NULL,
  `del_status` varchar(100) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `name`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(3, 'Cash', '', 1, 1, 'Deleted'),
(4, 'Card', '', 1, 1, 'Live'),
(5, 'Paypal', '', 1, 1, 'Live'),
(6, 'Cash', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(10) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `supplier_id` int(10) DEFAULT NULL,
  `date` varchar(15) NOT NULL,
  `subtotal` float(10,2) DEFAULT NULL,
  `other` float(10,2) DEFAULT NULL,
  `grand_total` float(10,2) DEFAULT NULL,
  `paid` float(10,2) DEFAULT NULL,
  `due` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `reference_no`, `supplier_id`, `date`, `subtotal`, `other`, `grand_total`, `paid`, `due`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '000001', 2, '2019-07-18', NULL, NULL, 1350.00, 1500.00, -150.00, NULL, 1, 1, 'Live'),
(2, '000002', 2, '2019-11-21', NULL, NULL, 5400.00, 5400.00, 0.00, NULL, 1, 1, 'Live'),
(3, '000003', 1, '2020-02-12', NULL, NULL, 1000.00, 580.00, 420.00, NULL, 1, 1, 'Live'),
(4, '000004', 1, '2020-02-13', NULL, NULL, 27.00, 19.00, 8.00, NULL, 1, 1, 'Live'),
(5, '000005', 1, '2020-02-14', NULL, NULL, 216.00, 19.00, 197.00, NULL, 1, 1, 'Live'),
(6, '000006', 2, '2020-02-03', NULL, NULL, 150.00, 90.00, 60.00, NULL, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_ingredients`
--

CREATE TABLE `tbl_purchase_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  `quantity_amount` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `purchase_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase_ingredients`
--

INSERT INTO `tbl_purchase_ingredients` (`id`, `ingredient_id`, `unit_price`, `quantity_amount`, `total`, `purchase_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 27.00, 50.00, 1350.00, 1, 1, 'Live'),
(2, 1, 27.00, 200.00, 5400.00, 2, 1, 'Live'),
(3, 2, 1000.00, 1.00, 1000.00, 3, 1, 'Live'),
(4, 1, 27.00, 1.00, 27.00, 4, 1, 'Live'),
(5, 1, 27.00, 8.00, 216.00, 5, 1, 'Live'),
(6, 7, 50.00, 3.00, 150.00, 6, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(15) NOT NULL,
  `opening_balance` float(10,2) NOT NULL,
  `closing_balance` float(10,2) NOT NULL,
  `opening_balance_date_time` datetime NOT NULL,
  `closing_balance_date_time` datetime NOT NULL,
  `sale_paid_amount` float(10,2) NOT NULL,
  `customer_due_receive` float(10,2) NOT NULL,
  `payment_methods_sale` text NOT NULL,
  `register_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=open,2=closed',
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `company_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `opening_balance`, `closing_balance`, `opening_balance_date_time`, `closing_balance_date_time`, `sale_paid_amount`, `customer_due_receive`, `payment_methods_sale`, `register_status`, `user_id`, `outlet_id`, `company_id`) VALUES
(1, 5000.00, 0.00, '2019-07-18 10:16:35', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(2, 100000.00, 0.00, '2019-07-23 20:03:30', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(3, 19000.00, 0.00, '2019-10-02 18:10:23', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(4, 20000.00, 20500.00, '2019-11-06 09:12:20', '2019-11-06 10:01:02', 500.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": 500.00}', 2, 1, 1, 1),
(5, 12000.00, 0.00, '2019-11-06 10:01:27', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(6, 100000.00, 0.00, '2019-11-20 04:46:41', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(7, 1000.00, 0.00, '2019-11-21 18:32:33', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(8, 1000.00, 0.00, '2019-11-22 12:04:04', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(9, 1000.00, 0.00, '2019-11-23 04:00:53', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(10, 500.00, 0.00, '2019-11-24 05:26:24', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(11, 90000.00, 0.00, '2019-11-25 20:00:06', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(12, 200.00, 0.00, '2019-12-08 19:12:31', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(13, 200.00, 0.00, '2019-12-09 09:24:50', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(14, 90000.00, 0.00, '2019-12-19 13:01:42', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(15, 1000.00, 0.00, '2019-12-20 18:19:18', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(16, 90000.00, 0.00, '2019-12-23 14:50:25', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(17, 20000.00, 0.00, '2019-12-26 11:19:02', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(18, 5000.00, 0.00, '2019-12-28 09:38:00', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(19, 2000.00, 0.00, '2019-12-29 08:55:18', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(20, 90000.00, 0.00, '2019-12-30 13:58:31', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(21, 90000.00, 92000.00, '2019-12-31 09:26:27', '2019-12-31 13:47:17', 2000.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": 2000.00}', 2, 1, 1, 1),
(22, 90.00, 0.00, '2019-12-31 13:52:56', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(23, 90000.00, 0.00, '2020-01-02 12:29:58', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(24, 5000.00, 0.00, '2020-02-04 20:58:54', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(25, 5000.00, 0.00, '2020-02-05 14:49:11', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(26, 5000.00, 5000.00, '2020-02-06 09:32:56', '2020-02-06 10:24:00', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(27, 5000.00, 5000.00, '2020-02-06 09:32:58', '2020-02-06 10:22:31', 0.00, 0.00, '{\"Cash\": ,\"Paypal\": ,\"Card\": }', 2, 1, 1, 1),
(28, 0.00, 0.00, '2020-02-06 12:01:55', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(29, 90.00, 0.00, '2020-02-12 12:21:49', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1),
(30, 0.00, 0.00, '2020-02-13 17:57:01', '0000-00-00 00:00:00', 0.00, 0.00, '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(10) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `sale_no` varchar(30) NOT NULL DEFAULT '000000',
  `total_items` int(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` float(10,2) DEFAULT NULL,
  `disc` varchar(50) DEFAULT NULL,
  `disc_actual` float(10,2) DEFAULT NULL,
  `vat` float(10,2) DEFAULT NULL,
  `total_payable` float(10,2) DEFAULT NULL,
  `payment_method_id` int(10) DEFAULT NULL,
  `close_time` time NOT NULL,
  `table_id` int(10) DEFAULT NULL,
  `total_item_discount_amount` float(10,2) NOT NULL,
  `sub_total_with_discount` float(10,2) NOT NULL,
  `sub_total_discount_amount` float(10,2) NOT NULL,
  `total_discount_amount` float(10,2) NOT NULL,
  `delivery_charge` float(10,2) NOT NULL,
  `sub_total_discount_value` varchar(10) NOT NULL,
  `sub_total_discount_type` varchar(20) NOT NULL,
  `sale_date` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_time` time NOT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `user_id` int(10) DEFAULT NULL,
  `waiter_id` int(10) NOT NULL DEFAULT 0,
  `outlet_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order, 2=invoiced order, 3=closed order',
  `order_type` tinyint(1) NOT NULL COMMENT '1=dine in, 2 = take away, 3 = delivery',
  `del_status` varchar(50) DEFAULT 'Live',
  `sale_vat_objects` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`id`, `customer_id`, `sale_no`, `total_items`, `sub_total`, `paid_amount`, `due_amount`, `disc`, `disc_actual`, `vat`, `total_payable`, `payment_method_id`, `close_time`, `table_id`, `total_item_discount_amount`, `sub_total_with_discount`, `sub_total_discount_amount`, `total_discount_amount`, `delivery_charge`, `sub_total_discount_value`, `sub_total_discount_type`, `sale_date`, `date_time`, `order_time`, `cooking_start_time`, `cooking_done_time`, `modified`, `user_id`, `waiter_id`, `outlet_id`, `order_status`, `order_type`, `del_status`, `sale_vat_objects`) VALUES
(1, '1', '000001', 1, 500.00, 500.00, NULL, NULL, NULL, 0.00, 500.00, 3, '11:10:17', NULL, 0.00, 500.00, 0.00, 0.00, 0.00, '', 'plain', '2019-07-18', '2019-07-18 06:10:16', '11:10:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(2, '1', '000002', 2, 1000.00, 1000.00, NULL, NULL, NULL, 0.00, 1000.00, 3, '13:22:03', NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 12:22:03', '13:22:03', '2019-11-20 04:59:07', '2019-11-20 05:02:47', 'Yes', 1, 4, 1, 3, 2, 'Live', '[]'),
(3, '1', '000003', 1, 1000.00, 1000.00, NULL, NULL, NULL, 0.00, 1000.00, 3, '20:04:07', NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, '', 'plain', '2019-07-23', '2019-07-23 15:04:07', '20:04:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(4, '1', '000004', 1, 149.00, 149.00, NULL, NULL, NULL, 0.00, 149.00, 3, '18:24:48', NULL, 0.00, 149.00, 0.00, 0.00, 0.00, '', 'plain', '2019-10-02', '2019-10-02 13:24:48', '18:24:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(5, '1', '000005', 1, 500.00, 500.00, 0.00, NULL, NULL, 0.00, 500.00, 4, '09:14:42', NULL, 0.00, 500.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-06', '2019-11-06 04:13:17', '09:13:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(6, '1', '000006', 1, 1000.00, 1000.00, 0.00, NULL, NULL, 0.00, 1000.00, 4, '04:10:23', NULL, 0.00, 1000.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-22 23:03:30', '04:03:30', '2019-11-20 04:59:20', '2019-11-20 05:04:05', 'Yes', 1, 4, 1, 3, 2, 'Live', '[]'),
(7, '4', '000007', 1, 149.00, 149.00, 0.00, NULL, NULL, 0.00, 149.00, 4, '12:46:42', NULL, 0.00, 149.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 08:23:54', '09:23:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(8, '4', '000008', 1, 149.00, 149.00, 0.00, NULL, NULL, 0.00, 149.00, 4, '09:50:03', NULL, 0.00, 149.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 08:23:54', '09:23:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(9, '1', '000009', 2, 990.00, 990.00, 0.00, NULL, NULL, 0.00, 990.00, 4, '11:18:34', NULL, 0.00, 990.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 10:18:03', '11:18:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(10, '1', '000010', 5, 1620.00, 1690.00, 0.00, NULL, NULL, 0.00, 1690.00, 4, '12:00:14', NULL, 0.00, 1620.00, 0.00, 0.00, 70.00, '', 'plain', '2019-11-23', '2019-11-23 10:59:49', '11:59:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 3, 1, 'Live', '[]'),
(11, '1', '000011', 5, 2175.00, 2245.00, 0.00, NULL, NULL, 0.00, 2245.00, 4, '12:08:54', NULL, 0.00, 2175.00, 0.00, 0.00, 70.00, '', 'plain', '2019-11-23', '2019-11-23 11:07:20', '12:07:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(12, '1', '000012', 5, 1620.00, 1701.00, 0.00, NULL, NULL, 0.00, 1701.00, 4, '12:24:18', NULL, 0.00, 1620.00, 0.00, 0.00, 81.00, '', 'plain', '2019-11-23', '2019-11-23 11:22:50', '12:22:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(13, '1', '000013', 6, 1200.00, 1260.00, 0.00, NULL, NULL, 0.00, 1260.00, 4, '12:32:22', NULL, 0.00, 1200.00, 0.00, 0.00, 60.00, '', 'plain', '2019-11-23', '2019-11-23 11:30:55', '12:30:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(14, '1', '000014', 15, 10034.00, 9530.60, 0.00, NULL, NULL, 0.00, 9530.60, 4, '13:19:39', NULL, 0.00, 9030.60, 1003.40, 1003.40, 500.00, '10%', 'percentage', '2019-11-23', '2019-11-23 12:18:28', '13:18:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(15, '1', '000015', 1, 300.00, 315.00, NULL, NULL, NULL, 0.00, 315.00, 3, '14:56:32', NULL, 0.00, 300.00, 0.00, 0.00, 15.00, '', 'plain', '2020-02-05', '2020-02-05 09:56:32', '14:56:32', '0000-00-00 00:00:00', '2019-11-23 14:24:43', 'Yes', 1, 4, 1, 3, 1, 'Live', '[]'),
(16, '1', '000016', 5, 1860.00, 1955.00, 0.00, NULL, NULL, 0.00, 1955.00, 4, '13:40:28', NULL, 0.00, 1860.00, 0.00, 0.00, 95.00, '', 'plain', '2019-11-23', '2019-11-23 12:39:56', '13:39:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(17, '1', '000017', 8, 1490.00, 1565.00, NULL, NULL, NULL, 0.00, 1565.00, 3, '13:54:18', NULL, 0.00, 1490.00, 0.00, 0.00, 75.00, '', 'plain', '2019-11-23', '2019-11-23 12:54:18', '13:54:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(18, '1', '000018', 4, 1110.00, 1110.00, NULL, NULL, NULL, 0.00, 1110.00, 3, '14:51:17', NULL, 0.00, 1110.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 13:51:17', '14:51:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 3, 1, 'Live', '[]'),
(19, '1', '000019', 8, 2230.00, 2340.00, NULL, NULL, NULL, 0.00, 2340.00, 3, '14:23:12', NULL, 0.00, 2230.00, 0.00, 0.00, 110.00, '', 'plain', '2019-11-23', '2019-11-23 13:23:12', '14:23:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 1, 'Live', '[]'),
(20, '1', '000020', 8, 1940.00, 1455.00, NULL, NULL, NULL, 0.00, 1455.00, 3, '14:39:12', NULL, 0.00, 1358.00, 582.00, 582.00, 97.00, '30%', 'percentage', '2019-11-23', '2019-11-23 13:39:11', '14:39:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(21, '1', '000021', 3, 890.00, 890.00, NULL, NULL, NULL, 0.00, 890.00, 3, '15:00:35', NULL, 0.00, 890.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 14:00:35', '15:00:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 3, 1, 'Live', '[]'),
(23, '1', '000023', 6, 2040.00, 2040.00, 0.00, NULL, NULL, 0.00, 2040.00, 4, '05:31:57', NULL, 0.00, 2040.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-23', '2019-11-23 14:09:30', '15:09:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 3, 1, 'Live', '[]'),
(25, '1', '000025', 2, 540.00, 540.05, NULL, NULL, NULL, 0.00, 540.05, 3, '06:51:27', NULL, 0.00, 540.00, 0.00, 0.00, 0.05, '', 'plain', '2019-11-24', '2019-11-24 05:51:27', '06:51:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 1, 'Live', '[]'),
(26, '1', '000026', 3, 730.00, 730.00, NULL, NULL, NULL, 0.00, 730.00, 3, '08:24:28', NULL, 0.00, 730.00, 0.00, 0.00, 0.00, '', 'plain', '2019-11-24', '2019-11-24 07:24:27', '08:24:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(27, '1', '000027', 3, 585.00, 614.00, NULL, NULL, NULL, 0.00, 614.00, 3, '10:10:06', NULL, 0.00, 585.00, 0.00, 0.00, 29.00, '', 'plain', '2019-11-24', '2019-11-24 09:10:06', '10:10:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(28, '1', '000028', 8, 4640.00, 4640.05, NULL, NULL, NULL, 0.00, 4640.05, 3, '11:30:32', NULL, 0.00, 4640.00, 0.00, 0.00, 0.05, '', 'plain', '2019-11-24', '2019-11-24 10:30:31', '11:30:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 1, 'Live', '[]'),
(29, '1', '000029', 8, 4640.00, 4640.05, NULL, NULL, NULL, 0.00, 4640.05, 3, '11:30:32', NULL, 0.00, 4640.00, 0.00, 0.00, 0.05, '', 'plain', '2019-11-24', '2019-11-24 10:30:32', '11:30:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 3, 1, 'Live', '[]'),
(30, '1', '000030', 5, 850.00, 850.00, NULL, NULL, NULL, 0.00, 850.00, 3, '15:08:43', NULL, 0.00, 850.00, 0.00, 0.00, 0.00, '', 'plain', '2020-02-05', '2020-02-05 10:08:43', '15:08:43', '2019-12-19 13:43:20', '2019-12-19 13:43:25', 'Yes', 1, 3, 1, 3, 2, 'Live', '[]'),
(31, '1', '000031', 5, 6225.00, 6225.00, 0.00, NULL, NULL, 0.00, 6225.00, 4, '11:51:56', NULL, 0.00, 6225.00, 0.00, 0.00, 0.00, '', 'plain', '2019-12-26', '2019-12-26 06:49:09', '11:49:09', '2019-12-26 11:50:11', '2019-12-26 11:50:42', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(32, '1', '000032', 1, 2000.00, 2000.00, 0.00, NULL, NULL, 0.00, 2000.00, 4, '09:37:32', NULL, 0.00, 2000.00, 0.00, 0.00, 0.00, '', 'plain', '2019-12-31', '2019-12-31 04:34:49', '09:34:49', '2019-12-31 09:35:59', '2019-12-31 09:36:18', 'No', 1, 4, 1, 3, 2, 'Live', '[]'),
(33, '1', '000033', 3, 6210.00, 6210.00, NULL, NULL, NULL, 0.00, 6210.00, 3, '18:08:45', NULL, 0.00, 6210.00, 0.00, 0.00, 0.00, '', 'plain', '2020-02-12', '2020-02-12 13:08:45', '18:08:45', '2020-01-02 13:19:27', '2020-01-02 13:19:39', 'Yes', 1, 4, 1, 3, 2, 'Live', '[]'),
(36, '1', '000036', 4, 480.00, 480.00, NULL, NULL, NULL, 0.00, 480.00, 3, '15:09:02', NULL, 0.00, 480.00, 0.00, 0.00, 0.00, '', 'plain', '2020-02-05', '2020-02-05 10:09:02', '15:09:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 4, 1, 3, 1, 'Live', '[]'),
(38, '1', '000038', 5, 2600.00, 2600.00, 0.00, NULL, NULL, 0.00, 2600.00, 4, '16:05:14', NULL, 0.00, 2600.00, 0.00, 0.00, 0.00, '', 'plain', '2020-02-05', '2020-02-05 10:26:05', '15:26:05', '0000-00-00 00:00:00', '2020-02-05 15:31:47', 'No', 1, 9, 1, 3, 1, 'Live', '[]'),
(39, '5', '000039', 2, 210.00, NULL, NULL, NULL, NULL, 0.00, 210.00, NULL, '00:00:00', NULL, 0.00, 210.00, 0.00, 0.00, 0.00, '', 'plain', '2020-02-13', '2020-02-13 17:53:03', '22:53:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Yes', 1, 4, 1, 1, 2, 'Live', '[]'),
(40, '1', '000040', 4, 770.00, 680.00, 0.00, NULL, NULL, 0.00, 680.00, 5, '22:24:24', NULL, 0.00, 680.00, 90.00, 90.00, 0.00, '90', 'plain', '2020-02-13', '2020-02-13 17:22:26', '22:22:26', '2020-02-13 22:20:30', '2020-02-13 22:20:34', 'Yes', 1, 4, 1, 3, 2, 'Live', '[]'),
(41, '1', '000041', 3, 3435.00, NULL, NULL, NULL, NULL, 0.00, 3435.00, NULL, '00:00:00', NULL, 0.00, 3435.00, 0.00, 0.00, 0.00, '', 'plain', '2020-02-13', '2020-02-13 17:52:35', '22:52:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'No', 1, 3, 1, 1, 1, 'Live', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `id` bigint(50) NOT NULL,
  `food_menu_id` int(10) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `menu_price_without_discount` float(10,2) NOT NULL,
  `menu_price_with_discount` float(10,2) NOT NULL,
  `menu_unit_price` float(10,2) NOT NULL,
  `menu_vat_percentage` float(10,2) NOT NULL,
  `menu_taxes` text DEFAULT NULL,
  `menu_discount_value` varchar(20) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL,
  `menu_note` varchar(150) DEFAULT NULL,
  `discount_amount` double(10,2) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `cooking_status` varchar(30) DEFAULT NULL,
  `cooking_start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cooking_done_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `previous_id` bigint(50) NOT NULL,
  `sales_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sales_details`
--

INSERT INTO `tbl_sales_details` (`id`, `food_menu_id`, `menu_name`, `qty`, `menu_price_without_discount`, `menu_price_with_discount`, `menu_unit_price`, `menu_vat_percentage`, `menu_taxes`, `menu_discount_value`, `discount_type`, `menu_note`, `discount_amount`, `item_type`, `cooking_status`, `cooking_start_time`, `cooking_done_time`, `previous_id`, `sales_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 'Kbab Tika (001)', 1, 500.00, 500.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 0, 1, 1, 'Live'),
(3, 1, 'Kbab Tika (001)', 2, 1000.00, 1000.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3, 0, 1, 1, 'Live'),
(4, 2, 'Zinger (002)', 1, 149.00, 149.00, 149.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 4, 0, 1, 1, 'Live'),
(5, 1, 'Kbab Tika (001)', 1, 500.00, 500.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 5, 0, 1, 1, 'Live'),
(8, 1, 'Kbab Tika (001)', 2, 1000.00, 1000.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 6, 0, 1, 1, 'Live'),
(9, 2, 'Zinger (002)', 1, 149.00, 149.00, 149.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 7, 0, 1, 1, 'Live'),
(10, 2, 'Zinger (002)', 1, 149.00, 149.00, 149.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 8, 0, 1, 1, 'Live'),
(11, 32, 'Hara Brain Masala (031)', 1, 745.00, 745.00, 745.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 9, 0, 1, 1, 'Live'),
(12, 31, 'Paithe ka Halwa (031)', 1, 245.00, 245.00, 245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 9, 0, 1, 1, 'Live'),
(34, 73, 'Chicken Karahi (Half) (069)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 10, 0, 1, 1, 'Live'),
(35, 114, 'Rogni Naan (113)', 4, 260.00, 260.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 10, 0, 1, 1, 'Live'),
(36, 136, 'Baryani (135)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 10, 0, 1, 1, 'Live'),
(37, 76, 'Soft Drink (075)', 3, 225.00, 225.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 10, 0, 1, 1, 'Live'),
(38, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 10, 0, 1, 1, 'Live'),
(39, 92, 'chicken Special Karahi (Full) (087)', 1, 1050.00, 1050.00, 1050.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, 11, 0, 1, 1, 'Live'),
(40, 114, 'Rogni Naan (113)', 4, 260.00, 260.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 40, 11, 0, 1, 1, 'Live'),
(41, 136, 'Baryani (135)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 41, 11, 0, 1, 1, 'Live'),
(42, 76, 'Soft Drink (075)', 3, 225.00, 225.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 11, 0, 1, 1, 'Live'),
(43, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 43, 11, 0, 1, 1, 'Live'),
(44, 73, 'Chicken Karahi (Half) (069)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 44, 12, 0, 1, 1, 'Live'),
(45, 114, 'Rogni Naan (113)', 4, 260.00, 260.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45, 12, 0, 1, 1, 'Live'),
(46, 136, 'Baryani (135)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46, 12, 0, 1, 1, 'Live'),
(47, 76, 'Soft Drink (075)', 3, 225.00, 225.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 47, 12, 0, 1, 1, 'Live'),
(48, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 48, 12, 0, 1, 1, 'Live'),
(49, 73, 'Chicken Karahi (Half) (069)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 49, 13, 0, 1, 1, 'Live'),
(50, 20, 'Fries (018)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 50, 13, 0, 1, 1, 'Live'),
(51, 112, 'Sada Roti (111)', 3, 120.00, 120.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 51, 13, 0, 1, 1, 'Live'),
(52, 123, 'Fresh Salad (122)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 52, 13, 0, 1, 1, 'Live'),
(53, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 53, 13, 0, 1, 1, 'Live'),
(54, 76, 'Soft Drink (075)', 2, 150.00, 150.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 54, 13, 0, 1, 1, 'Live'),
(55, 123, 'Fresh Salad (122)', 3, 435.00, 435.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 55, 14, 0, 1, 1, 'Live'),
(56, 110, 'Mint Raita (107)', 3, 435.00, 435.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 56, 14, 0, 1, 1, 'Live'),
(57, 106, 'Fresh Lime (106)', 1, 165.00, 165.00, 165.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 57, 14, 0, 1, 1, 'Live'),
(58, 79, 'Mint Margarita (078)', 2, 490.00, 490.00, 245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 58, 14, 0, 1, 1, 'Live'),
(59, 20, 'Fries (018)', 2, 290.00, 290.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 59, 14, 0, 1, 1, 'Live'),
(60, 74, 'Can (071)', 7, 665.00, 665.00, 95.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 60, 14, 0, 1, 1, 'Live'),
(61, 112, 'Sada Roti (111)', 7, 280.00, 280.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 61, 14, 0, 1, 1, 'Live'),
(62, 108, 'Sada Naan (104)', 7, 315.00, 315.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 62, 14, 0, 1, 1, 'Live'),
(63, 77, 'chicken Karahi (Full) (074)', 1, 990.00, 990.00, 990.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 63, 14, 0, 1, 1, 'Live'),
(64, 5, 'Chicken Kabab (005)', 2, 1390.00, 1390.00, 695.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 64, 14, 0, 1, 1, 'Live'),
(65, 12, 'Rijstani Tikka Boti (012)', 1, 699.00, 699.00, 699.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 65, 14, 0, 1, 1, 'Live'),
(66, 3, 'Chicken Malai Boti (003)', 1, 795.00, 795.00, 795.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 66, 14, 0, 1, 1, 'Live'),
(67, 37, 'Tawa Mutton Chops (037)', 1, 1345.00, 1345.00, 1345.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 67, 14, 0, 1, 1, 'Live'),
(68, 19, 'Whole Chicken Grill (019)', 1, 995.00, 995.00, 995.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 68, 14, 0, 1, 1, 'Live'),
(69, 32, 'Hara Brain Masala (031)', 1, 745.00, 745.00, 745.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 69, 14, 0, 1, 1, 'Live'),
(72, 1, 'Kbab Tika (001)', 1, 500.00, 500.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-11-20 04:59:06', '2019-11-20 05:02:47', 2, 2, 0, 1, 1, 'Live'),
(73, 1, 'Kbab Tika (001)', 1, 500.00, 500.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-11-20 04:59:06', '2019-11-20 05:02:47', 2, 2, 0, 1, 1, 'Live'),
(75, 127, 'Muttin Black Pepper Karahi (Half) (125)', 1, 995.00, 995.00, 995.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 75, 16, 0, 1, 1, 'Live'),
(76, 51, 'Vegetable Rice (049)', 1, 395.00, 395.00, 395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 76, 16, 0, 1, 1, 'Live'),
(77, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 16, 0, 1, 1, 'Live'),
(78, 108, 'Sada Naan (104)', 4, 180.00, 180.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 78, 16, 0, 1, 1, 'Live'),
(79, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 79, 16, 0, 1, 1, 'Live'),
(80, 60, 'Chicken Rajistani Handi (Half) (057)', 1, 625.00, 625.00, 625.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 80, 17, 0, 1, 1, 'Live'),
(81, 117, 'Kalwanji Naan (115)', 1, 95.00, 95.00, 95.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 81, 17, 0, 1, 1, 'Live'),
(82, 96, 'Garlic Naan (094)', 1, 95.00, 95.00, 95.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 82, 17, 0, 1, 1, 'Live'),
(83, 112, 'Sada Roti (111)', 1, 40.00, 40.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 83, 17, 0, 1, 1, 'Live'),
(84, 114, 'Rogni Naan (113)', 1, 65.00, 65.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 84, 17, 0, 1, 1, 'Live'),
(85, 28, 'Spicy honeywings (026)', 1, 280.00, 280.00, 280.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 85, 17, 0, 1, 1, 'Live'),
(86, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 86, 17, 0, 1, 1, 'Live'),
(87, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 87, 17, 0, 1, 1, 'Live'),
(100, 7, 'Chicken Reshmi Kabab (007)', 1, 795.00, 795.00, 795.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 19, 0, 1, 1, 'Live'),
(101, 30, 'Tawa Chicken Makhani (027)', 1, 375.00, 375.00, 375.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 101, 19, 0, 1, 1, 'Live'),
(102, 112, 'Sada Roti (111)', 2, 80.00, 80.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 102, 19, 0, 1, 1, 'Live'),
(103, 96, 'Garlic Naan (094)', 1, 95.00, 95.00, 95.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 103, 19, 0, 1, 1, 'Live'),
(104, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 104, 19, 0, 1, 1, 'Live'),
(105, 62, 'Pink Tea (059)', 2, 300.00, 300.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 105, 19, 0, 1, 1, 'Live'),
(106, 27, 'Garma garam gulab Jaman (025)', 2, 290.00, 290.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 106, 19, 0, 1, 1, 'Live'),
(107, 76, 'Soft Drink (075)', 2, 150.00, 150.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 107, 19, 0, 1, 1, 'Live'),
(112, 7, 'Chicken Reshmi Kabab (007)', 1, 795.00, 795.00, 795.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 112, 20, 0, 1, 1, 'Live'),
(113, 30, 'Tawa Chicken Makhani (027)', 1, 375.00, 375.00, 375.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 113, 20, 0, 1, 1, 'Live'),
(114, 96, 'Garlic Naan (094)', 1, 95.00, 95.00, 95.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 114, 20, 0, 1, 1, 'Live'),
(115, 112, 'Sada Roti (111)', 2, 80.00, 80.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 115, 20, 0, 1, 1, 'Live'),
(116, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 116, 20, 0, 1, 1, 'Live'),
(117, 62, 'Pink Tea (059)', 2, 300.00, 300.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 117, 20, 0, 1, 1, 'Live'),
(118, 76, 'Soft Drink (075)', 1, 75.00, 75.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 118, 20, 0, 1, 1, 'Live'),
(119, 76, 'Soft Drink (075)', 1, 75.00, 75.00, 75.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 119, 20, 0, 1, 1, 'Live'),
(120, 35, 'Chicken Boneless Handi (Half) (028)', 1, 625.00, 625.00, 625.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 88, 18, 0, 1, 1, 'Live'),
(121, 114, 'Rogni Naan (113)', 3, 195.00, 195.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 89, 18, 0, 1, 1, 'Live'),
(122, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 90, 18, 0, 1, 1, 'Live'),
(123, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 91, 18, 0, 1, 1, 'Live'),
(133, 107, 'Chicken Cheese Handi (Half) (105)', 1, 625.00, 625.00, 625.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 124, 21, 0, 1, 1, 'Live'),
(134, 112, 'Sada Roti (111)', 3, 120.00, 120.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 125, 21, 0, 1, 1, 'Live'),
(135, 113, 'Zira Raita (111)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 132, 21, 0, 1, 1, 'Live'),
(144, 77, 'chicken Karahi (Full) (074)', 1, 990.00, 990.00, 990.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 139, 23, 0, 1, 1, 'Live'),
(145, 26, 'Tawa Chicken (024)', 1, 345.00, 345.00, 345.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 140, 23, 0, 1, 1, 'Live'),
(146, 117, 'Kalwanji Naan (115)', 3, 285.00, 285.00, 95.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 141, 23, 0, 1, 1, 'Live'),
(147, 114, 'Rogni Naan (113)', 2, 130.00, 130.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 142, 23, 0, 1, 1, 'Live'),
(148, 113, 'Zira Raita (111)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 143, 23, 0, 1, 1, 'Live'),
(149, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, 23, 0, 1, 1, 'Live'),
(153, 157, 'Beef Nehari (157)', 1, 395.00, 395.00, 395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 153, 25, 0, 1, 1, 'Live'),
(154, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 154, 25, 0, 1, 1, 'Live'),
(155, 158, 'Mutton Paya (158)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 155, 26, 0, 1, 1, 'Live'),
(156, 108, 'Sada Naan (104)', 2, 90.00, 90.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 156, 26, 0, 1, 1, 'Live'),
(157, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 157, 26, 0, 1, 1, 'Live'),
(158, 93, 'Cheese Naan (093)', 1, 150.00, 150.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 158, 27, 0, 1, 1, 'Live'),
(159, 163, 'Chai (163)', 2, 290.00, 290.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 159, 27, 0, 1, 1, 'Live'),
(160, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 160, 27, 0, 1, 1, 'Live'),
(161, 77, 'chicken Karahi (Full) (074)', 1, 990.00, 990.00, 990.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 161, 28, 0, 1, 1, 'Live'),
(162, 73, 'Chicken Karahi (Half) (069)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 162, 28, 0, 1, 1, 'Live'),
(163, 130, 'Daal Mash (129)', 2, 790.00, 790.00, 395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 163, 28, 0, 1, 1, 'Live'),
(164, 108, 'Sada Naan (104)', 10, 450.00, 450.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 164, 28, 0, 1, 1, 'Live'),
(165, 112, 'Sada Roti (111)', 10, 400.00, 400.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 165, 28, 0, 1, 1, 'Live'),
(166, 59, 'Chicken Egg Fried Rice (057)', 2, 790.00, 790.00, 395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 166, 28, 0, 1, 1, 'Live'),
(167, 123, 'Fresh Salad (122)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 167, 28, 0, 1, 1, 'Live'),
(168, 70, 'Mineral Water (069)', 4, 580.00, 580.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 168, 28, 0, 1, 1, 'Live'),
(169, 77, 'chicken Karahi (Full) (074)', 1, 990.00, 990.00, 990.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 169, 29, 0, 1, 1, 'Live'),
(170, 73, 'Chicken Karahi (Half) (069)', 1, 495.00, 495.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 170, 29, 0, 1, 1, 'Live'),
(171, 130, 'Daal Mash (129)', 2, 790.00, 790.00, 395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 171, 29, 0, 1, 1, 'Live'),
(172, 108, 'Sada Naan (104)', 10, 450.00, 450.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 172, 29, 0, 1, 1, 'Live'),
(173, 112, 'Sada Roti (111)', 10, 400.00, 400.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 173, 29, 0, 1, 1, 'Live'),
(174, 59, 'Chicken Egg Fried Rice (057)', 2, 790.00, 790.00, 395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 174, 29, 0, 1, 1, 'Live'),
(175, 123, 'Fresh Salad (122)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 175, 29, 0, 1, 1, 'Live'),
(176, 70, 'Mineral Water (069)', 4, 580.00, 580.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 176, 29, 0, 1, 1, 'Live'),
(181, 88, 'Grilled Fish (085)', 1, 1245.00, 1245.00, 1245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-26 11:50:11', '2019-12-26 11:50:42', 181, 31, 0, 1, 1, 'Live'),
(182, 88, 'Grilled Fish (085)', 1, 1245.00, 1245.00, 1245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-26 11:50:11', '2019-12-26 11:50:42', 182, 31, 0, 1, 1, 'Live'),
(183, 88, 'Grilled Fish (085)', 1, 1245.00, 1245.00, 1245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-26 11:50:11', '2019-12-26 11:50:42', 183, 31, 0, 1, 1, 'Live'),
(184, 88, 'Grilled Fish (085)', 1, 1245.00, 1245.00, 1245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-26 11:50:11', '2019-12-26 11:50:42', 184, 31, 0, 1, 1, 'Live'),
(185, 88, 'Grilled Fish (085)', 1, 1245.00, 1245.00, 1245.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-26 11:50:11', '2019-12-26 11:50:42', 185, 31, 0, 1, 1, 'Live'),
(186, 1, 'Kbab Tika (001)', 4, 2000.00, 2000.00, 500.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-31 09:35:59', '2019-12-31 09:36:18', 186, 32, 0, 1, 1, 'Live'),
(194, 62, 'Pink Tea (059)', 2, 300.00, 300.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-11-23 14:24:30', '2019-11-23 14:24:43', 74, 15, 0, 1, 1, 'Live'),
(198, 70, 'Mineral Water (069)', 3, 435.00, 435.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-19 13:43:20', '2019-12-19 13:43:25', 177, 30, 0, 1, 1, 'Live'),
(199, 112, 'Sada Roti (111)', 2, 80.00, 80.00, 40.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-19 13:43:20', '2019-12-19 13:43:25', 178, 30, 0, 1, 1, 'Live'),
(200, 108, 'Sada Naan (104)', 2, 90.00, 90.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-19 13:43:20', '2019-12-19 13:43:25', 179, 30, 0, 1, 1, 'Live'),
(201, 123, 'Fresh Salad (122)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2019-12-19 13:43:20', '2019-12-19 13:43:25', 180, 30, 0, 1, 1, 'Live'),
(202, 100, 'Special Kulcha (097)', 1, 100.00, 100.00, 100.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 202, 30, 0, 1, 1, 'Live'),
(203, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 203, 36, 0, 1, 1, 'Live'),
(204, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 204, 36, 0, 1, 1, 'Live'),
(205, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 205, 36, 0, 1, 1, 'Live'),
(206, 108, 'Sada Naan (104)', 1, 45.00, 45.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 206, 36, 0, 1, 1, 'Live'),
(213, 16, 'Grill Chops (016)', 1, 1395.00, 1395.00, 1395.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-05 15:29:13', '2020-02-05 15:31:47', 213, 38, 0, 1, 1, 'Live'),
(214, 57, 'Finger Fish (054)', 1, 645.00, 645.00, 645.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-05 15:29:13', '2020-02-05 15:31:47', 214, 38, 0, 1, 1, 'Live'),
(215, 69, 'Chicken Manchurian (066)', 1, 345.00, 345.00, 345.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-05 15:29:13', '2020-02-05 15:31:47', 215, 38, 0, 1, 1, 'Live'),
(216, 93, 'Cheese Naan (093)', 1, 150.00, 150.00, 150.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-05 15:29:13', '2020-02-05 15:31:47', 216, 38, 0, 1, 1, 'Live'),
(217, 114, 'Rogni Naan (113)', 1, 65.00, 65.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-05 15:29:13', '2020-02-05 15:31:47', 217, 38, 0, 1, 1, 'Live'),
(221, 95, 'chicken Black Pepper Karahi (Half) (093)', 5, 2625.00, 2625.00, 525.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-01-02 13:19:27', '2020-01-02 13:19:39', 187, 33, 0, 1, 1, 'Live'),
(222, 81, 'Chicken Makhani Karahi (half) (079)', 3, 1485.00, 1485.00, 495.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-01-02 13:19:27', '2020-01-02 13:19:39', 188, 33, 0, 1, 1, 'Live'),
(223, 92, 'chicken Special Karahi (Full) (087)', 2, 2100.00, 2100.00, 1050.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-01-02 13:19:27', '2020-01-02 13:19:39', 189, 33, 0, 1, 1, 'Live'),
(233, 110, 'Mint Raita (107)', 3, 435.00, 435.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-13 22:20:30', '2020-02-13 22:20:34', 226, 40, 0, 1, 1, 'Live'),
(234, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-13 22:20:30', '2020-02-13 22:20:34', 227, 40, 0, 1, 1, 'Live'),
(235, 108, 'Sada Naan (104)', 1, 45.00, 45.00, 45.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', 'Done', '2020-02-13 22:20:30', '2020-02-13 22:20:34', 228, 40, 0, 1, 1, 'Live'),
(236, 70, 'Mineral Water (069)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 236, 40, 0, 1, 1, 'Live'),
(237, 23, 'Fish Tikka (022)', 1, 895.00, 895.00, 895.00, 0.00, '0', '0', 'plain', '', 0.00, 'Kitchen Item', 'undefined', '1970-01-01 05:00:00', '1970-01-01 05:00:00', 0, 41, 0, 1, 1, 'Live'),
(238, 14, 'Mutton Kabab (014)', 1, 1345.00, 1345.00, 1345.00, 0.00, '0', '0', 'plain', '', 0.00, 'Kitchen Item', 'undefined', '1970-01-01 05:00:00', '1970-01-01 05:00:00', 0, 41, 0, 1, 1, 'Live'),
(239, 21, 'Whole Fish Grill (020)', 1, 1195.00, 1195.00, 1195.00, 0.00, '0', '0', 'plain', '', 0.00, 'Kitchen Item', 'undefined', '1970-01-01 05:00:00', '1970-01-01 05:00:00', 0, 41, 0, 1, 1, 'Live'),
(240, 110, 'Mint Raita (107)', 1, 145.00, 145.00, 145.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 224, 39, 0, 1, 1, 'Live'),
(241, 114, 'Rogni Naan (113)', 1, 65.00, 65.00, 65.00, 0.00, '[]', '0', 'plain', '', 0.00, 'Kitchen Item', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 225, 39, 0, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details_modifiers`
--

CREATE TABLE `tbl_sales_details_modifiers` (
  `id` bigint(50) NOT NULL,
  `modifier_id` int(15) NOT NULL,
  `modifier_price` float(10,2) NOT NULL,
  `food_menu_id` int(10) NOT NULL,
  `sales_id` int(15) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `sales_details_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `outlet_id` int(15) NOT NULL,
  `customer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions`
--

CREATE TABLE `tbl_sale_consumptions` (
  `id` bigint(50) NOT NULL,
  `sale_id` int(10) DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions`
--

INSERT INTO `tbl_sale_consumptions` (`id`, `sale_id`, `order_status`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 0, 1, 1, 'Live'),
(3, 3, 0, 1, 1, 'Live'),
(4, 4, 0, 1, 1, 'Live'),
(5, 5, 0, 1, 1, 'Live'),
(7, 6, 0, 1, 1, 'Live'),
(8, 7, 0, 1, 1, 'Live'),
(9, 8, 0, 1, 1, 'Live'),
(10, 9, 0, 1, 1, 'Live'),
(14, 10, 0, 1, 1, 'Live'),
(15, 11, 0, 1, 1, 'Live'),
(16, 12, 0, 1, 1, 'Live'),
(17, 13, 0, 1, 1, 'Live'),
(18, 14, 0, 1, 1, 'Live'),
(20, 2, 0, 1, 1, 'Live'),
(22, 16, 0, 1, 1, 'Live'),
(23, 17, 0, 1, 1, 'Live'),
(27, 19, 0, 1, 1, 'Live'),
(29, 20, 0, 1, 1, 'Live'),
(30, 18, 0, 1, 1, 'Live'),
(34, 21, 0, 1, 1, 'Live'),
(37, 23, 0, 1, 1, 'Live'),
(39, 25, 0, 1, 1, 'Live'),
(40, 26, 0, 1, 1, 'Live'),
(41, 27, 0, 1, 1, 'Live'),
(42, 28, 0, 1, 1, 'Live'),
(43, 29, 0, 1, 1, 'Live'),
(45, 31, 0, 1, 1, 'Live'),
(46, 32, 0, 1, 1, 'Live'),
(49, 15, 0, 1, 1, 'Live'),
(51, 30, 0, 1, 1, 'Live'),
(52, 36, 0, 1, 1, 'Live'),
(55, 38, 0, 1, 1, 'Live'),
(57, 33, 0, 1, 1, 'Live'),
(61, 40, 0, 1, 1, 'Live'),
(62, 41, 0, 1, 1, 'Live'),
(63, 39, 0, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_menus` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_sale_consumptions_of_menus`
--

INSERT INTO `tbl_sale_consumptions_of_menus` (`id`, `ingredient_id`, `consumption`, `sale_consumption_id`, `sales_id`, `order_status`, `food_menu_id`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 1.00, 1, 1, 0, 1, 1, 1, 'Live'),
(3, 1, 2.00, 3, 3, 0, 1, 1, 1, 'Live'),
(4, 1, 1.00, 4, 4, 0, 2, 1, 1, 'Live'),
(5, 1, 1.00, 5, 5, 0, 1, 1, 1, 'Live'),
(8, 1, 2.00, 7, 6, 0, 1, 1, 1, 'Live'),
(9, 1, 1.00, 8, 7, 0, 2, 1, 1, 'Live'),
(10, 1, 1.00, 9, 8, 0, 2, 1, 1, 'Live'),
(11, 1, 1.00, 10, 9, 0, 32, 1, 1, 'Live'),
(12, 1, 1.00, 10, 9, 0, 31, 1, 1, 'Live'),
(34, 1, 1.00, 14, 10, 0, 73, 1, 1, 'Live'),
(35, 1, 4.00, 14, 10, 0, 114, 1, 1, 'Live'),
(36, 1, 1.00, 14, 10, 0, 136, 1, 1, 'Live'),
(37, 1, 3.00, 14, 10, 0, 76, 1, 1, 'Live'),
(38, 1, 1.00, 14, 10, 0, 110, 1, 1, 'Live'),
(39, 1, 1.00, 15, 11, 0, 92, 1, 1, 'Live'),
(40, 1, 4.00, 15, 11, 0, 114, 1, 1, 'Live'),
(41, 1, 1.00, 15, 11, 0, 136, 1, 1, 'Live'),
(42, 1, 3.00, 15, 11, 0, 76, 1, 1, 'Live'),
(43, 1, 1.00, 15, 11, 0, 110, 1, 1, 'Live'),
(44, 1, 1.00, 16, 12, 0, 73, 1, 1, 'Live'),
(45, 1, 4.00, 16, 12, 0, 114, 1, 1, 'Live'),
(46, 1, 1.00, 16, 12, 0, 136, 1, 1, 'Live'),
(47, 1, 3.00, 16, 12, 0, 76, 1, 1, 'Live'),
(48, 1, 1.00, 16, 12, 0, 110, 1, 1, 'Live'),
(49, 1, 1.00, 17, 13, 0, 73, 1, 1, 'Live'),
(50, 1, 1.00, 17, 13, 0, 20, 1, 1, 'Live'),
(51, 1, 3.00, 17, 13, 0, 112, 1, 1, 'Live'),
(52, 1, 1.00, 17, 13, 0, 123, 1, 1, 'Live'),
(53, 1, 1.00, 17, 13, 0, 110, 1, 1, 'Live'),
(54, 1, 2.00, 17, 13, 0, 76, 1, 1, 'Live'),
(55, 1, 3.00, 18, 14, 0, 123, 1, 1, 'Live'),
(56, 1, 3.00, 18, 14, 0, 110, 1, 1, 'Live'),
(57, 1, 1.00, 18, 14, 0, 106, 1, 1, 'Live'),
(58, 1, 2.00, 18, 14, 0, 79, 1, 1, 'Live'),
(59, 1, 2.00, 18, 14, 0, 20, 1, 1, 'Live'),
(60, 1, 7.00, 18, 14, 0, 74, 1, 1, 'Live'),
(61, 1, 7.00, 18, 14, 0, 112, 1, 1, 'Live'),
(62, 1, 7.00, 18, 14, 0, 108, 1, 1, 'Live'),
(63, 1, 1.00, 18, 14, 0, 77, 1, 1, 'Live'),
(64, 1, 2.00, 18, 14, 0, 5, 1, 1, 'Live'),
(65, 1, 1.00, 18, 14, 0, 12, 1, 1, 'Live'),
(66, 1, 1.00, 18, 14, 0, 3, 1, 1, 'Live'),
(67, 1, 1.00, 18, 14, 0, 37, 1, 1, 'Live'),
(68, 1, 1.00, 18, 14, 0, 19, 1, 1, 'Live'),
(69, 1, 1.00, 18, 14, 0, 32, 1, 1, 'Live'),
(72, 1, 1.00, 20, 2, 0, 1, 1, 1, 'Live'),
(73, 1, 1.00, 20, 2, 0, 1, 1, 1, 'Live'),
(75, 1, 1.00, 22, 16, 0, 127, 1, 1, 'Live'),
(76, 1, 1.00, 22, 16, 0, 51, 1, 1, 'Live'),
(77, 1, 1.00, 22, 16, 0, 110, 1, 1, 'Live'),
(78, 1, 4.00, 22, 16, 0, 108, 1, 1, 'Live'),
(79, 1, 1.00, 22, 16, 0, 70, 1, 1, 'Live'),
(80, 1, 1.00, 23, 17, 0, 60, 1, 1, 'Live'),
(81, 1, 1.00, 23, 17, 0, 117, 1, 1, 'Live'),
(82, 1, 1.00, 23, 17, 0, 96, 1, 1, 'Live'),
(83, 1, 1.00, 23, 17, 0, 112, 1, 1, 'Live'),
(84, 1, 1.00, 23, 17, 0, 114, 1, 1, 'Live'),
(85, 1, 1.00, 23, 17, 0, 28, 1, 1, 'Live'),
(86, 1, 1.00, 23, 17, 0, 70, 1, 1, 'Live'),
(87, 1, 1.00, 23, 17, 0, 110, 1, 1, 'Live'),
(100, 1, 1.00, 27, 19, 0, 7, 1, 1, 'Live'),
(101, 1, 1.00, 27, 19, 0, 30, 1, 1, 'Live'),
(102, 1, 2.00, 27, 19, 0, 112, 1, 1, 'Live'),
(103, 1, 1.00, 27, 19, 0, 96, 1, 1, 'Live'),
(104, 1, 1.00, 27, 19, 0, 70, 1, 1, 'Live'),
(105, 1, 2.00, 27, 19, 0, 62, 1, 1, 'Live'),
(106, 1, 2.00, 27, 19, 0, 27, 1, 1, 'Live'),
(107, 1, 2.00, 27, 19, 0, 76, 1, 1, 'Live'),
(112, 1, 1.00, 29, 20, 0, 7, 1, 1, 'Live'),
(113, 1, 1.00, 29, 20, 0, 30, 1, 1, 'Live'),
(114, 1, 1.00, 29, 20, 0, 96, 1, 1, 'Live'),
(115, 1, 2.00, 29, 20, 0, 112, 1, 1, 'Live'),
(116, 1, 1.00, 29, 20, 0, 70, 1, 1, 'Live'),
(117, 1, 2.00, 29, 20, 0, 62, 1, 1, 'Live'),
(118, 1, 1.00, 29, 20, 0, 76, 1, 1, 'Live'),
(119, 1, 1.00, 29, 20, 0, 76, 1, 1, 'Live'),
(120, 1, 1.00, 30, 18, 0, 35, 1, 1, 'Live'),
(121, 1, 3.00, 30, 18, 0, 114, 1, 1, 'Live'),
(122, 1, 1.00, 30, 18, 0, 110, 1, 1, 'Live'),
(123, 1, 1.00, 30, 18, 0, 70, 1, 1, 'Live'),
(133, 1, 1.00, 34, 21, 0, 107, 1, 1, 'Live'),
(134, 1, 3.00, 34, 21, 0, 112, 1, 1, 'Live'),
(135, 1, 1.00, 34, 21, 0, 113, 1, 1, 'Live'),
(144, 1, 1.00, 37, 23, 0, 77, 1, 1, 'Live'),
(145, 1, 1.00, 37, 23, 0, 26, 1, 1, 'Live'),
(146, 1, 3.00, 37, 23, 0, 117, 1, 1, 'Live'),
(147, 1, 2.00, 37, 23, 0, 114, 1, 1, 'Live'),
(148, 1, 1.00, 37, 23, 0, 113, 1, 1, 'Live'),
(149, 1, 1.00, 37, 23, 0, 70, 1, 1, 'Live'),
(153, 1, 1.00, 39, 25, 0, 157, 1, 1, 'Live'),
(154, 1, 1.00, 39, 25, 0, 70, 1, 1, 'Live'),
(155, 1, 1.00, 40, 26, 0, 158, 1, 1, 'Live'),
(156, 1, 2.00, 40, 26, 0, 108, 1, 1, 'Live'),
(157, 1, 1.00, 40, 26, 0, 70, 1, 1, 'Live'),
(158, 1, 1.00, 41, 27, 0, 93, 1, 1, 'Live'),
(159, 1, 2.00, 41, 27, 0, 163, 1, 1, 'Live'),
(160, 1, 1.00, 41, 27, 0, 70, 1, 1, 'Live'),
(161, 1, 1.00, 42, 28, 0, 77, 1, 1, 'Live'),
(162, 1, 1.00, 42, 28, 0, 73, 1, 1, 'Live'),
(163, 1, 2.00, 42, 28, 0, 130, 1, 1, 'Live'),
(164, 1, 10.00, 42, 28, 0, 108, 1, 1, 'Live'),
(165, 1, 10.00, 42, 28, 0, 112, 1, 1, 'Live'),
(166, 1, 2.00, 42, 28, 0, 59, 1, 1, 'Live'),
(167, 1, 1.00, 42, 28, 0, 123, 1, 1, 'Live'),
(168, 1, 4.00, 42, 28, 0, 70, 1, 1, 'Live'),
(169, 1, 1.00, 43, 29, 0, 77, 1, 1, 'Live'),
(170, 1, 1.00, 43, 29, 0, 73, 1, 1, 'Live'),
(171, 1, 2.00, 43, 29, 0, 130, 1, 1, 'Live'),
(172, 1, 10.00, 43, 29, 0, 108, 1, 1, 'Live'),
(173, 1, 10.00, 43, 29, 0, 112, 1, 1, 'Live'),
(174, 1, 2.00, 43, 29, 0, 59, 1, 1, 'Live'),
(175, 1, 1.00, 43, 29, 0, 123, 1, 1, 'Live'),
(176, 1, 4.00, 43, 29, 0, 70, 1, 1, 'Live'),
(181, 2, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(182, 10, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(183, 7, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(184, 3, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(185, 4, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(186, 8, 5.00, 45, 31, 0, 88, 1, 1, 'Live'),
(187, 2, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(188, 10, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(189, 7, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(190, 3, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(191, 4, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(192, 8, 5.00, 45, 31, 0, 88, 1, 1, 'Live'),
(193, 2, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(194, 10, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(195, 7, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(196, 3, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(197, 4, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(198, 8, 5.00, 45, 31, 0, 88, 1, 1, 'Live'),
(199, 2, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(200, 10, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(201, 7, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(202, 3, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(203, 4, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(204, 8, 5.00, 45, 31, 0, 88, 1, 1, 'Live'),
(205, 2, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(206, 10, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(207, 7, 1.00, 45, 31, 0, 88, 1, 1, 'Live'),
(208, 3, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(209, 4, 0.10, 45, 31, 0, 88, 1, 1, 'Live'),
(210, 8, 5.00, 45, 31, 0, 88, 1, 1, 'Live'),
(211, 1, 4.00, 46, 32, 0, 1, 1, 1, 'Live'),
(219, 1, 2.00, 49, 15, 0, 62, 1, 1, 'Live'),
(223, 1, 3.00, 51, 30, 0, 70, 1, 1, 'Live'),
(224, 1, 2.00, 51, 30, 0, 112, 1, 1, 'Live'),
(225, 1, 2.00, 51, 30, 0, 108, 1, 1, 'Live'),
(226, 1, 1.00, 51, 30, 0, 123, 1, 1, 'Live'),
(227, 1, 1.00, 51, 30, 0, 100, 1, 1, 'Live'),
(228, 1, 1.00, 52, 36, 0, 110, 1, 1, 'Live'),
(229, 1, 1.00, 52, 36, 0, 110, 1, 1, 'Live'),
(230, 1, 1.00, 52, 36, 0, 110, 1, 1, 'Live'),
(231, 1, 1.00, 52, 36, 0, 108, 1, 1, 'Live'),
(238, 1, 1.00, 55, 38, 0, 16, 1, 1, 'Live'),
(239, 1, 1.00, 55, 38, 0, 57, 1, 1, 'Live'),
(240, 1, 1.00, 55, 38, 0, 69, 1, 1, 'Live'),
(241, 1, 1.00, 55, 38, 0, 93, 1, 1, 'Live'),
(242, 1, 1.00, 55, 38, 0, 114, 1, 1, 'Live'),
(246, 1, 5.00, 57, 33, 0, 95, 1, 1, 'Live'),
(247, 1, 3.00, 57, 33, 0, 81, 1, 1, 'Live'),
(248, 1, 2.00, 57, 33, 0, 92, 1, 1, 'Live'),
(258, 1, 3.00, 61, 40, 0, 110, 1, 1, 'Live'),
(259, 1, 1.00, 61, 40, 0, 70, 1, 1, 'Live'),
(260, 1, 1.00, 61, 40, 0, 108, 1, 1, 'Live'),
(261, 1, 1.00, 61, 40, 0, 70, 1, 1, 'Live'),
(262, 1, 1.00, 62, 41, 0, 23, 1, 1, 'Live'),
(263, 1, 1.00, 62, 41, 0, 14, 1, 1, 'Live'),
(264, 1, 1.00, 62, 41, 0, 21, 1, 1, 'Live'),
(265, 1, 1.00, 63, 39, 0, 110, 1, 1, 'Live'),
(266, 1, 1.00, 63, 39, 0, 114, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_consumptions_of_modifiers_of_menus`
--

CREATE TABLE `tbl_sale_consumptions_of_modifiers_of_menus` (
  `id` bigint(50) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `consumption` float(10,2) DEFAULT NULL,
  `sale_consumption_id` int(10) DEFAULT NULL,
  `sales_id` int(10) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '1=new order,2=invoiced order, 3=closed order',
  `food_menu_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `date_format`, `time_zone`, `currency`, `company_id`, `del_status`) VALUES
(4, 'd/m/Y', 'Asia/Karachi', 'Rs', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `id` int(11) NOT NULL,
  `email_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`id`, `email_address`, `password`, `company_id`, `del_status`) VALUES
(1, '', '', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `description`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'Cocacola', 'Kashif', '03444444', '', '', '', 1, 1, 'Live'),
(2, 'Cocacola two', 'Asad', '944444444', '', '', '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payments`
--

CREATE TABLE `tbl_supplier_payments` (
  `id` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier_payments`
--

INSERT INTO `tbl_supplier_payments` (`id`, `date`, `supplier_id`, `amount`, `note`, `user_id`, `outlet_id`, `del_status`) VALUES
(1, '2019-11-21', 2, 1000.00, '', 1, 1, 'Live'),
(2, '2019-11-21', 2, 1100.00, '', 1, 1, 'Live'),
(3, '2020-02-13', 1, 90.00, '', 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tables`
--

CREATE TABLE `tbl_tables` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sit_capacity` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tables`
--

INSERT INTO `tbl_tables` (`id`, `name`, `sit_capacity`, `position`, `description`, `user_id`, `outlet_id`, `company_id`, `del_status`) VALUES
(1, 'tableOne line one', '6', 'left line one', '', 1, 1, 1, 'Live'),
(2, 'khawar', '6', 'front', '', 1, 1, 1, 'Live'),
(3, '4', '6', 'Left Door', '', 1, 1, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_kot`
--

CREATE TABLE `tbl_temp_kot` (
  `id` int(10) NOT NULL,
  `temp_kot_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_zone`
--

CREATE TABLE `tbl_time_zone` (
  `id` int(10) NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `zone_name` varchar(35) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tbl_time_zone`
--

INSERT INTO `tbl_time_zone` (`id`, `country_code`, `zone_name`, `del_status`) VALUES
(1, 'AD', 'Europe/Andorra', 'Live'),
(2, 'AE', 'Asia/Dubai', 'Live'),
(3, 'AF', 'Asia/Kabul', 'Live'),
(4, 'AG', 'America/Antigua', 'Live'),
(5, 'AI', 'America/Anguilla', 'Live'),
(6, 'AL', 'Europe/Tirane', 'Live'),
(7, 'AM', 'Asia/Yerevan', 'Live'),
(8, 'AO', 'Africa/Luanda', 'Live'),
(9, 'AQ', 'Antarctica/McMurdo', 'Live'),
(10, 'AQ', 'Antarctica/Casey', 'Live'),
(11, 'AQ', 'Antarctica/Davis', 'Live'),
(12, 'AQ', 'Antarctica/DumontDUrville', 'Live'),
(13, 'AQ', 'Antarctica/Mawson', 'Live'),
(14, 'AQ', 'Antarctica/Palmer', 'Live'),
(15, 'AQ', 'Antarctica/Rothera', 'Live'),
(16, 'AQ', 'Antarctica/Syowa', 'Live'),
(17, 'AQ', 'Antarctica/Troll', 'Live'),
(18, 'AQ', 'Antarctica/Vostok', 'Live'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 'Live'),
(20, 'AR', 'America/Argentina/Cordoba', 'Live'),
(21, 'AR', 'America/Argentina/Salta', 'Live'),
(22, 'AR', 'America/Argentina/Jujuy', 'Live'),
(23, 'AR', 'America/Argentina/Tucuman', 'Live'),
(24, 'AR', 'America/Argentina/Catamarca', 'Live'),
(25, 'AR', 'America/Argentina/La_Rioja', 'Live'),
(26, 'AR', 'America/Argentina/San_Juan', 'Live'),
(27, 'AR', 'America/Argentina/Mendoza', 'Live'),
(28, 'AR', 'America/Argentina/San_Luis', 'Live'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 'Live'),
(30, 'AR', 'America/Argentina/Ushuaia', 'Live'),
(31, 'AS', 'Pacific/Pago_Pago', 'Live'),
(32, 'AT', 'Europe/Vienna', 'Live'),
(33, 'AU', 'Australia/Lord_Howe', 'Live'),
(34, 'AU', 'Antarctica/Macquarie', 'Live'),
(35, 'AU', 'Australia/Hobart', 'Live'),
(36, 'AU', 'Australia/Currie', 'Live'),
(37, 'AU', 'Australia/Melbourne', 'Live'),
(38, 'AU', 'Australia/Sydney', 'Live'),
(39, 'AU', 'Australia/Broken_Hill', 'Live'),
(40, 'AU', 'Australia/Brisbane', 'Live'),
(41, 'AU', 'Australia/Lindeman', 'Live'),
(42, 'AU', 'Australia/Adelaide', 'Live'),
(43, 'AU', 'Australia/Darwin', 'Live'),
(44, 'AU', 'Australia/Perth', 'Live'),
(45, 'AU', 'Australia/Eucla', 'Live'),
(46, 'AW', 'America/Aruba', 'Live'),
(47, 'AX', 'Europe/Mariehamn', 'Live'),
(48, 'AZ', 'Asia/Baku', 'Live'),
(49, 'BA', 'Europe/Sarajevo', 'Live'),
(50, 'BB', 'America/Barbados', 'Live'),
(51, 'BD', 'Asia/Dhaka', 'Live'),
(52, 'BE', 'Europe/Brussels', 'Live'),
(53, 'BF', 'Africa/Ouagadougou', 'Live'),
(54, 'BG', 'Europe/Sofia', 'Live'),
(55, 'BH', 'Asia/Bahrain', 'Live'),
(56, 'BI', 'Africa/Bujumbura', 'Live'),
(57, 'BJ', 'Africa/Porto-Novo', 'Live'),
(58, 'BL', 'America/St_Barthelemy', 'Live'),
(59, 'BM', 'Atlantic/Bermuda', 'Live'),
(60, 'BN', 'Asia/Brunei', 'Live'),
(61, 'BO', 'America/La_Paz', 'Live'),
(62, 'BQ', 'America/Kralendijk', 'Live'),
(63, 'BR', 'America/Noronha', 'Live'),
(64, 'BR', 'America/Belem', 'Live'),
(65, 'BR', 'America/Fortaleza', 'Live'),
(66, 'BR', 'America/Recife', 'Live'),
(67, 'BR', 'America/Araguaina', 'Live'),
(68, 'BR', 'America/Maceio', 'Live'),
(69, 'BR', 'America/Bahia', 'Live'),
(70, 'BR', 'America/Sao_Paulo', 'Live'),
(71, 'BR', 'America/Campo_Grande', 'Live'),
(72, 'BR', 'America/Cuiaba', 'Live'),
(73, 'BR', 'America/Santarem', 'Live'),
(74, 'BR', 'America/Porto_Velho', 'Live'),
(75, 'BR', 'America/Boa_Vista', 'Live'),
(76, 'BR', 'America/Manaus', 'Live'),
(77, 'BR', 'America/Eirunepe', 'Live'),
(78, 'BR', 'America/Rio_Branco', 'Live'),
(79, 'BS', 'America/Nassau', 'Live'),
(80, 'BT', 'Asia/Thimphu', 'Live'),
(81, 'BW', 'Africa/Gaborone', 'Live'),
(82, 'BY', 'Europe/Minsk', 'Live'),
(83, 'BZ', 'America/Belize', 'Live'),
(84, 'CA', 'America/St_Johns', 'Live'),
(85, 'CA', 'America/Halifax', 'Live'),
(86, 'CA', 'America/Glace_Bay', 'Live'),
(87, 'CA', 'America/Moncton', 'Live'),
(88, 'CA', 'America/Goose_Bay', 'Live'),
(89, 'CA', 'America/Blanc-Sablon', 'Live'),
(90, 'CA', 'America/Toronto', 'Live'),
(91, 'CA', 'America/Nipigon', 'Live'),
(92, 'CA', 'America/Thunder_Bay', 'Live'),
(93, 'CA', 'America/Iqaluit', 'Live'),
(94, 'CA', 'America/Pangnirtung', 'Live'),
(95, 'CA', 'America/Atikokan', 'Live'),
(96, 'CA', 'America/Winnipeg', 'Live'),
(97, 'CA', 'America/Rainy_River', 'Live'),
(98, 'CA', 'America/Resolute', 'Live'),
(99, 'CA', 'America/Rankin_Inlet', 'Live'),
(100, 'CA', 'America/Regina', 'Live'),
(101, 'CA', 'America/Swift_Current', 'Live'),
(102, 'CA', 'America/Edmonton', 'Live'),
(103, 'CA', 'America/Cambridge_Bay', 'Live'),
(104, 'CA', 'America/Yellowknife', 'Live'),
(105, 'CA', 'America/Inuvik', 'Live'),
(106, 'CA', 'America/Creston', 'Live'),
(107, 'CA', 'America/Dawson_Creek', 'Live'),
(108, 'CA', 'America/Fort_Nelson', 'Live'),
(109, 'CA', 'America/Vancouver', 'Live'),
(110, 'CA', 'America/Whitehorse', 'Live'),
(111, 'CA', 'America/Dawson', 'Live'),
(112, 'CC', 'Indian/Cocos', 'Live'),
(113, 'CD', 'Africa/Kinshasa', 'Live'),
(114, 'CD', 'Africa/Lubumbashi', 'Live'),
(115, 'CF', 'Africa/Bangui', 'Live'),
(116, 'CG', 'Africa/Brazzaville', 'Live'),
(117, 'CH', 'Europe/Zurich', 'Live'),
(118, 'CI', 'Africa/Abidjan', 'Live'),
(119, 'CK', 'Pacific/Rarotonga', 'Live'),
(120, 'CL', 'America/Santiago', 'Live'),
(121, 'CL', 'America/Punta_Arenas', 'Live'),
(122, 'CL', 'Pacific/Easter', 'Live'),
(123, 'CM', 'Africa/Douala', 'Live'),
(124, 'CN', 'Asia/Shanghai', 'Live'),
(125, 'CN', 'Asia/Urumqi', 'Live'),
(126, 'CO', 'America/Bogota', 'Live'),
(127, 'CR', 'America/Costa_Rica', 'Live'),
(128, 'CU', 'America/Havana', 'Live'),
(129, 'CV', 'Atlantic/Cape_Verde', 'Live'),
(130, 'CW', 'America/Curacao', 'Live'),
(131, 'CX', 'Indian/Christmas', 'Live'),
(132, 'CY', 'Asia/Nicosia', 'Live'),
(133, 'CY', 'Asia/Famagusta', 'Live'),
(134, 'CZ', 'Europe/Prague', 'Live'),
(135, 'DE', 'Europe/Berlin', 'Live'),
(136, 'DE', 'Europe/Busingen', 'Live'),
(137, 'DJ', 'Africa/Djibouti', 'Live'),
(138, 'DK', 'Europe/Copenhagen', 'Live'),
(139, 'DM', 'America/Dominica', 'Live'),
(140, 'DO', 'America/Santo_Domingo', 'Live'),
(141, 'DZ', 'Africa/Algiers', 'Live'),
(142, 'EC', 'America/Guayaquil', 'Live'),
(143, 'EC', 'Pacific/Galapagos', 'Live'),
(144, 'EE', 'Europe/Tallinn', 'Live'),
(145, 'EG', 'Africa/Cairo', 'Live'),
(146, 'EH', 'Africa/El_Aaiun', 'Live'),
(147, 'ER', 'Africa/Asmara', 'Live'),
(148, 'ES', 'Europe/Madrid', 'Live'),
(149, 'ES', 'Africa/Ceuta', 'Live'),
(150, 'ES', 'Atlantic/Canary', 'Live'),
(151, 'ET', 'Africa/Addis_Ababa', 'Live'),
(152, 'FI', 'Europe/Helsinki', 'Live'),
(153, 'FJ', 'Pacific/Fiji', 'Live'),
(154, 'FK', 'Atlantic/Stanley', 'Live'),
(155, 'FM', 'Pacific/Chuuk', 'Live'),
(156, 'FM', 'Pacific/Pohnpei', 'Live'),
(157, 'FM', 'Pacific/Kosrae', 'Live'),
(158, 'FO', 'Atlantic/Faroe', 'Live'),
(159, 'FR', 'Europe/Paris', 'Live'),
(160, 'GA', 'Africa/Libreville', 'Live'),
(161, 'GB', 'Europe/London', 'Live'),
(162, 'GD', 'America/Grenada', 'Live'),
(163, 'GE', 'Asia/Tbilisi', 'Live'),
(164, 'GF', 'America/Cayenne', 'Live'),
(165, 'GG', 'Europe/Guernsey', 'Live'),
(166, 'GH', 'Africa/Accra', 'Live'),
(167, 'GI', 'Europe/Gibraltar', 'Live'),
(168, 'GL', 'America/Godthab', 'Live'),
(169, 'GL', 'America/Danmarkshavn', 'Live'),
(170, 'GL', 'America/Scoresbysund', 'Live'),
(171, 'GL', 'America/Thule', 'Live'),
(172, 'GM', 'Africa/Banjul', 'Live'),
(173, 'GN', 'Africa/Conakry', 'Live'),
(174, 'GP', 'America/Guadeloupe', 'Live'),
(175, 'GQ', 'Africa/Malabo', 'Live'),
(176, 'GR', 'Europe/Athens', 'Live'),
(177, 'GS', 'Atlantic/South_Georgia', 'Live'),
(178, 'GT', 'America/Guatemala', 'Live'),
(179, 'GU', 'Pacific/Guam', 'Live'),
(180, 'GW', 'Africa/Bissau', 'Live'),
(181, 'GY', 'America/Guyana', 'Live'),
(182, 'HK', 'Asia/Hong_Kong', 'Live'),
(183, 'HN', 'America/Tegucigalpa', 'Live'),
(184, 'HR', 'Europe/Zagreb', 'Live'),
(185, 'HT', 'America/Port-au-Prince', 'Live'),
(186, 'HU', 'Europe/Budapest', 'Live'),
(187, 'ID', 'Asia/Jakarta', 'Live'),
(188, 'ID', 'Asia/Pontianak', 'Live'),
(189, 'ID', 'Asia/Makassar', 'Live'),
(190, 'ID', 'Asia/Jayapura', 'Live'),
(191, 'IE', 'Europe/Dublin', 'Live'),
(192, 'IL', 'Asia/Jerusalem', 'Live'),
(193, 'IM', 'Europe/Isle_of_Man', 'Live'),
(194, 'IN', 'Asia/Kolkata', 'Live'),
(195, 'IO', 'Indian/Chagos', 'Live'),
(196, 'IQ', 'Asia/Baghdad', 'Live'),
(197, 'IR', 'Asia/Tehran', 'Live'),
(198, 'IS', 'Atlantic/Reykjavik', 'Live'),
(199, 'IT', 'Europe/Rome', 'Live'),
(200, 'JE', 'Europe/Jersey', 'Live'),
(201, 'JM', 'America/Jamaica', 'Live'),
(202, 'JO', 'Asia/Amman', 'Live'),
(203, 'JP', 'Asia/Tokyo', 'Live'),
(204, 'KE', 'Africa/Nairobi', 'Live'),
(205, 'KG', 'Asia/Bishkek', 'Live'),
(206, 'KH', 'Asia/Phnom_Penh', 'Live'),
(207, 'KI', 'Pacific/Tarawa', 'Live'),
(208, 'KI', 'Pacific/Enderbury', 'Live'),
(209, 'KI', 'Pacific/Kiritimati', 'Live'),
(210, 'KM', 'Indian/Comoro', 'Live'),
(211, 'KN', 'America/St_Kitts', 'Live'),
(212, 'KP', 'Asia/Pyongyang', 'Live'),
(213, 'KR', 'Asia/Seoul', 'Live'),
(214, 'KW', 'Asia/Kuwait', 'Live'),
(215, 'KY', 'America/Cayman', 'Live'),
(216, 'KZ', 'Asia/Almaty', 'Live'),
(217, 'KZ', 'Asia/Qyzylorda', 'Live'),
(218, 'KZ', 'Asia/Aqtobe', 'Live'),
(219, 'KZ', 'Asia/Aqtau', 'Live'),
(220, 'KZ', 'Asia/Atyrau', 'Live'),
(221, 'KZ', 'Asia/Oral', 'Live'),
(222, 'LA', 'Asia/Vientiane', 'Live'),
(223, 'LB', 'Asia/Beirut', 'Live'),
(224, 'LC', 'America/St_Lucia', 'Live'),
(225, 'LI', 'Europe/Vaduz', 'Live'),
(226, 'LK', 'Asia/Colombo', 'Live'),
(227, 'LR', 'Africa/Monrovia', 'Live'),
(228, 'LS', 'Africa/Maseru', 'Live'),
(229, 'LT', 'Europe/Vilnius', 'Live'),
(230, 'LU', 'Europe/Luxembourg', 'Live'),
(231, 'LV', 'Europe/Riga', 'Live'),
(232, 'LY', 'Africa/Tripoli', 'Live'),
(233, 'MA', 'Africa/Casablanca', 'Live'),
(234, 'MC', 'Europe/Monaco', 'Live'),
(235, 'MD', 'Europe/Chisinau', 'Live'),
(236, 'ME', 'Europe/Podgorica', 'Live'),
(237, 'MF', 'America/Marigot', 'Live'),
(238, 'MG', 'Indian/Antananarivo', 'Live'),
(239, 'MH', 'Pacific/Majuro', 'Live'),
(240, 'MH', 'Pacific/Kwajalein', 'Live'),
(241, 'MK', 'Europe/Skopje', 'Live'),
(242, 'ML', 'Africa/Bamako', 'Live'),
(243, 'MM', 'Asia/Yangon', 'Live'),
(244, 'MN', 'Asia/Ulaanbaatar', 'Live'),
(245, 'MN', 'Asia/Hovd', 'Live'),
(246, 'MN', 'Asia/Choibalsan', 'Live'),
(247, 'MO', 'Asia/Macau', 'Live'),
(248, 'MP', 'Pacific/Saipan', 'Live'),
(249, 'MQ', 'America/Martinique', 'Live'),
(250, 'MR', 'Africa/Nouakchott', 'Live'),
(251, 'MS', 'America/Montserrat', 'Live'),
(252, 'MT', 'Europe/Malta', 'Live'),
(253, 'MU', 'Indian/Mauritius', 'Live'),
(254, 'MV', 'Indian/Maldives', 'Live'),
(255, 'MW', 'Africa/Blantyre', 'Live'),
(256, 'MX', 'America/Mexico_City', 'Live'),
(257, 'MX', 'America/Cancun', 'Live'),
(258, 'MX', 'America/Merida', 'Live'),
(259, 'MX', 'America/Monterrey', 'Live'),
(260, 'MX', 'America/Matamoros', 'Live'),
(261, 'MX', 'America/Mazatlan', 'Live'),
(262, 'MX', 'America/Chihuahua', 'Live'),
(263, 'MX', 'America/Ojinaga', 'Live'),
(264, 'MX', 'America/Hermosillo', 'Live'),
(265, 'MX', 'America/Tijuana', 'Live'),
(266, 'MX', 'America/Bahia_Banderas', 'Live'),
(267, 'MY', 'Asia/Kuala_Lumpur', 'Live'),
(268, 'MY', 'Asia/Kuching', 'Live'),
(269, 'MZ', 'Africa/Maputo', 'Live'),
(270, 'NA', 'Africa/Windhoek', 'Live'),
(271, 'NC', 'Pacific/Noumea', 'Live'),
(272, 'NE', 'Africa/Niamey', 'Live'),
(273, 'NF', 'Pacific/Norfolk', 'Live'),
(274, 'NG', 'Africa/Lagos', 'Live'),
(275, 'NI', 'America/Managua', 'Live'),
(276, 'NL', 'Europe/Amsterdam', 'Live'),
(277, 'NO', 'Europe/Oslo', 'Live'),
(278, 'NP', 'Asia/Kathmandu', 'Live'),
(279, 'NR', 'Pacific/Nauru', 'Live'),
(280, 'NU', 'Pacific/Niue', 'Live'),
(281, 'NZ', 'Pacific/Auckland', 'Live'),
(282, 'NZ', 'Pacific/Chatham', 'Live'),
(283, 'OM', 'Asia/Muscat', 'Live'),
(284, 'PA', 'America/Panama', 'Live'),
(285, 'PE', 'America/Lima', 'Live'),
(286, 'PF', 'Pacific/Tahiti', 'Live'),
(287, 'PF', 'Pacific/Marquesas', 'Live'),
(288, 'PF', 'Pacific/Gambier', 'Live'),
(289, 'PG', 'Pacific/Port_Moresby', 'Live'),
(290, 'PG', 'Pacific/Bougainville', 'Live'),
(291, 'PH', 'Asia/Manila', 'Live'),
(292, 'PK', 'Asia/Karachi', 'Live'),
(293, 'PL', 'Europe/Warsaw', 'Live'),
(294, 'PM', 'America/Miquelon', 'Live'),
(295, 'PN', 'Pacific/Pitcairn', 'Live'),
(296, 'PR', 'America/Puerto_Rico', 'Live'),
(297, 'PS', 'Asia/Gaza', 'Live'),
(298, 'PS', 'Asia/Hebron', 'Live'),
(299, 'PT', 'Europe/Lisbon', 'Live'),
(300, 'PT', 'Atlantic/Madeira', 'Live'),
(301, 'PT', 'Atlantic/Azores', 'Live'),
(302, 'PW', 'Pacific/Palau', 'Live'),
(303, 'PY', 'America/Asuncion', 'Live'),
(304, 'QA', 'Asia/Qatar', 'Live'),
(305, 'RE', 'Indian/Reunion', 'Live'),
(306, 'RO', 'Europe/Bucharest', 'Live'),
(307, 'RS', 'Europe/Belgrade', 'Live'),
(308, 'RU', 'Europe/Kaliningrad', 'Live'),
(309, 'RU', 'Europe/Moscow', 'Live'),
(310, 'RU', 'Europe/Simferopol', 'Live'),
(311, 'RU', 'Europe/Volgograd', 'Live'),
(312, 'RU', 'Europe/Kirov', 'Live'),
(313, 'RU', 'Europe/Astrakhan', 'Live'),
(314, 'RU', 'Europe/Saratov', 'Live'),
(315, 'RU', 'Europe/Ulyanovsk', 'Live'),
(316, 'RU', 'Europe/Samara', 'Live'),
(317, 'RU', 'Asia/Yekaterinburg', 'Live'),
(318, 'RU', 'Asia/Omsk', 'Live'),
(319, 'RU', 'Asia/Novosibirsk', 'Live'),
(320, 'RU', 'Asia/Barnaul', 'Live'),
(321, 'RU', 'Asia/Tomsk', 'Live'),
(322, 'RU', 'Asia/Novokuznetsk', 'Live'),
(323, 'RU', 'Asia/Krasnoyarsk', 'Live'),
(324, 'RU', 'Asia/Irkutsk', 'Live'),
(325, 'RU', 'Asia/Chita', 'Live'),
(326, 'RU', 'Asia/Yakutsk', 'Live'),
(327, 'RU', 'Asia/Khandyga', 'Live'),
(328, 'RU', 'Asia/Vladivostok', 'Live'),
(329, 'RU', 'Asia/Ust-Nera', 'Live'),
(330, 'RU', 'Asia/Magadan', 'Live'),
(331, 'RU', 'Asia/Sakhalin', 'Live'),
(332, 'RU', 'Asia/Srednekolymsk', 'Live'),
(333, 'RU', 'Asia/Kamchatka', 'Live'),
(334, 'RU', 'Asia/Anadyr', 'Live'),
(335, 'RW', 'Africa/Kigali', 'Live'),
(336, 'SA', 'Asia/Riyadh', 'Live'),
(337, 'SB', 'Pacific/Guadalcanal', 'Live'),
(338, 'SC', 'Indian/Mahe', 'Live'),
(339, 'SD', 'Africa/Khartoum', 'Live'),
(340, 'SE', 'Europe/Stockholm', 'Live'),
(341, 'SG', 'Asia/Singapore', 'Live'),
(342, 'SH', 'Atlantic/St_Helena', 'Live'),
(343, 'SI', 'Europe/Ljubljana', 'Live'),
(344, 'SJ', 'Arctic/Longyearbyen', 'Live'),
(345, 'SK', 'Europe/Bratislava', 'Live'),
(346, 'SL', 'Africa/Freetown', 'Live'),
(347, 'SM', 'Europe/San_Marino', 'Live'),
(348, 'SN', 'Africa/Dakar', 'Live'),
(349, 'SO', 'Africa/Mogadishu', 'Live'),
(350, 'SR', 'America/Paramaribo', 'Live'),
(351, 'SS', 'Africa/Juba', 'Live'),
(352, 'ST', 'Africa/Sao_Tome', 'Live'),
(353, 'SV', 'America/El_Salvador', 'Live'),
(354, 'SX', 'America/Lower_Princes', 'Live'),
(355, 'SY', 'Asia/Damascus', 'Live'),
(356, 'SZ', 'Africa/Mbabane', 'Live'),
(357, 'TC', 'America/Grand_Turk', 'Live'),
(358, 'TD', 'Africa/Ndjamena', 'Live'),
(359, 'TF', 'Indian/Kerguelen', 'Live'),
(360, 'TG', 'Africa/Lome', 'Live'),
(361, 'TH', 'Asia/Bangkok', 'Live'),
(362, 'TJ', 'Asia/Dushanbe', 'Live'),
(363, 'TK', 'Pacific/Fakaofo', 'Live'),
(364, 'TL', 'Asia/Dili', 'Live'),
(365, 'TM', 'Asia/Ashgabat', 'Live'),
(366, 'TN', 'Africa/Tunis', 'Live'),
(367, 'TO', 'Pacific/Tongatapu', 'Live'),
(368, 'TR', 'Europe/Istanbul', 'Live'),
(369, 'TT', 'America/Port_of_Spain', 'Live'),
(370, 'TV', 'Pacific/Funafuti', 'Live'),
(371, 'TW', 'Asia/Taipei', 'Live'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 'Live'),
(373, 'UA', 'Europe/Kiev', 'Live'),
(374, 'UA', 'Europe/Uzhgorod', 'Live'),
(375, 'UA', 'Europe/Zaporozhye', 'Live'),
(376, 'UG', 'Africa/Kampala', 'Live'),
(377, 'UM', 'Pacific/Midway', 'Live'),
(378, 'UM', 'Pacific/Wake', 'Live'),
(379, 'US', 'America/New_York', 'Live'),
(380, 'US', 'America/Detroit', 'Live'),
(381, 'US', 'America/Kentucky/Louisville', 'Live'),
(382, 'US', 'America/Kentucky/Monticello', 'Live'),
(383, 'US', 'America/Indiana/Indianapolis', 'Live'),
(384, 'US', 'America/Indiana/Vincennes', 'Live'),
(385, 'US', 'America/Indiana/Winamac', 'Live'),
(386, 'US', 'America/Indiana/Marengo', 'Live'),
(387, 'US', 'America/Indiana/Petersburg', 'Live'),
(388, 'US', 'America/Indiana/Vevay', 'Live'),
(389, 'US', 'America/Chicago', 'Live'),
(390, 'US', 'America/Indiana/Tell_City', 'Live'),
(391, 'US', 'America/Indiana/Knox', 'Live'),
(392, 'US', 'America/Menominee', 'Live'),
(393, 'US', 'America/North_Dakota/Center', 'Live'),
(394, 'US', 'America/North_Dakota/New_Salem', 'Live'),
(395, 'US', 'America/North_Dakota/Beulah', 'Live'),
(396, 'US', 'America/Denver', 'Live'),
(397, 'US', 'America/Boise', 'Live'),
(398, 'US', 'America/Phoenix', 'Live'),
(399, 'US', 'America/Los_Angeles', 'Live'),
(400, 'US', 'America/Anchorage', 'Live'),
(401, 'US', 'America/Juneau', 'Live'),
(402, 'US', 'America/Sitka', 'Live'),
(403, 'US', 'America/Metlakatla', 'Live'),
(404, 'US', 'America/Yakutat', 'Live'),
(405, 'US', 'America/Nome', 'Live'),
(406, 'US', 'America/Adak', 'Live'),
(407, 'US', 'Pacific/Honolulu', 'Live'),
(408, 'UY', 'America/Montevideo', 'Live'),
(409, 'UZ', 'Asia/Samarkand', 'Live'),
(410, 'UZ', 'Asia/Tashkent', 'Live'),
(411, 'VA', 'Europe/Vatican', 'Live'),
(412, 'VC', 'America/St_Vincent', 'Live'),
(413, 'VE', 'America/Caracas', 'Live'),
(414, 'VG', 'America/Tortola', 'Live'),
(415, 'VI', 'America/St_Thomas', 'Live'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 'Live'),
(417, 'VU', 'Pacific/Efate', 'Live'),
(418, 'WF', 'Pacific/Wallis', 'Live'),
(419, 'WS', 'Pacific/Apia', 'Live'),
(420, 'YE', 'Asia/Aden', 'Live'),
(421, 'YT', 'Indian/Mayotte', 'Live'),
(422, 'ZA', 'Africa/Johannesburg', 'Live'),
(423, 'ZM', 'Africa/Lusaka', 'Live'),
(424, 'ZW', 'Africa/Harare', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

CREATE TABLE `tbl_units` (
  `id` int(10) NOT NULL,
  `unit_name` varchar(10) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `company_id` int(1) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `unit_name`, `description`, `company_id`, `del_status`) VALUES
(1, 'Ltr', '', 1, 'Live'),
(2, 'KG', '', 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `will_login` varchar(20) NOT NULL DEFAULT 'No',
  `role` varchar(25) NOT NULL,
  `outlet_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'english',
  `last_login` datetime NOT NULL,
  `active_status` varchar(25) NOT NULL DEFAULT 'Active',
  `del_status` varchar(10) NOT NULL DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `phone`, `email_address`, `password`, `designation`, `will_login`, `role`, `outlet_id`, `company_id`, `account_creation_date`, `language`, `last_login`, `active_status`, `del_status`) VALUES
(1, 'admin', '090078601', 'admin@admin.com', 'pakistan123', NULL, 'No', 'Admin', 1, 1, '2018-02-17 07:28:32', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(2, 'Monir', '01785774645', 'monir@gmail.com', '123456', NULL, 'No', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(3, 'RASHED', '01825201709', 'rashedul15-6564@diu.edu.bd', '737499', 'Waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(4, 'Nazmul', '01713827749', 'prnt.multisys@gmail.com', '333333', 'Waiter', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(5, 'Rafi', '01825201707', 'rashedislam659@gmail.com', '402965', 'Manager', 'No', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(6, 'Ayat', '01539849384', 'ayat@yahoo.com', 'ayat123', NULL, 'No', 'Kitchen User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(7, 'Rafi', '01754345678', 'rafi@gmail.com', '1234567', 'Accountant', 'No', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(8, 'Dany', '34234234345', 'janis@yahoo.com', '123456', 'Superintendent', 'No', 'POS User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live'),
(11, 'Ali Farhan', '03234644578', 'aliowc@gmail.com', 'Farhan@ali123', 'Manager', 'Yes', 'User', 1, 1, '0000-00-00 00:00:00', 'english', '0000-00-00 00:00:00', 'Active', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu_access`
--

CREATE TABLE `tbl_user_menu_access` (
  `id` int(10) NOT NULL,
  `menu_id` int(10) DEFAULT 0,
  `user_id` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_menu_access`
--

INSERT INTO `tbl_user_menu_access` (`id`, `menu_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 9, 1),
(12, 11, 1),
(46, 13, 1),
(103, 14, 1),
(104, 15, 1),
(118, 16, 1),
(133, 5, 1),
(134, 10, 1),
(135, 12, 1),
(140, 17, 1),
(141, 18, 1),
(142, 19, 1),
(143, 16, 3),
(144, 17, 3),
(145, 15, 3),
(146, 8, 3),
(147, 6, 3),
(148, 3, 3),
(149, 13, 3),
(150, 18, 3),
(151, 9, 3),
(152, 2, 3),
(153, 7, 3),
(154, 1, 3),
(155, 14, 3),
(156, 11, 3),
(157, 10, 3),
(158, 19, 3),
(159, 4, 3),
(160, 17, 4),
(161, 18, 4),
(162, 19, 4),
(163, 18, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vats`
--

CREATE TABLE `tbl_vats` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `percentage` float(10,2) NOT NULL,
  `user_id` float(10,2) NOT NULL DEFAULT 1.00,
  `company_id` int(11) DEFAULT NULL,
  `del_status` varchar(6) DEFAULT 'Live'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vats`
--

INSERT INTO `tbl_vats` (`id`, `name`, `percentage`, `user_id`, `company_id`, `del_status`) VALUES
(1, 'General VAT', 15.00, 0.00, 1, 'Live'),
(2, 'Sales Tax', 15.00, 1.00, 1, 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastes`
--

CREATE TABLE `tbl_wastes` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `total_loss` float(10,2) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(50) DEFAULT 'Live',
  `food_menu_id` int(11) DEFAULT NULL,
  `food_menu_waste_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wastes`
--

INSERT INTO `tbl_wastes` (`id`, `reference_no`, `date`, `total_loss`, `note`, `employee_id`, `user_id`, `outlet_id`, `del_status`, `food_menu_id`, `food_menu_waste_qty`) VALUES
(1, '000001', '2019-11-21', 54.00, '', 6, 1, 1, 'Live', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waste_ingredients`
--

CREATE TABLE `tbl_waste_ingredients` (
  `id` int(10) NOT NULL,
  `ingredient_id` int(10) DEFAULT NULL,
  `waste_amount` float(10,2) DEFAULT NULL,
  `last_purchase_price` float(10,2) DEFAULT NULL,
  `loss_amount` float(10,2) DEFAULT NULL,
  `waste_id` int(10) DEFAULT NULL,
  `outlet_id` int(10) DEFAULT NULL,
  `del_status` varchar(10) DEFAULT 'Live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_waste_ingredients`
--

INSERT INTO `tbl_waste_ingredients` (`id`, `ingredient_id`, `waste_amount`, `last_purchase_price`, `loss_amount`, `waste_id`, `outlet_id`, `del_status`) VALUES
(1, 1, 2.00, 27.00, 54.00, 1, 1, 'Live');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_currencies`
--
ALTER TABLE `tbl_admin_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlet_taxes`
--
ALTER TABLE `tbl_outlet_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_currencies`
--
ALTER TABLE `tbl_admin_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tbl_admin_user_menus`
--
ALTER TABLE `tbl_admin_user_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer_due_receives`
--
ALTER TABLE `tbl_customer_due_receives`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense_items`
--
ALTER TABLE `tbl_expense_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menus`
--
ALTER TABLE `tbl_food_menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tbl_food_menus_ingredients`
--
ALTER TABLE `tbl_food_menus_ingredients`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tbl_food_menus_modifiers`
--
ALTER TABLE `tbl_food_menus_modifiers`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_food_menu_categories`
--
ALTER TABLE `tbl_food_menu_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_holds`
--
ALTER TABLE `tbl_holds`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_holds_details`
--
ALTER TABLE `tbl_holds_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_holds_details_modifiers`
--
ALTER TABLE `tbl_holds_details_modifiers`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ingredients`
--
ALTER TABLE `tbl_ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_ingredient_categories`
--
ALTER TABLE `tbl_ingredient_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_inventory_adjustment`
--
ALTER TABLE `tbl_inventory_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_modifiers`
--
ALTER TABLE `tbl_modifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_modifier_ingredients`
--
ALTER TABLE `tbl_modifier_ingredients`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_notification_bar_kitchen_panel`
--
ALTER TABLE `tbl_notification_bar_kitchen_panel`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_orders_table`
--
ALTER TABLE `tbl_orders_table`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_outlet_taxes`
--
ALTER TABLE `tbl_outlet_taxes`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_purchase_ingredients`
--
ALTER TABLE `tbl_purchase_ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_sales_details_modifiers`
--
ALTER TABLE `tbl_sales_details_modifiers`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions`
--
ALTER TABLE `tbl_sale_consumptions`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_menus`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `tbl_sale_consumptions_of_modifiers_of_menus`
--
ALTER TABLE `tbl_sale_consumptions_of_modifiers_of_menus`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_supplier_payments`
--
ALTER TABLE `tbl_supplier_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tables`
--
ALTER TABLE `tbl_tables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_temp_kot`
--
ALTER TABLE `tbl_temp_kot`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_time_zone`
--
ALTER TABLE `tbl_time_zone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user_menu_access`
--
ALTER TABLE `tbl_user_menu_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_vats`
--
ALTER TABLE `tbl_vats`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_wastes`
--
ALTER TABLE `tbl_wastes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_waste_ingredients`
--
ALTER TABLE `tbl_waste_ingredients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
