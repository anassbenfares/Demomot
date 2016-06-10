SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


DROP DATABASE IF EXISTS `db_Shop`;

CREATE DATABASE `db_Shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_Shop`;

-- -----------------------------------------------------

-- Structure de la table `t_basketsproducts`
CREATE TABLE `db_Shop`.`t_basketsproducts` 
( 
	`idfkProducts` INT NOT NULL , 
	`idfkBaskets` INT NOT NULL , 
	INDEX `idfkProducts` (`idfkProducts`), 
	INDEX `idfkBaskets` (`idfkBaskets`)
) ENGINE = InnoDB;

-- -----------------------------------------------------

-- Structure de la table `t_baskets`
CREATE TABLE `db_Shop`.`t_baskets` 
( 
	`idBaskets` INT NOT NULL AUTO_INCREMENT , 
	`basSend` TINYINT(1) NOT NULL , 
	`fkUsers` INT NOT NULL , 
	PRIMARY KEY (`idBaskets`), 
	INDEX `fkUsers` (`fkUsers`)
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;


-- -----------------------------------------------------

-- Structure de la table `t_brands`
CREATE TABLE `db_Shop`.`t_brands` 
( 
	`idBrands` INT NOT NULL AUTO_INCREMENT , 
	`braName` VARCHAR(255) NOT NULL , 
	`braDescription` TINYTEXT NOT NULL , 
	`braPictureWay` VARCHAR(255) NOT NULL , 
	PRIMARY KEY (`idBrands`)
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

ALTER TABLE `t_brands` CHANGE `braDescription` `braDescription` TINYTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;

ALTER TABLE `t_brands` CHANGE `braPictureWay` `braPictureWay` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;

INSERT INTO `t_brands` (`idBrands`, `braName`, `braDescription`, `braPictureWay`) VALUES
(1, 'Nike', 'Nike, comme la déesse de la victoire est une entreprise américaine spécialisée dans les articles de sport (chaussures, vêtements et matériel de sport), basée à Beaverton, dans l''Oregon.', NULL);

-- -----------------------------------------------------

-- Structure de la table `t_cantons`

CREATE TABLE `db_Shop`.`t_cantons` ( `idCantons` CHAR(2) NOT NULL , `canName` VARCHAR(29) NOT NULL , PRIMARY KEY (`idCantons`)) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

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
CREATE TABLE `db_Shop`.`t_countrys` ( `idCountrys` CHAR(2) NOT NULL , `couName` VARCHAR(255) NOT NULL , PRIMARY KEY (`idCountrys`)) ENGINE = InnoDB;

-- Contenu de la table `t_countrys`

INSERT INTO `t_countrys` (`idCountrys`, `couName`) VALUES
('CH', 'Suisse'),
('FR', 'France'),
('UK', 'England');


-- -----------------------------------------------------

-- Structure de la table `t_orders`
CREATE TABLE `db_Shop`.`t_orders` ( `idOrders` INT NOT NULL AUTO_INCREMENT , `ordCommandNumber` INT NOT NULL , `ordCommandDate` DATE NOT NULL , `ordSend` INT NOT NULL , `ordSendDate` DATE NOT NULL , `ordArrive` CHAR(1) NOT NULL , `fkBaskets` INT NOT NULL , PRIMARY KEY (`idOrders`), INDEX `fkBaskets` (`fkBaskets`)) ENGINE = InnoDB;

-- -----------------------------------------------------

-- Structure de la table `t_products`
CREATE TABLE `db_Shop`.`t_products` ( `idProducts` INT NOT NULL , `proName` VARCHAR(100) NOT NULL , `proDescription` TINYTEXT NOT NULL , `proPrice` FLOAT NOT NULL , `fkBrands` INT NOT NULL , PRIMARY KEY (`idProducts`), INDEX `fkBrands` (`fkBrands`)) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- -----------------------------------------------------

-- Structure de la table `t_productspictures`
CREATE TABLE `db_Shop`.`t_productspictures` ( `idProductsPictures` INT NOT NULL AUTO_INCREMENT , `proNamePicture` VARCHAR(255) NOT NULL , `fkProducts` INT NOT NULL , PRIMARY KEY (`idProductsPictures`), INDEX `fkProducts` (`fkProducts`)) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- Structure de la table `t_sizes`
CREATE TABLE `db_Shop`.`t_sizes` ( `idSizes` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(5) NOT NULL , PRIMARY KEY (`idSizes`)) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- Structure de la table `t_stock`
CREATE TABLE `db_Shop`.`t_stock` ( `idfkProducts` INT NOT NULL , `idfkSize` INT NOT NULL , INDEX `idfkProducts` (`idfkProducts`), INDEX `idfkSize` (`idfkSize`)) ENGINE = InnoDB;

-- Structure de la table `t_users`
CREATE TABLE `db_Shop`.`t_users` (
	`idUsers` INT NOT NULL AUTO_INCREMENT, 
	`useFirstName` VARCHAR(25) NOT NULL, 
	`useLastName` VARCHAR(50) NOT NULL, 
	`useBirthDate` INT NOT NULL, 
	`useGender` CHAR(1) NOT NULL, 
	`usePhoneNumber` VARCHAR(13) NULL, 
	`useEmail` VARCHAR(50) NOT NULL, 
	`usePassword` VARCHAR(255) NOT NULL, 
	`useStreet` VARCHAR(100) NOT NULL, 
	`useZipCode` SMALLINT NOT NULL, 
	`fkCantons` CHAR(2) NOT NULL, 
	`fkCountry` CHAR(2) NOT NULL, 
	`useToken` VARCHAR(255) NOT NULL, 
	`useRank` TINYINT(1) NOT NULL, 
	PRIMARY KEY (`idUsers`), 
	INDEX `fkCantons` (`fkCantons`), 
	INDEX `fkCountry` (`fkCountry`)
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;





