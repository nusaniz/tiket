-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2024 pada 09.07
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `halo`
--

CREATE TABLE `halo` (
  `id` int(11) NOT NULL,
  `ticket_code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `seat` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `waktu_validasi` timestamp(6) NULL DEFAULT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `halo`
--

INSERT INTO `halo` (`id`, `ticket_code`, `name`, `photo`, `seat`, `status`, `waktu_validasi`, `email`) VALUES
(4, '0882', 'MOCHAMAD HERU PRASETYA', 'B06210010', '9927721', 'Telah divalidasi', NULL, 'sadasd@lewsadenbo.com'),
(5, '2', 'MUHAMMAD ROKHANIDIN', 'B06207086', '441408', 'Telah divalidasi', '2024-05-04 06:03:46.000000', ''),
(6, '3', 'MUHAMMAD RAHMAN', 'B05219027', '133288', 'Telah divalidasi', NULL, ''),
(7, '4', 'Mia Dwi Amalia', 'B05219024', '276201', '', NULL, ''),
(8, '5', 'LIDYA RIAN FERDIANA', 'B05219022', '668809', '', NULL, ''),
(9, '6', 'Ari Pujarama', 'B05219008', '242148', '', NULL, ''),
(10, '7', 'ZAKI NASHRUDDIN AZHA', 'B05218038', '504803', '', NULL, ''),
(11, '8', 'REZA FAJAR MUHAMMAD', 'B05218030', '982484', '', NULL, ''),
(12, '9', 'NILAM ASFI CIFTANING', 'B05218024', '535238', '', NULL, ''),
(13, '10', 'NADIA FAHMA AWWALIA', 'B05218023', '850258', '', NULL, ''),
(14, '11', 'HAMIMAH AL HASYIMI', 'B05218013', '206378', '', NULL, ''),
(15, '12', 'GAMA YANWAR HARYO HU', 'B05218012', '227681', '', NULL, ''),
(16, '13', 'AYUDYA FEBRIN TIARA ', 'B05218006', '640011', '', NULL, ''),
(17, '14', 'YONA MEIDY ERVIANAND', 'B05217062', '812525', '', NULL, ''),
(18, '15', 'ROFIKOTUL UMMI', 'B05217051', '698097', '', NULL, ''),
(19, '16', 'MUHAMMAD HANIF AL - ', 'B05217037', '777987', '', NULL, ''),
(20, '17', 'SILVY KURNIAWATI', '04040520135', '937093', '', NULL, ''),
(21, '18', 'NUR AZIZI JULIANSYAH', '04020520070', '552175', '', NULL, ''),
(22, '19', 'IFFA SABILLA AULIA', '04020520051', '958256', '', NULL, ''),
(23, '20', 'DODIK ANGGORO PUTRO', '04020520048', '814203', '', NULL, ''),
(26, 'FVTKS0J2', 'hanum', '', '12', 'Telah divalidasi', '2024-05-04 06:45:00.000000', ''),
(27, 'JOB3HS76', '', '', '', '', NULL, ''),
(28, 'Z0XQS708', 'nanda', '', '', '', NULL, ''),
(29, 'D3WVLJ7V', 'amalia', '', '', 'Telah divalidasi', '2024-05-04 08:55:43.000000', ''),
(30, 'FS4S1UD4', 'intan', '', '12', 'Telah divalidasi', '2024-05-04 09:01:17.000000', ''),
(31, 'KG3VJKT5', '', '', '', '', NULL, ''),
(32, 'M21P36F6', 'rusia', '', '', 'Telah divalidasi', '2024-05-04 09:20:48.000000', ''),
(33, 'Z1W7Q0KE', 'aura', '', '10', 'Telah divalidasi', '2024-05-04 09:32:51.000000', ''),
(34, '27SDMD62', 'silvy', '', '1', '', NULL, ''),
(35, '3BFS4OYX', 'angel', '', '12', 'Telah divalidasi', '2024-05-04 09:44:36.000000', ''),
(37, 'A1234567', 'Budi', '', 'A1', '', NULL, ''),
(38, 'B2345678', 'Ani', '', 'B2', '', NULL, ''),
(39, 'C3456789', 'Cici', '', 'C3', '', NULL, ''),
(40, 'D4567890', 'Deni', '', 'D4', '', NULL, ''),
(41, 'E5678901', 'Euis', '', 'E5', '', NULL, ''),
(42, 'F6789012', 'Fajar', '', 'F6', '', NULL, ''),
(43, 'G7890123', 'Gita', '', 'G7', '', NULL, ''),
(44, 'H8901234', 'Hadi', '', 'H8', '', NULL, ''),
(45, 'I9012345', 'Indra', '', 'I9', '', NULL, ''),
(46, 'J0123456', 'Joko', '', 'J10', '', NULL, ''),
(47, 'K1234567', 'Kartika', '', 'K11', '', NULL, ''),
(48, 'L2345678', 'Lia', '', 'L12', '', NULL, ''),
(49, 'M3456789', 'Mira', '', 'M13', '', NULL, ''),
(50, 'N4567890', 'Nina', '', 'N14', '', NULL, ''),
(51, 'O5678901', 'Oscar', '', 'O15', '', NULL, ''),
(52, 'P6789012', 'Putri', '', 'P16', '', NULL, ''),
(53, 'Q7890123', 'Qori', '', 'Q17', '', NULL, ''),
(54, 'R8901234', 'Rina', '', 'R18', '', NULL, ''),
(55, 'S9012345', 'Siti', '', 'S19', '', NULL, ''),
(56, 'T0123456', 'Tono', '', 'T20', '', NULL, ''),
(57, 'U1234567', 'Utami', '', 'U21', '', NULL, ''),
(58, 'V2345678', 'Vina', '', 'V22', '', NULL, ''),
(59, 'W3456789', 'Wawan', '', 'W23', '', NULL, ''),
(60, 'X4567890', 'Xavier', '', 'X24', '', NULL, ''),
(61, 'Y5678901', 'Yanti', '', 'Y25', '', NULL, ''),
(62, 'Z6789012', 'Zain', '', 'Z26', '', NULL, ''),
(63, 'A9876543', 'Anwar', '', 'A27', '', NULL, ''),
(64, 'B8765432', 'Bambang', '', 'B28', '', NULL, ''),
(65, 'C7654321', 'Candra', '', 'C29', '', NULL, ''),
(66, 'D6543210', 'Dewi', '', 'D30', '', NULL, ''),
(67, 'E5432109', 'Edo', '', 'E31', '', NULL, ''),
(68, 'F4321098', 'Fifi', '', 'F32', '', NULL, ''),
(69, 'G3210987', 'Gatot', '', 'G33', '', NULL, ''),
(70, 'H2109876', 'Hesti', '', 'H34', '', NULL, ''),
(71, 'I1098765', 'Imam', '', 'I35', '', NULL, ''),
(72, 'J0987654', 'Jumiati', '', 'J36', '', NULL, ''),
(73, 'K9876543', 'Kartini', '', 'K37', '', NULL, ''),
(74, 'L8765432', 'Lukman', '', 'L38', '', NULL, ''),
(75, 'M7654321', 'Mega', '', 'M39', '', NULL, ''),
(76, 'N6543210', 'Nasir', '', 'N40', '', NULL, ''),
(77, 'O5432109', 'Opik', '', 'O41', '', NULL, ''),
(78, 'P4321098', 'Prita', '', 'P42', '', NULL, ''),
(79, 'Q3210987', 'Qonita', '', 'Q43', '', NULL, ''),
(80, 'R2109876', 'Ridwan', '', 'R44', '', NULL, ''),
(81, 'S1098765', 'Siska', '', 'S45', '', NULL, ''),
(82, 'T0987654', 'Teguh', '', 'T46', '', NULL, ''),
(83, 'U9876543', 'Utomo', '', 'U47', '', NULL, ''),
(84, 'V8765432', 'Vivi', '', 'V48', '', NULL, ''),
(85, 'W7654321', 'Wahyu', '', 'W49', '', NULL, ''),
(86, 'X6543210', 'Xena', '', 'X50', '', NULL, ''),
(87, 'Y5432109', 'Yoyo', '', 'Y51', '', NULL, ''),
(88, 'Z4321098', 'Zacky', '', 'Z52', '', NULL, ''),
(89, 'A3210987', 'Agus', '', 'A53', '', NULL, ''),
(90, 'B2109876', 'Bella', '', 'B54', '', NULL, ''),
(91, 'C1098765', 'Cindy', '', 'C55', '', NULL, ''),
(92, 'D0987654', 'Dino', '', 'D56', '', NULL, ''),
(93, 'E9876543', 'Eka', '', 'E57', '', NULL, ''),
(94, 'F8765432', 'Frisca', '', 'F58', '', NULL, ''),
(95, 'G7654321', 'Gerry', '', 'G59', '', NULL, ''),
(96, 'H6543210', 'Hana', '', 'H60', '', NULL, ''),
(97, 'I5432109', 'Indah', '', 'I61', '', NULL, ''),
(98, 'J4321098', 'Joni', '', 'J62', '', NULL, ''),
(99, 'K3210987', 'Kiki', '', 'K63', '', NULL, ''),
(100, 'L2109876', 'Lala', '', 'L64', '', NULL, ''),
(101, 'M1098765', 'Mila', '', 'M65', '', NULL, ''),
(102, 'N0987654', 'Nando', '', 'N66', '', NULL, ''),
(103, 'O9876543', 'Oscar', '', 'O67', '', NULL, ''),
(104, 'P8765432', 'Putra', '', 'P68', '', NULL, ''),
(105, 'Q7654321', 'Qory', '', 'Q69', '', NULL, ''),
(106, 'R6543210', 'Rahma', '', 'R70', '', NULL, ''),
(107, 'S5432109', 'Surya', '', 'S71', '', NULL, ''),
(108, 'T4321098', 'Tia', '', 'T72', '', NULL, ''),
(109, 'U3210987', 'Umi', '', 'U73', '', NULL, ''),
(110, 'V2109876', 'Vina', '', 'V74', '', NULL, ''),
(111, 'W1098765', 'Wati', '', 'W75', '', NULL, ''),
(112, 'X0987654', 'Xia', '', 'X76', '', NULL, ''),
(113, 'Y9876543', 'Yani', '', 'Y77', '', NULL, ''),
(114, 'Z8765432', 'Zul', '', 'Z78', '', NULL, ''),
(115, 'B3210987', 'Bambang', '', 'B79', '', NULL, ''),
(116, 'C2109876', 'Cici', '', 'C80', '', NULL, ''),
(117, 'D1098765', 'Dewi', '', 'D81', '', NULL, ''),
(118, 'E0987654', 'Eka', '', 'E82', '', NULL, ''),
(119, 'F9876543', 'Faisal', '', 'F83', '', NULL, ''),
(120, 'G8765432', 'Gina', '', 'G84', '', NULL, ''),
(121, 'H7654321', 'Hendri', '', 'H85', '', NULL, ''),
(122, 'I6543210', 'Indra', '', 'I86', '', NULL, ''),
(123, 'J5432109', 'Jeni', '', 'J87', '', NULL, ''),
(124, 'K4321098', 'Karin', '', 'K88', '', NULL, ''),
(125, 'L3210987', 'Laras', '', 'L89', '', NULL, ''),
(126, 'M2109876', 'Maulana', '', 'M90', '', NULL, ''),
(127, 'N1098765', 'Nadia', '', 'N91', '', NULL, ''),
(128, 'O0987654', 'Olive', '', 'O92', '', NULL, ''),
(129, 'P9876543', 'Prima', '', 'P93', '', NULL, ''),
(130, 'Q8765432', 'Qadir', '', 'Q94', '', NULL, ''),
(131, 'R7654321', 'Rahman', '', 'R95', '', NULL, ''),
(132, 'S6543210', 'Sinta', '', 'S96', '', NULL, ''),
(133, 'T5432109', 'Taufik', '', 'T97', '', NULL, ''),
(134, 'U4321098', 'Utari', '', 'U98', '', NULL, ''),
(135, 'V3210987', 'Vina', '', 'V99', '', NULL, ''),
(136, 'W2109876', 'Widi', '', 'W100', '', NULL, ''),
(137, 'X1098765', 'Xavier', '', 'X101', '', NULL, ''),
(138, 'Y0987654', 'Yuliana', '', 'Y102', '', NULL, ''),
(139, 'Z9876543', 'Zainal', '', 'Z103', '', NULL, ''),
(140, 'A8765432', 'Andi', '', 'A104', '', NULL, ''),
(141, 'B7654321', 'Budi', '', 'B105', '', NULL, ''),
(142, 'C6543210', 'Citra', '', 'C106', '', NULL, ''),
(143, 'D5432109', 'Diana', '', 'D107', '', NULL, ''),
(144, 'E4321098', 'Eko', '', 'E108', '', NULL, ''),
(145, 'F3210987', 'Farah', '', 'F109', '', NULL, ''),
(146, 'G2109876', 'Gita', '', 'G110', '', NULL, ''),
(147, 'H1098765', 'Hadi', '', 'H111', '', NULL, ''),
(148, 'I0987654', 'Irene', '', 'I112', '', NULL, ''),
(149, 'J9876543', 'Joko', '', 'J113', '', NULL, ''),
(150, 'K8765432', 'Kusuma', '', 'K114', '', NULL, ''),
(151, 'L7654321', 'Lia', '', 'L115', '', NULL, ''),
(152, 'M6543210', 'Mira', '', 'M116', '', NULL, ''),
(153, 'N5432109', 'Nadia', '', 'N117', '', NULL, ''),
(154, 'O4321098', 'Oscar', '', 'O118', '', NULL, ''),
(155, 'P3210987', 'Putri', '', 'P119', '', NULL, ''),
(156, 'Q2109876', 'Qori', '', 'Q120', '', NULL, ''),
(157, 'R1098765', 'Rika', '', 'R121', '', NULL, ''),
(158, 'S0987654', 'Sari', '', 'S122', '', NULL, ''),
(159, 'T9876543', 'Tono', '', 'T123', '', NULL, ''),
(160, 'U8765432', 'Umar', '', 'U124', '', NULL, ''),
(161, 'V7654321', 'Vivi', '', 'V125', '', NULL, ''),
(162, 'W6543210', 'Wawan', '', 'W126', '', NULL, ''),
(163, 'X5432109', 'Xaverius', '', 'X127', '', NULL, ''),
(164, 'Y4321098', 'Yuni', '', 'Y128', '', NULL, ''),
(165, 'Z3210987', 'Zara', '', 'Z129', '', NULL, ''),
(166, 'A2109876', 'Agus', '', 'A130', '', NULL, ''),
(167, 'B1098765', 'Bella', '', 'B131', '', NULL, ''),
(168, 'C0987654', 'Cindy', '', 'C132', '', NULL, ''),
(169, 'D9876543', 'Dewa', '', 'D133', '', NULL, ''),
(170, 'E8765432', 'Evi', '', 'E134', '', NULL, ''),
(171, 'F7654321', 'Fandi', '', 'F135', '', NULL, ''),
(172, 'G6543210', 'Gita', '', 'G136', '', NULL, ''),
(173, 'H5432109', 'Hendra', '', 'H137', '', NULL, ''),
(174, 'I4321098', 'Indah', '', 'I138', '', NULL, ''),
(175, 'J3210987', 'Juli', '', 'J139', '', NULL, ''),
(176, 'K2109876', 'Krisna', '', 'K140', '', NULL, ''),
(177, 'L1098765', 'Laila', '', 'L141', '', NULL, ''),
(178, 'M0987654', 'Mira', '', 'M142', '', NULL, ''),
(179, 'N9876543', 'Nanda', '', 'N143', '', NULL, ''),
(180, 'O8765432', 'Olivia', '', 'O144', '', NULL, ''),
(181, 'P7654321', 'Putri', '', 'P145', '', NULL, ''),
(182, 'Q6543210', 'Qadri', '', 'Q146', '', NULL, ''),
(183, 'R5432109', 'Rima', '', 'R147', '', NULL, ''),
(184, 'S4321098', 'Sigit', '', 'S148', '', NULL, ''),
(185, 'T3210987', 'Tiara', '', 'T149', '', NULL, ''),
(186, 'U2109876', 'Ujang', '', 'U150', '', NULL, ''),
(187, 'QLDC0OA0', 'ela', '', '1', 'Telah divalidasi', '2024-05-04 10:23:37.000000', ''),
(188, '4SKK0PQ1', 'sdasd', '', '12', '', NULL, ''),
(189, '6MPLM953', 'mkmk', '', 'asd', 'Telah divalidasi', '2024-05-04 11:03:53.000000', ''),
(190, '1RDTWDTE', 'citra', '', '1', '', NULL, ''),
(191, 'OFBYILAQ', 'celi', '', '1', 'Telah divalidasi', '2024-05-04 11:27:59.000000', ''),
(192, 'IXU3VDPO', 'mi', '', 'm', 'Telah divalidasi', '2024-05-04 11:34:36.000000', ''),
(193, '9KIEX3AN', 'TAMBANG', '', '120', '', NULL, ''),
(194, 'ANYJVZEA', 'HANIA', '', '1', 'Telah divalidasi', '2024-05-04 11:55:38.000000', ''),
(195, 'YDO71O5E', 'CAR', '', 'as', '', NULL, ''),
(196, 'KRSXW1OK', 'TYA', '', 'S', '', NULL, ''),
(197, 'WK1W6KXU', 'MAHA', '', 'S', '', NULL, ''),
(198, 'FQXZAMLD', 'OKA', '', 'A', '', NULL, ''),
(199, 'CA0DJ40D', 'KKKK', '', 'K', '', NULL, ''),
(200, '7Y8E2F35', 'QW', '', 'S', '', NULL, ''),
(201, 'AJ7D2WJ2', 'WS', '', 's', '', NULL, ''),
(202, 'ES9K20ND', 'MK', '', 's', 'Telah divalidasi', '2024-05-04 12:34:03.000000', ''),
(203, 'A1B2C3D4', 'Anita Susanti', '', '001', '', NULL, ''),
(204, 'E5F6G7H8', 'Budi Santoso', '', '002', '', NULL, ''),
(205, 'I9J0K1L2', 'Citra Dewi', '', '003', '', NULL, ''),
(206, 'M3N4O5P6', 'Dedy Prasetyo', '', '004', '', NULL, ''),
(207, 'Q7R8S9T0', 'Eka Suryadi', '', '005', '', NULL, ''),
(208, 'U1V2W3X4', 'Fani Putri', '', '006', '', NULL, ''),
(209, 'Y5Z6A7B8', 'Gunawan Nugroho', '', '007', '', NULL, ''),
(210, 'C9D0E1F2', 'Hanifah Permata', '', '008', '', NULL, ''),
(211, 'G3H4I5J6', 'Ivan Setiawan', '', '009', '', NULL, ''),
(212, 'K7L8M9N0', 'Joko Wibowo', '', '010', '', NULL, ''),
(213, 'O1P2Q3R4', 'Kartika Sari', '', '011', '', NULL, ''),
(214, 'S5T6U7V8', 'Lia Ramadhani', '', '012', '', NULL, ''),
(215, 'W9X0Y1Z2', 'Mulyono', '', '013', '', NULL, ''),
(216, 'A3B4C5D6', 'Nina Puspita', '', '014', '', NULL, ''),
(217, 'E7F8G9H0', 'Oscar Saputra', '', '015', '', NULL, ''),
(218, 'I1J2K3L4', 'Putri Cahaya', '', '016', '', NULL, ''),
(219, 'M5N6O7P8', 'Qori Hidayat', '', '017', '', NULL, ''),
(220, 'R9S0T1U2', 'Rina Wijaya', '', '018', '', NULL, ''),
(221, 'V3W4X5Y6', 'Sandy Pratama', '', '019', '', NULL, ''),
(222, 'Z7A8B9C0', 'Titi Susanto', '', '020', '', NULL, ''),
(223, 'D1E2F3G4', 'Usman Haris', '', '021', '', NULL, ''),
(224, 'H5I6J7K8', 'Vina Anggraini', '', '022', '', NULL, ''),
(225, 'L9M0N1O2', 'Wahyu Wibowo', '', '023', '', NULL, ''),
(226, 'P3Q4R5S6', 'Xena Putri', '', '024', '', NULL, ''),
(227, 'T7U8V9W0', 'Yusuf Santoso', '', '025', '', NULL, ''),
(228, 'X1Y2Z3A4', 'Zainal Abidin', '', '026', '', NULL, ''),
(229, 'B5C6D7E8', 'Agus Setiawan', '', '027', '', NULL, ''),
(230, 'F9G0H1I2', 'Bella Sari', '', '028', '', NULL, ''),
(231, 'J3K4L5M6', 'Candra Nugraha', '', '029', '', NULL, ''),
(232, 'N7O8P9Q0', 'Dina Wulandari', '', '030', '', NULL, ''),
(233, 'R1S2T3U4', 'Edo Priyanto', '', '031', '', NULL, ''),
(234, 'V5W6X7Y8', 'Fira Rahayu', '', '032', '', NULL, ''),
(235, 'Z9A0B1C2', 'Galih Wijaya', '', '033', '', NULL, ''),
(236, 'D3E4F5G6', 'Hanafi Ramadhan', '', '034', '', NULL, ''),
(237, 'H7I8J9K0', 'Intan Permadi', '', '035', '', NULL, ''),
(238, 'L1M2N3O4', 'Jaka Pratama', '', '036', '', NULL, ''),
(239, 'P5Q6R7S8', 'Kartika Dewi', '', '037', '', NULL, ''),
(240, 'T9U0V1W2', 'Laras Fitri', '', '038', '', NULL, ''),
(241, 'X3Y4Z5A6', 'Maman Setiawan', '', '039', '', NULL, ''),
(242, 'B7C8D9E0', 'Nisa Anggraini', '', '040', '', NULL, ''),
(243, 'F1G2H3I4', 'Oscar Siregar', '', '041', '', NULL, ''),
(244, 'J5K6L7M8', 'Putri Amelia', '', '042', '', NULL, ''),
(245, 'N9O0P1Q2', 'Qori Ramadhan', '', '043', '', NULL, ''),
(246, 'R3S4T5U6', 'Rudi Setiawan', '', '044', '', NULL, ''),
(247, 'V7W8X9Y0', 'Susi Hidayati', '', '045', '', NULL, ''),
(248, 'Z1A2B3C4', 'Toni Pratama', '', '046', '', NULL, ''),
(249, 'D5E6F7G8', 'Uci Novita', '', '047', '', NULL, ''),
(250, 'H9I0J1K2', 'Vicky Saputra', '', '048', '', NULL, ''),
(251, 'L3M4N5O6', 'Wulan Dewi', '', '049', '', NULL, ''),
(252, 'P7Q8R9S0', 'Xavier Permana', '', '050', '', NULL, ''),
(253, 'T1U2V3W4', 'Yana Putri', '', '051', '', NULL, ''),
(254, 'X5Y6Z7A8', 'Zaenal Arifin', '', '052', '', NULL, ''),
(255, 'B9C0D1E2', 'Ani Kartika', '', '053', '', NULL, ''),
(256, 'F3G4H5I6', 'Budi Susanto', '', '054', '', NULL, ''),
(257, 'J7K8L9M0', 'Cindy Pratiwi', '', '055', '', NULL, ''),
(258, 'N1O2P3Q4', 'Dino Prabowo', '', '056', '', NULL, ''),
(259, 'R5S6T7U8', 'Eva Rachmawati', '', '057', '', NULL, ''),
(260, 'V9W0X1Y2', 'Fajar Setiawan', '', '058', '', NULL, ''),
(261, 'Z3A4B5C6', 'Gina Ramadhani', '', '059', '', NULL, ''),
(262, 'D7E8F9G0', 'Hadi Setiawan', '', '060', '', NULL, ''),
(263, 'H1I2J3K4', 'Indah Kartika', '', '061', '', NULL, ''),
(264, 'L5M6N7O8', 'Jono Santoso', '', '062', '', NULL, ''),
(265, 'P9Q0R1S2', 'Kartika Utami', '', '063', '', NULL, ''),
(266, 'T3U4V5W6', 'Lani Pratiwi', '', '064', '', NULL, ''),
(267, 'X7Y8Z9A0', 'Maman Setiawan', '', '065', '', NULL, ''),
(268, 'B1C2D3E4', 'Nisa Nuraini', '', '066', '', NULL, ''),
(269, 'F5G6H7I8', 'Oscar Wijaya', '', '067', '', NULL, ''),
(270, 'J9K0L1M2', 'Putri Cahya', '', '068', '', NULL, ''),
(271, 'N3O4P5Q6', 'Qory Hidayat', '', '069', '', NULL, ''),
(272, 'R7S8T9U0', 'Rudi Setiawan', '', '070', '', NULL, ''),
(273, 'V1W2X3Y4', 'Suci Rahayu', '', '071', '', NULL, ''),
(274, 'Z5A6B7C8', 'Toni Wibowo', '', '072', '', NULL, ''),
(275, 'D9E0F1G2', 'Ujang Nugraha', '', '073', '', NULL, ''),
(276, 'H3I4J5K6', 'Vina Anggraeni', '', '074', '', NULL, ''),
(277, 'L7M8N9O0', 'Wawan Setiawan', '', '075', '', NULL, ''),
(278, 'P1Q2R3S4', 'Xaver Pramana', '', '076', '', NULL, ''),
(279, 'T5U6V7W8', 'Yuli Rahayu', '', '077', '', NULL, ''),
(280, 'X9Y0Z1A2', 'Zainal Abidin', '', '078', '', NULL, ''),
(281, 'B3C4D5E6', 'Ani Kartini', '', '079', '', NULL, ''),
(282, 'F7G8H9I0', 'Budi Santoso', '', '080', '', NULL, ''),
(283, 'J1K2L3M4', 'Citra Anggraeni', '', '081', '', NULL, ''),
(284, 'N5O6P7Q8', 'Dedi Setiawan', '', '082', '', NULL, ''),
(285, 'R9S0T1U2', 'Eka Prasetyo', '', '083', '', NULL, ''),
(286, 'V3W4X5Y6', 'Fani Wulandari', '', '084', '', NULL, ''),
(287, 'Z7A8B9C0', 'Gunawan Nugraha', '', '085', '', NULL, ''),
(288, 'D1E2F3G4', 'Hanifah Permata', '', '086', '', NULL, ''),
(289, 'H5I6J7K8', 'Ivan Setiawan', '', '087', '', NULL, ''),
(290, 'L9M0N1O2', 'Joko Wibowo', '', '088', '', NULL, ''),
(291, 'P3Q4R5S6', 'Kartika Sari', '', '089', '', NULL, ''),
(292, 'T7U8V9W0', 'Lia Ramadhani', '', '090', '', NULL, ''),
(293, 'X1Y2Z3A4', 'Mulyono', '', '091', '', NULL, ''),
(294, 'B5C6D7E8', 'Nina Puspita', '', '092', '', NULL, ''),
(295, 'F9G0H1I2', 'Oscar Saputra', '', '093', '', NULL, ''),
(296, 'J3K4L5M6', 'Putri Cahaya', '', '094', '', NULL, ''),
(297, 'N7O8P9Q0', 'Qori Hidayat', '', '095', '', NULL, ''),
(298, 'R1S2T3U4', 'Rina Wijaya', '', '096', '', NULL, ''),
(299, 'V5W6X7Y8', 'Sandy Pratama', '', '097', '', NULL, ''),
(300, 'Z9A0B1C2', 'Titi Susanto', '', '098', '', NULL, ''),
(301, 'D3E4F5G6', 'Usman Haris', '', '099', '', NULL, ''),
(302, 'H7I8J9K0', 'Vina Anggraini', '', '100', '', NULL, ''),
(303, 'L1M2N3O4', 'Wahyu Wibowo', '', '101', '', NULL, ''),
(304, 'P5Q6R7S8', 'Xena Putri', '', '102', '', NULL, ''),
(305, 'T9U0V1W2', 'Yusuf Santoso', '', '103', '', NULL, ''),
(309, '2UCVIEP7', 'AKUN', '', 'ASD', '', NULL, ''),
(310, 'OJN3X2VO', 'aja', '', '12', '', NULL, ''),
(311, '50WNNJRF', 'ggg', '', 'g', '', NULL, ''),
(312, '30GGQS9G', 'sad', '', 'asd', '', NULL, ''),
(313, 'VENNNYEI', 'as', '', 'as', 'Telah divalidasi', '2024-05-04 18:34:31.000000', ''),
(314, '5L6HG8HC', 'mm', '', 'm', '', NULL, ''),
(315, 'HG9PBY6S', 'ad', '', 'ASD', '', NULL, ''),
(316, 'JL9KIUE5', 'ad', '', 'fd', '', NULL, ''),
(317, 'AP9PHNXK', 'asd', '', 'ASD', '', NULL, ''),
(318, 'CRXZ02ZQ', 'WQER', '', '12', '', NULL, ''),
(319, '9TZLFE3L', 'TASYA', '', '12', '', NULL, ''),
(320, 'U3AIFVTE', 'SALSA', '', '1111', 'Telah divalidasi', '2024-05-04 19:23:26.000000', 'tagar60384@lewenbo.com'),
(321, 'QRC37Z2R', 'WWWWWW', '', '12', '', NULL, 'tagar60384@lewenbo.com'),
(322, 'J0PWFYV6', 'YAANA', '', '1', 'Telah divalidasi', '2024-05-05 07:04:34.000000', 'javuxily@pelagius.net');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `username` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tickets`
--

INSERT INTO `tickets` (`code`, `name`, `seat`) VALUES
('1', 'MOCHAMAD HERU PRASETYO', 'B06210010'),
('10', 'NADIA FAHMA AWWALIA', 'B05218023'),
('11', 'HAMIMAH AL HASYIMI', 'B05218013'),
('12', 'GAMA YANWAR HARYO HUDORO', 'B05218012'),
('13', 'AYUDYA FEBRIN TIARA PUTRI PRABOWO', 'B05218006'),
('14', 'YONA MEIDY ERVIANANDA', 'B05217062'),
('15', 'ROFIKOTUL UMMI', 'B05217051'),
('16', 'MUHAMMAD HANIF AL - GHIFFARI', 'B05217037'),
('17', 'SILVY KURNIAWATI', '04040520135'),
('18', 'NUR AZIZI JULIANSYAH', '04020520070'),
('19', 'IFFA SABILLA AULIA', '04020520051'),
('2', 'MUHAMMAD ROKHANIDIN', 'B06207086'),
('20', 'DODIK ANGGORO PUTRO', '04020520048'),
('3', 'MUHAMMAD RAHMAN', 'B05219027'),
('4', 'Mia Dwi Amalia', 'B05219024'),
('5', 'LIDYA RIAN FERDIANA', 'B05219022'),
('6', 'Ari Pujarama', 'B05219008'),
('7', 'ZAKI NASHRUDDIN AZHAR', 'B05218038'),
('8', 'REZA FAJAR MUHAMMAD', 'B05218030'),
('9', 'NILAM ASFI CIFTANINGRUM', 'B05218024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` int(11) NOT NULL,
  `kode_tiket` text NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id`, `kode_tiket`, `nama`) VALUES
(1, '0882', ''),
(3, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiketfull`
--

CREATE TABLE `tiketfull` (
  `id` int(11) NOT NULL,
  `ticketCode` int(11) NOT NULL,
  `holderName` text NOT NULL,
  `eventName` text NOT NULL,
  `seat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tiketfull`
--

INSERT INTO `tiketfull` (`id`, `ticketCode`, `holderName`, `eventName`, `seat`) VALUES
(1, 12, 'intan', 'seminar', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `email`) VALUES
(4, 'Mia Dwi Amalia', 'B05219024', 'asd@asdad.ad'),
(5, 'LIDYA RIAN FERDIANA', 'B05219022', 'asd@asdad.ad'),
(6, 'Ari Pujarama', 'B05219008', 'asd@asdad.ad'),
(7, 'ZAKI NASHRUDDIN AZHAR', 'B05218038', 'asd@asdad.ad'),
(8, 'REZA FAJAR MUHAMMAD', 'B05218030', 'asd@asdad.ad'),
(9, 'NILAM ASFI CIFTANINGRUM', 'B05218024', 'asd@asdad.ad'),
(10, 'NADIA FAHMA AWWALIA', 'B05218023', 'asd@asdad.ad'),
(11, 'HAMIMAH AL HASYIMI', 'B05218013', 'asd@asdad.ad'),
(12, 'GAMA YANWAR HARYO HUDORO', 'B05218012', 'asd@asdad.ad'),
(13, 'AYUDYA FEBRIN TIARA PUTRI PRABOWO', 'B05218006', 'asd@asdad.ad'),
(14, 'YONA MEIDY ERVIANANDA', 'B05217062', 'asd@asdad.ad'),
(15, 'ROFIKOTUL UMMI', 'B05217051', 'asd@asdad.ad'),
(16, 'MUHAMMAD HANIF AL - GHIFFARI', 'B05217037', 'asd@asdad.ad'),
(17, 'SILVY KURNIAWATI', '04040520135', 'asd@asdad.ad'),
(18, 'NUR AZIZI JULIANSYAH', '04020520070', 'asd@asdad.ad'),
(19, 'IFFA SABILLA AULIA', '04020520051', 'asd@asdad.ad'),
(20, 'DODIK ANGGORO PUTRO', '04020520048', 'asd@asdad.ad'),
(25, 'NABILAH ULINNUHA WULAIDA', '06040420060 ', '32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `halo`
--
ALTER TABLE `halo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`code`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tiketfull`
--
ALTER TABLE `tiketfull`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `halo`
--
ALTER TABLE `halo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tiketfull`
--
ALTER TABLE `tiketfull`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
