-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2021 a las 01:18:13
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formularios`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar_en` (IN `tabla` VARCHAR(255), IN `campo` VARCHAR(255), IN `valor` VARCHAR(255))  BEGIN
    SET @espacio = " ";
    SET @consulta = CONCAT( "SELECT * FROM", @espacio, tabla, @espacio, "WHERE", @espacio, campo, @espacio, "=", @espacio, valor, ";" );
    
    PREPARE todo FROM @consulta;
    EXECUTE todo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hasta` (IN `limite` TINYINT)  BEGIN
    SET @i = 0;
    CREATE TEMPORARY TABLE resultados(
        i TINYINT
    );
    bucle1: WHILE @i < limite DO
        INSERT INTO resultados VALUES( @i );
        SET @i = @i + 1;
    END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_bolsa_de_trabajo` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255))  BEGIN
    INSERT INTO bolsa_de_trabajo VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_cotizar_ahora` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255))  BEGIN
    INSERT INTO cotizar_ahora VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_cotiza_ahora` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255))  BEGIN
    INSERT INTO cotiza_ahora VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_danos_tu_opinion` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255))  BEGIN
    INSERT INTO danos_tu_opinion VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_eventos_sociales` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255), IN `fecha_del_evento` DATE, IN `hora_de_inicio` TIME, IN `hora_de_fin` TIME)  BEGIN
    INSERT INTO eventos_sociales VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste, fecha_del_evento, hora_de_inicio, hora_de_fin );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_fiestas_corporativas` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255), IN `nombre_de_la_empresa` VARCHAR(255), IN `numero_de_asistentes` SMALLINT, IN `fecha_del_evento` DATE, IN `hora_de_inicio` TIME, IN `hora_de_fin` TIME)  BEGIN
    INSERT INTO fiestas_corporativas VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste, nombre_de_la_empresa, numero_de_asistentes, fecha_del_evento, hora_de_inicio, hora_de_fin );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_fiestas_para_adultos` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255), IN `nombre_del_festejado` VARCHAR(255), IN `edad_del_festejado` TINYINT, IN `numero_de_invitados` SMALLINT, IN `fecha_del_evento` DATE, IN `hora_de_inicio` TIME, IN `hora_de_fin` TIME)  BEGIN
    INSERT INTO fiestas_para_adultos VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste, nombre_del_festejado, edad_del_festejado, numero_de_invitados, fecha_del_evento, hora_de_inicio, hora_de_fin );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_en_fiestas_para_ninos` (IN `nombre` VARCHAR(255), IN `email` VARCHAR(255), IN `telefono` VARCHAR(255), IN `mensaje` VARCHAR(255), IN `como_te_enteraste` VARCHAR(255), IN `nombre_del_festejado` VARCHAR(255), IN `edad_del_festejado` TINYINT, IN `numero_de_invitados` SMALLINT, IN `fecha_del_evento` DATE, IN `hora_de_inicio` TIME, IN `hora_de_fin` TIME)  BEGIN
    INSERT INTO fiestas_para_ninos VALUES( null, CURRENT_DATE(), CURRENT_TIME(), nombre, email, telefono, mensaje, como_te_enteraste, nombre_del_festejado, edad_del_festejado, numero_de_invitados, fecha_del_evento, hora_de_inicio, hora_de_fin );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tab_resultados` ()  BEGIN

    CREATE TEMPORARY TABLE resultados
    SELECT * FROM bolsa_de_trabajo;

    SELECT * FROM resultados;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_bolsa_de_trabajo` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_cotiza_ahora` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_datos_tu_opinion` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_en` (IN `tabla` VARCHAR(255))  BEGIN
    SET @espacio = " ";
    SET @consulta = CONCAT( "SELECT * FROM", @espacio, tabla,";" );
    
    PREPARE todo FROM @consulta;
    EXECUTE todo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_eventos_sociales` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_fiestas_corporativas` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_fiestas_para_adultos` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `todo_fiestas_para_ninos` ()  BEGIN
    SELECT * FROM bolsa_de_trabajo;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsa_de_trabajo`
