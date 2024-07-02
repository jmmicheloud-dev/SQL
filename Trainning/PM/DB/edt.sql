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

-- Volcando estructura para tabla pm2.edt
CREATE TABLE IF NOT EXISTS `edt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gestion` int(11) DEFAULT NULL,
  `tema` varchar(50) DEFAULT NULL,
  `detalle` varchar(250) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  UNIQUE KEY `codigo` (`codigo`),
  KEY `Índice 1` (`id`) USING BTREE,
  KEY `FK_EDT_Gestion` (`gestion`) USING BTREE,
  CONSTRAINT `FK_edt_gestion` FOREIGN KEY (`gestion`) REFERENCES `gestion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla pm2.edt: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `edt` DISABLE KEYS */;
REPLACE INTO `edt` (`id`, `gestion`, `tema`, `detalle`, `codigo`) VALUES
	(5, 1, 'CRM', '', '1.5'),
	(6, 1, 'Mobbex', '', '1.15'),
	(7, 1, 'Molinetes', '', '1.16'),
	(10, 2, 'Estadisticas liquidacion', '', '2.1'),
	(11, 3, 'Usuario Duplicado', '', '3.1'),
	(12, 4, 'APk', '', '4.1'),
	(13, 5, 'UI / UX', '', '5.1'),
	(14, 8, 'Valle Escondido', '', '8.1'),
	(15, 8, 'San Carlos', '', '8.2'),
	(16, 8, 'Warcalde', '', '8.3'),
	(17, 8, 'Chacabuco', '', '8.4'),
	(18, 9, 'Liquidaciones', '', '9.1'),
	(19, 9, 'Mobex', '', '9.2'),
	(20, 5, 'Estilos de Marca', '', '5.3'),
	(21, 5, 'Estilos QR Molinetes', '', '5.4'),
	(10, 2, 'NPS', '', '2.5'),
	(22, 3, 'Problemas de usuarios', '', '3.4'),
	(24, 2, 'Encuestas', '', '2.4'),
	(25, 1, 'Convenios', '', '1.17'),
	(26, 4, 'Beneficios', '', '4.2');
/*!40000 ALTER TABLE `edt` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
