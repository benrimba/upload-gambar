-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2020 at 09:27 
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbupload`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbgambar`
--

CREATE TABLE `tbgambar` (
  `idgambar` int(5) NOT NULL,
  `fotogbr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbgambar`
--

INSERT INTO `tbgambar` (`idgambar`, `fotogbr`) VALUES
(4, 'THUMNAILYTbaru.jpg'),
(5, 'rudi.jpg'),
(6, 'proses-input-form-mysqli.jpg'),
(7, 'penetration-website.jpg'),
(8, 'migrasi-php5-ke-php7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbgambar`
--
ALTER TABLE `tbgambar`
  ADD PRIMARY KEY (`idgambar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbgambar`
--
ALTER TABLE `tbgambar`
  MODIFY `idgambar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
