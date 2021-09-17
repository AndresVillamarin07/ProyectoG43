-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-09-2021 a las 23:21:53
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Gazella`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `id_admin` int(10) NOT NULL AUTO_INCREMENT,
  `nom_admin` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ape_admin` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nick_admin` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pass_admin` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

DROP TABLE IF EXISTS `articulo`;
CREATE TABLE IF NOT EXISTS `articulo` (
  `cod_art` int(10) NOT NULL AUTO_INCREMENT,
  `nom_art` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `color` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  `imagen` blob NOT NULL,
  PRIMARY KEY (`cod_art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cli` int(10) NOT NULL AUTO_INCREMENT,
  `nom_cli` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `aple_cli` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dir_cli` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tel_cli` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ciu_cli` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nick_cli` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pass_cli` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `cod_compra` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `id_cli` int(10) NOT NULL,
  `cod_art` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
