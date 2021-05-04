-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2016 at 07:06 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crazy_waterbillingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accountgroup`
--

CREATE TABLE `tbl_accountgroup` (
  `id` bigint(255) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accountgroup`
--

INSERT INTO `tbl_accountgroup` (`id`, `group_name`) VALUES
(2, 'Assets'),
(3, 'Liability'),
(4, 'Income'),
(5, 'Expense');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addassets`
--

CREATE TABLE `tbl_addassets` (
  `id` int(11) NOT NULL,
  `asset_type` varchar(250) NOT NULL,
  `quantity` int(225) NOT NULL,
  `total` int(225) NOT NULL,
  `no_price` int(250) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addassets`
--

INSERT INTO `tbl_addassets` (`id`, `asset_type`, `quantity`, `total`, `no_price`, `create_date_time`, `update_date_time`) VALUES
(1, 'tables', 4, 100, 0, '2016-04-21 15:19:24', '2016-04-21 09:49:24'),
(4, 'computers ', 3, 454, 56, '2016-05-19 05:50:26', '2016-05-19 05:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addcustomer`
--

CREATE TABLE `tbl_addcustomer` (
  `id` int(11) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `DOB` varchar(225) NOT NULL,
  `place_of_birth` varchar(200) NOT NULL,
  `city` varchar(300) NOT NULL,
  `state` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile1` varchar(20) NOT NULL,
  `mobile2` varchar(20) NOT NULL,
  `line_number` varchar(20) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `customer_type` varchar(300) NOT NULL,
  `zone` varchar(250) NOT NULL,
  `billingplans` varchar(300) NOT NULL,
  `referenceperson` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `paid_status` int(2) NOT NULL,
  `create_date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addcustomer`
--

INSERT INTO `tbl_addcustomer` (`id`, `account_id`, `customer_id`, `first_name`, `middle_name`, `last_name`, `gender`, `DOB`, `place_of_birth`, `city`, `state`, `address`, `mobile1`, `mobile2`, `line_number`, `email_id`, `customer_type`, `zone`, `billingplans`, `referenceperson`, `status`, `paid_status`, `create_date`, `create_date_time`, `update_date_time`) VALUES
(1, '1', 'WT5977', 'kaanchi', 'B.', 'Shende', 'female', '01-03-2016', 'karimnagar', 'karimnagar', 'Telangana', 'H.no 3/45k,\\\\\\\\nsrinagar,\\\\\\\\nkarimnagar.', '7045599809', '9502885037', '-040889652', 'supriya77@gmail.com', 'monthlycustomer', '6', '9', 'priya', 1, 1, '2016-03-01', '2016-02-24 10:38:52', '2016-06-23 07:00:12'),
(4, '2', 'WT8676', 'Abdirisaaq', 'Yuusuf', 'Axmed', 'male', '26-02-2016', 'B/weyne', 'B/weyne', 'Hiiraan', 'Xaafada Kooshin', '0615564145', '0615564145', '684040', 'n/a', 'metercustomer', '6', '', 'Abdirisaaq', 1, 1, '2016-02-27', '2016-02-27 11:09:17', '2016-06-23 07:00:12'),
(18, '3', 'WT20006', 'Pratik', 'Prakash', 'Gupte', 'male', '04-05-1987', 'Nagpur', 'Nagpur', 'Maharastra', 'Pratap Nagara Nagpur', '4666574484', '1234567890', '684040', 'pratikgupte@gmail.com', 'monthlycustomer', '6', '9', 'Aseashya', 1, 0, '2016-04-12', '2016-05-12 05:40:54', '2016-06-23 07:00:12'),
(20, '1', 'WT10001', 'Natasha', 'Shravan', 'Pande', 'female', '01-06-1980', 'Delhi', 'Delhi', 'Delhi', 'Near Railway track, Delhi', '787965654557', '8575645434', 'tghgh', 'natasha@gmail.com', 'monthlycustomer', '9', '9', 'pradeep', 0, 0, '2016-06-08', '2016-06-08 15:44:46', '2016-06-08 15:44:46'),
(21, '7', '12354', 'Suresh', 'R.', 'Pradhan', 'male', '14-06-2016', 'nag', 'nag', 'mh', 'indora', '63486324626832', '28308230332', '3423', 'gupta.abhishek1104@gmail.com', 'monthlycustomer', '9', '13', 'abc', 1, 0, '2016-06-14', '2016-06-14 06:45:07', '2016-06-23 06:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addcustomer1`
--

CREATE TABLE `tbl_addcustomer1` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `DOB` int(225) NOT NULL,
  `place_of_birth` varchar(200) NOT NULL,
  `city` varchar(300) NOT NULL,
  `state` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile1` varchar(20) NOT NULL,
  `mobile2` varchar(20) NOT NULL,
  `line_number` varchar(20) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `customer_type` varchar(300) NOT NULL,
  `zone` varchar(250) NOT NULL,
  `billingplans` varchar(300) NOT NULL,
  `referenceperson` varchar(200) NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addcustomer1`
--

INSERT INTO `tbl_addcustomer1` (`id`, `customer_id`, `first_name`, `middle_name`, `last_name`, `gender`, `DOB`, `place_of_birth`, `city`, `state`, `address`, `mobile1`, `mobile2`, `line_number`, `email_id`, `customer_type`, `zone`, `billingplans`, `referenceperson`, `status`, `create_date_time`) VALUES
(18, 'WT6353', 'pooji', 'tha', '.N', 'female', 2, 'adoni', 'kadapa', 'A.p', 'kadapa', '7894561235', '9874561236', '25353533', 'aaaa@gmail.com', 'metercustomer', 'hyderabad', '4', 'preethi', 1, '2016-02-03 12:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addcustomer_reading`
--

CREATE TABLE `tbl_addcustomer_reading` (
  `id` bigint(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `previous_reading` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `consumed` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addcustomer_reading`
--

INSERT INTO `tbl_addcustomer_reading` (`id`, `customer_id`, `previous_reading`, `reading`, `consumed`, `unit_price`, `amount`, `month`, `year`, `date`) VALUES
(2, 'WT9504', '', '400', '', '', '', '4', '2016', '2016-05-03 19:21:22'),
(3, 'WT9504', '', '200', '', '', '', '5', '2016', '2016-05-04 13:28:27'),
(7, 'WT9157', '', '200', '', '', '', '4', '2016', '2016-05-07 16:54:22'),
(8, 'WT9157', '', '1590', '', '', '', '5', '2016', '2016-05-07 17:16:14'),
(9, 'WT9157', '', '566', '', '', '', '6', '2016', '2016-05-07 17:59:02'),
(10, 'WT9504', '', '400', '', '', '', '1', '2016', '2016-05-07 18:00:13'),
(11, 'WT20005', '', '200', '', '', '', '1', '2016', '2016-05-07 18:03:51'),
(13, 'WT9157', '', '567', '', '', '', '6', '2016', '2016-05-10 11:46:57'),
(14, 'WT9157', '', '890', '', '', '', '7', '2016', '2016-05-10 11:48:08'),
(15, 'WT1006', '', '260', '', '', '', '1', '2016', '2016-05-10 16:37:20'),
(16, 'WT1006', '', '500', '', '', '', '2', '2016', '2016-05-10 16:37:33'),
(24, 'WT2001', '600', '800', '200', '1', '200', '3', '2016', '31-05-2016'),
(25, 'WT2001', '800', '900', '100', '1', '100', '4', '2016', '30-04-2016'),
(26, 'WT2001', '900', '3690', '2790', '1', '2790', '5', '2016', '01-06-2016'),
(27, 'WT2001', '3690', '3932', '242', '1', '242', '6', '2016', '30-06-2016'),
(28, 'WT2001', '3932', '5678', '1746', '1', '1746', '7', '2016', '31-07-2016'),
(29, 'WT20058', '0', '350', '350', '1', '350', '1', '2016', '31-01-2016'),
(30, 'WT8676', '0', '231', '231', '1', '231', '1', '2016', '31-01-2016'),
(31, 'WT8676', '231', '900', '669', '1', '669', '2', '2016', '31-02-2016'),
(32, 'WT8676', '900', '1234', '334', '1', '334', '3', '2016', '31-03-2016'),
(33, 'WT8676', '1234', '1300', '66', '1', '66', '4', '2016', '31-04-2016'),
(35, 'WT8676', '1300', '1670', '370', '1', '370', '5', '2016', '31-05-2016'),
(36, 'WT8676', '1670', '1690', '20', '1', '20', '6', '2016', '30-06-2016'),
(37, 'WT8676', '1690', '1790', '100', '1', '100', '7', '2016', '30-06-2016'),
(38, 'WT8676', '1790', '1800', '10', '1', '10', '8', '2016', '30-06-2016'),
(39, 'WT8676', '1800', '1900', '100', '1', '100', '9', '2016', '31-07-2016');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addemployee`
--

CREATE TABLE `tbl_addemployee` (
  `id` int(11) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` varchar(225) NOT NULL,
  `place_of_birth` varchar(200) NOT NULL,
  `state` varchar(300) NOT NULL,
  `city` varchar(260) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile1` varchar(20) NOT NULL,
  `mobile2` varchar(20) NOT NULL,
  `line_number` varchar(20) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `base_salary` int(225) NOT NULL,
  `job_title` varchar(300) NOT NULL,
  `tax` int(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addemployee`
--

INSERT INTO `tbl_addemployee` (`id`, `account_id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `gender`, `dob`, `place_of_birth`, `state`, `city`, `address`, `mobile1`, `mobile2`, `line_number`, `email_id`, `base_salary`, `job_title`, `tax`) VALUES
(1, '2', 'WT2610', 'Pavan', 'kumar', 'Shah', 'male', '06/16/1999', 'hyderabad', 'Telangana', 'hyderabad', 'hyderabad', '9000937934', '9603448027', '03025698', 'as@gmail.com', 1500, '3', 20),
(2, '1', 'WT6720', 'Sruthi', 'N.', 'Chowdary', 'female', '03/15/2016', 'adoni', 'A.p', 'kadapa', 'kadapa', '7045599809', '9874561236', '4042589', 'aaaa@gmail.com', 1000, '3', 30),
(3, '2', '52362', 'Nishant', 'A.', 'Mishra', 'male', '08-03-2016', 'gjumkjk', 'gnbghxnh', 'ukjmk', 'yhyju', '5868576686', 'nhgn', '25353533', 'as242@gmail.com', 1000, '3', 50),
(7, '3', '5445', 'Niraj', 'N.', 'Telrandhe', 'male', '21-04-2016', 'tyhtyh', 'ujhmuhyik', 'yhjj', 'ygujhyu', '563536385678', '52868765', '6536534', 'oklopio@gmail.com', 1200, '4', 25),
(8, '1', 'EM-5646', 'Chetan', 'Prakash', 'Kumbhare', 'male', '02-06-1988', 'Kolkata', 'West Bengal', 'Kolkata', 'Near durga mandir, kolkata', '5767686888', '565766688', 'tghgh', 'prakash@gmail.com', 5678, '4', 34),
(9, '8', '442', 'Nilam', 'S.', 'Dev', 'female', '14-06-2003', 'fdfs', 'sfs', 'sfs', 'dfsd', '8328738', '374894', '34343', 'ab@gmail.com', 500000, '4', 332);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addexpenses`
--

CREATE TABLE `tbl_addexpenses` (
  `id` int(11) NOT NULL,
  `ledger_id` int(11) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `expenses_id` varchar(20) NOT NULL,
  `expenses_type` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` datetime NOT NULL,
  `quantity` int(225) NOT NULL,
  `amount` int(225) NOT NULL,
  `total` int(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addexpenses`
--

INSERT INTO `tbl_addexpenses` (`id`, `ledger_id`, `account_id`, `invoice_id`, `expenses_id`, `expenses_type`, `date`, `create_date_time`, `update_date_time`, `quantity`, `amount`, `total`) VALUES
(1, 0, '0', '0', '4256', '1', '2016-03-01', '2016-03-08 12:30:55', '0000-00-00 00:00:00', 1, 450, 450),
(3, 0, '0', '0', '33441', '1', '1970-01-01', '2016-03-08 13:15:38', '0000-00-00 00:00:00', 2, 100, 200),
(7, 0, '0', '0', '23456', '6', '2016-05-20', '2016-05-20 09:53:56', '0000-00-00 00:00:00', 4, 67, 268),
(5, 0, '0', '0', '563536', '1', '2016-03-01', '2016-03-08 14:00:45', '0000-00-00 00:00:00', 2, 400, 800),
(6, 0, '0', '0', '3344', '1', '2016-03-08', '2016-03-08 14:22:05', '0000-00-00 00:00:00', 1, 121, 121),
(8, 0, '0', '0', '23456', '1', '2016-05-20', '2016-05-20 10:10:48', '0000-00-00 00:00:00', 4, 30, 120),
(9, 0, '0', '0', '3454', '3', '2016-05-20', '2016-05-20 10:29:42', '0000-00-00 00:00:00', 7, 21, 147),
(10, 0, '0', '0', '1234', '1', '2016-05-20', '2016-05-20 10:52:47', '0000-00-00 00:00:00', 7, 56, 392),
(11, 0, '0', '0', '67687', '2', '2016-05-26', '2016-05-26 14:11:53', '0000-00-00 00:00:00', 2, 56, 112),
(12, 0, '0', '1464272181', '576788', '4', '2016-05-26', '2016-05-26 14:16:34', '0000-00-00 00:00:00', 5, 30, 150),
(34, 2, '', 'WTEX-1466679953', 'EXP6634', '4', '2016-06-23', '2016-06-23 11:06:08', '2016-06-23 11:06:08', 6, 40, 240),
(18, 0, '0', 'WTEX-1465323629', 'fhg', '1', '2016-06-07', '2016-06-07 18:20:40', '0000-00-00 00:00:00', 2, 23, 46),
(19, 0, '0', 'WTEX-1465892299', '232', '4', '2016-06-14', '2016-06-14 08:18:39', '0000-00-00 00:00:00', 2, 23, 46),
(33, 2, '', 'WTEX-1466500839', 'EXP7110', '4', '2016-06-21', '2016-06-21 09:24:24', '2016-06-21 09:24:24', 2, 7, 14),
(21, 0, '', 'WTEX-1465893026', '33', '3', '2016-06-14', '2016-06-14 08:30:49', '0000-00-00 00:00:00', 10, 100, 1000),
(22, 0, '', 'WTEX-1465893143', '45', '4', '2016-06-14', '2016-06-14 08:32:46', '0000-00-00 00:00:00', 10, 50, 500),
(23, 0, '', 'WTEX-1465893534', '44', '1', '2016-06-14', '2016-06-14 08:39:24', '0000-00-00 00:00:00', 10, 20, 200),
(24, 0, '2', 'WTEX-1465894219', '44', '4', '2016-06-14', '2016-06-14 08:50:57', '0000-00-00 00:00:00', 10, 200, 2000),
(25, 2, '7', 'WTEX-1466164529', '332', '1', '1970-01-01', '2016-06-17 11:56:08', '2016-06-17 11:57:49', 10, 50, 500),
(26, 3, '7', 'WTEX-1466225991', '101', '1', '2016-06-18', '2016-06-18 05:03:58', '2016-06-18 05:03:58', 10, 20, 200),
(27, 3, '7', 'WTEX-1466226531', '102', '1', '2016-06-18', '2016-06-18 05:09:50', '2016-06-18 05:09:50', 10, 30, 300),
(28, 3, '', 'WTEX-1466232900', 'EXP1293', '1', '2016-06-18', '2016-06-18 06:55:48', '2016-06-18 06:55:48', 4, 50, 200),
(29, 3, '', 'WTEX-1466232900', 'EXP1293', '1', '2016-06-18', '2016-06-18 06:59:27', '2016-06-18 06:59:27', 4, 50, 200),
(30, 3, '', 'WTEX-1466233173', 'EXP6409', '4', '2016-06-18', '2016-06-18 06:59:49', '2016-06-18 06:59:49', 2, 4, 8),
(31, 2, '', 'WTEX-1466234179', 'EXP1904', '5', '2016-06-18', '2016-06-18 07:16:47', '2016-06-18 07:16:47', 2, 4, 8),
(32, 3, '', 'WTEX-1466234506', 'EXP6546', '5', '2016-06-18', '2016-06-18 07:22:04', '2016-06-18 07:22:04', 1, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addexpenses1`
--

CREATE TABLE `tbl_addexpenses1` (
  `id` int(11) NOT NULL,
  `expenses_id` varchar(20) NOT NULL,
  `expenses_type` varchar(250) NOT NULL,
  `quantity` int(225) NOT NULL,
  `amount` int(225) NOT NULL,
  `total` int(225) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addexpenses1`
--

INSERT INTO `tbl_addexpenses1` (`id`, `expenses_id`, `expenses_type`, `quantity`, `amount`, `total`, `create_date_time`, `update_date_time`) VALUES
(8, 'WT3017', 'ccc', 300, 2113, 152, '2016-01-23 16:35:33', '2016-01-23 23:28:37'),
(7, 'WT8312', 'sss', 200, 123, 1521532, '2016-01-23 16:34:53', '2016-01-23 22:34:53'),
(9, 'WT9609', 'sss', 200, 523, 5323, '2016-01-27 09:32:40', '2016-01-27 04:02:40'),
(10, 'WT9491', 'sss', 200, 123, 152, '2016-01-27 14:14:04', '2016-01-27 08:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addmetercustomer`
--

CREATE TABLE `tbl_addmetercustomer` (
  `id` int(11) NOT NULL,
  `ledger_id` int(11) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `name` varchar(252) NOT NULL,
  `oldmeter` float NOT NULL,
  `aftermeter` float NOT NULL,
  `consumedunits` int(250) NOT NULL,
  `per_unit` int(250) NOT NULL,
  `amount` int(225) NOT NULL,
  `balance` int(250) NOT NULL,
  `pay_amount` float NOT NULL,
  `total` int(250) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `status` varchar(2) NOT NULL,
  `date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addmetercustomer`
--

INSERT INTO `tbl_addmetercustomer` (`id`, `ledger_id`, `invoice_id`, `customer_id`, `name`, `oldmeter`, `aftermeter`, `consumedunits`, `per_unit`, `amount`, `balance`, `pay_amount`, `total`, `currency`, `month`, `year`, `status`, `date`, `create_date_time`, `update_date_time`) VALUES
(75, 0, '0', 'WT2001', 'Mukta Swapnil Barve', 900, 3690, 2790, 1, 2790, 0, 2700, 2790, '', '5', '2016', '1', '2016-05-16', '2016-05-16 08:11:25', '2016-05-16 08:11:33'),
(33, 0, '0', 'WT20005', 'Kailash Nat Patre', 0, 200, 200, 1, 200, 42, 158, 200, '', '', '2016', '1', '2016-05-16', '2016-05-07 18:04:32', '2016-05-16 06:31:37'),
(29, 0, '0', 'WT9504', 'pooji tha chowdary', 20, 0, 0, 1, 400, 100, 300, 100, '', '', '2016', '0', '0000-00-00', '2016-05-06 19:19:04', '2016-05-06 14:15:36'),
(30, 0, '0', 'WT9504', 'pooji tha chowdary', 20, 389, 389, 1, 389, 100, 400, 489, '', '', '2016', '0', '0000-00-00', '2016-05-06 20:02:10', '2016-05-06 14:32:10'),
(147, 2, 'WTME-1466679662', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 0, 231, 231, 1, 231, 18, 213, 231, 'Shilling Som', '1', '2016', '1', '2016-06-23', '2016-06-23 11:02:23', '2016-06-23 11:02:23'),
(74, 0, '0', 'WT2001', 'Mukta Swapnil Barve', 3690, 3932, 242, 1, 242, 0, 242, 242, '', '6', '2016', '1', '2016-05-16', '2016-05-16 08:10:40', '2016-05-16 02:40:40'),
(72, 0, '0', 'WT2001', 'Mukta Swapnil Barve', 600, 800, 200, 1, 200, 0, 200, 200, '', '3', '2016', '1', '2016-05-16', '2016-05-16 08:10:40', '2016-05-16 02:40:40'),
(138, 2, 'WTME-1466248057', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 1690, 1790, 100, 1, 100, 0, 100, 100, 'USD', '7', '2016', '1', '2016-06-18', '2016-06-18 11:10:54', '2016-06-18 05:40:54'),
(139, 2, 'WTME-1466248057', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 1790, 1800, 10, 1, 10, 0, 10, 10, 'USD', '8', '2016', '1', '2016-06-18', '2016-06-18 11:10:54', '2016-06-18 05:40:54'),
(137, 2, 'WTME-1466247915', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 1300, 1670, 370, 1, 370, 0, 370, 370, 'USD', '5', '2016', '1', '2016-06-18', '2016-06-18 11:05:44', '2016-06-18 05:35:44'),
(136, 2, 'WTME-1466246260', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 1670, 1690, 20, 1, 20, 0, 20, 20, 'USD', '6', '2016', '1', '2016-06-18', '2016-06-18 10:38:33', '2016-06-18 05:08:33'),
(140, 2, 'WTME-1466248057', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 1800, 1900, 100, 1, 100, 0, 100, 100, 'USD', '9', '2016', '1', '2016-06-18', '2016-06-18 11:10:54', '2016-06-18 05:40:54'),
(141, 2, 'WTME-1466248401', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 1234, 1300, 66, 1, 66, 0, 66, 66, 'USD', '4', '2016', '1', '2016-06-18', '2016-06-18 11:21:41', '2016-06-18 11:21:41'),
(146, 3, 'WTME-1466679585', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 900, 1234, 334, 1, 334, 0, 334, 334, 'USD', '3', '2016', '1', '2016-06-23', '2016-06-23 11:00:12', '2016-06-23 05:30:12'),
(145, 3, 'WTME-1466679585', 'WT8676', 'Abdirisaaq Yuusuf Axmed', 231, 900, 669, 1, 669, 0, 669, 669, 'USD', '2', '2016', '1', '2016-06-23', '2016-06-23 11:00:12', '2016-06-23 05:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addprofitloss`
--

CREATE TABLE `tbl_addprofitloss` (
  `id` bigint(255) NOT NULL,
  `share_holder` varchar(255) NOT NULL,
  `fromdate` varchar(255) NOT NULL,
  `todate` varchar(255) NOT NULL,
  `comission` varchar(255) NOT NULL,
  `amount_earn` varchar(255) NOT NULL,
  `datetime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addshareholder`
--

CREATE TABLE `tbl_addshareholder` (
  `id` bigint(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `placeofbirth` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amounttoshare` varchar(255) NOT NULL,
  `comission` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addshareholder`
--

INSERT INTO `tbl_addshareholder` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `placeofbirth`, `address`, `phone_number`, `email`, `amounttoshare`, `comission`, `date`, `datetime`, `status`) VALUES
(3, 'Poonam', 'Prakash', 'Kale', 'female', '03-05-1972', 'Nagpur', 'sadar nagpur', '4666574484', 'poonam@gmail.com', '5000', '50', '19-05-2016', '19-05-2016 05:55:10', '1'),
(4, 'Swapnil', 'Rai', 'Barapatre', 'male', '02-02-1988', 'Nagpur', 'sadar nagpur', '4666574484', 'swapnil.barapatre@gmail.com', '6000', '101', '19-05-2016', '19-05-2016 06:02:21', '1'),
(5, 'Naren', 'Goutam', 'Savre', 'male', '01-04-1976', 'Kolkata', 'Near durga mandir, Kolkata', '7657438984', 'narensavre@gmail.com', '600', '500', '24-05-2016', '24-05-2016 07:11:15', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_details`
--

CREATE TABLE `tbl_admin_details` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contactaddress` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin_details`
--

INSERT INTO `tbl_admin_details` (`id`, `username`, `password`, `email`, `mobile`, `contactaddress`, `user_type`, `status`, `create_date_time`, `update_date_time`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'dileep@sparkinfosys.com', '9999999999', '  gdfgdfg', 'admin', 1, '0000-00-00 00:00:00', '2016-05-27 11:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_login_users`
--

CREATE TABLE `tbl_admin_login_users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `session_info` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `ip_address` text COLLATE utf8_unicode_ci NOT NULL,
  `browser_name` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `current_date` datetime NOT NULL,
  `ipAddress` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `countryCode` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `countryName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `regionName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cityName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `zipCode` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `timeZone` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `statusCode` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `statusMessage` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin_login_users`
--

INSERT INTO `tbl_admin_login_users` (`id`, `name`, `userid`, `username`, `usertype`, `session_info`, `login_time`, `logout_time`, `ip_address`, `browser_name`, `current_date`, `ipAddress`, `countryCode`, `countryName`, `regionName`, `cityName`, `zipCode`, `latitude`, `longitude`, `timeZone`, `statusCode`, `statusMessage`) VALUES
(560, 'admin', 1, 'admin', 'admin', '8edfee97ef69392bf6f58997aca6aebb', '2016-06-25 04:52:39', '0000-00-00 00:00:00', '0.0.0.0', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-25 04:52:39', '0.0.0.0', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(551, 'admin', 1, 'admin', 'admin', '8f34cc4968e72132e7380f0ccbcab60d', '2016-06-17 10:49:44', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.84 (windows)', '2016-06-17 10:49:44', '', '', '', '', '', '', '', '', '', '', ''),
(348, 'murli', 4, 'murli@sparkinfosys.com', 'subadmin', '0c57a347b24ad256df7690004ebf3cb3', '2016-02-19 14:41:10', '0000-00-00 00:00:00', '183.83.39.223', 'Google Chrome/48.0.2564.109 (windows)', '2016-02-19 14:41:10', '183.83.39.223', 'IN', 'India', 'Telangana', 'Hyderabad', '500018', '17.3753', '78.4744', '+05:30', 'OK', ''),
(343, 'murli', 4, 'murli@sparkinfosys.com', 'subadmin', '4842592d5a149cd288f076eeaf5993ee', '2016-02-19 13:55:48', '0000-00-00 00:00:00', '183.83.39.223', 'Google Chrome/48.0.2564.109 (windows)', '2016-02-19 13:55:48', '183.83.39.223', 'IN', 'India', 'Telangana', 'Hyderabad', '500018', '17.3753', '78.4744', '+05:30', 'OK', ''),
(557, 'admin', 1, 'admin', 'admin', '506e3d0b2306a7eb240ac2c237268e2f', '2016-06-22 16:56:12', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-22 16:56:12', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(556, 'admin', 1, 'admin', 'admin', '23960d25c0c8996bf03328948b162824', '2016-06-22 09:51:39', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-22 09:51:39', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(536, 'murli', 6, 'dileep@sparkinfosys.com', 'subadmin', '3da1e134155b54a4dfecbd27801ec214', '2016-05-27 11:28:46', '0000-00-00 00:00:00', '0.0.0.0', 'Google Chrome/50.0.2661.102 (windows)', '2016-05-27 11:28:46', '0.0.0.0', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(552, 'admin', 1, 'admin', 'admin', '388d712db2ba75ca01669a4307f7d5bd', '2016-06-18 03:53:56', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.84 (windows)', '2016-06-18 03:53:56', '', '', '', '', '', '', '', '', '', '', ''),
(553, 'admin', 1, 'admin', 'admin', '6cd960cbf04a3bbe8a53abd9828c88fd', '2016-06-20 03:54:16', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-20 03:54:16', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(554, 'admin', 1, 'admin', 'admin', '80c693b0ff5fc17e316817d562a0218b', '2016-06-21 09:12:00', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-21 09:12:00', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(555, 'admin', 1, 'admin', 'admin', 'ee1ef53fbd2b40d29de2e00d4d27478d', '2016-06-22 06:36:57', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-22 06:36:57', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(534, 'murli', 6, 'dileep@sparkinfosys.com', 'subadmin', '0b589b6b11243e1321d15813f25bdf25', '2016-05-27 05:27:32', '0000-00-00 00:00:00', '0.0.0.0', 'Google Chrome/50.0.2661.102 (windows)', '2016-05-27 05:27:32', '0.0.0.0', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(350, 'murli', 4, 'murli@sparkinfosys.com', 'subadmin', '470c71bfd7f10c340c02e34f7707c825', '2016-02-19 15:48:04', '0000-00-00 00:00:00', '183.83.39.223', 'Google Chrome/48.0.2564.109 (windows)', '2016-02-19 15:48:04', '183.83.39.223', 'IN', 'India', 'Telangana', 'Hyderabad', '500018', '17.3753', '78.4744', '+05:30', 'OK', ''),
(558, 'admin', 1, 'admin', 'admin', '8fd60d4c47b504ef26d3314c0aecdde0', '2016-06-23 04:11:33', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-23 04:11:33', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', ''),
(559, 'admin', 1, 'admin', 'admin', '2e47ab4080e26460873509038c8601f6', '2016-06-24 04:04:42', '0000-00-00 00:00:00', '127.0.0.1', 'Google Chrome/51.0.2704.103 (windows)', '2016-06-24 04:04:42', '127.0.0.1', '-', '-', '-', '-', '-', '0', '0', '-', 'OK', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amountrate`
--

CREATE TABLE `tbl_amountrate` (
  `id` int(11) NOT NULL,
  `per_unit` int(250) NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_amountrate`
--

INSERT INTO `tbl_amountrate` (`id`, `per_unit`, `status`, `create_date_time`, `update_date_time`) VALUES
(1, 1, 0, '2016-04-20 13:06:48', '2016-04-20 07:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expensetype`
--

CREATE TABLE `tbl_expensetype` (
  `id` bigint(255) NOT NULL,
  `account_id` int(11) NOT NULL COMMENT 'account sub group type',
  `expensestype_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_expensetype`
--

INSERT INTO `tbl_expensetype` (`id`, `account_id`, `expensestype_name`) VALUES
(1, 1, 'Stationary'),
(2, 1, 'shidaal'),
(3, 2, 'Mushaar'),
(4, 2, 'Other expenses'),
(5, 7, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feesplaning`
--

CREATE TABLE `tbl_feesplaning` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(300) NOT NULL,
  `days` int(225) NOT NULL,
  `amount` int(225) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feesplaning`
--

INSERT INTO `tbl_feesplaning` (`id`, `name`, `details`, `days`, `amount`, `create_date_time`, `update_date_time`) VALUES
(9, 'Primary', 'fghx', 30, 300, '0000-00-00 00:00:00', '2016-02-18 03:41:16'),
(7, 'Secondary', 'vbjm', 91, 450, '0000-00-00 00:00:00', '2016-02-18 03:41:42'),
(13, 'Mohamed Ali', 'hal nal', 30, 500, '0000-00-00 00:00:00', '2016-04-20 07:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generate`
--

CREATE TABLE `tbl_generate` (
  `id` int(11) NOT NULL,
  `year` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `year_month_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_generate`
--

INSERT INTO `tbl_generate` (`id`, `year`, `month`, `year_month_id`, `status`, `create_date_time`, `update_date_time`) VALUES
(1, '2016', 'January', 'RANDULP818', 1, '2016-03-25 12:45:37', '2016-03-25 07:15:37'),
(2, '2016', 'February', 'RANDFKI214', 1, '2016-03-25 13:00:32', '2016-03-25 07:30:32'),
(3, '2016', 'March', 'RANDIUX747', 1, '2016-03-30 16:00:10', '2016-03-30 10:30:10'),
(4, '2016', 'April', 'RANDRQN612', 1, '2016-03-30 16:07:41', '2016-03-30 10:37:41'),
(5, '2016', 'May', 'RANDHZT630', 1, '2016-03-31 15:07:01', '2016-03-31 09:37:01'),
(6, '2016', 'August', 'RANDNLM139', 1, '2016-04-14 17:47:23', '2016-04-14 12:17:23'),
(7, '2017', 'July', 'RANDMFN459', 1, '2016-04-20 14:07:26', '2016-04-20 08:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generate_customer`
--

CREATE TABLE `tbl_generate_customer` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `insert_month_id` int(11) NOT NULL,
  `year` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `year_month_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_generate_customer`
--

INSERT INTO `tbl_generate_customer` (`id`, `customer_id`, `insert_month_id`, `year`, `month`, `year_month_id`, `status`, `create_date_time`, `update_date_time`) VALUES
(1, 'WT3976', 1, '2016', 'January', 'RANDULP818', 0, '2016-03-25 12:45:47', '2016-03-25 07:15:47'),
(2, '100', 0, '2016', 'March', 'RANDIUX747', 0, '2016-03-30 16:07:30', '2016-03-30 10:37:30'),
(3, '100', 0, '2016', 'February', 'RANDFKI214', 0, '2016-03-30 16:07:30', '2016-03-30 10:37:30'),
(4, '100', 2, '2016', 'January', 'RANDULP818', 0, '2016-03-30 16:07:30', '2016-03-30 10:37:30'),
(5, '#5678', 0, '2016', 'August', 'RANDNLM139', 0, '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(6, '#5678', 0, '2016', 'May', 'RANDHZT630', 0, '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(7, '#5678', 0, '2016', 'April', 'RANDRQN612', 0, '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(8, '#5678', 0, '2016', 'March', 'RANDIUX747', 0, '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(9, '#5678', 0, '2016', 'February', 'RANDFKI214', 0, '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(10, '#5678', 3, '2016', 'January', 'RANDULP818', 0, '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(11, '105', 0, '2017', 'July', 'RANDMFN459', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(12, '105', 0, '2016', 'August', 'RANDNLM139', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(13, '105', 0, '2016', 'May', 'RANDHZT630', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(14, '105', 0, '2016', 'April', 'RANDRQN612', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(15, '105', 0, '2016', 'March', 'RANDIUX747', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(16, '105', 0, '2016', 'February', 'RANDFKI214', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(17, '105', 4, '2016', 'January', 'RANDULP818', 0, '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(18, 'WT5977', 0, '2017', 'July', 'RANDMFN459', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(19, 'WT5977', 0, '2016', 'August', 'RANDNLM139', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(20, 'WT5977', 0, '2016', 'May', 'RANDHZT630', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(21, 'WT5977', 0, '2016', 'April', 'RANDRQN612', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(22, 'WT5977', 0, '2016', 'March', 'RANDIUX747', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(23, 'WT5977', 0, '2016', 'February', 'RANDFKI214', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(24, 'WT5977', 5, '2016', 'January', 'RANDULP818', 0, '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(25, 'WT5977', 0, '2017', 'July', 'RANDMFN459', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(26, 'WT5977', 0, '2016', 'August', 'RANDNLM139', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(27, 'WT5977', 0, '2016', 'May', 'RANDHZT630', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(28, 'WT5977', 0, '2016', 'April', 'RANDRQN612', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(29, 'WT5977', 0, '2016', 'March', 'RANDIUX747', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(30, 'WT5977', 0, '2016', 'February', 'RANDFKI214', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(31, 'WT5977', 6, '2016', 'January', 'RANDULP818', 0, '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(32, 'WT5977 ', 0, '2017', 'July', 'RANDMFN459', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(33, 'WT5977 ', 0, '2016', 'August', 'RANDNLM139', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(34, 'WT5977 ', 0, '2016', 'May', 'RANDHZT630', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(35, 'WT5977 ', 0, '2016', 'April', 'RANDRQN612', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(36, 'WT5977 ', 0, '2016', 'March', 'RANDIUX747', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(37, 'WT5977 ', 0, '2016', 'February', 'RANDFKI214', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(38, 'WT5977 ', 7, '2016', 'January', 'RANDULP818', 0, '2016-05-04 18:58:25', '2016-05-04 13:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobtitle`
--

CREATE TABLE `tbl_jobtitle` (
  `id` int(11) NOT NULL,
  `job_title` varchar(250) NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobtitle`
--

INSERT INTO `tbl_jobtitle` (`id`, `job_title`, `status`, `create_date_time`, `update_date_time`) VALUES
(6, 'tester', 0, '2016-04-21 12:51:01', '2016-04-21 07:21:01'),
(4, 'fcujghk', 1, '2016-03-08 14:13:36', '2016-03-08 08:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ledgers`
--

CREATE TABLE `tbl_ledgers` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `ledgerName` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ledgers`
--

INSERT INTO `tbl_ledgers` (`id`, `account_id`, `ledgerName`, `balance`, `create_date_time`, `update_date_time`) VALUES
(2, 8, 'Ledger 1', '4000', '2016-06-15 07:25:52', '2016-06-15 07:26:15'),
(3, 5, 'Ledger 2', '1000', '2016-06-15 07:31:50', '2016-06-15 07:31:50'),
(4, 8, 'Ledger 3', '350', '2016-06-23 12:54:22', '2016-06-23 12:54:22'),
(5, 7, 'Ledger 4', '250', '2016-06-23 12:54:56', '2016-06-23 12:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monthlycustomer`
--

CREATE TABLE `tbl_monthlycustomer` (
  `id` int(11) NOT NULL,
  `ledger_id` int(11) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `customer_id` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `plan_name` varchar(250) NOT NULL,
  `amount` int(225) NOT NULL,
  `paidamount` int(250) NOT NULL,
  `unpaidamount` int(250) NOT NULL,
  `balance` int(225) NOT NULL,
  `total` int(225) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `enddate` varchar(255) NOT NULL,
  `year` int(50) NOT NULL,
  `month` varchar(250) NOT NULL,
  `status` int(2) NOT NULL,
  `date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_monthlycustomer`
--

INSERT INTO `tbl_monthlycustomer` (`id`, `ledger_id`, `invoice_id`, `customer_id`, `name`, `plan_name`, `amount`, `paidamount`, `unpaidamount`, `balance`, `total`, `currency`, `startdate`, `enddate`, `year`, `month`, `status`, `date`, `create_date_time`, `update_date_time`) VALUES
(1, 0, '0', 'WT5977', 'WT3976', 'Middle', 400, 200, 0, 200, 200, '', '', '', 0, '', 1, '2016-04-20', '2016-03-25 12:45:47', '2016-05-04 13:25:07'),
(2, 0, '0', '100', '100', '', 0, 0, 0, 0, 0, '', '', '', 0, '', 1, '2016-04-20', '2016-03-30 16:07:30', '2016-04-20 08:37:50'),
(3, 0, '0', '#5678', '#5678', '', 0, 0, 0, 0, 0, '', '', '', 0, '', 1, '0000-00-00', '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(4, 0, '0', '105', '105', '', 0, 0, 0, 0, 0, '', '', '', 0, '', 1, '0000-00-00', '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(5, 0, '0', 'WT5977', 'WT5977', '', 0, 0, 0, 0, 0, '', '', '', 0, '', 1, '0000-00-00', '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(6, 0, '0', 'WT5977', 'WT5977', '', 0, 0, 0, 0, 0, '', '', '', 0, '', 1, '0000-00-00', '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(7, 0, '0', 'WT5977 ', 'WT5977 ', '', 0, 0, 0, 0, 0, '', '', '', 0, '', 1, '0000-00-00', '2016-05-04 18:58:25', '2016-05-04 13:28:25'),
(20, 0, '0', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, '', '2016-04-12', '2016-05-12', 2016, 'May', 0, '2016-05-19', '2016-05-19 08:19:24', '2016-05-19 02:49:24'),
(23, 0, '0', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, '', '2016-06-13', '2016-07-13', 2016, 'May', 1, '2016-05-20', '2016-05-20 09:41:57', '2016-05-20 04:11:57'),
(24, 0, '0', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, '', '2016-07-14', '2016-08-13', 2016, 'May', 1, '2016-05-20', '2016-05-20 09:46:03', '2016-05-20 04:16:03'),
(13, 0, '0', 'WT10003', 'WT10003', '12', 30, 20, 10, 0, 30, '', '2015-05-07', '2016-05-01', 2016, 'May', 0, '2016-05-16', '2016-05-07 15:27:14', '2016-05-16 12:16:54'),
(25, 0, '0', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, '', '2016-08-14', '2016-09-13', 2016, 'May', 1, '2016-05-20', '2016-05-20 10:32:20', '2016-05-20 05:02:20'),
(19, 0, '0', 'WT10003', 'Narendra Prakash Panchal', '12', 30, 30, 0, 0, 30, '', '2016-05-02', '2017-04-27', 2016, 'May', 1, '2016-05-16', '2016-05-16 12:28:41', '2016-05-16 06:58:41'),
(22, 0, '0', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, '', '2016-05-13', '2016-06-12', 2016, 'May', 1, '2016-05-20', '2016-05-20 09:27:42', '2016-05-20 03:57:42'),
(40, 0, 'WTMO-1465494160', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'USD', '2016-09-14', '2016-10-14', 2016, 'Jun', 1, '2016-06-09', '2016-06-09 17:43:10', '2016-06-09 12:13:10'),
(41, 2, 'WTMO-1466243253', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'USD', '2016-10-15', '2016-11-14', 2016, 'Jun', 1, '2016-06-18', '2016-06-18 09:50:30', '2016-06-18 04:20:30'),
(42, 2, 'WTMO-1466501770', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'USD', '2016-11-15', '2016-12-15', 2016, 'Jun', 1, '2016-06-21', '2016-06-21 09:37:31', '2016-06-21 04:07:31'),
(43, 2, 'WTMO-1466505849', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'USD', '2016-12-16', '2017-01-15', 2016, 'Jun', 1, '2016-06-21', '2016-06-21 10:44:26', '2016-06-21 05:14:26'),
(44, 2, 'WTMO-1466507577', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'USD', '2017-01-16', '2017-02-15', 2016, 'Jun', 1, '2016-06-21', '2016-06-21 11:14:22', '2016-06-21 05:44:22'),
(45, 3, 'WTMO-1466673497', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'USD', '2017-02-16', '2017-03-18', 2016, 'Jun', 1, '2016-06-23', '2016-06-23 09:19:18', '2016-06-23 03:49:18'),
(46, 2, 'WTMO-1466679827', 'WT20006', 'Pratik Prakash Gupte', '9', 300, 300, 0, 0, 300, 'Shilling Som', '2017-03-19', '2017-04-18', 2016, 'Jun', 1, '2016-06-23', '2016-06-23 11:04:16', '2016-06-23 05:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monthlycustomer_dummy`
--

CREATE TABLE `tbl_monthlycustomer_dummy` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plan_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `paidamount` float NOT NULL,
  `unpaidamount` float NOT NULL,
  `balance` float NOT NULL,
  `total` float NOT NULL,
  `year` int(20) NOT NULL,
  `month` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_monthlycustomer_dummy`
--

INSERT INTO `tbl_monthlycustomer_dummy` (`id`, `customer_id`, `name`, `plan_name`, `amount`, `paidamount`, `unpaidamount`, `balance`, `total`, `year`, `month`, `status`, `date`, `create_date_time`, `update_date_time`) VALUES
(1, 'WT3976', 'WT3976', 'Middle', 400, 200, 0, 200, 200, 0, '', 0, '0000-00-00', '2016-03-25 12:45:47', '2016-03-25 07:15:47'),
(2, '100', '100', '', 0, 0, 0, 0, 0, 0, '', 1, '0000-00-00', '2016-03-30 16:07:30', '2016-03-30 10:37:30'),
(3, '#5678', '#5678', '', 0, 0, 0, 0, 0, 0, '', 1, '0000-00-00', '2016-04-20 13:49:01', '2016-04-20 08:19:01'),
(4, '105', '105', '', 0, 0, 0, 0, 0, 0, '', 1, '0000-00-00', '2016-05-03 17:47:30', '2016-05-03 12:17:30'),
(5, 'WT5977', 'WT5977', '', 0, 0, 0, 0, 0, 0, '', 1, '0000-00-00', '2016-05-04 18:56:26', '2016-05-04 13:26:26'),
(6, 'WT5977', 'WT5977', '', 0, 0, 0, 0, 0, 0, '', 1, '0000-00-00', '2016-05-04 18:56:39', '2016-05-04 13:26:39'),
(7, 'WT5977 ', 'WT5977 ', '', 0, 0, 0, 0, 0, 0, '', 1, '0000-00-00', '2016-05-04 18:58:25', '2016-05-04 13:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_months`
--

CREATE TABLE `tbl_months` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_months`
--

INSERT INTO `tbl_months` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payrols`
--

CREATE TABLE `tbl_payrols` (
  `id` bigint(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `Employee_id` varchar(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` int(225) NOT NULL,
  `title` varchar(250) NOT NULL,
  `total` int(225) NOT NULL,
  `month` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payrols`
--

INSERT INTO `tbl_payrols` (`id`, `invoice_id`, `Employee_id`, `name`, `amount`, `title`, `total`, `month`, `status`, `date`, `create_date_time`, `update_date_time`) VALUES
(1, '', 'WT6720', 'WT6720', 1000, 'editor', 1000, 'February', 0, '2016-02-24', '2016-02-24 11:02:51', '2016-02-24 05:32:51'),
(2, '', 'WT2610', 'WT2610', 1500, 'data entry', 1500, 'February', 1, '2016-02-24', '2016-02-24 11:03:23', '2016-02-27 09:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_responsibilities`
--

CREATE TABLE `tbl_responsibilities` (
  `id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `dashboard` varchar(20) NOT NULL,
  `addcustomer` varchar(250) NOT NULL,
  `add_zone` varchar(20) NOT NULL,
  `addpaymentcustomer` int(20) NOT NULL,
  `amountrate` int(20) NOT NULL,
  `feesplaning` int(20) NOT NULL,
  `paymentmonthlycustomer` varchar(20) NOT NULL,
  `metersearch` int(11) NOT NULL,
  `monthlysearch` varchar(20) NOT NULL,
  `generatemetercustomer_search` varchar(20) NOT NULL,
  `income_reportsearch` varchar(20) NOT NULL,
  `paidsearch` varchar(20) NOT NULL,
  `unpaidsearch` varchar(20) NOT NULL,
  `addemployee` varchar(20) NOT NULL,
  `payrols` varchar(20) NOT NULL,
  `payrolssearch` varchar(20) NOT NULL,
  `addexpenses` varchar(20) NOT NULL,
  `bsearch` int(11) NOT NULL,
  `addassets` varchar(20) NOT NULL,
  `technicalproblems` varchar(20) NOT NULL,
  `technicalsearch` varchar(20) NOT NULL,
  `web_settings` varchar(20) NOT NULL,
  `admin` varchar(20) NOT NULL,
  `confirmed` varchar(20) NOT NULL,
  `pending` varchar(20) NOT NULL,
  `failed` varchar(20) NOT NULL,
  `coupons` varchar(20) NOT NULL,
  `campagins` varchar(20) NOT NULL,
  `packagesgh` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `cast` varchar(20) NOT NULL,
  `mother_tongue` varchar(20) NOT NULL,
  `education` varchar(20) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `cmsfgh` varchar(20) NOT NULL,
  `websettingsfghfh` varchar(20) NOT NULL,
  `admin_contact_details` varchar(20) NOT NULL,
  `social_networklinks` varchar(20) NOT NULL,
  `admin_contact_form` varchar(20) NOT NULL,
  `google_analytics` varchar(20) NOT NULL,
  `banners` varchar(20) NOT NULL,
  `sms` varchar(20) NOT NULL,
  `paymentgateway` varchar(20) NOT NULL,
  `enquiries` varchar(20) NOT NULL,
  `roles_responsibilities` varchar(20) NOT NULL,
  `employees` varchar(20) NOT NULL,
  `reports` varchar(20) NOT NULL,
  `more` varchar(20) NOT NULL,
  `allowipaddress` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_responsibilities`
--

INSERT INTO `tbl_responsibilities` (`id`, `role_name`, `dashboard`, `addcustomer`, `add_zone`, `addpaymentcustomer`, `amountrate`, `feesplaning`, `paymentmonthlycustomer`, `metersearch`, `monthlysearch`, `generatemetercustomer_search`, `income_reportsearch`, `paidsearch`, `unpaidsearch`, `addemployee`, `payrols`, `payrolssearch`, `addexpenses`, `bsearch`, `addassets`, `technicalproblems`, `technicalsearch`, `web_settings`, `admin`, `confirmed`, `pending`, `failed`, `coupons`, `campagins`, `packagesgh`, `religion`, `cast`, `mother_tongue`, `education`, `occupation`, `country`, `state`, `city`, `cmsfgh`, `websettingsfghfh`, `admin_contact_details`, `social_networklinks`, `admin_contact_form`, `google_analytics`, `banners`, `sms`, `paymentgateway`, `enquiries`, `roles_responsibilities`, `employees`, `reports`, `more`, `allowipaddress`, `status`, `create_date_time`, `update_date_time`) VALUES
(3, 'Murli', '0', '1', '1', 1, 0, 0, '1', 0, '0', '0', '0', '0', '1', '0', '1', '1', '0', 1, '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '1', '', '', 1, '2016-01-23 15:43:00', '2016-02-19 11:07:36'),
(4, 'Sub Admin', '0', '0', '1', 0, 0, 0, '1', 0, '0', '0', '0', '0', '0', '0', '0', '1', '0', 0, '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '0', '', '', 1, '2016-02-05 14:00:20', '2016-02-19 09:10:25'),
(5, 'Manager', '1', '1', '0', 0, 1, 0, '0', 0, '0', '0', '0', '0', '0', '0', '0', '1', '0', 0, '1', '0', '0', '1', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2016-02-19 11:38:44', '2016-02-19 09:09:58'),
(6, 'Data entering', '', '1', '1', 1, 1, 0, '1', 1, '', '', '', '', '1', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2016-02-20 19:16:05', '2016-02-20 13:46:05'),
(7, 'Student', '1', '1', '1', 1, 0, 1, '1', 1, '0', '0', '1', '0', '0', '0', '0', '0', '0', 0, '0', '0', '1', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2016-04-22 18:54:24', '2016-04-23 10:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_responsibilities_user`
--

CREATE TABLE `tbl_responsibilities_user` (
  `id` int(11) NOT NULL,
  `role_id` varchar(100) NOT NULL,
  `role_name` text NOT NULL,
  `employee_name` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `mobile` text NOT NULL,
  `status` int(11) NOT NULL,
  `invalid_login_count` varchar(25) NOT NULL,
  `randomcode` text NOT NULL,
  `firsttime_login` int(3) NOT NULL,
  `user_type` varchar(15) NOT NULL DEFAULT 'subadmin',
  `logout_date_time` datetime NOT NULL,
  `created_date_time` datetime NOT NULL,
  `updated_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_responsibilities_user`
--

INSERT INTO `tbl_responsibilities_user` (`id`, `role_id`, `role_name`, `employee_name`, `username`, `password`, `mobile`, `status`, `invalid_login_count`, `randomcode`, `firsttime_login`, `user_type`, `logout_date_time`, `created_date_time`, `updated_date_time`) VALUES
(4, '3', 'Murli', 'murli', 'murli@sparkinfosys.com', 'e10adc3949ba59abbe56e057f20f883e', '8121488692', 1, '', '', 0, 'subadmin', '2016-01-23 16:22:57', '2016-01-23 15:43:33', '2016-02-19 10:17:32'),
(6, '6', 'Data entering', 'murli', 'dileep@sparkinfosys.com', '792060b6c68ebbdc2f6f19c2809379f1', '8121488692', 1, '', '', 0, 'subadmin', '0000-00-00 00:00:00', '2016-02-19 11:39:48', '2016-05-27 05:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subaccountgroup`
--

CREATE TABLE `tbl_subaccountgroup` (
  `id` bigint(255) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subaccountgroup`
--

INSERT INTO `tbl_subaccountgroup` (`id`, `account_id`, `account_name`) VALUES
(1, '2', 'Current Assets'),
(2, '2', 'Fixed Assets'),
(3, '3', 'Liability 1'),
(4, '3', 'Liability 2'),
(5, '4', 'Direct Income'),
(6, '4', 'Indirect Income'),
(7, '5', 'Direct Expense'),
(8, '5', 'Indirect Expense');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_technical`
--

CREATE TABLE `tbl_technical` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(12) NOT NULL,
  `name` varchar(300) NOT NULL,
  `problem` varchar(300) NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_technical`
--

INSERT INTO `tbl_technical` (`id`, `customer_id`, `name`, `problem`, `status`, `create_date_time`, `update_date_time`) VALUES
(1, 'WT1971', '', 'water billing', 0, '2016-04-21 15:43:59', '2016-04-21 10:13:59'),
(2, 'WT5977', '', 'waterbill', 1, '2016-02-24 11:10:53', '2016-02-24 05:40:58'),
(4, 'WT9504', '', 'hghgh', 0, '2016-04-21 15:44:09', '2016-04-21 10:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(11) NOT NULL,
  `tableName` varchar(255) NOT NULL,
  `voucherNo` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL COMMENT 'bill or expenses id',
  `ledger_id` varchar(255) NOT NULL COMMENT 'customer or ledger type id',
  `ledger_id_for` varchar(255) NOT NULL,
  `voucher_for` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `debit` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `tableName`, `voucherNo`, `transaction_id`, `ledger_id`, `ledger_id_for`, `voucher_for`, `credit`, `debit`, `date`, `create_date_time`, `update_date_time`) VALUES
(47, 'transactions', 'JV-0047', '', '18', 'customer_id', 'debit', '', '455', '2016-06-23', '2016-06-23 10:11:37', '2016-06-23 10:11:37'),
(48, 'transactions', 'JV-0047', '', '4', 'expenses_type', 'credit', '455', '', '2016-06-23', '2016-06-23 10:11:37', '2016-06-23 10:11:37'),
(49, 'transactions', 'JV-0049', '', '3', 'ledger_id', 'debit', '', '200', '2016-06-23', '2016-06-23 10:12:46', '2016-06-23 10:12:46'),
(50, 'transactions', 'JV-0049', '', '8', 'employee_id', 'credit', '200', '', '2016-06-23', '2016-06-23 10:12:46', '2016-06-23 10:12:46'),
(55, 'addmetercustomer', '', '145', '4', 'customer_id', '', '', '669', '0000-00-00', '2016-06-23 11:00:12', '2016-06-23 11:00:12'),
(56, 'addmetercustomer', '', '145', '3', 'ledger_id', '', '669', '', '0000-00-00', '2016-06-23 11:00:12', '2016-06-23 11:00:12'),
(57, 'addmetercustomer', '', '146', '4', 'customer_id', '', '', '334', '0000-00-00', '2016-06-23 11:00:12', '2016-06-23 11:00:12'),
(58, 'addmetercustomer', '', '146', '3', 'ledger_id', '', '334', '', '0000-00-00', '2016-06-23 11:00:12', '2016-06-23 11:00:12'),
(59, 'addmetercustomer', '', '147', '4', 'customer_id', '', '', '213', '1970-01-01', '2016-06-23 11:02:23', '2016-06-23 11:02:23'),
(60, 'addmetercustomer', '', '147', '2', 'ledger_id', '', '213', '', '1970-01-01', '2016-06-23 11:02:23', '2016-06-23 11:02:23'),
(61, 'monthlycustomer', '', '46', '18', 'customer_id', '', '', '300', '1970-01-01', '2016-06-23 11:04:16', '2016-06-23 11:04:16'),
(62, 'monthlycustomer', '', '46', '2', 'ledger_id', '', '300', '', '1970-01-01', '2016-06-23 11:04:16', '2016-06-23 11:04:16'),
(63, 'addexpenses', '', '34', '4', 'expenses_type', '', '240', '', '2016-06-23', '2016-06-23 11:06:09', '2016-06-23 11:06:09'),
(64, 'addexpenses', '', '34', '2', 'ledger_id', '', '', '240', '2016-06-23', '2016-06-23 11:06:09', '2016-06-23 11:06:09'),
(65, 'transactions', 'JV-0065', '', '1', 'customer_id', 'debit', '', '300', '2016-06-24', '2016-06-24 15:42:09', '2016-06-24 15:42:09'),
(66, 'transactions', 'JV-0065', '', '2', 'expenses_type', 'credit', '300', '', '2016-06-24', '2016-06-24 15:42:09', '2016-06-24 15:42:09'),
(67, 'transactions', 'JV-0067', '', '3', 'expenses_type', 'debit', '', '600', '2016-06-24', '2016-06-24 15:44:02', '2016-06-24 15:44:02'),
(68, 'transactions', 'JV-0067', '', '3', 'expenses_type', 'credit', '600', '', '2016-06-24', '2016-06-24 15:44:02', '2016-06-24 15:44:02'),
(69, 'transactions', 'JV-0069', '', '3', 'expenses_type', 'debit', '', '600', '2016-06-24', '2016-06-24 16:12:32', '2016-06-24 16:12:32'),
(70, 'transactions', 'JV-0069', '', '1', 'expenses_type', 'credit', '600', '', '2016-06-24', '2016-06-24 16:12:32', '2016-06-24 16:12:32'),
(71, 'transactions', 'JV-0071', '', '2', 'employee_id', 'debit', '', '15000', '2016-06-24', '2016-06-24 16:14:50', '2016-06-24 16:14:50'),
(72, 'transactions', 'JV-0071', '', '1', 'employee_id', 'credit', '15000', '', '2016-06-24', '2016-06-24 16:14:50', '2016-06-24 16:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_websettings`
--

CREATE TABLE `tbl_websettings` (
  `id` int(11) NOT NULL,
  `host_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo_alt_tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_mobile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `404_error_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `404_alt_tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `search_error_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `search_alt_tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_address` text COLLATE utf8_unicode_ci NOT NULL,
  `tell_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tin_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cin_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_websettings`
--

INSERT INTO `tbl_websettings` (`id`, `host_name`, `favicon`, `logo`, `logo_alt_tag`, `contact_email`, `contact_mobile`, `404_error_img`, `404_alt_tag`, `search_error_img`, `search_alt_tag`, `company_name`, `invoice_address`, `tell_phone`, `tin_no`, `cin_no`, `seo_title`, `seo_description`, `seo_keywords`, `create_date_time`, `update_date_time`) VALUES
(1, 'tuskerpharma', 'LOGO_TP.jpg', '290x105.png', 'Tusker Logo', 'dileep@sparkinfosys.com', '8121115444', '4042.jpg', 'No Search Results Alt Tag ', '4041.jpg', 'No Search Results Alt Tag ', 'Tusker Pharma', '105, First\\''s Floor, Banjara Hills, ', '9696969696', '36133892879', 'U74130KA2010PT', 'India\\''s First Health and Wellness Market Wear', 'India\\''s First Health and Wellness Market Wear', 'India\\''s First Health and Wellness Market Wear', '0000-00-00 00:00:00', '2016-02-19 11:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_settings`
--

CREATE TABLE `tbl_web_settings` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_web_settings`
--

INSERT INTO `tbl_web_settings` (`id`, `content`, `status`, `create_date_time`, `update_date_time`) VALUES
(1, '															<p><br><img src=\\"data:image/png;base64,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\\" data-filename=\\"client-2.png\\" style=\\"width: 139px;\\">new text awailable</p>															', 1, '2016-02-18 00:00:00', '2016-04-22 13:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone`
--

CREATE TABLE `tbl_zone` (
  `id` int(11) NOT NULL,
  `zone` varchar(250) NOT NULL,
  `status` int(2) NOT NULL,
  `create_date_time` datetime NOT NULL,
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_zone`
--

INSERT INTO `tbl_zone` (`id`, `zone`, `status`, `create_date_time`, `update_date_time`) VALUES
(6, 'Koshin', 1, '2016-02-23 12:37:08', '2016-02-23 07:07:15'),
(4, 'Irid Aamin', 1, '2016-02-23 12:38:27', '2016-02-23 07:08:52'),
(7, 'Buunda Weyn', 1, '2016-02-23 12:38:40', '2016-02-23 07:08:55'),
(9, 'Dhagax jabis', 1, '2016-02-27 14:46:11', '2016-03-05 11:27:03'),
(10, 'pratap nagar', 0, '2016-04-20 12:04:43', '2016-04-20 06:34:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accountgroup`
--
ALTER TABLE `tbl_accountgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addassets`
--
ALTER TABLE `tbl_addassets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addcustomer`
--
ALTER TABLE `tbl_addcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addcustomer1`
--
ALTER TABLE `tbl_addcustomer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addcustomer_reading`
--
ALTER TABLE `tbl_addcustomer_reading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addemployee`
--
ALTER TABLE `tbl_addemployee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addexpenses`
--
ALTER TABLE `tbl_addexpenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addexpenses1`
--
ALTER TABLE `tbl_addexpenses1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addmetercustomer`
--
ALTER TABLE `tbl_addmetercustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addprofitloss`
--
ALTER TABLE `tbl_addprofitloss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addshareholder`
--
ALTER TABLE `tbl_addshareholder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_details`
--
ALTER TABLE `tbl_admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_login_users`
--
ALTER TABLE `tbl_admin_login_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_amountrate`
--
ALTER TABLE `tbl_amountrate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expensetype`
--
ALTER TABLE `tbl_expensetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feesplaning`
--
ALTER TABLE `tbl_feesplaning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_generate`
--
ALTER TABLE `tbl_generate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_generate_customer`
--
ALTER TABLE `tbl_generate_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobtitle`
--
ALTER TABLE `tbl_jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ledgers`
--
ALTER TABLE `tbl_ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_monthlycustomer`
--
ALTER TABLE `tbl_monthlycustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_monthlycustomer_dummy`
--
ALTER TABLE `tbl_monthlycustomer_dummy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_months`
--
ALTER TABLE `tbl_months`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `tbl_payrols`
--
ALTER TABLE `tbl_payrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_responsibilities`
--
ALTER TABLE `tbl_responsibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_responsibilities_user`
--
ALTER TABLE `tbl_responsibilities_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subaccountgroup`
--
ALTER TABLE `tbl_subaccountgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_technical`
--
ALTER TABLE `tbl_technical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_websettings`
--
ALTER TABLE `tbl_websettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accountgroup`
--
ALTER TABLE `tbl_accountgroup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_addassets`
--
ALTER TABLE `tbl_addassets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_addcustomer`
--
ALTER TABLE `tbl_addcustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_addcustomer1`
--
ALTER TABLE `tbl_addcustomer1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_addcustomer_reading`
--
ALTER TABLE `tbl_addcustomer_reading`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_addemployee`
--
ALTER TABLE `tbl_addemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_addexpenses`
--
ALTER TABLE `tbl_addexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_addexpenses1`
--
ALTER TABLE `tbl_addexpenses1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_addmetercustomer`
--
ALTER TABLE `tbl_addmetercustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `tbl_addprofitloss`
--
ALTER TABLE `tbl_addprofitloss`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_addshareholder`
--
ALTER TABLE `tbl_addshareholder`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_admin_details`
--
ALTER TABLE `tbl_admin_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_admin_login_users`
--
ALTER TABLE `tbl_admin_login_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;
--
-- AUTO_INCREMENT for table `tbl_amountrate`
--
ALTER TABLE `tbl_amountrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_expensetype`
--
ALTER TABLE `tbl_expensetype`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_feesplaning`
--
ALTER TABLE `tbl_feesplaning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_generate`
--
ALTER TABLE `tbl_generate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_generate_customer`
--
ALTER TABLE `tbl_generate_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_jobtitle`
--
ALTER TABLE `tbl_jobtitle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_ledgers`
--
ALTER TABLE `tbl_ledgers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_monthlycustomer`
--
ALTER TABLE `tbl_monthlycustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_monthlycustomer_dummy`
--
ALTER TABLE `tbl_monthlycustomer_dummy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_months`
--
ALTER TABLE `tbl_months`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_payrols`
--
ALTER TABLE `tbl_payrols`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_responsibilities`
--
ALTER TABLE `tbl_responsibilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_responsibilities_user`
--
ALTER TABLE `tbl_responsibilities_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_subaccountgroup`
--
ALTER TABLE `tbl_subaccountgroup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_technical`
--
ALTER TABLE `tbl_technical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tbl_websettings`
--
ALTER TABLE `tbl_websettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
