-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 07:32 PM
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
-- Database: `teather`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `rating` varchar(50) NOT NULL,
  `produksi` varchar(100) NOT NULL,
  `distributor` varchar(100) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `judul`, `deskripsi`, `rating`, `produksi`, `distributor`, `durasi`) VALUES
('FLM-001', 'The Shawshank Redemption', 'ini adalah deskripsi film', '8/10', 'itpln', 'dynasti corp', 100),
('FLM-002', 'The Godfather', 'ini adalah desc', '7/10', 'pt gocar', 'itpln', 90),
('FLM-003', 'Shauwn The Sheep', 'ini description', '7/10', 'itpln', 'bangkit academy', 78);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` varchar(20) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `jam` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `film_id` varchar(20) NOT NULL,
  `teater_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari`, `jam`, `harga`, `film_id`, `teater_id`) VALUES
('J-001', 'Senin', '13:00', 100000, 'FLM-001', 'T-01'),
('J-002', 'Senin', '15:00', 95000, 'FLM-002', 'T-02'),
('J-003', 'Senin', '17:00', 150000, 'FLM-003', 'T-03'),
('J-004', 'Senin', '18:00', 130000, 'FLM-004', 'T-04');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `teater_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id`, `nama`, `teater_id`) VALUES
('K-1', 'Blok Kanan', 'T-01'),
('K-2', 'Blok Kiri', 'T-02'),
('K-3', 'Blok Atas', 'T-03'),
('K-4', 'Blok Bawah', 'T-04');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `nama`, `password`) VALUES
('A-01', 'Azmi', 'admin1'),
('A-02', 'Ulya', 'admin2'),
('A-03', 'Anugrah', 'admin3');

-- --------------------------------------------------------

--
-- Table structure for table `teater`
--

CREATE TABLE `teater` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teater`
--

INSERT INTO `teater` (`id`, `nama`) VALUES
('T-01', 'Teather1'),
('T-02', 'Teather1'),
('T-03', 'Teather1'),
('T-04', 'Teather1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teater`
--
ALTER TABLE `teater`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
