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
-- Table structure for table `seeker_complaints`
--

CREATE TABLE `seeker_complaints` (
  `complaint_id` int(11) NOT NULL,
  `complainer_email` varchar(255) NOT NULL,
  `complainer_role` enum('seeker','recruiter') NOT NULL,
  `complained_against_email` varchar(255) NOT NULL,
  `complaint` text NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `date_submitted` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seeker_complaints`
--

INSERT INTO `seeker_complaints` (`complaint_id`, `complainer_email`, `complainer_role`, `complained_against_email`, `complaint`, `rating`, `date_submitted`) VALUES
(1, 'seeker@example.com', 'seeker', 'recruiter@example.com', 'Late response to my application.', 3, '2024-09-22 20:59:47'),
(2, 'recruiter@example.com', 'recruiter', 'seeker@example.com', 'Unprofessional behavior.', 4, '2024-09-22 20:59:47'),
(3, 'gopikasuresh12@gmail.com', 'seeker', 'steffy@gmail.com', 'poor salary', 2, '2024-09-22 21:12:30'),
(4, 'gopikasuresh12@gmail.com', 'seeker', 'steffy@gmail.com', 'poor salary', 2, '2024-09-22 21:14:29'),
(5, 'gopikasuresh12@gmail.com', 'seeker', 'steffy@gmail.com', 'bbhbhbh', 1, '2024-09-22 21:28:01'),
(6, 'gopikasuresh12@gmail.com', 'seeker', 'steffy@gmail.com', 'bbhbhnn', 1, '2024-10-16 10:22:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seeker_complaints`
--
ALTER TABLE `seeker_complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seeker_complaints`
--
ALTER TABLE `seeker_complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
