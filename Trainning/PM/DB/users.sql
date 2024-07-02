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

-- Volcando estructura para tabla pm2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `area` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `Índice 1` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla pm2.users: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `first_name`, `last_name`, `area`, `email`, `birth_date`, `created_at`, `updated_at`) VALUES
	(14, 'por asignar', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 'Marco', 'Grdin', 'Briskbox CEO', 'marco@briskbox.fit', NULL, NULL, NULL),
	(2, 'Maxi', 'Marelli', 'Desarrollo', 'maximiliano.marelli@gmail.com', NULL, NULL, NULL),
	(3, 'Juan Manuel', 'Micheloud', 'PM Briskbox', 'jmmicheloud@gmail.com', NULL, NULL, NULL),
	(4, 'Franco', 'Ferrero', 'Briskbox', NULL, NULL, NULL, NULL),
	(5, 'David', 'Redes', 'Redes', NULL, NULL, NULL, NULL),
	(6, 'Jose ', 'Garcia', 'Butaca11', NULL, NULL, NULL, NULL),
	(7, 'Valentina ', 'Fedullo', 'Butaca11', NULL, NULL, NULL, NULL),
	(8, 'Gaston', 'Mattio', 'Briskbox', 'gastonmattio@gmail.com', NULL, NULL, NULL),
	(9, 'Gaston', 'Mattio', 'Butaca11', NULL, NULL, NULL, NULL),
	(10, 'Camila', 'Martin', 'Butaca11', 'camumartin1996@gmail.com', NULL, NULL, NULL),
	(11, 'Sol', 'Avila', 'PM Butaca11', 'pm2@butacaonce.com;sol@cuestasbranding.com', NULL, NULL, NULL),
	(12, 'Eugenio', NULL, 'Mantenimiento Briskbox', 'mantenimiento@briskbox.fit', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
