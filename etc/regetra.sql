-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 m. Geg 21 d. 14:34
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `regetra`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `darbuotojas`
--

CREATE TABLE IF NOT EXISTS `darbuotojas` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `id_Darbuotojas` int(11) NOT NULL AUTO_INCREMENT,
  `fk_Filialasid_Filialas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Darbuotojas`),
  KEY `fk_Filialasid_Filialas` (`fk_Filialasid_Filialas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `filialas`
--

CREATE TABLE IF NOT EXISTS `filialas` (
  `Miestas` varchar(255) DEFAULT NULL,
  `Adresas` varchar(255) DEFAULT NULL,
  `id_Filialas` int(11) NOT NULL,
  PRIMARY KEY (`id_Filialas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `filialas`
--

INSERT INTO `filialas` (`Miestas`, `Adresas`, `id_Filialas`) VALUES
('Kaunas', 'Taikos pr. 145', 1),
('Vilnius', 'Gedo g. 45', 2);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `garazas`
--

CREATE TABLE IF NOT EXISTS `garazas` (
  `Modelis` varchar(255) DEFAULT NULL,
  `Marke` varchar(255) DEFAULT NULL,
  `id_automobilis` int(11) NOT NULL AUTO_INCREMENT,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_automobilis`),
  KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Sukurta duomenų kopija lentelei `garazas`
--

INSERT INTO `garazas` (`Modelis`, `Marke`, `id_automobilis`, `fk_Grupeid_Grupe`) VALUES
('Astra', 'Opel', 1, 4),
('i30', 'Hyundai', 2, 4),
('GS1000', 'Suzuki', 3, 2),
('TGX600', 'Man', 4, 6),
('Scania', 'SS600', 5, 8);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grupe`
--

CREATE TABLE IF NOT EXISTS `grupe` (
  `Pavadinimas` varchar(30) COLLATE utf8_lithuanian_ci NOT NULL,
  `Amzius` int(11) DEFAULT NULL,
  `Komentaras` varchar(100) COLLATE utf8_lithuanian_ci NOT NULL,
  `id_Grupe` int(11) NOT NULL,
  PRIMARY KEY (`id_Grupe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `grupe`
--

INSERT INTO `grupe` (`Pavadinimas`, `Amzius`, `Komentaras`, `id_Grupe`) VALUES
('A1', 16, 'Motociklai, kurių variklio darbinis tūris didesnis kaip 50 cm3, bet ne didesnis kaip 125 cm3, galia ', 1),
('A', 16, 'Triračiai, kurių galia didesnė kaip 15 kW, ir motociklai.', 2),
('B1', 18, 'Keturračiai.', 3),
('B', 18, 'Automobiliai, kurių didžiausioji leidžiamoji masė ne didesnė kaip 3 500 kg', 4),
('C1', 18, 'Automobiliai, kurie nepriskiriami D1 ir D kategorijoms ir kurių didžiausioji leidžiamoji masė didesn', 5),
('C', 18, 'C Automobiliai, kurie nepriskiriami D1 ir D kategorijoms ir kurių didžiausioji leidžiamoji masė dide', 6),
('D1', 18, 'Automobiliai, kurie skirti ir suprojektuoti vežti ne daugiau kaip šešiolika keleivių', 7),
('D', 18, 'Automobiliai, skirti ir suprojektuoti vežti daugiau kaip aštuonis keleivius, neįskaitant vairuotojo;', 8),
('BE', 18, 'B kategorijos automobilio ir priekabos, kurios didžiausioji leidžiamoji masė ne didesnė kaip 3 500 k', 9),
('CE', 20, 'C kategorijos automobilių ir priekabų, kurių didžiausioji leidžiamoji masė didesnė kaip 750 kg, jung', 12),
('DE', 20, 'D kategorijos automobilių ir priekabų, kurių didžiausioji leidžiamoji masė didesnė kaip 750 kg, jung', 13),
('T', 22, 'Troleibusai, tai yra nebėginės transporto priemonės, sujungtos su išoriniu elektros šaltiniu.', 14),
('AM', 22, 'Mopedai ir lengvieji keturračiai.', 15);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `instruktorius`
--

CREATE TABLE IF NOT EXISTS `instruktorius` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `Darbo stazas` int(11) NOT NULL,
  `Kategorijos` varchar(20) NOT NULL,
  `id_Instruktorius` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Instruktorius`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Sukurta duomenų kopija lentelei `instruktorius`
--

INSERT INTO `instruktorius` (`Vardas`, `Pavarde`, `Darbo stazas`, `Kategorijos`, `id_Instruktorius`) VALUES
('Petras', 'Petryla', 27, 'A,A1, B,B1, C,CE,T', 1),
('Jonas', 'Kiaune', 25, 'A,A1, B,B1, D,DE,T', 2),
('Dainius', 'Bruzga', 26, 'A,A1, B,B1', 3),
('Linas', 'Klimas', 20, 'A,A1, B,B1,C,CE, D,D', 4);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `klientas`
--

CREATE TABLE IF NOT EXISTS `klientas` (
  `VairavimoEgzaminas` tinyint(1) DEFAULT NULL,
  `Vardas` varchar(255) DEFAULT NULL,
  `Amzius` int(11) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
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

CREATE TABLE IF NOT EXISTS `uzsakymas` (
  `UzsakymoData` date DEFAULT NULL,
  `PristatymoVieta` varchar(255) DEFAULT NULL,
  `id_Uzsakymas` int(11) NOT NULL,
  `fk_klientasid_klientas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Uzsakymas`),
  KEY `fk_klientasid_klientas` (`fk_klientasid_klientas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD CONSTRAINT `darbuotojas_ibfk_1` FOREIGN KEY (`fk_Filialasid_Filialas`) REFERENCES `filialas` (`id_Filialas`);

--
-- Apribojimai lentelei `garazas`
--
ALTER TABLE `garazas`
  ADD CONSTRAINT `garazas_ibfk_1` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

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
