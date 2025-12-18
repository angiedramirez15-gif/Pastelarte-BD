-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2025 a las 07:09:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pastelarte`
--

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(1, 'Daniela ramirez', 'dani@gmail.com', '1234', 'Cra 7H', 5);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(2, 'mayra calvo', 'mayra@@gmail.com', '1789', 'Cra 8', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(3, 'Angie Dazaa', 'daza@gmail.com', '789654', 'pasaje 7 f', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(4, 'alejandra chocue', 'alejach@gmail.com', 'aleja123', 'av 6 #10', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(5, 'marcela lopez', 'lopez12@gmail.com', '12lope', 'cra 10', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(6, 'claudia quintero', 'claudis12@gmail.com', 'solecito', 'calle 58', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(9, 'michael ortega', 'ortemai@gmail.com', 'maicol12', 'cra 35 ', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(10, 'steban cadena', 'cadena@gmail.com', '24112025', 'Diagonal 30 #20-19', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(11, 'juliana muñoz', 'muñoz78@gmail.com', 'wich2025', 'transversal 80', 6);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(12, 'Jaider Marimon', 'jaiderm@gmail.com', 'mari1234', 'avenida circunvalar', 5);
INSERT INTO `cliente` (`id_cliente`, `nombre`, `correo`, `contraseña`, `direccion`, `id_rol`) VALUES(13, 'milvia daza', 'milvia22@gmail.com', 'jesus1234', 'cra 1d bis', 6);

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `id_producto`, `id_personalizacion`, `cantidad`, `subtotal`) VALUES(4, 3, 1, NULL, 2, 96000);
INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `id_producto`, `id_personalizacion`, `cantidad`, `subtotal`) VALUES(5, 4, 6, 6, 1, 48000);
INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `id_producto`, `id_personalizacion`, `cantidad`, `subtotal`) VALUES(6, 5, 12, 6, 2, 28000);
INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `id_producto`, `id_personalizacion`, `cantidad`, `subtotal`) VALUES(7, 7, 9, NULL, 3, 25000);
INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `id_producto`, `id_personalizacion`, `cantidad`, `subtotal`) VALUES(8, 6, 14, 7, 3, 120000);
--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha`, `estado`, `total`) VALUES(3, 2, '2025-11-01', 'pendiente', 96000);
INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha`, `estado`, `total`) VALUES(4, 11, '2025-11-30', 'pagado', 40000);
INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha`, `estado`, `total`) VALUES(5, 13, '2025-11-25', 'cancelado', 28000);
INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha`, `estado`, `total`) VALUES(6, 10, '2025-11-15', 'pagado', 48000);
INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `fecha`, `estado`, `total`) VALUES(7, 11, '2025-11-05', 'pagado', 25000);
--
-- Volcado de datos para la tabla `personalizacion`
--

INSERT INTO `personalizacion` (`id_personalizacion`, `tamaño`, `sabor`, `decoraciones`, `descripcion`, `costoextra`) VALUES(1, 'pequeño', 'chocolate', '', 'escribir feliz cumpleaños daniela', 20000);
INSERT INTO `personalizacion` (`id_personalizacion`, `tamaño`, `sabor`, `decoraciones`, `descripcion`, `costoextra`) VALUES(2, 'grande', 'vainilla', '', 'escribir feliz aniversario', 30000);
INSERT INTO `personalizacion` (`id_personalizacion`, `tamaño`, `sabor`, `decoraciones`, `descripcion`, `costoextra`) VALUES(5, 'pequeño', 'chocolate', 'fondant', 'escribir feliz cumpleaños daniela', 20000);
INSERT INTO `personalizacion` (`id_personalizacion`, `tamaño`, `sabor`, `decoraciones`, `descripcion`, `costoextra`) VALUES(6, 'grande', 'fresa', 'flores comestibles', 'escribir feliz aniversario', 30000);
INSERT INTO `personalizacion` (`id_personalizacion`, `tamaño`, `sabor`, `decoraciones`, `descripcion`, `costoextra`) VALUES(7, 'pequeño', 'chocolate', '', 'escribir feliz  grado  daniela', 20000);
--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(1, 'Vainilla Dama', 'suave bizcocho con aroma dulce y textura esponjosa', 45000, 10, 7, 'pastel');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(2, 'Torta de fresa', 'bizcochuelo suave con crema de fresa natural', 40000, 9, 7, 'pastel');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(3, 'Combinado', 'mitad vainilla,mitad chocolate sabor:sabor perfecto y equilibrado', 55000, 5, 7, 'pastel');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(4, 'Chocomani', 'chocolante intenso con toque crocante del mani ', 40000, 3, 7, 'pastel');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(5, 'Chocolate', 'bizcochuelo humedo y rico en cacao puro', 35000, 10, 7, 'pastel');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(6, 'Vainilla con arequipe', 'Esponjose pastel de arequipe con relleno cremoso de arequipe', 48000, 16, 7, 'pastel');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(7, 'Vainilla chia', 'Pastel ligero de vainilla con chía que aporta textura sutil', 45000, 4, 7, 'ceroazucar');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(8, 'Vainilla con Chocolate', 'Bizcocho suave de vainilla con capa de cacao sin azúcar', 40000, 9, 7, 'ceroazucar');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(9, 'Vainilla Coco', 'Esponjoso bizcocho de vainilla con toque tropical de coco.', 25000, 3, 7, 'ceroazucar');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(10, 'Galletas Rizadas', 'Crujientes y ligeras, con dulzor natural sin azúcar', 25000, 30, 7, 'ceroazucar');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(11, 'Cocadas', 'Dulce coco rallado con textura tierna y aroma natural.', 25000, 15, 7, 'ceroazucar');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(12, 'Panderos/Cubanos', 'Galletas suaves, aireadas y de sabor tradicional.', 25000, 16, 7, 'ceroazucar');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(13, 'Piono', 'Delicado pionono relleno con crema y sabor equilibrado.', 45000, 12, 7, 'postres');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(14, 'Leches Genovesa', 'Genovesa clásica, esponjosa, con capas de crema.', 40000, 14, 7, 'postres');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(15, 'Manjar Español', 'Manjar preparado con receta tradicional y cobertura suave', 25000, 11, 7, 'postres');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(16, 'Napoleon', 'Napoleón crocante con crema pastelera fina.', 25000, 2, 7, 'postres');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(17, 'Selva Negra', 'Selva Negra con trozos de cereza y chocolate rallado.', 25000, 4, 7, 'postres');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(18, 'Trufa de Chocolate', 'Trufa intensa con ganache y detalles dorados.', 25000, 1, 7, 'postres');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(19, 'Tres Leches Arequipe', 'Bizcochuelo húmedo con mezcla de leches y suave toque de arequipe', 45000, 7, 7, 'adicionales');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(20, 'Tres Leches Chocolate', 'Pastel esponjoso bañado en leches con cacao intenso.', 40000, 9, 7, 'adicionales');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(21, 'Tres Leches Tradicional', 'Clásica textura húmeda con sabor equilibrado y cremoso.', 25000, 6, 7, 'adicionales');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(22, 'Tropical de frutas', 'Bizcocho suave con mezcla fresca de frutas naturales.', 25000, 8, 7, 'adicionales');
INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `id_rol`, `categoria`) VALUES(23, 'Napoleon', 'Hojaldre crujiente con crema suave y dulzor delicado.', 30000, 12, 7, 'adicionales');
--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `titulo`, `descripcion`, `estado`) VALUES(5, 'admin', 'Administrador del sistema', 'activo');
INSERT INTO `rol` (`id`, `titulo`, `descripcion`, `estado`) VALUES(6, 'cliente', 'Cliente frecuente de la pastelería', 'activo');
INSERT INTO `rol` (`id`, `titulo`, `descripcion`, `estado`) VALUES(7, 'productos', 'clases de prodcutos que manejamos en la pasteleria', 'activo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
