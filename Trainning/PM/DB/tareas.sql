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

-- Volcando estructura para tabla pm2.tareas
CREATE TABLE IF NOT EXISTS `tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gestion_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `codigo_edt` varchar(50) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `FK_tareas_estados` (`estado_id`) USING BTREE,
  KEY `FK_tareas_users` (`user_id`) USING BTREE,
  KEY `FK_tareas_edt` (`codigo_edt`) USING BTREE,
  KEY `FK_tareas_gestion` (`gestion_id`) USING BTREE,
  CONSTRAINT `FK_tareas_edt` FOREIGN KEY (`codigo_edt`) REFERENCES `edt` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareas_estados` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareas_gestion` FOREIGN KEY (`gestion_id`) REFERENCES `gestion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tareas_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla pm2.tareas: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
REPLACE INTO `tareas` (`id`, `gestion_id`, `estado_id`, `user_id`, `codigo_edt`, `descripcion`) VALUES
	(1, 8, 4, 12, '8.2', 'PC en box'),
	(2, 8, 4, 3, '8.2', 'Aceso remoto - Instalacion anydesk'),
	(3, 8, 4, 3, '8.2', 'Instalar codigo en la pc'),
	(4, 8, 4, 3, '8.2', 'Configurar servicio local '),
	(5, 8, 4, 12, '8.1', 'PC en box'),
	(6, 8, 4, 3, '8.1', 'Aceso remoto - Instalacion anydesk'),
	(7, 8, 4, 3, '8.1', 'Instalar codigo en la pc'),
	(8, 8, 4, 12, '8.3', 'PC en box'),
	(9, 8, 4, 3, '8.1', 'Falla electronica o alimentacion'),
	(10, 8, 4, 3, '8.2', 'Falla electronica o alimentacion'),
	(11, 8, 4, 3, '8.3', 'Configurar servicio local '),
	(12, 8, 4, 12, '8.2', 'PC en box'),
	(13, 8, 4, 5, '8.3', 'Falla electronica o alimentacion'),
	(14, 8, 4, 12, '8.4', 'PC en box'),
	(15, 8, 4, 3, '8.2', 'Configurar servicio local '),
	(16, 8, 4, 3, '8.3', 'Falla electronica o alimentacion'),
	(17, 8, 4, 3, '8.2', 'Configurar servicio local '),
	(18, 8, 4, 5, '8.4', 'PC en box -usb a com'),
	(19, 8, 4, 3, '8.4', 'Instalar codigo en la pc'),
	(20, 8, 4, 3, '8.4', 'Configurar servicio local '),
	(21, 8, 4, 3, '3.1', 'Gestion de usuarios duplicados'),
	(22, 8, 4, 3, '3.1', 'Gestion de usuarios duplicados'),
	(23, 8, 4, 3, '3.1', 'Gestion de usuarios duplicados'),
	(24, 2, 4, 3, '2.1', 'v_liquidacion_3'),
	(25, 2, 4, 2, '2.4', 'Encuestas en app'),
	(26, 4, 4, 2, '4.2', 'Actualizacion necesaria en IOS y Android APK'),
	(27, 4, 4, 2, '4.1', 'Disponible en Sotre Android y IOS app 3.3.2'),
	(28, 4, 4, 2, '4.1', 'Disponible en Sotre Android y IOS app 3.3.3'),
	(29, 4, 4, 2, '4.1', 'Disponible en Sotre Android y IOS app 3.3.5'),
	(30, 2, 1, 2, '2.5', 'Encuestas NPS'),
	(31, 2, 4, 3, '2.4', 'Encuestas en app testeo interno');
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
