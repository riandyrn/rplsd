-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2014 pada 10.19
-- Versi Server: 5.6.11
-- Versi PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_rplsd`
--
CREATE DATABASE IF NOT EXISTS `db_rplsd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_rplsd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fares`
--

CREATE TABLE IF NOT EXISTS `fares` (
  `RUAS_TOL_ID` varchar(3) DEFAULT NULL,
  `FROM_TO` int(2) DEFAULT NULL,
  `TO_FROM` int(2) DEFAULT NULL,
  `GOL1` int(5) DEFAULT NULL,
  `GOL2` int(5) DEFAULT NULL,
  `GOL3` int(5) DEFAULT NULL,
  `GOL4` int(6) DEFAULT NULL,
  `GOL5` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fares`
--

INSERT INTO `fares` (`RUAS_TOL_ID`, `FROM_TO`, `TO_FROM`, `GOL1`, `GOL2`, `GOL3`, `GOL4`, `GOL5`) VALUES
('JM1', 1, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 1, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 2, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 3, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 4, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 5, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 6, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 7, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 8, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 10, 8000, 10000, 13000, 16000, 19000),
('JM1', 9, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 10, 11, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 1, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 2, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 3, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 4, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 5, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 6, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 7, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 8, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 9, 8000, 10000, 13000, 16000, 19000),
('JM1', 11, 10, 8000, 10000, 13000, 16000, 19000),
('JM2', 1, 2, 5500, 7000, 8000, 10000, 12500),
('JM2', 1, 3, 5500, 7000, 8000, 10000, 12500),
('JM2', 1, 4, 5500, 7000, 8000, 10000, 12500),
('JM2', 2, 1, 5500, 7000, 8000, 10000, 12500),
('JM2', 2, 3, 5500, 7000, 8000, 10000, 12500),
('JM2', 2, 4, 5500, 7000, 8000, 10000, 12500),
('JM2', 3, 1, 5500, 7000, 8000, 10000, 12500),
('JM2', 3, 2, 5500, 7000, 8000, 10000, 12500),
('JM2', 3, 4, 5500, 7000, 8000, 10000, 12500),
('JM2', 4, 1, 5500, 7000, 8000, 10000, 12500),
('JM2', 4, 2, 5500, 7000, 8000, 10000, 12500),
('JM2', 4, 3, 5500, 7000, 8000, 10000, 12500),
('JM3', 1, 2, 3000, 4000, 4500, 5500, 7000),
('JM3', 1, 3, 3000, 4000, 4500, 5500, 7000),
('JM3', 1, 4, 3000, 4000, 4500, 5500, 7000),
('JM3', 1, 5, 3000, 4000, 4500, 5500, 7000),
('JM3', 1, 6, 3000, 4000, 4500, 5500, 7000),
('JM3', 1, 7, 3000, 4000, 4500, 5500, 7000),
('JM3', 2, 1, 3000, 4000, 4500, 5500, 7000),
('JM3', 2, 3, 3000, 4000, 4500, 5500, 7000),
('JM3', 2, 4, 3000, 4000, 4500, 5500, 7000),
('JM3', 2, 5, 3000, 4000, 4500, 5500, 7000),
('JM3', 2, 6, 3000, 4000, 4500, 5500, 7000),
('JM3', 2, 7, 3000, 4000, 4500, 5500, 7000),
('JM3', 3, 1, 3000, 4000, 4500, 5500, 7000),
('JM3', 3, 2, 3000, 4000, 4500, 5500, 7000),
('JM3', 3, 4, 3000, 4000, 4500, 5500, 7000),
('JM3', 3, 5, 3000, 4000, 4500, 5500, 7000),
('JM3', 3, 6, 3000, 4000, 4500, 5500, 7000),
('JM3', 3, 7, 3000, 4000, 4500, 5500, 7000),
('JM3', 4, 1, 3000, 4000, 4500, 5500, 7000),
('JM3', 4, 2, 3000, 4000, 4500, 5500, 7000),
('JM3', 4, 3, 3000, 4000, 4500, 5500, 7000),
('JM3', 4, 5, 3000, 4000, 4500, 5500, 7000),
('JM3', 4, 6, 3000, 4000, 4500, 5500, 7000),
('JM3', 4, 7, 3000, 4000, 4500, 5500, 7000),
('JM3', 5, 1, 3000, 4000, 4500, 5500, 7000),
('JM3', 5, 2, 3000, 4000, 4500, 5500, 7000),
('JM3', 5, 3, 3000, 4000, 4500, 5500, 7000),
('JM3', 5, 4, 3000, 4000, 4500, 5500, 7000),
('JM3', 5, 6, 3000, 4000, 4500, 5500, 7000),
('JM3', 5, 7, 3000, 4000, 4500, 5500, 7000),
('JM3', 6, 1, 3000, 4000, 4500, 5500, 7000),
('JM3', 6, 2, 3000, 4000, 4500, 5500, 7000),
('JM3', 6, 3, 3000, 4000, 4500, 5500, 7000),
('JM3', 6, 4, 3000, 4000, 4500, 5500, 7000),
('JM3', 6, 5, 3000, 4000, 4500, 5500, 7000),
('JM3', 6, 7, 3000, 4000, 4500, 5500, 7000),
('JM3', 7, 1, 3000, 4000, 4500, 5500, 7000),
('JM3', 7, 2, 3000, 4000, 4500, 5500, 7000),
('JM3', 7, 3, 3000, 4000, 4500, 5500, 7000),
('JM3', 7, 4, 3000, 4000, 4500, 5500, 7000),
('JM3', 7, 5, 3000, 4000, 4500, 5500, 7000),
('JM3', 7, 6, 3000, 4000, 4500, 5500, 7000),
('JM3', 1, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 2, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 3, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 4, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 5, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 6, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 7, 8, 5000, 6000, 8000, 10000, 12000),
('JM3', 1, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 2, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 3, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 4, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 5, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 6, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 7, 9, 5000, 6000, 8000, 10000, 12000),
('JM3', 1, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 2, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 3, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 4, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 5, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 6, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 7, 10, 6000, 8000, 11000, 13500, 16000),
('JM3', 1, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 2, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 3, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 4, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 5, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 6, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 7, 11, 7000, 9000, 12000, 14500, 17500),
('JM3', 1, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 2, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 3, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 4, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 5, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 6, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 7, 12, 8000, 10000, 14000, 17000, 20500),
('JM3', 1, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 2, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 3, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 4, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 5, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 6, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 7, 13, 8000, 10000, 14000, 17000, 20500),
('JM3', 8, 9, 1000, 2000, 3000, 3500, 4500),
('JM3', 8, 10, 1000, 2000, 3000, 3500, 4500),
('JM3', 8, 11, 2000, 3000, 4000, 5000, 6000),
('JM3', 8, 12, 4000, 5000, 7000, 8500, 10500),
('JM3', 8, 13, 4000, 5000, 7000, 8500, 10500),
('JM3', 9, 10, 1000, 2000, 3000, 3500, 4500),
('JM3', 9, 11, 2000, 3000, 4000, 5000, 6000),
('JM3', 9, 12, 4000, 5000, 7000, 8500, 10500),
('JM3', 9, 13, 4000, 5000, 7000, 8500, 10500),
('JM3', 10, 11, 1000, 2000, 2000, 2500, 3000),
('JM3', 10, 12, 2000, 3000, 4000, 5000, 6000),
('JM3', 10, 13, 2000, 3000, 4000, 5000, 6000),
('JM3', 11, 12, 1000, 2000, 2000, 2500, 3000),
('JM3', 11, 13, 1000, 2000, 2000, 2500, 3000),
('JM3', 12, 13, 1000, 2000, 3000, 3500, 4500),
('JM4', 1, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 2, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 3, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 4, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 5, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 6, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 7, 8, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 1, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 2, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 3, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 4, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 5, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 6, 3500, 5500, 7000, 9000, 11000),
('JM4', 8, 7, 3500, 5500, 7000, 9000, 11000),
('JM4', 1, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 2, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 3, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 4, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 5, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 6, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 7, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 8, 9, 5500, 7500, 9000, 11500, 14000),
('JM4', 1, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 2, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 3, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 4, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 5, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 6, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 7, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 8, 10, 5500, 7500, 9000, 11500, 14000),
('JM4', 1, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 2, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 3, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 4, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 5, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 6, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 7, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 8, 11, 6500, 11000, 13500, 17000, 20500),
('JM4', 1, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 2, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 3, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 4, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 5, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 6, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 7, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 8, 12, 7500, 13000, 15500, 19500, 23500),
('JM4', 1, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 2, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 3, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 4, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 5, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 6, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 7, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 8, 13, 10500, 17000, 20500, 26000, 31500),
('JM4', 1, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 2, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 3, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 4, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 5, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 6, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 7, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 8, 14, 12000, 19500, 24000, 30000, 36500),
('JM4', 1, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 2, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 3, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 4, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 5, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 6, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 7, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 8, 15, 12000, 19500, 24000, 30000, 36500),
('JM4', 9, 10, 2000, 2000, 2000, 2500, 3000),
('JM4', 9, 11, 3000, 5500, 6500, 8000, 9500),
('JM4', 9, 12, 4000, 7500, 8500, 10500, 12500),
('JM4', 9, 13, 7000, 11500, 13500, 17000, 20500),
('JM4', 9, 14, 8500, 14000, 17000, 21000, 25500),
('JM4', 9, 15, 8500, 14000, 17000, 21000, 25500),
('JM4', 10, 11, 2000, 3000, 4000, 5500, 6500),
('JM4', 10, 12, 3000, 5500, 6500, 8000, 9500),
('JM4', 10, 13, 5500, 9500, 11500, 14500, 17000),
('JM4', 10, 14, 6500, 11500, 14000, 17500, 20500),
('JM4', 10, 15, 6500, 11500, 14000, 17500, 20500),
('JM4', 11, 12, 2000, 3000, 4000, 5500, 6500),
('JM4', 11, 13, 3500, 6500, 7500, 9500, 11000),
('JM4', 11, 14, 5500, 8500, 10500, 13500, 16000),
('JM4', 11, 15, 5500, 8500, 10500, 13500, 16000),
('JM4', 12, 13, 2500, 4000, 4500, 6000, 7000),
('JM4', 12, 14, 3000, 6500, 7500, 9500, 11000),
('JM4', 12, 15, 3000, 6500, 7500, 9500, 11000),
('JM4', 13, 14, 1000, 2000, 2000, 2500, 3500),
('JM4', 13, 15, 1000, 2000, 2000, 2500, 3500),
('JM4', 14, 15, 1000, 1500, 2000, 2500, 3000),
('JM5', 1, 2, 2000, 2000, 2000, 2500, 3000),
('JM5', 1, 3, 2000, 2000, 2000, 2500, 3000),
('JM5', 1, 4, 2000, 2000, 2000, 2500, 3000),
('JM5', 2, 1, 2000, 2000, 2000, 2500, 3000),
('JM5', 2, 3, 2000, 2000, 2000, 2500, 3000),
('JM5', 2, 4, 2000, 2000, 2000, 2500, 3000),
('JM5', 3, 1, 2000, 2000, 2000, 2500, 3000),
('JM5', 3, 2, 2000, 2000, 2000, 2500, 3000),
('JM5', 3, 4, 2000, 2000, 2000, 2500, 3000),
('JM5', 4, 1, 2000, 2000, 2000, 2500, 3000),
('JM5', 4, 2, 2000, 2000, 2000, 2500, 3000),
('JM5', 4, 3, 2000, 2000, 2000, 2500, 3000),
('JM5', 1, 5, 5000, 6000, 8000, 10000, 11500),
('JM5', 1, 6, 5000, 6000, 8000, 10000, 11500),
('JM5', 1, 7, 5000, 6000, 8000, 10000, 11500),
('JM5', 1, 8, 5000, 6000, 8000, 10000, 11500),
('JM5', 2, 5, 5000, 6000, 8000, 10000, 11500),
('JM5', 2, 6, 5000, 6000, 8000, 10000, 11500),
('JM5', 2, 7, 5000, 6000, 8000, 10000, 11500),
('JM5', 2, 8, 5000, 6000, 8000, 10000, 11500),
('JM5', 3, 5, 5000, 6000, 8000, 10000, 11500),
('JM5', 3, 6, 5000, 6000, 8000, 10000, 11500),
('JM5', 3, 7, 5000, 6000, 8000, 10000, 11500),
('JM5', 3, 8, 5000, 6000, 8000, 10000, 11500),
('JM5', 4, 5, 5000, 6000, 8000, 10000, 11500),
('JM5', 4, 6, 5000, 6000, 8000, 10000, 11500),
('JM5', 4, 7, 5000, 6000, 8000, 10000, 11500),
('JM5', 4, 8, 5000, 6000, 8000, 10000, 11500),
('JM5', 5, 6, 2000, 2000, 2000, 2500, 3000),
('JM5', 5, 7, 2000, 2000, 2000, 2500, 3000),
('JM5', 5, 8, 2000, 2000, 2000, 2500, 3000),
('JM5', 6, 5, 2000, 2000, 2000, 2500, 3000),
('JM5', 6, 7, 2000, 2000, 2000, 2500, 3000),
('JM5', 6, 8, 2000, 2000, 2000, 2500, 3000),
('JM5', 7, 5, 2000, 2000, 2000, 2500, 3000),
('JM5', 7, 6, 2000, 2000, 2000, 2500, 3000),
('JM5', 7, 8, 2000, 2000, 2000, 2500, 3000),
('JM5', 8, 5, 2000, 2000, 2000, 2500, 3000),
('JM5', 8, 6, 2000, 2000, 2000, 2500, 3000),
('JM5', 8, 7, 2000, 2000, 2000, 2500, 3000),
('JM6', 1, 2, 6000, 9000, 12000, 15000, 18000),
('JM6', 1, 3, 11000, 16500, 22000, 27500, 33000),
('JM6', 1, 4, 34000, 51000, 67500, 84500, 101500),
('JM6', 1, 5, 36000, 53500, 71000, 89000, 107000),
('JM6', 1, 6, 37000, 55500, 73000, 91500, 110000),
('JM6', 1, 7, 37500, 56500, 75000, 94000, 112500),
('JM6', 1, 8, 38000, 56500, 75000, 94000, 113000),
('JM6', 1, 9, 38000, 57000, 75000, 94000, 113000),
('JM6', 1, 10, 39000, 59500, 77000, 96500, 116000),
('JM6', 1, 11, 42000, 63500, 82000, 103000, 123500),
('JM6', 2, 3, 5000, 7500, 10000, 12500, 15500),
('JM6', 2, 4, 28000, 41500, 55500, 69500, 83500),
('JM6', 2, 5, 30000, 44000, 59000, 74000, 89000),
('JM6', 2, 6, 31000, 46000, 61000, 76500, 92000),
('JM6', 2, 7, 31500, 47000, 63000, 79000, 94500),
('JM6', 2, 8, 32000, 47000, 63000, 79000, 95000),
('JM6', 2, 9, 32000, 47500, 63000, 79000, 95000),
('JM6', 2, 10, 33000, 50000, 65000, 81500, 98000),
('JM6', 2, 11, 36000, 54000, 70000, 88000, 105500),
('JM6', 3, 4, 23000, 34500, 46000, 57000, 68500),
('JM6', 3, 5, 25000, 37000, 49500, 61500, 74000),
('JM6', 3, 6, 26000, 39000, 51500, 64000, 77000),
('JM6', 3, 7, 26500, 40000, 53500, 66500, 79500),
('JM6', 3, 8, 27000, 40000, 53500, 66500, 80000),
('JM6', 3, 9, 27000, 40500, 53500, 66500, 80000),
('JM6', 3, 10, 28000, 43000, 55500, 69000, 83000),
('JM6', 3, 11, 31000, 47000, 60500, 75500, 90500),
('JM6', 4, 5, 2000, 2500, 3500, 4500, 5500),
('JM6', 4, 6, 3000, 4500, 5500, 7000, 8500),
('JM6', 4, 7, 3500, 5500, 7500, 9500, 11000),
('JM6', 4, 8, 4000, 5500, 7500, 9500, 11500),
('JM6', 4, 9, 4000, 6000, 7500, 9500, 11500),
('JM6', 4, 10, 5000, 8500, 9500, 12000, 14500),
('JM6', 4, 11, 8000, 12500, 14500, 18500, 22000),
('JM6', 5, 6, 2000, 3000, 4000, 5000, 6000),
('JM6', 5, 7, 3000, 4000, 5000, 6500, 7500),
('JM6', 5, 8, 3000, 4000, 5000, 6500, 7500),
('JM6', 5, 9, 4000, 6000, 8000, 10000, 12000),
('JM6', 5, 10, 4000, 6000, 8000, 10000, 12000),
('JM6', 5, 11, 6000, 11000, 13000, 16500, 19500),
('JM6', 6, 7, 3000, 5000, 6000, 7500, 9000),
('JM6', 6, 8, 4000, 6000, 8000, 10000, 12000),
('JM6', 6, 9, 4000, 6000, 8000, 10000, 12000),
('JM6', 6, 10, 5000, 9000, 10000, 12500, 15000),
('JM6', 6, 11, 8000, 13000, 15000, 19000, 22500),
('JM6', 7, 8, 2000, 3000, 4000, 5000, 6000),
('JM6', 7, 9, 3000, 4000, 5000, 6500, 7500),
('JM6', 7, 10, 3000, 5000, 6000, 7500, 9000),
('JM6', 7, 11, 6000, 10000, 11000, 14000, 16500),
('JM6', 8, 9, 2000, 3000, 4000, 5000, 6000),
('JM6', 8, 10, 3000, 4000, 5000, 6500, 7500),
('JM6', 8, 11, 5000, 9000, 10000, 12500, 15000),
('JM6', 9, 10, 2000, 3000, 4000, 5000, 6000),
('JM6', 9, 11, 4000, 6000, 8000, 10000, 12000),
('JM6', 10, 11, 4000, 6000, 8000, 10000, 12000),
('JM7', 1, 2, 2000, 3000, 4000, 5000, 6000),
('JM7', 1, 3, 5000, 7000, 9000, 11500, 13500),
('JM7', 1, 4, 10000, 13000, 18500, 23000, 27500),
('JM7', 2, 3, 3000, 4000, 5000, 6500, 7500),
('JM7', 2, 4, 8000, 10000, 14500, 18000, 21500),
('JM7', 3, 4, 5000, 6000, 9500, 11500, 14000),
('JM7', 1, 0, 0, 0, 0, 0, 0),
('JM7', 2, 0, 2000, 3000, 4000, 5000, 6000),
('JM7', 3, 0, 5000, 7000, 9000, 11500, 13500),
('JM7', 4, 0, 10000, 13000, 18500, 23000, 27500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `list`
--

CREATE TABLE IF NOT EXISTS `list` (
  `RUAS_TOL_ID` varchar(3) DEFAULT NULL,
  `RUAS_TOL` varchar(11) DEFAULT NULL,
  `CONNECTED_NODE` varchar(37) DEFAULT NULL,
  `LENGTH(KM)` decimal(5,2) DEFAULT NULL,
  `DESCRIPTION` varchar(76) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `list`
--

INSERT INTO `list` (`RUAS_TOL_ID`, `RUAS_TOL`, `CONNECTED_NODE`, `LENGTH(KM)`, `DESCRIPTION`) VALUES
('JM1', 'DALAM_KOTA', 'CAWANG-TOMANG-CENGKARENG', '23.55', 'Tol dalam kota Bagian dari Ruas JIRR, Menghubungkan Cawang-Tomang-Cengkareng'),
('JM2', 'SEDYATMO', 'BANDARA-JIRR-JORR', '12.00', 'Menghubungkan Jakarta dengan Bandara Sukarno Hatta'),
('JM3', 'JAGORAWI', 'JAKARTA-BOGOR-CIAWI', '59.00', 'Menghubungkan Jakarta-Cibubur-Citeureup-Bogor-Ciawi'),
('JM4', 'CIKAMPEK', 'JAKARTA-JIRR-JORR-BEKASI-PURBALEUNYI', '83.00', 'Menghubungkan Jakarta-Bekasi-Bandung'),
('JM5', 'JANGER', 'JAKARTA-TANGERANG', '33.00', 'Menghubungkan Tol Dalam Kota-Tangerang Merak'),
('JM6', 'PURBALEUNYI', 'JAKARTA-PURWAKARTA-BANDUNG-PADELEUNYI', '123.00', 'Menghubungkan Jakarta-Bandung via Cipularang'),
('JM7', 'PALIKANCI', 'PALIMANAN-KANCI', '26.30', 'Menghubungkan Cikampek dan Pantura');

-- --------------------------------------------------------

--
-- Struktur dari tabel `path`
--

CREATE TABLE IF NOT EXISTS `path` (
  `START_RUAS` varchar(3) DEFAULT NULL,
  `END_RUAS` varchar(3) DEFAULT NULL,
  `PATH` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `path`
--

INSERT INTO `path` (`START_RUAS`, `END_RUAS`, `PATH`) VALUES
('JM1', 'JM2', 'JM1,JM2'),
('JM1', 'JM3', 'JM1,JM3'),
('JM1', 'JM4', 'JM1,JM4'),
('JM1', 'JM5', 'JM1,JM5'),
('JM1', 'JM6', 'JM1,JM4,JM6'),
('JM1', 'JM7', 'JM1,JM4,JM7'),
('JM2', 'JM1', 'JM2,JM1'),
('JM2', 'JM3', 'JM2,JM1,JM3'),
('JM2', 'JM4', 'JM2,JM1,JM4'),
('JM2', 'JM5', 'JM2,JM1,JM5'),
('JM2', 'JM6', 'JM2,JM1,JM4,JM6'),
('JM2', 'JM7', 'JM2,JM1,JM4,JM7'),
('JM3', 'JM1', 'JM3,JM1'),
('JM3', 'JM2', 'JM3,JM1,JM2'),
('JM3', 'JM4', 'JM3,JM1,JM4'),
('JM3', 'JM5', 'JM3,JM1,JM5'),
('JM3', 'JM6', 'JM3,JM1,JM4,JM6'),
('JM3', 'JM7', 'JM3,JM1,JM4,JM7'),
('JM4', 'JM1', 'JM4,JM1'),
('JM4', 'JM2', 'JM4,JM1,JM2'),
('JM4', 'JM3', 'JM4,JM1,JM3'),
('JM4', 'JM5', 'JM4,JM1,JM5'),
('JM4', 'JM6', 'JM4,JM6'),
('JM4', 'JM7', 'JM4,JM7'),
('JM5', 'JM1', 'JM5,JM1'),
('JM5', 'JM2', 'JM5,JM1,JM2'),
('JM5', 'JM3', 'JM5,JM1,JM3'),
('JM5', 'JM4', 'JM5,JM1,JM4'),
('JM5', 'JM6', 'JM5,JM1,JM4,JM6'),
('JM5', 'JM7', 'JM5,JM1,JM4,JM7'),
('JM6', 'JM1', 'JM6,JM4,JM1'),
('JM6', 'JM2', 'JM6,JM4,JM1,JM2'),
('JM6', 'JM3', 'JM6,JM4,JM1,JM3'),
('JM6', 'JM4', 'JM6,JM4'),
('JM6', 'JM5', 'JM6,JM4,JM1,JM5'),
('JM6', 'JM7', 'JM6,JM4,JM7'),
('JM7', 'JM1', 'JM7,JM4,JM1'),
('JM7', 'JM2', 'JM7,JM4,JM1,JM2'),
('JM7', 'JM3', 'JM7,JM4,JM1,JM3'),
('JM7', 'JM4', 'JM7,JM4'),
('JM7', 'JM5', 'JM7,JM4,JM1,JM5'),
('JM7', 'JM6', 'JM7,JM4,JM6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peta_ruas`
--

CREATE TABLE IF NOT EXISTS `peta_ruas` (
  `RUAS` varchar(3) DEFAULT NULL,
  `CONNECTED` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `peta_ruas`
--

INSERT INTO `peta_ruas` (`RUAS`, `CONNECTED`) VALUES
('JM2', 'JM1'),
('JM5', 'JM1'),
('JM6', 'JM4'),
('JM7', 'JM4'),
('JM3', 'JM1'),
('JM4', 'JM1'),
('JM4', 'JM6'),
('JM4', 'JM7'),
('JM1', 'JM2'),
('JM1', 'JM5'),
('JM1', 'JM3'),
('JM1', 'JM4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `RUAS_TOL_ID` varchar(3) DEFAULT NULL,
  `GT_SEQUENCE` int(2) DEFAULT NULL,
  `GERBANG_TOL_NAME` varchar(21) DEFAULT NULL,
  `KM` decimal(3,1) DEFAULT NULL,
  `NEAREST_AREA` varchar(233) DEFAULT NULL,
  `RUAS_TOL_INTERSECTION` varchar(7) DEFAULT NULL,
  `LAT` decimal(11,9) DEFAULT NULL,
  `LONG` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `routes`
--

INSERT INTO `routes` (`RUAS_TOL_ID`, `GT_SEQUENCE`, `GERBANG_TOL_NAME`, `KM`, `NEAREST_AREA`, `RUAS_TOL_INTERSECTION`, `LAT`, `LONG`) VALUES
('JM1', 1, 'GT-CAWANG', '0.0', 'Cawang/Bandara Halim/ Kampung Melayu', 'JM3|JM4', '-6.243176000', '106.859691'),
('JM1', 2, 'GT-TEBET', '4.0', 'Tebet/ Manggarai/ Pasar Minggu', '', '-6.242728000', '106.849695'),
('JM1', 3, 'GT-KUNINGAN', '7.6', 'Mampang / Kuningan / Menteng', '', '-6.240690000', '106.834493'),
('JM1', 4, 'GT-SEMANGGI', '8.8', 'Semanggi/Senayan/ Kebayoran', '', '-6.223846000', '106.815577'),
('JM1', 5, 'GT-SENAYAN', '9.4', 'Bendungan Hilir / Senayan /  Kebayoran', '', '-6.230813600', '106.8202937'),
('JM1', 6, 'GT-PEJOMPONGAN', '10.1', 'Slipi/ Palmerah/ Tanah Abang', '', '-6.204926000', '106.801402'),
('JM1', 7, 'GT-SLIPI', '11.4', 'Slipi/ Palmerah/ Tanah Abang', '', '-6.199617300', '106.7984833'),
('JM1', 8, 'GT-TANJUNG DUREN', '14.0', 'Tomang / Grogol', '', '-6.168075650', '106.7881393'),
('JM1', 9, 'GT-TOMANG', '16.0', 'Grogol/ Tomang/ Jalan Tol Jakarta/Tangerang', 'JM5', '-6.157999295', '106.7919622'),
('JM1', 10, 'GT-ANGKE ', '17.6', 'Angke/ Pejagalan/ Glodok', '', '-6.142463669', '106.7879355'),
('JM1', 11, 'GT-PLUIT', '20.4', 'Kapuk Muara/ Pantai Indah Kapuk/ Jalan Tol Prof. Dr. Sedyatmo', 'JM2', '-6.123665941', '106.7768064'),
('JM2', 1, 'GT-PLUIT', '20.4', 'Jalan Tol Cawang/Pluit/ Jalan Tol Pelabuhan', 'JM1', '-6.123665941', '106.7768064'),
('JM2', 2, 'GT-KAPUK', '21.5', 'Gerbang tol utama (arah JIRR)', '', '-6.121800232', '106.7685635'),
('JM2', 3, 'GT- KAMAL', '25.5', 'Kamal/ Jalan Tol Lingkar Luar Jakarta', '', '-6.117171600', '106.7341089'),
('JM2', 4, 'GT-CENGKARENG', '31.0', 'GT utama (arah Dadap/ Benda/ Rawa Bokor/ Bandara Internasional Soekarno/Hatta)', '', '-6.105671639', '106.6965151'),
('JM3', 1, 'GT-CAWANG', '0.0', 'Tebet/ Semanggi/ Bandara Soekarno/Hatta/ Jatinegara/ Kelapa Gading/ Tanjung Priok/ Ancol', 'JM1', '-6.243176000', '106.859691'),
('JM3', 2, 'GT-PASAR REBO', '8.0', 'Jalan Tol Lingkar Luar Jakarta/ Jalan Tol Jakarta/Serpong/ Jalan Tol Jakarta/Cikampek', '', '-6.312137332', '106.8923757'),
('JM3', 3, 'GT-CIBUBUR', '13.0', 'Cibubur/ Cileungsi/ Cikeas', '', '-6.365778166', '106.8949449'),
('JM3', 4, 'GT-CIBUBUR UTAMA', '14.0', 'Gerbang awal arah Bogor/Ciawi', '', '-6.368912986', '106.8951648'),
('JM3', 5, 'GT-CISALAK', '16.0', 'Cisalak, Depok, Margonda, Jalan Tol Cinere-Jagorawi', '', '-6.377595299', '106.8873733'),
('JM3', 6, 'GT-CIMANGGIS', '19.0', 'Cimanggis, Cikeas', '', '-6.421084000', '106.893721'),
('JM3', 7, 'GT-CIMANGGIS UTAMA', '19.0', 'Gerbang akhir (arah Jakarta)', '', '-6.411836000', '106.89788'),
('JM3', 8, 'GT-GUNUNG PUTRI ', '24.0', 'Gunung Putri, Karanggan, Cikeas                         ', '', '-6.461339000', '106.889183?'),
('JM3', 9, 'GT-CITEUREUP ', '27.0', 'Citeureup, Cibinong                                     ', '', '-6.484186000', '106.873656'),
('JM3', 10, 'GT-SENTUL ', '34.0', 'IPSC, Sirkuit Sentul, Sentul, Nanggewer                 ', '', '-6.531939000', '106.853051'),
('JM3', 11, 'GT-SENTUL SELATAN', '37.0', 'Sentul City, Kedung Halang, Jalan Tol Lingkar Luar Bogor', '', '-6.562177000', '106.845322'),
('JM3', 12, 'GT-BOGOR', '42.0', 'Gerbang akhir (ke Bogor Kota, Kebun Raya)', '', '-6.597429000', '106.817603'),
('JM3', 13, 'GT-CIAWI', '44.0', 'Ciawi, Sukabumi, Gadog, Cisarua, Puncak, Taman Safari, Cianjur, Padalarang dan Bandung', '', '-6.631115000', '106.839057'),
('JM4', 1, 'GT-CAWANG', '0.0', 'Jatinegara, Tanjung Priok, Grogol, Kelapa Gading, Jalan Tol Lingkar Dalam Jakarta, Bandara Internasional Soekarno-Hatta, Pelabuhan Tanjung Priok', 'JM1', '-6.243176000', '106.859691'),
('JM4', 2, 'GT-HALIM', '1.0', 'Cawang, Cililitan, Halim PK, Jalan Tol Jagorawi, Bandar Udara Halim Perdanakusuma', 'JM3', '-6.245211782', '106.8890333'),
('JM4', 3, 'GT-CIKUNIR', '9.5', 'Jalan Tol Lingkar Luar Jakarta', '', '-6.255712403', '106.9604436'),
('JM4', 4, 'GT-BEKASI BARAT', '13.0', 'Bekasi Barat, Pekayon', '', '-6.251568182', '106.9865799'),
('JM4', 5, 'GT-BEKASI TIMUR', '16.0', 'Bekasi Timur, Bulak Kapal, Bantar Gebang', '', '-6.261880376', '107.0175233'),
('JM4', 6, 'GT-TAMBUN ', '21.0', 'Tambun, Mustika Jaya, Setu', '', '-6.278502155', '107.0509185'),
('JM4', 7, 'GT-CIBITUNG ', '24.0', 'Cibitung, Kawasan Industri MM 2100', '', '-6.282411000', '107.085092'),
('JM4', 8, 'GT-CIKARANG UTAMA ', '29.0', 'Pintu gerbang utama Gerbang awal <arah Cikampek, Bandung> dan Gerbang akhir <arah Jakarta, Bogor>', '', '-6.303163072', '107.1205831'),
('JM4', 9, 'GT-CIKARANG BARAT ', '31.0', 'Cikarang Barat, Lemahabang', '', '-6.311627086', '107.1377297'),
('JM4', 10, 'GT-CIKARANG TIMUR ', '37.0', 'Cikarang Pusat, Pasirranji, Sukamahi', '', '-6.341823885', '107.1856293'),
('JM4', 11, 'GT-KARAWANG BARAT', '47.0', 'Karawang Barat, Kawasan Industri KIIC, Rengasdengklok', '', '-6.345589121', '107.2709082'),
('JM4', 12, 'GT-KARAWANG TIMUR', '54.0', 'Karawang Timur, Klari, Kawasan Industri Surya Cipta', '', '-6.356730207', '107.3359364'),
('JM4', 13, 'GT-DAWUAN INTERCHANGE', '67.0', 'Jalan Tol Cipularang, Jalan Tol Purbaleunyi', 'JM6', '-6.426958437', '107.4415388'),
('JM4', 14, 'GT-KALIHURIP', '68.0', 'Bukit Indah, Kawasan Industri KIKC, Indotaisei, Dawuan, Cikampek Barat', '', '-6.415982757', '107.4147674'),
('JM4', 15, 'GT-CIKAMPEK', '73.0', 'Gerbang Akhir Arah Cikampek, Gerbang Awal Arah Jakarta', 'JM7', '-6.204432496', '106.8119699'),
('JM5', 1, 'GT-TOMANG', '0.1', 'Dalam Kota ', 'JM1', '-6.181627553', '106.7935091'),
('JM5', 2, 'GT-KEBON JERUK', '3.5', 'Kebon Jeruk, Kedoya', '', '-6.190059982', '106.7671523'),
('JM5', 3, 'GT-MERUYA', '6.0', 'Kembangan, Meruya Ilir, Joglo', '', '-6.193737846', '106.7409572'),
('JM5', 4, 'GT-MERUYA UTARA', '7.3', 'JORR', '', '-6.191471957', '106.7370006'),
('JM5', 5, 'GT-TANGERANG', '18.5', 'Tangerang, Serpong', '', '-6.223070432', '106.6376352'),
('JM5', 6, 'GT-KARAWACI BARAT', '20.1', 'Lippo Village, Legok, Binong', '', '-6.226824715', '106.6141605'),
('JM5', 7, 'GT-KARAWACI TIMUR', '21.0', 'Lippo Village, Legok, Binong', '', '-6.223411732', '106.6216922'),
('JM5', 8, 'GT-TANGERANG BARAT', '26.0', 'Bitung, Curung', '', '-6.222461506', '106.6356496'),
('JM6', 1, 'GT-DAWUAN INTERCHANGE', '0.0', 'Purwakarta, Sadang, Subang', 'JM4', '-6.426958437', '107.4415388'),
('JM6', 2, 'GT-SADANG', '1.0', 'Purwakarta, Sadang, Subang', '', '-6.506341101', '107.4495736'),
('JM6', 3, 'GT-JATILUHUR', '8.0', 'Purwakarta, Jatiluhur, Ciganea', '', '-6.566139896', '107.431188'),
('JM6', 4, 'GT-PADALARANG', '47.0', 'Padalarang, Kota Baru Parahyangan, Cikalongwetan, Cianjur, Sukabumi', '', '-6.856656270', '107.4946391'),
('JM6', 5, 'GT-BAROS', '51.0', 'Baros, Cimahi, Leuwigajah', '', '-6.897120990', '107.5420654'),
('JM6', 6, 'GT-PASTEUR', '51.0', 'Cimahi, Pasteur, Lembang, Bandung Kota', '', '-6.890810115', '107.5758719'),
('JM6', 7, 'GT-PASIR KOJA', '58.0', ' Pasir Koja, Leuwi Panjang, Bandung Kota', '', '-6.931399991', '107.5727031'),
('JM6', 8, 'GT-KOPO', '60.0', 'Kopo, Soreang, Ciwidey, Bandung Kota', '', '-6.956460398', '107.5811291'),
('JM6', 9, 'GT-M TOHA', '62.0', 'Mohammad Toha, Banjaran, Pangalengan, Bandung Kota', '', '-6.956588197', '107.6096892'),
('JM6', 10, 'GT-BUAH BATU', '65.0', '  Buah Batu, Dayeuhkolot, Ciparay, Majalaya, Bandung Kota', '', '-6.961827895', '107.6375628'),
('JM6', 11, 'GT-CILEUNYI', '79.0', 'Gerbang akhir (ke Cileunyi, Jatinangor, Sumedang, Cirebon, Garut, Tasikmalaya, Ciamis, Banjar, Pangandaran, Purwokerto, Yogyakarta, Solo, Blitar, Kediri, Malang, Jember, Banyuwangi) (arah Cileunyi)\rGerbang awal (arah Bandung/Jakarta)', '', '-6.944196565', '107.7478249'),
('JM7', 1, 'GT-PALIMANAN', '1.0', 'Jalan Tol Cikampek-Palimanan ', '', '-6.697598468', '108.4815359'),
('JM7', 2, 'GT-PLUMBON', '5.0', 'Harjamukti, Cirebon', '', '-6.699126844', '108.4836429'),
('JM7', 3, 'GT-CIPERNA', '8.0', 'Stasiun Cirebon', '', '-6.724070629', '108.5105683'),
('JM7', 4, 'GT-KANCI', '14.0', 'Kanci', '', '-6.799625938', '108.6171913'),
('JM7', 0, 'GT-CIKAMPEK', '0.0', NULL, 'JM4', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
