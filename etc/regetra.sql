-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 m. Geg 22 d. 06:49
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
-- Sukurta duomenų struktūra lentelei `egzaminuoja`
--

CREATE TABLE `egzaminuoja` (
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL,
  `fk_Instruktoriusid_Instruktorius` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `filialas`
--

CREATE TABLE `filialas` (
  `Miestas` varchar(255) DEFAULT NULL,
  `Adresas` varchar(255) DEFAULT NULL,
  `id_Filialas` int(11) NOT NULL
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

CREATE TABLE `garazas` (
  `Modelis` varchar(255) DEFAULT NULL,
  `Marke` varchar(255) DEFAULT NULL,
  `id_automobilis` int(11) NOT NULL,
  `fk_Grupeid_Grupe` int(11) DEFAULT NULL,
  `fk_filialasAuto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `garazas`
--

INSERT INTO `garazas` (`Modelis`, `Marke`, `id_automobilis`, `fk_Grupeid_Grupe`, `fk_filialasAuto`) VALUES
('Astra', 'Opel', 1, 4, 0),
('i30', 'Hyundai', 2, 4, 0),
('GS1000', 'Suzuki', 3, 2, 0),
('TGX600', 'Man', 4, 6, 0),
('Scania', 'SS600', 5, 8, 0);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `grupe`
--

CREATE TABLE `grupe` (
  `Pavadinimas` varchar(30) COLLATE utf8_lithuanian_ci NOT NULL,
  `Amzius` int(11) DEFAULT NULL,
  `Komentaras` varchar(100) COLLATE utf8_lithuanian_ci NOT NULL,
  `id_Grupe` int(11) NOT NULL
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

CREATE TABLE `instruktorius` (
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `Darbo_stazas` int(11) NOT NULL,
  `Kategorijos` varchar(20) NOT NULL,
  `id_Instruktorius` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `instruktorius`
--

INSERT INTO `instruktorius` (`Vardas`, `Pavarde`, `Darbo_stazas`, `Kategorijos`, `id_Instruktorius`) VALUES
('Petras', 'Petryla', 27, 'A,A1, B,B1, C,CE,T', 1),
('Jonas', 'Kiaune', 25, 'A,A1, B,B1, D,DE,T', 2),
('Dainius', 'Bruzga', 26, 'A,A1, B,B1', 3),
('Linas', 'Klimas', 20, 'A,A1, B,B1,C,CE, D,D', 4);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `klientas`
--

CREATE TABLE `klientas` (
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
  `fk_filialasTeo` int(11) DEFAULT NULL,
  `fk_filialasPra` int(11) DEFAULT NULL
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

--
-- Sukurta duomenų kopija lentelei `turi`
--

INSERT INTO `turi` (`fk_Grupeid_Grupe`, `fk_Filialasid_Filialas`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `uzsakymas`
--

CREATE TABLE `uzsakymas` (
  `UzsakymoData` date DEFAULT NULL,
  `PristatymoVieta` varchar(255) DEFAULT NULL,
  `id_Uzsakymas` int(11) NOT NULL,
  `fk_klientasid_klientas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD PRIMARY KEY (`id_Darbuotojas`),
  ADD KEY `fk_Filialasid_Filialas` (`fk_Filialasid_Filialas`);

--
-- Indexes for table `egzaminuoja`
--
ALTER TABLE `egzaminuoja`
  ADD KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`),
  ADD KEY `fk_Instruktoriusid_Instruktorius` (`fk_Instruktoriusid_Instruktorius`);

--
-- Indexes for table `filialas`
--
ALTER TABLE `filialas`
  ADD PRIMARY KEY (`id_Filialas`);

--
-- Indexes for table `garazas`
--
ALTER TABLE `garazas`
  ADD PRIMARY KEY (`id_automobilis`),
  ADD KEY `fk_Grupeid_Grupe` (`fk_Grupeid_Grupe`),
  ADD KEY `fk_filialasAuto` (`fk_filialasAuto`);

--
-- Indexes for table `grupe`
--
ALTER TABLE `grupe`
  ADD PRIMARY KEY (`id_Grupe`);

--
-- Indexes for table `instruktorius`
--
ALTER TABLE `instruktorius`
  ADD PRIMARY KEY (`id_Instruktorius`);

--
-- Indexes for table `klientas`
--
ALTER TABLE `klientas`
  ADD PRIMARY KEY (`id_klientas`),
  ADD KEY `fk_filialasTeo` (`fk_filialasTeo`),
  ADD KEY `fk_filialasPra` (`fk_filialasPra`),
  ADD KEY `fk_filialasTeo_2` (`fk_filialasTeo`),
  ADD KEY `fk_filialasPra_2` (`fk_filialasPra`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `darbuotojas`
--
ALTER TABLE `darbuotojas`
  MODIFY `id_Darbuotojas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `garazas`
--
ALTER TABLE `garazas`
  MODIFY `id_automobilis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `instruktorius`
--
ALTER TABLE `instruktorius`
  MODIFY `id_Instruktorius` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `darbuotojas`
--
ALTER TABLE `darbuotojas`
  ADD CONSTRAINT `darbuotojas_ibfk_1` FOREIGN KEY (`fk_Filialasid_Filialas`) REFERENCES `filialas` (`id_Filialas`);

--
-- Apribojimai lentelei `egzaminuoja`
--
ALTER TABLE `egzaminuoja`
  ADD CONSTRAINT `egzaminuoja_ibfk_1` FOREIGN KEY (`fk_Instruktoriusid_Instruktorius`) REFERENCES `instruktorius` (`id_Instruktorius`),
  ADD CONSTRAINT `egzaminuoja_ibfk_2` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

--
-- Apribojimai lentelei `garazas`
--
ALTER TABLE `garazas`
  ADD CONSTRAINT `garazas_ibfk_1` FOREIGN KEY (`fk_Grupeid_Grupe`) REFERENCES `grupe` (`id_Grupe`);

--
-- Apribojimai lentelei `klientas`
--
ALTER TABLE `klientas`
  ADD CONSTRAINT `klientas_ibfk_1` FOREIGN KEY (`fk_filialasTeo`) REFERENCES `filialas` (`id_Filialas`),
  ADD CONSTRAINT `klientas_ibfk_2` FOREIGN KEY (`fk_filialasPra`) REFERENCES `filialas` (`id_Filialas`);

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
