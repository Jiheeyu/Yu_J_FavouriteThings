-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 15, 2020 at 04:13 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Img` varchar(50) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`ID`, `Title`, `Img`, `Description`) VALUES
(1, 'My dog', 'mydog.jpg', '\" One of my favorite things is a dog \r\nbecause I have my dog who is ‘Mi Nam’.  \r\n‘Mi Nam’ means good-looking in Korean.\r\nShe is very adorable and nice. \r\nI love to play and go for a walk with her. Her breed is mixed, so she has special looking which she has four different colors such as black, grey, white, brown. \r\nI love my lovely \'Mi Nam\' and doggies! \"'),
(2, 'My trip', 'mytrip.jpg', '“ Second thing is I love to travel. \r\nI have been to many different provinces in Korea. \r\nAlso, I have been to Thailand, Vietnam, Twain, Laos. It was really fun to look around various architectures, food, landmarks, and cultures. \r\nAs I was studying in Canada, I have been Ottawa, Toronto, Quebec, and Montreal with one of my Korean friends. \r\nIt is really fascinating. \r\nI am looking forward to being able to travel soon. “'),
(3, 'My favorite food', 'myfood.jpg', '“ I love to explore delicious food restaurants. I love to have fusion food because it is a sort of new food. Especially, I’m a big fan of Asian food. \r\nI also like spaghetti, pizza and so on. \r\nI love just all kind of tasty food “');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
