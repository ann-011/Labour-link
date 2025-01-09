-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(259) DEFAULT NULL,
  `mobilenumber` bigint(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `mobilenumber`, `email`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 8956232356, 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-09-12 05:16:16', '18-10-2016 04:18:16');

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
('gopika suresh', 'sureshgopikaal@gmail.com', '7412589630', 'painter', 'cvbhnjkm'),
('gopika suresh', 'sureshgopikaal@gmail.com', '7412589630', 'painter', 'cvbhnjkm'),
('ann rajan', 'annrajan123@gmail.com', '3210456987', 'painter', 'fghbnjmk'),
('gopika suresh', 'sureshgopikaal@gmail.com', '7592945712', 'painter', 'dxcfvgbhnm,'),
('steffy', 'steffy@gmail.com', '7412589630', 'electrician', '5 years of experience'),
('gopika suresh', 'sureshgopikaal@gmail.com', '7412589630', 'painter', 'fghjk'),
('1', 'pooja2000@gmail.com', '7412589630', 'painter', 'kljh');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `complaint` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `name`, `email`, `subject`, `complaint`, `submitted_at`) VALUES
(1, 'ghbjnkm', 'liana@gmail.com', 'lkjh', 'iu', '2024-08-11 12:53:03'),
(2, 'ghbjnkm', 'liana@gmail.com', 'lkjh', 'iu', '2024-08-11 12:53:08'),
(3, 'gopika suresh', 'gopika@gmail.com', 'lkjh', 'uhygghy', '2024-08-26 01:20:55'),
(4, 'ann', 'ann@gmail.com', 'salary', 'vsde', '2024-08-26 01:22:52'),
(5, 'gopika suresh', 'gopika12@gmail.com', 'fghj', 'ghghgkh', '2024-08-27 08:28:04'),
(6, '1', 'liana@gmail.com', 'bj', 'gh', '2024-08-27 08:32:58'),
(7, 'liana', 'liana@gmail.com', 'bj', 'gh', '2024-08-27 08:40:12');

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
(1, 'michael@example.com', 'jobseeker', 'recruiter1@example.com', 'Misleading job description.', 1, '2024-08-22 05:00:00'),
(2, 'pam@example.com', 'jobseeker', 'recruiter2@example.com', 'No response after applying.', 2, '2024-08-22 06:15:00'),
(3, 'jim@example.com', 'jobseeker', 'recruiter3@example.com', 'Confusing application process.', 1, '2024-08-23 03:50:00'),
(4, 'dwight@example.com', 'jobseeker', 'recruiter4@example.com', 'Inappropriate job requirements.', 3, '2024-08-23 08:30:00'),
(5, 'angela@example.com', 'jobseeker', 'recruiter5@example.com', 'Unclear salary details.', 2, '2024-08-24 04:45:00'),
(6, 'ryan@example.com', 'jobseeker', 'recruiter6@example.com', 'Unprofessional recruiter behavior.', 1, '2024-08-24 08:00:00'),
(7, 'kelly@example.com', 'jobseeker', 'recruiter7@example.com', 'Late interview scheduling.', 2, '2024-08-24 10:30:00'),
(8, 'toby@example.com', 'jobseeker', 'recruiter8@example.com', 'No feedback after interview.', 3, '2024-08-25 03:40:00'),
(9, 'stanley@example.com', 'jobseeker', 'recruiter9@example.com', 'Inaccurate job location.', 2, '2024-08-25 06:15:00'),
(10, 'phyllis@example.com', 'jobseeker', 'recruiter10@example.com', 'Non-responsive to emails.', 1, '2024-08-26 02:55:00'),
(11, 'oscar@example.com', 'jobseeker', 'recruiter11@example.com', 'Ambiguous job role.', 2, '2024-08-26 05:00:00'),
(12, 'kevin@example.com', 'jobseeker', 'recruiter12@example.com', 'Delayed hiring process.', 3, '2024-08-26 09:20:00'),
(13, 'creed@example.com', 'jobseeker', 'recruiter13@example.com', 'Job already filled but still listed.', 1, '2024-08-27 03:45:00'),
(14, 'meredith@example.com', 'jobseeker', 'recruiter14@example.com', 'Inadequate job details.', 2, '2024-08-27 06:10:00'),
(15, 'jan@example.com', 'jobseeker', 'recruiter15@example.com', 'Poor communication during the hiring process.', 1, '2024-08-27 09:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `got_job`
--

CREATE TABLE `got_job` (
  `id` int(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `frome_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `got_job`
--

INSERT INTO `got_job` (`id`, `Name`, `Email`, `phone_no`, `frome_date`) VALUES
(1, 'abey', 'abey@gmail.com', 789456123, '2024-05-14 14:26:01'),
(3, 'gokul', 'goku@gmail.com', 456971212, '2024-05-07 14:27:41'),
(7, 'babu', 'babu@gmail.com', 799452990, '2024-05-06 14:27:41'),
(12, 'augustine', 'Augustine@gmail.com', 123456789, '2024-05-07 14:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_messages`
--

CREATE TABLE `jobseeker_messages` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseeker_messages`
--

INSERT INTO `jobseeker_messages` (`id`, `email`, `message`, `sent_at`) VALUES
(1, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:12:03'),
(2, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:18:09'),
(3, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:27:14'),
(4, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:27:19'),
(5, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:27:23'),
(6, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:30:31'),
(7, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:30:36'),
(8, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:30:44'),
(9, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:36:04'),
(10, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 05:32:57'),
(11, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 05:35:18'),
(12, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 05:40:55'),
(13, 'ramu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 06:58:50'),
(14, 'bbaa', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-16 15:55:53'),
(15, 'babu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-16 15:56:29'),
(16, 'lrlwsi', 'Dear Labour Link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-17 12:23:37'),
(17, 'michael@example.com', 'Dear Labour Link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-08-27 07:50:18'),
(18, 'pam@example.com', 'Dear Labour Link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-08-27 08:13:59'),
(19, 'michael@example.com', 'Dear Labour Link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-08-31 19:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_reg`
--

CREATE TABLE `jobseeker_reg` (
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `seeker_lastname` varchar(15) NOT NULL,
  `seeker_pn_no` int(10) NOT NULL,
  `Profile_Photo` blob NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Pin` int(15) NOT NULL,
  `Gender` bit(10) NOT NULL,
  `Date_of_Birth` year(4) NOT NULL,
  `seeker_id` int(10) NOT NULL,
  `ban_end_date` datetime DEFAULT NULL,
  `message_sent` tinyint(4) DEFAULT 0,
  `ban_start_date` datetime DEFAULT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `permanently_banned` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseeker_reg`
--

INSERT INTO `jobseeker_reg` (`name`, `email`, `password`, `seeker_lastname`, `seeker_pn_no`, `Profile_Photo`, `Address`, `Pin`, `Gender`, `Date_of_Birth`, `seeker_id`, `ban_end_date`, `message_sent`, `ban_start_date`, `banned`, `permanently_banned`) VALUES
('Michael', 'michael@example.com', 'michael123', 'Scott', 1234567890, 0x6d69636861656c5f70686f746f2e6a7067, '1725 Slough Avenue', 54321, b'1111111111', '1964', 101, NULL, 1, '2024-09-02 21:29:50', 0, 0),
('Pam', 'pam@example.com', 'pamsecure', 'Beesly', 987654321, 0x70616d5f70686f746f2e6a7067, '69 Dunder Avenue', 98765, b'1111111111', '1979', 102, '2024-10-01 00:00:00', 1, '2024-08-29 10:14:03', 1, 0),
('Jim', 'jim@example.com', 'halpertpass', 'Halpert', 1122334455, 0x6a696d5f70686f746f2e6a7067, '100 Maple Road', 11111, b'1111111111', '1978', 103, NULL, 0, NULL, 1, 1),
('Dwight', 'dwight@example.com', 'dwightsecure', 'Schrute', 2147483647, 0x6477696768745f70686f746f2e6a7067, '2 Beet Farm Road', 22222, b'1111111111', '1970', 104, NULL, 0, NULL, 0, 0),
('Angela', 'angela@example.com', 'angela987', 'Martin', 2147483647, 0x616e67656c615f70686f746f2e6a7067, '123 Paper Street', 33333, b'1111111111', '1971', 105, '2024-11-15 23:59:59', 1, '2024-05-01 00:00:00', 1, 1),
('Ryan', 'ryan@example.com', 'temp1234', 'Howard', 2147483647, 0x7279616e5f70686f746f2e6a7067, '5 Temp Way', 44444, b'1111111111', '1981', 106, NULL, 0, NULL, 0, 1),
('Kelly', 'kelly@example.com', 'trendy123', 'Kapoor', 2147483647, 0x6b656c6c795f70686f746f2e6a7067, '7 Gossip Lane', 55555, b'1111111111', '1980', 107, NULL, 0, NULL, 0, 0),
('Toby', 'toby@example.com', 'tobysecure', 'Flenderson', 2147483647, 0x746f62795f70686f746f2e6a7067, '9 HR Street', 66666, b'1111111111', '1972', 108, NULL, 0, '2024-09-01 00:17:32', 0, 1),
('Stanley', 'stanley@example.com', 'pretzelpass', 'Hudson', 2147483647, 0x7374616e6c65795f70686f746f2e6a7067, '11 Pretzel Alley', 77777, b'1111111111', '1957', 109, NULL, 0, NULL, 0, 0),
('Phyllis', 'phyllis@example.com', 'phyllissecure', 'Vance', 2147483647, 0x7068796c6c69735f70686f746f2e6a7067, '13 Bob Road', 88888, b'1111111111', '1955', 110, NULL, 0, NULL, 0, 0),
('Oscar', 'oscar@example.com', 'oscarsecure', 'Martinez', 2147483647, 0x6f736361725f70686f746f2e6a7067, '15 Math Avenue', 99999, b'1111111111', '1970', 111, NULL, 0, NULL, 0, 0),
('Kevin', 'kevin@example.com', 'kevinsecure', 'Malone', 2147483647, 0x6b6576696e5f70686f746f2e6a7067, '17 Chili Road', 0, b'1111111111', '1972', 112, NULL, 0, NULL, 0, 0),
('Creed', 'creed@example.com', 'creedsecure', 'Bratton', 2147483647, 0x63726565645f70686f746f2e6a7067, '19 Mystery Lane', 10101, b'1111111111', '1943', 113, '2025-01-01 00:00:00', 1, '2024-05-01 00:00:00', 1, 0),
('Meredith', 'meredith@example.com', 'meredithsecure', 'Palmer', 2147483647, 0x6d657265646974685f70686f746f2e6a7067, '21 Party Street', 12121, b'1111111111', '1960', 114, NULL, 0, NULL, 0, 0),
('Jan', 'jan@example.com', 'jansecure', 'Levinson', 1011223344, 0x6a616e5f70686f746f2e6a7067, '23 Corporate Road', 13131, b'1111111111', '1965', 115, NULL, 0, NULL, 0, 0);

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
(4, 'painter', 'qwertyu', 'edadu', 'skii', 2, '2024-08-27 14:29:00', 5, 1000.00, 'augustine@gmail.com');

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
-- Table structure for table `orginal_table`
--

CREATE TABLE `orginal_table` (
  `name` varchar(25) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone_no` int(12) NOT NULL,
  `password` int(100) NOT NULL,
  `ald_recu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orginal_table`
--

INSERT INTO `orginal_table` (`name`, `email`, `phone_no`, `password`, `ald_recu_id`) VALUES
('augustine', 'augustineshaji0', 2147483647, 1234, 1),
('mmm', 'mmm', 1366, 1234, 2),
('egw', 'lakjs', 0, 0, 3),
('boby', 'qjkwgf@gmail.co', 0, 0, 4),
('augustine shaji', 'ambady@gmail.co', 789456123, 123456, 5),
('mmm', 'amm@gmail.com', 57465464, 1234, 6),
('anu', 'lakjs@gmail.com', 0, 0, 7),
('boby', 'qjkwgf@gmail.co', 0, 0, 8),
('anu', 'lakjs@gmail.com', 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pending_jobs`
--

CREATE TABLE `pending_jobs` (
  `job_name` varchar(20) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `rq_name` varchar(15) NOT NULL,
  `posted_date` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_jobs`
--

INSERT INTO `pending_jobs` (`job_name`, `email`, `phone_no`, `rq_name`, `posted_date`, `id`, `created_at`) VALUES
('painter', 'augustineshaji0', 12345678, 'augustine', '2024-08-27', 1, '2024-09-01 08:04:33'),
('Job 2', 'example2@mail.c', 987654321, 'Requester 2', '2024-09-01', 11, '2024-09-01 08:10:44'),
('Job 3', 'example3@mail.c', 1122334455, 'Requester 3', '2024-09-01', 12, '2024-09-01 07:10:44'),
('New Job 1', 'newjob1@example', 2147483647, 'New Requester 1', '2024-09-01', 15, '2024-09-01 07:13:11'),
('New Job 2', 'newjob2@example', 2147483647, 'New Requester 2', '2024-09-01', 16, '2024-08-31 09:13:11'),
('New Job 1', 'newjob1@example', 2147483647, 'New Requester 1', '2024-09-01', 19, '2024-09-01 07:15:52'),
('New Job 2', 'newjob2@example', 2147483647, 'New Requester 2', '2024-09-01', 20, '2024-08-31 09:15:52'),
('Old Job 1', 'oldjob1@example', 1111111111, 'Old Requester 1', '2024-08-30', 21, '2024-08-30 08:18:26'),
('Old Job 2', 'oldjob2@example', 2147483647, 'Old Requester 2', '2024-08-30', 22, '2024-08-29 08:18:26'),
('New Job 1', 'newjob1@example', 2147483647, 'New Requester 1', '2024-09-01', 23, '2024-09-01 07:18:26'),
('New Job 2', 'newjob2@example', 2147483647, 'New Requester 2', '2024-09-01', 24, '2024-08-31 09:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `reccreateprofile`
--

CREATE TABLE `reccreateprofile` (
  `Job Title` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `No_of_Openings` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(59) NOT NULL,
  `password` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `recu_id` int(11) NOT NULL,
  `ban_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reccreateprofile`
--

INSERT INTO `reccreateprofile` (`Job Title`, `Description`, `Location`, `No_of_Openings`, `email`, `phone_number`, `password`, `name`, `recu_id`, `ban_end_date`) VALUES
('cleaner', 'mmmmmmmmmmmmmmmm', 'mmmmmmmmmm', 5, 'Abcs@gmail.com', '89456123;', '789456', 'augustine', 3, '2024-06-19 20:45:22'),
('plumber ', 'mmmmmmmmmmmm', 'mmmmm', 1, 'abcde@gmail.com', '1234567890', '1234@ab', 'babu', 5, '2024-06-19 20:49:24'),
('qe,jyg', 'qwjhdgh', 'qlwdgg', 212, 'qjkwgf@gmail.com', '78456123', 'qukwg', 'boby', 12, '2024-06-19 20:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_messages`
--

CREATE TABLE `recruiter_messages` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruiter_messages`
--

INSERT INTO `recruiter_messages` (`id`, `email`, `message`, `sent_at`) VALUES
(1, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:36:17'),
(2, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:37:47'),
(3, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:37:51'),
(4, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:44:34'),
(5, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-13 19:44:41'),
(6, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 05:40:32'),
(7, 'rajan@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 05:45:58'),
(8, 'jinix@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 05:48:52'),
(9, 'liana@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 06:23:41'),
(10, 'rajan@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 06:23:54'),
(11, 'steffy@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 06:25:10'),
(12, 'sunimon@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 06:26:31'),
(13, 'baaalu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 06:42:02'),
(14, 'baaalu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 19:18:56'),
(15, 'baaalu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 19:19:12'),
(16, 'baaalu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 19:19:23'),
(17, 'baaalu@gmail.com', 'Dear labour link user, we have decided to ban you for 2 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 2-day ban starting from today. Have a good day.', '2024-06-14 19:29:25'),
(18, 'baaalu@gmail.com', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-14 19:34:53'),
(19, 'augustineshaji007@gm', 'Dear labour link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-17 06:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `rec_reg`
--

CREATE TABLE `rec_reg` (
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(8) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pin` int(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `ban_end_date` datetime DEFAULT NULL,
  `ban_start_date` datetime DEFAULT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `permanently_banned` tinyint(1) DEFAULT 0,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec_reg`
--

INSERT INTO `rec_reg` (`name`, `email`, `password`, `address`, `pin`, `city`, `ban_end_date`, `ban_start_date`, `banned`, `permanently_banned`, `otp`, `otp_expiry`) VALUES
('Augustine Shaji', 'augustineshaji007@gmail.com', 'Augustin', 'abcdd', 123456, 'edadu', NULL, NULL, 0, 0, NULL, NULL),
('Augustine Shaji', 'kunjappen007@gmail.com', 'Augustin', 'abcdd', 123456, 'edadu', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `job_title` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `work_experience` varchar(50) NOT NULL,
  `year_of_experience` varchar(10) NOT NULL,
  `expected_hourly_rate` varchar(20) NOT NULL,
  `known_language` varchar(30) NOT NULL,
  `location` varchar(20) NOT NULL,
  `s_id` int(30) NOT NULL,
  `ban_start_date` datetime DEFAULT NULL,
  `ban_end_date` datetime DEFAULT NULL,
  `permanently_banned` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`fname`, `lname`, `email`, `job_title`, `password`, `phonenumber`, `address`, `dob`, `gender`, `skills`, `work_experience`, `year_of_experience`, `expected_hourly_rate`, `known_language`, `location`, `s_id`, `ban_start_date`, `ban_end_date`, `permanently_banned`) VALUES
('gopika', 'suresh', 'sureshgopikaal@gmail', '', '789456', '2147483647', 'alackal', '0000-00-00', '', '', '', '', '', '', '', 1, '2024-09-03 22:58:26', NULL, 0),
('gopika', 'suresh', 'sureshgopikaal@gmail', '', '789456', '2147483647', 'n cfhnbhjm', '0000-00-00', '', '', '', '', '', '', '', 2, '2024-09-03 22:58:26', NULL, 0),
('hyma', 'suresh', 'hyma@gmail.com', 'vbnm,', '741', '147852369', 'jghghhjkj', '0000-00-00', '', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 3, NULL, NULL, 1),
('Jayan', ' K R', 'jayan123@gmail.com', '', '8520', '2147483647', 'x,.dxkjujhuhhj', '0000-00-00', '', '', '', '', '', '', '', 4, '2024-09-03 23:19:22', '2024-09-13 23:19:22', 0),
('asha', 'Das', 'ashad@gmail.com', '', '963', '1000014785', 'ghytrf', '0000-00-00', '', '', '', '', '', '', '', 5, NULL, NULL, 0),
('asha', 'Das', 'ashad@gmail.com', '', '123', '1000014785', 'ghytrf', '0000-00-00', '', '', '', '', '', '', '', 6, NULL, NULL, 0),
('km', 'ljng', 'aal@gmail.com', '', '369', '2147483647', 'lkiju', '0000-00-00', '', '', '', '', '', '', '', 7, NULL, NULL, 0),
('vijayan', 'suresh', 'vijayan@gmail.com', '', '789', '2147483647', 'njaril h ', '0000-00-00', '', '', '', '', '', '', '', 8, NULL, NULL, 0),
('sushama', 'p', 'sushama@gmail.com', '', '123', '9961507612', 'edamakkal', '0000-00-00', '', '', '', '', '', '', '', 18, NULL, NULL, 0),
('', '', '', '', '', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 26, NULL, NULL, 0),
('omana', 'das', 'omana2024@gmail.com', '', '9630', '7907653619', 'sooralayam', '2024-06-19', 'Female', 'dfr', 'yes', '5', '521', 'Malayalam', 'kumaramangalam', 27, NULL, NULL, 0),
('', '', '', '', '', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 28, NULL, NULL, 0),
('sanjay', 'kumar', 'sanjay123@gmail.com', '', '8523', '8281204612', 'sanjay nivas', '2024-06-03', 'Male', 'php', 'yes', '3', '500', 'English', 'idukki', 29, NULL, NULL, 0),
('', '', 'suresh743@gmail.com', '', '8520', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 30, NULL, NULL, 0),
('asdfghj', 'asdfghj', 'asdfgh3@gmail.com', '', '1234', '789456123', 'sdfghjkl', '2024-06-13', 'Male', 'qwertyu', '4', '8', '8', 'English', 'eeee', 31, NULL, NULL, 0),
('bhaskaran', 'nair', 'bhaskaran@12', '', '789', '7592945712', 'edathothi;', '2012-01-16', 'Male', ',jmnbgvcx', 'yes', '2', '168', 'Malayalam', 'kalloor', 32, '2024-09-03 23:33:23', '2024-09-13 23:33:23', 0),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 33, NULL, NULL, 1),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 34, NULL, NULL, 1),
('steffy', 'mol', 'steffy@gmail.com', 'painter', '9630', '3210456987', 'mekkalath', '2024-06-04', 'Female', '0', 'yes', '2', '85', 'Malayalam', 'mariyapuram', 35, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 36, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 37, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 38, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 39, NULL, NULL, 1),
('peethambaran', 'nair', 'peethambaran@gmail.c', '', 'petha@12', '6502348819', 'koijhunybgtfvrdces', '2011-01-03', 'Male', ';lkjihuy', 'yes', '2', '100', 'Malayalam', 'para', 40, NULL, NULL, 0),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 41, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 42, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 43, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 44, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 45, NULL, NULL, 1),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 46, NULL, NULL, 1),
('gowrika ', 'suresh', 'gowrika@gmail.com', 'lkmnjhbgvfd', '$2y$10$F.WI9nh7so3AS', '7907525795', 'kmjnbhgvcfd', '2024-06-19', 'Female', ';lkijhubgytfvrd', 'yes', '1', '100', 'English', 'vgbhnjm,.', 47, NULL, NULL, 0),
('anu', 'raj', 'anu12@gmail.com', 'painter', '7896', '7410258963', ';.lkjhg', '2024-06-03', 'Female', 'lkoijhugfd', 'yes', '2', '100', 'English', 'lkijhugf', 48, NULL, NULL, 0),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 49, NULL, NULL, 1),
('ann', 'rajan', 'annrajan123@gmail.co', 'tailor', '8523', '7412589630', 'dcfvgbhnm,', '2024-06-03', 'Female', 'dfghnjkm,l', 'yes', '', '100', 'English', 'kochi', 50, NULL, NULL, 0),
('ann', 'rajan', 'annrajan123@gmail.co', 'tailor', '8523', '7412589630', 'dcfvgbhnm,', '2024-06-03', 'Female', 'dfghnjkm,l', 'yes', '', '100', 'English', 'kochi', 51, NULL, NULL, 0),
('maya', 'sabu', 'maya@gmail.com', 'carpenter', '7412', '7418529630', 'kjhgfds', '2024-06-03', 'Female', ';lkoijhugytfd', 'yes', '1', '420', 'Malayalam', 'kumaramangalam', 52, NULL, NULL, 0),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 53, NULL, NULL, 1),
('', '', 'hyma@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 54, NULL, NULL, 1),
('', '', 'hyma@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 55, NULL, NULL, 1),
('', '', 'liana@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 56, '2024-09-10 00:27:49', '2024-09-20 00:27:49', 0),
('', '', 'liana@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 57, '2024-09-10 00:27:49', '2024-09-20 00:27:49', 0),
('chithra', 'saji', 'chithra12@gmail.com', 'painter', '9630', '8574142560', 'ghjklkoijuhygtfr', '1999-01-24', 'Female', 'dxfcgvhbjnkm', 'yes', '1', '412', 'English', 'kochi', 58, NULL, NULL, 0),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 59, NULL, NULL, 1),
('prajith', 'p s', 'prajith123@gmail.com', 'painter,interior', '7520', '8086543321', 'dfghjk', '1991-05-14', 'Male', 'cvbhnjm,', 'yes', '5', '150', 'Malayalam', 'moolamattom', 60, NULL, NULL, 0),
('pooja', 'ramesh', 'pooja2000@gmail.com', 'tailor', '8520', '785412036', 'lakshmi nivas', '2000-09-11', 'Female', 'fcgv bhnm', 'yes', '5', '100', 'English', 'idukki', 61, NULL, NULL, 0),
('pooja', 'ramesh', 'pooja2000@gmail.com', 'tailor', '8520', '785412036', 'lakshmi nivas', '2000-09-11', 'Female', 'fcgv bhnm', 'yes', '5', '100', 'English', 'idukki', 62, NULL, NULL, 0),
('', '', 'hyma@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 63, NULL, NULL, 1),
('suvarna', 'anil', 'suvarna12@gmail.com', 'tailor', '8745', '951025478', 'tfghjkl;', '1991-09-15', 'Female', 'rtfghjkml', 'yes', '2', '100', 'English', 'nagapuzha', 64, NULL, NULL, 0),
('anjana', 'unni', 'anjana12@gmail.com', 'painter', '8456', '78965412', 'vbvnm,', '2024-07-30', 'Female', 'dfgvhbnjk', 'yes', '2', '100', 'Malayalam', 'dfcgvhbjkl', 65, '2024-09-03 22:54:18', '2024-09-13 22:54:18', 0),
('lami', 's', 'lami123@gmail.com', 'fdghbjnkm', '7954', '7852014563', 'dfghjkml', '2024-08-13', 'Female', 'dfghjkml', 'yes', '40', '100', 'English', 'kochi', 66, NULL, NULL, 0),
('gopika ', 'suresh', 'gopikasuresh12@gmail', 'qq', '11', '8965741232', 'aaaa', '2024-09-04', 'Male', 'aa', '22', '2', '100', 'Malayalam', 'para', 67, NULL, NULL, 0),
('gopika ', 'suresh', 'gopikasuresh12@gmail', 'fghj', '8520', '8965741232', 'sdfghj', '2024-09-12', 'Female', 'fcvgbhnj', '22', '2', '100', 'Malayalam', 'para', 68, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seeker_reviews`
--

CREATE TABLE `seeker_reviews` (
  `review_id` int(11) NOT NULL,
  `seeker_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review_text` text DEFAULT NULL,
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seeker_reviews`
--

INSERT INTO `seeker_reviews` (`review_id`, `seeker_id`, `rating`, `review_text`, `review_date`) VALUES
(1, 1, 5, 'fdgvhbjnk', '2024-08-27 07:38:06'),
(2, 1, 5, 'fdgvhbjnk', '2024-08-27 07:38:36'),
(3, 1, 5, 'fdgvhbjnk', '2024-08-27 07:39:39'),
(4, 1, 5, 'fdgvhbjnk', '2024-08-27 07:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` int(11) NOT NULL,
  `reviewer_email` varchar(255) NOT NULL,
  `reviewee_email` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `got_job`
--
ALTER TABLE `got_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseeker_messages`
--
ALTER TABLE `jobseeker_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseeker_reg`
--
ALTER TABLE `jobseeker_reg`
  ADD PRIMARY KEY (`seeker_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `job_postings`
--
ALTER TABLE `job_postings`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `one_star_ratings`
--
ALTER TABLE `one_star_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orginal_table`
--
ALTER TABLE `orginal_table`
  ADD PRIMARY KEY (`ald_recu_id`);

--
-- Indexes for table `pending_jobs`
--
ALTER TABLE `pending_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reccreateprofile`
--
ALTER TABLE `reccreateprofile`
  ADD PRIMARY KEY (`recu_id`);

--
-- Indexes for table `recruiter_messages`
--
ALTER TABLE `recruiter_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rec_reg`
--
ALTER TABLE `rec_reg`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `got_job`
--
ALTER TABLE `got_job`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobseeker_messages`
--
ALTER TABLE `jobseeker_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobseeker_reg`
--
ALTER TABLE `jobseeker_reg`
  MODIFY `seeker_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `job_postings`
--
ALTER TABLE `job_postings`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `one_star_ratings`
--
ALTER TABLE `one_star_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orginal_table`
--
ALTER TABLE `orginal_table`
  MODIFY `ald_recu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pending_jobs`
--
ALTER TABLE `pending_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reccreateprofile`
--
ALTER TABLE `reccreateprofile`
  MODIFY `recu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `recruiter_messages`
--
ALTER TABLE `recruiter_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `s_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
