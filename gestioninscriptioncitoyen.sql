-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 13 Décembre 2024 à 21:21
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestioninscriptioncitoyen`
--

-- --------------------------------------------------------

--
-- Structure de la table `citoyen`
--

CREATE TABLE IF NOT EXISTS `citoyen` (
  `CNI` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `citoyen`
--

INSERT INTO `citoyen` (`CNI`, `mot_de_passe`) VALUES
('9363', '9363'),
('adtf', 'adtf'),
('CNI3455', 'amourette'),
('LI724363U3', 'bonjour'),
('OU12345', 'bonjour'),
('OU4253', 'midi'),
('OUEER34S', 'bonjour'),
('OUEST', '354354'),
('OUEST435', 'bonjour'),
('OUEST52E2', 'fsg'),
('OUEST55', 'msj'),
('OUEST57', 'GCCV'),
('OUEst6726', 'msosh'),
('OUEST927', 'bonjour'),
('OUFDH23', 'bonsoir'),
('OUYH298d', 'adrienne'),
('sghs', 'sfgs'),
('tata', 'tata'),
('toto', 'toto');

-- --------------------------------------------------------

--
-- Structure de la table `formulairee`
--

CREATE TABLE IF NOT EXISTS `formulairee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `datenaissance` varchar(50) DEFAULT NULL,
  `antennecommunal` varchar(20) DEFAULT NULL,
  `centre_vote` varchar(100) DEFAULT NULL,
  `numeroinscription` varchar(100) DEFAULT NULL,
  `dateinscription` varchar(100) DEFAULT NULL,
  `CNI` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numeroinscription` (`numeroinscription`),
  KEY `CNI` (`CNI`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `formulairee`
--

INSERT INTO `formulairee` (`id`, `nom`, `prenom`, `datenaissance`, `antennecommunal`, `centre_vote`, `numeroinscription`, `dateinscription`, `CNI`) VALUES
(1, 'TAMO', 'Nana', '02-03-2003', 'Douala 2', 'College bilingue de Mambanda', '05-81-93-201-24-123', '13-12-2024', 'OU12345'),
(2, 'KADJI', 'Leslie', '20-03-2024', 'Douala 2', 'College evangelique de new-Bell', '05-06-07-0825', '03-3-2004', 'OU4253'),
(3, 'KADJIII', 'dounla', '05-06-2005', 'Douala 2', 'Lycee bilingue de logpom', '06-07-08-272', '07-03-2007', 'OUYH298d'),
(5, 'lonken', 'df', 'qwert', 'Douala 2', 'College evangelique de new-Bell', '34345', '23434', 'CNI3455'),
(6, 'KADJIII', 'Adrienne', '04-95-57', 'Douala 2', 'College evangelique de new-Bell', '94-49-868', '02-04-2024', 'OUEST'),
(9, 'TALA  FOUDA', 'Jean', '1998', 'Douala 2', 'Lycee d''Oyack', 'ELECT812952188', '12-12-24', 'toto'),
(10, 'djomo', 'Marie', '2000', 'Douala 2', 'College evangelique de new-Bell', 'ELECT71150028', '14-12-2024', 'tata');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `formulairee`
--
ALTER TABLE `formulairee`
  ADD CONSTRAINT `formulairee_ibfk_1` FOREIGN KEY (`CNI`) REFERENCES `citoyen` (`CNI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
