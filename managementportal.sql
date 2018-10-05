-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2018 at 04:05 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `managementportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursereg`
--
CREATE DATABASE `managementportal`;

CREATE TABLE `coursereg` (
  `id` int(11) NOT NULL,
  `studentName` varchar(50) NOT NULL,
  `course1` varchar(50) NOT NULL,
  `course2` varchar(50) NOT NULL,
  `course3` varchar(50) NOT NULL,
  `course4` varchar(50) NOT NULL,
  `course5` varchar(50) NOT NULL,
  `course6` varchar(50) NOT NULL,
  `course7` varchar(50) NOT NULL,
  `course8` varchar(50) NOT NULL,
  `course9` varchar(50) NOT NULL,
  `course10` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursereg`
--

INSERT INTO `coursereg` (`id`, `studentName`, `course1`, `course2`, `course3`, `course4`, `course5`, `course6`, `course7`, `course8`, `course9`, `course10`) VALUES
(16, 'prosper_faith', 'svg331', 'svg322', 'csc333', 'bdt456', 'mth333', 'gns644', 'htu444', 'ens899', 'ens444', 'ght443'),
(17, 'prosper_faith', 'svg331', 'svg322', 'csc333', 'bdt456', 'mth333', 'gns644', 'htu444', 'ens899', 'ens444', 'ght443'),
(18, 'Olisakwe_Nnwana', 'svg331', 'svg322', 'csc333', 'bdt456', 'mth333', 'gns644', 'htu444', 'ens899', 'ens444', 'ght443');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `IDNumber` varchar(30) NOT NULL,
  `faculty` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `firstName`, `lastName`, `IDNumber`, `faculty`, `username`, `email`, `password`) VALUES
(1, 'Anthony', 'Chukwocha', '564545', 'SOES', 'AC_CHUKWOCHA', 'jamesBond@gmail.com', 'thiurgntg'),
(2, 'Richard', 'Njoku', '419', 'SOES', 'njoku@richard', 'kalurichard@gmail.com', 'njoku'),
(3, 'olisakwe', 'ogu', '+2345', 'SOES', 'Olisakwe_Nnwana', 'olisakwe@gmail.com', 'olisakwe'),
(4, 'cosmos', 'alaba', '2342018', 'SMAT', 'cosmos_alaba', 'cosmosalaba@gmail.com', 'cosmos');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_coursereg`
--

CREATE TABLE `lecturer_coursereg` (
  `id` int(11) NOT NULL,
  `lecturerName` varchar(150) NOT NULL,
  `course1` varchar(100) NOT NULL,
  `course2` varchar(100) NOT NULL,
  `course3` varchar(100) NOT NULL,
  `course4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer_coursereg`
--

INSERT INTO `lecturer_coursereg` (`id`, `lecturerName`, `course1`, `course2`, `course3`, `course4`) VALUES
(2, 'njoku@richard', 'mth201', 'csc245', 'csc201', 'csc222'),
(3, 'njoku@richard', 'htu444', 'gns644', 'mth333', 'ens899'),
(4, 'njoku@richard', 'svg331', 'svg322', 'csc333', 'bdt456'),
(5, 'Olisakwe_Nnwana', 'svg331', 'gns644', 'csc211', 'bdt456');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `regNumber` varchar(30) NOT NULL,
  `faculty` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `firstName`, `lastName`, `regNumber`, `faculty`, `username`, `email`, `password`) VALUES
(1, 'prosper', 'Afahaene', '20151010011', 'SEET', 'prosper_Afe', 'oparaprosper79@gmail.com', 'thisboy'),
(2, 'prosper', 'faith', '57565656565', 'SAAT', 'prosper_faith', 'kalurichard@gmail.com', 'prosper');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `file_size` varchar(10) NOT NULL,
  `file_path` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `studentName`, `file_name`, `file_type`, `file_size`, `file_path`, `date`) VALUES
(43, 'Olisakwe_Nnwana', 'schoolfee.PNG', 'image/png', '83596', 'uploads/5bb708015639c6.21065001.png', '2018-10-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursereg`
--
ALTER TABLE `coursereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer_coursereg`
--
ALTER TABLE `lecturer_coursereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursereg`
--
ALTER TABLE `coursereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lecturer_coursereg`
--
ALTER TABLE `lecturer_coursereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
