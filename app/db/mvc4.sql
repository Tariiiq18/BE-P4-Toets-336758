-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 01, 2023 at 12:02 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc4`
--

-- --------------------------------------------------------

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `Id` int NOT NULL,
  `StudentId` int DEFAULT NULL,
  `RijSchool` varchar(255) DEFAULT NULL,
  `Stad` varchar(255) DEFAULT NULL,
  `Rijbewijscategorie` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Uitslag` varchar(255) DEFAULT NULL,
  `IsActief` tinyint(1) DEFAULT NULL,
  `Opmerkingen` varchar(255) DEFAULT NULL,
  `DatumAangemaakt` timestamp NULL DEFAULT NULL,
  `DatumGewijzigd` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `examen`
--

INSERT INTO `examen` (`Id`, `StudentId`, `RijSchool`, `Stad`, `Rijbewijscategorie`, `Datum`, `Uitslag`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(0, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd', 0, NULL, '2023-06-01 11:44:35', '2023-06-01 11:44:35'),
(1, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd', 0, NULL, '2023-06-01 11:48:15', '2023-06-01 11:48:15'),
(2, 103234, 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd', 0, NULL, '2023-06-01 11:49:41', '2023-06-01 11:49:41'),
(3, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt', 0, NULL, '2023-06-01 11:52:21', '2023-06-01 11:52:21'),
(4, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt', 0, NULL, '2023-06-01 11:54:03', '2023-06-01 11:54:03'),
(5, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd', 0, NULL, '2023-06-01 11:54:12', '2023-06-01 11:54:12'),
(6, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd', 0, NULL, '2023-06-01 11:55:24', '2023-06-01 11:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `examenperexaminator`
--

DROP TABLE IF EXISTS `examenperexaminator`;
CREATE TABLE IF NOT EXISTS `examenperexaminator` (
  `Id` int NOT NULL,
  `Examenid` int DEFAULT NULL,
  `ExaminatorId` int DEFAULT NULL,
  `IsActief` tinyint(1) DEFAULT NULL,
  `Opmerkingen` varchar(255) DEFAULT NULL,
  `DatumAangemaakt` timestamp NULL DEFAULT NULL,
  `DatumGewijzigd` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Examenid` (`Examenid`),
  KEY `ExaminatorId` (`ExaminatorId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `examenperexaminator`
--

INSERT INTO `examenperexaminator` (`Id`, `Examenid`, `ExaminatorId`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(0, 1, 3, NULL, NULL, NULL, NULL),
(1, 3, 3, NULL, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL, NULL),
(3, 4, 1, NULL, NULL, NULL, NULL),
(4, 7, 3, NULL, NULL, NULL, NULL),
(5, 6, 2, NULL, NULL, NULL, NULL),
(6, 5, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examinator`
--

DROP TABLE IF EXISTS `examinator`;
CREATE TABLE IF NOT EXISTS `examinator` (
  `Id` int NOT NULL,
  `Voornaam` varchar(255) DEFAULT NULL,
  `Tussenvoegsel` varchar(255) DEFAULT NULL,
  `Achternaam` varchar(255) DEFAULT NULL,
  `Mobiel` varchar(255) DEFAULT NULL,
  `IsActief` tinyint(1) DEFAULT NULL,
  `Opmerkingen` varchar(255) DEFAULT NULL,
  `DatumAangemaakt` timestamp NULL DEFAULT NULL,
  `DatumGewijzigd` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `examinator`
--

INSERT INTO `examinator` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(0, 'Manuel', 'van', 'Meekeren', '06-28493823', NULL, NULL, NULL, NULL),
(1, 'Lissette', 'den', 'Dongen', '06-24383299', NULL, NULL, NULL, NULL),
(2, 'Jurswailly', '', 'Luciano', '06-48293846', NULL, NULL, NULL, NULL),
(3, 'Naswha', '', 'Salawi', '06-34291219', NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
