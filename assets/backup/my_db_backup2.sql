SET foreign_key_checks = 0;
#
# TABLE STRUCTURE FOR: barangay_info
#

DROP TABLE IF EXISTS `barangay_info`;

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

INSERT INTO `barangay_info` (`id`, `province`, `town`, `brgy_name`, `number`, `email`, `starts`, `end`, `dashboard_text`, `dashboard_img`, `city_logo`, `brgy_logo`) VALUES (1, 'Aklan', 'Altavas', 'BARANGAY POBLACION ', '269-1034', 'brgypoblacion18@gmail.com', '2018', '2022', 'ASENSO ALTAVASrttretre', 'bg.png', 'a510fc1a133df0d591308d819d2f6507.png', '609e1397ce4138fa83b1d6418890720a.png');


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
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES ('00123', 'Rodwen Francisco', 'Allan Castaneda', 'Amicable', 'Altavas Poblacion', '2021-08-17 04:00:00', 'Habang nagatikang si Allan hay sinita imaw ni Rodwen nga hilong.', 'Scheduled', '2021-08-19 13:54:00');
INSERT INTO `blotter` (`case_no`, `respondent`, `victim`, `type`, `location`, `incident_date`, `details`, `status`, `created_at`) VALUES ('324234234324212121', 'Luciano ,Erma  D.', '', 'Amicable', 'sdfsdfsdfsdfd', '2021-12-28 02:59:00', 'fsdfsdfsdfsdf', 'Active', '2021-12-28 02:59:00');


#
# TABLE STRUCTURE FOR: budget
#

DROP TABLE IF EXISTS `budget`;

CREATE TABLE `budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) DEFAULT NULL,
  `budget` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `budget` (`id`, `year`, `budget`, `created_at`) VALUES (2, '2018', '10000.00', '2021-12-29 09:50:07');
INSERT INTO `budget` (`id`, `year`, `budget`, `created_at`) VALUES (3, '2021', '1100000.00', '2021-12-29 09:50:43');


#
# TABLE STRUCTURE FOR: calendar_events
#

DROP TABLE IF EXISTS `calendar_events`;

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `calendar_events` (`ID`, `title`, `start`, `end`, `description`) VALUES (5, 'RONIL MANGOMPIT CAJAN4324', '2022-01-14 20:25:00', '2022-01-08 22:25:00', '432432');


#
# TABLE STRUCTURE FOR: cert_settings
#

DROP TABLE IF EXISTS `cert_settings`;

CREATE TABLE `cert_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` text DEFAULT NULL,
  `motto` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `watermark` text DEFAULT NULL,
  `color_bg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `cert_settings` (`id`, `flag`, `motto`, `signature`, `watermark`, `color_bg`) VALUES (1, 'flag.png', 'motto.png', 'signature.png', 'brgy-logo.png', 'rgba(28, 113, 216, 0.58)');


#
# TABLE STRUCTURE FOR: certificates
#

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `certificates` (`id`, `pic`, `title`, `salutation`, `content`, `user`, `created_at`) VALUES (1, NULL, 'gfdgfdg', NULL, '                <p>Sampletgfdsgdfgdfg</p>\r\n            ', 'admin', '2022-03-13 18:21:28');


#
# TABLE STRUCTURE FOR: chairmanship
#

DROP TABLE IF EXISTS `chairmanship`;

