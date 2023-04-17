-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 17, 2023 at 05:08 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `media` varchar(150) NOT NULL,
  `Genre` varchar(150) NOT NULL,
  `Review` varchar(150) NOT NULL,
  `Skills` varchar(150) NOT NULL,
  `Artist_role` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `media`, `Genre`, `Review`, `Skills`, `Artist_role`) VALUES
(1, 'UdhayamNH4 ', 'Action, Thriller', '8', ' film making, acting debut,', 'Hero'),
(2, 'Maari 2', 'Action, Comedy', '7', 'Action, comedy, dance', 'Hero'),
(3, 'Leo', 'Action, Comedy, Thriller', '9', 'Action, Comedy, Dance, Fight', 'Hero'),
(4, 'Kalugu', 'Comedy, Thriller', '8', 'Action, comedy', 'Hero'),
(5, 'Anbe Sivam', 'Adventure, Comedy, Drama', '10', 'Actor, comedian, director, dancer, musician', 'Hero');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
