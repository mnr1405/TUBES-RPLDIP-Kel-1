-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 04:40 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbRentalKendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('djafar', '987456321'),
('ilham', '123456789'),
('juan', '741258963'),
('meyzo', '987654321'),
('rachmat', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `noPlat` varchar(8) NOT NULL,
  `merekKendaraan` varchar(50) NOT NULL,
  `jenisKendaraan` varchar(10) NOT NULL,
  `warnaKendaraan` varchar(15) NOT NULL,
  `biayaStandar` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`noPlat`, `merekKendaraan`, `jenisKendaraan`, `warnaKendaraan`, `biayaStandar`, `durasi`, `stok`) VALUES
('AB1231PY', 'BMW E93 335i', 'Mobil', 'Krem', 300000, 24, 1),
('B2436SRD', 'Toyota Supra MkV', 'Mobil', 'Putih', 500000, 24, 1),
('D1209ACK', 'Mitusbishi Pajero Sport Dakar Ultimate', 'Mobil', 'Hitam', 200000, 24, 1),
('DA1629JR', 'Hyundai Ioniq Electric', 'Mobil', 'Putih', 300000, 24, 1),
('DD1320MN', 'Nissan Silvia S15', 'Mobil', 'Merah', 400000, 24, 1),
('DK1761RD', 'Suzuki Jimny JB74', 'Mobil', 'Hijau', 250000, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `usernameKonsumen` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `noHP` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`usernameKonsumen`, `password`, `namaUser`, `alamat`, `noHP`, `email`) VALUES
('borgov1', 'borgo123', 'Irene Sukandar', 'Jl. Raya Ciganitri', '082178907890', 'irene@gmail.com'),
('bukanudin', 'udin123', 'Apriewan Judin', 'Jl. Raya Cibinong', '089656785678', 'udin@gmail.com'),
('chrispra77', 'chris123', 'Christenta', 'Jl. Terusan Buah Batu', '081345671234', 'chris@gmail.com'),
('dewaac', 'dewa123', 'Dadang Subur', 'Jl. Antapani', '088212341234', 'dadang@gmail.com'),
('ivanap', 'ivan123', 'Ivan Pradana', 'Jl. Raya Pondok Gede', '081234567899', 'ivan@gmail.com'),
('lumintu88', 'lumin123', 'Lumin Sitohang', 'Jl. Raya Kiaracondong', '085134563456', 'lumin@gmail.com'),
('shiraishi92', 'maiyan92', 'Shiraishi Mai', 'Jl. Sukabirus', '081145678901', 'maiyan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `IDPembayaran` varchar(10) NOT NULL,
  `namaPembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`IDPembayaran`, `namaPembayaran`) VALUES
('130280', 'Alfamart'),
('130524', 'DANA'),
('130567', 'GoPay'),
('130672', 'Transfer BCA'),
('130748', 'Cash'),
('130864', 'OVO'),
('130928', 'Kredit Mandiri');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kodeVerifikasi` varchar(15) NOT NULL,
  `usernameKonsumen` varchar(50) NOT NULL,
  `noPlat` varchar(8) NOT NULL,
  `IDPembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kodeVerifikasi`, `usernameKonsumen`, `noPlat`, `IDPembayaran`) VALUES
('AebTeFdOCpyJHM6', 'bukanudin', 'AB1231PY', '130280'),
('nMxpR8V4l8CRj94', 'borgov1', 'DD1320MN', '130567'),
('nRPpnua1t22K4of', 'chrispra77', 'B2436SRD', '130864'),
('o8lKflBRwE0DXTq', 'dewaac', 'DA1629JR', '130748'),
('QPk3L8X6CZTQaq4', 'lumintu88', 'D1209ACK', '130672');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`noPlat`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`usernameKonsumen`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`IDPembayaran`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kodeVerifikasi`),
  ADD KEY `usernameKonsumen` (`usernameKonsumen`),
  ADD KEY `noPlat` (`noPlat`),
  ADD KEY `IDPembayaran` (`IDPembayaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
