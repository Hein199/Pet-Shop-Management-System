-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2023 at 12:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PetShopManagementSysDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bird`
--

CREATE TABLE `Bird` (
  `Bird_id` int(10) NOT NULL,
  `Breed` varchar(100) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bird`
--

INSERT INTO `Bird` (`Bird_id`, `Breed`, `Quantity`, `Price`) VALUES
(1, 'Cockatoo', 8, 3000),
(2, 'Parrotlet', 1, 4500),
(3, 'Cockatiel', 2, 4500);

-- --------------------------------------------------------

--
-- Table structure for table `Cat`
--

CREATE TABLE `Cat` (
  `Cat_id` int(10) NOT NULL,
  `Breed` varchar(100) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Cat`
--

INSERT INTO `Cat` (`Cat_id`, `Breed`, `Quantity`, `Price`) VALUES
(3, 'Abyssinian', 1, 7000),
(5, 'Ragdoll', 3, 6000),
(6, 'Burmese', 10, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `Dog`
--

CREATE TABLE `Dog` (
  `Dog_id` int(10) NOT NULL,
  `Breed` varchar(100) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Dog`
--

INSERT INTO `Dog` (`Dog_id`, `Breed`, `Quantity`, `Price`) VALUES
(4, 'Bulldog', 7, 8900),
(5, 'Chihuahua', 2, 7000),
(7, 'Poodle', 9, 9000),
(8, 'Corgi', 5, 9300),
(9, 'Chow Chow', 3, 10000),
(10, 'Sheltie', 2, 7900),
(11, 'Alaskan', 13, 9900),
(12, 'Rottweiler', 6, 8500),
(13, 'Husky', 10, 10000),
(14, 'Shiba Inu', 8, 9500),
(15, 'Labradoodle', 5, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `User_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`User_id`, `username`, `password`, `role`) VALUES
(1, 'admin', '1234', 'Admin'),
(2, 'cashier', '5678', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `Rabbit`
--

CREATE TABLE `Rabbit` (
  `Rabbit_id` int(10) NOT NULL,
  `Breed` varchar(100) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Rabbit`
--

INSERT INTO `Rabbit` (`Rabbit_id`, `Breed`, `Quantity`, `Price`) VALUES
(1, 'Flemish Giant', 5, 5500),
(2, 'Holland Lop', 5, 5300),
(4, 'Havana', 2, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `SaleRecord`
--

CREATE TABLE `SaleRecord` (
  `Sale_id` int(10) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Breed` varchar(100) NOT NULL,
  `Qty` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SaleRecord`
--

INSERT INTO `SaleRecord` (`Sale_id`, `Category`, `Breed`, `Qty`, `Price`, `Total`) VALUES
(1, 'Rabbit', 'Flemish Giant', 1, 3000, 3000),
(2, 'Bird', 'Cockatoo', 2, 3000, 6000),
(3, 'Cat', 'British Shorthair', 1, 4000, 4000),
(4, 'Rabbit', 'Holland Lop', 2, 3500, 7000),
(5, 'Bird', 'Parrotlet', 3, 4000, 12000),
(6, 'Bird', 'Cockatoo', 1, 3000, 3000),
(7, 'Dog', 'Bulldog', 1, 8000, 8000),
(8, 'Cat', 'Abyssinian', 1, 7000, 7000),
(9, 'Cat', 'British Shorthair', 5, 4000, 20000),
(10, 'Dog', 'Bulldog', 2, 8000, 16000),
(11, 'Cat', 'British Shorthair', 2, 5500, 11000),
(12, 'Dog', 'Sheltie', 1, 7900, 7900),
(13, 'Bird', 'Parrotlet', 1, 4500, 4500),
(14, 'Rabbit', 'Havana', 1, 5000, 5000),
(15, 'Dog', 'Chow Chow', 2, 10000, 20000),
(16, 'Rabbit', 'Flemish Giant', 1, 5500, 5500),
(17, 'Cat', 'Abyssinian', 3, 7000, 21000),
(18, 'Cat', 'British Shorthair', 1, 5500, 5500),
(19, 'Dog', 'Sheltie', 2, 7900, 15800),
(20, 'Rabbit', 'Havana', 1, 5000, 5000),
(21, 'Bird', 'Cockatiel', 3, 4500, 13500),
(22, 'Dog', 'Corgi', 3, 9300, 27900),
(23, 'Bird', 'Parrotlet', 1, 4500, 4500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bird`
--
ALTER TABLE `Bird`
  ADD PRIMARY KEY (`Bird_id`);

--
-- Indexes for table `Cat`
--
ALTER TABLE `Cat`
  ADD PRIMARY KEY (`Cat_id`);

--
-- Indexes for table `Dog`
--
ALTER TABLE `Dog`
  ADD PRIMARY KEY (`Dog_id`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `Rabbit`
--
ALTER TABLE `Rabbit`
  ADD PRIMARY KEY (`Rabbit_id`);

--
-- Indexes for table `SaleRecord`
--
ALTER TABLE `SaleRecord`
  ADD PRIMARY KEY (`Sale_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bird`
--
ALTER TABLE `Bird`
  MODIFY `Bird_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Cat`
--
ALTER TABLE `Cat`
  MODIFY `Cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Dog`
--
ALTER TABLE `Dog`
  MODIFY `Dog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Login`
--
ALTER TABLE `Login`
  MODIFY `User_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Rabbit`
--
ALTER TABLE `Rabbit`
  MODIFY `Rabbit_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SaleRecord`
--
ALTER TABLE `SaleRecord`
  MODIFY `Sale_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
