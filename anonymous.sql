-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2016 at 11:52 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anonymous`
--

-- --------------------------------------------------------

--
-- Table structure for table `anonymous`
--

CREATE TABLE IF NOT EXISTS `anonymous` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `col_name` text NOT NULL,
  UNIQUE KEY `email` (`email`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anonymous`
--

INSERT INTO `anonymous` (`fname`, `lname`, `email`, `username`, `password`, `col_name`) VALUES
('bcd', 'abc', 'abc@123.com', 'aaa', 'aaa', 'DJ'),
('r', 'ak', 'akash@gmail.com', 'robinsingh', '1111', 'NM'),
('kedia', 'ayush', 'ayushkedia665@gmail.com', 'ayush', '0000', 'DJ'),
('ss', 'b', 'bhavya.cool.216@gmail.com', 'bhavya216', 'aa', 'DJ'),
('shah', 'b', 'bhavyashah56@yahoo.com', '2222', '0000', 'DJ'),
('aaa', 'aaa', 'bhavyashah56@yahoo.com', 'malav', 'aaa', 'DJ'),
('vv', 'vv', 'bhavyashah56@yahoo.com', 'vvv', 'vvv', 'NM'),
('Shah', 'Malav', 'mal@gma.com', 'malav', '123', 'DJ');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `Comm` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Comm`) VALUES
('hiee people'),
('Hey guys'),
('abcd');

-- --------------------------------------------------------

--
-- Table structure for table `comments2`
--

CREATE TABLE IF NOT EXISTS `comments2` (
  `Comm` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments2`
--

INSERT INTO `comments2` (`Comm`) VALUES
('hie'),
('Hey guys'),
('5677');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
