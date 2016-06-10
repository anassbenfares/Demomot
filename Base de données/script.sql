-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
-- Client :  localhost:8889
-- Généré le :  Mer 08 Juin 2016 à 16:30
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


DROP DATABASE IF EXISTS `db_Shop`;

CREATE DATABASE `db_Shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_Shop`;


-- Base de données :  `db_shop`

-- -----------------------------------------------------
CREATE TABLE `db_Shop`.`t_basketsproducts`(
  `idfkProducts` int(11) NOT NULL,
  `idfkBaskets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `db_Shop`.`t_basketsproducts` ( `idfkProducts` INT NOT NULL , `idfkBaskets` INT NOT NULL , INDEX `idfkProducts` (`idfkProducts`), INDEX `idfkBaskets` (`idfkBaskets`)) ENGINE = InnoDB;



CREATE TABLE `t_baskets` (
  `idBaskets` int(11) NOT NULL,
  `basSend` tinyint(1) NOT NULL,
  `fkUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_brands`

CREATE TABLE `t_brands` (
  `idBrands` int(11) NOT NULL,
  `braName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braDescription` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `braPictureWay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Contenu de la table `t_brands`

INSERT INTO `t_brands` (`idBrands`, `braName`, `braDescription`, `braPictureWay`) VALUES
(1, 'Nike', 'Nike, comme la déesse de la victoire est une entreprise américaine spécialisée dans les articles de sport (chaussures, vêtements et matériel de sport), basée à Beaverton, dans l''Oregon.', NULL);

-- -----------------------------------------------------

-- Structure de la table `t_cantons`

CREATE TABLE `t_cantons` (
  `idCantons` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `canName` varchar(29) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Contenu de la table `t_cantons`

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

-- -----------------------------------------------------

-- Structure de la table `t_countrys`

CREATE TABLE `t_countrys` (
  `idCountrys` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `couName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Contenu de la table `t_countrys`

INSERT INTO `t_countrys` (`idCountrys`, `couName`) VALUES
('CH', 'Suisse'),
('FR', 'France'),
('UK', 'England');

-- -----------------------------------------------------

-- Structure de la table `t_orders`

CREATE TABLE `t_orders` (
  `idOrders` int(11) NOT NULL,
  `ordCommandNumber` int(11) NOT NULL,
  `ordCommandDate` date NOT NULL,
  `ordSend` tinyint(1) NOT NULL,
  `ordSendDate` date DEFAULT NULL,
  `ordArrive` tinyint(1) DEFAULT NULL,
  `fkBaskets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_products`

CREATE TABLE `t_products` (
  `idProducts` int(11) NOT NULL,
  `proName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `proDescription` tinytext COLLATE utf8_unicode_ci,
  `proPrice` float NOT NULL,
  `fkBrands` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_productspictures`

CREATE TABLE `t_productspictures` (
  `idProductsPictures` int(11) NOT NULL,
  `proNamePicture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fkProducts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_sizes`

CREATE TABLE `t_sizes` (
  `idSizes` int(11) NOT NULL,
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_stock`

CREATE TABLE `t_stock` (
  `idfkProducts` int(11) NOT NULL,
  `idfkSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_users`

CREATE TABLE `t_users` (
  `idUsers` int(11) NOT NULL,
  `useFirstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `useLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `useBirthDate` date NOT NULL,
  `useGender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `usePhoneNumber` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usePassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useStreet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `useZipCode` smallint(3) NOT NULL,
  `fkCantons` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `fkCountry` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `useToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useRank` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Contenu de la table `t_users`

INSERT INTO `t_users` (`idUsers`, `useFirstName`, `useLastName`, `useBirthDate`, `useGender`, `usePhoneNumber`, `useEmail`, `usePassword`, `useStreet`, `useZipCode`, `fkCantons`, `fkCountry`, `useToken`, `useRank`) VALUES
(1, 'Anass', 'Benfares', '1997-12-02', 'M', NULL, 'anassb@hotmail.ch', '$2y$10$wAiQDDjrEWjZHMjdQPeLGe5N.k5XSGCLxJ82.n/VZAzjsjtg8SXIe', 'Route d''eclepens 21A', 1306, 'VD', 'CH', '', 1);

-- Index pour les tables exportées

-- Index pour la table `t_basketproducts`
ALTER TABLE `t_basketsproducts`
  ADD KEY `idfkProducts` (`idfkProducts`),
  ADD KEY `idfkBaskets` (`idfkBaskets`);

-- Index pour la table `t_baskets`
ALTER TABLE `t_baskets`
  ADD PRIMARY KEY (`idBaskets`),
  ADD KEY `fkUsers` (`fkUsers`);

-- Index pour la table `t_brands`
ALTER TABLE `t_brands`
  ADD PRIMARY KEY (`idBrands`);

-- Index pour la table `t_cantons`
ALTER TABLE `t_cantons`
  ADD PRIMARY KEY (`idCantons`);

-- Index pour la table `t_countrys`
ALTER TABLE `t_countrys`
  ADD PRIMARY KEY (`idCountrys`);

-- Index pour la table `t_orders`
ALTER TABLE `t_orders`
  ADD PRIMARY KEY (`idOrders`),
  ADD KEY `fkBaskets` (`fkBaskets`);

-- Index pour la table `t_products`
ALTER TABLE `t_products`
  ADD PRIMARY KEY (`idProducts`),
  ADD KEY `fkBrands` (`fkBrands`);

-- Index pour la table `t_productspictures`
ALTER TABLE `t_productspictures`
  ADD PRIMARY KEY (`idProductsPictures`),
  ADD UNIQUE KEY `fkProducts` (`fkProducts`);

-- Index pour la table `t_sizes`
ALTER TABLE `t_sizes`
  ADD PRIMARY KEY (`idSizes`);

-- Index pour la table `t_stock`
ALTER TABLE `t_stock`
  ADD KEY `idfkProducts` (`idfkProducts`),
  ADD KEY `idfkSize` (`idfkSize`);

-- Index pour la table `t_users`
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`idUsers`),
  ADD KEY `fkCountry` (`fkCountry`),
  ADD KEY `fkCantons` (`fkCantons`);

-- AUTO_INCREMENT pour les tables exportées

-- AUTO_INCREMENT pour la table `t_brands`
ALTER TABLE `t_brands`
  MODIFY `idBrands` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
-- AUTO_INCREMENT pour la table `t_orders`
ALTER TABLE `t_orders`
  MODIFY `idOrders` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT pour la table `t_products`
ALTER TABLE `t_products`
  MODIFY `idProducts` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT pour la table `t_productspictures`
ALTER TABLE `t_productspictures`
  MODIFY `idProductsPictures` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT pour la table `t_sizes`
ALTER TABLE `t_sizes`
  MODIFY `idSizes` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT pour la table `t_users`
ALTER TABLE `t_users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
-- Contraintes pour les tables exportées

-- Contraintes pour la table `t_basketsproducts`
ALTER TABLE `t_basketproducts`
  ADD CONSTRAINT `t_basketsproducts_ibfk_2` FOREIGN KEY (`idfkProducts`) REFERENCES `t_products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_basketsproducts_ibfk_3` FOREIGN KEY (`idfkBaskets`) REFERENCES `t_baskets` (`idBaskets`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Contraintes pour la table `t_baskets`
ALTER TABLE `t_baskets`
  ADD CONSTRAINT `t_baskets_ibfk_1` FOREIGN KEY (`fkUsers`) REFERENCES `t_users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Contraintes pour la table `t_orders`
ALTER TABLE `t_orders`
  ADD CONSTRAINT `t_orders_ibfk_1` FOREIGN KEY (`fkBaskets`) REFERENCES `t_baskets` (`idBaskets`);

-- Contraintes pour la table `t_products`
ALTER TABLE `t_products`
  ADD CONSTRAINT `t_products_ibfk_1` FOREIGN KEY (`fkBrands`) REFERENCES `t_brands` (`idBrands`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Contraintes pour la table `t_productspictures`
ALTER TABLE `t_productspictures`
  ADD CONSTRAINT `t_productspictures_ibfk_1` FOREIGN KEY (`fkProducts`) REFERENCES `t_products` (`idProducts`) ON UPDATE CASCADE;

-- Contraintes pour la table `t_stock`
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`idfkProducts`) REFERENCES `t_products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`idfkSize`) REFERENCES `t_sizes` (`idSizes`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Contraintes pour la table `t_users`
ALTER TABLE `t_users`
  ADD CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`fkCantons`) REFERENCES `t_cantons` (`idCantons`) ON UPDATE CASCADE,
  ADD CONSTRAINT `t_users_ibfk_2` FOREIGN KEY (`fkCountry`) REFERENCES `t_countrys` (`idCountrys`) ON UPDATE CASCADE;