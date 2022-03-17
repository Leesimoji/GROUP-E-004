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
-- Table structure for table `SUBJECT SEARCH A`
--

CREATE TABLE `A` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH B`
--

CREATE TABLE `B` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH C`
--

CREATE TABLE `C` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH D`
--

CREATE TABLE `D` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH E`
--

CREATE TABLE `E` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH F`
--

CREATE TABLE `F` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH G`
--

CREATE TABLE `G` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH H`
--

CREATE TABLE `H` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH I`
--

CREATE TABLE `I` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH J`
--

CREATE TABLE `J` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH K`
--

CREATE TABLE `K` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH L`
--

CREATE TABLE `L` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH M`
--

CREATE TABLE `M` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH N`
--

CREATE TABLE `N` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH O`
--

CREATE TABLE `O` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH P`
--

CREATE TABLE `P` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH Q`
--

CREATE TABLE `Q` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH R`
--

CREATE TABLE `R` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH S`
--

CREATE TABLE `S` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH T`
--

CREATE TABLE `T` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH U`
--

CREATE TABLE `U` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH V`
--

CREATE TABLE `V` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH W`
--

CREATE TABLE `W` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH X`
--

CREATE TABLE `X` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `SUBJECT SEARCH Y`
--

CREATE TABLE `Y` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `SUBJECT SEARCH Z`
--

CREATE TABLE `Z` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `A` (`ISSN`, `Title`,`Author`,`Pubslisher`,`year_publisher`)
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');

INSERT INTO `B` (`ISSN`, `Title`,`Author`,`Pubslisher`,`year_publisher`)
VALUES ('1334236', 'Building Technology', 'Engr Bankole Ajayi','Scottish Press','2013');

INSERT INTO C (`ISSN`, `Title`,`Author`,`Pubslisher`,`year_publisher`)
VALUES ('1334236', 'Chemical Engineering Technology', 'Pam Kierson','The Kings Press','1994');

INSERT INTO D (`ISSN`, `Title`,`Author`,`Pubslisher`,`year_publisher`)
VALUES ('1334236', 'Chemical Engineering Technology', 'Pam Kierson','The Kings Press','1994');

INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');


INSERT INTO A
VALUES ('1334236', 'Advanced Mechanics of Machines', 'Dr James McKay','The Kings Press','2004');

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
