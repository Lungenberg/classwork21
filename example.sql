-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 07:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerNumber` int(11) DEFAULT NULL,
  `customerName` char(1) DEFAULT NULL,
  `contactLastName` char(1) DEFAULT NULL,
  `contactFirstName` char(1) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `addressLine1` char(1) DEFAULT NULL,
  `addressLine2` char(1) DEFAULT NULL,
  `city` char(1) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  `postalCode` char(1) DEFAULT NULL,
  `country` char(1) DEFAULT NULL,
  `salesRepEmployeeNumber` char(1) DEFAULT NULL,
  `creditLimit` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `officeCode` int(11) DEFAULT NULL,
  `city` char(1) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `addressLine1` char(1) NOT NULL,
  `addressLine2` char(1) NOT NULL,
  `state` char(1) DEFAULT NULL,
  `country` char(1) DEFAULT NULL,
  `postalCode` int(11) NOT NULL,
  `territory` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` int(11) DEFAULT NULL,
  `productName` char(1) DEFAULT NULL,
  `productLine` char(1) DEFAULT NULL,
  `productScale` int(11) DEFAULT NULL,
  `productVendor` char(1) DEFAULT NULL,
  `productDescription` char(1) DEFAULT NULL,
  `quantityInStock` int(11) DEFAULT NULL,
  `buyPrice` int(11) DEFAULT NULL,
  `MSRP` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `customerNumber` (`customerNumber`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `productCode` (`productCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `offices` (`phone`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productCode`) REFERENCES `customers` (`customerNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
