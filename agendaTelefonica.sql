-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.36-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para agendatelefonica
CREATE DATABASE IF NOT EXISTS `agendatelefonica` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agendatelefonica`;

-- Volcando estructura para tabla agendatelefonica.agendas
CREATE TABLE IF NOT EXISTS `agendas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posicion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.agendas: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `agendas` DISABLE KEYS */;
INSERT INTO `agendas` (`id`, `nombre`, `apellidos`, `telefono`, `celular`, `sexo`, `email`, `posicion`, `departamento`, `salario`, `fecha_de_nacimiento`, `created_at`, `updated_at`) VALUES
	(1, 'Keren', 'Medina', '987456321', '654898123', 'Femenino', 'keren@correo.com', 'Gerente', 'Gerencia de TI', 4000.00, '1997-02-24', '2020-03-31 08:44:20', '2020-03-31 08:44:20'),
	(2, 'Mario', 'Vazquez', '963852741', '698745123', 'Masculino', 'mario@correo.com', 'ads', 'Auditoria TI', 1230.00, '2020-03-04', '2020-03-31 08:52:27', '2020-03-31 11:23:50'),
	(4, 'Marta', 'Lopez', '789654123', '654123987', 'Femenino', 'marta@correo.com', 'ddas', 'Gerencia de TI', 2540.00, '1984-05-12', '2020-03-31 08:56:43', '2020-03-31 08:56:43'),
	(5, 'Antonio', 'Miralles', '985632147', '657412389', 'Masculino', 'antonio@correo.com', 'gasdf', 'Auditoria TI', 6540.00, '1988-12-04', '2020-03-31 08:58:04', '2020-03-31 08:58:04'),
	(6, 'Daniel', 'Valiente', '985471236', '6587412398', 'Masculino', 'daniel@correo.com', 'agrqwe', 'Gerencia de TI', 1450.00, '1995-03-04', '2020-03-31 08:58:55', '2020-03-31 08:58:55'),
	(7, 'Sandra', 'Ruiz', '986357421', '685937421', 'Femenino', 'sandra@correo.com', 'rewerf', 'Gerencia de TI', 1254.00, '1990-05-31', '2020-03-31 08:59:58', '2020-03-31 08:59:58'),
	(8, 'Ernesto', 'Navarro', '985674231', '654789987', 'Masculino', 'ernesto@correo.com', 'diroqp', 'Contabilidad', 3104.00, '1988-09-26', '2020-03-31 09:01:28', '2020-03-31 09:01:28'),
	(9, 'Jesus', 'Perez', '963852741', '639852147', 'Masculino', 'jesus@correo.com', 'oiuyg', 'Auditoria TI', 3214.00, '1994-07-19', '2020-03-31 09:02:35', '2020-03-31 09:02:35'),
	(10, 'Jose', 'Sanchez', '987321456', '632589742', 'Masculino', 'jose@correo.com', 'sdf', 'Gerencia de TI', 1235.00, '1992-05-14', '2020-03-31 09:03:34', '2020-03-31 09:03:34'),
	(11, 'Raquel', 'Garcia', '987456321', '658741239', 'Femenino', 'raquel@correo.com', 'adfasf', 'Contabilidad', 985.00, '1997-08-04', '2020-03-31 09:04:30', '2020-03-31 09:04:30'),
	(12, 'Maria', 'Redondo', '985471236', '685214937', 'Femenino', 'maria@correo.com', 'afgad', 'Auditoria TI', 1240.00, '1988-08-19', '2020-03-31 09:06:07', '2020-03-31 09:06:07'),
	(13, 'Ana', 'Carrasco', '987321456', '687459321', 'Femenino', 'ana@correo.com', 'dfg', 'Auditoria TI', 2140.00, '1985-11-23', '2020-03-31 09:07:10', '2020-03-31 09:07:10'),
	(14, 'Gabriel', 'Anton', '987546213', '658748912', 'Masculino', 'gabriel@correo.com', 'afga', 'Contabilidad', 3210.00, '1986-05-14', '2020-03-31 09:08:32', '2020-03-31 09:08:32'),
	(15, 'Juan', 'Martinez', '987456321', '658974123', 'Masculino', 'juan@correo.com', 'adsjf', 'Gerencia de TI', 2103.00, '1996-08-17', '2020-03-31 09:09:42', '2020-03-31 09:09:42');
/*!40000 ALTER TABLE `agendas` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2014_10_12_000000_create_users_table', 1),
	(6, '2014_10_12_100000_create_password_resets_table', 1),
	(7, '2019_08_19_000000_create_failed_jobs_table', 1),
	(8, '2020_03_30_090628_create_agendas_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Keren', 'kerenmedinacoasta@gmail.com', NULL, '$2y$10$9w1KYe6YIoc0TQmIfAlkkeDtYmbcqnZ5byjdYuyeHM1jmm62Ag3a2', NULL, '2020-03-31 14:21:17', '2020-03-31 14:21:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
