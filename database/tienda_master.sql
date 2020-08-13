-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2020 a las 00:38:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Manga corta'),
(2, 'Tirantes'),
(3, 'Manga larga'),
(4, 'Sudaderas'),
(5, 'Lucha Libre'),
(6, 'Lucha Libre'),
(7, 'Leñadora'),
(8, 'Chaqueta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_pedidos`
--

CREATE TABLE `lineas_pedidos` (
  `id` int(255) NOT NULL,
  `pedido_id` int(255) NOT NULL,
  `producto_id` int(255) NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lineas_pedidos`
--

INSERT INTO `lineas_pedidos` (`id`, `pedido_id`, `producto_id`, `unidades`) VALUES
(1, 5, 19, 3),
(2, 5, 10, 1),
(3, 6, 19, 3),
(4, 6, 10, 1),
(5, 7, 19, 3),
(6, 7, 10, 1),
(7, 8, 19, 3),
(8, 8, 10, 1),
(9, 9, 19, 3),
(10, 9, 10, 1),
(11, 10, 19, 3),
(12, 10, 10, 1),
(13, 11, 19, 3),
(14, 11, 10, 1),
(15, 12, 8, 2),
(16, 12, 13, 1),
(17, 12, 10, 1),
(18, 12, 9, 1),
(19, 12, 12, 1),
(20, 13, 16, 3),
(21, 13, 17, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `coste` float(200,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `provincia`, `localidad`, `direccion`, `coste`, `estado`, `fecha`, `hora`) VALUES
(5, 2, 'Risaralda', 'Dosquebradas', 'Centro', 120000.00, 'confirm', '2020-08-12', '17:02:16'),
(6, 2, 'Risaralda', 'Pereira', 'Parque Industrial', 120000.00, 'confirm', '2020-08-12', '17:15:49'),
(7, 2, 'Risaralda', 'Dosquebradas', 'Santa monica', 120000.00, 'confirm', '2020-08-12', '17:16:54'),
(8, 2, 'Risaralda', 'Santa Rosa', 'Centro', 120000.00, 'confirm', '2020-08-12', '17:17:33'),
(9, 2, 'Risaralda', 'Pereira', 'Centro', 120000.00, 'confirm', '2020-08-12', '17:46:35'),
(10, 2, 'Risaralda', 'Pereira', 'Centro', 120000.00, 'confirm', '2020-08-12', '18:15:39'),
(11, 2, 'Risaralda', 'Pereira', 'Centro', 120000.00, 'confirm', '2020-08-12', '18:54:03'),
(12, 2, 'Risaralda', 'Pereira', 'Parque Industrial', 415000.00, 'ready', '2020-08-12', '19:42:33'),
(13, 9, 'Risaralda', 'Pereira', 'Llano grande', 180000.00, 'preparation', '2020-08-13', '17:25:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` float(100,2) NOT NULL,
  `stock` int(255) NOT NULL,
  `oferta` varchar(2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `stock`, `oferta`, `fecha`, `imagen`) VALUES
(8, 3, 'Camiseta', 'Camisa dos colores', 30000.00, 100, NULL, '2020-08-08', 'camiseta_Manga_Larga.jpg'),
(9, 1, 'Camisa', 'Color negro en varias tallas', 95000.00, 20, NULL, '2020-08-08', 'Camisa_Manga_Corta.jpg'),
(10, 1, 'Camiseta normal', 'Camiseta normal color negro', 15000.00, 200, NULL, '2020-08-09', 'Camiseta_manga_corta.jpg'),
(11, 3, 'Camisa rayas', 'Camisa rayas color rojo', 150000.00, 30, NULL, '2020-08-09', 'CamisaRayas.jpg'),
(12, 3, 'Camisa Brillante', 'Camisa color negro brillante', 200000.00, 14, NULL, '2020-08-09', 'Camisa_brillante.jpg'),
(13, 1, 'Camisa Medellin', 'Camisa medellin color gris', 45000.00, 5, NULL, '2020-08-09', 'Camiseta_medellin.jpg'),
(14, 7, 'Camisa a Cuadros', 'Camisa a cuadros color azul y verde', 120000.00, 10, NULL, '2020-08-09', 'Camisa_cuadros.jpg'),
(15, 1, 'Camiseta', 'Camiseta color naranaja', 15000.00, 100, NULL, '2020-08-09', 'Camiseta_naranja.jpg'),
(16, 1, 'Camiseta Polo', 'Camiseta polo color azul', 55000.00, 12, NULL, '2020-08-09', 'Camiseta_polo.jpg'),
(17, 1, 'Camiseta', 'Camiseta Color Amarillo', 15000.00, 100, NULL, '2020-08-09', ''),
(18, 1, 'Camisa flores', 'Camisa color azul con flores', 140000.00, 2, NULL, '2020-08-09', 'Camisa_azul_flores.jpg'),
(19, 1, 'Camiseta Polo', 'Camiseta polo color gris', 35000.00, 1, NULL, '2020-08-09', 'Camiseta_polo_gris.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`, `imagen`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '123', 'admin', NULL),
(2, 'Julio Alberto', 'Diaz Trivino', 'juditri@gmail.com', '$2y$04$dtFPvOPdpkiiw9SXAACSh.jtOVDKSNxAdV5yp58PQ85VFYZTH4RAu', 'admin', NULL),
(3, 'Daniela ', 'Gavils Rubio', 'dagaru@gmail.com', '$2y$04$.6FyyY5A8MU0tEb.yboaJ.WtEMXzybVkSAXyi9EBpmOcHbWaBlRRW', 'user', NULL),
(4, 'John James', 'Diaz Castro', 'jojadi@gmail.com', '$2y$04$W3egQrr.BxgqBpjWeItNte0dmrf1XSiy33XjMUoTzD./S.wUYcGIu', 'user', NULL),
(5, 'Camilo Andres', 'Arteaga Salazar', 'caas@gmail.com', '$2y$04$tkhvUonlMEH6.YXLF9R8X.YIiqamhFkhNBVHqZ5a.ro6eKft/gsCC', 'user', NULL),
(6, '', '', '', '$2y$04$l4NH.bmSt9q9INYEBpTwLuALy7mFLzoMg3bTWClisOaYY3eWdaQMK', 'user', NULL),
(7, 'Juan Carlos', 'Torres Vasquez', 'jucato@gmail.com', '$2y$04$PvHUIBnsBKllaA1aPnqzzeBdY/q5COQCAftxd93OSDD9udan2uo26', 'user', NULL),
(8, 'as', 'asd', 'ad@us', '$2y$04$K4U6prZsX04fgj0eH18YNuoQT8oKXd3b5WHZFxR8s1hvcMcVYuuF.', 'user', NULL),
(9, 'Natalia', 'Diaz Trivino', 'naditri@gmail.com', '$2y$04$UbS0yQxCz4KKNM4quKb4Z.6Q0MA2qTJ/COinWQxA02jDEVH9YXpEG', 'user', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_linea_pedido` (`pedido_id`),
  ADD KEY `fk_linea_producto` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_usuario` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD CONSTRAINT `fk_linea_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `fk_linea_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
