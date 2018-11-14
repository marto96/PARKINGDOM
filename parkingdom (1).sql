-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-11-2018 a las 23:32:36
-- Versión del servidor: 5.5.24-log
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
  `espacio` int(10) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`espacio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `espacio`
--

INSERT INTO `espacio` (`espacio`, `estado`) VALUES
(1, 'Disponible'),
(2, 'Disponible'),
(3, 'Disponible'),
(4, 'Disponible'),
(5, 'Disponible'),
(6, 'Disponible'),
(7, 'Disponible'),
(8, 'Disponible'),
(9, 'Disponible'),
(10, 'Disponible'),
(11, 'Disponible'),
(12, 'Disponible'),
(13, 'Disponible'),
(14, 'Disponible'),
(15, 'Disponible'),
(16, 'Disponible'),
(17, 'Disponible'),
(18, 'Disponible'),
(19, 'Disponible'),
(20, 'Disponible'),
(24, 'Disponible'),
(25, 'Disponible'),
(26, 'Disponible'),
(27, 'Disponible'),
(28, 'Disponible'),
(29, 'Disponible'),
(30, 'Disponible'),
(31, 'Disponible'),
(32, 'Disponible'),
(33, 'Disponible'),
(34, 'Disponible'),
(35, 'Disponible'),
(36, 'Disponible'),
(37, 'Disponible'),
(38, 'Disponible'),
(39, 'Disponible'),
(40, 'Disponible'),
(41, 'Disponible'),
(42, 'Disponible'),
(43, 'Disponible'),
(44, 'Disponible'),
(45, 'Disponible'),
(46, 'Disponible'),
(47, 'Disponible'),
(48, 'Disponible'),
(49, 'Disponible'),
(50, 'Disponible'),
(51, 'Disponible'),
(52, 'Disponible'),
(53, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensualidad`
--

CREATE TABLE IF NOT EXISTS `mensualidad` (
  `placa` varchar(10) NOT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `numero_documento` int(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(45) NOT NULL,
  `correo_electronico` varchar(45) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numero_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`numero_documento`, `nombre`, `apellidos`, `direccion`, `telefono`, `correo_electronico`, `observaciones`) VALUES
(1032479170, 'martin', 'gaona', 'carrera 1 10 10 sur', 2147483647, 'marto9610@hotmail.com', 'superusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE IF NOT EXISTS `tarifa` (
  `idtarifa` int(11) NOT NULL AUTO_INCREMENT,
  `valor_tarifa` double DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idtarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE IF NOT EXISTS `transaccion` (
  `placa` varchar(10) NOT NULL,
  `tipo_vehiculo` varchar(45) NOT NULL,
  `hora_entrada` datetime NOT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `tiempo_parqueo` varchar(30) DEFAULT NULL,
  `valor_tiempo` double DEFAULT NULL,
  `tipo_cliente` varchar(45) DEFAULT NULL,
  `tarifa_idtarifa` int(11) NOT NULL,
  `usuario_usuario` varchar(45) NOT NULL,
  `mensualidad_placa` varchar(10) NOT NULL,
  `espacio_espacio` int(10) NOT NULL,
  `vehiculos_placa` varchar(10) NOT NULL,
  PRIMARY KEY (`placa`),
  KEY `fk_transaccion_tarifa1_idx` (`tarifa_idtarifa`),
  KEY `fk_transaccion_usuario1_idx` (`usuario_usuario`),
  KEY `fk_transaccion_mensualidad1_idx` (`mensualidad_placa`),
  KEY `fk_transaccion_espacio1_idx` (`espacio_espacio`),
  KEY `fk_transaccion_vehiculos1_idx` (`vehiculos_placa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `password`, `nombre`, `apellidos`, `correo_electronico`) VALUES
('admin', 'admin', 'admin', 'admin', 'admin@hotmail.com'),
('marto', '1234', 'martin', 'gaona', 'marto9610@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `tipo_vehiculo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`placa`, `modelo`, `color`, `marca`, `tipo_vehiculo`) VALUES
('epr87d', 'apache', 'verde', 'tvs', 'motocicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_persona`
--

CREATE TABLE IF NOT EXISTS `vehiculo_persona` (
  `numero_documento` int(11) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `persona_numero_documento` int(11) NOT NULL,
  `vehiculos_placa` varchar(10) NOT NULL,
  KEY `fk_vehiculo_persona_persona1_idx` (`persona_numero_documento`),
  KEY `fk_vehiculo_persona_vehiculos1_idx` (`vehiculos_placa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `fk_transaccion_espacio1` FOREIGN KEY (`espacio_espacio`) REFERENCES `espacio` (`espacio`),
  ADD CONSTRAINT `fk_transaccion_mensualidad1` FOREIGN KEY (`mensualidad_placa`) REFERENCES `mensualidad` (`placa`),
  ADD CONSTRAINT `fk_transaccion_tarifa1` FOREIGN KEY (`tarifa_idtarifa`) REFERENCES `tarifa` (`idtarifa`),
  ADD CONSTRAINT `fk_transaccion_usuario1` FOREIGN KEY (`usuario_usuario`) REFERENCES `usuario` (`usuario`),
  ADD CONSTRAINT `fk_transaccion_vehiculos1` FOREIGN KEY (`vehiculos_placa`) REFERENCES `vehiculos` (`placa`);

--
-- Filtros para la tabla `vehiculo_persona`
--
ALTER TABLE `vehiculo_persona`
  ADD CONSTRAINT `fk_vehiculo_persona_persona1` FOREIGN KEY (`persona_numero_documento`) REFERENCES `persona` (`numero_documento`),
  ADD CONSTRAINT `fk_vehiculo_persona_vehiculos1` FOREIGN KEY (`vehiculos_placa`) REFERENCES `vehiculos` (`placa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
