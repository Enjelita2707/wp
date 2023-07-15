-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 09.26
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Enjel', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(23, 'Adi Pratama'),
(24, 'Bayu Nugroho'),
(25, 'Budi Santoso'),
(26, 'Dewi Rahayu'),
(27, 'Dina Nurul Aini'),
(28, 'Hendra Gunawan'),
(29, 'Isabella'),
(30, 'Maya Sari'),
(31, 'Putra Wijaya'),
(32, 'Rani Permata'),
(33, 'Rina Fitriani'),
(34, 'Rizki Kurniawan'),
(35, 'Siska Dewi'),
(36, 'Siti Aisyah'),
(37, 'Wahyu Setiawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` decimal(11,11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(23, 23, 0.06656858700),
(24, 24, 0.06032870400),
(25, 25, 0.05882521500),
(26, 26, 0.05982252900),
(27, 27, 0.06604242000),
(28, 28, 0.07270898400),
(29, 29, 0.05178963000),
(30, 30, 0.08700463700),
(31, 31, 0.05829057200),
(32, 32, 0.07542828900),
(33, 33, 0.06845224000),
(34, 34, 0.05596328400),
(35, 35, 0.07154743400),
(36, 36, 0.06927432500),
(37, 37, 0.07795315000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `kode_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL,
  `tipe` enum('cost','benefit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `bobot`, `tipe`) VALUES
(10, 'K1', 'Mata Pelajaran Umum', 5, 'benefit'),
(11, 'K2', 'Absensi', 3, 'cost'),
(12, 'K3', 'Ekstrakurikuler', 4, 'benefit'),
(13, 'K4', 'Perilaku', 4, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opt_alternatif`
--

CREATE TABLE `opt_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_subkriteria` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel ini digunakan agar kriteria nya bisa dinamis';

--
-- Dumping data untuk tabel `opt_alternatif`
--

INSERT INTO `opt_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(109, 23, 10, 318),
(110, 23, 11, 354),
(111, 23, 12, 390),
(112, 23, 13, 296),
(113, 24, 10, 325),
(114, 24, 11, 355),
(115, 24, 12, 380),
(116, 24, 13, 294),
(117, 25, 10, 326),
(118, 25, 11, 352),
(119, 25, 12, 394),
(120, 25, 13, 295),
(121, 26, 10, 321),
(122, 26, 11, 352),
(123, 26, 12, 382),
(124, 26, 13, 296),
(125, 27, 10, 336),
(126, 27, 11, 354),
(127, 27, 12, 388),
(128, 27, 13, 295),
(129, 28, 10, 332),
(130, 28, 11, 355),
(131, 28, 12, 376),
(132, 28, 13, 296),
(133, 29, 10, 328),
(134, 29, 11, 353),
(135, 29, 12, 370),
(136, 29, 13, 294),
(137, 30, 10, 326),
(138, 30, 11, 356),
(139, 30, 12, 381),
(140, 30, 13, 297),
(141, 31, 10, 322),
(142, 31, 11, 353),
(143, 31, 12, 382),
(144, 31, 13, 295),
(145, 32, 10, 341),
(146, 32, 11, 356),
(147, 32, 12, 392),
(148, 32, 13, 294),
(149, 33, 10, 326),
(150, 33, 11, 354),
(151, 33, 12, 371),
(152, 33, 13, 297),
(153, 34, 10, 315),
(154, 34, 11, 352),
(155, 34, 12, 370),
(156, 34, 13, 296),
(157, 35, 10, 324),
(158, 35, 11, 354),
(159, 35, 12, 387),
(160, 35, 13, 297),
(161, 36, 10, 334),
(162, 36, 11, 355),
(163, 36, 12, 381),
(164, 36, 13, 295),
(165, 37, 10, 323),
(166, 37, 11, 356),
(167, 37, 12, 391),
(168, 37, 13, 295);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `bobot`) VALUES
(278, 10, 'Sangat Buruk(51)', 51),
(283, 11, 'Sangat Buruk (15)', 15),
(284, 11, 'Sangat Buruk(14)', 14),
(285, 11, 'Sangat Buruk (13)', 13),
(286, 11, 'Sangat Buruk (12)', 12),
(287, 11, 'Buruk (11)', 11),
(288, 12, 'Sangat Buruk (51)', 51),
(289, 12, 'Sangat Buruk (52)', 52),
(290, 12, 'Sangat Buruk (53)', 53),
(291, 12, 'Sangat Buruk (54)', 54),
(292, 12, 'Sangat Buruk (55)', 55),
(293, 13, 'Sangat Buruk', 1),
(294, 13, 'Buruk', 2),
(295, 13, 'Sedang', 3),
(296, 13, 'Bagus', 4),
(297, 13, 'Sangat Bagus', 5),
(298, 10, 'Sangat Buruk(52)', 52),
(299, 10, 'Sangat Buruk(53)', 53),
(300, 10, 'Sangat Buruk(54)', 54),
(301, 10, 'Sangat Buruk(55)', 55),
(302, 10, 'Buruk(56)', 56),
(303, 10, 'Buruk(57)', 57),
(304, 10, 'Buruk(58)', 58),
(305, 10, 'Buruk(59)', 59),
(306, 10, 'Buruk(60)', 60),
(307, 10, 'Buruk(61)', 61),
(308, 10, 'Buruk(62)', 62),
(309, 10, 'Buruk(63)', 63),
(310, 10, 'Buruk(64)', 64),
(311, 10, 'Sedang(65)', 65),
(312, 10, 'Sedang(66)', 66),
(313, 10, 'Sedang(67)', 67),
(314, 10, 'Sedang(68)', 68),
(315, 10, 'Sedang(69)', 69),
(316, 10, 'Sedang(70)', 70),
(317, 10, 'Sedang(71)', 71),
(318, 10, 'Sedang(72)', 72),
(319, 10, 'Sedang(73)', 73),
(320, 10, 'Sedang(74)', 74),
(321, 10, 'Sedang(75)', 75),
(322, 10, 'Sedang(76)', 76),
(323, 10, 'Sedang(77)', 77),
(324, 10, 'Sedang(78)', 78),
(325, 10, 'Sedang(79)', 79),
(326, 10, 'Bagus(80)', 80),
(327, 10, 'Bagus(81)', 81),
(328, 10, 'Bagus(82)', 82),
(329, 10, 'Bagus(83)', 83),
(330, 10, 'Bagus(84)', 84),
(331, 10, 'Bagus(85)', 85),
(332, 10, 'Bagus(86)', 86),
(333, 10, 'Bagus(87)', 87),
(334, 10, 'Bagus(88)', 88),
(335, 10, 'Bagus(89)', 89),
(336, 10, 'Bagus(90)', 90),
(337, 10, 'Sangat Bagus(91)', 91),
(338, 10, 'Sangat Bagus(92)', 92),
(339, 10, 'Sangat Bagus(93)', 93),
(340, 10, 'Sangat Bagus(94)', 94),
(341, 10, 'Sangat Bagus(95)', 95),
(342, 10, 'Sangat Bagus(96)', 96),
(343, 10, 'Sangat Bagus(97)', 97),
(344, 10, 'Sangat Bagus(98)', 98),
(345, 10, 'Sangat Bagus(99)', 99),
(346, 10, 'Sangat Bagus(100)', 100),
(347, 11, 'Buruk (10)', 10),
(348, 11, 'Buruk (9)', 9),
(349, 11, 'Sedang (8) ', 8),
(350, 11, 'Sedang (7) ', 7),
(351, 11, 'Sedang (6) ', 6),
(352, 11, 'Bagus (5)', 5),
(353, 11, 'Bagus (4)', 4),
(354, 11, 'Bagus (3)', 3),
(355, 11, 'Sangat Bagus (2)', 2),
(356, 11, 'Sangat Bagus (1)', 1),
(357, 11, 'Sangat Bagus(0)', 0),
(358, 12, 'Buruk(56)', 56),
(359, 12, 'Buruk(57)', 57),
(360, 12, 'Buruk(58)', 58),
(361, 12, 'Buruk(59)', 59),
(362, 12, 'Buruk(60)', 60),
(363, 12, 'Buruk(61)', 61),
(364, 12, 'Buruk(62)', 62),
(365, 12, 'Buruk(63)', 63),
(366, 12, 'Buruk(64)', 64),
(367, 12, 'Sedang (65) ', 65),
(368, 12, 'Sedang (66) ', 66),
(369, 12, 'Sedang (67) ', 67),
(370, 12, 'Sedang (68) ', 68),
(371, 12, 'Sedang (69) ', 69),
(372, 12, 'Sedang (70) ', 70),
(373, 12, 'Sedang (71) ', 71),
(374, 12, 'Sedang (72) ', 72),
(375, 12, 'Sedang (73) ', 73),
(376, 12, 'Sedang (74) ', 74),
(377, 12, 'Sedang (75) ', 75),
(378, 12, 'Sedang (76) ', 76),
(379, 12, 'Sedang (77) ', 77),
(380, 12, 'Sedang (78) ', 78),
(381, 12, 'Sedang (79) ', 79),
(382, 12, 'Bagus(80)', 80),
(383, 12, 'Bagus(81)', 81),
(384, 12, 'Bagus(82)', 82),
(385, 12, 'Bagus(83)', 83),
(386, 12, 'Bagus(84)', 84),
(387, 12, 'Bagus(85)', 85),
(388, 12, 'Bagus(86)', 86),
(389, 12, 'Bagus(87)', 87),
(390, 12, 'Bagus(88)', 88),
(391, 12, 'Bagus(89)', 89),
(392, 12, 'Bagus(90)', 90),
(393, 12, 'Sangat Bagus (91)', 91),
(394, 12, 'Sangat Bagus (92)', 92),
(395, 12, 'Sangat Bagus (93)', 93),
(396, 12, 'Sangat Bagus (94)', 94),
(397, 12, 'Sangat Bagus (95)', 95),
(398, 12, 'Sangat Bagus (96)', 96),
(399, 12, 'Sangat Bagus (97)', 97),
(400, 12, 'Sangat Bagus (98)', 98),
(401, 12, 'Sangat Bagus (99)', 99),
(402, 12, 'Sangat Bagus (100)', 100);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD CONSTRAINT `opt_alternatif_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_3` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
