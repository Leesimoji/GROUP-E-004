-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 06:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmm004_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_course_correct`
--

CREATE TABLE `login_course_correct` (
  `useremail` varchar(12) NOT NULL,
  `userpassword` varchar(50) NOT NULL,
  `user_type` varchar(7) NOT NULL,
  `idusers` int(11) NOT NULL,
  `uidusers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_course_correct`
--

INSERT INTO `login_course_correct` (`useremail`, `userpassword`, `user_type`, `idusers`, `uidusers`) VALUES
('admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'admin', 1, ''),
('teach', '011c945f30ce2cbafc452f39840f025693339c42', 'staff', 2, ''),
('user', 'd5f12e53a182c062b6bf30c1445153faff12269a', 'student', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `passwordrst`
--

CREATE TABLE `passwordrst` (
  `passwordrstID` int(11) NOT NULL,
  `passwordrstemail` text NOT NULL,
  `passwordrstselector` text NOT NULL,
  `passwordrsttoken` longtext NOT NULL,
  `passwordrstexpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_course_correct`
--
ALTER TABLE `login_course_correct`
  ADD PRIMARY KEY (`idusers`);

--
-- Indexes for table `passwordrst`
--
ALTER TABLE `passwordrst`
  ADD PRIMARY KEY (`passwordrstID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_course_correct`
--
ALTER TABLE `login_course_correct`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passwordrst`
--
ALTER TABLE `passwordrst`
  MODIFY `passwordrstID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
