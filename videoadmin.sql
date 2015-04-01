-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2014 at 06:45 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `videoadmin`
--
CREATE DATABASE IF NOT EXISTS `videoadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `videoadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Sales'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'medical'),
(5, 'car'),
(6, 'Honda'),
(7, 'BMW'),
(8, 'CIVIC'),
(9, 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE IF NOT EXISTS `eventlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `eventlog`
--

INSERT INTO `eventlog` (`id`, `event`, `user`, `description`, `timestamp`) VALUES
(1, 1, 1, 'Event Created', '2014-05-12 10:46:24'),
(2, 1, 1, 'Event Edited', '2014-05-12 10:47:43'),
(3, 1, 1, 'Event Category ,Topic updated', '2014-05-12 11:16:19'),
(4, 1, 1, 'Event Category ,Topic updated', '2014-05-12 11:16:51'),
(5, 3, 3, 'Event Edited', '2014-08-08 08:45:13'),
(6, 3, 3, 'Mall Edited', '2014-08-08 08:47:08'),
(7, 3, 3, 'Mall Edited', '2014-08-08 08:47:32'),
(8, 3, 3, 'Mall Edited', '2014-08-08 08:52:55'),
(9, 3, 3, 'City Edited', '2014-08-08 10:00:26'),
(10, 3, 3, 'City Edited', '2014-08-08 10:01:10'),
(11, 4, 4, 'City Edited', '2014-08-08 10:03:23'),
(12, 8, 8, 'City Edited', '2014-08-09 05:28:14'),
(13, 8, 8, 'Location Edited', '2014-08-09 05:30:25'),
(14, 4, 4, 'Location Edited', '2014-08-09 05:30:40'),
(15, 11, 11, 'Location Edited', '2014-08-09 05:49:23'),
(16, 8, 8, 'Location Edited', '2014-08-09 05:50:01'),
(17, 3, 3, 'Brand Edited', '2014-08-09 06:32:06'),
(18, 3, 3, 'Brand Edited', '2014-08-09 06:32:26'),
(19, 3, 3, 'Brand Edited', '2014-08-09 09:57:03'),
(20, 8, 8, 'Location Edited', '2014-08-11 05:14:59'),
(21, 1, 1, 'Mall Edited', '2014-08-11 09:52:00'),
(22, 32, 32, 'Brand Edited', '2014-08-19 05:28:20'),
(23, 32, 32, 'Brand Edited', '2014-08-19 05:28:55'),
(24, 1, 1, 'City Edited', '2014-08-21 08:34:32'),
(25, 12, 12, 'Location Edited', '2014-08-21 08:36:11'),
(26, 2, 2, 'Mall Edited', '2014-08-21 10:40:28'),
(27, 2, 2, 'Mall Edited', '2014-08-21 10:40:59'),
(28, 4, 4, 'Mall Edited', '2014-08-21 11:45:56'),
(29, 4, 4, 'Mall Edited', '2014-08-21 11:46:36'),
(30, 4, 4, 'Mall Edited', '2014-08-21 11:47:39'),
(31, 4, 4, 'Mall Edited', '2014-08-21 11:47:55'),
(32, 4, 4, 'Mall Edited', '2014-08-21 11:48:19'),
(33, 13, 13, 'Location Edited', '2014-08-21 12:12:46'),
(34, 13, 13, 'Location Edited', '2014-08-21 12:13:09'),
(35, 8, 8, 'Location Edited', '2014-08-22 05:52:40'),
(36, 6, 6, 'Mall Edited', '2014-09-11 10:30:43'),
(37, 2, 2, 'Mall Edited', '2014-09-11 10:39:43'),
(38, 1, 1, 'Mall Edited', '2014-09-11 10:40:17'),
(39, 6, 6, 'Mall Edited', '2014-09-11 10:48:17'),
(40, 1, 1, 'Mall Edited', '2014-09-18 08:22:15'),
(41, 1, 1, 'Mall Edited', '2014-09-18 08:22:30'),
(42, 1, 1, 'Mall Edited', '2014-09-18 08:22:45'),
(43, 7, 7, 'Mall Edited', '2014-09-25 05:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Users', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(4, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(7, 'Category', '', '', 'site/viewcategory', 1, 0, 1, 3, 'icon-book');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(4, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `facebookuserid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phoneno` varchar(50) NOT NULL,
  `google` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `deletestatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `password`, `email`, `website`, `contact`, `address`, `city`, `pincode`, `dob`, `accesslevel`, `timestamp`, `facebookuserid`, `status`, `photo`, `phoneno`, `google`, `state`, `country`, `deletestatus`) VALUES
