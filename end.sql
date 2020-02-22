-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2019 at 08:09 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `end`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `path`) VALUES
(0, 'void'),
(2, 'CAT-SP-1.pdf'),
(3, 'CAT-SP-2.pdf'),
(4, 'CAT-SP-3.pdf'),
(5, 'CAT-SP-4.pdf'),
(6, 'CAT-SP-5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `chatlog`
--

CREATE TABLE `chatlog` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatlog`
--

INSERT INTO `chatlog` (`sno`, `name`, `msg`, `time`) VALUES
(1, 'narhari.gogrot@spsu.ac.in', 'Anybody knows the last date of report submission ?', '2019-03-24 11:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `gate`
--

CREATE TABLE `gate` (
  `id` int(11) NOT NULL,
  `path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gate`
--

INSERT INTO `gate` (`id`, `path`) VALUES
(0, 'void'),
(2, 'GATE-SP-1.pdf'),
(3, 'GATE-SP-2.pdf'),
(4, 'GATE-SP-3.pdf'),
(5, 'GATE-SP-4.pdf'),
(6, 'GATE-SP-5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `iit`
--

CREATE TABLE `iit` (
  `id` int(11) NOT NULL,
  `path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iit`
--

INSERT INTO `iit` (`id`, `path`) VALUES
(0, 'void'),
(2, 'IIT-SP-1.pdf'),
(3, 'IIT-SP-2.pdf'),
(4, 'IIT-SP-3.pdf'),
(5, 'IIT-SP-4.pdf'),
(6, 'IIT-SP-5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `name` varchar(50) NOT NULL,
  `degree` varchar(10) NOT NULL,
  `place` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`name`, `degree`, `place`, `contact`) VALUES
('SPS University', 'B Tech', 'Udaipur', '9786532587'),
('JECRCE University', 'B Sc', 'Jaipur', '8562143984'),
('Pacific University', 'B Tech', 'Udaipur', '9786532587'),
('SPS Udaipur', 'BTech', 'Udaipur', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `pmt`
--

CREATE TABLE `pmt` (
  `id` int(11) NOT NULL,
  `path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmt`
--

INSERT INTO `pmt` (`id`, `path`) VALUES
(0, 'void'),
(2, 'PMT-SP-1.pdf'),
(3, 'PMT-SP-2.pdf'),
(4, 'PMT-SP-3.pdf'),
(5, 'PMT-SP-4.pdf'),
(6, 'PMT-SP-5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ssc`
--

CREATE TABLE `ssc` (
  `id` int(11) NOT NULL,
  `path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssc`
--

INSERT INTO `ssc` (`id`, `path`) VALUES
(0, 'void'),
(2, 'SSC-SP-1.pdf'),
(3, 'SSC-SP-2.pdf'),
(4, 'SSC-SP-3.pdf'),
(5, 'SSC-SP-4.pdf'),
(6, 'SSC-SP-5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `toefl`
--

CREATE TABLE `toefl` (
  `id` int(11) NOT NULL,
  `path` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `toefl`
--

INSERT INTO `toefl` (`id`, `path`) VALUES
(0, 'void'),
(2, 'TOEFL-SP-1.pdf'),
(3, 'TOEFL-SP-2.pdf'),
(4, 'TOEFL-SP-3.pdf'),
(5, 'TOEFL-SP-4.pdf'),
(6, 'TOEFL-SP-5.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `email`, `password`) VALUES
('ad,mfnkj', 'kjdsnfkjn', 'cxkfbkj@fdkjn.com', 'jksdnfkj'),
('Narhari', 'Gogrot', 'narhari.gogrot@spsu.ac.in', 'spsu@123'),
('Pratik', 'Chauhan', 'pratik@gmail.com', 'spsu123'),
('Rahul ', 'Kumar', 'rahul.kumar@spsu.ac.in', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatlog`
--
ALTER TABLE `chatlog`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `gate`
--
ALTER TABLE `gate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iit`
--
ALTER TABLE `iit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt`
--
ALTER TABLE `pmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssc`
--
ALTER TABLE `ssc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toefl`
--
ALTER TABLE `toefl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `chatlog`
--
ALTER TABLE `chatlog`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gate`
--
ALTER TABLE `gate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iit`
--
ALTER TABLE `iit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pmt`
--
ALTER TABLE `pmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ssc`
--
ALTER TABLE `ssc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `toefl`
--
ALTER TABLE `toefl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
