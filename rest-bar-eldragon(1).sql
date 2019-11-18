-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2019 a las 19:38:29
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

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
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('5aef1e4d-98b9-4065-abb6-83c5fea7f08f', 'Usuario', 'Usuario', 'Usuario\r\n'),
('f482ec91-f741-40a2-81a5-71ce1618ddc0', 'Administrador', 'Administrador', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
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
('5b4c4aa9-680b-4e85-b3a9-e9581fcfadfb', 'f482ec91-f741-40a2-81a5-71ce1618ddc0'),
('6151304f-f053-4408-8cce-d8462a44225c', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('69f49faf-2754-43ef-8f3e-d6ec5e26233b', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('ba97f02b-fa1f-4164-a81b-88898285a78d', 'f482ec91-f741-40a2-81a5-71ce1618ddc0'),
('c649cbe6-f3e4-4809-bee5-87f95390244d', '5aef1e4d-98b9-4065-abb6-83c5fea7f08f'),
('f3b78deb-3f9e-4a1a-b8ee-6295ae8bb5c1', 'f482ec91-f741-40a2-81a5-71ce1618ddc0');

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
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('426c499b-879b-4914-a820-d32a1a9aed25', 'aaa@gmail.com', 'AAA@GMAIL.COM', 'aaa@gmail.com', 'AAA@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEKhr1M0gzRibX3J3DmDpHkU98dkIs3grQaAQPl+ECT9C2YyzxTRp8OjBRsDhoQlelw==', 'EVGFCLEOZ3CJOUL4XV43LG7V4ZEZKCG5', 'b2848dbd-4201-44c1-9f92-06188c145fae', NULL, b'0', b'0', NULL, b'1', 0),
('4310d2fd-a225-447d-a456-d6557a0e9730', 'abxd@gmail.com', 'ABXD@GMAIL.COM', 'abxd@gmail.com', 'ABXD@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEKb+OFaXBHTQ+MdIixpN7JmO2Nnb0IebfZY7MthmLUw4MWnLDSv9r9VSEcIaeZIu9A==', 'VCI4BN7OUVTDHNALYMV756PX75CGLNQO', '8622c74e-0f37-4dc1-85ad-6960a07d940e', NULL, b'0', b'0', NULL, b'1', 0),
('5b4c4aa9-680b-4e85-b3a9-e9581fcfadfb', 'rodrigo@gmail.com', 'RODRIGO@GMAIL.COM', 'rodrigo@gmail.com', 'RODRIGO@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEGHFr1akGPdgLnTnk2qZxJkmVfQiU+k39ZTxBxVBEhtbDwuYYsXYcPaBl3RtLSFW/w==', 'D2TCZYI4H43OC2Y6CUEEXOOFYYJRLRUJ', '8133e795-8d7f-466c-ad98-d1bdaab7c632', NULL, b'0', b'0', NULL, b'1', 0),
('6151304f-f053-4408-8cce-d8462a44225c', 'abc@gmail.com', 'ABC@GMAIL.COM', 'abc@gmail.com', 'ABC@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEMu8IqLcOvIPiiFRwAXkEw7uK+bC6hb+BDKfiz80UgRQrnaCcBsYJM62SMpe+gHOuQ==', 'BQ42SFYMBHGZ33ECZBKVMZSBTGL3ZPXG', '54766f9c-0df6-4a1f-a121-7d4b2fb89550', NULL, b'0', b'0', NULL, b'1', 0),
('69f49faf-2754-43ef-8f3e-d6ec5e26233b', 'holaj@gmail.com', 'HOLAJ@GMAIL.COM', 'holaj@gmail.com', 'HOLAJ@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEO9gEKfsTwL3tyOERIZPNTBVB2TaonXEOTu7Bxz9jrFWhQ+JY54fawb9gpo9eE8vZQ==', 'FX3CXXBKXJ4KZTA33OYVUBOTFUIA2T3M', 'ecb2c2ff-9ef5-4b6a-910b-b0d1635ec0cd', NULL, b'0', b'0', NULL, b'1', 0),
('876a5711-8ee3-4af7-a4f6-4e4a3514198d', 'g1@gmail.com', 'G1@GMAIL.COM', 'g1@gmail.com', 'G1@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEIJJp/He6aa5rGR5cg3HigS6c53ObOiJ+Vp3DGooFxy/ldG22Q73Q5lyFyTA/xryUQ==', 'DAVUA5B2X7ORA7PI6ZGZXNZAFVYMTPPV', 'd951c5c8-fc6c-48bf-b1cf-8c5c9ed90044', NULL, b'0', b'0', NULL, b'1', 0),
('93dd8c1e-59cd-44b6-bd81-00115c43fe5b', 'aa@gmail.com', 'AA@GMAIL.COM', 'aa@gmail.com', 'AA@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEACKAH30FJYVGLrlZQuGNqOg6H7QMV6beBn6E696I2Yx2IrJPZpQS8rRZA3bgytucA==', 'CB5ZJ5E7RY7743GBSEHQHFXYB3WI47KZ', 'c07a0cb1-585f-4541-96b2-740baa90c865', NULL, b'0', b'0', NULL, b'1', 0),
('a24d7ba5-2703-4b1f-ab04-89961345048b', 'rod@gmail.com', 'ROD@GMAIL.COM', 'rod@gmail.com', 'ROD@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEHCc5296ny8sQlGC5HUmJ3iFvAan1ZXR3tjjWp8WV5FpWRHcT6RbVa8nWV5nd4isbg==', 'MIWNTMXEHWNTRXFK3TIQRWUNWYSP26WP', '05f35bbf-ecda-4f8a-8afa-dbd184ffabfe', NULL, b'0', b'0', NULL, b'1', 0),
('ba97f02b-fa1f-4164-a81b-88898285a78d', 'adrian@gmail.com', 'ADRIAN@GMAIL.COM', 'adrian@gmail.com', 'ADRIAN@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEJXEOL9wnYwd3+PFkes5IsUBGXfM8ufY6x7v2tBOGYm6is9mkmx0NGSJlxMMIpN5YA==', '2LO73ZJXCWMZIBVRKXDJWBWOFT2AQW7F', 'c26994e3-05d5-4607-932f-64d20e23c6ba', NULL, b'0', b'0', NULL, b'1', 0),
('c05e3bce-5bfe-4309-9d40-7ad843592221', 'hola@gmail.com', 'HOLA@GMAIL.COM', 'hola@gmail.com', 'HOLA@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEMIOqrdk9h3GCobGdNvnuQkc4XoJoYrJtp4iG1i2cy5JPTmeHm0hG5T6jZ22YLETOw==', '4ZAE333U3DK5RA2C4M552HOF3GKE5GE3', '4a25c1f2-2872-4574-9853-e9e0607dfe33', NULL, b'0', b'0', NULL, b'1', 0),
('c649cbe6-f3e4-4809-bee5-87f95390244d', 'ads6@gmail.com', 'ADS6@GMAIL.COM', 'ads6@gmail.com', 'ADS6@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEEJqzhffRt26ULrnuCkUtGLQlyeiwnuevl726YfDHS2tcinXDOupogevNrIofKo9qQ==', 'APS3SU3LHUIUZMJMEGKIGOO4WHXZRCUG', '98353a84-5ba6-46db-9f16-b2a7eed8166b', NULL, b'0', b'0', NULL, b'1', 0),
('cbee0aaf-7f88-4956-937b-499f1f3cf7fe', 'gg@gmail.com', 'GG@GMAIL.COM', 'gg@gmail.com', 'GG@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEFUfCiiecJcqpcDcT6yl/bCfGWlPsQ8IvekktkgqJkSu6RPQS021bjCFJ3Tvi8Gqzw==', 'IJWR5JEDWGVYIT5AET3YV26STUDZAL2R', '075f815b-2aaf-4d04-9c9c-0661bcbb4d5d', NULL, b'0', b'0', NULL, b'1', 0),
('f3b78deb-3f9e-4a1a-b8ee-6295ae8bb5c1', 'patrick@gmail.com', 'PATRICK@GMAIL.COM', 'patrick@gmail.com', 'PATRICK@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAECyVevSzpF/8jKlEMLD3dfBGnyU9XYGJ0n391K2l/Xj3KaysqpDqcBeAyulzx5TooA==', 'BPSA35IYGCN34OR2L7I7MF4CROD6HK53', '16a9a66a-fb3c-4cfd-830f-bfe058673b46', NULL, b'0', b'0', NULL, b'1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
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
(3, 'Criollos'),
(4, 'Marino'),
(5, 'Oriental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `Id` int(11) NOT NULL,
  `Nombre` longtext NOT NULL DEFAULT '',
  `Foto` longtext NOT NULL,
  `Descripcion` longtext NOT NULL,
  `CategoriaId` int(11) NOT NULL,
  `Precio` float NOT NULL DEFAULT 0,
  `Puntos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`Id`, `Nombre`, `Foto`, `Descripcion`, `CategoriaId`, `Precio`, `Puntos`) VALUES
(1, 'Tallarines Rojos', 'https://comidasperuanas.net/wp-content/uploads/2016/02/Tallarines-Rojos-Peruanos-con-Pollo-o-Carne.jpg', 'Platillo muy rico típico de Peru', 3, 15, 1),
(3, 'Tallarines Verdes', 'https://comidaperuana.life/wp-content/uploads/2018/12/tallarines-verdes-con-pollo_700x465.jpg', 'Plato tiipico en base a espinaca', 3, 23, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `Id` int(11) NOT NULL,
  `NumerodeMesa` int(11) NOT NULL DEFAULT 0,
  `FechayHora` datetime(6) NOT NULL DEFAULT '0001-01-01 00:00:00.000000',
  `DNI` int(11) NOT NULL,
  `CantidadPersonas` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`Id`, `NumerodeMesa`, `FechayHora`, `DNI`, `CantidadPersonas`) VALUES
(3, 5, '2019-12-13 04:50:00.000000', 1234567, 6),
(4, 3, '2019-11-13 04:45:00.000000', 1233, 8),
(5, 15, '2019-11-13 04:55:00.000000', 1234567, 10),
(6, 10, '2019-02-13 05:07:00.000000', 1234567, 1),
(7, 4, '2019-03-13 05:17:00.000000', 123, 3),
(8, 12, '2019-07-13 05:35:00.000000', 1234567, 10),
(9, 13, '2019-11-13 06:11:00.000000', 1234567, 2);

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
('20191112020705_123321', '2.2.6-servicing-10079'),
('20191113012254_Reserva', '2.2.6-servicing-10079'),
('20191113013226_Reserva2', '2.2.6-servicing-10079'),
('20191113043857_46', '2.2.6-servicing-10079');

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
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Filtros para la tabla `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `FK_Menus_Categorias_CategoriaId` FOREIGN KEY (`CategoriaId`) REFERENCES `categorias` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
