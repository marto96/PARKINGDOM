-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-02-2019 a las 00:32:54
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
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `employee_name` varchar(255) NOT NULL COMMENT 'employee name',
  `employee_salary` double NOT NULL COMMENT 'employee salary',
  `employee_age` int(11) NOT NULL COMMENT 'employee age',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='datatable demo table' AUTO_INCREMENT=73 ;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id`, `employee_name`, `employee_salary`, `employee_age`) VALUES
(1, 'Tiger Nixo', 3208, 6),
(2, 'Garrett Winters', 170750, 63),
(3, 'Ashton Cox', 86000, 66),
(4, 'Cedric Kelly', 433060, 22),
(5, 'Airi Satou', 162700, 33),
(6, 'Brielle Williamson', 372000, 61),
(7, 'Herrod Chandler', 137500, 59),
(8, 'Rhona Davidson', 327900, 55),
(9, 'Colleen Hurst', 205500, 39),
(10, 'Sonya Frost', 103600, 23),
(11, 'Jena Gaines', 90560, 30),
(12, 'Quinn Flynn', 342000, 22),
(13, 'Charde Marshall', 470600, 36),
(14, 'Haley Kennedy', 313500, 43),
(15, 'Tatyana Fitzpatrick', 385750, 19),
(16, 'Michael Silva', 198500, 66),
(17, 'Paul Byrd', 725000, 64),
(18, 'Gloria Little', 237500, 59),
(19, 'Bradley Greer', 132000, 41),
(20, 'Dai Rios', 217500, 35),
(21, 'Jenette Caldwell', 345000, 30),
(22, 'Yuri Berry', 675000, 40),
(23, 'Caesar Vance', 106450, 21),
(24, 'Doris Wilder', 85600, 23),
(25, 'Angelica Ramos', 1200000, 47),
(26, 'Gavin Joyce', 92575, 42),
(27, 'Jennifer Chang', 357650, 28),
(28, 'Brenden Wagner', 206850, 28),
(29, 'Fiona Green', 850000, 48),
(30, 'Shou Itou', 163000, 20),
(31, 'Michelle House', 95400, 37),
(32, 'Suki Burks', 114500, 53),
(33, 'Prescott Bartlett', 145000, 27),
(34, 'Gavin Cortez', 235500, 22),
(35, 'Martena Mccray', 324050, 46),
(36, 'Unity Butler', 85675, 47),
(37, 'Howard Hatfield', 164500, 51),
(38, 'Hope Fuentes', 109850, 41),
(39, 'Vivian Harrell', 452500, 62),
(40, 'Timothy Mooney', 136200, 37),
(41, 'Jackson Bradshaw', 645750, 65),
(42, 'Olivia Liang', 234500, 64),
(43, 'Bruno Nash', 163500, 38),
(44, 'Sakura Yamamoto', 139575, 37),
(45, 'Thor Walton', 98540, 61),
(46, 'Finn Camacho', 87500, 47),
(47, 'Serge Baldwin', 138575, 64),
(48, 'Zenaida Frank', 125250, 63),
(49, 'Zorita Serrano', 115000, 56),
(50, 'Jennifer Acosta', 75650, 43),
(51, 'Cara Stevens', 145600, 46),
(52, 'Hermione Butler', 356250, 47),
(53, 'Lael Greer', 103500, 21),
(54, 'Jonas Alexander', 86500, 30),
(55, 'Shad Decker', 183000, 51),
(56, 'Michael Bruce', 183000, 29),
(57, 'Donna Snider', 112000, 27),
(64, 'martin', 1234576, 12),
(65, 'martin', 1234576, 12),
(67, 'asd', 0, 12),
(69, 'sdfgfg', 0, 0),
(71, 'aasfdgf', 0, 0),
(72, 'poiu', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacio`
--

