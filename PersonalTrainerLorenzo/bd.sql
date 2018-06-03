-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2018 a las 23:26:17
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id` int(20) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `ciudad` varchar(30) COLLATE utf8_general_mysql500_ci NOT NULL,
  `dia` date NOT NULL,
  `hora` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `cp` int(10) NOT NULL,
  `motivos` varchar(5000) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id`, `nombre`, `apellidos`, `provincia`, `ciudad`, `dia`, `hora`, `cp`, `motivos`) VALUES
(1, '', '0', '', '', '0000-00-00', '', 46017, ''),
(2, '', '0', '', '', '0000-00-00', '', 46017, ''),
(3, 'Lorenzo', 'Trif', 'Valencia', 'Valencia', '2018-06-22', '12', 46017, 'asd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario` varchar(400) COLLATE utf8_general_mysql500_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `fecha` date NOT NULL,
  `articulo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario`, `username`, `fecha`, `articulo`) VALUES
('asdasd', 'lorenzo', '2018-06-03', 0),
('asdasdads', 'lorenzo', '2018-06-03', 2),
('ss', 'lorenzo', '2018-06-03', 2),
('asdasd', 'lorenzo', '2018-06-03', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'lorenzo', '1234', ''),
(2, 'agonzalez', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(3, 'lgarcia', 'ea847988ba59727dbf4e34ee75726dc3', ''),
(12, 'lorenzo9', '1234', 'lo@gmail.com'),
(13, 'asd', '123', 'l@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
