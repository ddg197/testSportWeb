-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 10 Avril 2018 à 10:35
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sportweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `IdLogin` int(11) NOT NULL,
  `Prénom` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `login` varchar(100) NOT NULL,
  `MotDePasse` varchar(100) NOT NULL,
  `DateNée` date NOT NULL,
  `Sexe` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `login`
--

INSERT INTO `login` (`IdLogin`, `Prénom`, `Nom`, `login`, `MotDePasse`, `DateNée`, `Sexe`) VALUES
(1, 'Dennis', 'Dorfeans', 'den92feans@gmail.com', 'One197', '1997-09-19', 'M'),
(2, 'David', 'Dor', 'dav92dor@gmail.com', 'den190', '1963-05-12', 'M'),
(3, 'Ryan', 'Ryan', '3333333333', '33333', '1968-01-08', 'M'),
(4, 'lorie', 'lorie', '3333333338', '33333', '1968-01-08', 'F'),
(5, 'mis', 'mis', 'mis@live.fr', '33333125', '1995-01-19', 'F');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`IdLogin`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `IdLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
