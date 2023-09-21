-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 07:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvdshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `aid` int(3) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `alastname` varchar(30) NOT NULL,
  `aage` int(3) NOT NULL,
  `agender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dvd`
--

CREATE TABLE `dvd` (
  `did` int(3) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `dtype` varchar(20) NOT NULL,
  `dprice` int(7) NOT NULL,
  `dyear` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(3) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mlastname` varchar(20) NOT NULL,
  `maddress` varchar(30) NOT NULL,
  `mtel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `mname`, `mlastname`, `maddress`, `mtel`) VALUES
(101, 'Yeirapon', 'Eazy', 'T-Base', 812345678),
(102, 'Yeiramon', 'Normal', 'CT', 822345678),
(103, 'Yeiranon', 'Hard', 'Heaven', 832345678);

-- --------------------------------------------------------

--
-- Table structure for table `member_movie`
--

CREATE TABLE `member_movie` (
  `mid` int(6) NOT NULL,
  `did` int(6) NOT NULL,
  `mdbuy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`did`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
