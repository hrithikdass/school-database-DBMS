-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2021 at 11:20 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'Vijay M G', '12345'),
(2, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, 'VII', 'A'),
(2, 'VII', 'B'),
(3, 'VIII', 'A'),
(5, 'IX', 'A'),
(6, 'IX', 'B'),
(7, 'X', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(3, 'Term Exam', 'II-Term', '10-09-2018', 'FN', 'IX', 'English'),
(4, 'Term Exam', 'II-Term', '18-09-2018', 'AN', 'X', 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

CREATE TABLE `hclass` (
  `HID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`) VALUES
(1, 1, 'VIII', 'A', 'English'),
(2, 4, 'X', 'B', 'English'),
(3, 3, 'IX', 'A', 'maths');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CLASS`) VALUES
(2, 'S102', 'Maths', '65', 'II-Term', 'VIII'),
(3, 'S103', 'Kannada', '75', 'III-Term', 'IX'),
(4, 'S101', 'maths', '85', 'I-Term', 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `PID` int(11) NOT NULL,
  `PNAME` varchar(150) NOT NULL,
  `PQUAL` varchar(100) NOT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `MOBILE` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`PID`, `PNAME`, `PQUAL`, `STUDENT_NAME`, `MOBILE`) VALUES
(19, 'Harsha', 'B.E', 'chandhan', 7676095823),
(20, 'Anoop', 'LLB', 'stella', 7899746262),
(21, 'Monish', 'Teacher', 'vivek', 7894567891),
(22, 'Vijay M G', 'B.E', 'akash', 9856321475),
(23, 'Harsha', 'B.E', 'chandhan', 9856321475);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'Kavya', '1234', 'MCA', '15000', '9876543210', 'karunakar@gmail.com', 'Khurdha', 'staff/1.jpg'),
(2, 'Chandler', '1234', 'MBA', '15000', '9876543210', 'chandra@gmail.com', 'Bhubaneswar', 'staff/2.jpg'),
(3, 'Tulsi', '1234', 'MCA', '20000', '9876543210', 'tulsi@gmail.com', 'Cuttack', 'staff/3.jpg'),
(4, 'Manikyam', '1234', 'BTECH', '30000', '9876543210', 'manikyam@gmail.com', 'Cuttack', 'staff/4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(12, 'S101', 'Shashank ', 'manjunath', '8-05-2001', 'Male', '7899874561', 'manju101@gmail.com', 'Rajankute ', 'IX', 'A', 'student/PHOTO HARS.jpg', 3),
(13, 'S102', 'Manoj', 'Vinay', '19-02-2003', 'Male', '7896953251', 'vinay100@gmail.com', 'Banglore', 'VIII', 'A', 'student/PHOTO MONI.jpg', 3),
(14, 'S103', 'Alivia', 'Ramesh', '4-06-2002', 'Female', '7676095823', 'rameshdudi@gmail.com', 'kakolu ', 'IX', 'B', 'student/alivia.jpg', 3),
(15, 'S104', 'Amrith Raj', 'Avinash', '18-10-2004', 'Male', '852436912', 'avinash108@gmail.com', 'Mangalore', 'VII', 'A', 'student/am.jpg', 4),
(16, 'S105', 'Aman', 'Kiran', '16-03-2005', 'Male', '9875321465', 'kiranraj@gmail.com', 'bidar', 'VII', 'B', 'student/aman.jpg', 4),
(17, 'S106', 'Priya chandha', 'vijay', '20-06-2001', 'Female', '8794561235', 'vijaygubbanna01@gmail.com', ' hesaraghatta', 'VIII', 'B', 'student/priya.jpg', 2),
(18, 'S107', 'Geetha N Shetty', 'Nataraj', '11-03-2005', 'Female', '8794532612', 'nataraj@gmail.com', 'Kolar', 'X', 'A', 'student/geethA.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(2, 'maths'),
(6, 'Social Science'),
(7, 'Kannada'),
(8, 'English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `hclass`
--
ALTER TABLE `hclass`
  ADD PRIMARY KEY (`HID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hclass`
--
ALTER TABLE `hclass`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
