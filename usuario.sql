-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-03-2019 a las 23:58:15
-- Versión del servidor: 5.7.21-log
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parkingdom`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `token` varchar(50) NOT NULL,
  `activacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `apellidos` (`apellidos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `password`, `nombre`, `apellidos`, `correo`, `token`, `activacion`) VALUES
('admin', 'admin', 'admin', 'admin', 'admin@hotmail.com', '2c8134ffe09fbc43715adb1ba625743b', 0),
('hamilt', '12345678', 'hamilton ', 'Pacanchique', 'bleach8200@hotmail.com', '60264acc882f943cbc39245c90b319d9', 0),
('marto', '1234', 'martin', 'gaona', 'marto9610@hotmail.com', '856ef3f7361edbed752e2ae7796b5697', 0),
('prueba', 'prueba', 'prueba', 'prueba', 'marto9610@hotmail.com', '856ef3f7361edbed752e2ae7796b5697', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
