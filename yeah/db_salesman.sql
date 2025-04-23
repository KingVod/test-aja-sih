-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 08:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesman`
--
CREATE DATABASE IF NOT EXISTS `salesman` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `salesman`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(5) DEFAULT NULL,
  `Nama_brg` varchar(20) DEFAULT NULL,
  `harga` int(6) DEFAULT NULL,
  `pemasok` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `Nama_brg`, `harga`, `pemasok`) VALUES
(10001, 'kondom', 12500, 'PT durex');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `penulis` varchar(20) DEFAULT NULL,
  `jumlah_halaman` int(3) DEFAULT NULL,
  `penerbit` varchar(20) DEFAULT NULL,
  `thn_terbit` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`penulis`, `jumlah_halaman`, `penerbit`, `thn_terbit`) VALUES
('jokowi', 256, 'william', 2009),
('rachel', 200, 'abu', 2007),
('arapa', 100, 'willie salim', 2025),
('rian', 209, 'murata', 2023),
('fisika', 200, 'albert', 2001);

-- --------------------------------------------------------

--
-- Table structure for table `kode`
--

CREATE TABLE `kode` (
  `kode` int(4) DEFAULT NULL,
  `nama_barang` varchar(20) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kode`
--

INSERT INTO `kode` (`kode`, `nama_barang`, `harga`) VALUES
(101, 'buku', 5000),
(203, 'sabun', 6500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
