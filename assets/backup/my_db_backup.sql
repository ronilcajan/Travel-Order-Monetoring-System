#
# TABLE STRUCTURE FOR: barangay_info
#

DROP TABLE IF EXISTS `barangay_info`;

CREATE TABLE `barangay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `brgy_logo` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `barangay_info` (`id`, `province`, `town`, `brgy_name`, `number`, `email`, `starts`, `end`, `dashboard_text`, `dashboard_img`, `city_logo`, `brgy_logo`) VALUES (1, 'Samar', 'POBLACION KALIBO', 'BRGY KALIBO AKLAN', '0919-1234567', 'samar@gmail.com', '2018', '2021', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Sed porttitor lectus nibh. Curabitur aliquet quam id dui posuere blandit.sas', 'c1e670d7dfed09848e6045377f1b7cd5.png', 'e127d5c91f7e9d781fd142b51c370404.png', 'c3e2700aa8787a3941ff85dc54c7e461.png');


#
# TABLE STRUCTURE FOR: blotter
#

DROP TABLE IF EXISTS `blotter`;

CREATE TABLE `blotter` (
  `case_no` varchar(100) NOT NULL,
  `respondent` varchar(100) NOT NULL,
  `victim` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `incident_date` datetime NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`case_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES ('NO3218', 'Maria Advitos', 'Girl Topak', 'Amicable', '44540404234234w', '2021-06-03 11:22:00', '4kjnkllkn', 'Scheduled', '2021-06-03 11:22:00');


#
# TABLE STRUCTURE FOR: certificates
#

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `certificates` (`id`, `title`, `salutation`, `content`, `user`, `created_at`) VALUES (5, 'Point of Sale on PHP', 'TO WHOM IT MAY CONCERN:', '                    <h2 style=\"margin-left: 25px; margin-top: 25px;\">Sample</h2>\r\n                ', 'admin', '2021-06-23 10:26:49');


#
# TABLE STRUCTURE FOR: chairmanship
#

DROP TABLE IF EXISTS `chairmanship`;

