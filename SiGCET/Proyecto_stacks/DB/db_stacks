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


-- Volcando estructura de base de datos para stacksdb
CREATE DATABASE IF NOT EXISTS `stacksdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `stacksdb`;

-- Volcando estructura para tabla stacksdb.stacks
CREATE TABLE IF NOT EXISTS `stacks` (
  `id` varchar(50) NOT NULL,
  `sala_id` int(11) DEFAULT NULL,
  `status` enum('Y','N','it') DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla stacksdb.stacks: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `stacks` DISABLE KEYS */;
REPLACE INTO `stacks` (`id`, `sala_id`, `status`, `group_id`, `created_at`, `updated_at`) VALUES
	('a3575', 9, 'Y', 1, '2024-08-24 06:15:52', NULL),
	('b5555', 9, 'Y', 1, '2024-08-24 06:20:46', '2024-08-24 06:20:48'),
	('w2222', 9, 'Y', 1, '2024-08-24 06:30:35', '2024-08-24 06:30:36');
/*!40000 ALTER TABLE `stacks` ENABLE KEYS */;

-- Volcando estructura para tabla stacksdb.stacks_audit
CREATE TABLE IF NOT EXISTS `stacks_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL DEFAULT curdate(),
  `stack_id` varchar(50) NOT NULL,
  `sala_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `tipo` enum('reg','ant') NOT NULL DEFAULT 'reg',
  `valor` float(22,2) DEFAULT NULL,
  `status` enum('pen','ok','ver') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stacks_movs_stacks` (`stack_id`) USING BTREE,
  CONSTRAINT `FK_stacks_audit_stacks` FOREIGN KEY (`stack_id`) REFERENCES `stacks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla stacksdb.stacks_audit: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `stacks_audit` DISABLE KEYS */;
REPLACE INTO `stacks_audit` (`id`, `fecha`, `stack_id`, `sala_id`, `group_id`, `tipo`, `valor`, `status`, `created_at`, `updated_at`) VALUES
	(1, '2024-08-22', 'a3575', 9, 1, 'reg', 1000000.00, 'ok', '2024-08-22 06:17:42', NULL),
	(2, '2024-08-21', 'b5555', 9, 1, 'reg', 500000.00, 'ok', '2024-08-22 06:21:10', NULL),
	(3, '2024-08-23', 'a3575', 9, 1, 'reg', 800000.00, 'ok', '2024-08-23 06:17:42', NULL),
	(4, '2024-08-23', 'b5555', 9, 1, 'reg', 470000.00, 'ok', '2024-08-23 06:21:10', NULL),
	(5, '2024-08-23', 'a3575', 9, 1, 'ant', 400000.00, 'ok', '2024-08-23 06:17:42', NULL),
	(6, '2024-08-24', 'a3575', 9, 1, 'reg', 1200000.00, 'ok', '2024-08-24 06:17:42', NULL),
	(7, '2024-08-24', 'b5555', 9, 1, 'reg', NULL, 'pen', '2024-08-24 06:21:10', NULL),
	(8, '2024-08-24', 'w2222', 9, 1, 'reg', NULL, 'ver', '2024-08-24 06:31:03', NULL);
/*!40000 ALTER TABLE `stacks_audit` ENABLE KEYS */;

-- Volcando estructura para vista stacksdb.vista_ayer
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vista_ayer` (
	`sala_id` INT(11) NULL,
	`SUM(valor)` DOUBLE(19,2) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista stacksdb.vista_ayer
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vista_ayer`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vista_ayer` AS SELECT sa.sala_id
		,SUM(valor)
	FROM stacks_audit sa
	WHERE sa.fecha = CURDATE() - INTERVAL 1 DAY ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
