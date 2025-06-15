-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : labs-mysql-loose-broad-keyboard:3306
-- Généré le : sam. 22 fév. 2025 à 15:02
-- Version du serveur : 8.0.37
-- Version de PHP : 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mysql_learners`
--

-- --------------------------------------------------------

--
-- Structure de la table `BankAccounts`
--

CREATE TABLE `BankAccounts` (
  `AccountNumber` varchar(5) NOT NULL,
  `AccountName` varchar(25) NOT NULL,
  `Balance` decimal(8,2) NOT NULL
) ;

--
-- Déchargement des données de la table `BankAccounts`
--

INSERT INTO `BankAccounts` (`AccountNumber`, `AccountName`, `Balance`) VALUES
('B001', 'Rose', 300.00),
('B002', 'James', 145.00),
('B003', 'Shoe Shop', 125400.00),
('B004', 'Corner Shop', 76000.00);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `BankAccounts`
--
ALTER TABLE `BankAccounts`
  ADD PRIMARY KEY (`AccountNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
