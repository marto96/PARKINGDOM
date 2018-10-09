-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-10-2018 a las 23:50:49
-- Versión del servidor: 5.5.60
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `parkingdom`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacio`
--

CREATE TABLE IF NOT EXISTS `espacio` (
  `idespacio` int(11) NOT NULL,
  `disponibilidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idespacio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensualidad`
--

CREATE TABLE IF NOT EXISTS `mensualidad` (
  `idmensualidad` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `descripcion` tinytext,
  PRIMARY KEY (`idmensualidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operario`
--

CREATE TABLE IF NOT EXISTS `operario` (
  `idoperario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idoperario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operario`
--

INSERT INTO `operario` (`idoperario`, `nombre`, `apellidos`, `usuario`, `password`) VALUES
(1, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo_electronico` varchar(45) DEFAULT NULL,
  `posee_discapacidad` varchar(45) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE IF NOT EXISTS `tarifa` (
  `idtarifa` int(11) NOT NULL AUTO_INCREMENT,
  `tarifa_moto` double DEFAULT NULL,
  `tarifa_vehiculo` double DEFAULT NULL,
  PRIMARY KEY (`idtarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion_normal`
--

CREATE TABLE IF NOT EXISTS `transaccion_normal` (
  `id_transaccion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_vehiculo` varchar(20) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `hora_entrada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_salida` date DEFAULT NULL,
  `ubicacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `transaccion_normal`
--

INSERT INTO `transaccion_normal` (`id_transaccion`, `tipo_vehiculo`, `placa`, `hora_entrada`, `hora_salida`, `ubicacion`) VALUES
(1, 'automovil', 'qwe123', '2018-09-20 05:00:00', NULL, NULL),
(2, 'automovil', 'qwe123', '2018-09-20 05:00:00', NULL, NULL),
(3, 'Automovil', 'epr87d', '2018-09-20 05:00:00', NULL, NULL),
(4, 'Automovil', 'epr87d', '2018-09-21 10:04:53', NULL, NULL),
(5, 'Automovil', 'epr87d', '2018-09-21 13:52:53', NULL, NULL),
(6, 'Automovil', 'epr87d', '2018-09-23 16:21:31', NULL, NULL),
(7, 'Automovil', 'epr87d', '2018-09-25 01:31:14', NULL, NULL),
(8, 'Automovil', 'epr87d', '2018-09-25 01:31:59', NULL, NULL),
(9, 'AUTOMOVIL', 'POI123', '2018-09-25 02:19:43', '2018-09-23', NULL),
(10, 'Automovil', 'epr87d', '2018-10-02 01:33:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion_temporal`
--

CREATE TABLE IF NOT EXISTS `transaccion_temporal` (
  `id_transaccion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_vehiculo` varchar(20) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `tiempo_parqueo` varchar(30) DEFAULT NULL,
  `valor_tiempo` double DEFAULT NULL,
  PRIMARY KEY (`id_transaccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `transaccion_temporal`
--

INSERT INTO `transaccion_temporal` (`id_transaccion`, `tipo_vehiculo`, `placa`, `hora_entrada`, `hora_salida`, `tiempo_parqueo`, `valor_tiempo`) VALUES
(1, 'motocicleta', 'epr87d', '2018-09-19 10:56:21', '2018-09-26 14:26:12', '', 0),
(2, 'Automovil', 'abc123', '2018-09-21 05:11:37', NULL, NULL, NULL),
(3, 'Automovil', 'RHT476', '2018-09-21 08:41:29', NULL, NULL, NULL),
(4, 'Automovil', 'poi123', '2018-09-24 18:43:42', '2018-10-01 20:34:54', NULL, 611472.000024),
(5, 'Automovil', 'asd123', '2018-09-24 18:44:20', '2018-09-26 11:24:51', NULL, 146431.000062),
(6, 'Automovil', 'rgj989', '2018-09-24 18:44:55', '2018-09-26 20:56:44', NULL, 180709.000098),
(7, 'Automovil', 'gfh123', '2018-09-24 18:49:11', NULL, NULL, NULL),
(8, 'Automovil', 'poi123', '2018-09-24 18:50:00', '2018-10-01 20:34:54', NULL, 611472.000024),
(9, 'Automovil', 'ijb123', '2018-09-24 18:50:31', NULL, NULL, NULL),
(10, 'Automovil', 'POI123', '2018-09-24 21:20:21', '2018-10-01 20:34:54', NULL, 611472.000024),
(11, 'Automovil', 'ppp123', '2018-09-26 19:12:40', NULL, NULL, NULL),
(12, 'Automovil', 'puh123', '2018-10-01 20:34:19', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `idvehiculos` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  PRIMARY KEY (`idvehiculos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idvehiculos`, `placa`, `modelo`, `color`, `marca`) VALUES
(1, 'epr87d', '1990', 'rojo', 'toyota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos_mensualidad`
--

CREATE TABLE IF NOT EXISTS `vehiculos_mensualidad` (
  `idvehiculos` int(11) NOT NULL,
  `id_mensualidad` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL,
  KEY `idvehiculos_idx` (`idvehiculos`),
  KEY `id_mensualidad_idx` (`id_mensualidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_persona`
--

CREATE TABLE IF NOT EXISTS `vehiculo_persona` (
  `id_vehiculos` int(11) NOT NULL,
  `id_personas` int(11) NOT NULL,
  `detalles` varchar(105) DEFAULT NULL,
  KEY `idpersonas_idx` (`id_personas`),
  KEY `idvehiculos_idx` (`id_vehiculos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculos_mensualidad`
--
ALTER TABLE `vehiculos_mensualidad`
  ADD CONSTRAINT `idvehiculos` FOREIGN KEY (`idvehiculos`) REFERENCES `vehiculos` (`idvehiculos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_mensualidad` FOREIGN KEY (`id_mensualidad`) REFERENCES `mensualidad` (`idmensualidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo_persona`
--
ALTER TABLE `vehiculo_persona`
  ADD CONSTRAINT `id_personas` FOREIGN KEY (`id_personas`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_vehiculos` FOREIGN KEY (`id_vehiculos`) REFERENCES `vehiculos` (`idvehiculos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
