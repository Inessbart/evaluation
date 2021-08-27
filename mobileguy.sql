-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2021 at 02:58 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileguy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'smartphone'),
(2, 'accessoires');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210826083848', '2021-08-26 08:39:00', 152),
('DoctrineMigrations\\Version20210826084229', '2021-08-26 08:42:37', 333),
('DoctrineMigrations\\Version20210826085502', '2021-08-26 08:55:09', 163),
('DoctrineMigrations\\Version20210826091826', '2021-08-26 09:18:32', 1145),
('DoctrineMigrations\\Version20210826092002', '2021-08-26 09:20:06', 144);

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `panier_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `marque`, `designation`, `prix`, `disponible`, `categorie_id`, `panier_id`, `image`) VALUES
(1, 'Smartphone SAMSUNG GALAXY A12 NOIR 128GB', 'SAMSUNG Galaxy A12  Un grand terrain de jeu : Découvrez l\'écran panoramique de 6,5\" du Galaxy A12, un écran qui offre une totale immersion. Grâce à la technologie HD+, votre contenu est plus clair, plus net et plus précis.', 259, 1, 1, NULL, 'Capture1.jpg'),
(2, 'Smartphone OPPO A54 64GO NOIR 5G', 'Un smartphone 5G sans casser la tirelire ? C\'est ce que propose l\'OPPO A54 5G, mais pas seulement !  Il bénéficie également d\'un écran immersif 90Hz affichant fidèlement les couleurs pour profiter au mieux du contenu multimédia, d\'une autonomie à toute ép', 251, 1, 1, NULL, 'Capture2.jpg'),
(3, 'iPhone APPLE IPHONE 11 64GO NOIR V2', 'Laissez-vous charmer par le dernier-né de la marque à la pomme !  Un nouveau double appareil photo conçu pour élargir vos horizons. Une puce plus rapide que toutes les autres puces de smartphone. Une autonomie d’une journée, pour passer plus de temps à fa', 639, 1, 1, NULL, 'Capture3.jpg'),
(4, 'Smartphone ASUS ROG PHONE 5 12G / 256G BLACK', 'Ecran 6.78\" FHD+ AMOLED Gorilla Glass Victus Plateforme Qualcomm® Snapdragon™ 888 Batterie 6000 mAh Expérience immersive', 748, 1, 1, NULL, 'Capture4.png'),
(5, 'Smartphone XIAOMI REDMI NOTE 10 5G 64GO GRIS', 'Un processeur 5G haute performance pour répondre à tous vos critères de vitesse Doté du puissant processeur MediaTek Dimensity 700 5G, le Redmi Note 10 5G est prêt à repousser les limites des performances de jeu. Son procédé de gravure en 7nm et son modem', 199, 1, 1, NULL, 'Capture5.jpg'),
(6, 'Accessoires pour téléphone mobile TEMIUM ADAPTATEUR MICRO USB VERS USB TYPE C', 'Avec l\' adaptateur micro USB vers USB type C Temium vous transformez vos câbles micro USB en câble USB type C pour une synchronisation et une recharge efficace sur tous vos appareils à connecteur USB type C.', 15, 1, 2, NULL, 'Capture6.jpg'),
(7, 'WEFIX PACK CHARGEUR VOITURE AVEC CÂBLE DOUBLE USB VERS LIGHTNING 1 M', 'Chargeur allume cigare USB 2 ports USB-A Câble Lightning fourni longeur 1 m Charge rapide 4.8A', 25, 1, 2, NULL, 'Capture7.jpg'),
(8, 'WEFIX SUPPORT AUTO ADHÉSIF MAGNÉTIQUE', 'Support pour téléphone mobile', 17, 1, 2, NULL, 'Capture8.jpg'),
(9, 'WEFIX BRASSARD DE RUNNING 6-7', 'Accessoire pour Iphone brassard running', 12, 1, 2, NULL, 'Capture9.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BE2DDF8CBCF5E72D` (`categorie_id`),
  ADD KEY `IDX_BE2DDF8CF77D927C` (`panier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_BE2DDF8CBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_BE2DDF8CF77D927C` FOREIGN KEY (`panier_id`) REFERENCES `panier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
