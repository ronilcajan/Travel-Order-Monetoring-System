-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2022 at 02:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abms`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangay_info`
--

CREATE TABLE `barangay_info` (
  `id` int(11) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` text DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `starts` varchar(20) DEFAULT NULL,
  `end` varchar(20) DEFAULT NULL,
  `dashboard_text` text DEFAULT NULL,
  `dashboard_img` text DEFAULT NULL,
  `city_logo` text DEFAULT NULL,
  `brgy_logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangay_info`
--

INSERT INTO `barangay_info` (`id`, `province`, `town`, `brgy_name`, `number`, `email`, `starts`, `end`, `dashboard_text`, `dashboard_img`, `city_logo`, `brgy_logo`) VALUES
(1, 'Aklan', 'Altavas', 'BARANGAY POBLACION ', '269-1034', 'brgypoblacion18@gmail.com', '2018', '2022', 'ASENSO ALTAVASrttretre', 'bg.png', 'a510fc1a133df0d591308d819d2f6507.png', 'brgy-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `blotter`
--

CREATE TABLE `blotter` (
  `case_no` varchar(100) NOT NULL,
  `respondent` varchar(100) NOT NULL,
  `victim` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `incident_date` datetime NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blotter`
--

INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES
('00123', 'Rodwen Francisco', 'Allan Castaneda', 'Amicable', 'Altavas Poblacion', '2021-08-17 04:00:00', 'Habang nagatikang si Allan hay sinita imaw ni Rodwen nga hilong.', 'Scheduled', '2021-08-19 13:54:00'),
('324234234324212121', 'Luciano ,Erma  D.', '', 'Amicable', 'sdfsdfsdfsdfd', '2021-12-28 02:59:00', 'fsdfsdfsdfsdf', 'Active', '2021-12-28 02:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `budget` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `year`, `budget`, `created_at`) VALUES
(2, 2018, '10000.00', '2021-12-29 09:50:07'),
(3, 2021, '1100000.00', '2021-12-29 09:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`ID`, `title`, `start`, `end`, `description`) VALUES
(5, 'RONIL MANGOMPIT CAJAN4324', '2022-01-14 20:25:00', '2022-01-08 22:25:00', '432432');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `pic` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `pic`, `title`, `salutation`, `content`, `user`, `created_at`) VALUES
(1, NULL, 'gfdgfdg', NULL, '                <p>Sampletgfdsgdfgdfg</p>\r\n            ', 'admin', '2022-03-13 10:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `cert_settings`
--

CREATE TABLE `cert_settings` (
  `id` int(11) NOT NULL,
  `flag` text DEFAULT NULL,
  `motto` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `watermark` text DEFAULT NULL,
  `color_bg` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cert_settings`
--

INSERT INTO `cert_settings` (`id`, `flag`, `motto`, `signature`, `watermark`, `color_bg`) VALUES
(1, 'flag.png', 'motto.png', 'signature.png', 'brgy-logo.png', 'rgba(28, 113, 216, 0.58)');

-- --------------------------------------------------------

--
-- Table structure for table `chairmanship`
--

CREATE TABLE `chairmanship` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chairmanship`
--

INSERT INTO `chairmanship` (`id`, `title`) VALUES
(1, 'PRESIDING OFFICER'),
(3, 'COMMITTEE ON HEALTH'),
(4, 'COMMITTEE ON APPROPRIATION'),
(5, 'COMMITTEE ON ENVIRONMENT'),
(6, 'COMMITTEE ON PEACE AND ORDER'),
(7, 'COMMITTEE ON EDUCATION'),
(8, 'COMMITTEE ON INFRASTRUCTURE'),
(9, 'COMMITTEE ON YOUTH DEVELOPMENT'),
(10, 'COMMITTEE ON GAD'),
(11, 'COMMITTEE ON AGRICULTURE'),
(12, 'COMMITTEE ON BAC'),
(13, 'COMMITTEE ON WAYS AND MEANS'),
(14, 'COMMITTEE ON VAW-C'),
(15, 'COMMITTEE ON SPORTS'),
(16, 'COMMITTEE ON APPROPRIATION / YOUTH DEVELOPMENT'),
(17, 'COMMITTEE ON HEALTH / SPORTS'),
(18, 'COMMITTEE ON INFRASTRUCTURE / BAC / WAYS AND MEANS'),
(19, 'COMMITTEE ON PEACE AND ORDER / SPORTS'),
(20, 'COMMITTEE ON VAW-C / COMMITTEE ON EDUCATION'),
(21, 'COMMITTEE ON ENVIRONMENT / GAD'),
(22, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `case_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complainants`
--

INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES
('00123', 'Allan Castaneda', '', '09203251234', 'Male', '36', '', 'Kalibo Aklan'),
('324234234324212121', 'RONIL MANGOMPIT CAJAN', '', '09187112668', 'Female', '20', 'dsfdsfdsf', 'PUROK 3\r\nLOOC PROPER'),
('324234234324212121', 'EULALIA ALABASTRO MANGOMPIT', 'rtr', '09187112668', '', '', '', 'PUROK 3, LOOC PROPER');

-- --------------------------------------------------------

--
-- Table structure for table `covid_status`
--

CREATE TABLE `covid_status` (
  `resident_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_vaccinated` date DEFAULT NULL,
  `vaccinator_name` text DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `lot_no` varchar(100) DEFAULT NULL,
  `date_vaccinated_1` date DEFAULT NULL,
  `vaccinator_name_1` varchar(100) DEFAULT NULL,
  `manufacturer_1` text DEFAULT NULL,
  `batch_no_1` varchar(100) DEFAULT NULL,
  `lot_no_1` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_status`
--

INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES
(1, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Positive', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', ''),
(9, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'staff', 'General User'),
(3, 'power-user', 'Barangay Kapitan'),
(4, 'kiosk', 'Kiosk User');

-- --------------------------------------------------------

--
-- Table structure for table `house_number`
--

CREATE TABLE `house_number` (
  `id` int(11) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house_number`
--

INSERT INTO `house_number` (`id`, `number`, `info`) VALUES
(917, '09187112668', 'dsadasd'),
(918, '269-1034', 'fdsfdsfd');

-- --------------------------------------------------------

--
-- Table structure for table `id_settings`
--

CREATE TABLE `id_settings` (
  `id` int(11) NOT NULL,
  `front` text DEFAULT NULL,
  `back` text DEFAULT NULL,
  `bg_color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `id_settings`
--

INSERT INTO `id_settings` (`id`, `front`, `back`, `bg_color`) VALUES
(1, 'city_logo.png', 'brgy-logo.png', 'rgba(235, 206, 206, 0.02)');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `activity` text DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES
(1, 'Event created.', 'Create', 'admin', '2022-01-10 19:25:11'),
(2, 'Resident deleted', 'Delete', 'admin', '2022-01-10 19:46:40'),
(3, 'Request created', 'Create', 'admin', '2022-01-11 20:32:02'),
(4, 'Payment created', 'Create', 'admin', '2022-01-13 11:07:15'),
(5, 'Payment created', 'Create', 'admin', '2022-01-13 11:07:40'),
(6, 'Payment created', 'Create', 'admin', '2022-01-13 11:09:02'),
(7, 'Payment created', 'Create', 'admin', '2022-01-26 11:43:19'),
(8, 'Certificate created.', 'Create', 'admin', '2022-01-28 19:38:00'),
(9, 'Payment created', 'Create', 'admin', '2022-01-28 19:38:11'),
(10, 'Certificate deleted.', 'Delete', 'admin', '2022-01-28 19:48:51'),
(11, 'Payment created', 'Create', 'admin', '2022-03-07 18:42:12'),
(12, 'Payment created', 'Create', 'admin', '2022-03-07 18:42:37'),
(13, 'Payment created', 'Create', 'admin', '2022-03-07 18:43:53'),
(14, 'Barangay Information updated', 'Update', 'admin', '2022-03-07 18:46:42'),
(15, 'Payment created', 'Create', 'admin', '2022-03-07 18:53:06'),
(16, 'Payment created', 'Create', 'admin', '2022-03-07 18:54:34'),
(17, 'Payment created', 'Create', 'admin', '2022-03-07 18:55:29'),
(18, 'Payment created', 'Create', 'admin', '2022-03-07 18:57:02'),
(19, 'Payment created', 'Create', 'admin', '2022-03-07 18:57:42'),
(20, 'Resident created', 'Create', 'admin', '2022-03-07 19:12:54'),
(21, 'Household created', 'Create', 'admin', '2022-03-07 19:14:00'),
(22, 'Resident updated', 'Update', 'admin', '2022-03-07 19:14:07'),
(23, 'Resident created', 'Create', 'admin', '2022-03-08 19:52:46'),
(24, 'Resident updated', 'Update', 'admin', '2022-03-08 19:55:57'),
(25, 'Resident updated', 'Update', 'admin', '2022-03-08 20:06:40'),
(26, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:14:27'),
(27, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:14:34'),
(28, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:15:57'),
(29, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:23:13'),
(30, 'Resident file imported', 'Import File', 'admin', '2022-03-08 20:24:42'),
(31, 'Resident deleted', 'Delete', 'admin', '2022-03-08 20:24:57'),
(32, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:28:51'),
(33, 'Barangay Information updated', 'Update', 'admin', '2022-03-13 17:45:14'),
(34, 'Barangay Information updated', 'Update', 'admin', '2022-03-13 18:18:24'),
(35, 'Barangay Information updated', 'Update', 'admin', '2022-03-13 18:18:37'),
(36, 'Certificate created.', 'Create', 'admin', '2022-03-13 18:21:28'),
(37, 'Payment created', 'Create', 'admin', '2022-03-13 18:21:43'),
(38, 'Payment created', 'Create', 'admin', '2022-03-13 18:22:15'),
(39, 'Payment created', 'Create', 'admin', '2022-03-13 18:24:30'),
(40, 'Project created', 'Create', 'admin', '2022-03-13 18:25:57'),
(41, 'Project updated', 'Update', 'admin', '2022-03-13 18:26:09'),
(42, 'Project deleted', 'Delete', 'admin', '2022-03-13 18:26:23'),
(43, 'Resident created', 'Create', 'admin', '2022-03-14 19:32:58'),
(44, 'Resident updated', 'Update', 'admin', '2022-03-14 19:40:59'),
(45, 'Resident updated', 'Update', 'admin', '2022-03-14 19:42:19'),
(46, 'Resident deleted', 'Delete', 'admin', '2022-03-17 19:57:22'),
(47, 'Resident created', 'Create', 'admin', '2022-03-17 19:57:29'),
(48, 'Resident deleted', 'Delete', 'admin', '2022-03-17 19:58:32'),
(49, 'Resident created', 'Create', 'admin', '2022-03-17 19:58:38'),
(50, 'Resident deleted', 'Delete', 'admin', '2022-03-17 20:18:01'),
(51, 'Resident created', 'Create', 'admin', '2022-03-17 20:18:06'),
(52, 'Resident deleted', 'Delete', 'admin', '2022-03-17 20:22:10'),
(53, 'Resident created', 'Create', 'admin', '2022-03-17 20:22:15'),
(54, 'Payment created', 'Create', 'admin', '2022-03-17 20:23:27'),
(55, 'Payment created', 'Create', 'admin', '2022-03-17 20:25:35'),
(56, 'Payment created', 'Create', 'admin', '2022-03-21 18:34:32'),
(57, 'Purok updated', 'Update', 'admin', '2022-04-04 19:20:00'),
(58, 'Purok created', 'Create', 'admin', '2022-04-04 19:20:11'),
(59, 'Purok deleted', 'Delete', 'admin', '2022-04-04 19:20:17'),
(60, 'Occupation created', 'Create', 'admin', '2022-04-04 19:44:04'),
(61, 'Occupation updated', 'Update', 'admin', '2022-04-04 19:48:48'),
(62, 'Occupation updated', 'Update', 'admin', '2022-04-04 19:48:53'),
(63, 'Occupation deleted', 'Delete', 'admin', '2022-04-04 20:10:37'),
(64, 'Occupation created', 'Create', 'admin', '2022-04-05 19:23:31'),
(65, 'Resident updated', 'Update', 'admin', '2022-04-05 19:31:45'),
(66, 'Resident created', 'Create', 'admin', '2022-04-05 19:59:49'),
(67, 'Resident updated', 'Update', 'admin', '2022-04-05 20:00:19'),
(68, 'Covid status updated', 'Update', 'admin', '2022-04-06 18:48:19'),
(69, 'Household created', 'Create', 'admin', '2022-04-06 19:30:48'),
(70, 'Household created', 'Create', 'admin', '2022-04-06 19:30:56'),
(71, 'Resident updated', 'Update', 'admin', '2022-04-06 19:31:24'),
(72, 'Resident updated', 'Update', 'admin', '2022-04-06 19:31:40'),
(73, 'Relationship updated', 'Update', 'admin', '2022-04-06 19:32:10'),
(74, 'Relationship updated', 'Update', 'admin', '2022-04-06 19:32:15'),
(75, 'Resident updated', 'Update', 'admin', '2022-04-07 19:27:05'),
(76, 'Request created', 'Create', 'kiosk', '2022-04-07 19:27:39'),
(77, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 19:46:49'),
(78, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 19:46:55'),
(79, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:23'),
(80, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:23'),
(81, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:27'),
(82, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `occupation_name` varchar(50) DEFAULT NULL,
  `occupation_details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `occupation_name`, `occupation_details`) VALUES
(2, 'IT', 'rewrrew');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `chairmanship` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `name_show` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES
(2, 'FILOMENO D. REFOL I', 1, 3, '2021-05-08', '2025-05-28', 'Active', 'b06f85f1a4fb81ca33c572df77f82c48.png', 1),
(3, 'TIFFANY LEIGH O. DOROTEO', 16, 1, '2021-05-15', '2025-06-03', 'Active', NULL, 1),
(4, 'KARL CHRISTOPHER D. QUIMPO', 17, 5, '2021-05-22', '2025-04-30', 'Active', NULL, 1),
(5, 'IRADIEL V. VILLANUEVA, JR.', 18, 6, '2021-05-01', '2025-05-01', 'Active', NULL, 1),
(6, 'BERNARD J\'PETE M. PANADERO', 19, 7, '2021-05-08', '2025-05-08', 'Active', NULL, 1),
(7, 'GINA P. CUSTODIO', 20, 8, '2021-05-08', '2021-05-08', 'Active', NULL, 1),
(8, 'EVELYN F. BELARMINO', 21, 9, '2021-05-08', '2025-05-01', 'Active', NULL, 1),
(9, 'FERMIN R. SUCGANG, JR.', 11, 10, '2021-05-22', '2025-05-15', 'Active', NULL, 1),
(10, 'AUGUSTIE T. PERLAS', 22, 4, '2021-05-01', '2025-05-08', 'Active', NULL, 1),
(11, 'VANGIE C. MORE', 22, 11, '2021-05-08', '2025-05-15', 'Active', NULL, 1),
(12, 'Juan dela Cruz', 22, 13, '2021-12-02', '2021-12-31', 'Active', NULL, 1),
(13, 'Jess G', 20, 12, '2021-12-01', '2021-12-23', 'Active', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

CREATE TABLE `other_details` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `sss` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `precinct` varchar(50) DEFAULT NULL,
  `gsis` varchar(50) DEFAULT NULL,
  `pagibig` varchar(50) DEFAULT NULL,
  `philhealth` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_details`
--

INSERT INTO `other_details` (`id`, `resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES
(0, 8, '', '', NULL, '', '', '', ''),
(0, 9, '', '', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permit`
--

CREATE TABLE `permit` (
  `id` int(11) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `owner1` varchar(100) DEFAULT NULL,
  `owner2` varchar(100) DEFAULT NULL,
  `nature` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `b_address` text DEFAULT NULL,
  `o_address` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permit`
--

INSERT INTO `permit` (`id`, `b_name`, `owner1`, `owner2`, `nature`, `status`, `expiration_date`, `number`, `b_address`, `o_address`, `remarks`, `created_at`) VALUES
(5, 'IT EXPERT SOLUTIONS', 'ALLAN CASTANEDA \\ MATHEW GREGORIO', 'a', 'IT SERVICES', 'Renewal', '2021-12-29', '269-1034', 'ALTAVAS POBLACION', 'KALIBO AKLAN12', 'APPROVED', '2021-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `pos_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES
(1, 'Councilor 1', 2),
(3, 'PUNONG BARANGAY', 1),
(4, 'SK Chairperson', 9),
(5, 'Councilor 2', 3),
(6, 'Councilor 3', 4),
(7, 'Councilor 4', 5),
(8, 'Councilor 5', 6),
(9, 'Councilor 6', 7),
(10, 'Councilor 7', 8),
(11, 'Barangay Secretary', 10),
(12, 'Barangay Treasurer', 11),
(13, 'Administrative Aide', 12);

-- --------------------------------------------------------

--
-- Table structure for table `precinct`
--

CREATE TABLE `precinct` (
  `id` int(11) NOT NULL,
  `precinct_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `budget_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `budget_alloted` decimal(20,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `budget_id`, `name`, `details`, `budget_alloted`, `status`, `remarks`, `created_at`) VALUES
(4, 2, 'System', 'fsdf', '2000.00', 'Paid', 'sdfsdfsdf', '2021-12-29 11:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `purok`
--

CREATE TABLE `purok` (
  `id` int(11) NOT NULL,
  `sitio` varchar(50) DEFAULT NULL,
  `purok_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purok`
--

INSERT INTO `purok` (`id`, `sitio`, `purok_name`, `details`) VALUES
(1, 'fdsfsdf', '8768', 'fsdfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `document` varchar(50) DEFAULT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'New',
  `request_stat` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `document`, `resident_id`, `purpose`, `status`, `request_stat`, `created_at`) VALUES
(4, 'Barangay Clearance', 8, 'gfdgfdgfdgdfgfd', 'New', 1, '2022-04-07 19:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `suffix` varchar(5) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `birthplace` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `voterstatus` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer_name` varchar(100) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `resident_type` varchar(50) DEFAULT 'Alive',
  `blocklisted` varchar(10) DEFAULT 'No',
  `remarks` text DEFAULT NULL,
  `qrcode` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `suffix`, `alias`, `birthplace`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `blocklisted`, `remarks`, `qrcode`) VALUES
(8, '', '', NULL, 'RONIL', 'MANGOMPIT', 'CAJAN', '', '', '', '2022-04-08', NULL, 'Male', NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', 'IT', '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', 'No', '', '6NRGLP4QBPVLJEIDZXJY45CM1CS5V6T8LXJWFKGH57B5NAOOFBR7ICAXNT1ZCXCFIK0VA2TXG8W2A9PCFPA34WJY5JFE1JD7ZJWLMA5MFTOS37OHMX0BSBLO'),
(9, '', '', NULL, 'RONIL', 'MANGOMPIT', 'CAJAN', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', NULL, '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', 'No', '', 'HTDLAPBSN4OSPA2AIYKPRJFZSQ4Y6EE6J8FYN4OTLWTYF8YADB7ANEFWUBSVU6GPLT1RTZRX3MVWXDIAELKCTTFWKOEZYIO23JUQ5IJSYDYQTJKMV9WUDW0Y');

-- --------------------------------------------------------

--
-- Table structure for table `resident_house`
--

CREATE TABLE `resident_house` (
  `resident_id` int(11) DEFAULT NULL,
  `house_number` varchar(100) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident_house`
--

INSERT INTO `resident_house` (`resident_id`, `house_number`, `relation`) VALUES
(8, '09187112668', 'rewrwerewr'),
(9, '09187112668', '534dfgdfg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `requires` text DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `fees`, `requires`, `status`) VALUES
(1, 'Barangay Clearance', 'Barangay Clearance for resident', '100.00', 'Cedula', 'Active'),
(2, 'Residency Certificate', 'Nulla porttitor accumsan tincidunt. Donec sollicitudin molestie malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '100.00', 'ID', 'Active'),
(3, 'Indigency Certificate', 'Nulla porttitor accumsan tincidunt. Donec sollicitudin molestie malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '100.00', 'ID', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `settled`
--

CREATE TABLE `settled` (
  `case_no` varchar(50) NOT NULL,
  `updates` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settled`
--

INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES
('00123', NULL, NULL),
('13213213', NULL, NULL),
('213213213', NULL, NULL),
('CASESD4324234234222', '', '2021-06-10'),
('NO3218', 'nice', '2021-06-09'),
('324234234324212121', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `summon`
--

CREATE TABLE `summon` (
  `id` int(11) NOT NULL,
  `case_no` varchar(50) DEFAULT NULL,
  `blotter_update` text DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `summon`
--

INSERT INTO `summon` (`id`, `case_no`, `blotter_update`, `number`, `date`) VALUES
(5, '00123', 'Gin padaea eon do summon', '1st', '2021-08-20 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `acronym` varchar(100) NOT NULL,
  `powered_b` varchar(100) NOT NULL,
  `login_bg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `sname`, `acronym`, `powered_b`, `login_bg`) VALUES
(1, 'Automated Barangay Management System - Licensed to : POB. ALTAVAS', 'ABM System', 'IT Expert Solutionsds', '6362cdf0d48781e9beba303066c6c7d3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `address`, `avatar`) VALUES
(8, '::1', 'admin', '$2y$10$l5FUAB4ZU2ygUSXj728aP.kXQjl6vcXmLav5efX2TAct585shUX2m', 'cajan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1638616205, 1649331685, 1, 'RONIL', 'CAJAN', NULL, '1cce21ff58d7faa2593d8c47ae90ae36.jpg'),
(10, '::1', 'power', '$2y$10$AkIpGsIpg4YTH7ac9W1/ZeiWMF.bXRjJf11NpW0QgBi39Y8Xuwi3e', 'ronil.c21ajan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1641348264, 1641363880, 1, 'RONIL', 'CAJAN', NULL, NULL),
(11, '::1', 'staff', '$2y$10$ncEXHzc9BdmMhEs35MzQpe2dD8HgZVbcTsu3n./jdcPYTTXGso0sq', 'ronil.caja432n@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1641348348, 1641362084, 1, 'RONIL', 'CAJAN', NULL, NULL),
(12, '::1', 'kiosk', '$2y$10$3cWDSKwrmPqrR.71szZJZe02bUJ25AtEMq1kJOmsmqpHJfKqqc8Vy', 'ronil.caja2121n@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1641376828, 1649329421, 1, 'RONIL', 'CAJAN', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(14, 8, 1),
(16, 10, 3),
(17, 11, 2),
(18, 12, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cert_settings`
--
ALTER TABLE `cert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairmanship`
--
ALTER TABLE `chairmanship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_number`
--
ALTER TABLE `house_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_details`
--
ALTER TABLE `other_details`
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precinct`
--
ALTER TABLE `precinct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `budget_id` (`budget_id`);

--
-- Indexes for table `purok`
--
ALTER TABLE `purok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_house`
--
ALTER TABLE `resident_house`
  ADD UNIQUE KEY `resident_id` (`resident_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `summon`
--
ALTER TABLE `summon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cert_settings`
--
ALTER TABLE `cert_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chairmanship`
--
ALTER TABLE `chairmanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `house_number`
--
ALTER TABLE `house_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permit`
--
ALTER TABLE `permit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `precinct`
--
ALTER TABLE `precinct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purok`
--
ALTER TABLE `purok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `summon`
--
ALTER TABLE `summon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `other_details`
--
ALTER TABLE `other_details`
  ADD CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resident_house`
--
ALTER TABLE `resident_house`
  ADD CONSTRAINT `resident_house_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
