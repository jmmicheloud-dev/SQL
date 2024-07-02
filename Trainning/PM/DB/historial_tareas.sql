-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.4.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla pm2.historial_tareas
CREATE TABLE IF NOT EXISTS `historial_tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarea_id` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `desde` varchar(50) DEFAULT NULL,
  `hasta` varchar(50) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_historial_tareas_tareas` (`tarea_id`),
  CONSTRAINT `FK_historial_tareas_tareas` FOREIGN KEY (`tarea_id`) REFERENCES `tareas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla pm2.historial_tareas: ~47 rows (aproximadamente)
/*!40000 ALTER TABLE `historial_tareas` DISABLE KEYS */;
REPLACE INTO `historial_tareas` (`id`, `tarea_id`, `estado`, `user_id`, `desde`, `hasta`, `observaciones`) VALUES
	(1, 1, 4, 12, '2024-01-15 10:11:01', NULL, NULL),
	(2, 2, 4, 3, '2024-01-15 10:11:01', NULL, NULL),
	(3, 3, 4, 3, '2024-01-2210:11:01', NULL, NULL),
	(4, 4, 4, 3, '2024-02-23 10:15:33', NULL, NULL),
	(5, 5, 4, 12, '2024-02-25 10:15:33', NULL, NULL),
	(10, 6, 4, 3, '2024-02-25 10:15:33', NULL, NULL),
	(11, 7, 4, 3, '2024-02-28 10:31:47', NULL, NULL),
	(12, 8, 4, 12, '2024-03-04 10:34:21', NULL, NULL),
	(14, 9, 4, 3, '2024-03-08 10:38:22', NULL, NULL),
	(15, 10, 4, 3, '2024-03-12 10:38:22', NULL, NULL),
	(16, 11, 4, 3, '2024-03-26 10:42:28', NULL, NULL),
	(17, 12, 1, 12, '2024-03-27 10:43:30', NULL, NULL),
	(18, 13, 1, 5, '2024-04-08 10:49:42', NULL, NULL),
	(19, 12, 4, 12, '2024-04-09 10:49:42', NULL, NULL),
	(20, 14, 4, 12, '2024-04-10 10:49:42', NULL, NULL),
	(22, 13, 4, 5, '2024-04-12 10:55:28', NULL, NULL),
	(23, 15, 4, 3, '2024-04-18 10:55:28', NULL, NULL),
	(24, 16, 4, 3, '2024-05-16 10:58:50', NULL, NULL),
	(25, 17, 4, 3, '2024-06-12 11:02:39', NULL, NULL),
	(26, 18, 1, 5, '2024-04-10 11:12:59', NULL, NULL),
	(27, 18, 4, 5, '2024-06-27 11:14:35', NULL, NULL),
	(29, 19, 4, 3, '2024-06-28 11:15:13', NULL, NULL),
	(30, 20, 4, 3, '2024-06-29 11:15:13', NULL, NULL),
	(34, 21, 4, 3, '2024-06-14 11:24:23', NULL, NULL),
	(35, 22, 4, 3, '2024-06-21 11:25:19', NULL, NULL),
	(36, 23, 4, 3, '2024-06-28 11:25:45', NULL, NULL),
	(37, 24, 1, 4, '2023-12-13 11:42:46', NULL, NULL),
	(38, 24, 2, 3, '2024-12-13 11:43:00', '2024-12-14 11:43:00', NULL),
	(39, 24, 4, 3, '2024-12-14 11:43:00', '2024-12-14 11:43:00', NULL),
	(40, 25, 0, 4, '2024-04-11 13:28:25', '2024-04-18 13:29:46', NULL),
	(41, 25, 1, 3, '2024-04-18 13:29:46', '2024-04-22 13:32:16', NULL),
	(42, 25, 2, 3, '2024-04-22 13:32:16', '2024-04-26 13:34:31', NULL),
	(43, 25, 1, 3, '2024-04-26 13:34:31', '2024-05-03 13:41:28', NULL),
	(44, 26, 2, 2, '2024-04-26 13:35:13', NULL, NULL),
	(47, 27, 4, 2, '2024-04-28 13:39:22', '2024-04-29 13:39:22', NULL),
	(49, 25, 2, 4, '2024-05-03 13:41:28', '2024-05-17 13:45:49', NULL),
	(50, 26, 4, 2, '2024-05-12 13:43:41', '2024-05-13 13:43:41', NULL),
	(51, 28, 4, 2, '2024-05-13 13:43:41', '2024-05-14 13:43:41', NULL),
	(52, 29, 4, 2, '2024-05-20 13:45:49', '2024-05-21 13:45:49', NULL),
	(54, 25, 1, 4, '2024-05-17 13:45:49', '2024-05-24', NULL),
	(57, 25, 2, 2, '2024-05-24 13:45:49', '2024-05-25 13:45:49', NULL),
	(58, 30, 1, 4, '2024-05-30 13:45:49', '2024-06-24 19:51:20', NULL),
	(59, 25, 4, 2, '2024-05-30 13:45:49', '2024-05-31 13:45:49', NULL),
	(60, 25, 8, 4, '2024-06-03 13:59:04', '2024-06-03 13:59:04', NULL),
	(61, 31, 2, 3, '2024-06-03 13:59:04', '2024-06-05 13:59:04', NULL),
	(62, 31, 2, 4, '2024-06-05 13:59:04', '2024-06-07 13:59:04', NULL),
	(63, 31, 4, 3, '2024-06-07 13:59:04', '2024-06-07 13:59:04', NULL),
	(65, 30, 5, 2, '2024-06-24 19:51:20', NULL, NULL);
/*!40000 ALTER TABLE `historial_tareas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
