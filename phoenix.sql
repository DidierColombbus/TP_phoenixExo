-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 30 août 2022 à 07:15
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phoenix`
--
CREATE DATABASE IF NOT EXISTS `phoenix` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `phoenix`;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(3) NOT NULL,
  `id_voyage` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `semaines` int(4) NOT NULL,
  `participants` int(4) NOT NULL,
  `date_reservation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `id_voyage` int(3) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `presentation` text NOT NULL,
  `photo` varchar(250) NOT NULL,
  `prix` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`id_voyage`, `destination`, `presentation`, `photo`, `prix`) VALUES
(1, 'Les Boucaniers', 'Après les eaux\r\ncalmes, partez à la découverte des spectaculaires cascades des gorges de la Falaise, à Trinité.', 'img\r\n/caraibes_martinique_boucaniers.jpg', 750),
(2, 'Kamarina', 'Bienvenue au pays\r\nde l\'Etna où ruelles escarpées et places en fleurs s\'ouvrent sur la Méditerranée !', 'img\r\n/sicile_kamarina.jpg', 510),
(3, 'Finohlu', 'Instants inoubliables sur\r\nune île privative où luxe et charme naturel des Maldives s\'équilibrent à merveille.', 'img\r\n/maldives_fino.jpg', 805),
(4, 'Albion sauvage', 'Au cœur de\r\nl’Ile, un swing au golf, l’adrénaline du trapèze volant ou la beauté des fonds marins ... que choisir ?', 'img\r\n/maurice_albion.jpg', 630),
(5, 'Kani', 'Ile\r\n-jardin posée sur des eaux turquoises, découvrez le paradis au cœur de l\'archipel des Maldives.', 'img\r\n/maldives_kani.jpg', 798),
(6, 'Gregolimano', 'L’île d’Eubée est un oasis entre mer et oliviers ... plongez dans les eaux azures de la mer Egée ... en ski nautique', 'img\r\n/grece_gregolimano.jpg', 535),
(7, 'Maldives', 'Waouh c\'est magnifique j\'en rêve', 'img/maldives.jpg', 2000),
(8, 'Cap vert ', 'Le Cap-Vert, en forme longue la république du Cap-Vert (en portugais : Cabo Verde et República de Cabo Verde) est un État insulaire d\'Afrique de l\'Ouest, composé d\'un archipel de dix îles volcaniques. Situé dans l\'océan Atlantique, au large des côtes du Sénégal, il couvre une superficie d\'environ 4 000 km2 .', 'img/rodolphe-heraud-Vd6BoLzjN0E-unsplash.jpg', 1500);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_voyage` (`id_voyage`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id_voyage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id_voyage` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_voyage`) REFERENCES `voyage` (`id_voyage`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
