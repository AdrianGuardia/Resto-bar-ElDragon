-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2019 a las 18:47:46
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-bar-eldragon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('defa9322-af40-48f8-af7c-502de34b48ef', 'Administrador', 'ADMINISTRADOR', 'c97bb493-f34a-4b61-b311-5d53737a6d62'),
('e567f027-7923-4fb0-9223-fc09e0f31dfc', 'Usuario', 'USUARIO', 'dac3f2b8-0c2f-4a90-8db1-cea1760e5257');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('426c499b-879b-4914-a820-d32a1a9aed25', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('4310d2fd-a225-447d-a456-d6557a0e9730', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('57e71845-eec7-4a62-a851-318bfa5a7565', 'e567f027-7923-4fb0-9223-fc09e0f31dfc'),
('5b4c4aa9-680b-4e85-b3a9-e9581fcfadfb', 'f482ec91-f741-40a2-81a5-71ce1618ddc0'),
('6151304f-f053-4408-8cce-d8462a44225c', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('69f49faf-2754-43ef-8f3e-d6ec5e26233b', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('c649cbe6-f3e4-4809-bee5-87f95390244d', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('fdb80959-b89f-4940-a017-bca5cc088cc2', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('fed6c59b-77a1-42b9-bac9-1ac4a6bd9356', 'defa9322-af40-48f8-af7c-502de34b48ef');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `Discriminator` longtext NOT NULL,
  `Apellidos` longtext,
  `Fecha` datetime(6) DEFAULT NULL,
  `Nombre` longtext,
  `Puntos` int(11) DEFAULT NULL,
  `Telefono` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`, `Discriminator`, `Apellidos`, `Fecha`, `Nombre`, `Puntos`, `Telefono`) VALUES
('426c499b-879b-4914-a820-d32a1a9aed25', 'aaa@gmail.com', 'AAA@GMAIL.COM', 'aaa@gmail.com', 'AAA@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEKhr1M0gzRibX3J3DmDpHkU98dkIs3grQaAQPl+ECT9C2YyzxTRp8OjBRsDhoQlelw==', 'EVGFCLEOZ3CJOUL4XV43LG7V4ZEZKCG5', 'b2848dbd-4201-44c1-9f92-06188c145fae', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('4310d2fd-a225-447d-a456-d6557a0e9730', 'abxd@gmail.com', 'ABXD@GMAIL.COM', 'abxd@gmail.com', 'ABXD@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEKb+OFaXBHTQ+MdIixpN7JmO2Nnb0IebfZY7MthmLUw4MWnLDSv9r9VSEcIaeZIu9A==', 'VCI4BN7OUVTDHNALYMV756PX75CGLNQO', '8622c74e-0f37-4dc1-85ad-6960a07d940e', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('57e71845-eec7-4a62-a851-318bfa5a7565', 'Admin@gmail.com', 'ADMIN@GMAIL.COM', 'Admin@gmail.com', 'ADMIN@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAELlU0OLcvduB75EzvIuu7xmW3Z9w4ZO72OhKvY58m6ruQJWpBD9LDkFq0Mz2UUY/Dw==', '2PJINNQWCMPKVLVF765DB5DOUF7ECCLG', 'e7ebbeab-3029-4b23-8c20-a9941118e450', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('5b4c4aa9-680b-4e85-b3a9-e9581fcfadfb', 'rodrigo@gmail.com', 'RODRIGO@GMAIL.COM', 'rodrigo@gmail.com', 'RODRIGO@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEGHFr1akGPdgLnTnk2qZxJkmVfQiU+k39ZTxBxVBEhtbDwuYYsXYcPaBl3RtLSFW/w==', 'D2TCZYI4H43OC2Y6CUEEXOOFYYJRLRUJ', '8133e795-8d7f-466c-ad98-d1bdaab7c632', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('6151304f-f053-4408-8cce-d8462a44225c', 'abc@gmail.com', 'ABC@GMAIL.COM', 'abc@gmail.com', 'ABC@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEMu8IqLcOvIPiiFRwAXkEw7uK+bC6hb+BDKfiz80UgRQrnaCcBsYJM62SMpe+gHOuQ==', 'BQ42SFYMBHGZ33ECZBKVMZSBTGL3ZPXG', '54766f9c-0df6-4a1f-a121-7d4b2fb89550', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('69f49faf-2754-43ef-8f3e-d6ec5e26233b', 'holaj@gmail.com', 'HOLAJ@GMAIL.COM', 'holaj@gmail.com', 'HOLAJ@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEO9gEKfsTwL3tyOERIZPNTBVB2TaonXEOTu7Bxz9jrFWhQ+JY54fawb9gpo9eE8vZQ==', 'FX3CXXBKXJ4KZTA33OYVUBOTFUIA2T3M', 'ecb2c2ff-9ef5-4b6a-910b-b0d1635ec0cd', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('876a5711-8ee3-4af7-a4f6-4e4a3514198d', 'g1@gmail.com', 'G1@GMAIL.COM', 'g1@gmail.com', 'G1@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEIJJp/He6aa5rGR5cg3HigS6c53ObOiJ+Vp3DGooFxy/ldG22Q73Q5lyFyTA/xryUQ==', 'DAVUA5B2X7ORA7PI6ZGZXNZAFVYMTPPV', 'd951c5c8-fc6c-48bf-b1cf-8c5c9ed90044', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('93dd8c1e-59cd-44b6-bd81-00115c43fe5b', 'aa@gmail.com', 'AA@GMAIL.COM', 'aa@gmail.com', 'AA@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEACKAH30FJYVGLrlZQuGNqOg6H7QMV6beBn6E696I2Yx2IrJPZpQS8rRZA3bgytucA==', 'CB5ZJ5E7RY7743GBSEHQHFXYB3WI47KZ', 'c07a0cb1-585f-4541-96b2-740baa90c865', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('a24d7ba5-2703-4b1f-ab04-89961345048b', 'rod@gmail.com', 'ROD@GMAIL.COM', 'rod@gmail.com', 'ROD@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEHCc5296ny8sQlGC5HUmJ3iFvAan1ZXR3tjjWp8WV5FpWRHcT6RbVa8nWV5nd4isbg==', 'MIWNTMXEHWNTRXFK3TIQRWUNWYSP26WP', '05f35bbf-ecda-4f8a-8afa-dbd184ffabfe', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('c05e3bce-5bfe-4309-9d40-7ad843592221', 'hola@gmail.com', 'HOLA@GMAIL.COM', 'hola@gmail.com', 'HOLA@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEMIOqrdk9h3GCobGdNvnuQkc4XoJoYrJtp4iG1i2cy5JPTmeHm0hG5T6jZ22YLETOw==', '4ZAE333U3DK5RA2C4M552HOF3GKE5GE3', '4a25c1f2-2872-4574-9853-e9e0607dfe33', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('c649cbe6-f3e4-4809-bee5-87f95390244d', 'ads6@gmail.com', 'ADS6@GMAIL.COM', 'ads6@gmail.com', 'ADS6@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEEJqzhffRt26ULrnuCkUtGLQlyeiwnuevl726YfDHS2tcinXDOupogevNrIofKo9qQ==', 'APS3SU3LHUIUZMJMEGKIGOO4WHXZRCUG', '98353a84-5ba6-46db-9f16-b2a7eed8166b', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('cbee0aaf-7f88-4956-937b-499f1f3cf7fe', 'gg@gmail.com', 'GG@GMAIL.COM', 'gg@gmail.com', 'GG@GMAIL.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEFUfCiiecJcqpcDcT6yl/bCfGWlPsQ8IvekktkgqJkSu6RPQS021bjCFJ3Tvi8Gqzw==', 'IJWR5JEDWGVYIT5AET3YV26STUDZAL2R', '075f815b-2aaf-4d04-9c9c-0661bcbb4d5d', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('fdb80959-b89f-4940-a017-bca5cc088cc2', 'adrian@gmai.com', 'ADRIAN@GMAI.COM', 'adrian@gmai.com', 'ADRIAN@GMAI.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEEbKL69SI4j2Rqo7ywOuiAl+hz8pFl7yQCnr5HTgDISoEANfDhv1uP7yW4zF0frKEA==', 'QSMYQXIE34P4SS3QGAT5TXY24ZV2QFLR', '7e504dd2-9bba-478c-a8b7-c6ac07015d99', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL),
('fed6c59b-77a1-42b9-bac9-1ac4a6bd9356', 'Admin@dragon.com', 'ADMIN@DRAGON.COM', 'Admin@dragon.com', 'ADMIN@DRAGON.COM', b'1111111111111111111111111111111', 'AQAAAAEAACcQAAAAEOpE+xZi2Imfgyg0gC/PLwj02Q7GSKC3ydRiruRQp0NMScHV21Kocy1gvY9amJULNA==', 'KQAYE7LDCIOTMSJ26JAN7OTBK7QSONXB', 'f601c259-f571-4c02-8d45-905afa2efa3f', NULL, b'1111111111111111111111111111111', b'1111111111111111111111111111111', NULL, b'1111111111111111111111111111111', 0, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Id` int(11) NOT NULL,
  `Nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`Id`, `Nombre`) VALUES
(3, 'Entradas'),
(4, 'Platos Principales'),
(5, 'Bebidas\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id` int(11) NOT NULL,
  `Descripcion` longtext NOT NULL,
  `Foto` longtext NOT NULL,
  `Nombre` longtext NOT NULL,
  `Precio` float NOT NULL DEFAULT '0',
  `Fecha` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`Id`, `Descripcion`, `Foto`, `Nombre`, `Precio`, `Fecha`) VALUES
(8, '3 sabores', 'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/04/09/noticia-1554829080-pachamanca-la-olla-receta.png', 'Pachamanca', 58, '0001-01-01 00:00:00.000000'),
(9, 'Delicioso', 'https://comidaperuana.life/wp-content/uploads/2018/12/tallarines-verdes-con-pollo_700x465.jpg', 'Tallarines Verdes', 20, '0001-01-01 00:00:00.000000'),
(12, '3 sabores', 'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/04/09/noticia-1554829080-pachamanca-la-olla-receta.png', 'Pachamanca', 58, '2019-11-18 12:01:51.803097'),
(13, '3 sabores', 'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/04/09/noticia-1554829080-pachamanca-la-olla-receta.png', 'Pachamanca', 58, '2019-11-18 12:17:25.452439'),
(14, '3 sabores', 'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/04/09/noticia-1554829080-pachamanca-la-olla-receta.png', 'Pachamanca', 58, '2019-11-18 12:43:22.339047'),
(15, '3 sabores', 'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/04/09/noticia-1554829080-pachamanca-la-olla-receta.png', 'Pachamanca', 58, '2019-11-18 12:44:32.058442');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `Id` int(11) NOT NULL,
  `Nombre` longtext NOT NULL,
  `Foto` longtext NOT NULL,
  `Descripcion` longtext NOT NULL,
  `CategoriaId` int(11) NOT NULL,
  `Precio` float NOT NULL DEFAULT '0',
  `Puntos` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`Id`, `Nombre`, `Foto`, `Descripcion`, `CategoriaId`, `Precio`, `Puntos`) VALUES
(1, 'Ceviche', 'https://cevicheweb.com/wp-content/uploads/2019/04/83.-ceviche-blanco-peruano.jpg', 'Pesado de ojo de uva', 1, 25, 10),
(2, 'Pachamanca', 'https://prod.media.wapa.pe/1200x630/wapa/imagen/2019/04/09/noticia-1554829080-pachamanca-la-olla-receta.png', '3 sabores', 3, 58, 24),
(3, 'Carapulcra', 'https://comidasperuanas.net/wp-content/uploads/2015/11/Carapulcra.jpg', 'Sabor inigualable', 2, 30, 15),
(4, 'Tallarines Verdes', 'https://comidaperuana.life/wp-content/uploads/2018/12/tallarines-verdes-con-pollo_700x465.jpg', 'Delicioso', 4, 20, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `Id` int(11) NOT NULL,
  `NumerodeMesa` int(11) NOT NULL DEFAULT '0',
  `FechayHora` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00.000000',
  `DNI` int(11) NOT NULL,
  `CantidadPersonas` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`Id`, `NumerodeMesa`, `FechayHora`, `DNI`, `CantidadPersonas`) VALUES
(10, 5, '2019-02-02 20:00:00.000000', 7279138, 5),
(11, 9, '2019-11-21 23:30:00.000000', 7162539, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20191109174158_InitialCreate', '2.2.6-servicing-10079'),
('20191109174246_Initial', '2.2.6-servicing-10079'),
('20191109175450_ii', '2.2.6-servicing-10079'),
('20191111022713_Inicioo', '2.2.6-servicing-10079'),
('20191111030613_funcionando', '2.2.6-servicing-10079'),
('20191111031406_Corrigiendo', '2.2.6-servicing-10079'),
('20191111031719_Corrigiendo2', '2.2.6-servicing-10079'),
('20191111031906_123', '2.2.6-servicing-10079'),
('20191111032056_111', '2.2.6-servicing-10079'),
('20191111032709_222', '2.2.6-servicing-10079'),
('20191111033500_555', '2.2.6-servicing-10079'),
('20191111034223_123456', '2.2.6-servicing-10079'),
('20191111034625_777', '2.2.6-servicing-10079'),
('20191111035642_1245', '2.2.6-servicing-10079'),
('20191111035729_888', '2.2.6-servicing-10079'),
('20191111043339_567', '2.2.6-servicing-10079'),
('20191111214905_asd12321', '2.2.6-servicing-10079'),
('20191111214924_asd123', '2.2.6-servicing-10079'),
('20191111214956_asd132312s', '2.2.6-servicing-10079'),
('20191111215033_as132sdax', '2.2.6-servicing-10079'),
('20191112020705_123321', '2.2.6-servicing-10079'),
('20191113012254_Reserva', '2.2.6-servicing-10079'),
('20191113013226_Reserva2', '2.2.6-servicing-10079'),
('20191113043857_46', '2.2.6-servicing-10079'),
('20191113194018_v1', '2.2.6-servicing-10079'),
('20191113224037_ver', '2.2.6-servicing-10079'),
('20191117192356_123sdaxm', '2.2.6-servicing-10079'),
('20191118042629_probc', '2.2.6-servicing-10079'),
('20191118132301_xs', '2.2.6-servicing-10079'),
('20191118164554_asda12eaz', '2.2.6-servicing-10079'),
('20191118165610_asd13as', '2.2.6-servicing-10079'),
('20191118165652_fecha', '2.2.6-servicing-10079'),
('20191118170042_fecha2', '2.2.6-servicing-10079');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indices de la tabla `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indices de la tabla `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indices de la tabla `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indices de la tabla `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indices de la tabla `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indices de la tabla `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Menus_CategoriaId` (`CategoriaId`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
