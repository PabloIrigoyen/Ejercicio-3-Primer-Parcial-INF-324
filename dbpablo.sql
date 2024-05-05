-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2024 a las 22:31:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbpablo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `idPersona`, `contrasena`) VALUES
(1, 0, '123456'),
(2, 2, '11122'),
(3, 5, '1234'),
(6, 3, 'abcd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `idCuenta` int(11) NOT NULL,
  `tipoCuenta` varchar(50) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `numeroCuenta` int(11) NOT NULL,
  `codigoCuenta` int(11) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`idCuenta`, `tipoCuenta`, `idPersona`, `departamento`, `numeroCuenta`, `codigoCuenta`, `saldo`) VALUES
(1, 'Plazo Fijo', 0, 'La Paz', 222456098, 1109872, 10000),
(2, 'Corriente', 0, 'La Paz', 1000789, 22230989, 10900),
(3, 'Plazo Fijo', 2, 'Santa Cruz', 324235, 132354, 12000),
(4, 'Ahorro', 3, 'Cochabamba', 100689, 22230907, 10900),
(5, 'Corriente', 4, 'Tarija', 1005189, 9230989, 60000),
(6, 'Plazo Fijo', 5, 'Santa Cruz', 133389, 3430989, 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

CREATE TABLE `gerente` (
  `idGerente` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gerente`
--

INSERT INTO `gerente` (`idGerente`, `idPersona`, `contrasena`) VALUES
(1, 1, 'abcd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fechaNacimiento` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `nombre`, `apellidos`, `fechaNacimiento`, `departamento`, `direccion`) VALUES
(1, 'Martin David', 'Torres Cuevas', '12/04/1987', 'La Paz', 'Av Salazar Nro 665'),
(0, 'Julio Fernando', 'Fernandez Alcazar', '12/02/1997', 'La Paz', 'Av.Saucedo Nro456'),
(2, 'Franz', 'Reyna Perez', '23/06/2000', 'Santa Cruz', 'Av random nro 345'),
(3, 'Ana Rosa', 'Suarez', '02/03/1999', 'Cochabamba', 'Av.Salazar Nro678'),
(4, 'J', '', '', '', ''),
(4, 'Jose', 'Hernandez', '02/03/1994', 'Tarija', 'Av.Saucedo Nro456'),
(5, 'Diana', 'Becerra', '12/02/1997', 'Santa Cruz', 'Av.Suazo Nro67');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`idCuenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `idCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