CREATE TABLE `chairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

INSERT INTO `chairmanship` (`id`, `title`) VALUES (1, 'PRESIDING OFFICER');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (3, 'COMMITTEE ON HEALTH');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (4, 'COMMITTEE ON APPROPRIATION');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (5, 'COMMITTEE ON ENVIRONMENT');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (6, 'COMMITTEE ON PEACE AND ORDER');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (7, 'COMMITTEE ON EDUCATION');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (8, 'COMMITTEE ON INFRASTRUCTURE');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (9, 'COMMITTEE ON YOUTH DEVELOPMENT');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (10, 'COMMITTEE ON GAD');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (11, 'COMMITTEE ON AGRICULTURE');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (12, 'COMMITTEE ON BAC');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (13, 'COMMITTEE ON WAYS AND MEANS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (14, 'COMMITTEE ON VAW-C');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (15, 'COMMITTEE ON SPORTS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (16, 'COMMITTEE ON APPROPRIATION / YOUTH DEVELOPMENT');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (17, 'COMMITTEE ON HEALTH / SPORTS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (18, 'COMMITTEE ON INFRASTRUCTURE / BAC / WAYS AND MEANS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (19, 'COMMITTEE ON PEACE AND ORDER / SPORTS');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (20, 'COMMITTEE ON VAW-C / COMMITTEE ON EDUCATION');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (21, 'COMMITTEE ON ENVIRONMENT / GAD');
INSERT INTO `chairmanship` (`id`, `title`) VALUES (22, 'NONE');


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
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('00123', 'Allan Castaneda', '', '09203251234', 'Male', '36', '', 'Kalibo Aklan');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('324234234324212121', 'RONIL MANGOMPIT CAJAN', '', '09187112668', 'Female', '20', 'dsfdsfdsf', 'PUROK 3\r\nLOOC PROPER');
INSERT INTO `complainants` (`case_no`, `name`, `national_id`, `number`, `gender`, `age`, `remarks`, `address`) VALUES ('324234234324212121', 'EULALIA ALABASTRO MANGOMPIT', 'rtr', '09187112668', '', '', '', 'PUROK 3, LOOC PROPER');


#
# TABLE STRUCTURE FOR: covid_status
#

DROP TABLE IF EXISTS `covid_status`;

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

INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (1, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (2, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (3, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (4, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (5, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (6, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (7, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (8, 'Positive', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '');
INSERT INTO `covid_status` (`resident_id`, `status`, `date_vaccinated`, `vaccinator_name`, `manufacturer`, `batch_no`, `lot_no`, `date_vaccinated_1`, `vaccinator_name_1`, `manufacturer_1`, `batch_no_1`, `lot_no_1`, `remarks`) VALUES (9, 'Negative', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: house_number
#

DROP TABLE IF EXISTS `house_number`;

CREATE TABLE `house_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(100) DEFAULT NULL,
  `info` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=919 DEFAULT CHARSET=utf8mb4;

INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (917, '09187112668', 'dsadasd');
INSERT INTO `house_number` (`id`, `number`, `info`) VALUES (918, '269-1034', 'fdsfdsfd');


#
# TABLE STRUCTURE FOR: id_settings
#

DROP TABLE IF EXISTS `id_settings`;

