-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 18:23:10
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafio_acuña_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `Numero` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Presupuesto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`Numero`, `Nombre`, `Presupuesto`) VALUES
(11, 'Calidad', '36000'),
(14, 'Informática', '72000'),
(15, 'Gestión', '85500'),
(16, 'Comunicación', '67500'),
(37, 'Desarrollo', '58500'),
(77, 'Investigación', '36000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `Nro_Departamento` int(11) NOT NULL,
  `Activo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `DNI`, `Nombre`, `Apellido`, `Nro_Departamento`, `Activo`) VALUES
(1, 31096678, 'Juan', 'Lopez', 14, 0),
(2, 31096675, 'Martin', 'Zarabia', 14, 0),
(3, 34269854, 'Jose', 'Velez', 14, 0),
(4, 41369852, 'Paula', 'Madariaga', 14, 0),
(5, 33698521, 'Pedro', 'Perez', 14, 0),
(6, 32698547, 'Mariana', 'Lopez', 15, 1),
(7, 42369854, 'Abril', 'Sanchez', 37, 1),
(8, 36125896, 'Julia', 'Marti', 14, 0),
(9, 36985471, 'Omar', 'Diaz', 15, 1),
(10, 32145698, 'Guadalupe', 'Perez', 14, 0),
(11, 32369854, 'Bernardo', 'Pantera', 37, 1),
(12, 36125965, 'Lucia', 'Pesaro', 14, 0),
(13, 31236985, 'Maria', 'Diamante', 14, 0),
(15, 89267109, 'Esther', 'Vazquez', 11, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`Numero`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DNI_IDX` (`DNI`),
  ADD KEY `Nro_Departamento` (`Nro_Departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Nro_Departamento`) REFERENCES `departamentos` (`Numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
