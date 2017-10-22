-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2017 at 02:23 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE IF NOT EXISTS `child` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CHECK_IN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_OUT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE IF NOT EXISTS `other` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CHECK_IN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_OUT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `parent1`
--

CREATE TABLE IF NOT EXISTS `parent1` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_IN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_OUT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `parent2`
--

CREATE TABLE IF NOT EXISTS `parent2` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_IN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_OUT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `pa_cps_supervisor`
--

CREATE TABLE IF NOT EXISTS `pa_cps_supervisor` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CHECK_IN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_OUT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `relative_friend_transport`
--

CREATE TABLE IF NOT EXISTS `relative_friend_transport` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CHECK_IN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_OUT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `vid`
--

CREATE TABLE IF NOT EXISTS `vid` (
  `DATE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `VID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`DATE`,`VID`,`NAME`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`DATE`,`VID`,`NAME`);

--
-- Indexes for table `parent1`
--
ALTER TABLE `parent1`
  ADD PRIMARY KEY (`DATE`,`VID`);

--
-- Indexes for table `parent2`
--
ALTER TABLE `parent2`
  ADD PRIMARY KEY (`DATE`,`VID`);

--
-- Indexes for table `pa_cps_supervisor`
--
ALTER TABLE `pa_cps_supervisor`
  ADD PRIMARY KEY (`DATE`,`VID`);

--
-- Indexes for table `relative_friend_transport`
--
ALTER TABLE `relative_friend_transport`
  ADD PRIMARY KEY (`DATE`,`VID`,`NAME`);

--
-- Indexes for table `vid`
--
ALTER TABLE `vid`
  ADD PRIMARY KEY (`DATE`,`VID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
