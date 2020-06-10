


-- Volcando estructura de base de datos para Spotify
CREATE DATABASE IF NOT EXISTS `Spotify` /*!40100 DEFAULT CHARACTER SET utf8mb4  */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Spotify`;

-- Volcando estructura para tabla Spotify.Administrador
CREATE TABLE IF NOT EXISTS `Administrador` (
  `Id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Apellido` varchar(50) NOT NULL DEFAULT '',
  `Contraseña` varchar(50) NOT NULL DEFAULT '',
  `Correo` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Administrador: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `Administrador` DISABLE KEYS */;

/*!40000 ALTER TABLE `Administrador` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Album
CREATE TABLE IF NOT EXISTS `Album` (
  `Id` int NOT NULL,
  `Titulo` varchar(50) NOT NULL DEFAULT '',
  `Año` varchar(50) NOT NULL DEFAULT '',
  `Fecha_Lanzamiento` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
  `Interprete` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Album: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;

/*!40000 ALTER TABLE `Album` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Artista
CREATE TABLE IF NOT EXISTS `Artista` (
  `Id` int NOT NULL,
  `Nombre_Artista` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
  `Apellido` varchar(50) NOT NULL DEFAULT '',
  `Fecha_Nacimiento` varchar(50) NOT NULL DEFAULT '',
  `N°_Disco` int NOT NULL DEFAULT '0',
  `N°_Canciones` int NOT NULL DEFAULT '0',
  `Id_disco` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Artista_Disco` (`Id_disco`),
  CONSTRAINT `FK_Artista_Disco` FOREIGN KEY (`Id_disco`) REFERENCES `Disco` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Artista: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;

/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Canciones
CREATE TABLE IF NOT EXISTS `Canciones` (
  `Id` int NOT NULL,
  `Nombre_cancion` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Canciones: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Canciones` DISABLE KEYS */;

/*!40000 ALTER TABLE `Canciones` ENABLE KEYS */;



-- Volcando estructura para tabla Spotify.Canciones_Favoritas
CREATE TABLE IF NOT EXISTS `Canciones_Favoritas` (
  `Id` int NOT NULL,
  `Artista` varchar(50) NOT NULL DEFAULT '',
  `Id_Canciones` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Canciones_Favoritas_Canciones` (`Id_Canciones`),
  CONSTRAINT `FK_Canciones_Favoritas_Canciones` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Canciones_Favoritas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Canciones_Favoritas` DISABLE KEYS */;

/*!40000 ALTER TABLE `Canciones_Favoritas` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Disco
CREATE TABLE IF NOT EXISTS `Disco` (
  `Id` int NOT NULL,
  `Nombre_Disco` varchar(50) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
  `Año` varchar(50) NOT NULL DEFAULT '',
  `Id_Canciones` int NOT NULL DEFAULT '0',
  `Id_Artistas` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_Disco_Canciones` (`Id_Canciones`),
  KEY `FK_Disco_Artista` (`Id_Artistas`),
  CONSTRAINT `FK_Disco_Artista` FOREIGN KEY (`Id_Artistas`) REFERENCES `Artista` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Disco_Canciones` FOREIGN KEY (`Id_Canciones`) REFERENCES `Canciones` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Disco: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Disco` DISABLE KEYS */;

/*!40000 ALTER TABLE `Disco` ENABLE KEYS */;

-

-- Volcando estructura para tabla Spotify.Genero
CREATE TABLE IF NOT EXISTS `Genero` (
  `Id` int NOT NULL,
  `Tipo_Genero` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Genero: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `Genero` DISABLE KEYS */;

/*!40000 ALTER TABLE `Genero` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Pago
CREATE TABLE IF NOT EXISTS `Pago` (
  `Id` int NOT NULL,
  `Tipo_pago` varchar(50) NOT NULL DEFAULT '',
  `Id_usuarioPremiun` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Pago: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `Pago` DISABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Plays_List: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `Plays_List` DISABLE KEYS */;

/*!40000 ALTER TABLE `Plays_List` ENABLE KEYS */;

-- Volcando estructura para tabla Spotify.Registro
CREATE TABLE IF NOT EXISTS `Registro` (
  `Id` int NOT NULL,
  `fechaingreso` date NOT NULL,
  `Cantidad_registro` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Registro: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `Registro` DISABLE KEYS */;

/*!40000 ALTER TABLE `Registro` ENABLE KEYS */;



-- Volcando estructura para tabla Spotify.Sugerencias_Canciones
CREATE TABLE IF NOT EXISTS `Sugerencias_Canciones` (
  `Id` int NOT NULL,
  `PlaysList` varchar(50) NOT NULL DEFAULT '',
  `IdCancion` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Sugerencias_Canciones: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `Sugerencias_Canciones` DISABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.Usuario: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

-- Volcando datos para la tabla Spotify.UsuarioPremiun: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `UsuarioPremiun` DISABLE KEYS */;

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
