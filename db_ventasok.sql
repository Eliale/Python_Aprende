-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2016 a las 08:34:36
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nombre_cat` varchar(45) NOT NULL,
  `descripcion_cat` varchar(256) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombre_cat`, `descripcion_cat`) VALUES
(1, 'Abarrotes', 'Abarrotes en general'),
(2, 'Refrescos', 'Refrescos en general '),
(4, 'Vinos y licores', 'De venta a mayores de edad'),
(5, 'Farmacia (Sin Receta)', 'Medicamentos sin receta'),
(7, 'Frutas', 'Frutas de temporada'),
(8, 'Carnes', 'Res \n Pollo\n  Pescado'),
(9, 'Enlatados', 'Productos Enlatados'),
(10, 'Bimbo', 'Fam bimbo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre_cli` varchar(45) NOT NULL,
  `rfc` varchar(45) DEFAULT '',
  `dni` varchar(45) DEFAULT '',
  `direccion_cli` varchar(250) DEFAULT '',
  `telefono_cli` varchar(11) DEFAULT '',
  `email_cli` varchar(45) DEFAULT '',
  `observaciones` varchar(250) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombre_cli`, `rfc`, `dni`, `direccion_cli`, `telefono_cli`, `email_cli`, `observaciones`) VALUES
(1, 'Publico en General', 'xxxxxxxxxx', 'xxxxxxxxxx', 'xxxxxxx', '', '', 'Cliente sin registro (Publico en general)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `idCompra` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `IdProveedor` int(11) NOT NULL,
  `fecha_compra` date DEFAULT NULL,
  `serie` varchar(6) DEFAULT '',
  `iva` decimal(10,2) DEFAULT '0.00',
  `descuento` decimal(10,2) DEFAULT '0.00',
  `importe_total` decimal(11,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE IF NOT EXISTS `detalle_compra` (
  `idCompra` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT '0',
  `descuento_art` decimal(10,2) DEFAULT '0.00',
  `sub_total` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE IF NOT EXISTS `detalle_venta` (
  `idVenta` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT '0',
  `descuento` decimal(10,2) DEFAULT '0.00',
  `sub_total` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idProducto` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre_art` varchar(45) NOT NULL,
  `descripcion_art` varchar(250) DEFAULT '',
  `idCategoria` int(11) NOT NULL,
  `stock_actual` int(11) DEFAULT '0',
  `stock_minimo` int(11) DEFAULT '0',
  `precio_compra` decimal(10,2) NOT NULL DEFAULT '0.00',
  `precio_venta` decimal(10,2) NOT NULL DEFAULT '0.00',
  `utilidad` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `rfc` varchar(45) DEFAULT '',
  `dni` varchar(45) DEFAULT '',
  `direccion_pro` varchar(45) DEFAULT '',
  `telefono_pro` varchar(20) DEFAULT '',
  `email_pro` varchar(45) DEFAULT '',
  `url_pro` varchar(250) DEFAULT '',
  `num_cuenta` varchar(45) DEFAULT '',
  `observaciones` varchar(250) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `razon_social`, `rfc`, `dni`, `direccion_pro`, `telefono_pro`, `email_pro`, `url_pro`, `num_cuenta`, `observaciones`) VALUES
(1, 'SIN PROVEEDOR', '', '', '', '', '', '', '', ''),
(3, 'Eli', 'xxxxxxx', '', '', '', 'xedcvgh', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE IF NOT EXISTS `trabajadores` (
  `idTrabajador` int(11) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `nombre_tra` varchar(45) NOT NULL,
  `apellido_tra` varchar(45) DEFAULT '',
  `sexo_tra` varchar(1) DEFAULT 'H',
  `fecha_nacimiento_tra` date DEFAULT NULL,
  `fecha_ingreso_tra` date DEFAULT NULL,
  `dni_tra` varchar(45) DEFAULT '',
  `direccion_tra` varchar(250) DEFAULT '',
  `telefono_tra` varchar(11) DEFAULT '',
  `email_tra` varchar(45) DEFAULT '',
  `nick_usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sueldo` decimal(10,2) DEFAULT '0.00',
  `estado` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`idTrabajador`, `id_Usuario`, `nombre_tra`, `apellido_tra`, `sexo_tra`, `fecha_nacimiento_tra`, `fecha_ingreso_tra`, `dni_tra`, `direccion_tra`, `telefono_tra`, `email_tra`, `nick_usuario`, `password`, `sueldo`, `estado`) VALUES
(1, 1, 'El Programador', 's', 'H', '1991-07-19', '2016-02-11', '', ' Calle Conocida', '', ' elialejandros@gmail.com', 'elisama', 'theroom', '50000.50', 1),
(2, 2, 'Dr Goku', 'Son', 'H', '1989-02-12', '2016-02-13', '', 'Montaña Pao', 'a', 'a', 'goku', 'goku', '12223.00', 1),
(3, 3, 'Vegeta', 'Chan', 'H', '1999-02-28', '2016-02-13', '', 'Corporacion Capsula', '', '', 'vegeta', 'chan', '23657.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `puesto` varchar(45) NOT NULL,
  `reg_venta` int(1) DEFAULT '0',
  `reg_compra` int(1) DEFAULT '0',
  `reg_producto` int(1) DEFAULT '0',
  `reg_empleado` int(1) DEFAULT '0',
  `reg_cliente` int(1) DEFAULT '0',
  `reg_categoria` int(1) DEFAULT '0',
  `reg_usuario` int(1) DEFAULT '0',
  `reg_proveedor` int(1) DEFAULT '0',
  `anula_venta` int(1) DEFAULT '0',
  `anula_compra` int(1) DEFAULT '0',
  `info_ventas` int(1) DEFAULT '0',
  `info_detalle_venta` int(1) DEFAULT '0',
  `info_compras` int(1) DEFAULT '0',
  `info_detalle_compra` int(1) DEFAULT '0',
  `estadisticas` int(1) DEFAULT '0',
  `respaldar_base` int(1) DEFAULT '0',
  `restaurar_base` int(1) DEFAULT '0',
  `info_caja` int(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `puesto`, `reg_venta`, `reg_compra`, `reg_producto`, `reg_empleado`, `reg_cliente`, `reg_categoria`, `reg_usuario`, `reg_proveedor`, `anula_venta`, `anula_compra`, `info_ventas`, `info_detalle_venta`, `info_compras`, `info_detalle_compra`, `estadisticas`, `respaldar_base`, `restaurar_base`, `info_caja`) VALUES
(1, 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0),
(2, 'Vendedor', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(3, 'Almacenista', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `idVenta` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `serie` varchar(6) DEFAULT '',
  `iva` decimal(10,2) DEFAULT '0.00',
  `valor_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`), ADD UNIQUE KEY `nombre_cat_UNIQUE` (`nombre_cat`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompra`), ADD KEY `idTrabajador_idx` (`idTrabajador`), ADD KEY `idProveedor_idx` (`IdProveedor`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD KEY `idCompra_idx` (`idCompra`), ADD KEY `idProducto_idx` (`idProducto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD KEY `idProducto_idx` (`idProducto`), ADD KEY `idVenta_idx` (`idVenta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`), ADD UNIQUE KEY `codigo_UNIQUE` (`codigo`), ADD KEY `idCategoria_idx` (`idCategoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`), ADD UNIQUE KEY `razon_social_UNIQUE` (`razon_social`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`idTrabajador`), ADD UNIQUE KEY `nick_usuario_UNIQUE` (`nick_usuario`), ADD KEY `idUsuario_idx` (`id_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`), ADD UNIQUE KEY `puesto_UNIQUE` (`puesto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`), ADD KEY `idClientefk_idx` (`idCliente`), ADD KEY `idTrabajadorfk_idx` (`idTrabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `idTrabajador` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
ADD CONSTRAINT `idProveedor` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `idTrabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajadores` (`idTrabajador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
ADD CONSTRAINT `idCompra` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`idCompra`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `idProducto` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
ADD CONSTRAINT `idProductofk` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `idVentafk` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`idVenta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
ADD CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
ADD CONSTRAINT `idUsuario` FOREIGN KEY (`id_Usuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
ADD CONSTRAINT `idClientefk` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `idTrabajadorfk` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajadores` (`idTrabajador`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
