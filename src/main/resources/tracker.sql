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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.incidents: ~-1 rows (approximately)
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` (`id`, `issue`, `send_by_id`, `priority_id`, `status_id`, `incNumber`, `description`, `resolution`, `issue_raised`, `pick_by_Tcs`, `solved_by_id`) VALUES
	(1, 'close Cmp', 1, 1, 1, 'INC0009128', 'please close CMP', 'in progress', '2017-07-29 23:02:59', '2017-07-29 23:03:06', 3),
	(2, 'update zones', 1, 3, 3, 'INC001283', 'Please updatee src zones', 'updated', '2017-07-29 23:04:40', '2017-07-29 23:04:42', 3),
	(16, '2222', 1, 1, 1, 'ffff', '2222', '2222', '2017-08-18 00:00:00', '2017-08-25 00:00:00', 2),
	(17, 'hello', 1, 1, 2, 'INC00101', 'hello', 'hello', '2017-08-30 00:00:00', '2017-08-31 00:00:00', 2),
	(18, 'kkkkkk', 1, 2, 1, 'kkkkk', 'kkkkkk', 'kkkkkk', '2017-08-29 00:00:00', '2017-08-31 00:00:00', 2),
	(19, 'vishal', 1, 2, 3, 'vishal', 'vishal', 'vishal', '2017-08-30 00:00:00', '2017-08-31 00:00:00', 2),
	(20, 'hello bro', 2, 2, 2, 'INC00012345', 'hello bro', 'hello bro', '2017-08-29 00:00:00', '2017-08-10 00:00:00', 1),
	(21, 'INC0001989', 2, 2, 2, 'INC0001989', 'INC0001989', 'INC0001989', '2017-08-17 00:00:00', '2017-08-11 00:00:00', 1);
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;

-- Dumping structure for table tracker.incstatus
CREATE TABLE IF NOT EXISTS `incstatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table tracker.incstatus: ~-1 rows (approximately)
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

-- Dumping data for table tracker.priority: ~-1 rows (approximately)
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

-- Dumping data for table tracker.send_by: ~-1 rows (approximately)
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

-- Dumping data for table tracker.tcs_devs: ~-1 rows (approximately)
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

-- Dumping data for table tracker.team_member: ~-1 rows (approximately)
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
