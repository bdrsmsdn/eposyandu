-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 06:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eposyandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_anak`
--

CREATE TABLE `ref_anak` (
  `id_anak` int(11) NOT NULL,
  `nama_anak` varchar(50) NOT NULL,
  `nik_anak` varchar(25) NOT NULL,
  `tempat_lahir_anak` varchar(255) NOT NULL,
  `tgl_lahir_anak` date NOT NULL,
  `usia_anak` int(10) NOT NULL,
  `jk_anak` enum('P','L') NOT NULL,
  `id_ibu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_anak`
--

INSERT INTO `ref_anak` (`id_anak`, `nama_anak`, `nik_anak`, `tempat_lahir_anak`, `tgl_lahir_anak`, `usia_anak`, `jk_anak`, `id_ibu`) VALUES
(1, 'Cinta', '3789322983879004', 'Bandung ', '2021-02-10', 2, 'L', 4),
(3, 'Daffa Aqila', '3782118902922901', 'Jakarta', '2021-03-01', 1, 'L', 5),
(4, 'Hendriyan ', '12345678998675', 'Garut', '2017-02-25', 4, 'L', 6),
(5, 'Silvie Angeline', '3795399302099930', 'Bandung  ', '2021-02-20', 2, 'P', 4),
(6, 'Rajwa', '3785532893992982', 'Bandung', '2021-01-06', 3, 'L', 5),
(7, 'Tessia', '3788433829229019', 'Bandung ', '2021-01-05', 4, 'P', 4),
(8, 'Bayu', '867768393839738993', 'Bandung ', '2021-02-11', 1, 'L', 3),
(9, 'Eka', '837373848383', 'Cimahi', '2020-03-30', 2, 'P', 7),
(10, 'ferdi', '32145674382938', 'Bandung', '2022-07-05', 3, 'L', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ref_bantuan`
--

