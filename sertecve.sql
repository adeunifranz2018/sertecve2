-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2018 a las 00:42:44
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sertecve`
--
CREATE DATABASE IF NOT EXISTS `sertecve` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `sertecve`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrador base de datos', '1', 1544192116);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/cliente/*', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/cliente/create', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/cliente/delete', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/cliente/index', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/cliente/update', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/cliente/view', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/default/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/default/index', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/default/view', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/user/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/default/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/default/action', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/default/diff', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/default/index', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/default/preview', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/gii/default/view', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/personal/*', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/personal/create', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/personal/delete', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/personal/index', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/personal/update', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/personal/view', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/rbac/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/rbac/assignment/*', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/assignment/assign', 2, NULL, NULL, NULL, 1544192056, 1544192056),
('/rbac/assignment/index', 2, NULL, NULL, NULL, 1544192056, 1544192056),
('/rbac/assignment/revoke', 2, NULL, NULL, NULL, 1544192056, 1544192056),
('/rbac/assignment/view', 2, NULL, NULL, NULL, 1544192056, 1544192056),
('/rbac/default/*', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/default/index', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/menu/*', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/menu/create', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/menu/delete', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/menu/index', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/menu/update', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/menu/view', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/*', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/assign', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/create', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/delete', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/index', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/remove', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/update', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/permission/view', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/role/*', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/role/assign', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/role/create', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/role/delete', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/role/index', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/role/remove', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/role/update', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/role/view', 2, NULL, NULL, NULL, 1544192057, 1544192057),
('/rbac/route/*', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/route/assign', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/route/create', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/route/index', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/route/refresh', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/route/remove', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/rule/*', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/rule/create', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/rule/delete', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/rule/index', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/rule/update', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/rule/view', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/*', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/rbac/user/activate', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/rbac/user/change-password', 2, NULL, NULL, NULL, 1544192059, 1544192059),
('/rbac/user/delete', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/index', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/login', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/logout', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/request-password-reset', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/reset-password', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/signup', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/rbac/user/view', 2, NULL, NULL, NULL, 1544192058, 1544192058),
('/repuesto/*', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/repuesto/create', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/repuesto/delete', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/repuesto/index', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/repuesto/update', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/repuesto/view', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/servicio/*', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/servicio/create', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/servicio/delete', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/servicio/index', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/servicio/update', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/servicio/view', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/*', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/site/about', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/site/captcha', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/contact', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/site/error', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/index', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/login', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/logout', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/servicio', 2, NULL, NULL, NULL, 1544192060, 1544192060),
('/site/signup', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/usuario/*', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/usuario/create', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/usuario/delete', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/usuario/index', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/usuario/update', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/usuario/view', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/vehiculo/*', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/vehiculo/create', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/vehiculo/delete', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/vehiculo/index', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/vehiculo/update', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('/vehiculo/view', 2, NULL, NULL, NULL, 1544192061, 1544192061),
('administracion base de datos', 2, NULL, NULL, NULL, 1544192079, 1544192079),
('administrador base de datos', 1, NULL, NULL, NULL, 1544192105, 1544192105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('administracion base de datos', '/*'),
('administracion base de datos', '/cliente/*'),
('administracion base de datos', '/cliente/create'),
('administracion base de datos', '/cliente/delete'),
('administracion base de datos', '/cliente/index'),
('administracion base de datos', '/cliente/update'),
('administracion base de datos', '/cliente/view'),
('administracion base de datos', '/debug/*'),
('administracion base de datos', '/debug/default/*'),
('administracion base de datos', '/debug/default/db-explain'),
('administracion base de datos', '/debug/default/download-mail'),
('administracion base de datos', '/debug/default/index'),
('administracion base de datos', '/debug/default/toolbar'),
('administracion base de datos', '/debug/default/view'),
('administracion base de datos', '/debug/user/*'),
('administracion base de datos', '/debug/user/reset-identity'),
('administracion base de datos', '/debug/user/set-identity'),
('administracion base de datos', '/gii/*'),
('administracion base de datos', '/gii/default/*'),
('administracion base de datos', '/gii/default/action'),
('administracion base de datos', '/gii/default/diff'),
('administracion base de datos', '/gii/default/index'),
('administracion base de datos', '/gii/default/preview'),
('administracion base de datos', '/gii/default/view'),
('administracion base de datos', '/personal/*'),
('administracion base de datos', '/personal/create'),
('administracion base de datos', '/personal/delete'),
('administracion base de datos', '/personal/index'),
('administracion base de datos', '/personal/update'),
('administracion base de datos', '/personal/view'),
('administracion base de datos', '/rbac/*'),
('administracion base de datos', '/rbac/assignment/*'),
('administracion base de datos', '/rbac/assignment/assign'),
('administracion base de datos', '/rbac/assignment/index'),
('administracion base de datos', '/rbac/assignment/revoke'),
('administracion base de datos', '/rbac/assignment/view'),
('administracion base de datos', '/rbac/default/*'),
('administracion base de datos', '/rbac/default/index'),
('administracion base de datos', '/rbac/menu/*'),
('administracion base de datos', '/rbac/menu/create'),
('administracion base de datos', '/rbac/menu/delete'),
('administracion base de datos', '/rbac/menu/index'),
('administracion base de datos', '/rbac/menu/update'),
('administracion base de datos', '/rbac/menu/view'),
('administracion base de datos', '/rbac/permission/*'),
('administracion base de datos', '/rbac/permission/assign'),
('administracion base de datos', '/rbac/permission/create'),
('administracion base de datos', '/rbac/permission/delete'),
('administracion base de datos', '/rbac/permission/index'),
('administracion base de datos', '/rbac/permission/remove'),
('administracion base de datos', '/rbac/permission/update'),
('administracion base de datos', '/rbac/permission/view'),
('administracion base de datos', '/rbac/role/*'),
('administracion base de datos', '/rbac/role/assign'),
('administracion base de datos', '/rbac/role/create'),
('administracion base de datos', '/rbac/role/delete'),
('administracion base de datos', '/rbac/role/index'),
('administracion base de datos', '/rbac/role/remove'),
('administracion base de datos', '/rbac/role/update'),
('administracion base de datos', '/rbac/role/view'),
('administracion base de datos', '/rbac/route/*'),
('administracion base de datos', '/rbac/route/assign'),
('administracion base de datos', '/rbac/route/create'),
('administracion base de datos', '/rbac/route/index'),
('administracion base de datos', '/rbac/route/refresh'),
('administracion base de datos', '/rbac/route/remove'),
('administracion base de datos', '/rbac/rule/*'),
('administracion base de datos', '/rbac/rule/create'),
('administracion base de datos', '/rbac/rule/delete'),
('administracion base de datos', '/rbac/rule/index'),
('administracion base de datos', '/rbac/rule/update'),
('administracion base de datos', '/rbac/rule/view'),
('administracion base de datos', '/rbac/user/*'),
('administracion base de datos', '/rbac/user/activate'),
('administracion base de datos', '/rbac/user/change-password'),
('administracion base de datos', '/rbac/user/delete'),
('administracion base de datos', '/rbac/user/index'),
('administracion base de datos', '/rbac/user/login'),
('administracion base de datos', '/rbac/user/logout'),
('administracion base de datos', '/rbac/user/request-password-reset'),
('administracion base de datos', '/rbac/user/reset-password'),
('administracion base de datos', '/rbac/user/signup'),
('administracion base de datos', '/rbac/user/view'),
('administracion base de datos', '/repuesto/*'),
('administracion base de datos', '/repuesto/create'),
('administracion base de datos', '/repuesto/delete'),
('administracion base de datos', '/repuesto/index'),
('administracion base de datos', '/repuesto/update'),
('administracion base de datos', '/repuesto/view'),
('administracion base de datos', '/servicio/*'),
('administracion base de datos', '/servicio/create'),
('administracion base de datos', '/servicio/delete'),
('administracion base de datos', '/servicio/index'),
('administracion base de datos', '/servicio/update'),
('administracion base de datos', '/servicio/view'),
('administracion base de datos', '/site/*'),
('administracion base de datos', '/site/about'),
('administracion base de datos', '/site/captcha'),
('administracion base de datos', '/site/contact'),
('administracion base de datos', '/site/error'),
('administracion base de datos', '/site/index'),
('administracion base de datos', '/site/login'),
('administracion base de datos', '/site/logout'),
('administracion base de datos', '/site/servicio'),
('administracion base de datos', '/site/signup'),
('administracion base de datos', '/usuario/*'),
('administracion base de datos', '/usuario/create'),
('administracion base de datos', '/usuario/delete'),
('administracion base de datos', '/usuario/index'),
('administracion base de datos', '/usuario/update'),
('administracion base de datos', '/usuario/view'),
('administracion base de datos', '/vehiculo/*'),
('administracion base de datos', '/vehiculo/create'),
('administracion base de datos', '/vehiculo/delete'),
('administracion base de datos', '/vehiculo/index'),
('administracion base de datos', '/vehiculo/update'),
('administracion base de datos', '/vehiculo/view'),
('administrador base de datos', 'administracion base de datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_spanish_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1544191031),
('m140506_102106_rbac_init', 1544191303),
('m140602_111327_create_menu_table', 1544191854),
('m160312_050000_create_user', 1544191854),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1544191303),
('m180523_151638_rbac_updates_indexes_without_prefix', 1544191304),
('m181128_142622_tablas', 1544191035);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcita`
--

