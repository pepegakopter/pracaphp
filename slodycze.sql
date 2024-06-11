-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 12, 2024 at 09:35 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slodycze`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ceny`
--

CREATE TABLE `ceny` (
  `cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cukierki`
--

CREATE TABLE `cukierki` (
  `lp` int(11) NOT NULL,
  `wedel` text NOT NULL,
  `michałki` text NOT NULL,
  `milka` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cukierki`
--

INSERT INTO `cukierki` (`lp`, `wedel`, `michałki`, `milka`) VALUES
(1, 'Czekolada mleczna', 'Cukierek czekoladowy', 'Czekolada Oreo'),
(2, 'Czekolada biała', 'Galaretki', 'Czekolada truskawkowa'),
(3, 'Mieszanka Wedlowska', 'Michałki z Wedla', 'Czekolada white bubbly'),
(4, 'Bajeczny crunch', 'Michałki kokosowe', 'Czekolada Nutty Choco Wafer');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cukierki`
--
ALTER TABLE `cukierki`
  ADD PRIMARY KEY (`lp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cukierki`
--
ALTER TABLE `cukierki`
  MODIFY `lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