CREATE TABLE `ref_bantuan` (
  `id_bantuan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_bantuan`
--

INSERT INTO `ref_bantuan` (`id_bantuan`, `nama`, `pesan`, `email`, `tanggal`) VALUES
(1, 'Andree Meilio', 'Its so hard to look OK right', 'meilioAndree27@gmail.com', '2021-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `ref_ibu`
--

CREATE TABLE `ref_ibu` (
  `id_ibu` int(11) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `nik_ibu` varchar(20) NOT NULL,
  `alamat_ibu` text NOT NULL,
  `no_telp_ibu` varchar(20) NOT NULL,
  `foto_ibu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_ibu`
--

INSERT INTO `ref_ibu` (`id_ibu`, `nama_ibu`, `nik_ibu`, `alamat_ibu`, `no_telp_ibu`, `foto_ibu`) VALUES
(2, 'Farida Zahra', '3785322893902983', 'Jl. Moh Toha ', '089766424691', NULL),
(3, 'Indriani Kurnia Sari', '3704922939904984', 'Jl. Astana Anyar ', '089755894390', NULL),
(4, 'Anisa Aulia', '3784333920298398', 'Jl. Cibaduyut Raya', '089644893828', NULL),
(5, 'Virgiva Nazwa', '3785433892839093', 'Jl. Cibaduyut Raya  ', '089644893022', NULL),
(6, 'Haryani', '192011919321', 'Komplek Dodo Regency No.69', '0812345678987', NULL),
(7, 'Wanda Caterine', '3722811902093992', 'Jl. Antapani Lama ', '089644390902', NULL),
(8, 'Selviani', '3207072711000001', 'Jl. Antapani Lama', '08953384879797', NULL),
(9, 'komar', '320707271100000122', 'citayem', '0812928192819', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_imunisasi`
--

CREATE TABLE `ref_imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `tgl_imunisasi` date NOT NULL,
  `usia_saat_vaksin` int(2) NOT NULL,
  `tinggi_badan` int(3) NOT NULL,
  `berat_badan` int(3) NOT NULL,
  `id_vaksin` varchar(255) DEFAULT NULL,
  `id_anak` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `id_ibu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_imunisasi`
--

INSERT INTO `ref_imunisasi` (`id_imunisasi`, `tgl_imunisasi`, `usia_saat_vaksin`, `tinggi_badan`, `berat_badan`, `id_vaksin`, `id_anak`, `id_petugas`, `id_ibu`) VALUES
(5, '2022-07-31', 1, 50, 0, '', 4, 2, 3),
(6, '2022-07-31', 1, 50, 15, '13', 4, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ref_login`
--

CREATE TABLE `ref_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_petugas_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_login`
--

INSERT INTO `ref_login` (`id_login`, `username`, `password`, `id_petugas_login`) VALUES
(1, 'admin', '$2y$10$4E5NEooMTyAKWrQkUcgcBuZW1RwJImsc.XU1POuGBUEIAdfVKeveG', 0),
(3, 'petugas2', '$2y$10$LBa0/g9dFO2foV8lbNhhV.VgnvyWuIElj6FsQfNtkBW1H7Djmiiyy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_petugas`
--

CREATE TABLE `ref_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `jabatan_petugas` varchar(50) NOT NULL,
  `jk_petugas` enum('L','P') NOT NULL,
  `tempat_lahir_petugas` varchar(50) NOT NULL,
  `tgl_lahir_petugas` date NOT NULL,
  `alamat_petugas` text NOT NULL,
  `no_telp_petugas` varchar(20) NOT NULL,
  `foto_petugas` int(11) DEFAULT NULL,
  `status_petugas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_petugas`
--

INSERT INTO `ref_petugas` (`id_petugas`, `nama_petugas`, `jabatan_petugas`, `jk_petugas`, `tempat_lahir_petugas`, `tgl_lahir_petugas`, `alamat_petugas`, `no_telp_petugas`, `foto_petugas`, `status_petugas`) VALUES
(2, 'Kevin Farel', 'Petugas 2', 'L', 'Bandung', '1983-05-19', 'Jl. Buah Batu', '089319902737', NULL, 'Aktif'),
(3, 'Arya Permana', 'Ketua Pokja 1', 'L', 'Jakarta', '1987-10-20', 'Jl. Cibaduyut Raya', '089643392093', NULL, 'Aktif'),
(4, 'Supriadi Armalawi', 'Ketua Pokja 2', 'L', 'Jakarta', '1988-10-21', 'Jl. Moh.toha', '089333902209 ', NULL, 'Pasif');

-- --------------------------------------------------------

--
-- Table structure for table `ref_posyandu`
--

CREATE TABLE `ref_posyandu` (
  `id_posyandu` int(11) NOT NULL,
  `nama_posyandu` varchar(50) NOT NULL,
  `alamat_posyandu` text NOT NULL,
  `kel_posyandu` varchar(50) NOT NULL,
  `kec_posyandu` varchar(50) NOT NULL,
  `kota_kab_posyandu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_posyandu`
--

INSERT INTO `ref_posyandu` (`id_posyandu`, `nama_posyandu`, `alamat_posyandu`, `kel_posyandu`, `kec_posyandu`, `kota_kab_posyandu`) VALUES
(1, 'Posyandu Ceria', 'Sekeloa No 21', 'Sekeloa ', 'Coblong', 'Bandung'),
(2, 'Posyandu Ceria 2', 'Sekeloa', 'Sekeloa', 'Coblong', 'Bandung'),
(3, 'Posyandu Ceria ikeh', 'citayem pasionn', 'asgard', 'zeus', 'pgsoft');

-- --------------------------------------------------------

--
-- Table structure for table `ref_vaksin`
--

CREATE TABLE `ref_vaksin` (
  `id_vaksin` int(11) NOT NULL,
  `nama_vaksin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_vaksin`
--

INSERT INTO `ref_vaksin` (`id_vaksin`, `nama_vaksin`) VALUES
(5, 'DPT 3'),
(6, 'IPV'),
(7, 'MR'),
(8, 'DPT 4 (Lanjutan)'),
(9, 'MR 2'),
(10, 'Polio 1'),
(11, 'Polio 2'),
(12, 'Polio 3'),
(13, 'Polio 4'),
(14, 'Sinovac'),
(15, 'sinoo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ref_anak`
--
ALTER TABLE `ref_anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indexes for table `ref_bantuan`
--
ALTER TABLE `ref_bantuan`
  ADD PRIMARY KEY (`id_bantuan`);

--
-- Indexes for table `ref_ibu`
--
ALTER TABLE `ref_ibu`
  ADD PRIMARY KEY (`id_ibu`);

--
-- Indexes for table `ref_imunisasi`
--
ALTER TABLE `ref_imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `ref_login`
--
ALTER TABLE `ref_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `ref_petugas`
--
ALTER TABLE `ref_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `ref_posyandu`
--
ALTER TABLE `ref_posyandu`
  ADD PRIMARY KEY (`id_posyandu`);

--
-- Indexes for table `ref_vaksin`
--
ALTER TABLE `ref_vaksin`
  ADD PRIMARY KEY (`id_vaksin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ref_anak`
--
ALTER TABLE `ref_anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ref_bantuan`
--
ALTER TABLE `ref_bantuan`
  MODIFY `id_bantuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_ibu`
--
ALTER TABLE `ref_ibu`
  MODIFY `id_ibu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ref_imunisasi`
--
ALTER TABLE `ref_imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ref_login`
--
ALTER TABLE `ref_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_petugas`
--
ALTER TABLE `ref_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_posyandu`
--
ALTER TABLE `ref_posyandu`
  MODIFY `id_posyandu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_vaksin`
--
ALTER TABLE `ref_vaksin`
  MODIFY `id_vaksin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
