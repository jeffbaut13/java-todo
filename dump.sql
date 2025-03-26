-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-03-2025 a las 16:22:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id_art` int(11) NOT NULL,
  `tit_art` varchar(100) NOT NULL,
  `aut_art` varchar(100) NOT NULL,
  `edi_art` varchar(300) NOT NULL,
  `prec_art` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_art`, `tit_art`, `aut_art`, `edi_art`, `prec_art`) VALUES
(1, 'Redes cisco', 'Ernesto Arigasello', 'Alfaomega-Rama', 60),
(2, 'Facebook y Twitter para adultos', 'Veloso Claudio', 'Alfaomega-Rama', 52),
(3, 'Creación de un portal con php y mysql', 'Jacob Pavón Puertas', 'Alfaomega-Rama', 40),
(4, 'Administración de sistemas operativos', 'Julio Gómez López', 'Alfaomega_Rama', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articuloxpedido`
--

CREATE TABLE `articuloxpedido` (
  `id_ped_artped` int(11) NOT NULL,
  `id_art_artped` int(11) NOT NULL,
  `can_art_artped` int(11) NOT NULL,
  `val_ven_art_artped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articuloxpedido`
--

INSERT INTO `articuloxpedido` (`id_ped_artped`, `id_art_artped`, `can_art_artped`, `val_ven_art_artped`) VALUES
(1, 3, 5, 40000),
(1, 4, 12, 55000),
(2, 1, 5, 65000),
(3, 2, 10, 55000),
(3, 3, 12, 45000),
(4, 1, 20, 65000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguramiento`
--

CREATE TABLE `aseguramiento` (
  `asecodigo` int(11) NOT NULL,
  `asefechainicio` date NOT NULL,
  `asefechaexpiracion` date NOT NULL,
  `asevalorasegurado` int(11) NOT NULL,
  `aseestado` varchar(30) NOT NULL,
  `asecosto` int(11) NOT NULL,
  `aseplaca` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aseguramiento`
--

INSERT INTO `aseguramiento` (`asecodigo`, `asefechainicio`, `asefechaexpiracion`, `asevalorasegurado`, `aseestado`, `asecosto`, `aseplaca`) VALUES
(1, '2012-09-30', '2013-09-30', 30000000, 'Vigente', 500000, 'FLL420'),
(2, '2012-09-27', '2013-09-27', 35000000, 'Vigente', 600000, 'DKZ820'),
(3, '2011-09-28', '2012-09-28', 50000000, 'Vigente', 800000, 'KJQ920');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automotores`
--

CREATE TABLE `automotores` (
  `autoplaca` varchar(6) NOT NULL,
  `automarca` varchar(30) NOT NULL,
  `autotipo` int(11) NOT NULL,
  `automodelo` int(11) NOT NULL,
  `autopasajeros` int(11) NOT NULL,
  `autocilindraje` int(11) NOT NULL,
  `autonumchasis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `automotores`
--

INSERT INTO `automotores` (`autoplaca`, `automarca`, `autotipo`, `automodelo`, `autopasajeros`, `autocilindraje`, `autonumchasis`) VALUES
('DKZ820', 'renault stepway', 1, 2008, 5, 1600, 'wywzzz157kk009d45'),
('FLL420', 'Chevrolet corsa ', 1, 2003, 5, 1400, 'wywzzz167kk009d25 '),
('KJQ920', 'kia sportage', 2, 2009, 7, 2000, 'wywzzz157kk009d25 ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cli` varchar(11) NOT NULL,
  `nom_cli` varchar(30) NOT NULL,
  `ape_cli` varchar(30) NOT NULL,
  `dir_cli` varchar(100) NOT NULL,
  `dep_cli` varchar(20) NOT NULL,
  `mes_cum_cli` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cli`, `nom_cli`, `ape_cli`, `dir_cli`, `dep_cli`, `mes_cum_cli`) VALUES
('1098765789', 'Catalina', 'Zapata', 'Av. El Libertador No. 30 - 14', 'Cauca', 'Marzo'),
('13890234', 'Roger', 'Ariza', 'Cra 30 No. 13-45', 'Antioquia', 'Junio'),
('63502718', 'Maritza', 'Rojas', 'Calle 34 No. 14-45', 'Santander', 'Abril'),
('77911956', 'Juan Carlos', 'Arenas', 'Diagonal 23 No. 12-34 apto 101', 'Valle', 'Marzo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañia`
--

CREATE TABLE `compañia` (
  `comnit` varchar(11) NOT NULL,
  `comnombre` varchar(30) NOT NULL,
  `comañofun` int(11) NOT NULL,
  `comreplegal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compañia`
--

INSERT INTO `compañia` (`comnit`, `comnombre`, `comañofun`, `comreplegal`) VALUES
('800890890-2', 'Seguros Atlantida', 1998, 'Carlos López'),
('899999999-1', 'Aseguradora Rojas', 1991, 'Luis Fernando Rojas'),
('899999999-5', 'Seguros del Estado', 2001, 'María Margarita Pérez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `nom_curs` varchar(100) NOT NULL,
  `horas_curs` int(11) NOT NULL,
  `valor_curs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`cod_curso`, `nom_curs`, `horas_curs`, `valor_curs`) VALUES
(149842, 'Fundamentos de bases de datos', 40, 500000),
(250067, 'Fundamentos de SQL', 20, 700000),
(289011, 'Manejo de Mysql', 45, 550000),
(345671, 'Fundamentals of Oracle', 60, 3000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `doc_est` varchar(255) NOT NULL,
  `nom_est` varchar(255) DEFAULT NULL,
  `ape_est` varchar(255) DEFAULT NULL,
  `edad_est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`doc_est`, `nom_est`, `ape_est`, `edad_est`) VALUES
('1.098.098.0', 'Jonatan', 'Ardila', 60),
('1.098.765.6', 'Carlos', 'Martínez', 4),
('1010', 'Brad ', 'Pitt', 55),
('101010', 'Messi', 'Leonel', 36),
('1030575572', 'Javier', 'Diaz', 80),
('1030578777', 'Javier', 'Roa', 45),
('1030772456', 'Rosa', 'Cano', 24),
('1789', 'catery', 'bonee', 31),
('2.750.552', 'cat', 'bon', 31),
('4.750.552', 'cat', 'bon', 31),
('50', '50', 'Cent', 40),
('555', 'Elon', 'Mosk', 55),
('63.502.720', 'María', 'Pérez', 2),
('777', 'abc', 'def', 11),
('7777', 'Ronaldo', 'Cristiano', 40),
('9999', 'catery', 'bonee', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantexcurso`
--

CREATE TABLE `estudiantexcurso` (
  `cod_cur_estcur` int(11) NOT NULL,
  `doc_est_estcur` varchar(30) NOT NULL,
  `fe_ini_estcur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantexcurso`
--

INSERT INTO `estudiantexcurso` (`cod_cur_estcur`, `doc_est_estcur`, `fe_ini_estcur`) VALUES
(250067, '63.502.720', '2011-03-01'),
(289011, '1.098.098.0', '2011-02-01'),
(289011, '1.098.765.6', '2011-02-01'),
(345671, '63.502.720', '2011-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidentes`
--

CREATE TABLE `incidentes` (
  `inciocodigo` int(11) NOT NULL,
  `incifecha` date NOT NULL,
  `inciplaca` varchar(6) NOT NULL,
  `incilugar` varchar(40) NOT NULL,
  `inciantheridos` int(11) NOT NULL,
  `incicanfatalidades` int(11) NOT NULL,
  `incicanautosinvolucrados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `incidentes`
--

INSERT INTO `incidentes` (`inciocodigo`, `incifecha`, `inciplaca`, `incilugar`, `inciantheridos`, `incicanfatalidades`, `incicanautosinvolucrados`) VALUES
(4, '2012-09-30', 'DKZ820', 'Bucaramanga', 0, 0, 2),
(5, '2012-09-27', 'FLL420', 'Girón', 1, 0, 1),
(6, '2011-09-28', 'FLL420', 'Bucaramanga', 1, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_ped` int(11) NOT NULL,
  `id_cli_ped` varchar(11) NOT NULL,
  `fec_ped` date NOT NULL,
  `val_ped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_ped`, `id_cli_ped`, `fec_ped`, `val_ped`) VALUES
(1, '635022718', '2012-02-25', 120000),
(2, '77191956', '2012-04-30', 55000),
(3, '63502718', '2011-10-12', 260000),
(4, '1098765789', '2012-02-25', 1800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `doc_prof` varchar(11) NOT NULL,
  `nom_prof` varchar(30) NOT NULL,
  `ape_prof` varchar(30) NOT NULL,
  `cat_prof` int(11) NOT NULL,
  `sal_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`doc_prof`, `nom_prof`, `ape_prof`, `cat_prof`, `sal_prof`) VALUES
('1.098.765.7', 'Alejandra ', 'Torres', 4, 1100000),
('13.826.789', 'Maritza', 'Angarita', 1, 550000),
('63.502.720', 'Martha', 'Rojas', 2, 690000),
('91.216.904', 'Carlos', 'Pérez', 3, 950000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposautomotores`
--

CREATE TABLE `tiposautomotores` (
  `auttipo` int(11) NOT NULL,
  `autnombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiposautomotores`
--

INSERT INTO `tiposautomotores` (`auttipo`, `autnombre`) VALUES
(1, 'automoviles'),
(2, 'camperos'),
(3, 'camiones');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id_art`);

--
-- Indices de la tabla `articuloxpedido`
--
ALTER TABLE `articuloxpedido`
  ADD KEY `pedido_articulo_fk` (`id_ped_artped`),
  ADD KEY `articulo_pedido_fk` (`id_art_artped`);

--
-- Indices de la tabla `aseguramiento`
--
ALTER TABLE `aseguramiento`
  ADD PRIMARY KEY (`asecodigo`),
  ADD KEY `aseguramientos_automotores_fk` (`aseplaca`);

--
-- Indices de la tabla `automotores`
--
ALTER TABLE `automotores`
  ADD PRIMARY KEY (`autoplaca`),
  ADD KEY `automotores_tipo_fk` (`autotipo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cli`);

--
-- Indices de la tabla `compañia`
--
ALTER TABLE `compañia`
  ADD PRIMARY KEY (`comnit`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`doc_est`);

--
-- Indices de la tabla `estudiantexcurso`
--
ALTER TABLE `estudiantexcurso`
  ADD PRIMARY KEY (`cod_cur_estcur`,`doc_est_estcur`),
  ADD KEY `nombre_estudiantefk` (`doc_est_estcur`);

--
-- Indices de la tabla `incidentes`
--
ALTER TABLE `incidentes`
  ADD PRIMARY KEY (`inciocodigo`),
  ADD KEY `incidentes_automotores_fk` (`inciplaca`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_ped`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`doc_prof`);

--
-- Indices de la tabla `tiposautomotores`
--
ALTER TABLE `tiposautomotores`
  ADD PRIMARY KEY (`auttipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aseguramiento`
--
ALTER TABLE `aseguramiento`
  MODIFY `asecodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `cod_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345672;

--
-- AUTO_INCREMENT de la tabla `incidentes`
--
ALTER TABLE `incidentes`
  MODIFY `inciocodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_ped` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tiposautomotores`
--
ALTER TABLE `tiposautomotores`
  MODIFY `auttipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articuloxpedido`
--
ALTER TABLE `articuloxpedido`
  ADD CONSTRAINT `articulo_pedido_fk` FOREIGN KEY (`id_art_artped`) REFERENCES `articulo` (`id_art`),
  ADD CONSTRAINT `pedido_articulo_fk` FOREIGN KEY (`id_ped_artped`) REFERENCES `pedido` (`id_ped`);

--
-- Filtros para la tabla `aseguramiento`
--
ALTER TABLE `aseguramiento`
  ADD CONSTRAINT `aseguramientos_automotores_fk` FOREIGN KEY (`aseplaca`) REFERENCES `automotores` (`autoplaca`);

--
-- Filtros para la tabla `automotores`
--
ALTER TABLE `automotores`
  ADD CONSTRAINT `automotores_tipo_fk` FOREIGN KEY (`autotipo`) REFERENCES `tiposautomotores` (`auttipo`);

--
-- Filtros para la tabla `estudiantexcurso`
--
ALTER TABLE estudiantexcurso DROP FOREIGN KEY nombre_estudiantefk;

ALTER TABLE estudiantexcurso
  ADD CONSTRAINT nombre_estudiantefk
  FOREIGN KEY (doc_est_estcur)
  REFERENCES estudiante (doc_est)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

--
-- Filtros para la tabla `incidentes`
--
ALTER TABLE `incidentes`
  ADD CONSTRAINT `incidentes_automotores_fk` FOREIGN KEY (`inciplaca`) REFERENCES `automotores` (`autoplaca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
