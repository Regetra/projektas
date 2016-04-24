-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 m. Bal 24 d. 14:44
-- Server version: 5.7.11
-- PHP Version: 5.6.19

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

CREATE TABLE `automobilis` (
  `Modelis` varchar(255) DEFAULT NULL,
  `Marke` varchar(255) DEFAULT NULL,
  `Grupe` varchar(255) DEFAULT NULL,
  `id_automobilis` int(11) NOT NULL,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `darbuotojas`
--

CREATE TABLE `darbuotojas` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `id_Darbuotojas` int(11) NOT NULL,
  `fk_Filialasid_Filialas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `filialas`
--

CREATE TABLE `filialas` (
  `Miestas` varchar(255) DEFAULT NULL,
  `Adresas` varchar(255) DEFAULT NULL,
  `id_Filialas` int(11) NOT NULL,
  `fk_Valstybeid_Valstybe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grupe`
--

CREATE TABLE `grupe` (
  `Amzius` int(11) DEFAULT NULL,
  `Pavadinimas` varchar(255) DEFAULT NULL,
  `id_Grupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `grupe`
--

INSERT INTO `grupe` (`Amzius`, `Pavadinimas`, `id_Grupe`) VALUES
(16, 'A1', 1),
(16, 'A', 2),
(18, 'B1', 3),
(18, 'B', 4),
(18, 'C1', 5),
(18, 'C', 6),
(18, 'D1', 7),
(18, 'D', 8),
(18, 'BE', 9),
(20, 'C1E', 10),
(20, 'D1E', 11),
(20, 'CE', 12),
(20, 'DE', 13),
(22, 'T', 14),
(22, 'AM', 15);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grupes`
--

CREATE TABLE `grupes` (
  `id_Grupes` int(11) NOT NULL,
  `name` char(3) DEFAULT NULL
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

CREATE TABLE `instruktorius` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `id_Instruktorius` int(11) NOT NULL,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `klientas`
--

CREATE TABLE `klientas` (
  `VairavimoEgzaminas` tinyint(1) DEFAULT NULL,
  `Vardas` varchar(255) DEFAULT NULL,
  `Amzius` int(11) DEFAULT NULL,
  `Vavarde` varchar(255) DEFAULT NULL,
  `AsmensKodas` int(11) DEFAULT NULL,
  `TeorijosEgzaminas` tinyint(1) DEFAULT NULL,
  `TeorinioData` date DEFAULT NULL,
  `PraktinioData` date DEFAULT NULL,
  `TeorinioIslaikymoData` date DEFAULT NULL,
  `id_klientas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `laiko`
--

CREATE TABLE `laiko` (
  `fk_Grupeid_Grupe` int(11) NOT NULL,
  `fk_klientasid_klientas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `turi`
--

CREATE TABLE `turi` (
  `fk_Grupeid_Grupe` int(11) NOT NULL,
  `fk_Filialasid_Filialas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `uzsakymas`
--

CREATE TABLE `uzsakymas` (
  `UsakymoData` date DEFAULT NULL,
  `PristatymoVieta` varchar(255) DEFAULT NULL,
  `id_Uzsakymas` int(11) NOT NULL,
  `fk_klientasid_klientas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `valstybe`
--

CREATE TABLE `valstybe` (
  `Pavadinimas` varchar(255) DEFAULT NULL,
  `IkurimoData` date DEFAULT NULL,
  `id_Valstybe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automobilis`
--
ALTER TABLE `automobilis`
  ADD PRIMARY KEY (`id_automobilis`),
  ADD KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`);

--
-- Indexes for table `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD PRIMARY KEY (`id_Darbuotojas`),
  ADD KEY `fk_Filialasid_Filialas` (`fk_Filialasid_Filialas`);

--
-- Indexes for table `filialas`
--
ALTER TABLE `filialas`
  ADD PRIMARY KEY (`id_Filialas`),
  ADD KEY `fk_Valstybeid_Valstybe` (`fk_Valstybeid_Valstybe`);

--
-- Indexes for table `grupe`
--
ALTER TABLE `grupe`
  ADD PRIMARY KEY (`id_Grupe`),
  ADD KEY `Pavadinimas` (`Pavadinimas`);

--
-- Indexes for table `grupes`
--
ALTER TABLE `grupes`
  ADD PRIMARY KEY (`id_Grupes`);

--
-- Indexes for table `instruktorius`
--
ALTER TABLE `instruktorius`
  ADD PRIMARY KEY (`id_Instruktorius`),
  ADD KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`);

--
-- Indexes for table `klientas`
--
ALTER TABLE `klientas`
  ADD PRIMARY KEY (`id_klientas`);

--
-- Indexes for table `laiko`
--
ALTER TABLE `laiko`
  ADD PRIMARY KEY (`fk_Grupeid_Grupe`,`fk_klientasid_klientas`),
  ADD KEY `fk_klientasid_klientas` (`fk_klientasid_klientas`);

--
-- Indexes for table `turi`
--
ALTER TABLE `turi`
  ADD PRIMARY KEY (`fk_Grupeid_Grupe`,`fk_Filialasid_Filialas`),
  ADD KEY `fk_Filialasid_Filialas` (`fk_Filialasid_Filialas`);

--
-- Indexes for table `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD PRIMARY KEY (`id_Uzsakymas`),
  ADD KEY `fk_klientasid_klientas` (`fk_klientasid_klientas`);

--
-- Indexes for table `valstybe`
--
ALTER TABLE `valstybe`
  ADD PRIMARY KEY (`id_Valstybe`);

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
  ADD CONSTRAINT `darbuotojas_ibfk_1` FOREIGN KEY (`fk_Filialasid_Filialas`) REFERENCES `filialas` (`id_Filialas`);

--
-- Apribojimai lentelei `filialas`
--
ALTER TABLE `filialas`
  ADD CONSTRAINT `Filialas_ibfk_1` FOREIGN KEY (`fk_Valstybeid_Valstybe`) REFERENCES `valstybe` (`id_Valstybe`);

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
  ADD CONSTRAINT `turi_ibfk_1` FOREIGN KEY (`fk_Filialasid_Filialas`) REFERENCES `filialas` (`id_Filialas`),
  ADD CONSTRAINT `turi_ibfk_2` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

--
-- Apribojimai lentelei `uzsakymas`
--
ALTER TABLE `uzsakymas`
  ADD CONSTRAINT `uzsakymas_ibfk_1` FOREIGN KEY (`fk_klientasid_klientas`) REFERENCES `klientas` (`id_klientas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
