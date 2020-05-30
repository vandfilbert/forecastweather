-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 07:39 PM
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
-- Table structure for table `ip_country`
--

CREATE TABLE `ip_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `timeplace` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_country`
--

INSERT INTO `ip_country` (`id`, `ip`, `country`, `city`, `timeplace`) VALUES
(1, '203.189.120.56', 'Indonesia', 'Surabaya', '2019-11-13 15:40:21'),
(4, '43.249.37.183', 'Hong Kong', 'Central', '2019-11-13 15:43:07'),
(5, '5.182.210.227', 'Netherlands', 'Amsterdam', '2019-11-13 15:43:08'),
(6, '46.165.240.37', 'Germany', 'Plettenberg', '2019-11-13 15:43:08'),
(7, '46.182.221.24', 'Netherlands', 'Groningen', '2019-11-13 15:43:08'),
(8, '205.147.109.224', 'India', 'Faridabad', '2019-11-13 15:43:08'),
(9, '98.143.158.202', 'United States', 'Los Angeles', '2019-11-13 15:43:08'),
(10, '213.206.252.57', 'Netherlands', 'Oosterhout', '2019-11-13 15:43:09'),
(11, '188.94.27.156', 'Germany', 'Hamburg', '2019-11-13 15:43:09'),
(12, '158.58.173.8', 'Italy', 'Milan', '2019-11-13 15:43:09'),
(13, '46.249.47.10', 'Netherlands', 'Dronten', '2019-11-13 15:43:09'),
(14, '201.131.127.49', 'Mexico', 'Guadalajara', '2019-11-13 15:43:09'),
(15, '72.9.99.138', 'United States', 'Katy', '2019-11-13 15:43:09'),
(16, '168.205.94.10', 'Argentina', 'Buenos Aires', '2019-11-13 15:43:09'),
(17, '103.254.154.21', 'Singapore', 'Singapore', '2019-11-13 15:43:09'),
(18, '217.196.146.37', 'Austria', 'Salzburg', '2019-11-13 15:43:09'),
(19, '71.6.201.70', 'United States', 'Henderson', '2019-11-13 15:43:09'),
(20, '37.252.253.22', 'Italy', 'Palermo', '2019-11-13 15:43:09'),
(21, '89.46.72.60', 'Italy', 'Arezzo', '2019-11-13 15:43:09'),
(22, '208.115.124.74', 'United States', 'Seattle', '2019-11-13 15:43:09'),
(23, '37.252.244.74', 'South Korea', 'Seoul', '2019-11-13 15:43:09'),
(24, '31.204.145.174', 'Japan', 'Tokyo', '2019-11-13 15:43:09'),
(25, '213.227.181.18', 'Israel', 'Tel Aviv', '2019-11-13 15:43:10'),
(26, '66.232.106.200', 'United States', 'Tampa', '2019-11-13 15:43:10'),
(28, '71.19.249.62', 'Canada', 'Coquitlam', '2019-11-13 15:43:10'),
(29, '66.11.155.244', 'Canada', 'Camlachie', '2019-11-13 15:43:10'),
(30, '185.50.105.199', 'Brazil', 'Cotia', '2019-11-13 15:43:10'),
(31, '185.90.61.19', 'Norway', 'Oslo', '2019-11-13 15:43:12'),
(32, '81.169.245.223', 'Germany', 'Berlin', '2019-11-13 15:43:19'),
(33, '131.100.2.22', 'United States', 'Honolulu', '2019-11-13 15:43:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_country`
--
ALTER TABLE `ip_country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip_country`
--
ALTER TABLE `ip_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
