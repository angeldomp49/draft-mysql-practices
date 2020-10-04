-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 04 oct. 2020 à 02:39
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `zoologic`
--

-- --------------------------------------------------------

--
-- Structure de la table `animals`
--

DROP TABLE IF EXISTS `animals`;
CREATE TABLE IF NOT EXISTS `animals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `habitat_id` bigint(20) UNSIGNED NOT NULL,
  `kind_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `fk_habitat` (`habitat_id`),
  KEY `fk_kind` (`kind_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`id`, `habitat_id`, `kind_id`, `name`, `sex`, `birthday`, `age`, `description`) VALUES
(1, 3, 3, 'dory', 'f', '1995-10-29', 1, 'custome desc'),
(2, 2, 2, 'pedro', 'm', '2000-09-01', 9, 'description dog'),
(3, 2, 2, 'sara', 'f', '1996-10-29', 6, 'description cat'),
(4, 2, 1, 'camila', 'f', '2006-10-29', 4, 'description cat'),
(5, 1, 4, 'nicole', 'f', '1997-10-29', 7, 'description cat'),
(6, 1, 4, 'fernando', 'm', '2001-10-29', 2, 'description cat'),
(7, 3, 3, 'alejandro', 'm', '1996-10-29', 1, 'description cat'),
(8, 2, 1, 'mauricio', 'm', '1998-10-29', 10, 'description cat'),
(9, 3, 3, 'ricardo', 'm', '2003-10-29', 8, 'description cat'),
(10, 1, 4, 'fernanda', 'f', '2000-10-29', 11, 'description cat'),
(11, 2, 2, 'isabel', 'f', '2002-10-29', 4, 'description cat'),
(12, 3, 3, 'samantha', 'f', '2010-10-29', 3, 'description cat'),
(13, 2, 1, 'tomas', 'm', '2009-10-29', 7, 'description cat'),
(14, 1, 4, 'ivette', 'f', '2011-10-29', 2, 'description cat'),
(15, 2, 2, 'vanessa', 'f', '1999-10-29', 8, 'description cat'),
(16, 2, 1, 'antonio', 'm', '2002-10-29', 12, 'description cat'),
(17, 3, 3, 'roberto', 'm', '2008-10-29', 7, 'description cat'),
(18, 1, 4, 'susana', 'f', '2007-10-29', 6, 'description cat'),
(19, 3, 3, 'dominique', 'm', '2004-10-29', 3, 'description cat'),
(20, 3, 3, 'jordan', 'm', '2005-10-29', 5, 'description cat');

-- --------------------------------------------------------

--
-- Structure de la table `animal_food`
--

DROP TABLE IF EXISTS `animal_food`;
CREATE TABLE IF NOT EXISTS `animal_food` (
  `animal_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  KEY `fk_animal` (`animal_id`),
  KEY `fk_food` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `animal_food`
--

INSERT INTO `animal_food` (`animal_id`, `food_id`) VALUES
(1, 2),
(1, 3),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 4),
(5, 5),
(6, 4),
(6, 5),
(7, 2),
(7, 4),
(7, 5),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(11, 3),
(11, 4),
(11, 5),
(14, 3),
(14, 5),
(12, 1),
(12, 3),
(12, 5),
(13, 1),
(13, 2),
(13, 3),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(15, 2),
(15, 3),
(15, 5);

-- --------------------------------------------------------

--
-- Structure de la table `foods`
--

DROP TABLE IF EXISTS `foods`;
CREATE TABLE IF NOT EXISTS `foods` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`) VALUES
(1, 'meat', 'like cown or pork'),
(2, 'corn', 'like tortillas or corncob'),
(3, 'seafood', 'like shrimp'),
(4, 'fruit', 'like pear and apple'),
(5, 'fish', 'like tuna fish');

-- --------------------------------------------------------

--
-- Structure de la table `habitats`
--

DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `weather_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `area` decimal(5,5) DEFAULT NULL,
  `inhabitats` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_weather` (`weather_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `habitats`
--

INSERT INTO `habitats` (`id`, `weather_id`, `name`, `area`, `inhabitats`) VALUES
(1, 2, 'chicken house', '0.99999', 10),
(2, 5, 'home', '0.99999', 10),
(3, 4, 'tank', '0.99999', 10);

-- --------------------------------------------------------

--
-- Structure de la table `imageable`
--

DROP TABLE IF EXISTS `imageable`;
CREATE TABLE IF NOT EXISTS `imageable` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mime` varchar(100) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumblob,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kinds`
--

DROP TABLE IF EXISTS `kinds`;
CREATE TABLE IF NOT EXISTS `kinds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `latin_name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `kinds`
--

INSERT INTO `kinds` (`id`, `name`, `latin_name`, `description`) VALUES
(1, 'cat', 'Felis silvestris catus', 'gato domestico'),
(2, 'dog', 'Canis lupus familiaris', 'perro domestico'),
(3, 'turtle', 'Testudinata', 'tortuga domestica'),
(4, 'chicken', 'Gallus gallus domesticus', 'gallina domestica');

-- --------------------------------------------------------

--
-- Structure de la table `weathers`
--

DROP TABLE IF EXISTS `weathers`;
CREATE TABLE IF NOT EXISTS `weathers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `weathers`
--

INSERT INTO `weathers` (`id`, `name`, `description`) VALUES
(1, 'rainy', 'clima lluvioso'),
(2, 'sunny', 'clima soleado'),
(3, 'chilly', 'clima frio'),
(4, 'humid', 'clima humedo'),
(5, 'dry', 'clima seco');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `fk_habitat` FOREIGN KEY (`habitat_id`) REFERENCES `habitats` (`id`),
  ADD CONSTRAINT `fk_kind` FOREIGN KEY (`kind_id`) REFERENCES `kinds` (`id`);

--
-- Contraintes pour la table `animal_food`
--
ALTER TABLE `animal_food`
  ADD CONSTRAINT `fk_animal` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`),
  ADD CONSTRAINT `fk_food` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`);

--
-- Contraintes pour la table `habitats`
--
ALTER TABLE `habitats`
  ADD CONSTRAINT `fk_weather` FOREIGN KEY (`weather_id`) REFERENCES `weathers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
