-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 28-11-2018 a las 02:28:00
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mlash`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

DROP TABLE IF EXISTS `barrio`;
CREATE TABLE IF NOT EXISTS `barrio` (
  `idbarrio` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `ciudad_idciudad` int(11) NOT NULL,
  PRIMARY KEY (`idbarrio`),
  KEY `fk_barrio_ciudad1_idx` (`ciudad_idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`idbarrio`, `descripcion`, `ciudad_idciudad`) VALUES
(1, 'bosa', 1),
(2, 'robledo', 2),
(3, 'alto prado', 5),
(4, 'agua blanca', 3),
(5, 'kennedy', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `idcategorias` int(11) NOT NULL AUTO_INCREMENT,
  `decripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `decripcion`) VALUES
(1, 'deportivo'),
(2, 'musicales'),
(3, 'hogar'),
(4, 'tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `idciudad` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `pais_idpais` int(11) NOT NULL,
  PRIMARY KEY (`idciudad`),
  KEY `fk_ciudad_pais1_idx` (`pais_idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idciudad`, `descripcion`, `pais_idpais`) VALUES
(1, 'bogota', 1),
(2, 'medellin', 1),
(3, 'cali', 1),
(4, 'ibague', 1),
(5, 'barranquilla', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `num_identificacion_clien` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `tipo_documento_idtipo_documento` int(11) NOT NULL,
  `barrio_idbarrio` int(11) NOT NULL,
  PRIMARY KEY (`num_identificacion_clien`),
  KEY `fk_cliente_tipo_documento1_idx` (`tipo_documento_idtipo_documento`),
  KEY `fk_cliente_barrio1_idx` (`barrio_idbarrio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`num_identificacion_clien`, `codigo`, `nombre`, `apellido`, `direccion`, `telefono`, `tipo_documento_idtipo_documento`, `barrio_idbarrio`) VALUES
(214532, 3, 'arsenio', 'dominguez', 'calle 37d 09', 74599965, 2, 2),
(52145781, 2, 'maria', '', 'carrera 24 b 32 15', 312453214, 2, 1),
(324531208, 4, 'hamilton', 'pacaca', 'av 14 cl 5 04', 78966442, 2, 5),
(912457823, 5, 'SINOTEK S.A', NULL, 'calle 25 35b 45', 5555555, 1, 1),
(1012432215, 1, 'pedro', 'pinzon', 'calle 24 35 12', 7777777, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `idpais` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idpais`, `descripcion`) VALUES
(1, 'colombia'),
(2, 'argentina'),
(3, 'españa'),
(4, 'ecuador'),
(5, 'mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `existencias` int(11) NOT NULL,
  `categorias_idcategorias` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_productos_categorias1_idx` (`categorias_idcategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `descripcion`, `precio`, `existencias`, `categorias_idcategorias`) VALUES
(1, 'bafle cf-2000', 200000, 20, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE IF NOT EXISTS `proveedores` (
  `numero_id_prov` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  `tipo_documento_idtipo_documento` int(11) NOT NULL,
  `barrio_idbarrio` int(11) NOT NULL,
  PRIMARY KEY (`numero_id_prov`),
  UNIQUE KEY `nit_UNIQUE` (`numero_id_prov`),
  UNIQUE KEY `telefono_UNIQUE` (`telefono`),
  KEY `fk_proveedores_tipo_documento1_idx` (`tipo_documento_idtipo_documento`),
  KEY `fk_proveedores_barrio1_idx` (`barrio_idbarrio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`numero_id_prov`, `codigo`, `nombre`, `direccion`, `telefono`, `tipo_documento_idtipo_documento`, `barrio_idbarrio`) VALUES
(90044521, 2, 'bodytech', 'av dorado 35 12', 8174751, 1, 5),
(90045213, 1, 'apple', 'carrera 45 b 21 12', 7751423, 1, 3),
(90047585, 3, 'samsung', 'calle 37d 25', 2154785, 1, 2),
(90054782, 4, 'beats colombia', 'diagonal 76 78-04', 2358964, 1, 4),
(900631584, 5, 'asus', 'autopista 57 8-6', 8432428, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_producto`
--

DROP TABLE IF EXISTS `registro_producto`;
CREATE TABLE IF NOT EXISTS `registro_producto` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `proveedores_nit` int(11) NOT NULL,
  `productos_codigo` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`),
  UNIQUE KEY `id_registro_UNIQUE` (`id_registro`),
  KEY `fk_registro_producto_proveedores1_idx` (`proveedores_nit`),
  KEY `fk_registro_producto_productos1_idx` (`productos_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_producto`
--

INSERT INTO `registro_producto` (`id_registro`, `fecha`, `proveedores_nit`, `productos_codigo`) VALUES
(1, '2018-11-27 00:00:00', 90044521, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `idtipo_documento` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`idtipo_documento`, `descripcion`) VALUES
(1, 'NIT'),
(2, 'Cédula ciudadanía'),
(3, 'cédula extranjería '),
(4, 'permiso de permanencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
  `id_venta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `cliente_num_identificacion` int(11) NOT NULL,
  `productos_codigo` int(11) NOT NULL,
  `cantidad_producto` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  UNIQUE KEY `id_venta_UNIQUE` (`id_venta`),
  KEY `fk_venta_cliente_idx` (`cliente_num_identificacion`),
  KEY `fk_venta_productos1_idx` (`productos_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD CONSTRAINT `fk_barrio_ciudad1` FOREIGN KEY (`ciudad_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_ciudad_pais1` FOREIGN KEY (`pais_idpais`) REFERENCES `pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_barrio1` FOREIGN KEY (`barrio_idbarrio`) REFERENCES `barrio` (`idbarrio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cliente_tipo_documento1` FOREIGN KEY (`tipo_documento_idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias1` FOREIGN KEY (`categorias_idcategorias`) REFERENCES `categorias` (`idcategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `fk_proveedores_barrio1` FOREIGN KEY (`barrio_idbarrio`) REFERENCES `barrio` (`idbarrio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proveedores_tipo_documento1` FOREIGN KEY (`tipo_documento_idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registro_producto`
--
ALTER TABLE `registro_producto`
  ADD CONSTRAINT `fk_registro_producto_productos1` FOREIGN KEY (`productos_codigo`) REFERENCES `productos` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_registro_producto_proveedores1` FOREIGN KEY (`proveedores_nit`) REFERENCES `proveedores` (`numero_id_prov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`cliente_num_identificacion`) REFERENCES `cliente` (`num_identificacion_clien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_productos1` FOREIGN KEY (`productos_codigo`) REFERENCES `productos` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
