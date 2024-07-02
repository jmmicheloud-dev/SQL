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

-- Volcando estructura para tabla pm2.estados
CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `detalle` varchar(150) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla pm2.estados: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
REPLACE INTO `estados` (`id`, `nombre`, `detalle`, `estado`) VALUES
	(0, 'a definir', 'a definir', 'activo'),
	(1, 'Espera', 'Tareas que están en espera de aprobación, recursos o información adicional.', 'activo'),
	(2, 'Proceso', 'La tarea está en marcha.', 'activo'),
	(3, 'Pausado', 'Indica que la tarea está en pausa debido a factores externos o cambios en los requerimientos o recursos.', 'activo'),
	(4, 'Completado', 'Indica que la tarea se ha finalizado.', 'activo'),
	(5, 'Cancelado', 'Tareas que se han detenido.', 'activo'),
	(6, 'Reprogramado', 'Una tarea que cambio por algún motivo.', 'activo'),
	(7, 'Vinculada', 'Esperando que otra tarea se complete antes de avanzar. ', 'activo'),
	(8, 'Validacion', 'Tareas que están en espera de aprobación o información adicional.', NULL);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
