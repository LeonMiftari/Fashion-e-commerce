-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 08, 2023 at 08:05 PM
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
-- Database: `EriAjeti`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CAT_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CAT_NAME`) VALUES
(1, 'Dress/Wedding'),
(2, 'Long Dress'),
(3, 'Short Dress'),
(4, 'Holiday Dress');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` bigint(20) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`id`, `fullName`, `lastName`, `address`, `email`, `number`, `size`) VALUES
(9, 'Erona', 'Islami', 'Ferid Curri', 'erona@gmail.com', 12312312, 'large'),
(10, 'Meridian', 'Miftari', 'Ferid Curri', 'meridianmiftari21@gmail.com', 3211254636, 'large');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `CREATED` date NOT NULL,
  `CATEGORY_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ID`, `NAME`, `DESCRIPTION`, `CREATED`, `CATEGORY_ID`) VALUES
(1, 'Vello', 'Qepje', '2023-09-07', 1),
(2, 'Funstan Elegant', 'Riparim', '2022-05-22', 2),
(3, 'Funstan i Shkurt', 'Pastrim', '2023-02-15', 3),
(4, 'Vello', 'Rregullim i madhsis', '2023-08-12', 1),
(5, 'Funstan i gjate', 'Ngjyrosje', '2023-05-22', 2),
(6, 'Fund', 'Porositje', '2023-04-25', 3),
(7, 'Funstan i shkurt', 'Qepje', '2023-12-22', 3),
(8, 'Vello', 'Pastrim', '2023-02-15', 1),
(9, 'Dress per Festa', 'Rregullim i madhsis', '2023-08-12', 4),
(10, 'Funstan i gjate', 'Ngjyrosje', '2023-05-22', 2),
(11, 'Fund', 'Porositje', '2023-04-25', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_category` (`CATEGORY_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
