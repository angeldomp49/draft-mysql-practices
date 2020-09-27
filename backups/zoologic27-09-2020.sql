-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 27 sep. 2020 à 22:53
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
  `name` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `photography` mediumblob,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`id`, `name`, `sex`, `birthday`, `age`, `photography`, `description`) VALUES
(1, 'cat', 'M', '1996-10-29', 5, NULL, 'description cat'),
(2, 'cat', 'M', '1995-10-29', 5, NULL, 'custome desc'),
(3, 'dog', 'F', '2000-09-01', 5, NULL, 'description dog'),
(4, 'bird', 'M', '1996-10-29', 5, NULL, 'description cat'),
(5, 'fish', 'M', '2006-10-29', 5, NULL, 'description cat'),
(6, 'cat', 'F', '1997-10-29', 5, NULL, 'description cat'),
(7, 'cat', 'M', '2001-10-29', 5, NULL, 'description cat'),
(8, 'dog', 'M', '1996-10-29', 5, NULL, 'description cat'),
(9, 'cat', 'F', '1998-10-29', 5, NULL, 'description cat'),
(10, 'cat', 'M', '2003-10-29', 5, NULL, 'description cat'),
(11, 'fish', 'F', '2000-10-29', 5, NULL, 'description cat'),
(12, 'fish', 'M', '2002-10-29', 5, NULL, 'description cat'),
(13, 'fish', 'F', '2010-10-29', 5, NULL, 'description cat'),
(14, 'cat', 'M', '2009-10-29', 5, NULL, 'description cat'),
(15, 'cat', 'M', '2011-10-29', 5, NULL, 'description cat'),
(16, 'bird', 'F', '1999-10-29', 5, NULL, 'description cat'),
(17, 'cat', 'M', '2002-10-29', 5, NULL, 'description cat'),
(18, 'cat', 'F', '2008-10-29', 5, NULL, 'description cat'),
(19, 'bird', 'F', '2007-10-29', 5, NULL, 'description cat'),
(20, 'dog', 'F', '2004-10-29', 5, NULL, 'description cat'),
(21, 'cat', 'M', '2005-10-29', 5, NULL, 'description cat');

-- --------------------------------------------------------

--
-- Structure de la table `habitats`
--

DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `area` decimal(5,5) DEFAULT NULL,
  `inhabitats` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `weathers`
--

DROP TABLE IF EXISTS `weathers`;
CREATE TABLE IF NOT EXISTS `weathers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `photography` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
