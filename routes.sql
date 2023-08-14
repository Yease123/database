-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 11:50 AM
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
-- Database: `routes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`, `id`) VALUES
('ishan', 'ishansubedi123', 5),
('ishant', 'ishantsubedi123', 9);

-- --------------------------------------------------------

--
-- Table structure for table `busroutes`
--

CREATE TABLE `busroutes` (
  `bustype` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `departure` int(100) NOT NULL,
  `fare` int(100) NOT NULL,
  `datee` date NOT NULL DEFAULT current_timestamp(),
  `busnumber` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `columns` int(11) NOT NULL,
  `dtime` varchar(100) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busroutes`
--

INSERT INTO `busroutes` (`bustype`, `source`, `destination`, `departure`, `fare`, `datee`, `busnumber`, `id`, `row`, `columns`, `dtime`, `available`) VALUES
('localbus', 'chitwan', 'kathmandu', 8, 2000, '2023-05-27', '22150', 4, 4, 4, 'AM', 0),
('touristbus', 'bara', 'parsa', 6, 5000, '2023-05-27', '654898', 6, 6, 6, 'AM', 0),
('touristbus', 'Chitwan', 'mustang', 2, 200, '2023-07-30', '23456', 8, 2, 2, 'PM', 4);

-- --------------------------------------------------------

--
-- Table structure for table `signupform`
--

CREATE TABLE `signupform` (
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupform`
--

INSERT INTO `signupform` (`name`, `password`, `email`, `userid`) VALUES
('ishansubedi', 'qwertyuiop', 'ishansubedi987@gmail.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `busnumber` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `seat` varchar(1000) NOT NULL,
  `ticketid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`name`, `date`, `time`, `price`, `source`, `destination`, `busnumber`, `id`, `seat`, `ticketid`) VALUES
('ishansubedi', '2023-05-27', 8, 4000, 'chitwan', 'kathmandu', '22150', 4, 'r3c3,r3c4', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busroutes`
--
ALTER TABLE `busroutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signupform`
--
ALTER TABLE `signupform`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `busroutes`
--
ALTER TABLE `busroutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signupform`
--
ALTER TABLE `signupform`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
