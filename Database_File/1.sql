-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 18:42 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solid`
--



--
-- Table structure for table `public_messages`
--

CREATE TABLE `public_messages` (
  `Msg_ID` int(11) NOT NULL,
  `Sender` tinytext NOT NULL,
  `Name` tinytext NOT NULL,
  `Message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_messages`
--

INSERT INTO `public_messages` (`Msg_ID`, `Sender`, `Name`, `Message`, `date`) VALUES
(1, 'Peter','Peter', 'PeterDonk is here', '2017-04-13 01:26:02'),
(2, 'Peter','Peter','Hellow All', '2017-05-04 00:25:39'),
(3, 'priscilla','priscilla', 'priscilla is also here', '2017-05-05 22:37:05'),
(4, 'priscilla','priscilla','Hellow All', '2017-05-08 22:37:15');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`ID`, `first_name`, `last_name`, `status`, `Time`) VALUES
(1, 'peter', 'Donkor', 'online', '2017-06-14 22:35:12'),
(2, 'john', 'Doe', 'online', '2017-10-22 10:21:40'),
(3, 'peter', 'donk', 'offline', '2017-10-22 10:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `Users_ID` int(11) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Profile_Picture` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`Users_ID`, `user_fname`, `user_lname`, `Password`, `Profile_Picture`, `date`) VALUES
(1, 'Peter', 'Donkor', 'Donk', 'IMG_100887.jpg', '2017-04-13 01:24:56'),
(2, 'John', 'Doe', 'Doe', '', '2017-04-21 10:14:17');

--
-- Indexes for dumped tables
--



--
-- Indexes for table `public_messages`
--
ALTER TABLE `public_messages`
  ADD PRIMARY KEY (`Msg_ID`);



--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`Users_ID`);

--
-- AUTO_INCREMENT for dumped tables
--


--
-- AUTO_INCREMENT for table `public_messages`
--
ALTER TABLE `public_messages`
  MODIFY `Msg_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `Users_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
