-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.0-dmr-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for tracker
DROP DATABASE IF EXISTS `tracker`;
CREATE DATABASE IF NOT EXISTS `tracker` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tracker`;

-- Dumping structure for table tracker.incidents
CREATE TABLE IF NOT EXISTS `incidents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue` text NOT NULL,
  `send_by_id` bigint(20) NOT NULL,
  `priority_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `incNumber` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `resolution` text NOT NULL,
  `issue_raised` datetime DEFAULT NULL,
  `pick_by_Tcs` datetime DEFAULT NULL,
  `solved_by_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SEND_BY_ID` (`send_by_id`),
  KEY `priority_id` (`priority_id`),
  KEY `solved_by_id` (`solved_by_id`),
  KEY `incidents_ibfk_2` (`status_id`),
  CONSTRAINT `FK_SEND_BY_ID` FOREIGN KEY (`send_by_id`) REFERENCES `send_by` (`id`),
  CONSTRAINT `incidents_ibfk_1` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`),
  CONSTRAINT `incidents_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `incstatus` (`id`),
  CONSTRAINT `incidents_ibfk_3` FOREIGN KEY (`solved_by_id`) REFERENCES `tcs_devs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.incidents: ~49 rows (approximately)
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` (`id`, `issue`, `send_by_id`, `priority_id`, `status_id`, `incNumber`, `description`, `resolution`, `issue_raised`, `pick_by_Tcs`, `solved_by_id`) VALUES
	(1, 'close Cmp', 1, 1, 1, 'INC0009128', 'please close CMP', 'in progress', '2017-07-29 23:02:59', '2017-07-29 23:03:06', 3),
	(2, 'update zones', 1, 3, 3, 'INC001283', 'Please updatee src zones', 'updated', '2017-07-29 23:04:40', '2017-07-29 23:04:42', 3),
	(16, '2222', 1, 1, 1, 'ffff', '2222', '2222', '2017-08-18 00:00:00', '2017-08-25 00:00:00', 2),
	(17, 'hello', 1, 1, 2, 'INC00101', 'hello', 'hello', '2017-08-30 00:00:00', '2017-08-31 00:00:00', 2),
	(18, 'kkkkkk', 1, 2, 1, 'kkkkk', 'kkkkkk', 'kkkkkk', '2017-08-29 00:00:00', '2017-08-31 00:00:00', 2),
	(19, 'vishal', 1, 2, 3, 'vishal', 'vishal', 'vishal', '2017-08-30 00:00:00', '2017-08-31 00:00:00', 2),
	(20, 'hello bro', 2, 2, 2, 'INC00012345', 'hello bro', 'hello bro', '2017-08-29 00:00:00', '2017-08-10 00:00:00', 1),
	(21, 'INC0001989', 2, 2, 2, 'INC0001989', 'INC0001989', 'INC0001989', '2017-08-17 00:00:00', '2017-08-11 00:00:00', 1),
	(22, 'Zones', 1, 1, 1, 'INC000198909', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-08-29 00:00:00', '2017-08-30 00:00:00', 1),
	(23, 'fffffffffffffff', 1, 1, 1, 'ffffffffffffffffffffff', 'fffffffffffffff', 'fffffffffffffffffffff', '2017-08-30 00:00:00', '2017-08-31 00:00:00', 1),
	(24, 'number', 1, 2, 2, 'INC000198909', 'readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-08-29 00:00:00', '2017-08-30 00:00:00', 2),
	(25, 'hello', 1, 2, 2, 'INC001010099', 'readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2017-08-29 00:00:00', '2017-08-30 00:00:00', 2),
	(26, 'jhkjh', 1, 1, 1, 'lkjlj', 'kjhk', 'jjgjhg', '2017-08-22 00:00:00', '2017-08-31 00:00:00', 2),
	(29, 'dasfdaff', 1, 1, 2, 'fdfasf', 'dafafd', 'dafafd', '2017-09-05 00:00:00', '2017-09-06 00:00:00', 1),
	(30, 'details', 1, 1, 1, 'details', 'details', 'details', '2017-09-11 00:00:00', '2017-09-21 00:00:00', 1),
	(31, 'tiiiillllllllll', 1, 1, 1, 'tiiiillllllllll', 'tiiiillllllllll', 'tiiiillllllllll', '2017-09-05 00:00:00', '2017-09-22 00:00:00', 2),
	(32, 'lololololq', 1, 1, 1, 'lolololol', 'lolololol', 'lolololol', '2017-09-14 00:00:00', '2017-09-22 00:00:00', 1),
	(33, 'lololololq', 1, 1, 1, 'lolololollll', 'lolololol', 'lolololol', '2017-09-14 00:00:00', '2017-09-22 00:00:00', 1),
	(34, 'lololololq', 1, 1, 1, 'lolololollllll', 'lolololol', 'lolololol', '2017-09-14 00:00:00', '2017-09-22 00:00:00', 1),
	(35, 'INC0009129', 1, 1, 1, 'INC0009129INC0009129', 'INC0009129', 'INC0009129', '2017-09-05 00:00:00', '2017-09-06 00:00:00', 1),
	(36, 'INC00101', 1, 1, 1, 'INC00101INC00101INC00101', 'INC00101', 'INC00101', '2017-09-06 00:00:00', '2017-09-14 00:00:00', 1),
	(37, 'INC00101', 1, 1, 1, 'lkioplk', 'INC00101', 'INC00101', '2017-09-06 00:00:00', '2017-09-14 00:00:00', 1),
	(38, 'd[\'id\']', 1, 1, 3, 'vishllllll', 'd[\'id\']', 'd[\'id\']', '2017-09-05 00:00:00', '2017-09-07 00:00:00', 1),
	(39, 'hfhfffhhfh', 1, 1, 1, 'hfhfffhhfh', 'hfhfffhhfh', 'hfhfffhhfh', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 2),
	(40, 'ggggggg', 1, 1, 1, 'ggggggg', 'ggggggg', 'ggggggg', '2017-09-06 00:00:00', '2017-09-01 00:00:00', 1),
	(41, 'hhhhhhhhhhhhh', 1, 1, 1, 'hhhhhhhhhhhhh', 'hhhhhhhhhhhhh', 'hhhhhhhhhhhhh', '2017-09-05 00:00:00', '2017-09-15 00:00:00', 2),
	(42, 'hhhhhhhhhhhhh', 1, 1, 1, 'hhhhhhhhhhhhhf', 'hhhhhhhhhhhhh', 'hhhhhhhhhhhhh', '2017-09-05 00:00:00', '2017-09-15 00:00:00', 2),
	(43, 'klklklklklklkl', 1, 1, 1, 'klklklklklklkl', 'klklklklklklkl', 'klklklklklklkl', '2017-09-07 00:00:00', '2017-09-15 00:00:00', 1),
	(44, 'klklklklklklkl', 1, 1, 1, 'klklklklklklklll', 'klklklklklklkl', 'klklklklklklkl', '2017-09-07 00:00:00', '2017-09-15 00:00:00', 1),
	(45, 'klklklklklklkl', 1, 1, 1, '908908908', 'klklklklklklkl', 'klklklklklklkl', '2017-09-07 00:00:00', '2017-09-15 00:00:00', 1),
	(46, 'UALUAL', 1, 1, 1, 'UALUAL', 'UALUAL', 'UALUAL', '2017-09-06 00:00:00', '2017-09-08 00:00:00', 1),
	(47, 'loploplop', 1, 1, 1, 'loploplop', 'vloploplop', 'loploplop', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 1),
	(48, 'opopopopopo', 1, 1, 1, 'opopopopopo', 'opopopopopo', 'opopopopopo', '2017-09-05 00:00:00', '2017-09-14 00:00:00', 1),
	(49, 'alert(\'inside service fetchDetails :\');', 1, 1, 1, 'opopopopo', 'alert(\'inside service fetchDetails :\');', 'alert(\'inside service fetchDetails :\');', '2017-09-05 00:00:00', '2017-09-07 00:00:00', 1),
	(50, 'alert(\'inside service fetchDetails :\');', 1, 1, 1, 'opopopopol', 'alert(\'inside service fetchDetails :\');', 'alert(\'inside service fetchDetails :\');', '2017-09-05 00:00:00', '2017-09-07 00:00:00', 1),
	(51, 'jk;ljlkjkjlkj', 1, 1, 1, 'jk;ljlkjkjlkj', 'jk;ljlkjkjlkj', 'jk;ljlkjkjlkj', '2017-09-20 00:00:00', '2017-09-08 00:00:00', 1),
	(52, 'http://localhost:8080/tracker/inc/pageDetails/51', 1, 1, 1, 'numver', 'http://localhost:8080/tracker/inc/pageDetails/51', 'http://localhost:8080/tracker/inc/pageDetails/51', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 1),
	(53, 'http://localhost:8080/tracker/inc/pageDetails/51', 1, 1, 1, 'numverg', 'http://localhost:8080/tracker/inc/pageDetails/51', 'http://localhost:8080/tracker/inc/pageDetails/51', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 1),
	(54, 'http://localhost:8080/tracker/inc/pageDetails/51', 1, 1, 1, 'numvergll', 'http://localhost:8080/tracker/inc/pageDetails/51', 'http://localhost:8080/tracker/inc/pageDetails/51', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 1),
	(55, 'http://localhost:8080/tracker/inc/pageDetails/51', 1, 1, 1, 'numverglloo', 'http://localhost:8080/tracker/inc/pageDetails/51', 'http://localhost:8080/tracker/inc/pageDetails/51', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 1),
	(56, 'http://localhost:8080/tracker/inc/pageDetails/51', 1, 1, 1, 'numvergllool', 'http://localhost:8080/tracker/inc/pageDetails/51', 'http://localhost:8080/tracker/inc/pageDetails/51', '2017-09-06 00:00:00', '2017-09-07 00:00:00', 1),
	(57, 'hkjhkjhkjh', 2, 1, 1, 'kjhkjhkjhkjhkjhkj', 'hkjhkjh', 'jhkjhkjhkjhkj', '2017-09-06 00:00:00', '2017-09-29 00:00:00', 1),
	(58, 'hkjhkjhkjh', 2, 1, 1, 'kjhkjhkjhkjhkjhkjk', 'hkjhkjh', 'jhkjhkjhkjhkj', '2017-09-06 00:00:00', '2017-09-29 00:00:00', 1),
	(59, 'hkjhkjhkjh', 2, 1, 1, 'kjhkjhkjhkjhkjhkjkl', 'hkjhkjh', 'jhkjhkjhkjhkj', '2017-09-06 00:00:00', '2017-09-29 00:00:00', 1),
	(60, 'hklhkl', 1, 1, 1, 'hklhkl', 'hklhkl', 'hklhkl', '2017-09-20 00:00:00', '2017-09-22 00:00:00', 1),
	(61, 'hklhkl', 1, 1, 1, 'lokllkjj1', 'hklhkl', 'hklhkl', '2017-09-06 00:00:00', '2017-09-15 00:00:00', 1),
	(62, 'lllll', 1, 1, 1, 'lllll', 'llll', 'lll', '2017-09-05 00:00:00', '2017-09-14 00:00:00', 2),
	(63, 'kkkkk', 1, 1, 1, 'kkkkkk', 'kkkkk', 'kkkkk', '2017-09-07 00:00:00', '2017-09-21 00:00:00', 1),
	(64, 'jhkjhkjh', 1, 1, 1, 'lplplplpll', 'kjhkhkh', 'kjhkhkh', '2017-09-13 00:00:00', '2017-09-20 00:00:00', 1);
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;

-- Dumping structure for table tracker.incstatus
CREATE TABLE IF NOT EXISTS `incstatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.incstatus: ~3 rows (approximately)
/*!40000 ALTER TABLE `incstatus` DISABLE KEYS */;
INSERT INTO `incstatus` (`id`, `name`) VALUES
	(1, 'Open'),
	(2, 'Close'),
	(3, 'Awaiting user response');
/*!40000 ALTER TABLE `incstatus` ENABLE KEYS */;

-- Dumping structure for table tracker.priority
CREATE TABLE IF NOT EXISTS `priority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.priority: ~3 rows (approximately)
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` (`id`, `name`) VALUES
	(1, 'BAU'),
	(2, 'EMER'),
	(3, 'BUSCRIT');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;

-- Dumping structure for table tracker.send_by
CREATE TABLE IF NOT EXISTS `send_by` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.send_by: ~2 rows (approximately)
/*!40000 ALTER TABLE `send_by` DISABLE KEYS */;
INSERT INTO `send_by` (`id`, `name`) VALUES
	(1, 'L2 Team'),
	(2, 'User');
/*!40000 ALTER TABLE `send_by` ENABLE KEYS */;

-- Dumping structure for table tracker.tcs_devs
CREATE TABLE IF NOT EXISTS `tcs_devs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.tcs_devs: ~3 rows (approximately)
/*!40000 ALTER TABLE `tcs_devs` DISABLE KEYS */;
INSERT INTO `tcs_devs` (`id`, `name`) VALUES
	(1, 'Vishal'),
	(2, 'Lenin'),
	(3, 'Sangeetha');
/*!40000 ALTER TABLE `tcs_devs` ENABLE KEYS */;

-- Dumping structure for table tracker.team_member
CREATE TABLE IF NOT EXISTS `team_member` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.team_member: ~4 rows (approximately)
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` (`id`, `name`) VALUES
	(6, 'vishal shrivastava'),
	(9, 'Lalla'),
	(10, 'sirita'),
	(11, 'Somj');
/*!40000 ALTER TABLE `team_member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