(1, 'wohlig', '', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', '', '233232', 'dadar', 'Mumbai', 322323, '1991-01-08', 1, '0000-00-00 00:00:00', '0', 1, NULL, '', '', '', '', 1),
(4, 'pratik', 'shah', '0cb2b62754dfd12b6ed0161d4b447df7', 'pratik@wohlig.com', '', '8080209455', 'mulund', 'Mumbai', 400080, '1991-07-01', 1, '2014-05-12 06:52:44', '', 1, NULL, '', '', '', '', 1),
(5, 'wohlig123', 'tech', 'wohlig123', 'wohlig1@wohlig.com', 'www.wohlig.com', '8989898989', 'abcdefg', 'mumbai', 200001, '1991-01-08', 1, '2014-05-12 06:52:44', '2', 1, NULL, '', '', '', '', 1),
(6, 'wohlig1', 'tech', 'a63526467438df9566c508027d9cb06b', 'wohlig2@wohlig.com', 'wohlig.com', '8989898989', 'abcdefg', 'mumbai', 200001, '1991-01-08', 1, '2014-05-12 06:52:44', '2', 1, NULL, '', '', '', '', 1),
(7, 'Avinash', 'Ghare', '7b0a80efe0d324e937bbfc7716fb15d3', 'avinash@wohlig.com', 'demo', '9876543210', 'karjat raigad', 'karjat', 410201, '1991-06-05', 1, '2014-10-17 06:22:29', '1', 1, NULL, '0222898989', 'yutvbnjy', 'Maharashtra', 'India', 1),
(8, 'demo', 'Ghare', 'e10adc3949ba59abbe56e057f20f883e', 'avinash@wohlig.com,jagruti@wohlig.com', '0', '2232', 'abcdefg', 'Mumbai', 4544554, '1970-01-01', 1, '2014-11-15 12:05:52', '0', 1, NULL, '233432', '22332', 'Maharashtra', 'India', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onuser` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `fromuser`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 23, 2, 'User Created', '2014-10-07 06:46:55'),
(7, 24, 2, 'User Created', '2014-10-07 06:48:25'),
(8, 25, 2, 'User Created', '2014-10-07 06:49:04'),
(9, 26, 2, 'User Created', '2014-10-07 06:49:16'),
(10, 27, 2, 'User Created', '2014-10-07 06:52:18'),
(11, 28, 2, 'User Created', '2014-10-07 06:52:45'),
(12, 29, 2, 'User Created', '2014-10-07 06:53:10'),
(13, 30, 2, 'User Created', '2014-10-07 06:53:33'),
(14, 31, 2, 'User Created', '2014-10-07 06:55:03'),
(15, 32, 2, 'User Created', '2014-10-07 06:55:33'),
(16, 33, 2, 'User Created', '2014-10-07 06:59:32'),
(17, 34, 2, 'User Created', '2014-10-07 07:01:18'),
(18, 35, 2, 'User Created', '2014-10-07 07:01:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 07:04:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 07:05:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 07:05:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 07:06:03'),
(23, 7, 6, 'User Created', '2014-10-17 06:22:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 06:32:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 06:32:37'),
(26, 8, 6, 'User Created', '2014-11-15 12:05:52');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
