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

-- Volcando estructura para tabla Spotify.Administrador
CREATE TABLE IF NOT EXISTS `Administrador` (
  `Id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Apellido` varchar(50) NOT NULL DEFAULT '',
  `Contraseña` varchar(50) NOT NULL DEFAULT '',
  `Correo` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Administrador: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `Administrador` DISABLE KEYS */;
INSERT INTO `Administrador` (`Id`, `Nombre`, `Apellido`, `Contraseña`, `Correo`) VALUES
	(1, 'Luis', 'Manzaba', '123456', 'luisplacio30@gmail.com');
/*!40000 ALTER TABLE `Administrador` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Album
CREATE TABLE IF NOT EXISTS `Album` (
  `Id` int NOT NULL,
  `Titulo` varchar(50) NOT NULL DEFAULT '',
  `Año` varchar(50) NOT NULL DEFAULT '',
  `Fecha_Lanzamiento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `Interprete` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Album: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` (`Id`, `Titulo`, `Año`, `Fecha_Lanzamiento`, `Interprete`) VALUES
	(1, 'El triste', '1998', '02/02/1998', 'Jose Jose'),
	(2, 'El Neegreto', '2019', '02/12/2019', 'Akon'),
	(3, 'Piragua', '1998', '02/12/1998', 'Carlos Vives'),
	(4, 'Thriller', '1982', '28/08/1982', 'Michael Jackson'),
	(5, 'Back to Black', '2006', '04/10/2006', 'Amy Winehouse'),
	(6, 'Vibras', '2018', '04/10/2018', 'J Balvin'),
	(7, 'A la Mar', '2016', '04/05/2016', 'Vicente García'),
	(8, 'Hasta la Raíz', '2015', '14/05/2015', 'Natalia Lafourcade'),
	(9, 'El Mal Querer', '2018', '14/05/2018', 'Rosalía'),
	(10, 'Colores', '2020', '19/03/2020', 'J Balbin');
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Artista
CREATE TABLE IF NOT EXISTS `Artista` (
  `Id` int NOT NULL,
  `Nombre_Artista` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `Apellido` varchar(50) NOT NULL DEFAULT '',
  `Fecha_Nacimiento` varchar(50) NOT NULL DEFAULT '',
  `N°_Disco` int NOT NULL DEFAULT '0',
  `N°_Canciones` int NOT NULL DEFAULT '0',
  `Id_disco` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Artista_Disco` (`Id_disco`),
  CONSTRAINT `FK_Artista_Disco` FOREIGN KEY (`Id_disco`) REFERENCES `Disco` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Artista: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` (`Id`, `Nombre_Artista`, `Apellido`, `Fecha_Nacimiento`, `N°_Disco`, `N°_Canciones`, `Id_disco`) VALUES
	(1, 'Carlos', 'Vives', '7/08/1961', 25, 47, 1),
	(2, 'Jose', 'Jose', '17/02/1948', 38, 80, 2),
	(3, 'J', 'Balbin', '7/05/1985 ', 5, 74, 3),
	(4, 'Juan Luis', 'Londoño Arias', '28/01/1994', 4, 23, 4),
	(5, 'Juan Carloso', 'Ozuna Rosad', '13/03/1992', 2, 52, 5);
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Canciones
CREATE TABLE IF NOT EXISTS `Canciones` (
  `Id` int NOT NULL,
  `Nombre_cancion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `Artista` varchar(50) NOT NULL DEFAULT '',
  `Año` varchar(50) NOT NULL DEFAULT '',
  `Disco` varchar(50) NOT NULL DEFAULT '',
  `IdDisco` int NOT NULL DEFAULT '0',
  `IdGenero` int NOT NULL DEFAULT '0',
  `IdArtista` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Canciones_Disco` (`IdDisco`),
  KEY `FK_Canciones_Genero` (`IdGenero`),
  KEY `FK_Canciones_Artista` (`IdArtista`),
  CONSTRAINT `FK_Canciones_Artista` FOREIGN KEY (`IdArtista`) REFERENCES `Artista` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Canciones_Disco` FOREIGN KEY (`IdDisco`) REFERENCES `Disco` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Canciones_Genero` FOREIGN KEY (`IdGenero`) REFERENCES `Genero` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Canciones: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Canciones` DISABLE KEYS */;
INSERT INTO `Canciones` (`Id`, `Nombre_cancion`, `Artista`, `Año`, `Disco`, `IdDisco`, `IdGenero`, `IdArtista`) VALUES
	(1, 'Tierra del Olvido', 'Carlos Vives', '1998', 'Carito', 1, 1, 1),
	(2, 'El triste', 'Jose Jose', '1998', 'El triste', 2, 2, 2),
	(3, 'Amar y Querer', 'Jose Jose', '1977', 'El triste', 3, 3, 3),
	(4, 'ADMV', 'MALUMA', '2020', 'ADMV', 4, 4, 4),
	(5, 'morado', 'J balvin', '2020', 'Colores', 5, 5, 5);
/*!40000 ALTER TABLE `Canciones` ENABLE KEYS */;

-- Volcando estructura para vista Spotify.canciones_escuchadas
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `canciones_escuchadas` (
	`Nombre_cancion` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Titulo` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Nombre_Artista` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Cantidad_Reproducidas` INT(10,0) NULL
) ENGINE=MyISAM;

-- Volcando estructura para tabla Spotify.Canciones_Favoritas
CREATE TABLE IF NOT EXISTS `Canciones_Favoritas` (
  `Id` int NOT NULL,
  `Artista` varchar(50) NOT NULL DEFAULT '',
  `Id_Canciones` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Canciones_Favoritas_Canciones` (`Id_Canciones`),
  CONSTRAINT `FK_Canciones_Favoritas_Canciones` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Canciones_Favoritas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Canciones_Favoritas` DISABLE KEYS */;
INSERT INTO `Canciones_Favoritas` (`Id`, `Artista`, `Id_Canciones`) VALUES
	(1, 'Carlos Vives', 1);
/*!40000 ALTER TABLE `Canciones_Favoritas` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Disco
CREATE TABLE IF NOT EXISTS `Disco` (
  `Id` int NOT NULL,
  `Nombre_Disco` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `Año` varchar(50) NOT NULL DEFAULT '',
  `Id_Canciones` int NOT NULL DEFAULT '0',
  `Id_Artistas` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Disco_Canciones` (`Id_Canciones`),
  KEY `FK_Disco_Artista` (`Id_Artistas`),
  CONSTRAINT `FK_Disco_Artista` FOREIGN KEY (`Id_Artistas`) REFERENCES `Artista` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Disco_Canciones` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Disco: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Disco` DISABLE KEYS */;
INSERT INTO `Disco` (`Id`, `Nombre_Disco`, `Año`, `Id_Canciones`, `Id_Artistas`) VALUES
	(1, 'Carito', '2000', 1, 1),
	(2, 'La nave del olvido', '1977', 2, 2),
	(3, 'Como ama una mujer', '2007', 3, 3),
	(4, 'Im Glad', '2003', 4, 4),
	(5, 'odisea', '2019', 5, 5);
/*!40000 ALTER TABLE `Disco` ENABLE KEYS */;

-- Volcando estructura para vista Spotify.Discografia
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `Discografia` (
	`Nombre_Disco` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Tipo_Genero` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Nombre_Artista` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Volcando estructura para tabla Spotify.Genero
CREATE TABLE IF NOT EXISTS `Genero` (
  `Id` int NOT NULL,
  `Tipo_Genero` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Genero: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `Genero` DISABLE KEYS */;
INSERT INTO `Genero` (`Id`, `Tipo_Genero`) VALUES
	(1, 'Pop'),
	(2, 'Regue'),
	(3, 'Regueton'),
	(4, 'Salsa'),
	(5, 'Balada'),
	(6, 'Balada del recuerdo'),
	(7, 'Rancheras'),
	(8, 'Bachatas'),
	(9, 'Corridos'),
	(10, 'Clasicas'),
	(11, 'Cumbias'),
	(12, 'Boleros'),
	(13, 'Jazz'),
	(14, 'Electronica'),
	(15, 'Techno Cumbia'),
	(16, 'Folcklorica'),
	(17, 'Electro'),
	(18, 'Rock'),
	(19, 'Pasillo'),
	(20, 'Cultural');
/*!40000 ALTER TABLE `Genero` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Pago
CREATE TABLE IF NOT EXISTS `Pago` (
  `Id` int NOT NULL,
  `Tipo_pago` varchar(50) NOT NULL DEFAULT '',
  `Id_usuarioPremiun` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Pago: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;
INSERT INTO `Pago` (`Id`, `Tipo_pago`, `Id_usuarioPremiun`) VALUES
	(1, 'Efectivo', 1),
	(2, 'Transferencia', 2),
	(3, 'Pay-Pal', 3);
/*!40000 ALTER TABLE `Pago` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Plays_List
CREATE TABLE IF NOT EXISTS `Plays_List` (
  `Id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Album` varchar(50) NOT NULL DEFAULT '',
  `Artista` varchar(50) NOT NULL DEFAULT '',
  `Fecha_Creacion` varchar(50) NOT NULL DEFAULT '',
  `Cantidad_Reproducidas` int DEFAULT NULL,
  `IdCancion` int NOT NULL DEFAULT '0',
  `IdUsuario` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Plays_List: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `Plays_List` DISABLE KEYS */;
INSERT INTO `Plays_List` (`Id`, `Nombre`, `Album`, `Artista`, `Fecha_Creacion`, `Cantidad_Reproducidas`, `IdCancion`, `IdUsuario`) VALUES
	(1, 'Carito', 'Carito', 'Carlos Vives', '02/02/1999', 2, 1, 1),
	(2, 'Piragua', 'Gota Fria', 'Carlos Vives', '15/12/2020', 2, 2, 2),
	(3, 'El triste', 'Principe', 'Jose Jose', '01/05/2020', 2, 3, 3),
	(4, 'Morado', 'Colores', 'J Balvin', '22/05/2020', 2, 4, 4),
	(5, 'ADMV', 'ADMV', 'J Balvin', '22/05/2020', 5, 5, 5),
	(6, 'Tierra del Olvido', 'Piragua', 'Carlos Vives', '30/05/2020', 1, 6, 6);
/*!40000 ALTER TABLE `Plays_List` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Registro
CREATE TABLE IF NOT EXISTS `Registro` (
  `Id` int NOT NULL,
  `fechaingreso` date NOT NULL,
  `Cantidad_registro` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Registro: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `Registro` DISABLE KEYS */;
INSERT INTO `Registro` (`Id`, `fechaingreso`, `Cantidad_registro`) VALUES
	(1, '2020-05-01', 1),
	(2, '2020-08-01', 2),
	(3, '2020-07-08', 3),
	(4, '2020-03-08', 4),
	(5, '2020-04-08', 5);
/*!40000 ALTER TABLE `Registro` ENABLE KEYS */;

-- Volcando estructura para vista Spotify.reporte_usuarios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `reporte_usuarios` (
	`fechaingreso` DATE NOT NULL,
	`Nombre` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`Cantidad_registro` INT(10,0) NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para tabla Spotify.Sugerencias_Canciones
CREATE TABLE IF NOT EXISTS `Sugerencias_Canciones` (
  `Id` int NOT NULL,
  `PlaysList` varchar(50) NOT NULL DEFAULT '',
  `IdCancion` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Sugerencias_Canciones: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `Sugerencias_Canciones` DISABLE KEYS */;
INSERT INTO `Sugerencias_Canciones` (`Id`, `PlaysList`, `IdCancion`) VALUES
	(1, 'Piragua', 1),
	(2, 'Pena', 2);
/*!40000 ALTER TABLE `Sugerencias_Canciones` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Usuario
CREATE TABLE IF NOT EXISTS `Usuario` (
  `Id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Apellido` varchar(50) NOT NULL DEFAULT '',
  `Correo` varchar(50) NOT NULL DEFAULT '',
  `Contraseña` varchar(50) NOT NULL DEFAULT '',
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.Usuario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` (`Id`, `Nombre`, `Apellido`, `Correo`, `Contraseña`, `fecha_ingreso`) VALUES
	(1, 'Jhonny', 'Guevara', 'jhonbolivar25@gmail.com', '123456', '2020-06-01'),
	(2, 'Luis', 'Manzaba', 'luisplacio@gmail.com', '564789', '2020-08-01'),
	(3, 'Julio', 'Garcia', 'ljulio@gmail.com', '124587', '2020-07-01'),
	(4, 'Andres', 'Garcia', 'garcia@gmail.com', '546122', '2020-06-01');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.UsuarioPremiun
CREATE TABLE IF NOT EXISTS `UsuarioPremiun` (
  `Id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Correo` varchar(50) NOT NULL DEFAULT '',
  `Contraseña` varchar(50) NOT NULL DEFAULT '',
  `Tipo_Pago` varchar(50) NOT NULL DEFAULT '',
  `Sexo` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla Spotify.UsuarioPremiun: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `UsuarioPremiun` DISABLE KEYS */;
INSERT INTO `UsuarioPremiun` (`Id`, `Nombre`, `Correo`, `Contraseña`, `Tipo_Pago`, `Sexo`) VALUES
	(1, 'Julio', 'ljulio@gmail.com', '124587', 'efectivo', 'masculino'),
	(2, 'Luis', 'luisplacio@gmail.com', '547896', 'efectivo', 'masculino');
/*!40000 ALTER TABLE `UsuarioPremiun` ENABLE KEYS */;

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
