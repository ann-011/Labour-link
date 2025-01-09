-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 05:04 PM
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
-- Table structure for table `job_seekers`
--

CREATE TABLE `job_seekers` (
  `s_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `skills` text DEFAULT NULL,
  `gender` varchar(30) NOT NULL,
  `ban_start_date` datetime DEFAULT NULL,
  `ban_end_date` datetime DEFAULT NULL,
  `permanently_banned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_seekers`
--

INSERT INTO `job_seekers` (`s_id`, `first_name`, `last_name`, `job_title`, `email`, `password`, `dob`, `location`, `hourly_rate`, `created_at`, `phone`, `address`, `skills`, `gender`, `ban_start_date`, `ban_end_date`, `permanently_banned`) VALUES
(1, 'gopika', 'suersh', 'painter', 'gopika12@gmail.com', '$2y$10$OJrZbacZ5UkVVmEodiXCIu5R.PEHeyyoI1BKyHYI9QJVATyO9QkBy', NULL, 'kochi', 100.00, '2024-09-08 07:27:13', '', '', NULL, '', NULL, NULL, 1),
(4, 'gopika', 'suersh', 'painter', 'sureshgopikaal@gmail.com', '$2y$10$.4Sg4h.qyAU49JA4BmeeY.nt09N39tpdLht0GBtirHtusPSYL1UgG', NULL, 'kochi', 100.00, '2024-09-08 07:35:07', '', '', NULL, '', NULL, NULL, 1),
(5, 'hyma', 'suersh', 'carpenter', 'hyma12@gmail.com', '$2y$10$BrZyNSVnvVf.G5GZ7EDvk.qSVE/WsJ9pM6vz9S0F1oWDXn7IMvkWa', NULL, 'kochi', 100.00, '2024-09-08 07:38:38', '', '', NULL, '', NULL, NULL, 0),
(6, 'gouri', 's', 'interior', 'gouri@gmail.com', '$2y$10$qQTSF2SwvgY536lnv9kyieBxv1J8QpWIjbXyUJxd.4XRNFKDLN5G.', NULL, 'idukki', 150.00, '2024-09-08 07:40:23', '', '', NULL, '', NULL, NULL, 0),
(7, 'liana', 's', 'tailor', 'liana@gmail.com', 'liana@12', NULL, 'palakkad', 100.00, '2024-09-08 07:55:05', '', '', NULL, '', NULL, NULL, 0),
(8, 'liana', 's', 'tailor', 'liana1@gmail.com', 'liana@12', NULL, 'palakkad', 100.00, '2024-09-08 07:55:54', '', 'nmnb', 'bn', '', NULL, NULL, 0),
(9, 'gopika', 'suersh', 'carpenter', 'gopikasuresh@gmail.com', 'gopika212', '1999-08-18', 'thos', 150.00, '2024-09-18 16:15:30', '7592945712', '0', 'kj', 'female', NULL, NULL, 0),
(10, 'gopika', 'suersh', 'carpenter', 'gopikasuresh12@gmail.com', 'gopika@1', '1999-08-18', 'thos', 150.00, '2024-09-18 16:16:53', '7592945712', 'al', 'kj', 'female', NULL, NULL, 0),
(11, 'gowrika', 'suresh', 'tailor', 'gowrika12@gmail.com', 'gowrika@1', '2004-01-05', 'nedumkandam', 500.00, '2024-09-22 16:30:13', '8921038696', '0', 'bbhhb', 'female', NULL, NULL, 0),
(12, 'chithra', 'saji', 'interior', 'chithra1@gmail.com', 'chithra@1', '1995-10-14', 'vengaloor', 550.00, '2024-09-22 22:55:09', '9961002591', '0', 'njnjnj', 'female', NULL, NULL, 0),
(14, 'chithra', 'saji', 'interior', 'hymas743@gmail.com', 'chithra@1', '1995-10-14', 'vengaloor', 550.00, '2024-09-22 23:03:43', '9961002591', '0', 'njnjnj', 'female', NULL, NULL, 0),
(15, 'gopika', 's', 'interior', 'sureshg0pikaal@gmail.com', 'gopika@2003', '1997-10-14', 'vengaloor', 560.00, '2024-09-23 00:11:02', '9951002591', '0', 'njnjnjjnjnj', 'female', NULL, NULL, 0),
(16, 'suresh', 's', 'interior', 'avsuresh877@gmail.com', 'suresh@12', '1997-10-14', 'vengaloor', 560.00, '2024-09-23 00:13:31', '9951002591', '0', 'njnjnjjnjnj', 'female', NULL, NULL, 0),
(17, 'gopika', 's', 'plumber', 'augustineshaji007@gmail.com', '123', '1999-05-01', 'bhbh', 410.00, '2024-09-23 05:08:44', '4785210378', '0', 'bjj', 'male', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job_seekers`
--
ALTER TABLE `job_seekers`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_seekers`
--
ALTER TABLE `job_seekers`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