CREATE TABLE `chairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `chairmanship` (`id`, `title`) VALUES (1, 'Presiding Officer 1');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (3, 'Committee on Peace & Order');


#
# TABLE STRUCTURE FOR: complainants
#

DROP TABLE IF EXISTS `complainants`;

CREATE TABLE `complainants` (
  `case_no` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `national_id` varchar(50) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  KEY `case_no` (`case_no`),
  CONSTRAINT `complainants_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `blotter` (`case_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('NO3218', 'Ronil M Cajan', '15324324', '19512659595', 'Male', '20', '23432432', '310 W Las Colinas Blvdsfd');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('NO3218', 'Ronil M Cajan', '15324324', '19512659595', 'Male', '20', '23432432', '310 W Las Colinas Blvdsfd');


#
# TABLE STRUCTURE FOR: house_number
#

DROP TABLE IF EXISTS `house_number`;

CREATE TABLE `house_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `info` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (1, 5, '');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (2, 66, '');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (3, 3, 'fds');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (4, 4, '');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (5, 25, '');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (6, 77, '');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (7, 10, 'fsdfsdfsdf');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (8, 200, 'dasdas');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (9, 1, 'f');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (10, 12, '');


#
# TABLE STRUCTURE FOR: officials
#

DROP TABLE IF EXISTS `officials`;

CREATE TABLE `officials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `chairmanship` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (2, 'ROGELY I. EBESATE', 1, 3, '2021-05-08', '2021-05-28', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (3, 'MARDY I. GONZALES', 3, 1, '2021-05-15', '2021-06-03', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (4, 'JUNARTO C. APOLONIO', 1, 5, '2021-05-22', '2021-04-30', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (5, 'NELSON I. DELA CRUZ', 3, 6, '2021-05-01', '2021-05-01', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (6, 'LORIE S. GONZALES', 1, 7, '2021-05-08', '2021-05-08', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (7, 'CESARLYN M. CATAPIA', 1, 8, '2021-05-08', '2021-05-08', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (8, 'JOSEPH M. ARIEL', 1, 9, '2021-05-08', '2021-05-01', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (9, 'TERESITA R. ROLDAN', 3, 10, '2021-05-22', '2021-05-15', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (10, 'EDRIAN MICHAEL P. MIJARES', 3, 4, '2021-05-01', '2021-05-08', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (11, 'JAYVEE LORRAINE C. MALACAS', 1, 11, '2021-05-08', '2021-05-15', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (12, 'LYLITH M. MAAGMA', 1, 12, '2021-05-01', '2021-05-15', 'Active');
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES (13, 'JOHN VINCENT D. SABANAL', 3, 13, '2021-05-15', '2021-05-15', 'Active');


#
# TABLE STRUCTURE FOR: other_details
#

DROP TABLE IF EXISTS `other_details`;

CREATE TABLE `other_details` (
  `resident_id` int(11) DEFAULT NULL,
  `sss` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `precinct` varchar(50) DEFAULT NULL,
  `gsis` varchar(50) DEFAULT NULL,
  `pagibig` varchar(50) DEFAULT NULL,
  `philhealth` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  KEY `other_details_ibfk_1` (`resident_id`),
  CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `other_details` (`resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES (6, '3213', '213213', 'Precinct 1', '32132', '213', '21321', '321');
INSERT INTO `other_details` (`resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES (8, '10', '010', 'Precinct 1', '10111', '10', '10', '101');
INSERT INTO `other_details` (`resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES (9, '10', '010', NULL, '10', '10', '10', '101');


#
# TABLE STRUCTURE FOR: payments
#

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `user` varchar(50) NOT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4;

INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (36, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-01 00:00:00');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (37, 'Certificate of Indigency Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-01 00:00:00');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (38, 'Certificate of Residency Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-01 00:00:00');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (39, 'Business Clearance Payment', 'Business Permit', '50.00', 'admin', 'SH Food Group 1', '2021-06-01 15:17:11');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (40, 'Business Clearance Payment', 'Business Permit', '50.00', 'admin', 'SH Food Group 1', '2021-06-01 15:18:20');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (41, 'Business Clearance Payment', 'Business Permit', '100.00', 'admin', 'SH Food Group 1', '2021-06-01 15:19:32');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (42, 'Business Clearance Payment', 'Business Permit', '7500.00', 'admin', 'SH Food Group 1', '2021-06-01 15:21:22');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (43, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '100.00', 'admin', 'Ronil M Cajan', '2021-06-01 00:00:00');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (44, 'Certificate of Residency Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-08 08:36:52');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (45, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '3500.00', 'admin', 'Ronil M Cajan', '2021-06-13 13:23:38');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (46, 'Business Clearance Payment', 'Business Permit', '7000.00', 'admin', 'SH Food Group 1', '2021-06-15 14:32:15');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (47, 'Certificate of Indigency Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-18 20:46:49');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (48, 'Certificate of Indigency Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '2500.00', 'admin', 'Ronil M Cajan', '2021-06-18 20:49:01');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (49, 'Barangay Clearance Payment', 'Kuhag Certs', '50.00', 'admin', 'Ronil M Cajan', '2021-06-19 10:47:29');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (50, 'Barangay Clearance Payment', 'fsdfsd', '80.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:17:38');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (51, 'Barangay Clearance Payment', 'dsfds', '60.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:19:35');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (52, 'Barangay Clearance Payment', 'fdgfdg', '50.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:21:15');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (53, 'Certificate of Indigency Payment', 'fgdgfd', '50.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:27:02');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (54, 'Certificate of Indigency Payment', 'dsfsad', '50.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:28:35');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (55, 'Barangay Clearance Payment', '3213', '20.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:29:17');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (56, 'Barangay Clearance Payment', 'ddas', '30.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:30:07');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (57, 'Certificate of Indigency Payment', 'fdgfd', '10.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:30:43');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (58, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '2500.00', 'admin', 'Ronil M Cajan', '2021-06-19 12:32:15');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (59, 'Business Clearance Payment', 'Business Permit', '20.00', 'admin', 'SH Food Group 1', '2021-06-19 12:34:15');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (60, 'Business Clearance Payment', 'Business Permit', '23.00', 'admin', 'SH Food Group 1', '2021-06-19 12:35:26');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (61, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '5000.00', 'admin', 'Ronil M Cajan', '2021-06-19 14:36:45');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (62, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-22 14:59:26');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (63, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 11:50:20');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (64, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 13:52:54');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (65, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 13:54:27');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (66, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '3500.00', 'admin', 'James M Cajan', '2021-06-23 13:54:56');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (67, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 13:55:47');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (68, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 13:56:09');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (69, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 13:56:33');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (70, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'James M Cajan', '2021-06-23 13:56:57');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (71, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-23 13:57:28');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (72, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-23 13:59:01');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (73, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-23 13:59:31');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (74, 'Barangay Clearance Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7000.00', 'admin', 'Ronil M Cajan', '2021-06-23 14:00:20');
INSERT INTO `payments` (`id`, `details`, `purpose`, `amount`, `user`, `recipient`, `created_at`) VALUES (75, 'Certificate of Indigency Payment', 'Water Connection from Metro Kalibo Water District (MKWD)', '7500.00', 'admin', 'Ronil M Cajan', '2021-06-23 14:00:42');


#
# TABLE STRUCTURE FOR: permit
#

DROP TABLE IF EXISTS `permit`;

CREATE TABLE `permit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `permit` (`id`, `b_name`, `owner1`, `owner2`, `nature`, `status`, `expiration_date`, `number`, `b_address`, `o_address`, `remarks`, `created_at`) VALUES (3, 'SH Food Group 1', 'SH Food Group 1', 'SH Food Group 1', 'SH Food Group 1', 'Renewal', '2021-04-27', '19512659595', '310 W Las Colinas Blvd', '310 W Las Colinas Blvd', 'Nice one', '2021-05-27');


#
# TABLE STRUCTURE FOR: position
#

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `pos_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (1, 'Councilor 1', 2);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (3, 'Captain', 1);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (4, 'SK Chairperson', 9);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (5, 'Councilor 2', 3);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (6, 'Councilor 3', 4);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (7, 'Councilor 4', 5);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (8, 'Councilor 5', 6);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (9, 'Councilor 6', 7);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (10, 'Councilor 7', 8);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (11, 'Barangay Secretary', 10);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (12, 'Barangay Treasurer', 11);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (13, 'Administrative Aid', 12);


#
# TABLE STRUCTURE FOR: precinct
#

DROP TABLE IF EXISTS `precinct`;

CREATE TABLE `precinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `precinct` (`id`, `precinct_name`, `details`) VALUES (3, 'Precinct 1', 'fsdfdsf');


#
# TABLE STRUCTURE FOR: purok
#

DROP TABLE IF EXISTS `purok`;

CREATE TABLE `purok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purok_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `purok` (`id`, `purok_name`, `details`) VALUES (4, 'Purok 4', 'fdf');


#
# TABLE STRUCTURE FOR: resident_house_number
#

DROP TABLE IF EXISTS `resident_house_number`;

CREATE TABLE `resident_house_number` (
  `resident_id` int(11) DEFAULT NULL,
  `house_number` int(11) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  KEY `resident_house_number_ibfk_1` (`house_number`),
  KEY `resident_id` (`resident_id`),
  CONSTRAINT `resident_house_number_ibfk_1` FOREIGN KEY (`house_number`) REFERENCES `house_number` (`number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resident_house_number_ibfk_2` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `resident_house_number` (`resident_id`, `house_number`, `relation`) VALUES (6, 77, 'Father');
INSERT INTO `resident_house_number` (`resident_id`, `house_number`, `relation`) VALUES (8, 12, 'Father14324324');
INSERT INTO `resident_house_number` (`resident_id`, `house_number`, `relation`) VALUES (9, 25, 'Father1');


#
# TABLE STRUCTURE FOR: residents
#

DROP TABLE IF EXISTS `residents`;

CREATE TABLE `residents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `birthplace` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `purok` varchar(20) DEFAULT NULL,
  `voterstatus` varchar(20) DEFAULT NULL,
  `identified_as` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `employer_name` varchar(100) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `house_number` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `house_number`, `address`, `resident_type`, `remarks`) VALUES (6, '1212321321', 'Filipino', 'data:image/jpeg;base64,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', 'Ronil', 'M', 'Cajan', 'ron', 'Metro  Manila', '1998-05-05', 'Married', 'Male', 'Purok 7', 'Yes', 'Negative', '19512659595', 'cajanr02@gmail.com', 'FREELANCER', 'sdsadsa', 'No', 77, '310 W Las Colinas Blvd', 1, '');
INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `house_number`, `address`, `resident_type`, `remarks`) VALUES (8, '12123213211111', 'American', 'data:image/jpeg;base64,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', 'James', 'M', 'Cajan', 'ron', 'Plaridel', '2019-01-29', 'Single', 'Male', 'Purok 7', 'Yes', 'Positive', '19512659595', 'cajanr0222@gmail.com', 'IT', '010101', 'Yes', 12, '310 W Las Colinas Blvd', 1, '1');
INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `house_number`, `address`, `resident_type`, `remarks`) VALUES (9, '1212321321dsadas', 'American', '211a1d76e6b4b7ed11bf3286b30b826b.jpg', 'Jon', 'M', 'Jones', 'Royal Blood', 'Plaridel', '2020-02-22', 'Married', 'Male', 'Purok 7', 'Yes', 'Unidentified', '9512659595', 'ssantostx@gmail.com', 'FREELANCER', '010101', 'Yes', 25, 'PH', 1, NULL);


#
# TABLE STRUCTURE FOR: settled
#

DROP TABLE IF EXISTS `settled`;

CREATE TABLE `settled` (
  `case_no` varchar(50) NOT NULL,
  `updates` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`case_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('NO3218', 'nice', '2021-06-09');


#
# TABLE STRUCTURE FOR: summon
#

DROP TABLE IF EXISTS `summon`;

CREATE TABLE `summon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_no` varchar(50) DEFAULT NULL,
  `blotter_update` text DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `summon` (`id`, `case_no`, `blotter_update`, `number`, `date`) VALUES (1, 'NO3218', 'Nice', '1st', '2021-06-01 14:00:00');
INSERT INTO `summon` (`id`, `case_no`, `blotter_update`, `number`, `date`) VALUES (3, 'NO3218', 'Ikaduha nani', '2nd', '2021-06-10 15:43:00');


#
# TABLE STRUCTURE FOR: support
#

DROP TABLE IF EXISTS `support`;

CREATE TABLE `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: system_info
#

DROP TABLE IF EXISTS `system_info`;

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) NOT NULL,
  `acronym` varchar(100) NOT NULL,
  `powered_b` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `system_info` (`id`, `sname`, `acronym`, `powered_b`) VALUES (1, 'Automated Barangay Management System', 'ABM System', 'IT Expert Solutions');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_type` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_type`, `avatar`, `created_at`) VALUES (1, 'admin', 'cajan232@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', 'a95ca89ffbf48cb3f9fd65cae6225174.jpg', '2021-05-19 13:34:31');
INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_type`, `avatar`, `created_at`) VALUES (12, 'staff', 'staff@gmail.com', '6ccb4b7c39a6e77f76ecfa935a855c6c46ad5611', 'staff', '3fb1b8b76d0a8690dbcbd9969a083244.png', '2021-06-10 16:02:06');


