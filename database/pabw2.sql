-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 08:45 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pabw`
--

-- --------------------------------------------------------

--
-- Table structure for table `kopi`
--

CREATE TABLE `kopi` (
  `jenisKopi` varchar(100) NOT NULL,
  `IDkopi` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kopi`
--

INSERT INTO `kopi` (`jenisKopi`, `IDkopi`) VALUES
('Americano', 'KP_AMERICANO'),
('Cappucino', 'KP_CAPPUCINO'),
('Kopi Espresso', 'KP_ESPRESSO'),
('Latte', 'KP_LATTE'),
('Moccachino', 'KP_MOCCACHINO'),
('Red Eye', 'KP_REDEYE');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `nama` varchar(320) NOT NULL,
  `namaToko` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`nama`, `namaToko`) VALUES
('Adrian Budi Sukirno', 'Kafe Pinggir Kota'),
('Alvin Renald Batubara', 'My Coffee'),
('David Gadgetin', 'High Tech Coffee'),
('Irene Putri  ', 'Pondok Kopi Nusantara'),
('Jajang Kosasih', 'Coffee Pot'),
('Jennifer Wongso', 'Cafe 4.0'),
('Jessica Camellia Hasibuan', 'My Own Brew'),
('Reynold Sinaga', 'Kopi Maju Jaya');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `namaToko` varchar(320) NOT NULL,
  `jenisKopi` varchar(1000) NOT NULL,
  `alamat` text NOT NULL,
  `menu` text NOT NULL,
  `nama` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`namaToko`, `jenisKopi`, `alamat`, `menu`, `nama`) VALUES
('Cafe 4.0', 'Latte, Americano, Espresso, Cappucino\r\n', 'Jl. Pluit Indah No.23, Pejagalan, Penjaringan, Jakarta Utara, DKI Jakarta 14450', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Siomay\r\n- Nasi goreng\r\n- Mie goreng\r\n- Chicken Fingers\r\n- Crispy Chicken\r\n- Martabak Mie / Omelet Mie\r\n- Sosis Kentang Goreng\r\n- Bakso Goreng\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Cappucino\r\n- Latte', 'Jennifer Wongso'),
('Coffee Pot', 'Latte, Americano, Espresso, Cappucino, Red Eye, Moccachino', 'Jl. Hayam Wuruk No 37, Kebon Kelapa, Gambir, Jakarta Pusat, DKI Jakarta 10120', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Nasi goreng\r\n- Mie goreng\r\n- Sosis Kentang Goreng\r\n- Bakso Goreng\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Cappucino\r\n- Latte\r\n- Red Eye\r\n- Moccachino', 'Jajang Kosasih'),
('High Tech Coffee', 'Latte, Americano, Espresso, Cappucino, Red Eye', 'Jl. Tanjung Duren Raya No. 67, Tanjung Duren Selatan, Grogol Petamburan, Jakarta Barat, DKI Jakarta 11470', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Siomay\r\n- Nasi goreng\r\n- Mie goreng\r\n- Sosis Kentang Goreng\r\n- Bakso Goreng\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Cappucino\r\n- Latte\r\n- Red Eye', 'David Gadgetin'),
('Kafe Pinggir Kota', 'Latte, Americano, Moccachino, Cappucino', 'Jl. Kayangan No 79 RT 5/RW 14, Gandaria Utara, Kebayoran Baru, Jakarta Selatan, DKI Jakarta 12140', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Siomay\r\n- Nasi goreng\r\n- Mie goreng\r\n\r\nMinuman\r\n- Americano\r\n- Cappucino\r\n- Latte\r\n- Moccachino', 'Adrian Budi Sukirno'),
('Kopi Maju jaya', 'Latte, Americano, Espresso, Cappucino, Red Eye, Moccachino', 'Jl. Margonda Raya No.5, Kemiri Muka, Beji, Depok, Jawa Barat 16424', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Siomay\r\n- Nasi goreng\r\n- Mie goreng\r\n- Sosis Kentang Goreng\r\n- Bakso Goreng\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Cappucino\r\n- Latte\r\n- Red Eye\r\n- Moccachino', 'Reynold Sinaga'),
('My Coffee', 'Latte, Americano, Moccachino, Espresso', 'Jl. Tebet Raya No. 76. RT 3/RW 3, Tebet Timur, Tebet. Jakarta Selatan, DKI Jakarta 12820', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Siomay\r\n- Nasi goreng\r\n- Mie goreng\r\n- Chicken Fingers\r\n- Crispy Chicken\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Latte\r\n- Moccachino', 'Alvin Renald Batubara'),
('My Own Brew', 'Latte, Americano, Espresso, Cappucino, Red Eye, Moccachino', 'Jl. Ciater Raya No.76, Serua, Ciputat, Tangerang Selatan, Banten 15414', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Siomay\r\n- Nasi goreng\r\n- Mie goreng\r\n- Chicken Fingers\r\n- Crispy Chicken\r\n- Mie Rebus\r\n- Sosis Kentang Goreng\r\n- Bakso Goreng\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Cappucino\r\n- Latte\r\n- Red Eye\r\n- Moccachino', 'Jessica Camellia Hasibuan'),
('Pondok Kopi Nusantara', 'Latte, Americano, Espresso, Cappucino, Red Eye, Moccachino', 'Jl. Pondok Kopi Raya NO. 194, Pondok Kopi, Duren Sawit, Jakarta Timur, DKI Jakarta 13460', 'Makanan\r\n- Roti Bakar\r\n- Pisang Goreng\r\n- Nasi goreng\r\n- Mie goreng\r\n- Sosis Kentang Goreng\r\n- Bakso Goreng\r\nMinuman \r\n- Espresso\r\n- Americano\r\n- Cappucino\r\n- Latte\r\n- Red Eye\r\n- Moccachino', 'Irene Putri  ');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID` int(32) NOT NULL,
  `namaUser` varchar(320) NOT NULL,
  `totalHarga` bigint(100) NOT NULL,
  `namaToko` varchar(320) NOT NULL,
  `jenisKopi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(255) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `alamat` varchar(320) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kopi`
--
ALTER TABLE `kopi`
  ADD PRIMARY KEY (`jenisKopi`),
  ADD KEY `idKopi` (`jenisKopi`) USING BTREE;

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`nama`),
  ADD KEY `id_toko` (`namaToko`(768)) USING HASH,
  ADD KEY `id_nama` (`nama`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`namaToko`),
  ADD KEY `id_toko` (`namaToko`) USING BTREE,
  ADD KEY `id_nama` (`nama`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_kopi` (`jenisKopi`),
  ADD KEY `id_user` (`namaUser`) USING HASH,
  ADD KEY `id_toko` (`namaToko`) USING HASH;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
