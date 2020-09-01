-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2020 at 12:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

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
-- Table structure for table `my_murid`
--

CREATE TABLE `my_murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `hobi` varchar(128) NOT NULL,
  `status_o` enum('disetujui','ditolak','draft','complete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_murid`
--

INSERT INTO `my_murid` (`id`, `nama`, `hobi`, `status_o`) VALUES
(1, 'billal', 'main bola', 'disetujui'),
(2, 'kacong', '', 'draft'),
(3, 'kocheng', 'tidur', 'complete'),
(4, 'beller', 'tidur', 'ditolak'),
(5, 'soleh', 'main', 'disetujui'),
(6, 'macan', 'lari', 'disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `my_users`
--

CREATE TABLE `my_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_users`
--

INSERT INTO `my_users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$J39lHzefHJAEs8XON9ReM.bdBletuYb4GdPGtmbkrD0pt3vKWx5ja', 'admin'),
(2, 'user', '$2y$10$V93e3Yj3SZaJoQ5Dv9uj.uNolwCsWAXvBrZ8yBTyOTmgAERS/B9qa', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_murid`
--
ALTER TABLE `my_murid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_users`
--
ALTER TABLE `my_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_murid`
--
ALTER TABLE `my_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `my_users`
--
ALTER TABLE `my_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
