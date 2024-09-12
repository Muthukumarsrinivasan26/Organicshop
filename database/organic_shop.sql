-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2024 at 03:55 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `organic_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`id`, `username`, `name`, `Description`, `Amount`, `Type`, `image`) VALUES
(1, 'ram', 'Basmathi', 'Rice husks and straw are used as biomass for producing biofuel and electricity', '100', 'Rice', 'p1p3p2Uraddal_1kg-180_1.png'),
(2, 'ram', 'Ponni', 'Rice husks and straw are used as biomass for producing biofuel and electricity', '45', 'Rice', 'p2p2Blackchenna_500g-100_1.png'),
(3, 'ram', 'Seeragasamba', 'Rice husks and straw are used as biomass for producing biofuel and electricity', '200', 'Rice', 'p3Channa_dal_1kg-150500g-75_1.png'),
(4, 'jani', 'Moondal', 'very useful for humans', '80', 'dals', 'p4p1p1Toordal.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `email`, `mobile`, `address`, `district`, `password`, `confirmpassword`) VALUES
(1, 'sam', 'sam@gmail.com', 9677874082, 'chatiram', 'Trichy', '1234', '1234'),
(2, 'kishore', 'kishore@gmail.com', 1234567898, '234566', 'chennai', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `pid` int(40) NOT NULL,
  `contactnumber` bigint(10) NOT NULL,
  `productname` varchar(20) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `totalamount` varchar(40) NOT NULL,
  `address` varchar(225) NOT NULL,
  `district` varchar(40) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `retailer`, `pid`, `contactnumber`, `productname`, `Amount`, `quantity`, `totalamount`, `address`, `district`, `status`) VALUES
(6, 'kishore', 'jani', 4, 1234567898, 'Moondal', '80', '2', '160', '234566', 'chennai', 0),
(7, 'kishore', 'jani', 4, 1234567898, 'Moondal', '80', '7', '560', '234566', 'chennai', 0),
(8, 'sam', 'jani', 4, 9677874082, 'Moondal', '80', '4', '320', 'chatiram', 'Trichy', 0),
(9, 'sam', 'jani', 4, 9677874082, 'Moondal', '80', '4', '320', 'chatiram', 'Trichy', 0),
(11, 'sam', 'ram', 1, 9677874082, 'Basmathi', '100', '4', '400', 'chatiram', 'Trichy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `retailer_reg`
--

CREATE TABLE `retailer_reg` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `district` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retailer_reg`
--

INSERT INTO `retailer_reg` (`id`, `username`, `email`, `mobile`, `address`, `district`, `password`, `confirmpassword`, `status`) VALUES
(1, 'ram', 'ram@gmail.com', 9677874082, 'chatiram', 'Trichy', '1234', '1234', 1),
(2, 'jani', 'jan@gmail.com', 7689543210, 'trichy', 'trichy', '1234', '1234', 1);