CREATE TABLE IF NOT EXISTS `espacio` (
  `num_espacio` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  PRIMARY KEY (`num_espacio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `espacio`
--

INSERT INTO `espacio` (`num_espacio`, `estado`) VALUES
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
(12, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensualidad`
--

CREATE TABLE IF NOT EXISTS `mensualidad` (
  `id_mensualidad` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(50) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mensualidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Volcado de datos para la tabla `mensualidad`
--

INSERT INTO `mensualidad` (`id_mensualidad`, `placa`, `fecha_inicio`, `fecha_fin`, `estado`) VALUES
(107, 'rht476', '2018-12-01 00:00:00', '2018-12-31 00:00:00', 'activo'),
(108, 'fze788', '2018-12-01 00:00:00', '2018-12-31 00:00:00', 'activo'),
(109, 'epr87d', '2018-11-17 00:00:00', '2018-12-17 00:00:00', 'activo'),
(110, 'poi125', '2019-01-01 00:00:00', '2019-01-30 00:00:00', 'activo'),
(111, 'poi125', '2019-01-01 00:00:00', '2019-01-30 00:00:00', 'activo'),
(112, 'epr87d', '2018-11-17 00:00:00', '2018-11-29 00:00:01', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `num_documento` int(45) NOT NULL,
  `tipo_documento` varchar(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` int(20) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`num_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`num_documento`, `tipo_documento`, `nombre`, `apellido`, `direccion`, `correo`, `telefono`, `observaciones`) VALUES
(123456, 'CC', 'mngf', 'dasf', 'asd', 'marto@asd.com', 3245678, 'adsfh'),
(76553467, 'CC', 'plmj', 'ijn ', 'dsafg', 'marto9610@hotmail.com', 45646546, 'adsfh'),
(103245987, 'CC', 'calvo hpta', 'calluo ', 'avenida siempre viva 123', 'zidanemetajames@hotmail.com', 123456789, 'meta ajame hpta'),
(216781237, '', 'callou', 'zidane', 'calle 14b 14-05', 'calvometajames@hotmail.com', 12312376, 'invalido'),
(1032479175, '', 'martin ', 'gaona', 'calle 19 #64b 08', 'megaona@misena.edu.co', 2147483647, NULL),
(1233509976, '', 'sebastian ', 'montaña', 'cr 89 a #69 04 sur', 'sdmontana8@misena.edu.co', 1234567, NULL),
(2147483647, '', 'prueba1', 'montaña', 'calle1 10 37', 'sdmontana8@misena.edu.co', 2147483647, 'superusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE IF NOT EXISTS `tarifa` (
  `id_tarifa` int(10) NOT NULL AUTO_INCREMENT,
  `valor_tarifa` double NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tarifa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tarifa`
--

INSERT INTO `tarifa` (`id_tarifa`, `valor_tarifa`, `descripcion`) VALUES
(1, 30, 'moto'),
(2, 70, 'automovil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE IF NOT EXISTS `transaccion` (
  `id_transaccion` int(45) NOT NULL AUTO_INCREMENT,
  `placa` varchar(10) NOT NULL,
  `tipo_vehiculo` varchar(45) DEFAULT NULL,
  `hora_entrada` datetime DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `tiempo_parqueo` varchar(200) DEFAULT NULL,
  `valor_tiempo` double DEFAULT NULL,
  `tipo_cliente` varchar(45) DEFAULT NULL,
  `usuario` varchar(15) NOT NULL,
  `tarifa_tr` int(11) DEFAULT NULL,
  `espacio_tr` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_transaccion`),
  KEY `fk_tarifa` (`tarifa_tr`),
  KEY `fk_espacio` (`espacio_tr`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`id_transaccion`, `placa`, `tipo_vehiculo`, `hora_entrada`, `hora_salida`, `tiempo_parqueo`, `valor_tiempo`, `tipo_cliente`, `usuario`, `tarifa_tr`, `espacio_tr`) VALUES
(14, 'rht476', 'Automovil', '2018-11-29 20:49:42', '2018-12-06 16:57:49', NULL, 3468525, 'temporal', 'martin', 2, 10),
(15, 'abc123', 'Automovil', '2018-11-30 10:13:09', '2018-12-11 21:18:21', NULL, 990312, 'temporal', 'martin', 2, 10),
(16, 'epr87d', 'motocicleta', '2018-11-30 10:14:03', '2019-01-22 09:12:39', NULL, 4611516, 'mensual', 'martin', 1, 10),
(17, 'ept123', 'motocicleta', '2018-11-30 20:42:50', '2018-11-30 21:13:39', NULL, 1849.000098, 'temporal', 'martin', 1, 10),
(18, 'qwe123', 'Automovil', '2018-11-30 20:49:21', '2019-01-23 16:54:49', '1 meses 53 dias 20 horas 5 minutos 28 segundos', 4601128, 'temporal', 'martin', 2, 10),
(19, 'epr87d', 'motocicleta', '2018-12-02 21:17:13', '2019-01-22 09:12:39', NULL, 4611516, 'mensual', 'martin', 1, 10),
(20, 'asd789', 'Automovil', '2018-12-06 15:51:13', '2018-12-06 15:51:31', NULL, 18.000036, 'temporal', 'admin', 2, 10),
(21, 'poi852', 'Automovil', '2018-12-06 15:52:44', '2018-12-06 15:53:12', NULL, 28, 'temporal', 'admin', 2, 10),
(22, 'abc123', 'motocicleta', '2018-12-11 21:17:45', '2018-12-11 21:18:21', NULL, 990312, 'temporal', 'martin', 1, 10),
(23, 'rht476', 'motocicleta', '2018-12-12 16:23:32', '2019-01-22 10:56:13', '1 meses 40 dias 18 horas 32 minutos 41 segundos', 3472361, 'mensual', 'martin', 1, 10),
(24, '098poi', 'Automovil', '2019-01-06 21:16:49', '2019-01-22 11:05:22', '0 meses 15 dias 13 horas 48 minutos 33 segundos', 1345713, 'temporal', 'martin', 2, 10),
(26, 'epr87d', 'Automovil', '2019-02-04 18:21:05', '2019-02-04 18:22:22', '0 meses 0 dias 0 horas 1 minutos 17 segundos', 77, 'mensual', 'martin', 2, 10),
(27, 'abc123', 'Automovil', '2019-02-04 18:37:39', '2019-02-04 18:38:04', '0 meses 0 dias 0 horas 0 minutos 25 segundos', 25, 'temporal', 'martin', 2, 10),
(28, '098poi', 'Automovil', '2019-02-04 18:40:09', '2019-02-04 18:40:40', '0 meses 0 dias 0 horas 0 minutos 31 segundos', 31, 'temporal', 'martin', 2, 10),
(29, 'uyt567', 'Automovil', '2019-02-04 19:27:24', NULL, NULL, NULL, 'temporal', 'martin', 2, 10),
(30, 'ert321', 'motocicleta', '2019-02-04 19:44:07', '2019-02-04 19:46:00', '0 meses 0 dias 0 horas 1 minutos 53 segundos', 113, 'temporal', 'martin', 1, 10),
(31, 'ikm987', 'Automovil', '2019-02-04 20:22:12', NULL, NULL, NULL, 'temporal', 'martin', 2, 10),
(32, 'loi564', 'Automovil', '2019-02-04 20:26:50', '2019-02-04 20:27:43', '0 meses 0 dias 0 horas 0 minutos 53 segundos', 53, 'temporal', 'martin', 2, 10),
(33, 'loi564', 'Automovil', '2019-02-04 20:29:25', NULL, NULL, NULL, 'temporal', 'martin', 2, 10),
(34, 'epr87d', 'Automovil', '2019-02-04 20:31:06', '2019-02-04 20:31:17', '0 meses 0 dias 0 horas 0 minutos 11 segundos', 11, 'mensual', 'martin', 2, 10),
(157652, 'loi564', 'Automovil', '2019-01-18 11:24:15', '2019-01-25 13:47:34', NULL, 613399, 'temporal', 'martin', 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id`, `nombre`, `estado`) VALUES
(1, '1V', 0),
(2, '2V', 0),
(3, '3V', 0),
(5, '4V', 0),
(6, '5V', 0),
(7, '6V', 0),
(8, '7V', 0),
(9, '8V', 0),
(10, '9V', 0),
(11, '10V', 0),
(12, '11V', 0),
(13, '12V', 0),
(14, '13V', 0),
(15, '14V', 0),
(16, '15V', 0),
(17, '16V', 0),
(18, '17V', 0),
(19, '18V', 0),
(20, '19V', 0),
(21, '20V', 0),
(22, '21V', 0),
(23, '22V', 0),
(24, '23V', 0),
(25, '24V', 0),
(26, '25V', 0),
(27, '26V', 0),
(28, '27V', 0),
(29, '28V', 0),
(30, '29V', 0),
(31, '30V', 0),
(32, '31V', 0),
(33, '32V', 0),
(34, '33V', 0),
(35, '34V', 0),
(36, '35V', 0),
(37, '36V', 0),
(38, '37V', 0),
(39, '38V', 0),
(40, '39V', 0),
(41, '40', 0),
(42, '41', 0),
(43, '42', 0),
(44, '43', 0),
(45, '44', 0),
(46, '45', 0),
(47, '46', 0),
(48, '47', 0),
(49, '48', 0),
(50, '49', 0),
(51, '50', 0),
(52, '51', 0),
(53, '52', 0),
(54, '53', 0),
(55, '54', 0),
(56, '55', 0),
(57, '56', 0),
(58, '57', 0),
(59, '58', 0),
(60, '59', 0),
(61, '60', 0),
(62, '61', 0),
(63, '62', 0),
(64, '63', 0),
(65, '64', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`usuario`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `apellidos` (`apellidos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `password`, `nombre`, `apellidos`, `correo`) VALUES
('admin', 'admin', 'admin', 'admin', 'admin@hotmail.com'),
('marto', '1234', 'martin', 'gaona', 'marto9610@hotmail.com'),
('prueba', 'prueba', 'prueba', 'prueba', 'marto9610@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `placa_vehi` varchar(10) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `tipo_vehiculo` varchar(45) NOT NULL,
  PRIMARY KEY (`placa_vehi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`placa_vehi`, `modelo`, `color`, `marca`, `tipo_vehiculo`) VALUES
('ads456', '4567', 'gris', 'por', 'automovil'),
('epr87d', '2015', 'verde', 'tvs apache', 'motocicleta'),
('fze788', '2016', 'verde', 'mazda', 'automovil'),
('PTA123', '2012', 'anaranjado', 'subaru', 'automovil'),
('rht476', '2012', 'gris', 'chevrolet', 'automovil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_persona`
--

CREATE TABLE IF NOT EXISTS `vehiculo_persona` (
  `num_documento_vp` int(11) NOT NULL,
  `placa_vp` varchar(45) NOT NULL,
  KEY `fk_numdocumento_vp` (`num_documento_vp`),
  KEY `fk_placa_vp` (`placa_vp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculo_persona`
--

INSERT INTO `vehiculo_persona` (`num_documento_vp`, `placa_vp`) VALUES
(1032479175, 'epr87d'),
(1233509976, 'rht476'),
(216781237, 'fze788'),
(103245987, 'PTA123');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `transaccion_ibfk_1` FOREIGN KEY (`tarifa_tr`) REFERENCES `tarifa` (`id_tarifa`),
  ADD CONSTRAINT `transaccion_ibfk_4` FOREIGN KEY (`espacio_tr`) REFERENCES `espacio` (`num_espacio`);

--
-- Filtros para la tabla `vehiculo_persona`
--
ALTER TABLE `vehiculo_persona`
  ADD CONSTRAINT `vehiculo_persona_ibfk_1` FOREIGN KEY (`num_documento_vp`) REFERENCES `persona` (`num_documento`),
  ADD CONSTRAINT `vehiculo_persona_ibfk_2` FOREIGN KEY (`placa_vp`) REFERENCES `vehiculos` (`placa_vehi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
