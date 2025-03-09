-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2025 at 02:59 PM
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
-- Database: `pet_d_agogy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city_name`, `latitude`, `longitude`, `is_active`, `is_deleted`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Birmingham', '33.5186', '-86.8104', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(2, 1, 'Montgomery', '32.3792', '-86.3077', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(3, 2, 'Anchorage', '61.2181', '-149.9003', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(4, 2, 'Fairbanks', '64.8378', '-147.7164', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(5, 3, 'Phoenix', '33.4484', '-112.0740', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(6, 3, 'Tucson', '32.2226', '-110.9747', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(7, 4, 'Little Rock', '34.7465', '-92.2896', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(8, 4, 'Fort Smith', '35.3859', '-94.3985', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(9, 5, 'Los Angeles', '34.0522', '-118.2437', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(10, 5, 'San Francisco', '37.7749', '-122.4194', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(11, 6, 'Denver', '39.7392', '-104.9903', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(12, 6, 'Colorado Springs', '38.8339', '-104.8214', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(13, 7, 'Miami', '25.7617', '-80.1918', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(14, 7, 'Orlando', '28.5383', '-81.3792', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(15, 8, 'Atlanta', '33.7490', '-84.3880', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(16, 8, 'Savannah', '32.0809', '-81.0912', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(17, 9, 'Honolulu', '21.3069', '-157.8583', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(18, 9, 'Hilo', '19.7297', '-155.0900', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(19, 10, 'Chicago', '41.8781', '-87.6298', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(20, 10, 'Springfield', '39.7983', '-89.6547', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(21, 11, 'New Orleans', '29.9511', '-90.0715', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(22, 11, 'Baton Rouge', '30.4515', '-91.1871', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(23, 12, 'Detroit', '42.3314', '-83.0458', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(24, 12, 'Grand Rapids', '42.9634', '-85.6681', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(25, 13, 'New York City', '40.7128', '-74.0060', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(26, 13, 'Buffalo', '42.8864', '-78.8784', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(27, 14, 'Houston', '29.7604', '-95.3698', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10'),
(28, 14, 'Austin', '30.2672', '-97.7431', '1', '0', '2024-12-05 18:11:10', '2024-12-05 18:11:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
