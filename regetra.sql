-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 m. Bal 23 d. 11:37
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `regetra`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `autobobilis`
--

DROP TABLE IF EXISTS `autobobilis`;
CREATE TABLE IF NOT EXISTS `autobobilis` (
  `Modelis` varchar(255) DEFAULT NULL,
  `Marke` varchar(255) DEFAULT NULL,
  `Grupe` varchar(255) DEFAULT NULL,
  `id_Autobobilis` int(11) NOT NULL,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Autobobilis`),
  KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `darbuotojas`
--

DROP TABLE IF EXISTS `darbuotojas`;
CREATE TABLE IF NOT EXISTS `darbuotojas` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `id_Darbuotojas` int(11) NOT NULL,
  `fk_Filijalasid_Filijalas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Darbuotojas`),
  KEY `fk_Filijalasid_Filijalas` (`fk_Filijalasid_Filijalas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `filijalas`
--

DROP TABLE IF EXISTS `filijalas`;
CREATE TABLE IF NOT EXISTS `filijalas` (
  `Miestas` varchar(255) DEFAULT NULL,
  `Adresas` varchar(255) DEFAULT NULL,
  `id_Filijalas` int(11) NOT NULL,
  `fk_Valstybeid_Valstybe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Filijalas`),
  KEY `fk_Valstybeid_Valstybe` (`fk_Valstybeid_Valstybe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grupe`
--

DROP TABLE IF EXISTS `grupe`;
CREATE TABLE IF NOT EXISTS `grupe` (
  `Amzius` int(11) DEFAULT NULL,
  `Pavadinimas` int(11) DEFAULT NULL,
  `id_Grupe` int(11) NOT NULL,
  PRIMARY KEY (`id_Grupe`),
  KEY `Pavadinimas` (`Pavadinimas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grupes`
--

DROP TABLE IF EXISTS `grupes`;
CREATE TABLE IF NOT EXISTS `grupes` (
  `id_Grupes` int(11) NOT NULL,
  `name` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_Grupes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `grupes`
--

INSERT INTO `grupes` (`id_Grupes`, `name`) VALUES
(1, 'A1'),
(2, 'A'),
(3, 'B1'),
(4, 'B'),
(5, 'C1'),
(6, 'C'),
(7, 'D1'),
(8, 'D'),
(9, 'BE'),
(10, 'C1E'),
(11, 'D1E'),
(12, 'CE'),
(13, 'DE'),
(14, 'T'),
(15, 'AM');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `instruktorius`
--

DROP TABLE IF EXISTS `instruktorius`;
CREATE TABLE IF NOT EXISTS `instruktorius` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `id_Instruktorius` int(11) NOT NULL,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Instruktorius`),
  KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `klijantas`
--

DROP TABLE IF EXISTS `klijantas`;
CREATE TABLE IF NOT EXISTS `klijantas` (
  `VairavimoEgzaminas` tinyint(1) DEFAULT NULL,
  `Vardas` varchar(255) DEFAULT NULL,
  `Amzius` int(11) DEFAULT NULL,
  `Vavarde` varchar(255) DEFAULT NULL,
  `AsmensKodas` int(11) DEFAULT NULL,
  `TeorijosEgzaminas` tinyint(1) DEFAULT NULL,
  `TeorinioData` date DEFAULT NULL,
  `PraktinioData` date DEFAULT NULL,
  `TeorinioIslaikymoData` date DEFAULT NULL,
  `id_Klijantas` int(11) NOT NULL,
  PRIMARY KEY (`id_Klijantas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `laiko`
--

DROP TABLE IF EXISTS `laiko`;
CREATE TABLE IF NOT EXISTS `laiko` (
  `fk_Grupeid_Grupe` int(11) NOT NULL,
  `fk_Klijantasid_Klijantas` int(11) NOT NULL,
  PRIMARY KEY (`fk_Grupeid_Grupe`,`fk_Klijantasid_Klijantas`),
  KEY `fk_Klijantasid_Klijantas` (`fk_Klijantasid_Klijantas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `turi`
--

DROP TABLE IF EXISTS `turi`;
CREATE TABLE IF NOT EXISTS `turi` (
  `fk_Grupeid_Grupe` int(11) NOT NULL,
  `fk_Filijalasid_Filijalas` int(11) NOT NULL,
  PRIMARY KEY (`fk_Grupeid_Grupe`,`fk_Filijalasid_Filijalas`),
  KEY `fk_Filijalasid_Filijalas` (`fk_Filijalasid_Filijalas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `uzsakymas`
--

DROP TABLE IF EXISTS `uzsakymas`;
CREATE TABLE IF NOT EXISTS `uzsakymas` (
  `UsakymoData` date DEFAULT NULL,
  `PristatymoVieta` varchar(255) DEFAULT NULL,
  `id_Uzsakymas` int(11) NOT NULL,
  `fk_Klijantasid_Klijantas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Uzsakymas`),
  KEY `fk_Klijantasid_Klijantas` (`fk_Klijantasid_Klijantas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `valstybe`
--

DROP TABLE IF EXISTS `valstybe`;
CREATE TABLE IF NOT EXISTS `valstybe` (
  `Pavadinimas` varchar(255) DEFAULT NULL,
  `IkurimoData` date DEFAULT NULL,
  `id_Valstybe` int(11) NOT NULL,
  PRIMARY KEY (`id_Valstybe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `autobobilis`
--
ALTER TABLE `autobobilis`
  ADD CONSTRAINT `autobobilis_ibfk_1` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

--
-- Apribojimai lentelei `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD CONSTRAINT `darbuotojas_ibfk_1` FOREIGN KEY (`fk_Filijalasid_Filijalas`) REFERENCES `filijalas` (`id_Filijalas`);

--
-- Apribojimai lentelei `filijalas`
--
ALTER TABLE `filijalas`
  ADD CONSTRAINT `filijalas_ibfk_1` FOREIGN KEY (`fk_Valstybeid_Valstybe`) REFERENCES `valstybe` (`id_Valstybe`);

--
-- Apribojimai lentelei `grupe`
--
ALTER TABLE `grupe`
  ADD CONSTRAINT `grupe_ibfk_1` FOREIGN KEY (`Pavadinimas`) REFERENCES `grupes` (`id_Grupes`),
  ADD CONSTRAINT `grupe_ibfk_2` FOREIGN KEY (`id_Grupe`) REFERENCES `turi` (`fk_Grupeid_Grupe`);

--
-- Apribojimai lentelei `instruktorius`
--
ALTER TABLE `instruktorius`
  ADD CONSTRAINT `instruktorius_ibfk_1` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

--
-- Apribojimai lentelei `laiko`
--
ALTER TABLE `laiko`
  ADD CONSTRAINT `laiko_ibfk_1` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`),
  ADD CONSTRAINT `laiko_ibfk_2` FOREIGN KEY (`fk_Klijantasid_Klijantas`) REFERENCES `klijantas` (`id_Klijantas`);

--
-- Apribojimai lentelei `turi`
--
ALTER TABLE `turi`
  ADD CONSTRAINT `turi_ibfk_1` FOREIGN KEY (`fk_Filijalasid_Filijalas`) REFERENCES `filijalas` (`id_Filijalas`);

--
-- Apribojimai lentelei `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD CONSTRAINT `uzsakymas_ibfk_1` FOREIGN KEY (`fk_Klijantasid_Klijantas`) REFERENCES `klijantas` (`id_Klijantas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
