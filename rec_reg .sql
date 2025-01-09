-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 08:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labourlink`
--

-- --------------------------------------------------------

--
-- Table structure for table `rec_reg`
--

CREATE TABLE `rec_reg` (
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pin` int(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `rec_id` int(30) NOT NULL,
  `permanently_banned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec_reg`
--

INSERT INTO `rec_reg` (`name`, `email`, `password`, `address`, `pin`, `city`, `rec_id`, `permanently_banned`) VALUES
('suresh', 'suresh1@gmail.com', 'suresh@1', 'Alackal h', 685605, 'Thodupuzha', 0, 0),
('Ann Mariya Rajan', 'annmariyarajan1@gmai', '$2y$10$3', 'Oorakattil (h)', 682308, 'Thiruvaniyoor ', 1, 0),
('anu', 'anu@gmail.com', '$2y$10$1', 'idukki', 789654, 'idukki', 2, 0),
('augustine', 'augustine22@gmail.co', '$2y$10$L', 'edad', 45698, 'idukki', 3, 0),
('gopika suresh', 'gopika123@gmail.com', '$2y$10$S', 'kumaramangalam', 234765, 'para', 4, 0),
('gopika suresh', 'gopika@2003', '$2y$10$Q', 'Alackal h', 685605, 'Thodupuzha', 5, 0),
('gopika suresh', 'gopika@gmail.com', '$2y$10$5', 'Alackal h', 685605, 'thodupuzha', 6, 0),
('m,.', 'hyma@gmail.com', '$2y$10$V', 'lkjhb', 147852, 'Thodupuzha', 7, 0),
('Jinix chacko', 'jinix@gmail.com', '$2y$10$2', 'vellor(H)', 234567, 'odacacity', 8, 0),
('liana', 'liana@gmail.com', '$2y$10$x', 'malik manzil', 456, 'jn', 9, 0),
('Basil Rajan', 'rajan@gmail.com', '$2y$10$5', 'Oorakattil (h)', 682308, 'kuppethzham', 10, 0),
('gopika suresh', 'stea@gmail.com', '$2y$10$C', 'kjnhbgv', 147852, 'thodupuzha', 11, 0),
('steffy', 'steffy@gmail.com', '$2y$10$B', 'vellamattom', 25686, 'mariapuram', 12, 0),
('suresh', 'suresh@gmail.com', '$2y$10$p', 'ghbnjkm', 147852, 'kijhugytf', 13, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rec_reg`
--
ALTER TABLE `rec_reg`
  ADD PRIMARY KEY (`rec_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
