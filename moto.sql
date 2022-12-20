-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 05:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moto`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `code` int(11) NOT NULL,
  `area` varchar(100) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`code`, `area`, `availability`, `price`) VALUES
(1002, 'Mohakhali', 'Yes', 3000),
(1003, 'Kakrail', 'Yes', 2500),
(1002, 'Mohakhali', 'Yes', 3000),
(1003, 'Kakrail', 'Yes', 2500),
(2040, 'Dhanmondi', 'No', 5000),
(2050, 'Rampura', 'Yes', 2000),
(3521, 'Mirpur', 'No', 3000),
(37821, 'Malibagh', 'Yes', 2000),
(7893, 'Gulshan', 'No', 6000),
(8251, 'Kolabagan', 'Yes', 3000),
(6789, 'Mirpur', '2345', 2000),
(4069, 'Lalbag', '2309', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `subject`, `message`) VALUES
('Rahul', 'rahul@gmail.com', 'Urgent', 'Need help'),
('Mina', 'mina@gmail.com', 'Help', 'Not working');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `serialno` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `code` int(255) NOT NULL,
  `payment` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`serialno`, `name`, `adress`, `phone`, `code`, `payment`) VALUES
(0, 'muba', 'khilagoan', 1234, 8902, 2000),
(1, 'Hashem', 'Mirpur', 89000, 8900, 2000),
(2, 'Rahim', 'Hatirjheel', 77890, 7896, 3000),
(3, 'Karim', 'Nilkhet', 78899, 2098, 2000),
(4, 'Sokhina', 'Puran Dhaka', 889900, 2098, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `serialno` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(4) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `card` int(20) NOT NULL,
  `emonth` date NOT NULL,
  `eyear` int(4) NOT NULL,
  `cvv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`serialno`, `fname`, `email`, `adress`, `city`, `state`, `zip`, `cname`, `card`, `emonth`, `eyear`, `cvv`) VALUES
(1, 'muba', 'muba@gmail.com', 'malibagh', 'dhaka', 'bangladesh', 1234, 'muba', 1234567, '2022-12-08', 2022, 1234),
(2, 'Rahim', 'rahim@gmail.com', 'Khilkhet', 'Dhaka', 'Bangladesh', 1210, 'Rahim', 78990008, '2022-12-02', 2022, 123),
(3, 'Chamal', 'chamal@gmail.com', 'Arambag', 'Dhaka', 'Bangladesh', 1200, 'Chamal', 568890, '2022-09-02', 2022, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('mubu123', 123),
('mubu456', 456),
('ramisa', 678),
('mira', 7890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`serialno`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`serialno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