--

CREATE TABLE `bolsa_de_trabajo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bolsa_de_trabajo`
--

INSERT INTO `bolsa_de_trabajo` (`id`, `fecha`, `hora`, `nombre`, `email`, `telefono`, `mensaje`) VALUES
(1, '2021-04-05', '11:40:41', 'angel', 'wordpress@pixelsiete.com', '5555555555', 'jskñfldajklfdskjlfñfaksdjlñfakl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotiza_ahora`
--

CREATE TABLE `cotiza_ahora` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `como_te_enteraste` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cotiza_ahora`
--

INSERT INTO `cotiza_ahora` (`id`, `fecha`, `hora`, `nombre`, `email`, `telefono`, `mensaje`, `como_te_enteraste`) VALUES
(1, '2021-04-09', '17:57:06', 'prueba', 'angeldomp49@gmail.com', '55555', 'askflñjdfjkldsa', 'dsfads');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `danos_tu_opinion`
--

CREATE TABLE `danos_tu_opinion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `como_te_enteraste` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `danos_tu_opinion`
--

INSERT INTO `danos_tu_opinion` (`id`, `fecha`, `hora`, `nombre`, `email`, `telefono`, `mensaje`, `como_te_enteraste`) VALUES
(1, '2021-04-09', '17:58:30', 'tttt', 'angeldomp49@gmail.com', '53333', 'sfasfd', 'ewe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_sociales`
--

CREATE TABLE `eventos_sociales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `como_te_enteraste` varchar(255) DEFAULT NULL,
  `fecha_del_evento` date DEFAULT NULL,
  `hora_de_inicio` time DEFAULT NULL,
  `hora_de_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiestas_corporativas`
--

CREATE TABLE `fiestas_corporativas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `como_te_enteraste` varchar(255) DEFAULT NULL,
  `nombre_de_la_empresa` varchar(255) DEFAULT NULL,
  `numero_de_asistentes` smallint(6) DEFAULT NULL,
  `fecha_del_evento` date DEFAULT NULL,
  `hora_de_inicio` time DEFAULT NULL,
  `hora_de_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiestas_infantiles`
--

CREATE TABLE `fiestas_infantiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `como_te_enteraste` varchar(255) DEFAULT NULL,
  `nombre_del_festejado` varchar(255) DEFAULT NULL,
  `edad_del_festejado` tinyint(4) DEFAULT NULL,
  `numero_de_invitados` smallint(6) DEFAULT NULL,
  `fecha_del_evento` date DEFAULT NULL,
  `hora_de_inicio` time DEFAULT NULL,
  `hora_de_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiestas_para_adultos`
--

CREATE TABLE `fiestas_para_adultos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `como_te_enteraste` varchar(255) DEFAULT NULL,
  `nombre_del_festejado` varchar(255) DEFAULT NULL,
  `edad_del_festejado` tinyint(4) DEFAULT NULL,
  `numero_de_invitados` smallint(6) DEFAULT NULL,
  `fecha_del_evento` date DEFAULT NULL,
  `hora_de_inicio` time DEFAULT NULL,
  `hora_de_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_bolsa_de_trabajo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_bolsa_de_trabajo` (
`id` bigint(20) unsigned
,`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_cotiza_ahora`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_cotiza_ahora` (
`id` bigint(20) unsigned
,`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_datos_tu_opinion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_datos_tu_opinion` (
`id` bigint(20) unsigned
,`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_de_todas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_de_todas` (
`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` mediumtext
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_eventos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_eventos` (
`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` mediumtext
,`como_te_enteraste` varchar(255)
,`fecha_del_evento` date
,`hora_de_inicio` time
,`hora_de_fin` time
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_eventos_sociales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_eventos_sociales` (
`id` bigint(20) unsigned
,`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_fiestas_corporativas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_fiestas_corporativas` (
`id` bigint(20) unsigned
,`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `todo_fiestas_para_adultos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `todo_fiestas_para_adultos` (
`id` bigint(20) unsigned
,`fecha` date
,`hora` time
,`nombre` varchar(255)
,`email` varchar(255)
,`telefono` varchar(255)
,`mensaje` text
);

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_bolsa_de_trabajo`
--
DROP TABLE IF EXISTS `todo_bolsa_de_trabajo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_bolsa_de_trabajo`  AS SELECT `bolsa_de_trabajo`.`id` AS `id`, `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_cotiza_ahora`
--
DROP TABLE IF EXISTS `todo_cotiza_ahora`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_cotiza_ahora`  AS SELECT `bolsa_de_trabajo`.`id` AS `id`, `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_datos_tu_opinion`
--
DROP TABLE IF EXISTS `todo_datos_tu_opinion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_datos_tu_opinion`  AS SELECT `bolsa_de_trabajo`.`id` AS `id`, `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_de_todas`
--
DROP TABLE IF EXISTS `todo_de_todas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_de_todas`  AS SELECT `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_eventos`
--
DROP TABLE IF EXISTS `todo_eventos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_eventos`  AS SELECT `eventos_sociales`.`fecha` AS `fecha`, `eventos_sociales`.`hora` AS `hora`, `eventos_sociales`.`nombre` AS `nombre`, `eventos_sociales`.`email` AS `email`, `eventos_sociales`.`telefono` AS `telefono`, `eventos_sociales`.`mensaje` AS `mensaje`, `eventos_sociales`.`como_te_enteraste` AS `como_te_enteraste`, `eventos_sociales`.`fecha_del_evento` AS `fecha_del_evento`, `eventos_sociales`.`hora_de_inicio` AS `hora_de_inicio`, `eventos_sociales`.`hora_de_fin` AS `hora_de_fin` FROM `eventos_sociales` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_eventos_sociales`
--
DROP TABLE IF EXISTS `todo_eventos_sociales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_eventos_sociales`  AS SELECT `bolsa_de_trabajo`.`id` AS `id`, `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_fiestas_corporativas`
--
DROP TABLE IF EXISTS `todo_fiestas_corporativas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_fiestas_corporativas`  AS SELECT `bolsa_de_trabajo`.`id` AS `id`, `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `todo_fiestas_para_adultos`
--
DROP TABLE IF EXISTS `todo_fiestas_para_adultos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_fiestas_para_adultos`  AS SELECT `bolsa_de_trabajo`.`id` AS `id`, `bolsa_de_trabajo`.`fecha` AS `fecha`, `bolsa_de_trabajo`.`hora` AS `hora`, `bolsa_de_trabajo`.`nombre` AS `nombre`, `bolsa_de_trabajo`.`email` AS `email`, `bolsa_de_trabajo`.`telefono` AS `telefono`, `bolsa_de_trabajo`.`mensaje` AS `mensaje` FROM `bolsa_de_trabajo` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bolsa_de_trabajo`
--
ALTER TABLE `bolsa_de_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cotiza_ahora`
--
ALTER TABLE `cotiza_ahora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `danos_tu_opinion`
--
ALTER TABLE `danos_tu_opinion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos_sociales`
--
ALTER TABLE `eventos_sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fiestas_corporativas`
--
ALTER TABLE `fiestas_corporativas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fiestas_infantiles`
--
ALTER TABLE `fiestas_infantiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fiestas_para_adultos`
--
ALTER TABLE `fiestas_para_adultos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bolsa_de_trabajo`
--
ALTER TABLE `bolsa_de_trabajo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cotiza_ahora`
--
ALTER TABLE `cotiza_ahora`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `danos_tu_opinion`
--
ALTER TABLE `danos_tu_opinion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `eventos_sociales`
--
ALTER TABLE `eventos_sociales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fiestas_corporativas`
--
ALTER TABLE `fiestas_corporativas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fiestas_infantiles`
--
ALTER TABLE `fiestas_infantiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fiestas_para_adultos`
--
ALTER TABLE `fiestas_para_adultos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
