-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-12-2016 a las 02:34:24
-- Versión del servidor: 5.6.33
-- Versión de PHP: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `chart_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_master`
--

CREATE TABLE `sale_master` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_description` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `branch_description` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `month_sale` int(2) NOT NULL,
  `month_description` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `year_sale` int(4) NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sale_master`
--

INSERT INTO `sale_master` (`id`, `store_id`, `store_description`, `branch_id`, `branch_description`, `month_sale`, `month_description`, `year_sale`, `amount`) VALUES
(1, 1, 'Tienda 1', 1, 'Sucursal 1', 1, 'Enero', 2013, '9100'),
(2, 1, 'Tienda 1', 1, 'Sucursal 1', 2, 'Febrero', 2013, '4200'),
(3, 1, 'Tienda 1', 1, 'Sucursal 1', 3, 'Marzo', 2013, '7400'),
(4, 1, 'Tienda 1', 1, 'Sucursal 1', 4, 'Abril', 2013, '6900'),
(5, 1, 'Tienda 1', 1, 'Sucursal 1', 5, 'Mayo', 2013, '8000'),
(6, 1, 'Tienda 1', 1, 'Sucursal 1', 6, 'Junio', 2013, '9200'),
(7, 1, 'Tienda 1', 1, 'Sucursal 1', 7, 'Julio', 2013, '3300'),
(8, 1, 'Tienda 1', 1, 'Sucursal 1', 8, 'Agosto', 2013, '4900'),
(9, 1, 'Tienda 1', 1, 'Sucursal 1', 9, 'Septiembre', 2013, '1700'),
(10, 1, 'Tienda 1', 1, 'Sucursal 1', 10, 'Octubre', 2013, '5600'),
(11, 1, 'Tienda 1', 1, 'Sucursal 1', 11, 'Noviembre', 2013, '6400'),
(12, 1, 'Tienda 1', 1, 'Sucursal 1', 12, 'Diciembre', 2013, '2300'),
(13, 1, 'Tienda 1', 1, 'Sucursal 1', 1, 'Enero', 2014, '4600'),
(14, 1, 'Tienda 1', 1, 'Sucursal 1', 2, 'Febrero', 2014, '5900'),
(15, 1, 'Tienda 1', 1, 'Sucursal 1', 3, 'Marzo', 2014, '6500'),
(16, 1, 'Tienda 1', 1, 'Sucursal 1', 4, 'Abril', 2014, '6700'),
(17, 1, 'Tienda 1', 1, 'Sucursal 1', 5, 'Mayo', 2014, '8400'),
(18, 1, 'Tienda 1', 1, 'Sucursal 1', 6, 'Junio', 2014, '6000'),
(19, 1, 'Tienda 1', 1, 'Sucursal 1', 7, 'Julio', 2014, '2500'),
(20, 1, 'Tienda 1', 1, 'Sucursal 1', 8, 'Agosto', 2014, '1900'),
(21, 1, 'Tienda 1', 1, 'Sucursal 1', 9, 'Septiembre', 2014, '3300'),
(22, 1, 'Tienda 1', 1, 'Sucursal 1', 10, 'Octubre', 2014, '5600'),
(23, 1, 'Tienda 1', 1, 'Sucursal 1', 11, 'Noviembre', 2014, '1700'),
(24, 1, 'Tienda 1', 1, 'Sucursal 1', 12, 'Diciembre', 2014, '6200'),
(25, 1, 'Tienda 1', 1, 'Sucursal 1', 1, 'Enero', 2015, '6500'),
(26, 1, 'Tienda 1', 1, 'Sucursal 1', 2, 'Febrero', 2015, '9100'),
(27, 1, 'Tienda 1', 1, 'Sucursal 1', 3, 'Marzo', 2015, '1200'),
(28, 1, 'Tienda 1', 1, 'Sucursal 1', 4, 'Abril', 2015, '5800'),
(29, 1, 'Tienda 1', 1, 'Sucursal 1', 5, 'Mayo', 2015, '1200'),
(30, 1, 'Tienda 1', 1, 'Sucursal 1', 6, 'Junio', 2015, '1500'),
(31, 1, 'Tienda 1', 1, 'Sucursal 1', 7, 'Julio', 2015, '4800'),
(32, 1, 'Tienda 1', 1, 'Sucursal 1', 8, 'Agosto', 2015, '9300'),
(33, 1, 'Tienda 1', 1, 'Sucursal 1', 9, 'Septiembre', 2015, '4800'),
(34, 1, 'Tienda 1', 1, 'Sucursal 1', 10, 'Octubre', 2015, '2300'),
(35, 1, 'Tienda 1', 1, 'Sucursal 1', 11, 'Noviembre', 2015, '6300'),
(36, 1, 'Tienda 1', 1, 'Sucursal 1', 12, 'Diciembre', 2015, '2900'),
(37, 1, 'Tienda 1', 1, 'Sucursal 1', 1, 'Enero', 2016, '1500'),
(38, 1, 'Tienda 1', 1, 'Sucursal 1', 2, 'Febrero', 2016, '8700'),
(39, 1, 'Tienda 1', 1, 'Sucursal 1', 3, 'Marzo', 2016, '6900'),
(40, 1, 'Tienda 1', 1, 'Sucursal 1', 4, 'Abril', 2016, '2200'),
(41, 1, 'Tienda 1', 1, 'Sucursal 1', 5, 'Mayo', 2016, '4300'),
(42, 1, 'Tienda 1', 1, 'Sucursal 1', 6, 'Junio', 2016, '3300'),
(43, 1, 'Tienda 1', 1, 'Sucursal 1', 7, 'Julio', 2016, '3600'),
(44, 1, 'Tienda 1', 1, 'Sucursal 1', 8, 'Agosto', 2016, '7900'),
(45, 1, 'Tienda 1', 1, 'Sucursal 1', 9, 'Septiembre', 2016, '8300'),
(46, 1, 'Tienda 1', 1, 'Sucursal 1', 10, 'Octubre', 2016, '9100'),
(47, 1, 'Tienda 1', 1, 'Sucursal 1', 11, 'Noviembre', 2016, '4700'),
(48, 1, 'Tienda 1', 1, 'Sucursal 1', 12, 'Diciembre', 2016, '6700'),
(49, 1, 'Tienda 1', 2, 'Sucursal 2', 1, 'Enero', 2013, '5200'),
(50, 1, 'Tienda 1', 2, 'Sucursal 2', 2, 'Febrero', 2013, '6200'),
(51, 1, 'Tienda 1', 2, 'Sucursal 2', 3, 'Marzo', 2013, '7600'),
(52, 1, 'Tienda 1', 2, 'Sucursal 2', 4, 'Abril', 2013, '7500'),
(53, 1, 'Tienda 1', 2, 'Sucursal 2', 5, 'Mayo', 2013, '1800'),
(54, 1, 'Tienda 1', 2, 'Sucursal 2', 6, 'Junio', 2013, '8400'),
(55, 1, 'Tienda 1', 2, 'Sucursal 2', 7, 'Julio', 2013, '3800'),
(56, 1, 'Tienda 1', 2, 'Sucursal 2', 8, 'Agosto', 2013, '7300'),
(57, 1, 'Tienda 1', 2, 'Sucursal 2', 9, 'Septiembre', 2013, '7500'),
(58, 1, 'Tienda 1', 2, 'Sucursal 2', 10, 'Octubre', 2013, '4100'),
(59, 1, 'Tienda 1', 2, 'Sucursal 2', 11, 'Noviembre', 2013, '3200'),
(60, 1, 'Tienda 1', 2, 'Sucursal 2', 12, 'Diciembre', 2013, '7800'),
(61, 1, 'Tienda 1', 2, 'Sucursal 2', 1, 'Enero', 2014, '4700'),
(62, 1, 'Tienda 1', 2, 'Sucursal 2', 2, 'Febrero', 2014, '7000'),
(63, 1, 'Tienda 1', 2, 'Sucursal 2', 3, 'Marzo', 2014, '7100'),
(64, 1, 'Tienda 1', 2, 'Sucursal 2', 4, 'Abril', 2014, '8500'),
(65, 1, 'Tienda 1', 2, 'Sucursal 2', 5, 'Mayo', 2014, '8300'),
(66, 1, 'Tienda 1', 2, 'Sucursal 2', 6, 'Junio', 2014, '3500'),
(67, 1, 'Tienda 1', 2, 'Sucursal 2', 7, 'Julio', 2014, '1400'),
(68, 1, 'Tienda 1', 2, 'Sucursal 2', 8, 'Agosto', 2014, '8900'),
(69, 1, 'Tienda 1', 2, 'Sucursal 2', 9, 'Septiembre', 2014, '2200'),
(70, 1, 'Tienda 1', 2, 'Sucursal 2', 10, 'Octubre', 2014, '7300'),
(71, 1, 'Tienda 1', 2, 'Sucursal 2', 11, 'Noviembre', 2014, '1100'),
(72, 1, 'Tienda 1', 2, 'Sucursal 2', 12, 'Diciembre', 2014, '5600'),
(73, 1, 'Tienda 1', 2, 'Sucursal 2', 1, 'Enero', 2015, '9700'),
(74, 1, 'Tienda 1', 2, 'Sucursal 2', 2, 'Febrero', 2015, '3700'),
(75, 1, 'Tienda 1', 2, 'Sucursal 2', 3, 'Marzo', 2015, '3500'),
(76, 1, 'Tienda 1', 2, 'Sucursal 2', 4, 'Abril', 2015, '8000'),
(77, 1, 'Tienda 1', 2, 'Sucursal 2', 5, 'Mayo', 2015, '2900'),
(78, 1, 'Tienda 1', 2, 'Sucursal 2', 6, 'Junio', 2015, '7200'),
(79, 1, 'Tienda 1', 2, 'Sucursal 2', 7, 'Julio', 2015, '4700'),
(80, 1, 'Tienda 1', 2, 'Sucursal 2', 8, 'Agosto', 2015, '7100'),
(81, 1, 'Tienda 1', 2, 'Sucursal 2', 9, 'Septiembre', 2015, '3500'),
(82, 1, 'Tienda 1', 2, 'Sucursal 2', 10, 'Octubre', 2015, '2400'),
(83, 1, 'Tienda 1', 2, 'Sucursal 2', 11, 'Noviembre', 2015, '4700'),
(84, 1, 'Tienda 1', 2, 'Sucursal 2', 12, 'Diciembre', 2015, '4400'),
(85, 1, 'Tienda 1', 2, 'Sucursal 2', 1, 'Enero', 2016, '9800'),
(86, 1, 'Tienda 1', 2, 'Sucursal 2', 2, 'Febrero', 2016, '7500'),
(87, 1, 'Tienda 1', 2, 'Sucursal 2', 3, 'Marzo', 2016, '1700'),
(88, 1, 'Tienda 1', 2, 'Sucursal 2', 4, 'Abril', 2016, '7400'),
(89, 1, 'Tienda 1', 2, 'Sucursal 2', 5, 'Mayo', 2016, '1600'),
(90, 1, 'Tienda 1', 2, 'Sucursal 2', 6, 'Junio', 2016, '4000'),
(91, 1, 'Tienda 1', 2, 'Sucursal 2', 7, 'Julio', 2016, '5200'),
(92, 1, 'Tienda 1', 2, 'Sucursal 2', 8, 'Agosto', 2016, '5300'),
(93, 1, 'Tienda 1', 2, 'Sucursal 2', 9, 'Septiembre', 2016, '1000'),
(94, 1, 'Tienda 1', 2, 'Sucursal 2', 10, 'Octubre', 2016, '2400'),
(95, 1, 'Tienda 1', 2, 'Sucursal 2', 11, 'Noviembre', 2016, '3900'),
(96, 1, 'Tienda 1', 2, 'Sucursal 2', 12, 'Diciembre', 2016, '8400'),
(97, 1, 'Tienda 1', 3, 'Sucursal 3', 1, 'Enero', 2013, '4900'),
(98, 1, 'Tienda 1', 3, 'Sucursal 3', 2, 'Febrero', 2013, '4400'),
(99, 1, 'Tienda 1', 3, 'Sucursal 3', 3, 'Marzo', 2013, '7300'),
(100, 1, 'Tienda 1', 3, 'Sucursal 3', 4, 'Abril', 2013, '6200'),
(101, 1, 'Tienda 1', 3, 'Sucursal 3', 5, 'Mayo', 2013, '1800'),
(102, 1, 'Tienda 1', 3, 'Sucursal 3', 6, 'Junio', 2013, '7500'),
(103, 1, 'Tienda 1', 3, 'Sucursal 3', 7, 'Julio', 2013, '1800'),
(104, 1, 'Tienda 1', 3, 'Sucursal 3', 8, 'Agosto', 2013, '1500'),
(105, 1, 'Tienda 1', 3, 'Sucursal 3', 9, 'Septiembre', 2013, '1300'),
(106, 1, 'Tienda 1', 3, 'Sucursal 3', 10, 'Octubre', 2013, '4400'),
(107, 1, 'Tienda 1', 3, 'Sucursal 3', 11, 'Noviembre', 2013, '8500'),
(108, 1, 'Tienda 1', 3, 'Sucursal 3', 12, 'Diciembre', 2013, '3200'),
(109, 1, 'Tienda 1', 3, 'Sucursal 3', 1, 'Enero', 2014, '1600'),
(110, 1, 'Tienda 1', 3, 'Sucursal 3', 2, 'Febrero', 2014, '3300'),
(111, 1, 'Tienda 1', 3, 'Sucursal 3', 3, 'Marzo', 2014, '9400'),
(112, 1, 'Tienda 1', 3, 'Sucursal 3', 4, 'Abril', 2014, '4200'),
(113, 1, 'Tienda 1', 3, 'Sucursal 3', 5, 'Mayo', 2014, '4800'),
(114, 1, 'Tienda 1', 3, 'Sucursal 3', 6, 'Junio', 2014, '4100'),
(115, 1, 'Tienda 1', 3, 'Sucursal 3', 7, 'Julio', 2014, '7600'),
(116, 1, 'Tienda 1', 3, 'Sucursal 3', 8, 'Agosto', 2014, '4600'),
(117, 1, 'Tienda 1', 3, 'Sucursal 3', 9, 'Septiembre', 2014, '1700'),
(118, 1, 'Tienda 1', 3, 'Sucursal 3', 10, 'Octubre', 2014, '8400'),
(119, 1, 'Tienda 1', 3, 'Sucursal 3', 11, 'Noviembre', 2014, '2100'),
(120, 1, 'Tienda 1', 3, 'Sucursal 3', 12, 'Diciembre', 2014, '2300'),
(121, 1, 'Tienda 1', 3, 'Sucursal 3', 1, 'Enero', 2015, '2400'),
(122, 1, 'Tienda 1', 3, 'Sucursal 3', 2, 'Febrero', 2015, '6400'),
(123, 1, 'Tienda 1', 3, 'Sucursal 3', 3, 'Marzo', 2015, '6700'),
(124, 1, 'Tienda 1', 3, 'Sucursal 3', 4, 'Abril', 2015, '2500'),
(125, 1, 'Tienda 1', 3, 'Sucursal 3', 5, 'Mayo', 2015, '7900'),
(126, 1, 'Tienda 1', 3, 'Sucursal 3', 6, 'Junio', 2015, '9600'),
(127, 1, 'Tienda 1', 3, 'Sucursal 3', 7, 'Julio', 2015, '9900'),
(128, 1, 'Tienda 1', 3, 'Sucursal 3', 8, 'Agosto', 2015, '2900'),
(129, 1, 'Tienda 1', 3, 'Sucursal 3', 9, 'Septiembre', 2015, '4000'),
(130, 1, 'Tienda 1', 3, 'Sucursal 3', 10, 'Octubre', 2015, '7300'),
(131, 1, 'Tienda 1', 3, 'Sucursal 3', 11, 'Noviembre', 2015, '8100'),
(132, 1, 'Tienda 1', 3, 'Sucursal 3', 12, 'Diciembre', 2015, '4800'),
(133, 1, 'Tienda 1', 3, 'Sucursal 3', 1, 'Enero', 2016, '4800'),
(134, 1, 'Tienda 1', 3, 'Sucursal 3', 2, 'Febrero', 2016, '8900'),
(135, 1, 'Tienda 1', 3, 'Sucursal 3', 3, 'Marzo', 2016, '5400'),
(136, 1, 'Tienda 1', 3, 'Sucursal 3', 4, 'Abril', 2016, '5100'),
(137, 1, 'Tienda 1', 3, 'Sucursal 3', 5, 'Mayo', 2016, '3400'),
(138, 1, 'Tienda 1', 3, 'Sucursal 3', 6, 'Junio', 2016, '3900'),
(139, 1, 'Tienda 1', 3, 'Sucursal 3', 7, 'Julio', 2016, '7400'),
(140, 1, 'Tienda 1', 3, 'Sucursal 3', 8, 'Agosto', 2016, '4000'),
(141, 1, 'Tienda 1', 3, 'Sucursal 3', 9, 'Septiembre', 2016, '6300'),
(142, 1, 'Tienda 1', 3, 'Sucursal 3', 10, 'Octubre', 2016, '6800'),
(143, 1, 'Tienda 1', 3, 'Sucursal 3', 11, 'Noviembre', 2016, '7300'),
(144, 1, 'Tienda 1', 3, 'Sucursal 3', 12, 'Diciembre', 2016, '1100'),
(145, 1, 'Tienda 1', 4, 'Sucursal 4', 1, 'Enero', 2013, '1000'),
(146, 1, 'Tienda 1', 4, 'Sucursal 4', 2, 'Febrero', 2013, '4900'),
(147, 1, 'Tienda 1', 4, 'Sucursal 4', 3, 'Marzo', 2013, '4800'),
(148, 1, 'Tienda 1', 4, 'Sucursal 4', 4, 'Abril', 2013, '1700'),
(149, 1, 'Tienda 1', 4, 'Sucursal 4', 5, 'Mayo', 2013, '3300'),
(150, 1, 'Tienda 1', 4, 'Sucursal 4', 6, 'Junio', 2013, '6000'),
(151, 1, 'Tienda 1', 4, 'Sucursal 4', 7, 'Julio', 2013, '3100'),
(152, 1, 'Tienda 1', 4, 'Sucursal 4', 8, 'Agosto', 2013, '4700'),
(153, 1, 'Tienda 1', 4, 'Sucursal 4', 9, 'Septiembre', 2013, '2400'),
(154, 1, 'Tienda 1', 4, 'Sucursal 4', 10, 'Octubre', 2013, '8900'),
(155, 1, 'Tienda 1', 4, 'Sucursal 4', 11, 'Noviembre', 2013, '6300'),
(156, 1, 'Tienda 1', 4, 'Sucursal 4', 12, 'Diciembre', 2013, '9400'),
(157, 1, 'Tienda 1', 4, 'Sucursal 4', 1, 'Enero', 2014, '8600'),
(158, 1, 'Tienda 1', 4, 'Sucursal 4', 2, 'Febrero', 2014, '6200'),
(159, 1, 'Tienda 1', 4, 'Sucursal 4', 3, 'Marzo', 2014, '2300'),
(160, 1, 'Tienda 1', 4, 'Sucursal 4', 4, 'Abril', 2014, '2700'),
(161, 1, 'Tienda 1', 4, 'Sucursal 4', 5, 'Mayo', 2014, '3500'),
(162, 1, 'Tienda 1', 4, 'Sucursal 4', 6, 'Junio', 2014, '9500'),
(163, 1, 'Tienda 1', 4, 'Sucursal 4', 7, 'Julio', 2014, '6600'),
(164, 1, 'Tienda 1', 4, 'Sucursal 4', 8, 'Agosto', 2014, '7300'),
(165, 1, 'Tienda 1', 4, 'Sucursal 4', 9, 'Septiembre', 2014, '8500'),
(166, 1, 'Tienda 1', 4, 'Sucursal 4', 10, 'Octubre', 2014, '2000'),
(167, 1, 'Tienda 1', 4, 'Sucursal 4', 11, 'Noviembre', 2014, '2500'),
(168, 1, 'Tienda 1', 4, 'Sucursal 4', 12, 'Diciembre', 2014, '1900'),
(169, 1, 'Tienda 1', 4, 'Sucursal 4', 1, 'Enero', 2015, '5000'),
(170, 1, 'Tienda 1', 4, 'Sucursal 4', 2, 'Febrero', 2015, '8900'),
(171, 1, 'Tienda 1', 4, 'Sucursal 4', 3, 'Marzo', 2015, '5000'),
(172, 1, 'Tienda 1', 4, 'Sucursal 4', 4, 'Abril', 2015, '1300'),
(173, 1, 'Tienda 1', 4, 'Sucursal 4', 5, 'Mayo', 2015, '5700'),
(174, 1, 'Tienda 1', 4, 'Sucursal 4', 6, 'Junio', 2015, '2300'),
(175, 1, 'Tienda 1', 4, 'Sucursal 4', 7, 'Julio', 2015, '1500'),
(176, 1, 'Tienda 1', 4, 'Sucursal 4', 8, 'Agosto', 2015, '5800'),
(177, 1, 'Tienda 1', 4, 'Sucursal 4', 9, 'Septiembre', 2015, '6200'),
(178, 1, 'Tienda 1', 4, 'Sucursal 4', 10, 'Octubre', 2015, '5400'),
(179, 1, 'Tienda 1', 4, 'Sucursal 4', 11, 'Noviembre', 2015, '6500'),
(180, 1, 'Tienda 1', 4, 'Sucursal 4', 12, 'Diciembre', 2015, '8600'),
(181, 1, 'Tienda 1', 4, 'Sucursal 4', 1, 'Enero', 2016, '1400'),
(182, 1, 'Tienda 1', 4, 'Sucursal 4', 2, 'Febrero', 2016, '8700'),
(183, 1, 'Tienda 1', 4, 'Sucursal 4', 3, 'Marzo', 2016, '3300'),
(184, 1, 'Tienda 1', 4, 'Sucursal 4', 4, 'Abril', 2016, '2900'),
(185, 1, 'Tienda 1', 4, 'Sucursal 4', 5, 'Mayo', 2016, '7600'),
(186, 1, 'Tienda 1', 4, 'Sucursal 4', 6, 'Junio', 2016, '8700'),
(187, 1, 'Tienda 1', 4, 'Sucursal 4', 7, 'Julio', 2016, '2300'),
(188, 1, 'Tienda 1', 4, 'Sucursal 4', 8, 'Agosto', 2016, '6200'),
(189, 1, 'Tienda 1', 4, 'Sucursal 4', 9, 'Septiembre', 2016, '4900'),
(190, 1, 'Tienda 1', 4, 'Sucursal 4', 10, 'Octubre', 2016, '3700'),
(191, 1, 'Tienda 1', 4, 'Sucursal 4', 11, 'Noviembre', 2016, '7900'),
(192, 1, 'Tienda 1', 4, 'Sucursal 4', 12, 'Diciembre', 2016, '7500'),
(193, 1, 'Tienda 1', 5, 'Sucursal 5', 1, 'Enero', 2013, '3200'),
(194, 1, 'Tienda 1', 5, 'Sucursal 5', 2, 'Febrero', 2013, '4600'),
(195, 1, 'Tienda 1', 5, 'Sucursal 5', 3, 'Marzo', 2013, '4900'),
(196, 1, 'Tienda 1', 5, 'Sucursal 5', 4, 'Abril', 2013, '1700'),
(197, 1, 'Tienda 1', 5, 'Sucursal 5', 5, 'Mayo', 2013, '5600'),
(198, 1, 'Tienda 1', 5, 'Sucursal 5', 6, 'Junio', 2013, '6400'),
(199, 1, 'Tienda 1', 5, 'Sucursal 5', 7, 'Julio', 2013, '2600'),
(200, 1, 'Tienda 1', 5, 'Sucursal 5', 8, 'Agosto', 2013, '9700'),
(201, 1, 'Tienda 1', 5, 'Sucursal 5', 9, 'Septiembre', 2013, '5300'),
(202, 1, 'Tienda 1', 5, 'Sucursal 5', 10, 'Octubre', 2013, '6600'),
(203, 1, 'Tienda 1', 5, 'Sucursal 5', 11, 'Noviembre', 2013, '1100'),
(204, 1, 'Tienda 1', 5, 'Sucursal 5', 12, 'Diciembre', 2013, '1100'),
(205, 1, 'Tienda 1', 5, 'Sucursal 5', 1, 'Enero', 2014, '7900'),
(206, 1, 'Tienda 1', 5, 'Sucursal 5', 2, 'Febrero', 2014, '1600'),
(207, 1, 'Tienda 1', 5, 'Sucursal 5', 3, 'Marzo', 2014, '5900'),
(208, 1, 'Tienda 1', 5, 'Sucursal 5', 4, 'Abril', 2014, '4200'),
(209, 1, 'Tienda 1', 5, 'Sucursal 5', 5, 'Mayo', 2014, '6100'),
(210, 1, 'Tienda 1', 5, 'Sucursal 5', 6, 'Junio', 2014, '2400'),
(211, 1, 'Tienda 1', 5, 'Sucursal 5', 7, 'Julio', 2014, '2800'),
(212, 1, 'Tienda 1', 5, 'Sucursal 5', 8, 'Agosto', 2014, '6500'),
(213, 1, 'Tienda 1', 5, 'Sucursal 5', 9, 'Septiembre', 2014, '1100'),
(214, 1, 'Tienda 1', 5, 'Sucursal 5', 10, 'Octubre', 2014, '5200'),
(215, 1, 'Tienda 1', 5, 'Sucursal 5', 11, 'Noviembre', 2014, '8500'),
(216, 1, 'Tienda 1', 5, 'Sucursal 5', 12, 'Diciembre', 2014, '7800'),
(217, 1, 'Tienda 1', 5, 'Sucursal 5', 1, 'Enero', 2015, '3900'),
(218, 1, 'Tienda 1', 5, 'Sucursal 5', 2, 'Febrero', 2015, '9900'),
(219, 1, 'Tienda 1', 5, 'Sucursal 5', 3, 'Marzo', 2015, '4100'),
(220, 1, 'Tienda 1', 5, 'Sucursal 5', 4, 'Abril', 2015, '7900'),
(221, 1, 'Tienda 1', 5, 'Sucursal 5', 5, 'Mayo', 2015, '3600'),
(222, 1, 'Tienda 1', 5, 'Sucursal 5', 6, 'Junio', 2015, '2100'),
(223, 1, 'Tienda 1', 5, 'Sucursal 5', 7, 'Julio', 2015, '5400'),
(224, 1, 'Tienda 1', 5, 'Sucursal 5', 8, 'Agosto', 2015, '5900'),
(225, 1, 'Tienda 1', 5, 'Sucursal 5', 9, 'Septiembre', 2015, '5700'),
(226, 1, 'Tienda 1', 5, 'Sucursal 5', 10, 'Octubre', 2015, '9300'),
(227, 1, 'Tienda 1', 5, 'Sucursal 5', 11, 'Noviembre', 2015, '6600'),
(228, 1, 'Tienda 1', 5, 'Sucursal 5', 12, 'Diciembre', 2015, '1400'),
(229, 1, 'Tienda 1', 5, 'Sucursal 5', 1, 'Enero', 2016, '5700'),
(230, 1, 'Tienda 1', 5, 'Sucursal 5', 2, 'Febrero', 2016, '8300'),
(231, 1, 'Tienda 1', 5, 'Sucursal 5', 3, 'Marzo', 2016, '1100'),
(232, 1, 'Tienda 1', 5, 'Sucursal 5', 4, 'Abril', 2016, '1100'),
(233, 1, 'Tienda 1', 5, 'Sucursal 5', 5, 'Mayo', 2016, '5000'),
(234, 1, 'Tienda 1', 5, 'Sucursal 5', 6, 'Junio', 2016, '1200'),
(235, 1, 'Tienda 1', 5, 'Sucursal 5', 7, 'Julio', 2016, '1200'),
(236, 1, 'Tienda 1', 5, 'Sucursal 5', 8, 'Agosto', 2016, '3000'),
(237, 1, 'Tienda 1', 5, 'Sucursal 5', 9, 'Septiembre', 2016, '1900'),
(238, 1, 'Tienda 1', 5, 'Sucursal 5', 10, 'Octubre', 2016, '6100'),
(239, 1, 'Tienda 1', 5, 'Sucursal 5', 11, 'Noviembre', 2016, '6200'),
(240, 1, 'Tienda 1', 5, 'Sucursal 5', 12, 'Diciembre', 2016, '7000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sale_master`
--
ALTER TABLE `sale_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sale_master`
--
ALTER TABLE `sale_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;