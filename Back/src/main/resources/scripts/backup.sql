-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Sie 2021, 21:07
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
(19, 0, b'0', NULL, b'0', b'0', 3, b'0', 'byd??o', b'1'),
(20, 0, b'0', NULL, b'0', b'0', 3, b'0', 'byd??o', b'1'),
(21, 0, b'0', NULL, b'0', b'0', 10, b'0', 'owce', b'1'),
(22, 0, b'0', NULL, b'0', b'0', 5, b'0', 'kozy', b'1'),
(23, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(24, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(25, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(26, 0, b'0', NULL, b'0', b'0', 1, b'0', 'trzoda chlewna', b'1'),
(27, 0, b'0', NULL, b'0', b'0', 1, b'0', 'byd??o', b'1'),
(28, 0, b'0', NULL, b'0', b'0', 1, b'0', 'byd??o', b'1'),
(29, 0, b'0', NULL, b'0', b'0', 1, b'0', 'byd??o', b'1'),
(30, 0, b'0', NULL, b'0', b'0', 1, b'0', 'owce', b'1'),
(31, 0, b'0', NULL, b'0', b'0', 1, b'0', NULL, b'1'),
(32, 0, b'0', NULL, b'0', b'0', 1, b'0', NULL, b'1'),
(33, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(34, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(35, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(36, 0, b'0', NULL, b'1', b'0', 0, b'0', NULL, b'1'),
(37, 0, b'0', NULL, b'0', b'0', 0, b'0', NULL, b'1'),
(38, 0, b'0', NULL, b'0', b'0', 0, b'0', 'byd??o', b'1'),
(39, 0, b'0', NULL, b'0', b'0', 0, b'0', 'byd??o', b'1'),
(40, 0, b'0', NULL, b'0', b'0', 0, b'0', 'byd??o', b'0'),
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
(14, 'str??czkowe'),
(15, 'motylkowe drobnonasienn'),
(16, 'pomidory'),
(17, 'len'),
(18, 'konopie'),
(33, 'sady'),
(34, 'u??ytki zielone'),
(39, 'ziemniaki'),
(39, 'str??czkowe'),
(39, 'zbo??a'),
(40, 'ziemniaki'),
(40, 'str??czkowe'),
(40, 'zbo??a');

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
(1, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-za-zazielenienie.html', '2021-05-15 02:00:00', 324, 'P??atno???? za zazielenienie', '2021-03-15 01:00:00'),
(2, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-za-zazielenienie.html', '2021-05-15 02:00:00', 324, 'P??atno???? za zazielenienie', '2021-03-15 01:00:00'),
(3, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/jednolita-platnosc-obszarowa.html', '2021-05-15 02:00:00', 471, 'Jednolita P??atno???? Obszarowa', '2021-03-15 01:00:00'),
(4, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dodatkowa.html', '2021-05-15 02:00:00', 471, 'P??atno???? redystrybucyjna', '2021-03-15 01:00:00'),
(5, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dodatkowa.html', '2021-05-15 02:00:00', 471, 'P??atno???? redystrybucyjna', '2021-03-15 01:00:00'),
(6, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dla-mlodych-rolnikow.html', '2021-05-15 02:00:00', 252.62, 'P??atno???? dla M??odych Rolnik??w', '2021-03-15 01:00:00'),
(7, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dla-mlodych-rolnikow.html', '2021-05-15 02:00:00', 252.62, 'P??atno???? dla M??odych Rolnik??w', '2021-03-15 01:00:00'),
(8, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosc-dla-mlodych-rolnikow.html', '2021-05-15 02:00:00', 252.62, 'P??atno???? dla M??odych Rolnik??w', '2021-03-15 01:00:00'),
(9, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-burakow-cukrowych.html', '2021-05-15 02:00:00', 1516.3, 'P??atno???? do powierzchni upraw burak??w cukrowych', '2021-03-15 01:00:00'),
(10, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-ziemniakow-skrobiowych.html', '2021-05-15 02:00:00', 1128.24, 'P??atno???? do powierzchni ziemniak??w skrobiowych', '2021-03-15 01:00:00'),
(11, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-truskawek.html', '2021-05-15 02:00:00', 1204.72, 'P??atno???? do powierzchni truskawek', '2021-03-15 01:00:00'),
(12, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-chmielu.html', '2021-05-15 02:00:00', 2072.1, 'P??atno???? do powierzchni uprawy chmielu', '2021-03-15 01:00:00'),
(13, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-upraw-roslin-straczkowych-na-ziarno.html', '2021-05-15 02:00:00', 724.38, 'P??atno???? do powierzchni upraw str??czkowych', '2021-03-15 01:00:00'),
(14, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-upraw-roslin-pastewnych.html', '2021-05-15 02:00:00', 468.05, 'P??atno???? do powierzchni upraw ro??lin pastewnych', '2021-03-15 01:00:00'),
(15, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-pomidorow.html', '2021-05-15 02:00:00', 2575.02, 'P??atno???? do powierzchni uprawy pomidor??w', '2021-03-15 01:00:00'),
(16, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-lnu.html', '2021-05-15 02:00:00', 492.28, 'P??atno???? do powierzchni uprawy lnu', '2021-03-15 01:00:00'),
(17, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-powierzchni-upraw/platnosc-do-powierzchni-uprawy-konopi-wloknistych.html', '2021-05-15 02:00:00', 127.16, 'P??atno???? do powierzchni konopii w????knistej', '2021-03-15 01:00:00'),
(18, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-bydla.html', '2021-05-15 02:00:00', 326.76, 'P??atno???? do byd??a', '2021-03-15 01:00:00'),
(19, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-krow.html', '2021-05-15 02:00:00', 412.11, 'P??atno???? do kr??w', '2021-03-15 01:00:00'),
(20, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-owiec.html', '2021-05-15 02:00:00', 111.12, 'P??atno???? do owiec', '2021-03-15 01:00:00'),
(21, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/platnosci-bezposrednie-w-roku-2021/platnosci-bezposrednie-w-roku-2021-informacje/platnosci-zwiazane-z-produkcja/platnosci-zwiazane-do-zwierzat/platnosc-do-koz.html', '2021-05-15 02:00:00', 52.57, 'P??atno???? do k??z', '2021-03-15 01:00:00'),
(22, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 301, 'Dobrostan loch-zwi??kszona powierzchnia w budynkach', '2021-03-15 01:00:00'),
(23, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 612, 'Dobrostan loch-dost??p do wybiegu', '2021-03-15 01:00:00'),
(24, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 24, 'Dobrostan tucznik??w-zwi??kszona powierzchnia w budynkach', '2021-03-15 01:00:00'),
(25, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/16_03_2021_10_DZ_wariant_1_1_z.pdf', '2021-06-17 02:00:00', 33, 'Dobrostan tucznik??w-dost??p do wybiegu', '2021-03-15 01:00:00'),
(26, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_12_DZ_wariant_2_1.pdf', '2021-06-17 02:00:00', 185, 'Dobrostan kr??w mlecznych-wypas', '2021-03-15 01:00:00'),
(27, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_13_DZ_wariant_2_2.pdf', '2021-06-17 02:00:00', 595, 'Dobrostan kr??w mlecznych-wypas', '2021-03-15 01:00:00'),
(28, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_14_DZ_wariant_2_3.pdf', '2021-06-17 02:00:00', 329, 'Dobrostan kr??w matek', '2021-03-15 01:00:00'),
(29, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/DZ/12_03_2021_15_DZ_wariant_3_1.pdf', '2021-06-17 02:00:00', 133, 'Dobrostan owiec', '2021-03-15 01:00:00'),
(30, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/18_03_2021_10_PRSK_Pakiet_1.pdf', '2021-06-17 02:00:00', 486, 'Rolnictwo zr??wnowa??one', '2021-03-15 01:00:00'),
(31, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_11_PRSK_Pakiet_2.pdf', '2021-06-17 02:00:00', 650, 'Ochrona gleb i w??d-mi??dzyplony', '2021-03-15 01:00:00'),
(32, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_12_PRSK_Pakiet_3.pdf', '2021-06-17 02:00:00', 1964, 'Zachowanie sad??w tradycujnych odmian drzew owocowych', '2021-03-15 01:00:00'),
(33, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_13_PRSK_Pakiet_4_i_5.pdf', '2021-06-17 02:00:00', 1300, 'Cenne siedliska i zgro??one gatunki ptak??w', '2021-03-15 01:00:00'),
(34, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_14_PRSK_Pakiet_6.pdf', '2021-05-17 02:00:00', 1000, 'Zachowanie zagro??onych zasob??w genetycznych ro??lin', '2021-03-15 01:00:00'),
(35, 'https://www.arimr.gov.pl/fileadmin/pliki/PROW__zalesienia_2007-2013/Informacja_dotyczaca_zasad.pdf', '2021-05-15 02:00:00', 1215, 'Premia piel??gnacyjna i zalesieniowa', '2021-03-15 01:00:00'),
(36, 'https://www.arimr.gov.pl/fileadmin/pliki/PB_2020/WPS/PRSK/11_03_2021_15_PRSK_Pakiet_7.pdf', '2021-06-17 02:00:00', 1900, 'Zachowanie zagro??onych zasob??w genetycznych zwierz??t', '2021-03-15 01:00:00'),
(37, 'https://www.arimr.gov.pl/pomoc-unijna/platnosci-bezposrednie/pomoc-dla-rolnikow-szczegolnie-dotknietych-kryzysem-covid-19/pomoc-covid-19-informacje.html', '2020-10-07 02:00:00', 5100, 'Pomoc dla rolnik??w szczeg??lnie dotkni??tych kryzysem COVID-19', '2020-09-09 02:00:00'),
(38, 'https://www.arimr.gov.pl/pomoc-krajowa/doplaty-do-materialu-siewnego-stawki-dla-wnioskow-zlozonych-w-2020-roku.html', NULL, 67.98, 'Dop??aty do materia??u siewnego', NULL),
(39, 'https://www.arimr.gov.pl/pomoc-krajowa/pomoc-na-zakupu-komputera-dla-dziecka-z-rodziny-rolniczej.html', '2020-12-30 01:00:00', 1500, 'Pomoc na zakup komputara dla dziecka z rodziny rolniczej', NULL),
(40, 'https://www.arimr.gov.pl/pomoc-krajowa/pomoc-dla-producentow-trzody-chlewnej-ktorym-zagraza-utrata-plynnosci-finansowej-w-zwiazku-z-covid-19.html', '2020-12-20 01:00:00', 4500, 'Pomoc dla producent??w trzody chlewnej kt??rym zagra??a utrata p??ynno??ci finansowej w zwi??zku z COVID-19', NULL),
(41, 'https://www.arimr.gov.pl/pomoc-unijna/prow-2014-2020/poddzialanie-52-inwestycje-odtwarzajace-potencjal-produkcji-rolnej.html', '2021-12-31 01:00:00', 300000, 'Inwestycje odtwarzaj??ce potencja?? produkcji rolnej ', '2021-03-11 01:00:00'),
(42, 'https://www.arimr.gov.pl/ogloszenia-prezesa-arimr/artykuly/restrukturyzacja-malych-gospodarstw-5.html', '2021-12-29 01:00:00', 60000, 'Restrukturyzacja ma??ych gospodarstw', '2021-03-31 02:00:00'),
(43, 'https://www.arimr.gov.pl/aktualnosci/artykuly/premie-dla-mlodych-rolnikow-i-restrukturyzacja-malych-gospodarstw-wystartowaly-nabory.html', '2021-05-29 02:00:00', 150000, 'Premia dla m??odych rolnik??w', '2021-03-31 02:00:00'),
(44, 'https://www.arimr.gov.pl/pomoc-unijna/prow-2014-2020/poddzialanie-64-wsparcie-inwestycji-w-tworzenie-i-rozwoj-dzialalnosci-pozarolniczej.html', '2021-02-12 01:00:00', 500000, 'Wsparcie inwestycji w tworzenie i rozw??j dzia??alno??ci pozarolniczej', '2020-11-30 01:00:00'),
(45, 'https://www.arimr.gov.pl/pomoc-unijna/prow-2014-2020/poddzialanie-41-modernizacja-gospodarstw-rolnych-obszar-a-d/modernizacja-gospodarstw-rolnych-nabor-31-marca-30-czerwca-2020-r.html', '2020-06-30 02:00:00', 500000, 'Modernizacja gospodarstw rolnych', '2020-03-31 02:00:00');

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
(1, 'wniosek sk??adany razem z wnioskiem o jpo'),
(1, 'konieczno???? realizacji praktyk zazielenienia'),
(2, 'wniosek sk??adany razem z wnioskiem o jpo'),
(3, 'grunty utrzymywane w dobrej kulturze'),
(4, 'dla gospodarstw o powierzchni mi??dzy 3,01-30ha'),
(5, 'dla gospodarstw o powierzchni mi??dzy 3,01-30ha'),
(6, 'dla os??b w wieku do max 40 lat'),
(6, 'p??atno???? do ha przys??uguje przez 5 lat od przej??cia gospodarstwa'),
(6, 'do max 50ha'),
(7, 'dla os??b w wieku do max 40 lat'),
(7, 'p??atno???? do ha przys??uguje przez 5 lat od przej??cia gospodarstwa'),
(7, 'do max 50ha'),
(8, 'dla os??b w wieku do max 40 lat'),
(8, 'p??atno???? do ha przys??uguje przez 5 lat od przej??cia gospodarstwa'),
(8, 'do max 50ha'),
(9, 'koniczna umowa z odbiorc?? burak??w cukrowych'),
(10, 'koniczna umowa z odbiorc?? ziemniak??w skrobiowych'),
(11, 'koniczna umowa z odbiorc?? ziemniak??w skrobiowych'),
(12, 'dop??ata ograniczona do powiat??w, patrz szczeg????y'),
(12, 'co najmniej 1300 sadzonek na ha'),
(13, 'mo??e by?? uznana za obszar proekologiczny'),
(14, 'przys??uguje maksymalnie do powierzchni 75ha'),
(15, 'obsada co najmniej 20000 na ha'),
(15, 'niezb??dna umowa z odbiorc??'),
(15, 'tylko z rozsady'),
(16, 'umowa niewymagana'),
(17, 'wymagane zezwolenie'),
(18, 'minimalna wielko???? stada 3szt'),
(18, 'p??atno???? maksymalnie do 20 sztuk'),
(18, 'wiek do 24m-cy'),
(19, 'wiek zwierz??t do 24 m-cy'),
(19, 'minimalna wielko???? stada 3szt'),
(19, 'p??atno???? maksymalnie do 20 sztuk'),
(20, 'minimalna wielko???? stada 10szt'),
(20, 'wiek zwierz??t do 12 m-cy'),
(21, 'minimalna wielko???? stada 5szt'),
(21, 'wiek zwierz??t do 12 m-cy'),
(22, 'spe??nienie wymogu minimalnej powierzchni kojca'),
(23, 'wym??g dost??p do wyniegu'),
(24, 'okre??lona minimalna powierzchnia'),
(25, 'dost??p do wybiegu'),
(26, 'przez co najmniej 6 godzin byd??o musi swobodnie przebywa?? na pastwisku'),
(27, 'okre??lona minimalna powierzchnia obory'),
(28, 'wypasanie bez uwi??zi'),
(29, 'wypasanie bez uwi??zi'),
(30, 'do grunt??w ornych'),
(30, 'minimum 4 uprawy'),
(30, 'co roku plan nawozowy'),
(30, 'obowi??zek posiadania planu dzia??alno??ci rolno??rodowiskowej'),
(31, 'siew ro??lin mi??dzyplonowych'),
(31, 'przeciwdzia??anie erozji glebowej'),
(31, 'obowi??zek posiadania planu dzia??alno??ci rolno??rodowiskowej'),
(31, 'pi??cioletnie zobowi??zanie'),
(32, 'obowi??zek posiadania planu'),
(32, 'wiek drzew od 15 lat'),
(32, 'zakaz stosowania herbicyd??w'),
(33, 'wsparcie ekstensyfikacji gospodarowania'),
(33, 'p??atno??ci zale???? od wybranego wariantu. Najni??sza to 600z??/ha'),
(33, 'poprawa warunk??w bytowania zagro??onych ptak??w'),
(34, 'zachowanie gin??cych i cennych odmian'),
(34, 'wym??g posiadania planu dzia??alno??ci rolno??rodowiskowej'),
(35, 'premia piel??gnacyjna jest przyznawana na 5 lat'),
(35, 'Dla rolnik??w kt??rzy wcze??niej z??o??yli wniosek o wsparcie na zalesienie'),
(35, 'premia zalesieniowa przyznawana na 12 lat'),
(35, 'Wysoko???? uzale??niona od warunk??w'),
(36, 'zachowanie rodzimych gatunk??w zwierz??t'),
(36, 'stawki zale??ne od wariantu. Maksymalna dla koni ras ma??opolskiej i wielkopolskiej'),
(36, 'wym??g posiadania planu dzia??alno??ci rolno??rodowiskowej'),
(37, 'wskazana wysoko???? dotacji ma charakter orientacyjny'),
(37, 'jest uzale??niona od wielko??ci i rodzaju produkcji'),
(38, 'wskazana wysoko???? dotacji ma charakter orientacyjny'),
(39, 'co najmniej dwoje niepe??noletnich dzieci'),
(39, 'doch??d nie przekracza 1200z?? na osob??'),
(40, 'wskazana wysoko???? ma charakter orientacyjny'),
(40, 'uzale??niona od wielko??ci hodowli'),
(41, 'W przypadku braku ubezpieczenia kwot?? obni??a si?? o po??ow??'),
(41, 'Wysoko???? strat okre??la komisja powo??ana przez wojewod??'),
(41, 'Zniszczenie przez zdarzenie losowe co najmniej 30% produkcji'),
(42, 'Dla gospodarstw o wielko??ci ekonomicznej mniejsze ni?? 13000 euro'),
(42, 'Pomoc przyznaje si?? tylko raz'),
(43, 'maksymalny okres posiadania gospodarstwa 24 m-ce'),
(43, 'stworz?? lub posiadaj?? gospodarstwo o warto??ci od 13ty?? do 150ty?? euro'),
(43, 'wymagane kwalifikacje rolnicze'),
(44, 'Pomoc w formie refundacji po??owy koszt??w kwalifikowanych'),
(45, 'Pomoc w formie refundacji po??owy koszt??w kwalifikowanych'),
(45, 'Warto???? ekonomiczna gospodarstwa nie mniejsza ni?? 13ty?? euro i nie wi??ksza ni?? 200ty?? euro'),
(45, 'Na wprowadzenie innowacji, zwi??kszenie skali produkcji itd');

--
-- Indeksy dla zrzut??w tabel
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
-- AUTO_INCREMENT dla tabel zrzut??w
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
