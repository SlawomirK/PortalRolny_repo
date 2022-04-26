-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Wrz 2021, 16:46
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `unijne_dotacje`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `farmer`
--

CREATE TABLE `farmer` (
  `id_farmer` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `agriculture_income` bit(1) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `has_forest` bit(1) NOT NULL,
  `has_kids` bit(1) NOT NULL,
  `herd_size` int(11) DEFAULT NULL,
  `inkrus` bit(1) NOT NULL,
  `main_animal` varchar(255) DEFAULT NULL,
  `want_comitments` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `farmer`
--

INSERT INTO `farmer` (`id_farmer`, `age`, `agriculture_income`, `area`, `has_forest`, `has_kids`, `herd_size`, `inkrus`, `main_animal`, `want_comitments`) VALUES
(1, 18, b'0', 'od 10ha do 30ha', b'0', b'0', 0, b'0', NULL, b'1'),
(2, 18, b'0', 'od 0,1ha do 10ha', b'0', b'0', 0, b'0', NULL, b'1'),
(3, 18, b'0', 'od 0,1ha do 10ha', b'0', b'0', 0, b'0', NULL, b'0'),
(4, 18, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'0'),
(5, 0, b'0', 'od 10ha do 30ha', b'0', b'0', 0, b'0', NULL, b'0'),
(6, 0, b'0', 'od 0,1ha do 10ha', b'0', b'0', 0, b'0', NULL, b'0'),
(7, 40, b'0', 'od 10ha do 30ha', b'0', b'0', 0, b'0', NULL, b'0'),
(8, 40, b'0', 'od 0,1ha do 10ha', b'0', b'0', 0, b'0', NULL, b'0'),
(9, 40, b'0', 'od 30ha do 50ha', b'0', b'0', 0, b'0', NULL, b'0'),
(10, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(11, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(12, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(13, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(14, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(15, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(16, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(17, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(18, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(19, 0, b'0', NULL, b'0', b'0', 3, b'0', 'bydło', b'1'),
(20, 0, b'0', NULL, b'0', b'0', 3, b'0', 'bydło', b'1'),
(21, 0, b'0', NULL, b'0', b'0', 10, b'0', 'owce', b'1'),
(22, 0, b'0', NULL, b'0', b'0', 5, b'0', 'kozy', b'1'),
(23, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(24, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(25, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(26, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(27, 0, b'0', NULL, b'0', b'0', 1, b'0', 'bydło', b'1'),
(28, 0, b'0', NULL, b'0', b'0', 1, b'0', 'bydło', b'1'),
(29, 0, b'0', NULL, b'0', b'0', 1, b'0', 'bydło', b'1'),
(30, 0, b'0', NULL, b'0', b'0', 1, b'0', 'owce', b'1'),
(31, 0, b'0', NULL, b'0', b'0', 1, b'0', NULL, b'1'),
(32, 0, b'0', NULL, b'0', b'0', 1, b'0', NULL, b'1'),
(33, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(34, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(35, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(36, 0, b'0', NULL, b'1', b'0', 0, b'0', NULL, b'1'),
(37, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(38, 0, b'0', NULL, b'0', b'0', 0, b'0', 'bydło', b'1'),
(39, 0, b'0', NULL, b'0', b'0', 0, b'0', 'bydło', b'1'),
(40, 0, b'0', NULL, b'0', b'0', 0, b'0', 'bydło', b'0'),
(41, 0, b'0', NULL, b'0', b'0', 21, b'0', 'trzoda chlewna', b'0'),
(42, 0, b'0', NULL, b'0', b'0', 21, b'0', NULL, b'0'),
(43, 0, b'1', NULL, b'0', b'0', 21, b'0', NULL, b'0'),
(44, 40, b'1', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(45, 0, b'1', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(46, 0, b'1', NULL, b'0', b'0', 0, b'0', NULL, b'1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `farmer_crops`
--

CREATE TABLE `farmer_crops` (
  `farmer_id_farmer` bigint(20) NOT NULL,
  `crops` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `farmer_crops`
--

INSERT INTO `farmer_crops` (`farmer_id_farmer`, `crops`) VALUES
(14, 'strączkowe'),
(15, 'motylkowe drobnonasienn'),
(16, 'pomidory'),
(17, 'len'),
(18, 'konopie'),
(33, 'sady'),
(34, 'użytki zielone'),
(39, 'ziemniaki'),
(39, 'strączkowe'),
(39, 'zboża'),
(40, 'ziemniaki'),
(40, 'strączkowe'),
(40, 'zboża');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `farmer_grant`
--

CREATE TABLE `farmer_grant` (
  `id_farmer` bigint(20) NOT NULL,
  `id_grant` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `farmer_grant`
--

INSERT INTO `farmer_grant` (`id_farmer`, `id_grant`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23),
(23, 24),
(24, 25),
(25, 26),
(26, 27),
(27, 28),
(28, 29),
(29, 30),
(30, 31),
(31, 32),
(32, 33),
(33, 34),
(34, 35),
(35, 36),
(36, 37),
(37, 38),
(38, 39),
(39, 40),
(40, 41),
(41, 42),
(42, 43),
(43, 44),
(44, 45),
(45, 46);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grants`
--

CREATE TABLE `grants` (
  `id_grant` bigint(20) NOT NULL,
  `details_link` varchar(300) DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `max_subsidy` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `grants`
--

INSERT INTO `grants` (`id_grant`, `details_link`, `finish_date`, `max_subsidy`, `name`, `start_date`) VALUES
(1, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-za-zazielenienie.html', '2021-05-15 02:00:00', 324, 'Płatność za zazielenienie', '2021-03-15 01:00:00'),
(2, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-za-zazielenienie.html', '2021-05-15 02:00:00', 324, 'Płatność za zazielenienie', '2021-03-15 01:00:00'),
(3, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/jednolita-platnosc-obszarowa.html', '2021-05-15 02:00:00', 471, 'Jednolita Płatność Obszarowa', '2021-03-15 01:00:00'),
(4, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dodatkowa.html', '2021-05-15 02:00:00', 471, 'Płatność redystrybucyjna', '2021-03-15 01:00:00'),
(5, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dodatkowa.html', '2021-05-15 02:00:00', 471, 'Płatność redystrybucyjna', '2021-03-15 01:00:00'),
(6, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dla-mlodych-rolnikow.html', '2021-09-15 02:00:00', 252.62, 'Płatność dla Młodych Rolników', '2021-03-15 01:00:00'),
(7, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dla-mlodych-rolnikow.html', '2021-05-15 02:00:00', 252.62, 'Płatność dla Młodych Rolników', '2021-03-15 01:00:00'),
(8, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dla-mlodych-rolnikow.html', '2021-05-15 02:00:00', 252.62, 'Płatność dla Młodych Rolników', '2021-03-15 01:00:00'),
(9, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-burakow-cukrowych.html', '2021-05-15 02:00:00', 1516.3, 'Płatność do powierzchni upraw buraków cukrowych', '2021-03-15 01:00:00'),
(10, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-ziemniakow-skrobiowych.html', '2021-05-15 02:00:00', 1128.24, 'Płatność do powierzchni ziemniaków skrobiowych', '2021-03-15 01:00:00'),
(11, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-truskawek.html', '2021-05-15 02:00:00', 1204.72, 'Płatność do powierzchni truskawek', '2021-03-15 01:00:00'),
(12, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-chmielu.html', '2021-05-15 02:00:00', 2072.1, 'Płatność do powierzchni uprawy chmielu', '2021-03-15 01:00:00'),
(13, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-upraw-roslin-straczkowych-na-ziarno.html', '2021-05-15 02:00:00', 724.38, 'Płatność do powierzchni upraw strączkowych', '2021-03-15 01:00:00'),
(14, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-upraw-roslin-pastewnych.html', '2021-05-15 02:00:00', 468.05, 'Płatność do powierzchni upraw roślin pastewnych', '2021-03-15 01:00:00'),
(15, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-pomidorow.html', '2021-05-15 02:00:00', 2575.02, 'Płatność do powierzchni uprawy pomidorów', '2021-03-15 01:00:00'),
(16, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-lnu.html', '2021-05-15 02:00:00', 492.28, 'Płatność do powierzchni uprawy lnu', '2021-03-15 01:00:00'),
(17, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-konopi-wloknistych.html', '2021-05-15 02:00:00', 127.16, 'Płatność do powierzchni konopii włóknistej', '2021-03-15 01:00:00'),
(18, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-bydla.html', '2021-05-15 02:00:00', 326.76, 'Płatność do bydła', '2021-03-15 01:00:00'),
(19, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-krow.html', '2021-05-15 02:00:00', 412.11, 'Płatność do krów', '2021-03-15 01:00:00'),
(20, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-owiec.html', '2021-05-15 02:00:00', 111.12, 'Płatność do owiec', '2021-03-15 01:00:00'),
(21, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-koz.html', '2021-05-15 02:00:00', 52.57, 'Płatność do kóz', '2021-03-15 01:00:00'),
(22, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 301, 'Dobrostan loch-zwiększona powierzchnia w budynkach', '2021-03-15 01:00:00'),
(23, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 612, 'Dobrostan loch-dostęp do wybiegu', '2021-03-15 01:00:00'),
(24, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 24, 'Dobrostan tuczników-zwiększona powierzchnia w budynkach', '2021-03-15 01:00:00'),
(25, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 33, 'Dobrostan tuczników-dostęp do wybiegu', '2021-03-15 01:00:00'),
(26, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_12_DZ_wariant_2_1.pdf', '2021-06-17 02:00:00', 185, 'Dobrostan krów mlecznych-wypas', '2021-03-15 01:00:00'),
(27, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_13_DZ_wariant_2_2.pdf', '2021-06-17 02:00:00', 595, 'Dobrostan krów mlecznych-wypas', '2021-03-15 01:00:00'),
(28, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_14_DZ_wariant_2_3.pdf', '2021-06-17 02:00:00', 329, 'Dobrostan krów matek', '2021-03-15 01:00:00'),
(29, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_15_DZ_wariant_3_1.pdf', '2021-06-17 02:00:00', 133, 'Dobrostan owiec', '2021-03-15 01:00:00'),
(30, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/18_03_2021_10_PRSK_Pakiet_1.pdf', '2021-06-17 02:00:00', 486, 'Rolnictwo zrównoważone', '2021-03-15 01:00:00'),
(31, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_11_PRSK_Pakiet_2.pdf', '2021-06-17 02:00:00', 650, 'Ochrona gleb i wód-międzyplony', '2021-03-15 01:00:00'),
(32, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_12_PRSK_Pakiet_3.pdf', '2021-06-17 02:00:00', 1964, 'Zachowanie sadów tradycujnych odmian drzew owocowych', '2021-03-15 01:00:00'),
(33, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_13_PRSK_Pakiet_4_i_5.pdf', '2021-06-17 02:00:00', 1300, 'Cenne siedliska i zgrożone gatunki ptaków', '2021-03-15 01:00:00'),
(34, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_14_PRSK_Pakiet_6.pdf', '2021-05-17 02:00:00', 1000, 'Zachowanie zagrożonych zasobów genetycznych roślin', '2021-03-15 01:00:00'),
(35, 'https://www.arimr.gov.pl/fileadmin/pliki/PROW__zalesienia_2007-2013/Informacja_dotyczaca_zasad.pdf', '2021-05-15 02:00:00', 1215, 'Premia pielęgnacyjna i zalesieniowa', '2021-03-15 01:00:00'),
(36, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_15_PRSK_Pakiet_7.pdf', '2021-06-17 02:00:00', 1900, 'Zachowanie zagrożonych zasobów genetycznych zwierząt', '2021-03-15 01:00:00'),
(37, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/pomoc-dla-rolnikow-szczegolnie-dotknietych-kryzysem-covid-19/pomoc-covid-19-informacje.html', '2020-10-07 02:00:00', 5100, 'Pomoc dla rolników szczególnie dotkniętych kryzysem COVID-19', '2020-09-09 02:00:00'),
(38, 'https://www.arimr.gov.pl/pomoc-krajowa/doplaty-do-materialu-siewnego-stawki-dla-wnioskow-zlozonych-w-2020-roku.html', NULL, 67.98, 'Dopłaty do materiału siewnego', NULL),
(39, 'https://www.arimr.gov.pl/pomoc-krajowa/pomoc-na-zakupu-komputera-dla-dziecka-z-rodziny-rolniczej.html', '2020-12-30 01:00:00', 1500, 'Pomoc na zakup komputara dla dziecka z rodziny rolniczej', NULL),
(40, 'https://www.arimr.gov.pl/pomoc-krajowa/pomoc-dla-producentow-trzody-chlewnej-ktorym-zagraza-utrata-plynnosci-finansowej-w-zwiazku-z-covid-19.html', '2020-12-20 01:00:00', 4500, 'Pomoc dla producentów trzody chlewnej którym zagraża utrata płynności finansowej w związku z COVID-19', NULL),
(41, 'https://www.arimr.gov.pl/pomoc-unijna/prow-2014-2020/poddzialanie-52-inwestycje-odtwarzajace-potencjal-produkcji-rolnej.html', '2021-12-31 01:00:00', 300000, 'Inwestycje odtwarzające potencjał produkcji rolnej ', '2021-03-11 01:00:00'),
(42, 'https://www.arimr.gov.pl/ogloszenia-prezesa-arimr/artykuly/restrukturyzacja-malych-gospodarstw-5.html', '2021-12-29 01:00:00', 60000, 'Restrukturyzacja małych gospodarstw', '2021-03-31 02:00:00'),
(43, 'https://www.arimr.gov.pl/aktualnosci/artykuly/premie-dla-mlodych-rolnikow-i-restrukturyzacja-malych-gospodarstw-wystartowaly-nabory.html', '2021-05-29 02:00:00', 150000, 'Premia dla młodych rolników', '2021-03-31 02:00:00'),
(44, 'https://www.arimr.gov.pl/pomoc-unijna/prow-2014-2020/poddzialanie-64-wsparcie-inwestycji-w-tworzenie-i-rozwoj-dzialalnosci-pozarolniczej.html', '2021-02-12 01:00:00', 500000, 'Wsparcie inwestycji w tworzenie i rozwój działalności pozarolniczej', '2020-11-30 01:00:00'),
(45, 'https://www.arimr.gov.pl/pomoc-unijna/prow-2014-2020/poddzialanie-41-modernizacja-gospodarstw-rolnych-obszar-a-d/modernizacja-gospodarstw-rolnych-nabor-31-marca-30-czerwca-2020-r.html', '2022-06-30 02:00:00', 500000, 'Modernizacja gospodarstw rolnych', '2020-03-31 02:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grant_description`
--

CREATE TABLE `grant_description` (
  `grant_id_grant` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `grant_description`
--

INSERT INTO `grant_description` (`grant_id_grant`, `description`) VALUES
(1, 'wniosek składany razem z wnioskiem o jpo'),
(1, 'konieczność realizacji praktyk zazielenienia'),
(2, 'wniosek składany razem z wnioskiem o jpo'),
(3, 'grunty utrzymywane w dobrej kulturze'),
(4, 'dla gospodarstw o powierzchni między 3,01-30ha'),
(5, 'dla gospodarstw o powierzchni między 3,01-30ha'),
(6, 'dla osób w wieku do max 40 lat'),
(6, 'płatność do ha przysługuje przez 5 lat od przejęcia gospodarstwa'),
(6, 'do max 50ha'),
(7, 'dla osób w wieku do max 40 lat'),
(7, 'płatność do ha przysługuje przez 5 lat od przejęcia gospodarstwa'),
(7, 'do max 50ha'),
(8, 'dla osób w wieku do max 40 lat'),
(8, 'płatność do ha przysługuje przez 5 lat od przejęcia gospodarstwa'),
(8, 'do max 50ha'),
(9, 'koniczna umowa z odbiorcą buraków cukrowych'),
(10, 'koniczna umowa z odbiorcą ziemniaków skrobiowych'),
(11, 'koniczna umowa z odbiorcą ziemniaków skrobiowych'),
(12, 'dopłata ograniczona do powiatów, patrz szczegóły'),
(12, 'co najmniej 1300 sadzonek na ha'),
(13, 'może być uznana za obszar proekologiczny'),
(14, 'przysługuje maksymalnie do powierzchni 75ha'),
(15, 'obsada co najmniej 20000 na ha'),
(15, 'niezbędna umowa z odbiorcą'),
(15, 'tylko z rozsady'),
(16, 'umowa niewymagana'),
(17, 'wymagane zezwolenie'),
(18, 'minimalna wielkość stada 3szt'),
(18, 'płatność maksymalnie do 20 sztuk'),
(18, 'wiek do 24m-cy'),
(19, 'wiek zwierząt do 24 m-cy'),
(19, 'minimalna wielkość stada 3szt'),
(19, 'płatność maksymalnie do 20 sztuk'),
(20, 'minimalna wielkość stada 10szt'),
(20, 'wiek zwierząt do 12 m-cy'),
(21, 'minimalna wielkość stada 5szt'),
(21, 'wiek zwierząt do 12 m-cy'),
(22, 'spełnienie wymogu minimalnej powierzchni kojca'),
(23, 'wymóg dostęp do wyniegu'),
(24, 'określona minimalna powierzchnia'),
(25, 'dostęp do wybiegu'),
(26, 'przez co najmniej 6 godzin bydło musi swobodnie przebywać na pastwisku'),
(27, 'określona minimalna powierzchnia obory'),
(28, 'wypasanie bez uwięzi'),
(29, 'wypasanie bez uwięzi'),
(30, 'do gruntów ornych'),
(30, 'minimum 4 uprawy'),
(30, 'co roku plan nawozowy'),
(30, 'obowiązek posiadania planu działalności rolnośrodowiskowej'),
(31, 'siew roślin międzyplonowych'),
(31, 'przeciwdziałanie erozji glebowej'),
(31, 'obowiązek posiadania planu działalności rolnośrodowiskowej'),
(31, 'pięcioletnie zobowiązanie'),
(32, 'obowiązek posiadania planu'),
(32, 'wiek drzew od 15 lat'),
(32, 'zakaz stosowania herbicydów'),
(33, 'wsparcie ekstensyfikacji gospodarowania'),
(33, 'płatności zależą od wybranego wariantu. Najniższa to 600zł/ha'),
(33, 'poprawa warunków bytowania zagrożonych ptaków'),
(34, 'zachowanie ginących i cennych odmian'),
(34, 'wymóg posiadania planu działalności rolnośrodowiskowej'),
(35, 'premia pielęgnacyjna jest przyznawana na 5 lat'),
(35, 'Dla rolników którzy wcześniej złożyli wniosek o wsparcie na zalesienie'),
(35, 'premia zalesieniowa przyznawana na 12 lat'),
(35, 'Wysokość uzależniona od warunków'),
(36, 'zachowanie rodzimych gatunków zwierząt'),
(36, 'stawki zależne od wariantu. Maksymalna dla koni ras małopolskiej i wielkopolskiej'),
(36, 'wymóg posiadania planu działalności rolnośrodowiskowej'),
(37, 'wskazana wysokość dotacji ma charakter orientacyjny'),
(37, 'jest uzależniona od wielkości i rodzaju produkcji'),
(38, 'wskazana wysokość dotacji ma charakter orientacyjny'),
(39, 'co najmniej dwoje niepełnoletnich dzieci'),
(39, 'dochód nie przekracza 1200zł na osobę'),
(40, 'wskazana wysokość ma charakter orientacyjny'),
(40, 'uzależniona od wielkości hodowli'),
(41, 'W przypadku braku ubezpieczenia kwotę obniża się o połowę'),
(41, 'Wysokość strat określa komisja powołana przez wojewodę'),
(41, 'Zniszczenie przez zdarzenie losowe co najmniej 30% produkcji'),
(42, 'Dla gospodarstw o wielkości ekonomicznej mniejsze niż 13000 euro'),
(42, 'Pomoc przyznaje się tylko raz'),
(43, 'maksymalny okres posiadania gospodarstwa 24 m-ce'),
(43, 'stworzą lub posiadają gospodarstwo o wartości od 13tyś do 150tyś euro'),
(43, 'wymagane kwalifikacje rolnicze'),
(44, 'Pomoc w formie refundacji połowy kosztów kwalifikowanych'),
(45, 'Pomoc w formie refundacji połowy kosztów kwalifikowanych'),
(45, 'Wartość ekonomiczna gospodarstwa nie mniejsza niż 13tyś euro i nie większa niż 200tyś euro'),
(45, 'Na wprowadzenie innowacji, zwiększenie skali produkcji itd');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id_farmer`);

--
-- Indeksy dla tabeli `farmer_crops`
--
ALTER TABLE `farmer_crops`
  ADD KEY `FKb5jjgbjbh14inmfd4mar6aiuf` (`farmer_id_farmer`);

--
-- Indeksy dla tabeli `farmer_grant`
--
ALTER TABLE `farmer_grant`
  ADD PRIMARY KEY (`id_farmer`,`id_grant`),
  ADD KEY `FKo26f7pye06amtqufj343xbk7e` (`id_grant`);

--
-- Indeksy dla tabeli `grants`
--
ALTER TABLE `grants`
  ADD PRIMARY KEY (`id_grant`);

--
-- Indeksy dla tabeli `grant_description`
--
ALTER TABLE `grant_description`
  ADD KEY `FKsaok978fmx9ka80mkj90ri6r8` (`grant_id_grant`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id_farmer` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT dla tabeli `grants`
--
ALTER TABLE `grants`
  MODIFY `id_grant` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
