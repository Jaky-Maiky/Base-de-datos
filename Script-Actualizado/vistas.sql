-- --------------------------------------------------------
-- Host:                         69.55.49.65
-- Versión del servidor:         8.0.20 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para Spotify
CREATE DATABASE IF NOT EXISTS `Spotify` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Spotify`;

-- Volcando estructura para vista Spotify.canciones_escuchadas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `canciones_escuchadas` (
	`Nombre_cancion` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Titulo` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Nombre_Artista` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Cantidad_Reproducidas` INT(10,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista Spotify.Discografia
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `Discografia` (
	`Nombre_Disco` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Tipo_Genero` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Nombre_Artista` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Volcando estructura para vista Spotify.reporte_usuarios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `reporte_usuarios` (
	`fechaingreso` DATE NOT NULL,
	`Nombre` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Cantidad_registro` INT(10,0) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista Spotify.canciones_escuchadas
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `canciones_escuchadas`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `canciones_escuchadas` AS select `Canciones`.`Nombre_cancion` AS `Nombre_cancion`,`Album`.`Titulo` AS `Titulo`,`Artista`.`Nombre_Artista` AS `Nombre_Artista`,`Plays_List`.`Cantidad_Reproducidas` AS `Cantidad_Reproducidas` from (((`Canciones` join `Album`) join `Artista`) join `Plays_List`) where ((`Canciones`.`Id` = `Album`.`Id`) and (`Canciones`.`Id` = `Artista`.`Id`) and (`Album`.`Id` = `Plays_List`.`Id`)) order by `Plays_List`.`Cantidad_Reproducidas` desc;

-- Volcando estructura para vista Spotify.Discografia
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `Discografia`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `Discografia` AS select `Disco`.`Nombre_Disco` AS `Nombre_Disco`,`Genero`.`Tipo_Genero` AS `Tipo_Genero`,`Artista`.`Nombre_Artista` AS `Nombre_Artista` from ((`Disco` join `Genero`) join `Artista`) where ((`Disco`.`Id` = `Genero`.`Id`) and (`Disco`.`Id` = `Artista`.`Id`)) order by `Artista`.`Nombre_Artista` desc;

-- Volcando estructura para vista Spotify.reporte_usuarios
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `reporte_usuarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `reporte_usuarios` AS select `Registro`.`fechaingreso` AS `fechaingreso`,`Usuario`.`Nombre` AS `Nombre`,`Registro`.`Cantidad_registro` AS `Cantidad_registro` from (`Registro` join `Usuario`) where (`Registro`.`Id` = `Usuario`.`Id`) order by `Registro`.`Cantidad_registro` desc;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
