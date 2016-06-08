<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1404.34">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Helvetica; min-height: 14.0px}
  </style>
</head>
<body>
<p class="p1">-- phpMyAdmin SQL Dump</p>
<p class="p1">-- version 4.4.10</p>
<p class="p1">-- http://www.phpmyadmin.net</p>
<p class="p1">--</p>
<p class="p1">-- Client :<span class="Apple-converted-space">  </span>localhost:8889</p>
<p class="p1">-- Généré le :<span class="Apple-converted-space">  </span>Mer 08 Juin 2016 à 16:30</p>
<p class="p1">-- Version du serveur :<span class="Apple-converted-space">  </span>5.5.42</p>
<p class="p1">-- Version de PHP :<span class="Apple-converted-space">  </span>7.0.0</p>
<p class="p2"><br></p>
<p class="p1">SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";</p>
<p class="p1">SET time_zone = "+00:00";</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Base de données :<span class="Apple-converted-space">  </span>`db_shop`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_basketproducts`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_basketproducts` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idfkProducts` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idfkBaskets` int(11) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_baskets`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_baskets` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idBaskets` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`basSend` tinyint(1) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`fkUsers` int(11) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_brands`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_brands` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idBrands` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`braName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`braDescription` tinytext COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`braPictureWay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL</p>
<p class="p1">) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contenu de la table `t_brands`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">INSERT INTO `t_brands` (`idBrands`, `braName`, `braDescription`, `braPictureWay`) VALUES</p>
<p class="p1">(1, 'Nike', 'Nike, comme la déesse de la victoire est une entreprise américaine spécialisée dans les articles de sport (chaussures, vêtements et matériel de sport), basée à Beaverton, dans l''Oregon.', NULL);</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_cantons`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_cantons` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idCantons` char(2) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`canName` varchar(29) COLLATE utf8_unicode_ci NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contenu de la table `t_cantons`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">INSERT INTO `t_cantons` (`idCantons`, `canName`) VALUES</p>
<p class="p1">('AG', 'Argovie'),</p>
<p class="p1">('AI', 'Appenzell Rhodes int_rieures '),</p>
<p class="p1">('AR', 'Appenzell Rhodes ext_rieures '),</p>
<p class="p1">('BE', 'Berne'),</p>
<p class="p1">('BL', 'Bale Campagne'),</p>
<p class="p1">('BS', 'Bale Ville'),</p>
<p class="p1">('FR', 'Fribourg'),</p>
<p class="p1">('GE', 'Gen'),</p>
<p class="p1">('GL', 'Glaris'),</p>
<p class="p1">('GR', ' Grisons'),</p>
<p class="p1">('JU', 'Jura'),</p>
<p class="p1">('LU', 'Lucerne'),</p>
<p class="p1">('NE', 'Neuchatel'),</p>
<p class="p1">('NW', 'Nidwald'),</p>
<p class="p1">('OW', 'Obwald'),</p>
<p class="p1">('SG', ' Saint-Gall'),</p>
<p class="p1">('SH', 'Schaffhouse '),</p>
<p class="p1">('SO', 'Soleure'),</p>
<p class="p1">('SZ', 'Schwyz'),</p>
<p class="p1">('TG', 'Thurgovie'),</p>
<p class="p1">('TI', 'Tessin'),</p>
<p class="p1">('UR', 'Uri'),</p>
<p class="p1">('VD', 'Vaud'),</p>
<p class="p1">('VS', 'Valais'),</p>
<p class="p1">('ZG', 'Zug'),</p>
<p class="p1">('ZH', 'Zurich');</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_countrys`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_countrys` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idCountrys` char(2) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`couName` varchar(255) COLLATE utf8_unicode_ci NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contenu de la table `t_countrys`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">INSERT INTO `t_countrys` (`idCountrys`, `couName`) VALUES</p>
<p class="p1">('CH', 'Suisse'),</p>
<p class="p1">('FR', 'France'),</p>
<p class="p1">('UK', 'England');</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_orders`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_orders` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idOrders` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`ordCommandNumber` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`ordCommandDate` date NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`ordSend` tinyint(1) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`ordSendDate` date DEFAULT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`ordArrive` tinyint(1) DEFAULT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`fkBaskets` int(11) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_products`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_products` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idProducts` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`proName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`proDescription` tinytext COLLATE utf8_unicode_ci,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`proPrice` float NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`fkBrands` int(11) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_productspictures`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_productspictures` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idProductsPictures` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`proNamePicture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`fkProducts` int(11) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_sizes`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_sizes` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idSizes` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`name` varchar(5) COLLATE utf8_unicode_ci NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_stock`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_stock` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idfkProducts` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idfkSize` int(11) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">-- --------------------------------------------------------</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Structure de la table `t_users`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">CREATE TABLE `t_users` (</p>
<p class="p1"><span class="Apple-converted-space">  </span>`idUsers` int(11) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useFirstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useBirthDate` date NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useGender` char(1) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`usePhoneNumber` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`usePassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useStreet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useZipCode` smallint(3) NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`fkCantons` char(2) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`fkCountry` char(2) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,</p>
<p class="p1"><span class="Apple-converted-space">  </span>`useRank` tinyint(1) NOT NULL</p>
<p class="p1">) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contenu de la table `t_users`</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">INSERT INTO `t_users` (`idUsers`, `useFirstName`, `useLastName`, `useBirthDate`, `useGender`, `usePhoneNumber`, `useEmail`, `usePassword`, `useStreet`, `useZipCode`, `fkCantons`, `fkCountry`, `useToken`, `useRank`) VALUES</p>
<p class="p1">(1, 'Anass', 'Benfares', '1997-12-02', 'M', NULL, 'anassb@hotmail.ch', '$2y$10$wAiQDDjrEWjZHMjdQPeLGe5N.k5XSGCLxJ82.n/VZAzjsjtg8SXIe', 'Route d''eclepens 21A', 1306, 'VD', 'CH', '', 1);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour les tables exportées</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_basketproducts`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_basketproducts`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `idfkProducts` (`idfkProducts`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `idfkBaskets` (`idfkBaskets`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_baskets`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_baskets`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idBaskets`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `fkUsers` (`fkUsers`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_brands`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_brands`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idBrands`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_cantons`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_cantons`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idCantons`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_countrys`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_countrys`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idCountrys`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_orders`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_orders`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idOrders`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `fkBaskets` (`fkBaskets`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_products`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_products`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idProducts`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `fkBrands` (`fkBrands`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_productspictures`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_productspictures`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idProductsPictures`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD UNIQUE KEY `fkProducts` (`fkProducts`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_sizes`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_sizes`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idSizes`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_stock`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_stock`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `idfkProducts` (`idfkProducts`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `idfkSize` (`idfkSize`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Index pour la table `t_users`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_users`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD PRIMARY KEY (`idUsers`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `fkCountry` (`fkCountry`),</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD KEY `fkCantons` (`fkCantons`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour les tables exportées</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour la table `t_brands`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_brands`</p>
<p class="p1"><span class="Apple-converted-space">  </span>MODIFY `idBrands` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;</p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour la table `t_orders`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_orders`</p>
<p class="p1"><span class="Apple-converted-space">  </span>MODIFY `idOrders` int(11) NOT NULL AUTO_INCREMENT;</p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour la table `t_products`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_products`</p>
<p class="p1"><span class="Apple-converted-space">  </span>MODIFY `idProducts` int(11) NOT NULL AUTO_INCREMENT;</p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour la table `t_productspictures`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_productspictures`</p>
<p class="p1"><span class="Apple-converted-space">  </span>MODIFY `idProductsPictures` int(11) NOT NULL AUTO_INCREMENT;</p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour la table `t_sizes`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_sizes`</p>
<p class="p1"><span class="Apple-converted-space">  </span>MODIFY `idSizes` int(11) NOT NULL AUTO_INCREMENT;</p>
<p class="p1">--</p>
<p class="p1">-- AUTO_INCREMENT pour la table `t_users`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_users`</p>
<p class="p1"><span class="Apple-converted-space">  </span>MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;</p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour les tables exportées</p>
<p class="p1">--</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_basketproducts`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_basketproducts`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_basketproducts_ibfk_2` FOREIGN KEY (`idfkProducts`) REFERENCES `t_products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE,</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_basketproducts_ibfk_3` FOREIGN KEY (`idfkBaskets`) REFERENCES `t_baskets` (`idBaskets`) ON DELETE CASCADE ON UPDATE CASCADE;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_baskets`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_baskets`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_baskets_ibfk_1` FOREIGN KEY (`fkUsers`) REFERENCES `t_users` (`idUsers`) ON DELETE CASCADE ON UPDATE CASCADE;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_orders`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_orders`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_orders_ibfk_1` FOREIGN KEY (`fkBaskets`) REFERENCES `t_baskets` (`idBaskets`);</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_products`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_products`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_products_ibfk_1` FOREIGN KEY (`fkBrands`) REFERENCES `t_brands` (`idBrands`) ON DELETE CASCADE ON UPDATE CASCADE;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_productspictures`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_productspictures`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_productspictures_ibfk_1` FOREIGN KEY (`fkProducts`) REFERENCES `t_products` (`idProducts`) ON UPDATE CASCADE;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_stock`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_stock`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`idfkProducts`) REFERENCES `t_products` (`idProducts`) ON DELETE CASCADE ON UPDATE CASCADE,</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`idfkSize`) REFERENCES `t_sizes` (`idSizes`) ON DELETE CASCADE ON UPDATE CASCADE;</p>
<p class="p2"><br></p>
<p class="p1">--</p>
<p class="p1">-- Contraintes pour la table `t_users`</p>
<p class="p1">--</p>
<p class="p1">ALTER TABLE `t_users`</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`fkCantons`) REFERENCES `t_cantons` (`idCantons`) ON UPDATE CASCADE,</p>
<p class="p1"><span class="Apple-converted-space">  </span>ADD CONSTRAINT `t_users_ibfk_2` FOREIGN KEY (`fkCountry`) REFERENCES `t_countrys` (`idCountrys`) ON UPDATE CASCADE;</p>
</body>
</html>
