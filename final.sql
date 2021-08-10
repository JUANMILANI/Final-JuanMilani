-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2021 a las 03:43:19
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 'Alimentos para perros', 'Secos y húmedos', 0, '2021-07-17 20:22:27', '2021-07-17 20:22:27'),
(2, 'Alimentos para gatos', 'Secos y húmedos', 0, '2021-07-17 20:22:27', '2021-07-17 20:22:27'),
(3, 'pipetas para perros', 'Eliminan pulgas y garrapatas', 0, '2021-07-17 20:22:27', '2021-07-17 20:22:27'),
(4, 'pipetas para gatos', 'Eliminan pulgas y garrapatas', 0, '2021-07-17 20:22:27', '2021-07-17 20:22:27'),
(5, 'juguetes', 'Elementos para la diversion de los animales', 0, '2021-07-17 20:22:27', '2021-07-17 20:22:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `telefono`, `direccion`, `eliminado`, `ts_create`, `ts_update`) VALUES
(8, 'Carlos', 'Gomez', 1147885523, 'Las Heras 666', 0, '2021-07-26 23:49:22', '2021-07-26 23:49:22'),
(9, 'Marcos', 'Fuentes', 154488463, 'Alvarez 487', 0, '2021-07-28 23:45:04', '2021-07-28 23:45:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados_imagenes`
--

CREATE TABLE `empleados_imagenes` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados_imagenes`
--

INSERT INTO `empleados_imagenes` (`id`, `uid`, `id_empleado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(2, '4f8b05d3-881f-40a8-a18a-012e4848dbd4.jpeg', 8, 0, '2021-07-26 23:49:22', '2021-07-26 23:49:22'),
(3, 'b4d73913-8b0b-4eba-a78d-1415255666df.jpeg', 9, 0, '2021-07-28 23:45:04', '2021-07-28 23:45:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `id_categoria`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 'Royal canin fit 32 - 1 kg', 'Para mantener el buen estado de salud de tu gato de estilo de vida activo, es importante  una nutrición de calidad con un aporte nutricional óptimo.', 1500, 15, 2, 0, '2021-07-17 20:46:44', '2021-07-30 20:15:22'),
(2, 'Royal canin adultos - 7 kg', 'Para mantener el buen estado de salud de tu gato de estilo de vida activo, es importante  una nutrición de calidad con un aporte nutricional óptimo.', 3500, 8, 1, 0, '2021-07-17 20:46:44', '2021-07-17 20:46:44'),
(3, 'Frontline Pipeta Spot Raza Pequeña 2-10 Kg', 'Las pipetas Spot-on con su solución spot-on proporciona a tu perro en las primeras 24 horas protección frente a pulgas,  garrapatas y piojos.', 1400, 5, 3, 0, '2021-07-17 20:46:44', '2021-07-17 20:46:44'),
(4, 'Pipeta Power Met Gatos Hasta 4 Kg', 'Indicado para la prevención y el tratamiento de la infestación por pulgas en felinos hasta 4kg.', 1200, 7, 4, 0, '2021-07-17 20:46:44', '2021-07-17 20:46:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_imagenes`
--

CREATE TABLE `productos_imagenes` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos_imagenes`
--

INSERT INTO `productos_imagenes` (`id`, `uid`, `id_producto`, `eliminado`, `ts_create`, `ts_update`) VALUES
(2, 'fit.png', 1, 0, '2021-07-29 22:48:50', '2021-07-30 19:33:00'),
(3, 'adult.png', 2, 0, '2021-07-29 23:39:16', '2021-07-30 20:17:10'),
(4, 'frontp.png', 3, 0, '2021-07-29 23:39:37', '2021-07-30 20:19:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `confirmacionCorreo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `habilitado` tinyint(4) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `pass`, `mail`, `confirmacionCorreo`, `telefono`, `admin`, `habilitado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(9, 'Juan', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'juan.milani@cuba.org.ar', '5234b1be-761f-4fe3-b994-f2074835b74e', 1157578200, 1, 1, 0, '2021-07-21 10:48:41', '2021-07-24 01:15:40'),
(10, 'juanmilani', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'juanignaciomilani@gmail.com', '08af2cb2-bf23-4236-9ee7-9c558de30a04', 1157578200, 0, 0, 0, '2021-07-21 20:22:36', '2021-07-21 20:22:36'),
(11, 'Juani', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'juanignaciomilani@gmail.com', 'f7f6a7b8-c7d5-4c84-b2db-d3a91822d940', 1157578200, 1, 0, 0, '2021-07-21 20:32:10', '2021-08-08 21:53:27'),
(12, 'Juan Ignacio', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'juanignaciomilani@gmail.com', '38c27f44-5e4c-4cdc-adcb-f2a0172ccd96', 1157578200, 0, 0, 0, '2021-07-21 20:37:04', '2021-07-21 20:37:04'),
(13, 'carlos', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'juanignaciomilani@gmail.com', '8f5287b6-4ff9-45a8-bc22-99dbaea88813', 1157578200, 0, 0, 0, '2021-07-21 20:38:32', '2021-07-21 20:38:32'),
(14, 'jorge', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'juanignaciomilani@gmail.com', '0c2780f8-d85a-40a0-b9a4-1b9a22ec99d6', 1157578200, 0, 0, 0, '2021-07-21 20:41:57', '2021-07-21 20:41:57'),
(15, 'juanito', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'juanignaciomilani@gmail.com', '8c73db71-24a4-4211-b13c-35af880b7c6d', 1157578200, 0, 1, 0, '2021-07-21 21:12:22', '2021-07-21 21:12:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados_imagenes`
--
ALTER TABLE `empleados_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleados_imagenes`
--
ALTER TABLE `empleados_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados_imagenes`
--
ALTER TABLE `empleados_imagenes`
  ADD CONSTRAINT `empleados_imagenes_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  ADD CONSTRAINT `productos_imagenes_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
