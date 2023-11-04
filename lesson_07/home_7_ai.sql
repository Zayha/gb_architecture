CREATE TABLE IF NOT EXISTS `Product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `idSubCategory` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `idProvider` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idSubCategory`) REFERENCES `subCategory`(`id`),
  FOREIGN KEY (`idProvider`) REFERENCES `Provider`(`id`),
  FOREIGN KEY (`idType`) REFERENCES `Type`(`id`)
);

CREATE TABLE IF NOT EXISTS `subCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idCategory`) REFERENCES `Category`(`id`)
);

CREATE TABLE IF NOT EXISTS `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProduct` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`idProduct`) REFERENCES `Product`(`id`)
);

CREATE TABLE IF NOT EXISTS `Type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `detailsCompany` text NOT NULL,
  `adress` text NOT NULL,
  PRIMARY KEY (`id`)
);