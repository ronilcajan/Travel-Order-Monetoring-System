-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2023 at 12:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `barangay` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`user_id`, `address`, `barangay`, `town`, `province`) VALUES
(28, 'PUROK 3', 'Proper', 'Legazpy City', 'Albay'),
(29, 'PUROK 3', 'Proper', 'Legazpy City', 'Albay'),
(30, 'PUROK 3', 'Proper', 'Legazpy City', 'Albay'),
(32, 'PUROK 3', 'Lapu-lapu', 'Legaspi City', 'Albay'),
(33, 'PUROK 3', 'Lapu-lapu', 'Legaspi City', 'Albay'),
(34, 'PUROK 3', 'Lapu-lapu', 'Legaspi City', 'Albay'),
(35, 'PUROK 3', 'MACTAN', 'CEBU', 'CEBU');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `division` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`id`, `division`, `description`) VALUES
(1, 'Management Services Division', 'MSD'),
(2, 'Technical Services Division', 'TSD');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `emp_signature` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `user_id`, `position_id`, `division_id`, `salary`, `emp_signature`) VALUES
(4, 35, 6, 2, 10000.00, 'af3ff2b6eb030649fc2a082f1af7bc1a.png');

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
(1, 'admin', 'super admin'),
(2, 'TSDchief', 'Administrator for client user'),
(3, 'MSDchief', 'Limited permission'),
(6, 'PENRO', 'Provincial Head'),
(7, 'ARDMS', 'Regional'),
(8, 'ARDTS', 'Regional'),
(9, 'REGIONAL DIRECTOR', 'Regional'),
(10, 'staff', 'encoder'),
(11, 'employee', 'employees');

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
(1, 'Position created', 'Create', 'joelcolumna', '2023-03-19 06:51:54'),
(2, 'Travel Orders created', 'Create', 'admin', '2023-03-21 18:51:03'),
(3, 'Travel Orders deleted', 'Delete', 'admin', '2023-03-21 19:05:15'),
(4, 'Travel Orders deleted', 'Delete', 'admin', '2023-03-21 19:05:17'),
(5, 'Travel Orders deleted', 'Delete', 'admin', '2023-03-21 19:05:20'),
(6, 'Travel Orders created', 'Create', 'admin', '2023-03-21 19:05:31'),
(7, 'Travel Orders format', 'Update', 'admin', '2023-03-21 19:18:54'),
(8, 'Travel Orders format', 'Update', 'admin', '2023-03-21 19:26:45'),
(9, 'Travel Orders format', 'Update', 'admin', '2023-03-21 19:27:10'),
(10, 'Travel Orders format', 'Update', 'admin', '2023-03-21 19:27:21'),
(11, 'Travel Orders format', 'Update', 'admin', '2023-03-21 19:31:17'),
(12, 'Travel orders approval', 'Disapproved', 'admin', '2023-03-21 19:43:59'),
(13, 'Travel Orders deleted', 'Delete', 'admin', '2023-03-21 19:50:25'),
(14, 'System Information updated', 'Update', 'admin', '2023-03-21 19:55:11'),
(15, 'Travel Orders created', 'Create', 'admin', '2023-03-21 20:13:44'),
(16, 'Travel orders approval', 'Approved', 'admin', '2023-03-22 19:57:53'),
(17, 'Travel Orders format', 'Update', 'admin', '2023-03-22 19:58:31'),
(18, 'Travel Orders format', 'Update', 'admin', '2023-03-22 19:58:42'),
(19, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:05:57'),
(20, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:09:51'),
(21, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:10:33'),
(22, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:16:46'),
(23, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:21:38'),
(24, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:21:45'),
(25, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:25:40'),
(26, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:26:30'),
(27, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:26:52'),
(28, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:27:17'),
(29, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:27:22'),
(30, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:31:18'),
(31, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:31:29'),
(32, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:31:41'),
(33, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:32:54'),
(34, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:33:06'),
(35, 'Employee updated', 'Update', 'admin', '2023-03-22 20:40:48'),
(36, 'Employee updated', 'Update', 'admin', '2023-03-22 20:41:48'),
(37, 'Employee updated', 'Update', 'admin', '2023-03-22 20:42:51'),
(38, 'Employee updated', 'Update', 'admin', '2023-03-22 20:43:08'),
(39, 'Employee updated', 'Update', 'admin', '2023-03-22 20:43:24'),
(40, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:55:06'),
(41, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:55:52'),
(42, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:55:58'),
(43, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:56:08'),
(44, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:56:19'),
(45, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:57:51'),
(46, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:58:06'),
(47, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:58:26'),
(48, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:58:34'),
(49, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:58:43'),
(50, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:59:16'),
(51, 'Travel Orders format', 'Update', 'admin', '2023-03-22 20:59:21'),
(52, 'Travel Orders format', 'Update', 'admin', '2023-03-22 21:00:04'),
(53, 'Travel orders approval', 'Approved', 'admin', '2023-03-22 21:07:07'),
(54, 'System backup', 'Backup', 'admin', '2023-03-22 21:11:19'),
(55, 'System Information updated', 'Update', 'admin', '2023-03-22 21:11:32'),
(56, 'System Information updated', 'Update', 'admin', '2023-03-22 21:11:39'),
(57, 'Empployee deleted', 'Delete', 'admin', '2023-03-29 18:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`user_id`, `firstname`, `middlename`, `lastname`, `prefix`, `suffix`) VALUES
(8, 'administrator', NULL, NULL, NULL, NULL),
(28, 'JOEL', 'S', 'COLUMNA', '', ''),
(29, 'BENJAMIN', 'J', 'MEDEL', '', ''),
(30, 'JERRY', 'R', 'ARENA', 'ENGR', ''),
(32, 'RONNEL', 'C', 'SOPSOP', 'ATTY.', ''),
(33, 'GRACE', 'L', 'CARIÑO', '', ' Ph.D.'),
(34, 'FRANCISCO', 'E', 'MILLA', '', 'JR., CESO IV'),
(35, 'Juan', 'D', 'Luna', 'ENGR', 'Jr');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `approver` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`user_id`, `position_id`, `division_id`, `signature`, `approver`) VALUES
(28, 5, 1, 'cb393366a3c364b187716effa36cb280.png', 1),
(29, 4, 2, 'a9c0288b898a3550a0b4d2446676be63.png', 1),
(30, 3, 0, '8cd3ea95f689cc9595d9fbe6875ffa2d.png', 1),
(32, 2, 2, NULL, 1),
(33, 2, 1, NULL, 1),
(34, 1, 0, '21919d6f00feb4ee85fd8996145af9bf.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `authorize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`, `description`, `authorize`) VALUES
(1, 'Regional Executive Director', 'Regional', 1),
(2, 'Assistant Regional Director', 'Regional', 1),
(3, 'OIC, PENR Officer', 'Provincial Head', 1),
(4, 'OIC', 'Provincial', 1),
(5, 'Chief', 'Provincial', 1),
(6, 'Employee', '', NULL),
(18, 'Staff', 'Encoder', 0);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `office_name` varchar(100) DEFAULT NULL,
  `office_name2` varchar(100) DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `department`, `office_name`, `office_name2`, `office_address`, `logo`) VALUES
(1, 'Department of Environment and Natural Resources', 'Provincial Environment and Natural Resources Offices - Albay', 'DENR, PENRO-Albay', 'Lapu-lapu Street, Legazpi City', 'c05db8a72129ee7344ef96d4c6d52503.png');

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
(1, 'Travel Order Monitoring System', 'TOM SYSTEM', 'Travel Order Monitoring System', '310cc3ecc7540ee39b84297e9c1f41e1.png');

-- --------------------------------------------------------

--
-- Table structure for table `travel_orders`
--

CREATE TABLE `travel_orders` (
  `id` int(11) NOT NULL,
  `to_no` varchar(100) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `within` int(11) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `assistant` varchar(100) DEFAULT NULL,
  `source_of_funds` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `initial_approve` int(11) DEFAULT 0,
  `approve` int(11) DEFAULT 0,
  `approver_id` int(11) DEFAULT NULL,
  `approver_id_2` int(11) DEFAULT NULL,
  `date_applied` date DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `date_arrived` date DEFAULT NULL,
  `date_initial_approved` datetime DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `add_remarks` varchar(100) DEFAULT NULL,
  `add_remarks_2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_orders`
--

INSERT INTO `travel_orders` (`id`, `to_no`, `user_id`, `within`, `destination`, `purpose`, `assistant`, `source_of_funds`, `remarks`, `initial_approve`, `approve`, `approver_id`, `approver_id_2`, `date_applied`, `departure_date`, `date_arrived`, `date_initial_approved`, `date_approved`, `add_remarks`, `add_remarks_2`) VALUES
(12, 'PA-2023-03-10001', 35, 1, 'CDO', '234342', '432', '342', '342', 1, 1, 29, 30, '2023-03-21', '2023-03-21', '2023-03-24', '2023-03-22 07:57:53', '2023-03-22 09:07:07', 'dsfdsf', 'retretretret');

-- --------------------------------------------------------

--
-- Table structure for table `travel_order_format`
--

CREATE TABLE `travel_order_format` (
  `travel_order_id` int(11) DEFAULT NULL,
  `rec_approval` int(11) DEFAULT 1,
  `approval` int(11) DEFAULT 1,
  `rec_approval_sig` int(11) DEFAULT 1,
  `approval_sig` int(11) DEFAULT 1,
  `approver_absence` int(11) DEFAULT 2,
  `for_sig` int(11) DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `emp_sign` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_order_format`
--

INSERT INTO `travel_order_format` (`travel_order_id`, `rec_approval`, `approval`, `rec_approval_sig`, `approval_sig`, `approver_absence`, `for_sig`, `user_id`, `emp_sign`) VALUES
(12, 1, 1, 2, 2, 2, 1, 29, 2);

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
  `contact` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `contact`, `avatar`, `signature`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`) VALUES
(8, '::1', 'admin', '$2y$10$l5FUAB4ZU2ygUSXj728aP.kXQjl6vcXmLav5efX2TAct585shUX2m', 'cajan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1638616205, 1680085305, 1),
(28, '::1', 'joelcolumna', '$2y$10$gmWq24Mc8Aps0t2HSRMpSuRHgK1nPxh6HziQayX1dbZ8V.Rx5pJlu', 'joel@gmail.com', '09187112668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679067651, 1679399213, 1),
(29, '::1', 'benjaminmedel', '$2y$10$3syip2f2MawaGA13RE4fRe5Z7T/um5o6RpVqK4iPTbERRynqSkRI6', 'benjamin@gmail.com', '09187112668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679067699, NULL, 1),
(30, '::1', 'jerryarena', '$2y$10$f/DEvOQVzmBRZDXSq9anSu5B6eExlc6imIsuptqM.wqDFtYj.Jufe', 'jerry@gmail.com', '09187112668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679067740, 1679399239, 1),
(32, '::1', 'ronnelsopsop', '$2y$10$poS48HHw3hdCBn4ytlLCLej1mIzYeJMHMLMzMvgnlKhAuXdAMaJKC', 'ronnel@gmail.com', '09187112668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679127040, NULL, 1),
(33, '::1', 'gracecariño', '$2y$10$yX6vC4fTHl6NZfJpRPaQNee5QpjP4gBxhCKKKD5H3FnA0Ik344e2a', 'grade@gmail.com', '09187112632132268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679127102, 1679134303, 1),
(34, '::1', 'franciscomilla', '$2y$10$xcz6ru1El0w6/Yg/PgdZu.KfTfDZGZm.TKRDvqS9MDROXD7yQRZxa', 'milla@gmail.com', '09187112342342668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679127149, 1679130809, 1),
(35, '::1', 'juanluna', '$2y$10$6j.V3djrCAflAKmNnoM//OMJbCOc6pFjv../DS5NHEk.9iPrCbU1m', 'juan@gmail.com', '09187112668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1679127224, NULL, 1);

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
(1, 8, 1),
(32, 28, 3),
(33, 29, 2),
(34, 30, 6),
(36, 32, 8),
(37, 33, 7),
(38, 34, 9),
(39, 35, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
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
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_orders`
--
ALTER TABLE `travel_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `travel_order_format`
--
ALTER TABLE `travel_order_format`
  ADD KEY `travel_order_id` (`travel_order_id`);

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
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travel_orders`
--
ALTER TABLE `travel_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `names`
--
ALTER TABLE `names`
  ADD CONSTRAINT `names_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `officials`
--
ALTER TABLE `officials`
  ADD CONSTRAINT `officials_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travel_orders`
--
ALTER TABLE `travel_orders`
  ADD CONSTRAINT `travel_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travel_order_format`
--
ALTER TABLE `travel_order_format`
  ADD CONSTRAINT `travel_order_format_ibfk_1` FOREIGN KEY (`travel_order_id`) REFERENCES `travel_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
