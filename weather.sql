-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 07:38 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c14170015`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `temperature` double NOT NULL,
  `humidity` double NOT NULL,
  `time` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `temperature`, `humidity`, `time`, `city`, `country`) VALUES
(1, 20.68, 85, 1576247015, 'Sleman', 'ID'),
(2, 20.89, 84, 1576247727, 'Sleman', 'ID'),
(3, 20.78, 84, 1576247727, 'Sleman', 'ID'),
(4, 20.68, 83, 1576248868, 'Sleman', 'ID'),
(5, 20.68, 84, 1576249665, 'Sleman', 'ID'),
(6, 20.68, 82, 1576251809, 'Sleman', 'ID'),
(7, 20.68, 84, 1576251809, 'Sleman', 'ID'),
(8, 20.68, 84, 1576251809, 'Sleman', 'ID'),
(9, 20.68, 84, 1576252474, 'Sleman', 'ID'),
(11, 20.68, 84, 1576252474, 'Sleman', 'ID'),
(14, 20.68, 84, 1576252474, 'Sleman', 'ID'),
(22, 20.05, 85, 1576256466, 'Sleman', 'ID'),
(23, 20.05, 85, 1576256466, 'Sleman', 'ID'),
(27, 20.05, 85, 1576257103, 'Sleman', 'ID'),
(30, 20.05, 85, 1576257103, 'Sleman', 'ID'),
(31, 20.05, 85, 1576257103, 'Sleman', 'ID'),
(34, 20.05, 85, 1576257842, 'Sleman', 'ID'),
(35, 20.05, 85, 1576258613, 'Sleman', 'ID'),
(36, 20.05, 85, 1576258613, 'Sleman', 'ID'),
(37, 20.05, 85, 1576258613, 'Sleman', 'ID'),
(38, 20.05, 85, 1576258613, 'Sleman', 'ID'),
(39, 20.05, 85, 1576259336, 'Sleman', 'ID'),
(40, 20.05, 85, 1576259336, 'Sleman', 'ID'),
(41, 20.05, 85, 1576259336, 'Sleman', 'ID'),
(42, 20.05, 85, 1576259336, 'Sleman', 'ID'),
(43, 20.05, 85, 1576259336, 'Sleman', 'ID'),
(44, 20.05, 85, 1576259336, 'Sleman', 'ID'),
(45, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(46, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(47, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(48, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(49, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(50, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(51, 20.05, 85, 1576259916, 'Sleman', 'ID'),
(52, 25.5, 87, 1576260291, 'Surabaya', 'ID'),
(53, 26.59, 84, 1576260291, 'Surabaya', 'ID'),
(54, 26, 85, 1576260291, 'Surabaya', 'ID'),
(55, 28, 87, 1576260291, 'Surabaya', 'ID'),
(56, 25, 87, 1576260291, 'Surabaya', 'ID'),
(57, 25, 86, 1576260836, 'Surabaya', 'ID'),
(58, 25, 88, 1576260836, 'Surabaya', 'ID'),
(59, 25, 87, 1576260836, 'Surabaya', 'ID'),
(60, 25.25, 87, 1576260836, 'Surabaya', 'ID'),
(61, 25.89, 87, 1576260836, 'Surabaya', 'ID'),
(62, 25.35, 87, 1576261539, 'Surabaya', 'ID'),
(63, 25, 87, 1576261539, 'Surabaya', 'ID');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
