-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Mrz 2024 um 10:24
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `kunden-db-neu`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden_2`
--

CREATE TABLE `kunden_2` (
  `KNr` int(1) DEFAULT NULL,
  `Name` varchar(7) DEFAULT NULL,
  `Vorname` varchar(7) DEFAULT NULL,
  `Strasse` varchar(12) DEFAULT NULL,
  `HausNr` int(2) DEFAULT NULL,
  `Plz` int(5) DEFAULT NULL,
  `Ort` varchar(9) DEFAULT NULL,
  `Telefon` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Daten für Tabelle `kunden_2`
--

INSERT INTO `kunden_2` (`KNr`, `Name`, `Vorname`, `Strasse`, `HausNr`, `Plz`, `Ort`, `Telefon`) VALUES
(1, 'Schlund', 'Patrick', 'Hauptstraße', 13, 77960, 'Seelbach', '07823 1312'),
(2, 'Müller', 'Bernd', 'Mühlgasse', 1, 77933, 'Lahr', '07821 96484'),
(3, 'Dreher', 'Franz', 'Gartenstraße', 15, 76133, 'Karlsruhe', '0721 124576'),
(4, 'Eberle', 'Markus', 'Mozartstraße', 11, 79540, 'Lörrach', '07621 77889'),
(5, 'Eberle', 'Maria', 'Vogelsang', 12, 79104, 'Freiburg', '0761 456456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
