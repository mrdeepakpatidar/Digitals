-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 10:41 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ds`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `otp` int(6) NOT NULL,
  `is_varify` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `email`, `password`, `otp`, `is_varify`) VALUES
(1, 'ak3939651@gmail.com', '123', 6149, 1);

-- --------------------------------------------------------

--
-- Table structure for table `companydetail`
--

CREATE TABLE `companydetail` (
  `id` int(10) NOT NULL,
  `compname` varchar(20) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `cont_num` bigint(13) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `gotdetails` varchar(100) DEFAULT NULL,
  `relationships` varchar(50) DEFAULT NULL,
  `belongs_department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companydetail`
--

INSERT INTO `companydetail` (`id`, `compname`, `designation`, `cont_num`, `Email`, `gotdetails`, `relationships`, `belongs_department`) VALUES
(1, 'it', 'sefdt', 1234567891, 'poonam@gmail.com', 'no', 'none', 'CS');

-- --------------------------------------------------------

--
-- Table structure for table `empeducationdetail`
--

CREATE TABLE `empeducationdetail` (
  `id` int(10) NOT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `board` varchar(20) DEFAULT NULL,
  `percent` varchar(20) DEFAULT NULL,
  `passing_year` int(20) DEFAULT NULL,
  `school_marksheet` varchar(200) DEFAULT NULL,
  `hschool_name` varchar(30) DEFAULT NULL,
  `hsboard` varchar(30) NOT NULL,
  `passing_hyear` int(20) NOT NULL,
  `hpercent` varchar(20) NOT NULL,
  `hschool_marksheet` varchar(200) DEFAULT NULL,
  `univercity` varchar(50) DEFAULT NULL,
  `degree` varchar(200) DEFAULT NULL,
  `gpercent` varchar(20) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `g_marksheet` varchar(200) DEFAULT NULL,
  `pgdegree` varchar(200) DEFAULT NULL,
  `pgunivercity` varchar(30) DEFAULT NULL,
  `pgyear` int(20) DEFAULT NULL,
  `pgpercent` varchar(20) DEFAULT NULL,
  `pg_marksheet` varchar(200) DEFAULT NULL,
  `otherdegree` varchar(200) DEFAULT NULL,
  `otherunivercity` varchar(30) DEFAULT NULL,
  `otheryear` int(20) DEFAULT NULL,
  `otherpercent` varchar(20) DEFAULT NULL,
  `other_marksheet` varchar(200) DEFAULT NULL,
  `education_break` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empeducationdetail`
--