CREATE TABLE `tblcita` (
  `id_cit` int(11) NOT NULL,
  `feccit` date NOT NULL,
  `sercit` int(11) NOT NULL,
  `vehcit` int(11) NOT NULL,
  `obscit` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcliente`
--

CREATE TABLE `tblcliente` (
  `id_cli` int(11) NOT NULL,
  `cidcli` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nomcli` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apecli` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telcli` int(11) NOT NULL,
  `dircli` text COLLATE utf8_spanish_ci NOT NULL,
  `emacli` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblcliente`
--

INSERT INTO `tblcliente` (`id_cli`, `cidcli`, `nomcli`, `apecli`, `telcli`, `dircli`, `emacli`) VALUES
(1, '4587852', 'CARMELO', 'GAVINCHA', 71515155, 'EL ALTO\r\nLA PAZ', 'carmelogavincha@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblfactura`
--

CREATE TABLE `tblfactura` (
  `id_fac` int(11) NOT NULL,
  `nomfac` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nitfac` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecfac` date NOT NULL,
  `detfac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblhistorial`
--

CREATE TABLE `tblhistorial` (
  `id_his` int(11) NOT NULL,
  `clihis` int(11) NOT NULL,
  `vehhis` int(11) NOT NULL,
  `serhis` int(11) NOT NULL,
  `obshis` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpersonal`
--

CREATE TABLE `tblpersonal` (
  `id_per` int(11) NOT NULL,
  `nomper` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apeper` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telper` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `emaper` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `dirper` text COLLATE utf8_spanish_ci NOT NULL,
  `carper` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecper` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrepuesto`
--

CREATE TABLE `tblrepuesto` (
  `id_rep` int(11) NOT NULL,
  `nomrep` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `desrep` text COLLATE utf8_spanish_ci NOT NULL,
  `entrep` date NOT NULL,
  `canrep` int(11) NOT NULL,
  `prerep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblrepuesto`
--

INSERT INTO `tblrepuesto` (`id_rep`, `nomrep`, `desrep`, `entrep`, `canrep`, `prerep`) VALUES
(2, 'item Nº 1', 'descripcion', '2018-12-13', 100, 10),
(3, 'item Nº 2', 'descripcion', '2018-12-13', 100, 10),
(4, 'item Nº 3', 'descripcion', '2018-12-13', 100, 10),
(5, 'item Nº 4', 'descripcion', '2018-12-13', 100, 10),
(6, 'item Nº 5', 'descripcion', '2018-12-13', 100, 10),
(7, 'item Nº 6', 'descripcion', '2018-12-13', 100, 10),
(8, 'item Nº 7', 'descripcion', '2018-12-13', 100, 10),
(9, 'item Nº 8', 'descripcion', '2018-12-13', 100, 10),
(10, 'item Nº 9', 'descripcion', '2018-12-13', 100, 10),
(11, 'item Nº 10', 'descripcion', '2018-12-13', 100, 10),
(12, 'item Nº 11', 'descripcion', '2018-12-13', 100, 10),
(13, 'item Nº 12', 'descripcion', '2018-12-13', 100, 10),
(14, 'item Nº 13', 'descripcion', '2018-12-13', 100, 10),
(15, 'item Nº 14', 'descripcion', '2018-12-13', 100, 10),
(16, 'item Nº 15', 'descripcion', '2018-12-13', 100, 10),
(17, 'item Nº 16', 'descripcion', '2018-12-13', 100, 10),
(18, 'item Nº 17', 'descripcion', '2018-12-13', 100, 10),
(19, 'item Nº 18', 'descripcion', '2018-12-13', 100, 10),
(20, 'item Nº 19', 'descripcion', '2018-12-13', 100, 10),
(21, 'item Nº 20', 'descripcion', '2018-12-13', 100, 10),
(22, 'item Nº 21', 'descripcion', '2018-12-13', 100, 10),
(23, 'item Nº 22', 'descripcion', '2018-12-13', 100, 10),
(24, 'item Nº 23', 'descripcion', '2018-12-13', 100, 10),
(25, 'item Nº 24', 'descripcion', '2018-12-13', 100, 10),
(26, 'item Nº 25', 'descripcion', '2018-12-13', 100, 10),
(27, 'item Nº 26', 'descripcion', '2018-12-13', 100, 10),
(28, 'item Nº 27', 'descripcion', '2018-12-13', 100, 10),
(29, 'item Nº 28', 'descripcion', '2018-12-13', 100, 10),
(30, 'item Nº 29', 'descripcion', '2018-12-13', 100, 10),
(31, 'item Nº 30', 'descripcion', '2018-12-13', 100, 10),
(32, 'item Nº 31', 'descripcion', '2018-12-13', 100, 10),
(33, 'item Nº 32', 'descripcion', '2018-12-13', 100, 10),
(34, 'item Nº 33', 'descripcion', '2018-12-13', 100, 10),
(35, 'item Nº 34', 'descripcion', '2018-12-13', 100, 10),
(36, 'item Nº 35', 'descripcion', '2018-12-13', 100, 10),
(37, 'item Nº 36', 'descripcion', '2018-12-13', 100, 10),
(38, 'item Nº 37', 'descripcion', '2018-12-13', 100, 10),
(39, 'item Nº 38', 'descripcion', '2018-12-13', 100, 10),
(40, 'item Nº 39', 'descripcion', '2018-12-13', 100, 10),
(41, 'item Nº 40', 'descripcion', '2018-12-13', 100, 10),
(42, 'item Nº 41', 'descripcion', '2018-12-13', 100, 10),
(43, 'item Nº 42', 'descripcion', '2018-12-13', 100, 10),
(44, 'item Nº 43', 'descripcion', '2018-12-13', 100, 10),
(45, 'item Nº 44', 'descripcion', '2018-12-13', 100, 10),
(46, 'item Nº 45', 'descripcion', '2018-12-13', 100, 10),
(47, 'item Nº 46', 'descripcion', '2018-12-13', 100, 10),
(48, 'item Nº 47', 'descripcion', '2018-12-13', 100, 10),
(49, 'item Nº 48', 'descripcion', '2018-12-13', 100, 10),
(50, 'item Nº 49', 'descripcion', '2018-12-13', 100, 10),
(51, 'item Nº 50', 'descripcion', '2018-12-13', 100, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrepuestosu`
--

CREATE TABLE `tblrepuestosu` (
  `id_reu` int(11) NOT NULL,
  `repreu` int(11) NOT NULL,
  `canreu` int(11) NOT NULL,
  `fecreu` date NOT NULL,
  `trareu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblrepuestosu`
--

INSERT INTO `tblrepuestosu` (`id_reu`, `repreu`, `canreu`, `fecreu`, `trareu`) VALUES
(1, 1, 0, '2018-12-12', 1),
(5, 2, 2, '2018-12-13', 1),
(6, 2, 2, '2018-12-13', 1),
(7, 3, 2, '2018-12-13', 1),
(8, 4, 2, '2018-12-13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblservicio`
--

CREATE TABLE `tblservicio` (
  `id_ser` int(11) NOT NULL,
  `desser` text COLLATE utf8_spanish_ci NOT NULL,
  `preser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblservicio`
--

INSERT INTO `tblservicio` (`id_ser`, `desser`, `preser`) VALUES
(1, 'CAMBIO DE FILTRO DE AIRE', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblserviciou`
--

CREATE TABLE `tblserviciou` (
  `id_seu` int(11) NOT NULL,
  `serseu` int(11) NOT NULL,
  `fecseu` date NOT NULL,
  `traseu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblserviciou`
--

INSERT INTO `tblserviciou` (`id_seu`, `serseu`, `fecseu`, `traseu`) VALUES
(1, 1, '2018-12-12', 2),
(2, 1, '2018-12-12', 2),
(4, 1, '2018-12-12', 3),
(5, 1, '2018-12-13', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltrabajo`
--

CREATE TABLE `tbltrabajo` (
  `id_tra` int(11) NOT NULL,
  `vehtra` int(11) NOT NULL,
  `esttra` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `initra` date NOT NULL,
  `fintra` date NOT NULL,
  `restra` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbltrabajo`
--

INSERT INTO `tbltrabajo` (`id_tra`, `vehtra`, `esttra`, `initra`, `fintra`, `restra`) VALUES
(1, 1, '1', '2018-12-12', '2018-12-13', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvehiculo`
--

CREATE TABLE `tblvehiculo` (
  `id_veh` int(11) NOT NULL,
  `plaveh` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `marveh` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tipveh` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `modveh` int(11) NOT NULL,
  `chaveh` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `colveh` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pueveh` int(11) NOT NULL,
  `traveh` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `proveh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tblvehiculo`
--

INSERT INTO `tblvehiculo` (`id_veh`, `plaveh`, `marveh`, `tipveh`, `modveh`, `chaveh`, `colveh`, `pueveh`, `traveh`, `proveh`) VALUES
(1, '1256-UGC', 'TOYOTA', 'MINIBUS', 2018, 'JSKJLK3JKL4L4LL', 'ROJO', 5, 'INYECCION', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventa`
--

CREATE TABLE `tblventa` (
  `id_ven` int(11) NOT NULL,
  `repven` int(11) NOT NULL,
  `fecven` date NOT NULL,
  `canven` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'ZSq-4jNCAjdgyaK6OTZ3Nu1qMZiTIpI7', '$2y$13$WEdY6i1UhcIDL5Qh7aV2xecl3rg1csfETGOcjuv3fmvuPEz/gh2ia', NULL, 'admin916@gmail.com', 10, 1544192028, 1544192028);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indices de la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indices de la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indices de la tabla `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `tblcita`
--
ALTER TABLE `tblcita`
  ADD PRIMARY KEY (`id_cit`);

--
-- Indices de la tabla `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`id_cli`);

--
-- Indices de la tabla `tblfactura`
--
ALTER TABLE `tblfactura`
  ADD PRIMARY KEY (`id_fac`);

--
-- Indices de la tabla `tblhistorial`
--
ALTER TABLE `tblhistorial`
  ADD PRIMARY KEY (`id_his`);

--
-- Indices de la tabla `tblpersonal`
--
ALTER TABLE `tblpersonal`
  ADD PRIMARY KEY (`id_per`);

--
-- Indices de la tabla `tblrepuesto`
--
ALTER TABLE `tblrepuesto`
  ADD PRIMARY KEY (`id_rep`);

--
-- Indices de la tabla `tblrepuestosu`
--
ALTER TABLE `tblrepuestosu`
  ADD PRIMARY KEY (`id_reu`);

--
-- Indices de la tabla `tblservicio`
--
ALTER TABLE `tblservicio`
  ADD PRIMARY KEY (`id_ser`);

--
-- Indices de la tabla `tblserviciou`
--
ALTER TABLE `tblserviciou`
  ADD PRIMARY KEY (`id_seu`);

--
-- Indices de la tabla `tbltrabajo`
--
ALTER TABLE `tbltrabajo`
  ADD PRIMARY KEY (`id_tra`);

--
-- Indices de la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  ADD PRIMARY KEY (`id_veh`);

--
-- Indices de la tabla `tblventa`
--
ALTER TABLE `tblventa`
  ADD PRIMARY KEY (`id_ven`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblcita`
--
ALTER TABLE `tblcita`
  MODIFY `id_cit` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `id_cli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblfactura`
--
ALTER TABLE `tblfactura`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblhistorial`
--
ALTER TABLE `tblhistorial`
  MODIFY `id_his` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblpersonal`
--
ALTER TABLE `tblpersonal`
  MODIFY `id_per` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tblrepuesto`
--
ALTER TABLE `tblrepuesto`
  MODIFY `id_rep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `tblrepuestosu`
--
ALTER TABLE `tblrepuestosu`
  MODIFY `id_reu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tblservicio`
--
ALTER TABLE `tblservicio`
  MODIFY `id_ser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblserviciou`
--
ALTER TABLE `tblserviciou`
  MODIFY `id_seu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbltrabajo`
--
ALTER TABLE `tbltrabajo`
  MODIFY `id_tra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  MODIFY `id_veh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tblventa`
--
ALTER TABLE `tblventa`
  MODIFY `id_ven` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
