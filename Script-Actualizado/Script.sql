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

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla Spotify.Album
CREATE TABLE IF NOT EXISTS `Album` (
  `Id` int NOT NULL,
  `Titulo` varchar(50) NOT NULL DEFAULT '',
  `Año` varchar(50) NOT NULL DEFAULT '',
  `Fecha_Lanzamiento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `Interprete` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla Spotify.Canciones_Favoritas
CREATE TABLE IF NOT EXISTS `Canciones_Favoritas` (
  `Id` int NOT NULL,
  `Artista` varchar(50) NOT NULL DEFAULT '',
  `Id_Canciones` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Canciones_Favoritas_Canciones` (`Id_Canciones`),
  CONSTRAINT `FK_Canciones_Favoritas_Canciones` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla Spotify.Genero
CREATE TABLE IF NOT EXISTS `Genero` (
  `Id` int NOT NULL,
  `Tipo_Genero` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla Spotify.Pago
CREATE TABLE IF NOT EXISTS `Pago` (
  `Id` int NOT NULL,
  `Tipo_pago` varchar(50) NOT NULL DEFAULT '',
  `Id_usuarioPremiun` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla Spotify.Registro
CREATE TABLE IF NOT EXISTS `Registro` (
  `Id` int NOT NULL,
  `fechaingreso` date NOT NULL,
  `Cantidad_registro` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla Spotify.Sugerencias_Canciones
CREATE TABLE IF NOT EXISTS `Sugerencias_Canciones` (
  `Id` int NOT NULL,
  `PlaysList` varchar(50) NOT NULL DEFAULT '',
  `IdCancion` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

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

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
