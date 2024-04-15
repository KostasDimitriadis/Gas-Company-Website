-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 07:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `name` varchar(64) NOT NULL,
  `telephone` varchar(64) NOT NULL,
  `department` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`name`, `telephone`, `department`, `email`, `subject`, `message`) VALUES
('DIMITRIADIS KONSTANTINO', '6943067566', 'department2', 'kdimitriadis2121@gmail.c', 'adfsk', 'xzfd'),
('xzczxc', '23432434', 'department2', 'kdimitriadis2121@gmail.c', 'jsajj', 'sajsja'),
('user9', '6974491918', 'department1', 'kdimitriadis2121@gmail.c', 'sadsad', 'saddsa'),
('STRATOS', '69696969696', 'Τμήμα Πωλήσεων', 'STRATOOOSOSO@GMAIL.COM', 'DSDFSDFDSDSFDSFU', 'EEEEE'),
('dsfsdfsdf', '54654543543', 'Τμήμα Βλαβών', 'kdimitriadis222121@gmail.com', 'fdgdfgdfgg', 'fdgfdgfdgrdg'),
('dfsdfdsf', '4565465', 'Τμήμα Υποστήριξης', 'strato2s@gmail.com', 'dfsddsgsdgdsg', 'sfdsffsdfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `username` varchar(24) NOT NULL,
  `name` varchar(24) NOT NULL,
  `email` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`username`, `name`, `email`) VALUES
('user1', 'user1', 'user1@gmail.com'),
('user2', 'user2', 'user2@gmail.com'),
('user3', 'user3', 'user3@gmail.com'),
('user4', 'user4', 'user4@gmail.com'),
('user5', 'user5', 'user5@gmail.com'),
('user9', 'user9', 'user9@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
