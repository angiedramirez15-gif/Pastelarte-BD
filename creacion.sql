-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2025 a las 00:34:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pastelarte`
--
CREATE DATABASE IF NOT EXISTS `pastelarte` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pastelarte`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `idrol` int(11) NOT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE KEY `correo` (`correo`),
  KEY `idrol` (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `iddetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `idpersonalizacion` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` float DEFAULT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `idpedido` (`idpedido`),
  KEY `idproducto` (`idproducto`),
  KEY `idpersonalizacion` (`idpersonalizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE IF NOT EXISTS `metodo_pago` (
  `idpago` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` enum('efectivo','nequi') DEFAULT NULL,
  `detalle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idpago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` enum('pendiente','pagado','cancelado') DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `idcliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalizacion`
--

CREATE TABLE IF NOT EXISTS `personalizacion` (
  `idpersonalizacion` int(11) NOT NULL AUTO_INCREMENT,
  `tamaño` varchar(30) DEFAULT NULL,
  `sabor` varchar(30) DEFAULT NULL,
  `decoraciones` enum('fondant','chispas','frutas','flores comestibles') DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL COMMENT 'aqui se escribe si quiere agregar algun texto en el pastel o algo que quiera personalizar.',
  `costoextra` float DEFAULT 0,
  PRIMARY KEY (`idpersonalizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `descripcion` tinytext DEFAULT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `idrol` int(11) NOT NULL,
  `categoria` enum('pastel','ceroazucar','adicionales','postres') DEFAULT 'pastel',
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(12) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT 'activo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`idpedido`) REFERENCES `pedidos` (`idpedido`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`),
  ADD CONSTRAINT `detalle_pedido_ibfk_3` FOREIGN KEY (`idpersonalizacion`) REFERENCES `personalizacion` (`idpersonalizacion`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
