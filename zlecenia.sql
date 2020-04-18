-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Apr 2020 um 11:13
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `zlecenia`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `komentarze`
--

CREATE TABLE `komentarze` (
  `id_komentarze` int(11) NOT NULL,
  `numer_zlecenia` int(11) NOT NULL,
  `komentarz` text COLLATE utf8_polish_ci NOT NULL,
  `data_komentarza` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Daten für Tabelle `komentarze`
--

INSERT INTO `komentarze` (`id_komentarze`, `numer_zlecenia`, `komentarz`, `data_komentarza`) VALUES
(1, 1, 'asdasdasd', '2020-03-10 10:35:00'),
(2, 1, 'asdasd', '2020-03-10 13:07:01'),
(3, 1, 'sdfsdf', '2020-03-10 13:25:50'),
(4, 1, 'sdfsdfsf', '2020-03-10 13:25:53'),
(5, 1, 'sdfsdfdsfs', '2020-03-10 13:25:57'),
(6, 1, 'dfsfsdfsfddsfsdfsdfdsfsdfdsfsdfsdf', '2020-03-10 13:26:05');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `magazyn`
--

CREATE TABLE `magazyn` (
  `id_magazyn` int(11) NOT NULL,
  `sprzet` text COLLATE utf8_polish_ci NOT NULL,
  `ilosc` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Daten für Tabelle `magazyn`
--

INSERT INTO `magazyn` (`id_magazyn`, `sprzet`, `ilosc`, `sn`, `tid`) VALUES
(8, 'rakieta', 3, 3, 33),
(9, 'rocket', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `login` text COLLATE utf8_polish_ci NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL,
  `haslo` text COLLATE utf8_polish_ci NOT NULL,
  `admin` text COLLATE utf8_polish_ci NOT NULL,
  `degree` text COLLATE utf8_polish_ci NOT NULL,
  `edukacja` text COLLATE utf8_polish_ci NOT NULL,
  `adres_zamieszkania` text COLLATE utf8_polish_ci NOT NULL,
  `skills` text COLLATE utf8_polish_ci NOT NULL,
  `notatki` text COLLATE utf8_polish_ci NOT NULL,
  `data_rejestracji` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Daten für Tabelle `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `login`, `imie`, `nazwisko`, `email`, `haslo`, `admin`, `degree`, `edukacja`, `adres_zamieszkania`, `skills`, `notatki`, `data_rejestracji`) VALUES
(1, 'kawka', 'kawka', 'franc', 'kawka@kawka.com', '$2y$10$pF8XrqonlTs/U84WVxwFHe4hF0rR4XEL6ntyu4mLfG87GhncR62aW', '1', '', '', '', '', '', '0000-00-00'),
(2, 'Kawka', 'Kawka', 'Kawka', 'kawiarnia@kawka.com', '$2y$10$g5G5utzmRjRcM9AfKz2VdOb9S6ULh1eVDAASeoBfBQaiLf0NPeqI2', '1', '', '', '', '', '', '2020-03-10'),
(3, 'udo', 'Udo', 'Udo', 'udo@gmai.com', '$2y$10$5fDrHlhs./auvNgVqL/WYexz.CXXQRrmDTW87U.cpPwLQtU797opO', '0', 'flachowiec', 'podstawowe', 'Kerpen', '0', 'Leń patentowany', '2020-03-10'),
(4, 'karol', 'Karol', 'Karol', 'karol@karol.com', '$2y$10$4PGImJrOVABhkh8n5pqhQOT8dc0Ds8VrKOVf1q4qhzJo/n.rRG3ji', '0', 'Licencjat', 'Wyższa Szkoła Kupiecka', 'Kopera', 'MMA', 'CZARNY PAS BRAZILIAN JIU JITSU', '2020-03-10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `todolist`
--

CREATE TABLE `todolist` (
  `id_todolist` int(11) NOT NULL,
  `zadanie` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Daten für Tabelle `todolist`
--

INSERT INTO `todolist` (`id_todolist`, `zadanie`) VALUES
(5, ' Druga lista rzeczy do zrobienia'),
(6, ' trzecia lista rzeczy do zrobienia'),
(11, ' fhfgh');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zlecenia`
--

CREATE TABLE `zlecenia` (
  `id_zlecenia` int(11) NOT NULL,
  `numer_zlecenia` int(11) NOT NULL,
  `typ_zlecenia` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `sla` date NOT NULL,
  `data_wprowadzenia` date NOT NULL,
  `nazwa_kontrahenta` text COLLATE utf8_polish_ci NOT NULL,
  `adres_kontrahenta` text COLLATE utf8_polish_ci NOT NULL,
  `kontakt` text COLLATE utf8_polish_ci NOT NULL,
  `pracownik` text COLLATE utf8_polish_ci NOT NULL,
  `status` text COLLATE utf8_polish_ci NOT NULL,
  `sprzet` text COLLATE utf8_polish_ci NOT NULL,
  `sn` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `data_realizacja` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Daten für Tabelle `zlecenia`
--

INSERT INTO `zlecenia` (`id_zlecenia`, `numer_zlecenia`, `typ_zlecenia`, `opis`, `sla`, `data_wprowadzenia`, `nazwa_kontrahenta`, `adres_kontrahenta`, `kontakt`, `pracownik`, `status`, `sprzet`, `sn`, `tid`, `data_realizacja`) VALUES
(1, 1, 'Instalacja', '  opisoooooooooooooooo', '2020-03-10', '2020-03-10', 'fdp', 'kerpen', '694162622', 'kawka@kawka.com', 'otwarte', 'klej', 5555555, 66666666, '2020/03/10 13:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `komentarze`
--
ALTER TABLE `komentarze`
  ADD PRIMARY KEY (`id_komentarze`);

--
-- Indizes für die Tabelle `magazyn`
--
ALTER TABLE `magazyn`
  ADD PRIMARY KEY (`id_magazyn`);

--
-- Indizes für die Tabelle `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indizes für die Tabelle `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id_todolist`);

--
-- Indizes für die Tabelle `zlecenia`
--
ALTER TABLE `zlecenia`
  ADD PRIMARY KEY (`id_zlecenia`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `komentarze`
--
ALTER TABLE `komentarze`
  MODIFY `id_komentarze` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `magazyn`
--
ALTER TABLE `magazyn`
  MODIFY `id_magazyn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id_todolist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `zlecenia`
--
ALTER TABLE `zlecenia`
  MODIFY `id_zlecenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
