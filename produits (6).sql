-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 08 juin 2023 à 12:04
-- Version du serveur : 5.7.36
-- Version de PHP : 8.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `produits`
--

-- --------------------------------------------------------

--
-- Structure de la table `acheter`
--

DROP TABLE IF EXISTS `acheter`;
CREATE TABLE IF NOT EXISTS `acheter` (
  `NumClient` int(11) DEFAULT NULL,
  `NumProduit` int(11) DEFAULT NULL,
  `DateAchat` date DEFAULT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Qte` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fkAchat` (`NumProduit`),
  KEY `fkAchat2` (`NumClient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `catégorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `NumCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `LibCategorie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NumCategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `NumClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomclient` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NumClient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evolution`
--

DROP TABLE IF EXISTS `evolution`;
CREATE TABLE IF NOT EXISTS `evolution` (
  `NumEvolution` int(11) NOT NULL AUTO_INCREMENT,
  `DateEvolution` date DEFAULT NULL,
  `NumProduit` int(11) DEFAULT NULL,
  `Prix` int(11) NOT NULL,
  PRIMARY KEY (`NumEvolution`),
  KEY `fkEvo` (`NumProduit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `NumProduit` int(11) NOT NULL AUTO_INCREMENT,
  `NomProduit` varchar(100) DEFAULT NULL,
  `marque` varchar(100) DEFAULT NULL,
  `lieuFabrication` varchar(100) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `NumCategorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`NumProduit`),
  KEY `fkProd` (`NumCategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
