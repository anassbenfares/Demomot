-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Mer 15 Juin 2016 à 13:56
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `db_Shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_baskets`
--

CREATE TABLE `t_baskets` (
  `idBaskets` int(11) NOT NULL,
  `basSend` tinyint(1) NOT NULL,
  `fkUsers` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_baskets`
--

INSERT INTO `t_baskets` (`idBaskets`, `basSend`, `fkUsers`) VALUES
(4, 0, 1),
(5, 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `t_basketsproducts`
--

CREATE TABLE `t_basketsproducts` (
  `idfkProducts` int(11) NOT NULL,
  `idfkBaskets` int(11) NOT NULL,
  `fkSizes` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_basketsproducts`
--

INSERT INTO `t_basketsproducts` (`idfkProducts`, `idfkBaskets`, `fkSizes`) VALUES
(1, 5, '36'),
(8, 5, 'L'),
(7, 5, 'M'),
(1, 5, '36'),
(8, 5, 'L');

-- --------------------------------------------------------

--
-- Structure de la table `t_brands`
--

CREATE TABLE `t_brands` (
  `idBrands` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braDescription` tinytext COLLATE utf8_unicode_ci,
  `braPictureWay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_brands`
--

INSERT INTO `t_brands` (`idBrands`, `braDescription`, `braPictureWay`) VALUES
('Balenciaga', 'Modèle de grande classe les balenciaga low son élégantes.', NULL),
('Dior', 'Maison de couture de renom, proposant également parfums, cosmétiques, bijoux et autres accessoires de luxe.', 'Dior.png'),
('Nike', 'Nike, comme la déesse de la victoire est une entreprise américaine spécialisée dans les articles de sport (chaussures, vêtements et matériel de sport), basée à Beaverton, dans l''Oregon.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_cantons`
--

CREATE TABLE `t_cantons` (
  `idCantons` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `canName` varchar(29) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_cantons`
--

INSERT INTO `t_cantons` (`idCantons`, `canName`) VALUES
('AG', 'Argovie'),
('AI', 'Appenzell Rhodes int_rieures '),
('AR', 'Appenzell Rhodes ext_rieures '),
('BE', 'Berne'),
('BL', 'Bale Campagne'),
('BS', 'Bale Ville'),
('FR', 'Fribourg'),
('GE', 'Gen'),
('GL', 'Glaris'),
('GR', ' Grisons'),
('JU', 'Jura'),
('LU', 'Lucerne'),
('NE', 'Neuchatel'),
('NW', 'Nidwald'),
('OW', 'Obwald'),
('SG', ' Saint-Gall'),
('SH', 'Schaffhouse '),
('SO', 'Soleure'),
('SZ', 'Schwyz'),
('TG', 'Thurgovie'),
('TI', 'Tessin'),
('UR', 'Uri'),
('VD', 'Vaud'),
('VS', 'Valais'),
('ZG', 'Zug'),
('ZH', 'Zurich');

-- --------------------------------------------------------

--
-- Structure de la table `t_category`
--

CREATE TABLE `t_category` (
  `idCategorys` int(11) NOT NULL,
  `catName` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_countrys`
--

CREATE TABLE `t_countrys` (
  `idCountrys` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `couName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_countrys`
--

INSERT INTO `t_countrys` (`idCountrys`, `couName`) VALUES
('CH', 'Suisse'),
('FR', 'France'),
('UK', 'England');

-- --------------------------------------------------------

--
-- Structure de la table `t_currency`
--

CREATE TABLE `t_currency` (
  `idCurrency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `curName` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_orders`
--

CREATE TABLE `t_orders` (
  `idOrders` int(11) NOT NULL,
  `ordCommandNumber` int(11) NOT NULL,
  `ordCommandDate` date NOT NULL,
  `ordSend` int(11) NOT NULL,
  `ordSendDate` date NOT NULL,
  `ordArrive` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fkBaskets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_prices`
--

CREATE TABLE `t_prices` (
  `idPrices` int(11) NOT NULL,
  `priValue` float NOT NULL,
  `fkCurrency` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_products`
--

CREATE TABLE `t_products` (
  `idProducts` int(11) NOT NULL,
  `proName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `proDescription` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `proPrice` float NOT NULL,
  `fkBrands` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_products`
--

INSERT INTO `t_products` (`idProducts`, `proName`, `proDescription`, `proPrice`, `fkBrands`) VALUES
(1, 'Arena low White', 'L’allure Balenciaga en trois mots : élégante, épurée, sculpturale.\r\nLa petite histoire : Coco Chanel a dit de Cristóbal Balenciaga : « C’est le seul d’entre nous qui est un vrai couturier. » En effet, le créateur espagnol ne se contentait pa', 365, 'Balenciaga'),
(3, 'Tech Fleece', 'Jacquet zippé pour homme et femme', 115, 'Nike'),
(4, 'So Real', 'Avec leur forme pantos déstructurée, les lunettes de soleil "DiorSoReal" du défilé Été 2014 mêlent avec harmonie lignes architecturales et esprit couture. La monture tout en légèreté est en acétate noir et détails en métal noir.\r\nLes verres s', 499, 'Dior'),
(6, 'Arena low Black', 'L’allure Balenciaga en trois mots : élégante, épurée, sculpturale.\r\nLa petite histoire : Coco Chanel a dit de Cristóbal Balenciaga : « C’est le seul d’entre nous qui est un vrai couturier. » En effet, le créateur espagnol ne se contentait pa', 365, 'Balenciaga'),
(7, 'Chanel X nike hoodie black', 'Collaboration de Nike et de Chanel sur ce Hoodie.', 199, 'Nike'),
(8, 'Chanel X nike hoodie white', 'Collaboration de Nike et de Chanel sur ce Hoodie.', 199, 'Nike');

-- --------------------------------------------------------

--
-- Structure de la table `t_productspictures`
--

CREATE TABLE `t_productspictures` (
  `idProductsPictures` int(11) NOT NULL,
  `proNamePicture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fkProducts` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_productspictures`
--

INSERT INTO `t_productspictures` (`idProductsPictures`, `proNamePicture`, `fkProducts`) VALUES
(1, '1-1.png', 1),
(2, '3-1.png', 3),
(3, 'soreal.jpg', 4),
(4, '7-1.jpg', 7),
(5, '8-1.jpg', 8),
(6, '6-1.png', 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_sizes`
--

CREATE TABLE `t_sizes` (
  `idSizes` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_sizes`
--

INSERT INTO `t_sizes` (`idSizes`) VALUES
('36'),
('37'),
('38'),
('39'),
('40'),
('41'),
('42'),
('43'),
('44'),
('L'),
('M'),
('S'),
('XL'),
('Xs');

-- --------------------------------------------------------

--
-- Structure de la table `t_stock`
--

CREATE TABLE `t_stock` (
  `idfkProducts` int(11) NOT NULL,
  `idfkSize` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_stock`
--

INSERT INTO `t_stock` (`idfkProducts`, `idfkSize`) VALUES
(1, '36'),
(1, '37'),
(1, '40'),
(1, '41'),
(1, '42'),
(1, '44'),
(3, 'S'),
(3, 'M'),
(7, 'M'),
(8, 'L'),
(7, 'S'),
(8, 'S'),
(8, 'M');

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `idUsers` int(11) NOT NULL,
  `useFirstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `useLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `useBirthDate` int(11) NOT NULL,
  `useGender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `usePhoneNumber` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usePassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useStreet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `useZipCode` smallint(6) NOT NULL,
  `fkCantons` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `fkCountry` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `useToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useRank` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_users`
--

INSERT INTO `t_users` (`idUsers`, `useFirstName`, `useLastName`, `useBirthDate`, `useGender`, `usePhoneNumber`, `useEmail`, `usePassword`, `useStreet`, `useZipCode`, `fkCantons`, `fkCountry`, `useToken`, `useRank`) VALUES
(1, 'Anass', 'Benfares', 1997, 'M', NULL, 'anassb@hotmail.ch', '$2y$10$wAiQDDjrEWjZHMjdQPeLGe5N.k5XSGCLxJ82.n/VZAzjsjtg8SXIe', 'Route d''eclepens 21A', 1306, 'VD', 'CH', '', 1),
(2, 'Marc', 'Jean', 1998, 'M', NULL, 'ana2s.b@hotmail.com', '$2y$10$wAiQDDjrEWjZHMjdQPeLGe5N.k5XSGCLxJ82.n/VZAzjsjtg8SXIe', 'Route d''eclepens 21A', 1306, 'VD', 'CH', '', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_baskets`
--
ALTER TABLE `t_baskets`
  ADD PRIMARY KEY (`idBaskets`),
  ADD KEY `fkUsers` (`fkUsers`);

--
-- Index pour la table `t_basketsproducts`
--
ALTER TABLE `t_basketsproducts`
  ADD KEY `idfkProducts` (`idfkProducts`),
  ADD KEY `idfkBaskets` (`idfkBaskets`),
  ADD KEY `fkSizes` (`fkSizes`);

--
-- Index pour la table `t_brands`
--
ALTER TABLE `t_brands`
  ADD PRIMARY KEY (`idBrands`);

--
-- Index pour la table `t_cantons`
--
ALTER TABLE `t_cantons`
  ADD PRIMARY KEY (`idCantons`);

--
-- Index pour la table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`idCategorys`);

--
-- Index pour la table `t_countrys`
--
ALTER TABLE `t_countrys`
  ADD PRIMARY KEY (`idCountrys`);

--
-- Index pour la table `t_orders`
--
ALTER TABLE `t_orders`
  ADD PRIMARY KEY (`idOrders`),
  ADD KEY `fkBaskets` (`fkBaskets`);

--
-- Index pour la table `t_prices`
--
ALTER TABLE `t_prices`
  ADD PRIMARY KEY (`idPrices`),
  ADD KEY `fkCurrency` (`fkCurrency`);

--
-- Index pour la table `t_products`
--
ALTER TABLE `t_products`
  ADD PRIMARY KEY (`idProducts`),
  ADD KEY `fkBrands` (`fkBrands`);

--
-- Index pour la table `t_productspictures`
--
ALTER TABLE `t_productspictures`
  ADD PRIMARY KEY (`idProductsPictures`),
  ADD KEY `fkProducts` (`fkProducts`);

--
-- Index pour la table `t_sizes`
--
ALTER TABLE `t_sizes`
  ADD PRIMARY KEY (`idSizes`);

--
-- Index pour la table `t_stock`
--
ALTER TABLE `t_stock`
  ADD KEY `idfkProducts` (`idfkProducts`),
  ADD KEY `idfkSize` (`idfkSize`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`idUsers`),
  ADD KEY `fkCantons` (`fkCantons`),
  ADD KEY `fkCountry` (`fkCountry`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_baskets`
--
ALTER TABLE `t_baskets`
  MODIFY `idBaskets` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_category`
--
ALTER TABLE `t_category`
  MODIFY `idCategorys` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_orders`
--
ALTER TABLE `t_orders`
  MODIFY `idOrders` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_prices`
--
ALTER TABLE `t_prices`
  MODIFY `idPrices` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_products`
--
ALTER TABLE `t_products`
  MODIFY `idProducts` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `t_productspictures`
--
ALTER TABLE `t_productspictures`
  MODIFY `idProductsPictures` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_baskets`
--
ALTER TABLE `t_baskets`
  ADD CONSTRAINT `t_baskets_ibfk_1` FOREIGN KEY (`fkUsers`) REFERENCES `t_users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_basketsproducts`
--
ALTER TABLE `t_basketsproducts`
  ADD CONSTRAINT `t_basketsproducts_ibfk_3` FOREIGN KEY (`fkSizes`) REFERENCES `t_sizes` (`idSizes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_basketsproducts_ibfk_1` FOREIGN KEY (`idfkBaskets`) REFERENCES `t_baskets` (`idBaskets`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_basketsproducts_ibfk_2` FOREIGN KEY (`idfkProducts`) REFERENCES `t_products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_orders`
--
ALTER TABLE `t_orders`
  ADD CONSTRAINT `t_orders_ibfk_1` FOREIGN KEY (`fkBaskets`) REFERENCES `t_baskets` (`idBaskets`);

--
-- Contraintes pour la table `t_products`
--
ALTER TABLE `t_products`
  ADD CONSTRAINT `t_products_ibfk_1` FOREIGN KEY (`fkBrands`) REFERENCES `t_brands` (`idBrands`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_productspictures`
--
ALTER TABLE `t_productspictures`
  ADD CONSTRAINT `t_productspictures_ibfk_1` FOREIGN KEY (`fkProducts`) REFERENCES `t_products` (`idProducts`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`idfkProducts`) REFERENCES `t_products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`idfkSize`) REFERENCES `t_sizes` (`idSizes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`fkCantons`) REFERENCES `t_cantons` (`idCantons`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_users_ibfk_2` FOREIGN KEY (`fkCountry`) REFERENCES `t_countrys` (`idCountrys`) ON UPDATE CASCADE;