INSERT INTO `empeducationdetail` (`id`, `school_name`, `board`, `percent`, `passing_year`, `school_marksheet`, `hschool_name`, `hsboard`, `passing_hyear`, `hpercent`, `hschool_marksheet`, `univercity`, `degree`, `gpercent`, `year`, `g_marksheet`, `pgdegree`, `pgunivercity`, `pgyear`, `pgpercent`, `pg_marksheet`, `otherdegree`, `otherunivercity`, `otheryear`, `otherpercent`, `other_marksheet`, `education_break`) VALUES
(1, '', '', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/', '');

-- --------------------------------------------------------

--
-- Table structure for table `emppersonaldetail`
--

CREATE TABLE `emppersonaldetail` (
  `id` int(10) NOT NULL,
  `pfile` varchar(200) DEFAULT NULL,
  `full_name` varchar(30) NOT NULL,
  `mobile_no.` bigint(13) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `aadhar_number` bigint(12) NOT NULL,
  `pancard` varchar(20) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `father_name` varchar(30) NOT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `father_num` bigint(13) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `Join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE `emp_attendance` (
  `id` int(10) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_attendance`
--

INSERT INTO `emp_attendance` (`id`, `attend`, `att_time`) VALUES
(1, 'absent', '2021-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `internpersnoldetail`
--

CREATE TABLE `internpersnoldetail` (
  `uid` int(40) NOT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` bigint(13) NOT NULL,
  `aadhar_no` bigint(12) NOT NULL,
  `pan_card` bigint(10) DEFAULT NULL,
  `gender` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `blood_group` text NOT NULL,
  `father_name` text NOT NULL,
  `father_occupation` text DEFAULT NULL,
  `father_no` bigint(13) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pin_code` bigint(6) NOT NULL,
  `address` varchar(40) NOT NULL,
  `Join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `internprofessionaldetail`
--

CREATE TABLE `internprofessionaldetail` (
  `uid` int(10) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `board` varchar(20) NOT NULL,
  `percent` varchar(20) NOT NULL,
  `passing_year` int(20) NOT NULL,
  `school_marksheet` varchar(200) DEFAULT NULL,
  `hschool_name` varchar(30) NOT NULL,
  `hsboard` varchar(30) NOT NULL,
  `passing_hyear` int(20) NOT NULL,
  `hpercent` varchar(20) NOT NULL,
  `hschool_marksheet` varchar(200) DEFAULT NULL,
  `univercity` varchar(50) DEFAULT NULL,
  `degree` varchar(200) DEFAULT NULL,
  `gpercent` varchar(20) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `g_marksheet` varchar(200) DEFAULT NULL,
  `pgdegree` varchar(200) DEFAULT NULL,
  `pgunivercity` varchar(30) DEFAULT NULL,
  `pgyear` int(20) DEFAULT NULL,
  `pgpercent` varchar(20) DEFAULT NULL,
  `pg_marksheet` varchar(200) DEFAULT NULL,
  `otherdegree` varchar(200) DEFAULT NULL,
  `otherunivercity` varchar(30) DEFAULT NULL,
  `otheryear` int(20) DEFAULT NULL,
  `otherpercent` varchar(20) DEFAULT NULL,
  `other_marksheet` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internprofessionaldetail`
--

INSERT INTO `internprofessionaldetail` (`uid`, `school_name`, `board`, `percent`, `passing_year`, `school_marksheet`, `hschool_name`, `hsboard`, `passing_hyear`, `hpercent`, `hschool_marksheet`, `univercity`, `degree`, `gpercent`, `year`, `g_marksheet`, `pgdegree`, `pgunivercity`, `pgyear`, `pgpercent`, `pg_marksheet`, `otherdegree`, `otherunivercity`, `otheryear`, `otherpercent`, `other_marksheet`) VALUES
(1, '', '', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/'),
(2, '', '', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/'),
(3, '', '', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/'),
(4, 'agoshdeep', '10th mp board', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/'),
(5, 'goverment ', '10th mp board', '86%', 2015, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/'),
(6, 'goverment ', '10th mp board', '86%', 2015, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/');

-- --------------------------------------------------------

--
-- Table structure for table `intern_attendance`
--

CREATE TABLE `intern_attendance` (
  `uid` int(10) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intern_attendance`
--

INSERT INTO `intern_attendance` (`uid`, `attend`, `att_time`) VALUES
(1, 'present', '2021-01-18'),
(2, 'absent', '2021-01-18'),
(6, 'absent', '2021-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `position` varchar(40) NOT NULL,
  `experience` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `skill`, `position`, `experience`) VALUES
(1, 'abc,ski1,,', 'Beginner,', '0-1 month,');

-- --------------------------------------------------------

--
-- Table structure for table `staffpersonaldetail`
--

CREATE TABLE `staffpersonaldetail` (
  `sid` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(30) DEFAULT NULL,
  `aadhar` varchar(40) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  `join_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `sid` int(10) NOT NULL,
  `attend` varchar(30) DEFAULT NULL,
  `att_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`sid`, `attend`, `att_time`) VALUES
(1, 'present', '2021-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `traine_attendance`
--

CREATE TABLE `traine_attendance` (
  `Tid` int(10) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traine_attendance`
--

INSERT INTO `traine_attendance` (`Tid`, `attend`, `att_time`) VALUES
(1, 'absent', '2021-01-18'),
(2, 'absent', '2021-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `tranpersonaldetail`
--

CREATE TABLE `tranpersonaldetail` (
  `Tid` int(40) NOT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` bigint(13) NOT NULL,
  `aadhar_no` bigint(12) NOT NULL,
  `pan_card` bigint(10) DEFAULT NULL,
  `gender` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `blood_group` text NOT NULL,
  `father_name` text NOT NULL,
  `father_occupation` text DEFAULT NULL,
  `father_no` bigint(13) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pin_code` bigint(6) NOT NULL,
  `address` varchar(40) NOT NULL,
  `Join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tranprofessionaldetail`
--

CREATE TABLE `tranprofessionaldetail` (
  `Tid` int(10) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `board` varchar(20) NOT NULL,
  `percent` varchar(20) NOT NULL,
  `passing_year` int(20) NOT NULL,
  `school_marksheet` varchar(200) DEFAULT NULL,
  `hschool_name` varchar(30) NOT NULL,
  `hsboard` varchar(30) NOT NULL,
  `passing_hyear` int(20) NOT NULL,
  `hpercent` varchar(20) NOT NULL,
  `hschool_marksheet` varchar(200) DEFAULT NULL,
  `univercity` varchar(50) DEFAULT NULL,
  `degree` varchar(200) DEFAULT NULL,
  `gpercent` varchar(20) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `g_marksheet` varchar(200) DEFAULT NULL,
  `pgdegree` varchar(200) DEFAULT NULL,
  `pgunivercity` varchar(30) DEFAULT NULL,
  `pgyear` int(20) DEFAULT NULL,
  `pgpercent` varchar(20) DEFAULT NULL,
  `pg_marksheet` varchar(200) DEFAULT NULL,
  `otherdegree` varchar(200) DEFAULT NULL,
  `otherunivercity` varchar(30) DEFAULT NULL,
  `otheryear` int(20) DEFAULT NULL,
  `otherpercent` varchar(20) DEFAULT NULL,
  `other_marksheet` varchar(200) DEFAULT NULL,
  `payment` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tranprofessionaldetail`
--

INSERT INTO `tranprofessionaldetail` (`Tid`, `school_name`, `board`, `percent`, `passing_year`, `school_marksheet`, `hschool_name`, `hsboard`, `passing_hyear`, `hpercent`, `hschool_marksheet`, `univercity`, `degree`, `gpercent`, `year`, `g_marksheet`, `pgdegree`, `pgunivercity`, `pgyear`, `pgpercent`, `pg_marksheet`, `otherdegree`, `otherunivercity`, `otheryear`, `otherpercent`, `other_marksheet`, `payment`) VALUES
(1, '', '', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/', 0),
(2, '', '', '', 0, 'image/', '', '', 0, '', 'image/', '', '', '', '', 'image/', '', '', 0, '', 'image/', '', '', 0, '', 'image/', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`,`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `companydetail`
--
ALTER TABLE `companydetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empeducationdetail`
--
ALTER TABLE `empeducationdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emppersonaldetail`
--
ALTER TABLE `emppersonaldetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `aadhar_number` (`aadhar_number`),
  ADD UNIQUE KEY `pancard` (`pancard`),
  ADD UNIQUE KEY `mobile no.` (`mobile_no.`);

--
-- Indexes for table `internpersnoldetail`
--
ALTER TABLE `internpersnoldetail`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `pan_card` (`pan_card`);

--
-- Indexes for table `internprofessionaldetail`
--
ALTER TABLE `internprofessionaldetail`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `intern_attendance`
--
ALTER TABLE `intern_attendance`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffpersonaldetail`
--
ALTER TABLE `staffpersonaldetail`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `traine_attendance`
--
ALTER TABLE `traine_attendance`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `tranpersonaldetail`
--
ALTER TABLE `tranpersonaldetail`
  ADD PRIMARY KEY (`Tid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `pan_card` (`pan_card`);

--
-- Indexes for table `tranprofessionaldetail`
--
ALTER TABLE `tranprofessionaldetail`
  ADD PRIMARY KEY (`Tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companydetail`
--
ALTER TABLE `companydetail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `empeducationdetail`
--
ALTER TABLE `empeducationdetail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emppersonaldetail`
--
ALTER TABLE `emppersonaldetail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `internpersnoldetail`
--
ALTER TABLE `internpersnoldetail`
  MODIFY `uid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `internprofessionaldetail`
--
ALTER TABLE `internprofessionaldetail`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `intern_attendance`
--
ALTER TABLE `intern_attendance`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staffpersonaldetail`
--
ALTER TABLE `staffpersonaldetail`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `traine_attendance`
--
ALTER TABLE `traine_attendance`
  MODIFY `Tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tranpersonaldetail`
--
ALTER TABLE `tranpersonaldetail`
  MODIFY `Tid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tranprofessionaldetail`
--
ALTER TABLE `tranprofessionaldetail`
  MODIFY `Tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
