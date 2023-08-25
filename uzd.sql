-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 12:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uzd`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `name`, `text`, `date`, `parent`) VALUES
(1, 'martynas@email.com', 'Martynas', 'text text', '2023-08-25', 0),
(2, 'martynas2@email.com', 'Martynas V', 'antras tekstas', '2023-08-25', 0),
(5, 'martis@a.com', 'aaaa', 'replyyyyy', '2023-08-25', 1),
(10, 'aaaa', 'replyyyy', 'aaaaa', '2023-08-25', 2),
(11, 'aaa', 'ppppp', 'aaaabbbbbbbbbbbb', '2023-08-25', 0),
(12, 'a', 'a', 'a', '2023-08-25', 11),
(13, 'a', 'a', 'aa', '2023-08-25', 11),
(14, 'ss', 'ss', 'ss', '2023-08-25', 1),
(15, 'dd', 'ddd', 'dd', '2023-08-25', 0),
(16, 'dd', 'dd', 'dd', '2023-08-25', 1),
(18, 'aaa', 'aa', 'aaa', '2023-08-25', 1),
(19, 'fff', 'ffff', 'fff', '2023-08-25', 1),
(20, 'martisss@a.a', 'testuojuvel', 'aaaa', '2023-08-25', 0),
(21, 'martisss@a.a', 'testuojuvel', 'aaaa', '2023-08-25', 0),
(22, 'martisss@a.a', 'testuojuvel', 'fffff', '2023-08-25', 1),
(23, 'martisss@a.a', 'testuojuvel', 'fffff', '2023-08-25', 1),
(24, 'martisss@a.a', 'testuojuvel', 'fffff', '2023-08-25', 1),
(25, 'martisss@a.a', 'testuojuvel', 'ssss', '2023-08-25', 0),
(26, 'xmartissx@gmail.com', 'ss', 'ss\";', '2023-08-25', 0),
(27, 'fffss@.', 'fff', 'ffff', '2023-08-25', 0),
(28, 'martisss@a.a', 'testuojuvel', 'ghgk', '2023-08-25', 0),
(29, 'martisss@a.a', 'testuojuvel', 'ddd', '2023-08-25', 0),
(31, 'martisss@a.a', 'priespaskutinis', 'priespaskutinis1', '2023-08-25', 30),
(32, 'martisss@a.a', 'aaaaa', 'aaaa', '2023-08-25', 30),
(33, 'aaa@.', 'Paskutinis', 'aaa', '2023-08-25', 0),
(34, 'xmartissx@gmail.com', 'antras', 'aaa', '2023-08-25', 33),
(35, 'xmartissx@gmail.com', 'pirmas', 'aaa', '2023-08-25', 33),
(36, 'xmartissx@gmail.com', 'antras', 'ddddd', '2023-08-25', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
