-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2019 at 10:27 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '123', 'admin@gmail.com'),
(2, 'dinesh', '123', 'dinesh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(20) NOT NULL,
  `height` int(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `maritalstatus` varchar(30) NOT NULL,
  `profilecreatedby` varchar(30) NOT NULL,
  `education` varchar(50) NOT NULL,
  `education_sub` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `body_type` varchar(20) NOT NULL,
  `physical_status` varchar(30) NOT NULL,
  `drink` varchar(20) NOT NULL,
  `mothertounge` varchar(30) NOT NULL,
  `colour` varchar(20) NOT NULL,
  `weight` int(10) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `diet` varchar(20) NOT NULL,
  `smoke` varchar(20) NOT NULL,
  `dateofbirth` date NOT NULL,
  `occupation` text NOT NULL,
  `occupation_descr` text NOT NULL,
  `annual_income` varchar(40) NOT NULL,
  `fathers_occupation` varchar(40) NOT NULL,
  `mothers_occupation` varchar(40) NOT NULL,
  `No_bro` int(20) NOT NULL,
  `no_sis` int(20) NOT NULL,
  `aboutme` text NOT NULL,
  `profilecreationdate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cust_id` (`cust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `email`, `age`, `height`, `sex`, `religion`, `caste`, `subcaste`, `district`, `state`, `country`, `maritalstatus`, `profilecreatedby`, `education`, `education_sub`, `firstname`, `lastname`, `body_type`, `physical_status`, `drink`, `mothertounge`, `colour`, `weight`, `blood_group`, `diet`, `smoke`, `dateofbirth`, `occupation`, `occupation_descr`, `annual_income`, `fathers_occupation`, `mothers_occupation`, `No_bro`, `no_sis`, `aboutme`, `profilecreationdate`) VALUES
(1, 1, 'ramesh@gmail.com', '31', 195, 'Male', 'Hindu', 'Pundit', 'sub cast1', 'kanpur', 'UP', 'India', 'Married', 'Son/Daughter', '+2', 'abc', 'ramesh', 'kumar', 'Fat', 'Deaf', 'Yes', 'Hindi', 'Dark', 123, 'O +ve', 'Veg', 'Sometimes', '1994-01-02', 'none', 'crm', '12345', 'service', 'home makere', 1, 1, 'afsgfgdsgg', '2018-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `partnerprefs`
--

DROP TABLE IF EXISTS `partnerprefs`;
CREATE TABLE IF NOT EXISTS `partnerprefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `agemin` int(10) NOT NULL,
  `agemax` int(10) NOT NULL,
  `maritalstatus` varchar(30) NOT NULL,
  `complexion` varchar(20) NOT NULL,
  `height` int(12) NOT NULL,
  `diet` varchar(20) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `caste` varchar(30) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `mothertounge` varchar(30) NOT NULL,
  `education` varchar(30) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  `country` varchar(30) NOT NULL,
  `descr` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `custId` (`cust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(10) NOT NULL,
  `pic1` varchar(50) NOT NULL,
  `pic2` varchar(50) NOT NULL,
  `pic3` varchar(50) NOT NULL,
  `pic4` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cust_id` (`cust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profilestat` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `userlevel` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`profilestat`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `dateofbirth`, `gender`, `userlevel`) VALUES
(1, 0, 'ramesh', '123', 'ramesh@gmail.com', '1998-01-01', 'male', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