CREATE TABLE `id_settings` (
  `id` int(11) NOT NULL,
  `front` text DEFAULT NULL,
  `back` text DEFAULT NULL,
  `bg_color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `id_settings` (`id`, `front`, `back`, `bg_color`) VALUES (1, 'city_logo.png', 'brgy-logo.png', 'rgba(235, 206, 206, 0.02)');


#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` text DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;

INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (1, 'Event created.', 'Create', 'admin', '2022-01-10 19:25:11');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (2, 'Resident deleted', 'Delete', 'admin', '2022-01-10 19:46:40');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (3, 'Request created', 'Create', 'admin', '2022-01-11 20:32:02');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (4, 'Payment created', 'Create', 'admin', '2022-01-13 11:07:15');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (5, 'Payment created', 'Create', 'admin', '2022-01-13 11:07:40');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (6, 'Payment created', 'Create', 'admin', '2022-01-13 11:09:02');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (7, 'Payment created', 'Create', 'admin', '2022-01-26 11:43:19');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (8, 'Certificate created.', 'Create', 'admin', '2022-01-28 19:38:00');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (9, 'Payment created', 'Create', 'admin', '2022-01-28 19:38:11');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (10, 'Certificate deleted.', 'Delete', 'admin', '2022-01-28 19:48:51');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (11, 'Payment created', 'Create', 'admin', '2022-03-07 18:42:12');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (12, 'Payment created', 'Create', 'admin', '2022-03-07 18:42:37');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (13, 'Payment created', 'Create', 'admin', '2022-03-07 18:43:53');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (14, 'Barangay Information updated', 'Update', 'admin', '2022-03-07 18:46:42');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (15, 'Payment created', 'Create', 'admin', '2022-03-07 18:53:06');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (16, 'Payment created', 'Create', 'admin', '2022-03-07 18:54:34');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (17, 'Payment created', 'Create', 'admin', '2022-03-07 18:55:29');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (18, 'Payment created', 'Create', 'admin', '2022-03-07 18:57:02');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (19, 'Payment created', 'Create', 'admin', '2022-03-07 18:57:42');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (20, 'Resident created', 'Create', 'admin', '2022-03-07 19:12:54');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (21, 'Household created', 'Create', 'admin', '2022-03-07 19:14:00');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (22, 'Resident updated', 'Update', 'admin', '2022-03-07 19:14:07');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (23, 'Resident created', 'Create', 'admin', '2022-03-08 19:52:46');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (24, 'Resident updated', 'Update', 'admin', '2022-03-08 19:55:57');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (25, 'Resident updated', 'Update', 'admin', '2022-03-08 20:06:40');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (26, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:14:27');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (27, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:14:34');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (28, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:15:57');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (29, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:23:13');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (30, 'Resident file imported', 'Import File', 'admin', '2022-03-08 20:24:42');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (31, 'Resident deleted', 'Delete', 'admin', '2022-03-08 20:24:57');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (32, 'Resident exported', 'Exported File', 'admin', '2022-03-08 20:28:51');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (33, 'Barangay Information updated', 'Update', 'admin', '2022-03-13 17:45:14');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (34, 'Barangay Information updated', 'Update', 'admin', '2022-03-13 18:18:24');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (35, 'Barangay Information updated', 'Update', 'admin', '2022-03-13 18:18:37');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (36, 'Certificate created.', 'Create', 'admin', '2022-03-13 18:21:28');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (37, 'Payment created', 'Create', 'admin', '2022-03-13 18:21:43');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (38, 'Payment created', 'Create', 'admin', '2022-03-13 18:22:15');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (39, 'Payment created', 'Create', 'admin', '2022-03-13 18:24:30');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (40, 'Project created', 'Create', 'admin', '2022-03-13 18:25:57');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (41, 'Project updated', 'Update', 'admin', '2022-03-13 18:26:09');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (42, 'Project deleted', 'Delete', 'admin', '2022-03-13 18:26:23');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (43, 'Resident created', 'Create', 'admin', '2022-03-14 19:32:58');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (44, 'Resident updated', 'Update', 'admin', '2022-03-14 19:40:59');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (45, 'Resident updated', 'Update', 'admin', '2022-03-14 19:42:19');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (46, 'Resident deleted', 'Delete', 'admin', '2022-03-17 19:57:22');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (47, 'Resident created', 'Create', 'admin', '2022-03-17 19:57:29');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (48, 'Resident deleted', 'Delete', 'admin', '2022-03-17 19:58:32');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (49, 'Resident created', 'Create', 'admin', '2022-03-17 19:58:38');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (50, 'Resident deleted', 'Delete', 'admin', '2022-03-17 20:18:01');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (51, 'Resident created', 'Create', 'admin', '2022-03-17 20:18:06');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (52, 'Resident deleted', 'Delete', 'admin', '2022-03-17 20:22:10');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (53, 'Resident created', 'Create', 'admin', '2022-03-17 20:22:15');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (54, 'Payment created', 'Create', 'admin', '2022-03-17 20:23:27');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (55, 'Payment created', 'Create', 'admin', '2022-03-17 20:25:35');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (56, 'Payment created', 'Create', 'admin', '2022-03-21 18:34:32');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (57, 'Purok updated', 'Update', 'admin', '2022-04-04 19:20:00');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (58, 'Purok created', 'Create', 'admin', '2022-04-04 19:20:11');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (59, 'Purok deleted', 'Delete', 'admin', '2022-04-04 19:20:17');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (60, 'Occupation created', 'Create', 'admin', '2022-04-04 19:44:04');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (61, 'Occupation updated', 'Update', 'admin', '2022-04-04 19:48:48');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (62, 'Occupation updated', 'Update', 'admin', '2022-04-04 19:48:53');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (63, 'Occupation deleted', 'Delete', 'admin', '2022-04-04 20:10:37');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (64, 'Occupation created', 'Create', 'admin', '2022-04-05 19:23:31');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (65, 'Resident updated', 'Update', 'admin', '2022-04-05 19:31:45');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (66, 'Resident created', 'Create', 'admin', '2022-04-05 19:59:49');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (67, 'Resident updated', 'Update', 'admin', '2022-04-05 20:00:19');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (68, 'Covid status updated', 'Update', 'admin', '2022-04-06 18:48:19');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (69, 'Household created', 'Create', 'admin', '2022-04-06 19:30:48');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (70, 'Household created', 'Create', 'admin', '2022-04-06 19:30:56');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (71, 'Resident updated', 'Update', 'admin', '2022-04-06 19:31:24');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (72, 'Resident updated', 'Update', 'admin', '2022-04-06 19:31:40');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (73, 'Relationship updated', 'Update', 'admin', '2022-04-06 19:32:10');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (74, 'Relationship updated', 'Update', 'admin', '2022-04-06 19:32:15');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (75, 'Resident updated', 'Update', 'admin', '2022-04-07 19:27:05');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (76, 'Request created', 'Create', 'kiosk', '2022-04-07 19:27:39');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (77, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 19:46:49');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (78, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 19:46:55');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (79, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:23');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (80, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:23');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (81, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:27');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (82, 'Transaction deleted', 'Delete', 'admin', '2022-04-07 20:36:27');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (83, 'Barangay Information updated', 'Update', 'admin', '2022-04-10 20:56:15');
INSERT INTO `logs` (`id`, `activity`, `action`, `username`, `created_at`) VALUES (84, 'System backup', 'Backup', 'admin', '2022-04-11 19:21:06');


#
# TABLE STRUCTURE FOR: occupation
#

DROP TABLE IF EXISTS `occupation`;

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occupation_name` varchar(50) DEFAULT NULL,
  `occupation_details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO `occupation` (`id`, `occupation_name`, `occupation_details`) VALUES (2, 'IT', 'rewrrew');


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
  `avatar` text DEFAULT NULL,
  `name_show` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (2, 'FILOMENO D. REFOL I', 1, 3, '2021-05-08', '2025-05-28', 'Active', 'b06f85f1a4fb81ca33c572df77f82c48.png', 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (3, 'TIFFANY LEIGH O. DOROTEO', 16, 1, '2021-05-15', '2025-06-03', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (4, 'KARL CHRISTOPHER D. QUIMPO', 17, 5, '2021-05-22', '2025-04-30', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (5, 'IRADIEL V. VILLANUEVA, JR.', 18, 6, '2021-05-01', '2025-05-01', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (6, 'BERNARD J\'PETE M. PANADERO', 19, 7, '2021-05-08', '2025-05-08', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (7, 'GINA P. CUSTODIO', 20, 8, '2021-05-08', '2021-05-08', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (8, 'EVELYN F. BELARMINO', 21, 9, '2021-05-08', '2025-05-01', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (9, 'FERMIN R. SUCGANG, JR.', 11, 10, '2021-05-22', '2025-05-15', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (10, 'AUGUSTIE T. PERLAS', 22, 4, '2021-05-01', '2025-05-08', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (11, 'VANGIE C. MORE', 22, 11, '2021-05-08', '2025-05-15', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (12, 'Juan dela Cruz', 22, 13, '2021-12-02', '2021-12-31', 'Active', NULL, 1);
INSERT INTO `officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`, `avatar`, `name_show`) VALUES (13, 'Jess G', 20, 12, '2021-12-01', '2021-12-23', 'Active', NULL, 1);


#
# TABLE STRUCTURE FOR: other_details
#

DROP TABLE IF EXISTS `other_details`;

CREATE TABLE `other_details` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `sss` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `precinct` varchar(50) DEFAULT NULL,
  `gsis` varchar(50) DEFAULT NULL,
  `pagibig` varchar(50) DEFAULT NULL,
  `philhealth` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  KEY `resident_id` (`resident_id`),
  CONSTRAINT `other_details_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `other_details` (`id`, `resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES (0, 8, '', '', NULL, '', '', '', '');
INSERT INTO `other_details` (`id`, `resident_id`, `sss`, `tin`, `precinct`, `gsis`, `pagibig`, `philhealth`, `blood`) VALUES (0, 9, '', '', NULL, '', '', '', '');


#
# TABLE STRUCTURE FOR: payments
#

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `permit` (`id`, `b_name`, `owner1`, `owner2`, `nature`, `status`, `expiration_date`, `number`, `b_address`, `o_address`, `remarks`, `created_at`) VALUES (5, 'IT EXPERT SOLUTIONS', 'ALLAN CASTANEDA \\ MATHEW GREGORIO', 'a', 'IT SERVICES', 'Renewal', '2021-12-29', '269-1034', 'ALTAVAS POBLACION', 'KALIBO AKLAN12', 'APPROVED', '2021-08-19');


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
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (3, 'PUNONG BARANGAY', 1);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (4, 'SK Chairperson', 9);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (5, 'Councilor 2', 3);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (6, 'Councilor 3', 4);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (7, 'Councilor 4', 5);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (8, 'Councilor 5', 6);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (9, 'Councilor 6', 7);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (10, 'Councilor 7', 8);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (11, 'Barangay Secretary', 10);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (12, 'Barangay Treasurer', 11);
INSERT INTO `position` (`id`, `position`, `pos_order`) VALUES (13, 'Administrative Aide', 12);


#
# TABLE STRUCTURE FOR: precinct
#

DROP TABLE IF EXISTS `precinct`;

CREATE TABLE `precinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: projects
#

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `budget_alloted` decimal(20,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `budget_id` (`budget_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `projects` (`id`, `budget_id`, `name`, `details`, `budget_alloted`, `status`, `remarks`, `created_at`) VALUES (4, 2, 'System', 'fsdf', '2000.00', 'Paid', 'sdfsdfsdf', '2021-12-29 11:29:47');


#
# TABLE STRUCTURE FOR: purok
#

DROP TABLE IF EXISTS `purok`;

CREATE TABLE `purok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitio` varchar(50) DEFAULT NULL,
  `purok_name` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO `purok` (`id`, `sitio`, `purok_name`, `details`) VALUES (1, 'fdsfsdf', '8768', 'fsdfdsf');


#
# TABLE STRUCTURE FOR: request
#

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document` varchar(50) DEFAULT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'New',
  `request_stat` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `request` (`id`, `document`, `resident_id`, `purpose`, `status`, `request_stat`, `created_at`) VALUES (4, 'Barangay Clearance', 8, 'gfdgfdgfdgdfgfd', 'New', 1, '2022-04-07 19:27:39');


#
# TABLE STRUCTURE FOR: resident_house
#

DROP TABLE IF EXISTS `resident_house`;

CREATE TABLE `resident_house` (
  `resident_id` int(11) DEFAULT NULL,
  `house_number` varchar(100) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL,
  UNIQUE KEY `resident_id` (`resident_id`),
  CONSTRAINT `resident_house_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `resident_house` (`resident_id`, `house_number`, `relation`) VALUES (8, '09187112668', 'rewrwerewr');
INSERT INTO `resident_house` (`resident_id`, `house_number`, `relation`) VALUES (9, '09187112668', '534dfgdfg');


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
  `qrcode` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `suffix`, `alias`, `birthplace`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `blocklisted`, `remarks`, `qrcode`) VALUES (8, '', '', NULL, 'RONIL', 'MANGOMPIT', 'CAJAN', '', '', '', '2022-04-08', NULL, 'Male', NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', 'IT', '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', 'No', '', '6NRGLP4QBPVLJEIDZXJY45CM1CS5V6T8LXJWFKGH57B5NAOOFBR7ICAXNT1ZCXCFIK0VA2TXG8W2A9PCFPA34WJY5JFE1JD7ZJWLMA5MFTOS37OHMX0BSBLO');
INSERT INTO `residents` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `suffix`, `alias`, `birthplace`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `phone`, `email`, `occupation`, `employer_name`, `pwd`, `address`, `resident_type`, `blocklisted`, `remarks`, `qrcode`) VALUES (9, '', '', NULL, 'RONIL', 'MANGOMPIT', 'CAJAN', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL, '09187112668', 'ronil.cajan@gmail.com', NULL, '', NULL, 'PUROK 3\r\nLOOC PROPER', 'Alive', 'No', '', 'HTDLAPBSN4OSPA2AIYKPRJFZSQ4Y6EE6J8FYN4OTLWTYF8YADB7ANEFWUBSVU6GPLT1RTZRX3MVWXDIAELKCTTFWKOEZYIO23JUQ5IJSYDYQTJKMV9WUDW0Y');


#
# TABLE STRUCTURE FOR: services
#

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `requires` text DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `services` (`id`, `title`, `description`, `fees`, `requires`, `status`) VALUES (1, 'Barangay Clearance', 'Barangay Clearance for resident', '100.00', 'Cedula', 'Active');
INSERT INTO `services` (`id`, `title`, `description`, `fees`, `requires`, `status`) VALUES (2, 'Residency Certificate', 'Nulla porttitor accumsan tincidunt. Donec sollicitudin molestie malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '100.00', 'ID', 'Active');
INSERT INTO `services` (`id`, `title`, `description`, `fees`, `requires`, `status`) VALUES (3, 'Indigency Certificate', 'Nulla porttitor accumsan tincidunt. Donec sollicitudin molestie malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '100.00', 'ID', 'Active');


#
# TABLE STRUCTURE FOR: settled
#

DROP TABLE IF EXISTS `settled`;

CREATE TABLE `settled` (
  `case_no` varchar(50) NOT NULL,
  `updates` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('00123', NULL, NULL);
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('13213213', NULL, NULL);
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('213213213', NULL, NULL);
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('CASESD4324234234222', '', '2021-06-10');
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('NO3218', 'nice', '2021-06-09');
INSERT INTO `settled` (`case_no`, `updates`, `date`) VALUES ('324234234324212121', NULL, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `summon` (`id`, `case_no`, `blotter_update`, `number`, `date`) VALUES (5, '00123', 'Gin padaea eon do summon', '1st', '2021-08-20 16:00:00');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: system_info
#

DROP TABLE IF EXISTS `system_info`;

CREATE TABLE `system_info` (
  `id` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `acronym` varchar(100) NOT NULL,
  `powered_b` varchar(100) NOT NULL,
  `login_bg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `system_info` (`id`, `sname`, `acronym`, `powered_b`, `login_bg`) VALUES (1, 'Automated Barangay Management System - Licensed to : POB. ALTAVAS', 'ABM System', 'IT Expert Solutionsds', '6362cdf0d48781e9beba303066c6c7d3.jpg');


SET foreign_key_checks = 1;
