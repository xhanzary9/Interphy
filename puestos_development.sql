-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-04-2017 a las 05:03:21
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `puestos_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Administrador`
--

CREATE TABLE `Administrador` (
  `idAdmin` int(11) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `contrasenia` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Califica`
--

CREATE TABLE `Califica` (
  `idUsuario` int(21) NOT NULL,
  `idPuesto` int(21) NOT NULL,
  `comentario` varchar(300) NOT NULL,
  `estrellas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comida`
--

CREATE TABLE `Comida` (
  `idComida` int(21) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `costo` float(4,2) NOT NULL,
  `idPuesto` int(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Informacion`
--

CREATE TABLE `Informacion` (
  `idPuesto` int(21) NOT NULL,
  `horario` date NOT NULL,
  `info_general` varchar(300) NOT NULL,
  `coordenadas` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Puesto`
--

CREATE TABLE `Puesto` (
  `idPuesto` int(21) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `numPuestoUNAM` int(11) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `contrasenia` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Administrador`
--
ALTER TABLE `Administrador`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indices de la tabla `Califica`
--
ALTER TABLE `Califica`
  ADD UNIQUE KEY `fk_usuario` (`idUsuario`),
  ADD UNIQUE KEY `fk_puesto` (`idPuesto`) USING BTREE;

--
-- Indices de la tabla `Comida`
--
ALTER TABLE `Comida`
  ADD PRIMARY KEY (`idComida`),
  ADD UNIQUE KEY `fk_idPuestoComida` (`idPuesto`) USING BTREE;

--
-- Indices de la tabla `Informacion`
--
ALTER TABLE `Informacion`
  ADD UNIQUE KEY `fk_idPuesto` (`idPuesto`);

--
-- Indices de la tabla `Puesto`
--
ALTER TABLE `Puesto`
  ADD PRIMARY KEY (`idPuesto`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Administrador`
--
ALTER TABLE `Administrador`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Comida`
--
ALTER TABLE `Comida`
  MODIFY `idComida` int(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Puesto`
--
ALTER TABLE `Puesto`
  MODIFY `idPuesto` int(21) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Califica`
--
ALTER TABLE `Califica`
  ADD CONSTRAINT `fk_idPuesto` FOREIGN KEY (`idPuesto`) REFERENCES `Puesto` (`idPuesto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Comida`
--
ALTER TABLE `Comida`
  ADD CONSTRAINT `fk_idPuestoComida` FOREIGN KEY (`idPuesto`) REFERENCES `Puesto` (`idPuesto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Informacion`
--
ALTER TABLE `Informacion`
  ADD CONSTRAINT `fk_idPuestoinfo` FOREIGN KEY (`idPuesto`) REFERENCES `Puesto` (`idPuesto`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
