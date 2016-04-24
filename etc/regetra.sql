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
-- Sukurta duomenų struktūra lentelei `automobilis`
--

DROP TABLE IF EXISTS `automobilis`;
CREATE TABLE IF NOT EXISTS `automobilis` (
  `Modelis` varchar(255) DEFAULT NULL,
  `Marke` varchar(255) DEFAULT NULL,
  `Grupe` varchar(255) DEFAULT NULL,
  `id_automobilis` int(11) NOT NULL,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_automobilis`),
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
  `fk_Filialasid_Filialas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Darbuotojas`),
  KEY `fk_Filialasid_Filialas` (`fk_Filialasid_Filialas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `Filialas`
--

DROP TABLE IF EXISTS `Filialas`;
CREATE TABLE IF NOT EXISTS `Filialas` (
  `Miestas` varchar(255) DEFAULT NULL,
  `Adresas` varchar(255) DEFAULT NULL,
  `id_Filialas` int(11) NOT NULL,
  `fk_Valstybeid_Valstybe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Filialas`),
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
-- Sukurta duomenų struktūra lentelei `klientas`
--

DROP TABLE IF EXISTS `klientas`;
CREATE TABLE IF NOT EXISTS `klientas` (
  `VairavimoEgzaminas` tinyint(1) DEFAULT NULL,
  `Vardas` varchar(255) DEFAULT NULL,
  `Amzius` int(11) DEFAULT NULL,
  `Vavarde` varchar(255) DEFAULT NULL,
  `AsmensKodas` int(11) DEFAULT NULL,
  `TeorijosEgzaminas` tinyint(1) DEFAULT NULL,
  `TeorinioData` date DEFAULT NULL,
  `PraktinioData` date DEFAULT NULL,
  `TeorinioIslaikymoData` date DEFAULT NULL,
  `id_klientas` int(11) NOT NULL,
  PRIMARY KEY (`id_klientas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `laiko`
--

DROP TABLE IF EXISTS `laiko`;
CREATE TABLE IF NOT EXISTS `laiko` (
  `fk_Grupeid_Grupe` int(11) NOT NULL,
  `fk_klientasid_klientas` int(11) NOT NULL,
  PRIMARY KEY (`fk_Grupeid_Grupe`,`fk_klientasid_klientas`),
  KEY `fk_klientasid_klientas` (`fk_klientasid_klientas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `turi`
--

DROP TABLE IF EXISTS `turi`;
CREATE TABLE IF NOT EXISTS `turi` (
  `fk_Grupeid_Grupe` int(11) NOT NULL,
  `fk_Filialasid_Filialas` int(11) NOT NULL,
  PRIMARY KEY (`fk_Grupeid_Grupe`,`fk_Filialasid_Filialas`),
  KEY `fk_Filialasid_Filialas` (`fk_Filialasid_Filialas`)
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
  `fk_klientasid_klientas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Uzsakymas`),
  KEY `fk_klientasid_klientas` (`fk_klientasid_klientas`)
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
-- Apribojimai lentelei `automobilis`
--
ALTER TABLE `automobilis`
  ADD CONSTRAINT `automobilis_ibfk_1` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

--
-- Apribojimai lentelei `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD CONSTRAINT `darbuotojas_ibfk_1` FOREIGN KEY (`fk_Filialasid_Filialas`) REFERENCES `Filialas` (`id_Filialas`);

--
-- Apribojimai lentelei `Filialas`
--
ALTER TABLE `Filialas`
  ADD CONSTRAINT `Filialas_ibfk_1` FOREIGN KEY (`fk_Valstybeid_Valstybe`) REFERENCES `valstybe` (`id_Valstybe`);

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
  ADD CONSTRAINT `laiko_ibfk_2` FOREIGN KEY (`fk_klientasid_klientas`) REFERENCES `klientas` (`id_klientas`);

--
-- Apribojimai lentelei `turi`
--
ALTER TABLE `turi`
  ADD CONSTRAINT `turi_ibfk_1` FOREIGN KEY (`fk_Filialasid_Filialas`) REFERENCES `Filialas` (`id_Filialas`);

--
-- Apribojimai lentelei `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD CONSTRAINT `uzsakymas_ibfk_1` FOREIGN KEY (`fk_klientasid_klientas`) REFERENCES `klientas` (`id_klientas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
