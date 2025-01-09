-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 08:48 AM
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
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `mail` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`mail`, `password`) VALUES
('0', '0'),
('0', '0'),
('admin@gmail.com', 'admin@12');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `application_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `application_date` date NOT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `job` varchar(50) NOT NULL,
  `experience` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`name`, `email`, `phone`, `job`, `experience`) VALUES
('liana', 'liana12@gmail.com', '940029321', 'painter', 'fghjkl'),
('liana', 'liana1@gmail.com', '7592945712', 'painter', 'gvhbjnkm'),
('liana', 'liana1@gmail.com', '940029321', 'painter', 'ghb'),
('gopika suresh', 'gopikasuresh12@gmail.com', '7592945712', 'electrician', 'mmkkm'),
('gopika suresh', 'gopikasuresh12@gmail.com', '7592945712', 'plumber', 'knn');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `complainer_email` varchar(255) DEFAULT NULL,
  `complainer_role` varchar(50) DEFAULT NULL,
  `complained_against_email` varchar(255) DEFAULT NULL,
  `complaint` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complainer_email`, `complainer_role`, `complained_against_email`, `complaint`, `rating`, `created_at`) VALUES
(1, 'michael@example.com', 'jobseeker', 'recruiter1@example.com', 'Misleading job description.', 1, '2024-08-21 23:30:00'),
(2, 'pam@example.com', 'jobseeker', 'recruiter2@example.com', 'No response after applying.', 2, '2024-08-22 00:45:00'),
(3, 'jim@example.com', 'jobseeker', 'recruiter3@example.com', 'Confusing application process.', 1, '2024-08-22 22:20:00'),
(4, 'dwight@example.com', 'jobseeker', 'recruiter4@example.com', 'Inappropriate job requirements.', 3, '2024-08-23 03:00:00'),
(5, 'angela@example.com', 'jobseeker', 'recruiter5@example.com', 'Unclear salary details.', 2, '2024-08-23 23:15:00'),
(6, 'ryan@example.com', 'jobseeker', 'recruiter6@example.com', 'Unprofessional recruiter behavior.', 1, '2024-08-24 02:30:00'),
(7, 'kelly@example.com', 'jobseeker', 'recruiter7@example.com', 'Late interview scheduling.', 2, '2024-08-24 05:00:00'),
(8, 'toby@example.com', 'jobseeker', 'recruiter8@example.com', 'No feedback after interview.', 3, '2024-08-24 22:10:00'),
(9, 'stanley@example.com', 'jobseeker', 'recruiter9@example.com', 'Inaccurate job location.', 2, '2024-08-25 00:45:00'),
(10, 'phyllis@example.com', 'jobseeker', 'recruiter10@example.com', 'Non-responsive to emails.', 1, '2024-08-25 21:25:00'),
(11, 'oscar@example.com', 'jobseeker', 'recruiter11@example.com', 'Ambiguous job role.', 2, '2024-08-25 23:30:00'),
(12, 'kevin@example.com', 'jobseeker', 'recruiter12@example.com', 'Delayed hiring process.', 3, '2024-08-26 03:50:00'),
(13, 'creed@example.com', 'jobseeker', 'recruiter13@example.com', 'Job already filled but still listed.', 1, '2024-08-26 22:15:00'),
(14, 'meredith@example.com', 'jobseeker', 'recruiter14@example.com', 'Inadequate job details.', 2, '2024-08-27 00:40:00'),
(15, 'jan@example.com', 'jobseeker', 'recruiter15@example.com', 'Poor communication during the hiring process.', 1, '2024-08-27 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_seeker`
--

CREATE TABLE `complaint_seeker` (
  `complaint_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `complaint_text` text NOT NULL,
  `date_submitted` datetime DEFAULT current_timestamp(),
  `status` enum('Pending','Resolved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `application_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `application_date` datetime DEFAULT current_timestamp(),
  `seeker_email` varchar(255) NOT NULL,
  `job_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`application_id`, `job_title`, `application_date`, `seeker_email`, `job_id`) VALUES
(1, '\" . urlencode($row[', '2024-09-08 22:35:58', '', 0),
(2, '\" . urlencode($row[', '2024-09-08 22:36:13', '', 0),
(3, '\" . urlencode($row[', '2024-09-08 22:36:54', '', 0),
(4, '\" . urlencode($row[', '2024-09-08 22:44:24', '', 0),
(5, '\" . urlencode($row[', '2024-09-09 10:43:49', '', 0),
(6, '', '2024-09-22 17:02:45', 'gopikasuresh12@gmail.com', 0),
(7, '', '2024-09-22 17:04:54', 'gopikasuresh12@gmail.com', 0),
(8, '', '2024-09-22 17:14:35', 'gopikasuresh12@gmail.com', 1),
(9, '', '2024-09-22 17:14:52', 'gopikasuresh12@gmail.com', 3),
(10, '', '2024-09-22 21:32:11', 'gopikasuresh12@gmail.com', 2),
(11, '', '2024-09-23 10:03:28', 'gopikasuresh12@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `job_postings`
--

CREATE TABLE `job_postings` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `skills_required` text NOT NULL,
  `openings` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `hours` int(11) NOT NULL,
  `wage` decimal(10,2) NOT NULL,
  `posted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_postings`
--

INSERT INTO `job_postings` (`job_id`, `job_title`, `description`, `location`, `skills_required`, `openings`, `date_time`, `hours`, `wage`, `posted_by`) VALUES
(1, 'company employee', 'employee', 'vetickal', 'shifts', 2, '2024-08-17 10:08:00', 2, 600.00, 'sheeja@gmail.com'),
(2, 'painter', 'interior', 'kochi', 'interior design', 3, '2024-08-11 10:13:00', 8, 500.00, 'anu@gmail.com'),
(3, 'teacher', 'preschool teacher', 'adimali', 'handle students', 3, '2024-08-24 10:14:00', 5, 5000.00, 'anu@gmail.com'),
(4, 'carpenter', 'hbjhjb', 'palakkad', 'bhjh', 5, '2024-09-25 21:10:00', 5, 500.00, 'suresh1@gmail.com');

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

-- --------------------------------------------------------

--
-- Table structure for table `one_star_ratings`
--

CREATE TABLE `one_star_ratings` (
  `id` int(11) NOT NULL,
  `complained_against_email` varchar(255) DEFAULT NULL,
  `one_star_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `one_star_ratings`
--

INSERT INTO `one_star_ratings` (`id`, `complained_against_email`, `one_star_count`) VALUES
(1, 'recruiter1@example.com', 5),
(2, 'recruiter2@example.com', 3),
(3, 'recruiter3@example.com', 4),
(4, 'recruiter4@example.com', 2),
(5, 'recruiter5@example.com', 6),
(6, 'recruiter6@example.com', 7),
(7, 'recruiter7@example.com', 3),
(8, 'recruiter8@example.com', 5),
(9, 'recruiter9@example.com', 4),
(10, 'recruiter10@example.com', 3),
(11, 'recruiter11@example.com', 6),
(12, 'recruiter12@example.com', 5),
(13, 'recruiter13@example.com', 4),
(14, 'recruiter14@example.com', 7),
(15, 'recruiter15@example.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_reviews`
--

CREATE TABLE `recruiter_reviews` (
  `review_id` int(11) NOT NULL,
  `rec_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review_text` text DEFAULT NULL,
  `job_performance_rating` int(11) DEFAULT NULL CHECK (`job_performance_rating` >= 1 and `job_performance_rating` <= 5),
  `salary_rating` int(11) DEFAULT NULL CHECK (`salary_rating` >= 1 and `salary_rating` <= 5),
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruiter_reviews`
--

INSERT INTO `recruiter_reviews` (`review_id`, `rec_id`, `rating`, `review_text`, `job_performance_rating`, `salary_rating`, `review_date`) VALUES
(1, NULL, 2, 'nj', 2, 2, '2024-09-19 06:07:47'),
(2, NULL, 2, 'nj', 2, 2, '2024-09-19 06:08:23'),
(3, NULL, 2, 'kjjknnj', 5, 2, '2024-09-19 06:14:35'),
(4, NULL, 2, 'kjjknnj', 5, 2, '2024-09-19 06:15:51'),
(5, NULL, 2, 'kjjknnj', 5, 2, '2024-09-19 06:15:55'),
(6, 1, 2, 'kjjknnj', 5, 2, '2024-09-19 06:16:27');

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
(5, 'gopikasuresh12@gmail.com', 'seeker', 'steffy@gmail.com', 'bbhbhbh', 1, '2024-09-22 21:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_reviews`
--

CREATE TABLE `seeker_reviews` (
  `review_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review_text` text DEFAULT NULL,
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seeker_reviews`
--

INSERT INTO `seeker_reviews` (`review_id`, `s_id`, `rating`, `review_text`, `review_date`) VALUES
(1, NULL, 5, 'kjnj', '2024-09-19 05:19:12'),
(2, NULL, 5, 'kjnj', '2024-09-19 05:19:46'),
(3, 1, 2, 'm ', '2024-09-19 05:20:10'),
(4, 1, 2, 'n', '2024-09-19 05:23:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `complaint_seeker`
--
ALTER TABLE `complaint_seeker`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `rec_id` (`rec_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `job_postings`
--
ALTER TABLE `job_postings`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_seekers`
--
ALTER TABLE `job_seekers`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `recruiter_reviews`
--
ALTER TABLE `recruiter_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `rec_id` (`rec_id`);

--
-- Indexes for table `rec_reg`
--
ALTER TABLE `rec_reg`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `seeker_complaints`
--
ALTER TABLE `seeker_complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `s_id` (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_seeker`
--
ALTER TABLE `complaint_seeker`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_postings`
--
ALTER TABLE `job_postings`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_seekers`
--
ALTER TABLE `job_seekers`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `recruiter_reviews`
--
ALTER TABLE `recruiter_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seeker_complaints`
--
ALTER TABLE `seeker_complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job_postings` (`job_id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `job_seekers` (`s_id`);

--
-- Constraints for table `complaint_seeker`
--
ALTER TABLE `complaint_seeker`
  ADD CONSTRAINT `complaint_seeker_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `job_seekers` (`s_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaint_seeker_ibfk_2` FOREIGN KEY (`rec_id`) REFERENCES `rec_reg` (`rec_id`) ON DELETE CASCADE;

--
-- Constraints for table `recruiter_reviews`
--
ALTER TABLE `recruiter_reviews`
  ADD CONSTRAINT `recruiter_reviews_ibfk_1` FOREIGN KEY (`rec_id`) REFERENCES `rec_reg` (`rec_id`);

--
-- Constraints for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  ADD CONSTRAINT `seeker_reviews_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `job_seekers` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
