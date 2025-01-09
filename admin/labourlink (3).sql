-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 09:39 AM
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
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_history`
--

CREATE TABLE `application_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL
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
('gopika suresh', 'sureshgopikaal@gmail.com', '7412589630', 'painter', 'cvbhnjkm'),
('gopika suresh', 'sureshgopikaal@gmail.com', '7412589630', 'painter', 'cvbhnjkm'),
('ann rajan', 'annrajan123@gmail.com', '3210456987', 'painter', 'fghbnjmk'),
('gopika suresh', 'sureshgopikaal@gmail.com', '7592945712', 'painter', 'dxcfvgbhnm,'),
('steffy', 'steffy@gmail.com', '7412589630', 'electrician', '5 years of experience'),
('gopika suresh', 'sureshgopikaal@gmail.com', '7412589630', 'painter', 'fghjk');

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
(4, 'ann', 'ann@gmail.com', 'salary', 'vsde', '2024-08-26 01:22:52');

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
(1, 'user1@example.com', 'seeker', 'recruiter1@example.com', 'Very unprofessional.', 1, '2024-06-01 04:30:00'),
(2, 'user2@example.com', 'seeker', 'recruiter1@example.com', 'Did not respond on time.', 1, '2024-06-02 05:30:00'),
(3, 'user3@example.com', 'seeker', 'recruiter1@example.com', 'Rude behavior.', 1, '2024-06-03 06:30:00'),
(4, 'user4@example.com', 'seeker', 'recruiter1@example.com', 'Unclear job requirements.', 1, '2024-06-04 07:30:00'),
(5, 'user5@example.com', 'seeker', 'recruiter1@example.com', 'Delayed payments.', 1, '2024-06-05 08:30:00'),
(6, 'user6@example.com', 'seeker', 'recruiter2@example.com', 'Good communication.', 5, '2024-06-06 09:30:00'),
(7, 'user7@example.com', 'recruiter', 'seeker1@example.com', 'Great work.', 5, '2024-06-07 10:30:00'),
(8, 'user8@example.com', 'recruiter', 'seeker2@example.com', 'Reliable and punctual.', 4, '2024-06-08 11:30:00'),
(9, 'user9@example.com', 'recruiter', 'seeker3@example.com', 'Needs improvement.', 2, '2024-06-09 12:30:00'),
(10, 'user10@example.com', 'recruiter', 'seeker4@example.com', 'Excellent skills.', 5, '2024-06-10 13:30:00'),
(11, 'complainer1@example.com', 'User', 'user1@example.com', 'Complaint text 1', 1, '2023-12-31 18:30:00'),
(12, 'complainer2@example.com', 'User', 'user1@example.com', 'Complaint text 2', 1, '2024-01-01 18:30:00'),
(13, 'complainer3@example.com', 'User', 'user1@example.com', 'Complaint text 3', 1, '2024-01-02 18:30:00'),
(14, 'complainer4@example.com', 'User', 'user1@example.com', 'Complaint text 4', 1, '2024-01-03 18:30:00'),
(15, 'complainer5@example.com', 'User', 'user1@example.com', 'Complaint text 5', 1, '2024-01-04 18:30:00'),
(16, 'complainer6@example.com', 'User', 'user1@example.com', 'Complaint text 6', 1, '2024-01-05 18:30:00'),
(17, 'complainer7@example.com', 'User', 'user1@example.com', 'Complaint text 7', 1, '2024-01-06 18:30:00'),
(18, 'complainer8@example.com', 'User', 'user1@example.com', 'Complaint text 8', 1, '2024-01-07 18:30:00'),
(19, 'complainer9@example.com', 'User', 'user1@example.com', 'Complaint text 9', 1, '2024-01-08 18:30:00'),
(20, 'complainer10@example.com', 'User', 'user1@example.com', 'Complaint text 10', 1, '2024-01-09 18:30:00'),
(21, 'complainer1@example.com', 'User', 'user2@example.com', 'Complaint text 11', 1, '2024-01-10 18:30:00'),
(22, 'complainer2@example.com', 'User', 'user2@example.com', 'Complaint text 12', 1, '2024-01-11 18:30:00'),
(23, 'complainer3@example.com', 'User', 'user2@example.com', 'Complaint text 13', 1, '2024-01-12 18:30:00'),
(24, 'complainer4@example.com', 'User', 'user2@example.com', 'Complaint text 14', 1, '2024-01-13 18:30:00'),
(25, 'complainer5@example.com', 'User', 'user2@example.com', 'Complaint text 15', 1, '2024-01-14 18:30:00'),
(26, 'complainer6@example.com', 'User', 'user2@example.com', 'Complaint text 16', 1, '2024-01-15 18:30:00'),
(27, 'complainer7@example.com', 'User', 'user2@example.com', 'Complaint text 17', 1, '2024-01-16 18:30:00'),
(28, 'complainer8@example.com', 'User', 'user2@example.com', 'Complaint text 18', 1, '2024-01-17 18:30:00'),
(29, 'complainer9@example.com', 'User', 'user2@example.com', 'Complaint text 19', 1, '2024-01-18 18:30:00'),
(30, 'complainer10@example.com', 'User', 'user2@example.com', 'Complaint text 20', 1, '2024-01-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `jobseeker_id` int(11) DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `job_listing_id` int(11) DEFAULT NULL,
  `status` enum('pending','accepted','rejected') DEFAULT 'pending',
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `recruiter_id` int(30) DEFAULT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` text NOT NULL,
  `salary` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `recruiter_id`, `job_title`, `job_description`, `salary`, `location`) VALUES
(1, 0, 'Painter', 'Painting residential and commercial properties.', '', 'Rural Area 1'),
(2, 0, 'Carpenter', 'Building and repairing wooden structures.', '', 'Rural Area 2'),
(3, 0, 'Electrician', 'Installing and maintaining electrical systems.', '', 'Rural Area 3'),
(4, 0, 'Plumber', 'Installing and repairing plumbing systems.', '', 'Rural Area 4'),
(5, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers`
--

CREATE TABLE `jobseekers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `resume` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(16, 'lrlwsi', 'Dear Labour Link user, we have decided to ban you for 10 days. The reason for this is that out of 5 recruiters who rated you, you received an average of 1 star. Due to this, we are imposing a 10-day ban starting from today. Have a good day.', '2024-06-17 12:23:37');

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
  `permanently_banned` tinyint(1) DEFAULT 0,
  `skills` varchar(30) NOT NULL,
  `work_experience` varchar(50) NOT NULL,
  `job_description` varchar(50) NOT NULL,
  `year_of_experience` int(20) NOT NULL,
  `expected_hourly_rate` int(40) NOT NULL,
  `location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseeker_reg`
--

INSERT INTO `jobseeker_reg` (`name`, `email`, `password`, `seeker_lastname`, `seeker_pn_no`, `Profile_Photo`, `Address`, `Pin`, `Gender`, `Date_of_Birth`, `seeker_id`, `ban_end_date`, `message_sent`, `ban_start_date`, `banned`, `permanently_banned`, `skills`, `work_experience`, `job_description`, `year_of_experience`, `expected_hourly_rate`, `location`) VALUES
('Augustine', 'Abcs@gmail.com', 'abcd@12', 'shaji', 799452990, 0x89504e470d0a1a0a0000000d494844520000019c0000036308060000009e1aacdc000000017352474200aece1ce90000000467414d410000b18f0bfc61050000000970485973000012740000127401de661f780000ffa549444154785eecfd05981547b7be0f7fd7f5ff1d3fe73df25a5c800412881025ee4edc9db8bbbb7b883b714fdeb813871085b803c1134870091022f5ad7b55addeb57b7acff4c0c00855170fddbbcb56d97a6a5555f7fcff9658b2834b484848484898dbc808a753c7651ac43282653b2d9b90909090309f232692b24884338758a693d44b0e45e15a0596294051b8848484f91e31919445229c394421e1b452c5dd79d9ce7550142e212121212692b268f38483cc8622ffa6466b25e55a7267f5079116f8272424cc9f8889a42cda1ce164b3f2652ab3739425f2db7d5396c3ac1a83afab4ebebef419617cb8a2f82d05563fb59e5bf9f2fe090909f3276222298bf9827058d23265d9d48a335e7ed2bca3bcec5eeb2e17afa50119eb3c57f9fd7d53d75b4242c23c808ce1cee842b916facf016222298bf9c4c241a176cafcb50182df1c83068d08a7cbb25d346f9433f73cebb4b4e44d83cf85469f53a8f515b56f4c8cc8eefd3a05bfd6d1071212120254ef880e9231dc51f450c7a53b568df139414c2465d1b208c7947259c55c101625e9fd3cab53d1eddbb5778b2cb4885b728976fa3b0e5f084b3797b6cef0c333d231d87355c8021ab5e352026d5cfc02c9e5d255bf28fd32a0b354a5c5f3dcd5d25512242c7e35e065966b685bc25bfa4b7758da2db6e8e26ed14516751dda4b1f81388967791b425a19c2339fb64f3f7e5615b608f5a5dd18e4e4889fd97d36f872f9e5e5ac4a2386a511e25a183fb82b7d44c70f7e511e75904b237e5688d82f8a6bf1ed3e7e3627d07e924ba730edfa646e6a9057d9fcf2e12c6ed1f3e8775119eb941914a525b0f8c0ebd24a7ff0d710af206e8686fc41813f63997c165b6431b7f0420bbb25175f52f3cff424c8a54d7874177a13f03bf6b3df319194c53c259c58f04248a1bdb2ab5f491a32e5987ba6f79a8e1ff854f4bffdebbfbbbffee5af6ea90e4b55852f8229ea7cdad481350e7ed9000cbf3b8b45c3efa59742512fe6fef6d7bfe995dfbe91bdc5638d5d549f3c230dc267cfcc5ff259718515ebc815ffb6b8e4c1bd5a5c5158955fc359d8ea0eafb285f240d0fff3dfffe3fef49f7fd20e4b27d4bc42380b5b95bea6e5e5f1697b988c65fa10617d3e3e4e1d04590bfd624898ac8c966f9c66f0b7fbd82fab1701577e03f3cf606984b8968fcfb7936f7b251effbb3eb98beac89e15224e4be5f071c9bb2273c53aad2fef32d07423d9f499e651fdac5e999b18595f29f0ab835cf9bb74f6ab1159bd47e5e31e7f1fc6ffb631a961e419ba45eb35a4a7e9d4238bb583f525e09f495cc6537de590fc7cfa057e0185f1253c7df0fffee7ffdc7fc93866e29dadb888bff671d2662c8738c8b4c4e24bb8bffde56feeef7ffbbbea4c9535929d70319194c56c118e299b5aa8552971e36488c3d6ba8f112aa7a1bcf4b9803c17f8fb02ee5ffee95fdcff4aa5537971fcb8b3595c4d57d3c014f565e7b7de874e86f26db7643bb7547b21b0900f69d14169601aeadffef5dfdc5ffefc978ce4acc314c95dc9d3dfab3c215dcd1319243ef97ac5451a214e04ed4020c45daecb721a8ef8cb755eae2a6d43fcdbcbe6e5a3d3fdd77ffe97fbd77ffe57b57208873fb0e5420d1fe5affd0499e56a03325f7ff63b0379cb55e5889f1b54c6a86cd173bb8ff38965d23ca3fc2d0d3fd02b7e79583c0b53218d6a787fca19d2d7e784ede43ab4eb2033c40e6aed6a3849c3d2e7b7d5772caf3df7650eb2e5db39fa4d9ff27d83f086205f54d73cb3f42ab24769d6030b9f47de0fb91aacfba8ccb560f1ab409dc835ab134155d85067f62c53be3c2baa3f0b8bcc82ac2e423ac0fa38e3067f5f462f03cf4d16ee8b10e7497cf4022b05f48b2ab20ab264f122d9b99adeb0b4aaee8b40992c3db94767fce77ffca7fb8f7fff0fb7c8c28b4a39bcfea07c3a210de1ad6ca4c17827fc7fffe97f321d67fed68f6322298bb9423875a01566f0829bf0f8f9011bf63ca2c22b4225eaf3388d2007f7953c7c9a5a69f21be5cff3051758d0fddbbffc9bfbbffffdb336ba972b284ce2495a3e9ecf93e79455aff8e9bd4f8b7bc08cfffffef7ffdc827f5fd0cb28f1d65a736d77ec31c7baf3cfbbc05d74e145eef4d34e77471f75b4db769bedb2344d6ed2d386267fae411ecb7fc71d76d4f857f5bccaf5bcf22a77d10517b9230e3fc2adb6ea6aa1be1800bee3f8b4bc0c3623b3b4565979158d77a1c4bfaae7d5ee8acbafd074bb6fd5ddd74f28970f6f7b50c4efa216ce7ffec77f69c763690dd989d34506204416c7d73a10209797273c93b4b46d256c5cbf45303f1be85540c6202720acd5a5de87df5a0695ab924e9ca795af225bc54f65cee511df5bbc580eef479e11994b98a53a2cad162e931cacdc4af9258e8637d9a23472f2920ee1629940259cc5f5e1ad7e4d4efcb9b7bc346e9dbaa94ebb0856669f66902dba1af85d29579081b8210d0d53223f90e519a0cfe37b415c2e838dff2a79b3fbca95b0b1dc3aa6189f165eaeebafb7be5b738d35359f75d759d76db2d1266ef9e596cfe2f8f8fe4add5b1ff07e0279a6cf435d2fb1f892da27fe2a960393550d1be2735fa93b1f57d3972b6134acfaf967b510873530e161e2f8effff6ef6ea10517d2fac9f2228e5cb3ba0cf220df5ffefc575d1522bee61b60e9c6445216f38470a8700a49a3c2ec71e57065705a582adb375e17556af69cbcbdbf0fef1bdefb3103e1397148cf771c1f96df0b2db090ced2fff7bfff572b4f3b40c81b7954a610d61a1b62d2ca250f813648b8c7ff6f7f150b46488c2527e2f7d8a787fb71cc8f4edd1ffea24eee7ffde557f7c0fd0fba95bbae2cf276d1ba34597d9ea1bc528e6eab7573bd5feaedfef8cd2762577572fbc3f73f0819ede456587e058da78a5fd234b935dd5096430f395464fa2944f6ee8fdfff50e0eeb9fb1eb746b7357c1d131f397470f8b22eb9c4925acfdb74dfc6edb3d73e6efffdf67707ec7f803be88083dc21071fe20e3ad05f0f39e810b75f8ffddc6ebbece6565ca16b963fd0360b7259fb71afd0bcfc33c298b25679824c16cfea3ef3135878eb0720ce53d315f03bcbd3d28b103fcbc2699d5664f1f7124ef2f27dab92970ee010ded07ec9f6da37fee59fff4597744d4e3f0ebc62d3dfd6afc5dfd2d072857490c5ee4d16b354096f71fc18f0725a581fb752be388da2df8d81953d6e136431d9b4ae0817e4d1f26b1dd4cdd3eadbffaeb40588e3599e1a3e40c345325077cb77595e979ee9bb5cbbaeb8928e9395e4ca1864ec808a7e11fd24ed405c7e53674cec06f41fe0aebbf63a77c07e07b8fe1f0c700304074adf27bf4d36de44c7aae5491c6d0364947be4e539e9224fb7d5d7d089c77fc9040e2cb1d8121a9632e85564200e2477c2f127b84b2ebac45d76e965eee28b2ed67bc5c59756ee235c7ce1c58a4b2ebe4427a6fbecbdaf96d908108bea3ffeed3f74c56581bf2d90f53f9533d4adaf075f767bceca0c404674b2f54b0b1b134959cc35c2b1c1a0d082fb0eb2d69a6bb9bdf7dadb6db8c1863e5ca87060e963b2d178ebacbdaedb779f7ddd565b76f79dc12a23bb2eeb565d65356dfc95575ad9a7159e93b636b800565f50480765882c16868eb0debaebbb4d37de5467303ebcaf5864583ff8adb7ee7a1a479f23a3c465998e19033380830e3cd84d9d32d58dfe618cfbe2f32fdcefbffdee4947306eec38f7c9479fb859bfcc726fbef1a65b71f915b52eacec9626f76bafb5b6fbe4e34fdcafb37e751f7ff8b11b3f6e82a41508472e9f7ef2a91b397ca49bfef37477e20927ea80d17a9334b40e452eeea9bbb3ce3c4b65fa7ee4f76ef0a0c14a7ab14c1f8b4cd37f9ee1de78fd0d6d13e2aeb01c24565dc74f3ff5b49607998cac5426f9a7e5e49f5c793e7cd870b7cdd6dbf876caea1f52f74b4a2aa7fa552b4285fcd67693abc5cb3a7956367fe5377134bcc6f77dcbd2238eefb3612211c2e14fdd587fd4fe267efcf60acf0f7aeb8359bc903eb291a6f681208395d514ad3e9767cc10fff45fffad837cd18517d5f896b686e33e80dfb6fc65e5b5fab032e9bdc921bf09c715d9358ef8c74a93709aa7a4a57ef2dc60fe7a25cd0640384bc3d2535943fdf936f575a17519eac2f252452ce1348cc0d2b430d64eea87dce24f3e71dea4adf987fc2c4ffb6df5cf24eb8dd7de706346ffa8fdfca71f7f72637f1aabe07edc4ffe1913b7f7df7d5fc737f1ac1d5566b93fe1f813dd471f7ee46eb8fe0677f96597ab12870c76df6d779d80dd7fdffdeee4134f766b765b5365f06517d905a461e55a49086e8fddf770bbeebcab120e9390fffed37f2be1a07fa843f2dd69c79ddcc30f3decbef8ec0b4dfbf24b2f57028148582dc988479ee5811fb848c2f6bcb2a77bf59557dde79f7deeeebcfd4e25dda56592cd3eecbfffabb770683bf2d4fa15b9919ffbb8bea97fca108f5d6d1709cf3de16222298b8c702cd186a08341326b0cac839c71fa196ed8d061d2d8a3ddb021c3b42159f2215d2c8a45165ec42dbed8e2da68b0fbd0ef866ac7183572947bf28927ddc61b6eac7e846d273348d27eeac9a7dc88e123a4a31da671b17eac03d00949bbdbeadddc2b2fbfa2cafab0430ff79d59d281649e7fee79e99c63dcebafbdee165e70613579d97f59a9eb4aeea3011f69fe0f3ef0a0a68375848c34dafffecfffeaec75f5d556773f4ffdd9bdd5e72d9d4d91eed9679ead8af8c3fe1fbad5841099591d77ec716edad469eeb65b6ed3baa00ccc82599263738eebade2376be62ced9ca4b3cedaebb8a14386ba993366ba33cf3853d77f99990df96e88d62303007999b5109f0ecd6c0602fe6ef077eeb5575f530b66792192f3cf3ddfcd983e439ebdae6563f310d29a307e823bf594d382a527a633edabede53bdd8b2fbce866083121fbf469d3ddcf8a9ff5b73e13f283d8b8a79db6df6e7b8d0b39602141ccb6f908165d64316d3bb320ad4f714549b376ccde11a76358b6a47cd626f8d9a919eaa7ba8fa1786456d67e29b12816d189c05ffffc57cd1b856fa7ec7c78affc498b36275df2a6ffb0fc8acc8bb3842861a80bea0599784eba5cb19aa96f95470630f250879499c90df932c0b1ac597aa58d28bb963b94972bbf794e9a94913d3fda125948db97d30f74ee5162e48bd5844c80fc489f7ec9c942ab57e2930e7eda4f240f407909e7e5f64ba306ea47954ff49bbca903da8dfeff77b1eead6ea92f94a72a26d20b4a8bba3039a913fa03754959ac3cc8403f244c07db279070b495c65b7cc92c4ff261298abc2927e5a62e94f4485bf24491bed2fb15f7d5975fe9d2f6e041dfb97f3cfa0f55cafd3fe8ef9e7bf63937f0db81ee27b1fa9580e4daf38a9e9aaf97db93c5ba32d17de4e147dc3bfdde718f3efca8eb755b2fb7c76e7bb85b6ebe45c70363e9dd77de5582d87cb3cdb59ead0f515664a30c7e82db4508674f5dc2a66d599e062cef5346e230ce99f83df1f8936ea30d365279d00dd40dfd8c36a3ef6ebed916de72113937de6863d763df1e6ea71d76d231be865850e81a268d582590e28bcfbfe8ae94f2210f4b6a58560b497ff78423e59536a01dfc98a81010200de4d34306614240581d33f29c7e15134959648443a3958509580bd67162b0dcf2d5175fb977de7ec7ed2bb385271e7f4215fd21071faafe7e46f82735fd76dd6557ed18cf3cfd8c5a17ec3bd041606f06280dc04ce134519423868d5045b7d79e7b2b8be3676b8e5aa192f661871ee67e18f583a6c1329275523a169d70f40fa3ddd75f7da30a9c192972d0605807df8ffa5e97c3a8743aff9fffefcf6ad9fcbbc8f94fffef9fdcd9679dad33fccb644642a7a33131c7df7fef7db78b10074a84b8ac058f16a265d98d7b9ed309e87ce4f93f7ffa1f3769e224254f3a882a1be900a40b71419a0c72c2de71fb1d9ae735575fa3cb7afffa2fffaa576422ccbdf7dcab16d5b5d75cab03887ac07afa48ac262c468892329026d60f33c135d7584bf2f49b99be7379a5c5803d5c489ae503ea07cbd4b0c1fa1be875a30d37d23da7975e78c96dbbcdb6d2461d5509528fc84b9bb217848c6c5e5287aa3034af0a59a01809cbd227ebc7b6eecc09c37ffea77fd6721297be62fdca060df7283ee292a7e54b592d4f9481e5459b3068b4fec3fe1ea778fef99ffe459f41022863942203ccf6b2908781cb3df2a144160f0a97be8932243ff2ff17219bfff7fffd93de233b615144c8ac8420fd897ef09fff4ef87fd7789014e953772874fa01f232ae505ec8c36487b6a6ac8c038d2772b1c1cb8483b0102ff9591bfcab94913cb8273ca446da84d565d98860e877f61b305ee81b8c2dd2a32cdae7242d403d40042a6b68131416cff087ec4883b4334527e12075cafe1f02dac2ea8571c473f2a23f93be951140e28c174f3a7e2c233379bef7ee7b6ecc0f63dcf1c71defeebaf32e5dea856cd43211eb9b3efcf5975faba5833eb8bdd7edda17c89b7ecb640525bbfaaaab6bdf6749ede0030f76afbefcaa4e6e1fb8ff019dc8322eb7df767b9177596d7364c572a19f812db7d852c7046962bda86ed1b12a7526a03f531626438c53a0ed26ed4b9fe054196d4c9fa4ece79d7b9efb4674d416423a4c72b1605801193674b890ca956a456db5c5566ed34dfc8a0cfd80f67ff79df7f419e3807a86c0b4cea4bcda0e5cb55d7c9be8c440ee910bf9c89b7ead6d23f1d8cba56dfe5bacf79848ca62ae104e1198f58f1c31ca5d70de056ae61d7cd0c1ee47317b616096c3eebff77ef7c1fb1fb85557595507156cbeeacaabeaec86fd0394e20dd7dda0331d0a8c298b49fcd9279fa915c2be024b187af44fe2d07175b9412a099261b6f3c2f32fe8b2149d810a247d886f94c83564f01077dfbdf7e940455e6638df7efdad920ecfe938543c03830ec9604716dd6f116b066b88e532f2c554bee9c69bb4f19811931e9bf62c43610da1fc51589483cec5c9911db6df4157ce7efbf537b7f5565b6b3c3a0dcafc1f8ffc4395024a18a589bcb8976536c7a063964ee74209fc8fc8c5da334b5c901eb327140183026bcec80eeb814e8c458563428062cdf6b804283adaa5bbc843b9291b33abcb2eb9cc1d77cc710e6bcbda97767bec1f8f69a7471e3a2a1300f6ba281f72a2e4fe2c8a1dc5880c285c5344a4854c94818ece80233c0a9a99324a8be70c1a94103362538c280cea8538d42b799027f168231434e4c3732372e2318366207282117951627ff9bfbfa862a51f902e721297bec57364b474512c1004164cbb25da69fd903e0a137f53ceb40d8a8c4d63c250af948bb451a6d413e14997814e9d99a25920d401e30eb9e98390df3fffbf7ff6035f949c595d361b250ce969dac82d448edcc8e589fc4faaccb41e95a0a43e04d696799026e96b1d09c191b6d6afa449da4a08a12f3361f1cb384b677d12f9506c1989495efca64f28698902a6ece4c598a1ae20159433872ea80f2600c8aff949f9a977da13d2f2631d0bb3a37babef5b3ab143976cb3f5b6baaa325c26a5071e70a03bfcb0c31dcafab34f3f73637f1cab135e0847c9868985f45bfa0aed81cc9004e19193e5750e0d506ed32fc84b5b6235d03721bcbdf6dc4beb75979d77717beeb1a7ea84bd65328c85439ad413f5457f4679335efaf5ede7b6df6e07959fba656240bb724fb9d1171fbcdf5ff5dd06eb6da072b1c271cac9a7e8f84487b1b2c0d8dc6cd3cd74d2b7dd36dba96c175f74894edc75ec489b67ba31b437573fe1584eeb01509784a3ed184fc8c533fa20ed445ac818134959cc33c2614908e58d79cb920ee6201de3c61b6ed4029f7bceb9eeb65b7b69e1501c1498463ae7ec73dc9b6ff4518b8746a4c333c0efbae32ef776bfb79584209ca38e3c5a07059584bfce24255f4e884132ac8b1e73d431baac4627a4d2575e69156dac4f3ffe5495777f695466ed3b6cbfa39221331c2c1c084b07bd3420b30364242f062bb3259ced6130233af9a49375898e0e71ccd1c7e8de8d29762c0f3a108a800ece8c86f2533fe67e99f18b7692934e3c49099a191a1b89cc82befde65bcd0bf7c17b1f647b42c8c40064a63ef0db417ebf461c4b729c7463731f22bae0fc0b747fa7cf9b7d74890d477af8a32018345e29fac144bd3128680ff2a143b37c487d517fd6beabc98c10c2614d1c426160a12ce303219019130d5d8214c5401d22370368cae4a93a296000302059066446c7321eca22b634f04731db2c8d7660b945894adade2fe178cb0e2b8a418b924551559405a7f096d4fe624a110b897c4c66d2c5ca8088b0d89095e7d40bf790308a1b45cc3dcf919f2b648ab2449992bf2de7a9bf8c21942a8319258062a17fa16c812d0b7ac2f8934e16a83be2eb7abc3c6386cc58a03cc8022900ca46def405e4a25c368950b98410754220ed8362a5cca44b7df86b84d007e8132840ea17854f7ebe8f783f5ff72c13fd9f120d84e39fff55eb1612a7cc282d5568212fea9f3a40799985439a1565471f5a4065263f4019213aea00792039df9ede3a4079b362f1fda81fdc75d75ce7de78fd4db104c6bb8f3ffad85d7fedf57a45ef6005b197c37219b2412ad427754e9ec86f8a9849115635130cead4ca49398c8c79c61216fb47b435070d0edcff405dede0a0cd6ebbeea6ca1acb00d9b5bc121fbd8755864e240fea993c6823d2c69a420fb1cac2b2db3a6bad23f5d64e2d9ccf3ffddc7df9f9979a06960f6313ab8a3d72480e1263ecb0fc67932eea963a563d2ef54dbd59bbd86fae9985236da0fd3ef851f7903d7e319194c55c231c0a11837d892fbff85295328a098b80e52536e5280c33441a0285c24c86463effbcf375af878ec109113a3233a2e38e3dde7dfdd5d73a6361490b52e0198d4805d1f9a930f23df5e4537586738a5c9985d348740cf68eb0929e7be639dda067b60f71d1396c5674ce59e7e833231c3f50fc60f103a183fbe6eb6f5469fffeebefba1f02a162c6431834f65e7bec251deafd8c007e11e2e1f834331caf447c7ae4690e2be7a5175f72bbecb48b10e951aa9c590abbf0820b75f0685a625531e361cdd6ea98cec40c16cbcc4889fd154eb7708a8e59df19a79fe98e3cfc48eda8e4a34e82b2078602a21d6c364ac78470ba6fd95ddb84b66770b379c95ab63f75e7950484f3a858622c53aa921139289f9102039770a79e72aa1e40207f06018307c241869123466abb407c1c18993861a28a076913978e8ff24289a3cc54c9cae0c6724051a0bcacddbd32f04a11254d782c1966cbc4230c031c0b877e87b543589e5326dbff43f923a3911061280f57080925853c3a90c3f8202ef1202a66ea0c529faeaf53c2500eea893af093194933c4a74cc4a78fa074098bd2257f141df2a2a451b615c5e8e506a4a70a46ea837ecab3cc5ff2210de4558b56ea348eab61439f5479445ef25605cfac5608ca14bc6e7acb3df568e959dd1a11315ee90b3cd7f4e90b923ea0ce515c3a5b1685cf330897bea6a74ae91fb48b3cb332724537fc5d888fb4a97f2609f851967e6fbdad960b93158885091a7b9980d5101435963e7bba8c6d96a7e927c84e7d31118418680ff242e798256fcb49e817236a0885318e55f3ee3befe958652f97c30bacbaacbe5a37251f56102058ea913c282f79a0e3de9378e4c1a486fa88098d03532ca9b3cdf0ba90d9fa62e1404e6c233cf3d4334a5677df75b7db6c136fd96055b122c412db8e32716682c7c49431a5e3238c6364277d6d93d02ef44f9ee14f3888af0ee148dd583dc54452168d271c069c09592f288c57845a3011f898a38f757dfbf4d5a51e661e10094a94300c129d754983d098e403416cb0fe86eeac33ce92ce315a4f6b50782c1bc80b2b87252d36ffe8447beebea77640488b59219b69ccc6598262598c2383583bccfa77de6967b534509c7442c8e1cb2fbed2467cfcb1c7b583324ba0d342385e1157ea81e51ed6a8c99ffd144e97b1768a62a5c3b1c14887250c5608c4f8ebacdf74939d25446630569fd40fb312dc6f425c9c7a4359d1f9d47278f431ad539426f5c40c0e05cd8c8701616d4227c13a84e090e99db7dfd5faa37ebbaed855ad2ef6a698013390a98f5f66fea2f932334269a33c488b38b499118eb689c84b9918242f0869d3f1094bfe0cbc471f7954f785901bebc6f6832c3dee9117d39ffa64e0a2a8f0632041364626b4331382cd36dd5cf25c5ec3a01850a0bad4f2dfffab448222230df2447e068412918034b8a2fc586e223f66a93a98253d6fe1f83d0dca6dedc155e5952bb2a354c99bbaa71e58564141d107888be2237d8d1fe2b4933a66b68ae2c4c2d17a0ae943c46631b0a68e028df3a3de0947b918dc5867a4411864272e44a933712126ab638b6f648522a74e506ec84e3e262375a38a44c293aee5a9f90798bce489128470505cf41dea54f30b8a88b48d5448cf13ce5fb53d8983bfa629e1b5ac922e75491d2891898c9a8ea4a98403194b1b43f48485c47d7c3fe9218caf9bffd2b2e1879cef4a9f67cc1e7cd021eec9279e1202eae74e3fed0c55c41c0040111f71d811ba5ac0b2140775901bc24016c60fbf771582e0f503c6e2d34f3eadba8209264bd6c88b7e61791a7dc6ca0c9630e3adcf1b7d741278e8c187562c1c211cd263af0ffd869543ff60dc33ee18af5b6cbe85f64d3f767cbba2ffb05e382404e9b0bfcb9867c5027dc301a89b6fba45498ed51fe465b2cbe49272b29c4e5874944dc8e8bb3661f03abad2deb40b32e1af7d4fc60b711867d63f8c70689b9848caa2d184130b58061402f6d6ab34048243042832581a36b6e38174221a8483045412b3043a28330896b8aebfee7a4d13c21a200dc05213960e16ce1732633ef288a3548130d018701c24201e5615b31b8e270f1a38486736d75c758d9e527be1b91794bcd82b39edd4d3949ce88810e176db6ea7cb80f7dc754f18100c14af8058b7a5e259a2e25d995ed2e9281b8a89755fcc586618c841bd71f4188b6e94a4c7fe832a2109af4a39d42b27bdd8c884a04c91b1fc45675b65253ff36700df7bcf7d6a9d2017ca988e004893c1c02082705852f0cab29376be0fc5aa3c4006010a0cd9d716f31cf2657f0c22e1b90d5e8312ce56ddfd5ab9948d818f35c6091d4ee11006f9191c8fc88086709895a380ad63231bedaf694a995581c9c06682c17212cfe9e8b62c86a262d64a3cb502250ef1c91f458f12a79fa03009a32424cf88ab035a14323330ae0c6e407dfed3fff74f1ac6936a1769533fc36660a14c484b650ced4cb9a83bfa2532f974fc410606b0110a759e2df1697c7f9a47fd457162e150066d67b942f8949d366000532ecaaff52457ab0f2c76ead2ea93e7d40b932a96d4a83bab03263ad411ed83ccf4572c04ca8d1cc4a1ffd06ff143b1939e95996ba5fc1efe992701e464990e99990c9136961772410af47b9541e4e6ca33da53ad5d0957d51728a3a44b9ad425d0f115f2a2bea953648edbdfea8874982c5036e4a13e098392463728e10851307164cc31a93cf7ec7375831de2212d96b8d01b4c0ca92f943df58cccc8ca21039438ab2810d5861b6ca4fd963aa4ded907de68c38df524ed1dbdeed0fe81b501c1317ed5c211193839a64b6a423894d196d4748223654127b2dfcb244efbb68c6fc621612037ea80fa86acd05ff6fa062b3f6c0f90ffadb7dceab6dc7c4b5d4562250472e3a00013b80f077ca8fb4ad6df2012e2c77d5511ead8f77d263b9ed0330b87b60bfd80e7b47f4c246531d7098702684791b8ec053cfbccb3fe7d921123f5e833b37d80c266af03c5cc1144f66cd88b60fd1262a1e31c7fdcf1aa8451e228196615ec6d8c908ae7852c5d4610e54147a45370aa0d05ce5e8adf2f59caedb0dd0eee9bafbfd5d9c876db6eafc7adad213797d934f9b2ce4b27c40ae2a0c39d77dca99d1aa56c0dc21a3b1bb7aca9f25e0a0483154199b16658d2221d9409e1e980583737dd70932a2b1494d68f3434fed4cf430f3ea4efcb70aa854e469881df0c547239fed8e3b5bc00928008e9f4c4251daf1416d78e0a09419a9cc7e7b40d1d8c65298e33f77ee9650dcf0c8d7a993c69b29ef663c68262b28140e7a353b229b975f7ad5509a8d290671cf3265dee7ddecb04c2794408670d25453aa6964b60cacdc0c0a5ad503458423ca353eb8c58da57379f5134a4ad8a2c58c9f29b7af7cb60ffaded0961d3d62836da9ef8b43f27c45020d4358306301161a64e3c64a6ac84271eca8ab63519911b99500228006445e162d52003f5811fe9e2a7166b282ff1c98332923e84e307b9f8499d912f3202d2a1af599e56a79419054518253409c733669bba5427e5c53af27912c7cb6e691056f76b4446dd7b08e54759d0ce8c1fd2276fc2fab8216f49abf2cc9789fe89550a61f955045160526fd42fbf2d3dc23281a48de9abd40d4a5ae592f432485e84a77e00e46f7a82b2aa8523f507c15a9d18e2ba31c24176ea1c8b832535ac0abef2c132eff332a9c452e044ab5a38871fa1933194f5cd37deac6d63930364e67000240229b1b7c93e3261e8c7a4c90a0b4be65b6db995a6c13e107df7edb7ded6bd51ca0fe111977182d5b1fbaebbeb0442c9440061921ef5c2be319611e31f0267e9973607948f3a06b6dccc185f6b8db594d0189bb431fd92ba81e0383a8d0e79b9f7cb7ed2296348c943ea8bb09425ae4f40bd53875ca96fda803e431b678423b232a985141947319194c5dc271ced2cbe23613160123e25a62eca4e2d1e09830574e9c597ba3b6ebf5395368dc139fa679f7e561539ebadcc506067367e1968cc48a9383a16cb60742466e780ce4ee33073e05000cb523ad392c6621988f77f98fd6081d011e95cec236045dc7de7dd7a0c9bcecbcc9e4ec0be839ac0d2d14d71d0701ca185fc8e12cb0aeb0452e41081ed9fb0ecc56918de0b98397da6762a7fa2e53f343ee930c82032ee213d96f73858c0cc64dcd8f13e1d713cc34ac3ac66b31f6b0c79985912972b6932834201702a70da9469ba39ca3b39b3c28b9f583ee3255d9569c64cfffe90ccc8908981a08357daca0fb065b49e38dd877579930c4eea14dc72d32d62cefbdfcc12a9270e2550872810c892f8aa4444beac2f0850225e19b334e1eb817d0b963588cba0a70d896384433ce442b1312051baa443b9211cd24269d077888b62a60de90f5cf59984e7b959052c0d61a13018d98f5185abfdd50f2e88817c509ab6718f9c3a16241c695367de3f9443dbc3fb3143d52535ea429ea360f0570b47fa3165b5cd619bc8f8bc7dfecc6a19f0c80781e34739282771fd1157ff99238d1b64a7beb074488736200c7962a5b2c40b59338e6803cae8dbc8e76965231d833e53d9fd522532901e4a89fe4f1da0cc683726004c78740211da937167930e6b4beeab0967896c7c5127f6ed43eb07310867fbb5e40bb15206c25e7ac9a53a6964f2ca64e9659960610930f9632ca284e9afec7bf04a004be9940952460ef6f890151d81d2e6eb1a8c7ff2c4a2617f9431c532db166255b0c2828541d9fbbed95797e209cb5738b06c3809bbdfbefba9f5a18423f54efdd3f7282be444bd734a95d5040e2e71908abd56de8f639c2be4fef4534fd7eb6972c59f31ce01a5230e3f522d31f6a9592667bcda0ba4e853fa3f932f9b18912fed19d7a9b5bbf5255ba6a68e6df2c7733f19f837e983ff53874cca60ae130e42d2005cf559180476c58fe7343a0d017b3323a4f0acf7138eb83680197c763245d391b8a6b0759d57c29b92e337a63d03138544a7a273aa2c128ec1c24cd896702c2f2a9d34302b996520131bc72c151006a0609869db2c8c173b59becb1c9cf3bbbfe5d4199d804d76bf592cca02059629af4afdb21cc75e8b7e19c09cf19710198719b6dd7a5b1dd4949bfad3fa95b83a2b9101085024a79c748acef62cbe5e03d8bbe1f0c6da6baead96918ff75f3a8bb5a5113a2a3326061de5a3737b9ca2873178719493740c0826106c9222031d95ba45e9900ecad4da04e8724850160c425346ccd25441491df94eeee3200fe5a3bd5108b62f409fa12df4e48cceb6ffa48a4b9527f519d5abc9413e7a2f61509adabe124fdb1fbf509f2802ab4fda9ffa8cfb17754ffda0fc5122cc4c2d5dd261d914ab1159d9abf0fddc03795852a4ac769458db32a4cb95b2d1c750148c0b53c8c46542c13830e5417e9aaf0062a3ee9464a54ce66f758f1f1313ca451a90a1e519d78fd583c6917644999366961f698a2c3c63b31b826016ce6fe4a04c2c4fd1ceb415e133d2d1f2f14e875f9ea1ed281f72d0765890d40df5a74b9d215e96af84b1fd2dea9f3c91d3c89897316fbdf9567d611b30197ae8c18715901007059840d1af9195f4e8aff405fa9e1e10e179242ff7f45bea9e7e866ec00f1d0589d30720589bcc1087fe427b68bd4a7a8c33e4631243dfd3b248bae48f7e6332c5ef73cf392fc8fe5024bf407ffb7b561300ef05dd76eb6d4a7a9028e5633504a24106fa31f5a31317017a47db41f2b43606f16fe4a23f53bff4132659da47c48f490bcfd17b319194c53cb2706854511852f9a4a18d110a801f9542c7a273d2709002030e7f3a380d42437224938e0871d8cc8c742c1fd227ae7540ed2872a533658a2c740896507456230ac166d4e4871f6911ce5b237e2dd9884afd253f1a8ec6609985b49091e5404ceeabafbadadd78fd8d3adb3af1f813d5b263bf833231d869782c113a99a5497c4018cac98639cb85bd6ebb5d5f60234dd6625150f85b99ad0ea957bfe6ef5f4ea43ea91b080c939e53789c08a4639e271d9a97e0b02ce94ca48752252e969ca62d75471d5346604b1eda9e9aaf570e59fe728ff5c0e921888b3a83bce8dcd6eea449f9b048686b942eca983606de5211735d9e43f04afc92beb68bdcf38c74993c900f7190093919c858b10cda8a15e2db8af8f409c2a170f14326140871e8735838bedc15d0c6d425fec4457eca891f791871a230b3e5ad504efa0b754a79202e55d41257db58e2da4b91beacfe6f949875441ae447ffa44d981069bb881ffd92b23251a2beacef20130a8e74c88f250ffa0a695b1b29242c64a89bdf5236488be79686c1e2405a10030a06856a7d56c796d67167b5c4a847d2a31e550e292344a4e355c608bf75c216d267bc51bf948f091884c373dadcc8847e8482f37dc0933d7932de18b3e449fdd1b6e810ea86b6420ec8cee7e9cbc19536882d234843eb5dc2d9ea097e7e1224d6c7722b687ec4256dea9bb10be150af260fb2685b86e55a1b27957e4fb9fc077fb10c683f5d72163f40389fbeaf0f084927b8a1bf5919acdeec2005cf1973e837ea907e42fe5a5e64902be1681fea847e5ae9335e2e83c9c97364454f1187f26a99820cc8cdf86bb1870600c26a01a3cab367feb72804e944b6e64e63fabcc44fe2109e46a12350500632956c2440a7a152f0a7d251a00c0ce2e18772a2731ab19026cfed1822e931d36320d2980c1ac8868e61ef3ba03c4d6e1a84d9388dc140a44169786461b069e7c15fcac360239e36244a4e1437e9922fca1162400902ca63b34feb940c406651d6b1e8d84a38a15e3ce1fa3ad5c1247199b17b05e9077046729226f7c8c70c9459960e34a973ea877a401ed263809386b50903dfcaa1ed2861e2fea0e5937aa1de19780c1c942a69a0b474d62df5cbcc897c4893f2f3dce25367588df8313050b2c84abd212be5b701a9968ce44ff90963130006348a84b63465429b534e66da160f59e967d427f585dcb4ad0d548082204dad73919536a02ca4677d8d090bfee44f19ac7ee88ff40dea957ec66fe4c18ffc89cfa483b262b5514f9403799105b2206fca4a58c808ab16196847eac99407b2d25ed4852936d2d53690742c6fea917bdfc7bc62a68fd9a4cdd2f2e9f97a205feacc13807f3f442d2779ae7d48fa2cfd1185479ed40de95919cd828404098f3fe5e3376303e545fdf92526df2ec8447e7a8c5dc62cfd003900f951d7900361a803ca66fd80be459ed411fd80f2d2c7c89774e903285ede57a3cead9cc844ff523f2131fa0bf29236e95267a40da8d3ac9cd29efc461eda3beb4719fcc49a7e8585437b528f8c03d2a0bc8c37d50da2635846a45d204cca6a7d82723006217de4542b2cb48f1fc37f52b234dd47da40fba9c4a12ed101599f417f80d0de06e401b40ff50bc81bbd469b5287b43513969848ca629e108e75685554a1812900577e53d9742a0a47a7a583d3d0d668169f7014d83a1544c0cc1272a01168484007a093d1c83418bfe9d83a0311456432908f570a7ee398f418045cad43a330908986437e64a14188ab833ac463f3db941979a28cf043999822d241239d87ce869c0c347deb5ec2d011e8e87ec6ec37d35541853aa2f333f838a84079482fae1b64237f1b1474563a32f2a058499bfce898365b65502207f9793fea9ed9b65fea240d088772a8620a6da6ed18d2d6df01fc368541394893bc901b858d85497ea449fdc4560565a52d51a42a8bd43f6d4159695b64a50d798ec24146e241c6e449ff212f080065ca3d79129f414ed90003c906dc1261664e9a105a56a7414940beda77244d2c0ad234687a128f3d1ae4a53c0c70ad074907a5ec15b1ef3ff8abb20e61e89ffc66e05227a4493d911f4a11254d5ba164e8f7c4a1ad211cf245817812f41328fc7c5ff07b19f427da80bad6ba1059489f7e60e30c99180fba742df1c8c340f9ed9ef4c8cbcbe43fe7435cfa2d638afaa69c84d1bad5782287d4016d48ff224f2c36e21207b2e539fd9936677c69ff91b2daa48b3aa7dde9cff401e4ffb3f42164a05cd415130bca4f9ed4297ee806ebcf160f59490b39e90f6c7e334e894bffa1ff650a9f7e16ea8771c87b44e487bc8c67c613750d99309e9183f0c465ccf8baf3f517d72304471d68fa5267a48f1cd42f648b0ca6df9013dd40deb42561c983e7b4a7e906ea5b2711d297f0f77b5f7c1aea2f5a57a4e1ebd27fb24927469297f5f12a0499f1474721277d887a623584bc3ce178d96222298bb94438d505899522bfb9373fee69341a8a59079d917b1aa0124e06535076c8c020a421ac3302ee194c5428cac79608504c28194881866310a8b294caa383a2a4e98c3416954b5ac841c762e640e301c2d1314d666611ccc849973576aecc60c8973c918378dac0a1dcdaa0728fd2a0e1282bf9d121909f816071e88494d93a06b2a290c987ce6003dbd74f2016210b3a1a75a333add0818c209935597e941565c760d10e2d719007254cdd932fedc00001567e6d03c9dbda94fbac6cf2dbca8702211ef951b77450ca471e28265dc3a65e423ccac773550822178a82f8b429ca0999293b7503f96a5e0266fd5e69f81714a923ead0e7eb9709b9a74e90893268dd491c14071633f9109767a44979283f831a52a49dcd1a01a4471cea0e6596f52d94bfc4277de4a1df41b2286ae4a09f3178b5bd240c65a6cff87a92be2ce17c5ff0479851bcf4259537c845d9b54ea4bf5056539a363e0843199901d37fe9cbdade0abf610d096005d106d6d6c4ed1cda8236a91a73923fc4c4c48ebc5196c80a90036588acf4399f8eef07c841fde14f3864a0eeb47da5de2041ea1fd016e44f5e58269a87844591523f56ff3ce39eba4726088a38949bb18d3fc4607d88bea0635bf2a63f9016fd0025ad650d6d01fcc4b79da68dbc164ff30cf54d19a973d32f9491b25b7fd07127695abfe4deea83b663dcd35f48972be5d3360cb23076186b36c98a6560ecd0179564096f634e4079183f900c61357de947d433f2d10fa80bf2b7fab2b89a56f8cd157fdb6fa25cf46b3ddc207d850929ed45ff8c89a42ce62de108e2e7069ed3702c5bd1f128b0cd20987d71afd73008686c1a89c6857c580ea313f11bf2224d2ac81a840a43a1d098e4c3734b8f8e403c142d8d011888a4a33249074426944fdc50c84023e3471ce430d393f29b9f7526eb7c3a90a53ca485c2a1cc10089d42d390ce64f55ca93794083399a5354dcae29582c1e749f9480ff9c9173ffb120183c9e2535780740847d94c5ec2119e72e0a7f9497aa46dc4592d5ba54d79062c3f2d9fd49fafd7c5b58eb56ea94b298f4fcbc7a3ae19d0ccaa5050282ae2a2b4a9176b5fab4fcbcbfa87c9e2ebc92f3f587baad526eda97986fc88878ccc6a9193b2f1dc97c5bfbcabbf25bca627f9233f57eac4cf4afd57ce91d3a751e91f281cd2a71c2cb9520eaddf506e85a44d58148885a12fa3706cd94afb719049cb2972d2c68030d45f65bcf87e6d325066ea8c3aa71e984d230332e90c59d222bef525dadce4b2fc2a75e2898c3c914f6595f4a813ab0bca862cda169ab6bffa3aa03d7c3b12877e4ebdda9827bed5076d0739a2f008439e84d3712e7eda66f4ef10def74bdf8750b690bb4d00c8877c214bed43228bb6532833e5270dca4eddf1dbc602f1b4dda4ff3056acdf6a78ad1bc27bfd421fe06afebece2a7567bf91d1f76b5f77962e7e8c5555ec521e9ed9d8a1ccd4b912acc4b776b2fe862cc4a14e884339915beb59ea8eb4e8639403192bf1431b057963b989637d25f66702a4cfd1991191944546381c032cc215975da15f23f5bfafd0775beceba67cad380f36b7afbe4aee05febe1816967059fc102ffbdd10c8a3e7d5fa972c01f7b5f2e18d5bf52f0863cf482f4b47607f6d135c65906776b5702687a611f2a30e342dca93f957c265f90abcfca4193d0f61b2fa0871b334ad0e04d61e7cc7eddaaba55d72fe0a9e4569d86f7b96a50d789e8b63fe94bd4a7e0b83ac12c76431f0cceaea1a912d7e6ee5235dfefe076f5b63c1f05d283e01cfb7af4c0685c9c435424596dc3582858be3f39bfeecdb33c4238ca56988d2c9ea288f7cf870256df2f0f07da72a5c11c40f39f59a93c5a717e40d618b6065acaab7a2fb12a84a5bf2ac94298c83909f5eb3747d3fb4f2ea7d084b9fa9c4f76d803f7f2ae08acbafd42f8640105d57e8eace38ed0cf5272e7ac8d2b03e14e39cb3cf55a588d2e548339f60222ff2201ef9e5ebb91051987c7b930f61aaea8ffbf09bfceaa417e0c34bff0f75a3cf2ded5cd838cfc230b5fcc37dcd7e0aa234a817c25a59d0215cf579a82f1bb7aa5f18bf41fe9848ca22231c8edcd5c4830fe9a76138d7cd1be61ca705bc9499072f5af17563c0a74e6a210b9bc5b367728d9ed74261f8289ec967fe16dec2f13b8b1bc5e7ad621fae7619ab4198102ea463799156255f0953953ee1fc35cb3f07f2274c5ca775c3899c410695370a13d76ffe595c1fd9bd852fccc7cb5354277139ed8a4c19423cfc34ac80af12108ef77c90fdfefb1e707c7582992ca7f138ea69f17dfdd6876a798a10cb6730bfc7fe810cd561ccaf141aa873f50f88eb3f860febcb62bffd35d41bf7513a3eadea340c95b49a06d5e993b687b64d90c3cb2bed19eab2d2f6be7d6973748785adf893076de0fb3ac77c39828fc5c8a7a250701cff258cbf8678b9b8fcbefdb6dbf52b265801fbef77807e92cafc2cac222a435df832d7429c5e1e94bdea99c609650dcf48c3f7f972f9351e71598a51dd9ea15fc9f33ae58ad2f3ede69fe147596322298b8c70e80cb5a0e7d7856ce80c741c2a6c4ef0c4634fa8c0dcabf03ce777012864d17385a46395c36fad8c18f25c2b49fcaa2a2b274386f03b0b1fd28d819f81df95742bfe1a36a463f1f250b943dca267197816607955c91c90c5956b9c1e71ac2cc813cb6b7edebfba8e623fdf21fd734d3f9f7fc82bf393df19e4b77666fc348fd0b9233f3a337d8b6fd7b184c0f7a578a9147f4d97bca3fcb3df8d40459e27b4edb5fd35ff1026c867c8c7af0f599cd994ad0a410e5f56e48deab6ac5c217c93a1200f6dc370b57b0b1fd7856feb281c650afef6dbf72d7f7d58740daf16706083cf31f112a4110efdc4f2b1f494f04427f18c3ec3bb6e2c03f11d33de4bd13c429cb82e6717960665e03e0fed5b8ffbbe05b2b8a12e0c7159e6354c2ebb9a4c793fcae1f1647559026222298b5284037801a94238950a9deba8d1b075103a711568d018fabc206e0e163e6e08a0bf51be3623e099dc9bbf22cecf20cf8bf2c9a32a1dc36ca605eac42d83a23cf579255deb88715e6541fad41db359bb47a1f0ae518f7df7d3d9295fc6e513405841a66cacdcc8a132ce0fa8aaffc6215fef7382a2f41b440d99750c6508cfa3b0e818be90ce8b8b1b6db0912eeda09c0d848dd3a01f3df2d023da1f79c78c0f6a12f790830ed13f441887b53ce604561f0de9a538aca1a965696a549541c79995a5ba1c869848caa2e125b5f096ab5938346e4638089483759e22bf2298f0fa3b2ef06cc0d2aa0f65f389e33030b2c1319b28ca238fb2cab43a4eedb4f3f1e60459ba73d8665569125fc0006452c3ba30ebf0ac21b384cb338d13944ccd7c55a686cb5b15a71e14c56d5d282ed7eca2388fd943d67672b571a5632bb431fa854fcff0314bfe4eff7df7dc574548b632c17dd598947b9665f998ee79e79eaf2f393339ced2b7707308cb3b2b471ec13f0edb1261f5a27513ea47cb1460e1e26779c444521615c209c452043ea700e170f58423190a4ca83c54a0b8110aa0e10a9ecf6d54ccc4dab0b04da9c49a127939f3cf6bf937194ab46f7d88ebcf667cc8ab168df42f9ef351d59864ea43511e092d0f4a84a1efd06ed6f61efeb7f65d2115fa01cb6bfcb65504e299bffdae6a7f495be3c944056b883e847f5322cbab1e14c56bd9a8c89c2f437de58989a42c32c261e9a2166c498d6bd62904265c1eb68e591f341cf7662dcd23e4e5a885a2b82d0545f216a1286e4b80c98742f0f7feaafb2b416eeb4371f82264fe25fa513e6e2d14c54d987354eaf8c9a8edeb225e4141b1d9bedb93160f7ff1f3618bdb3f4ecfc23504eb7373824cc6f0bb289f3ce2f8738aa2f4cba2288d38ed3c6222298b680f0762a90b9b313c78bfff885c19c22983320aa2d18898ba166c8635af51bfb554264c05f9b46bc1a7571b9570c5f9189abaceb4ef489ad607b2be10f2a9e4edef2dde9cc2fa6d43288a9b30e7c82bf4a23020f68bfb5f3e9eddebf328edcac4a512765ec0f2cf308ff36f0c2a63ac82223f7d46fd17202692b2a85838815cea002b47ae100e4b6a9e706c462a19b720c415550b5a590571cb60b6ca2cf999722f920754872d0e13230bdf4428ca238fa2787382aab4a336a18ef579585756ff285e42db4199f6cd87b13168cf337fed43f809a2fe94508c7cfdcd0e6222298b8c70fc3a6a011ef1c70e3940c09a2a19d5670e2b5a30b317cadb007cdcba65aa0ee315a5ded3e105ac4b5787f10d6df700133c1b28e199c187abc48b9f37252cdde682cd4ef5be85c8943077506d898467e1778c384e51b886fcfcb5389d84a6414c246591110ea4520b752d9cda9da22da0bad346cf0291e8b36816e5c309e1b0f1a91b9cfe3975656114f23c238ef8be0632395ac0c0419632288adb10e2f2c569c4ca29a1edc0dab73e54c27a583c7d5e733c54a76f69cc4fa8ae8fb98b9848caa241c2e1e410968dfd41209468fd1b7e15459117706e232fcbece2c9279e0a573600b9e7b4cbe3ba97c53e96bd130069585d401e2c3f423884a3dee2343cfc0b544f3d69f74fe8bd220a63f1f84ba6fc6541fcabe52996bb2520df26b5501437212161ce5034d68a5014b7b18889a42c2a84c3d25921fc2729201bc02cdef670e6158a2aac0845719b12fcf958fe9e79bfbefdf43d1108d95b294f681db184f6cedbefe8df36e74fd962191a49644b6781a48c583ce41e3f810f479898884278fcabe2252424245490d789b55014b7b18889a42c4aede13073b7f77150b04599cf4da8a26e004dbdfc12370a2480a5d1e7cd3eeed759bfea9f677ee9c597fc9bcc90b2100f04f4eedbefea9f6f9e36759a1206a7fc34adb07ca62f59c9554924108bcfcbe797d5adfc3692516b48c21ad1d8ef794dfa0909092d1f79bd580b45711b8b9848caa2fca18166249ce6404638da384f6a3d7070e287ef7f505219fbd3b8f041d307c2fed6836ee68c5f9cfbddb90fdeefefeebaf36eb50e4903ebc7bed2a04b7111b950c7ba1417eadb88067f96e548d74e6c113e5b7a4b84939090d08c8889a42c1a4d38284b557819dab6e253e2615620560aca9f3263e1cc9c3153670a7c038c8f040ee8ffa1c34d9e3859eb0ac2213c7e109259897cc1d63edb0291f06154dd13923a8690a86fc8857d33ea1f2b897ae71ee223ff2239131212e60daaf55f6d14c56d4b8889a42c1a261c01336d14234a10255b5db1739f70aaf3ab85a69743ad8da0e49f7eea6925893b7adde1060f1aac96cc981fc6b85b6ebac5dd2ecf268c9be0fef8ed0fdde3816420957befbed7bdffdefbeeb759bf69f8df7ffbddfd3c6dba7bfeb9e735ccfdf7deaf64f3dbafbfe952dd6bafbca6246564f4f3b49fd5eff9e75e50b2d23d9d279ff6e56dc1168ed6593d288a93303f21f48530be5adbf270b5dea98da2b8731b457214a1286e63111349596484c3acba10a2f8989ddb970738ada5fb0899f0753b8b76a426459c5f2dcc8d4e2b79ebc0f01bf8dcf34d39ac9d5f7ff9d5cdfa65962e713dfbcc73ee8fdfff70e37e1ae76ebbe5b68c6c060d1ca4243363fa4c37fafbd16edcd871ba1c0789bcd5e72dd7ebb6db351ccf70bd5fecade963e940f2b366ced2e7cf3dfb9c2ee7219396b5850ed2f2ede5c315a591d0b6612b243679b27e9c1150e8172db98fd4edcfc5288a3bb7512447118ae236163191944529c2b1e51e408761b6cf26ba1ed9d502543a8b81e70ae95884a390f133fd5d455c79f80df37c98fae35bfef9dfb59e9541251ef941be1c16f8ecd3cf9428c68c1ea3c4a024d2f72db55cc00bcfbfe07efff5777d4edc5b6fbe55bf820bd1f07cc2f809eee61b6f7677dc7e87920aaef74bbd95acec3342101a793cfdd433fa8c46ae962d0f2fa71265ee5986d88f7b1bf071987a61f53127b074f269cf0e9a2a1d4353a6373fc9568ceabe180ec1c89589abada0e8b275e8838cef4a387f6f0a8efbe687d73b9025577461b6ea50207bc3281bae2c7cdea66bed77fc9c315fe4578ca23c3c6222298b860947e097d5fc676ee8404a388174ac005a082a3a74302b30cf789fe499a79fd1dfc4a1f3e8bda4819fc5d50d7a96ec421a466a143c4ecff2d546976b95bfc0e211b6f099218a9387a6a9e12c2fff9cfac00ac1dae3341a960deec7313fba5eb7f6523f48e3bd77df53b218327888fe61280e0db084c6de0e4b652cb1dd7dd73dfa373cccc2e1e49b1d2e6009530947c251170fdcf7406576a8f2f8f2c46d415d22a7d66708a7650ef7d681e27be095827f6661e3387a1feacceab108169efcfdccb5362cbf394555be73082b5f91dfeca0adc8a6ed5f0255612d7d696bf3a39fd2dfe8c758f3df7ef3ade3d50bdfafa54f84b040e5a32f87fe09cc2f462ce79ca228fd3c904b11c61cab0fc8e9fbb49791e7b5d2ab7a2ef1aac96ace61696bfd710d3a218692b7c89b95a5061a922d2692b2c80887462f04477ac3b21afb0d080a7928209208cf3efdac5e690c0a66826901e499fa69419e722ff77e254b8778a4cfdfb5bfe0bc0bf4cf0b13c60a9ea55103f85b2537069687357eeca779d2a982ccd6c1b8423a58391f7df89112c5cce933d5a2e14000e47ccfddf7ba8f3ffc58fddeeadbcfdd1d4eac61b5b0843675ca5425aa375e7b4397e070fc7ef185179570ecef10cdfae557f5a3e12132668556d698706c70fbfbe2bae0397135bedcfb1963e559c5af6e9cfc7d7d88d39a6760b0eb802ff09b0dd4aa9bd9425044857eb381e690ada89d8b5015d6c6ba3cb3be63fd963c478d18a513add75f7d5dc793578cdecfd288fb6c2d3962ff3905f915e591475c261b73afbcecf599928efcb6301a9edfe15ee3583af22ccebf29a0f982383fa9db0f077ca8fbc9cf3e233a5af46da6cfea816f8fe27c404c246591110e1db916201d142627a8a850259640162a7840dd67dc0ba14821f94d5c66049f7ef2a9ee6b7cf1f917595a2c2dedbcd3ce6ef3cd3677a79f76ba76425f313e4d03e1498334ed1afb6b1879a688e4ccff8e9fe79f19e238ecd328b1ca3de5800020058862c6f419bad1cf6fb580c492a18171bc9bc3493688087fac9a8913266a3cdeebc12a5227960ca4852503e9707880d3703ca70ef8adb33c3a5256b7bef32317cf556e6414683d89cc2a77280fb07074280b5bd5d1a276d3fbec792e5cc27c83b8ffd4070d1bfa8e8d1bfa90f971cfd8013f4f152b5fdca891dfab8ef1fdcec7276e1cbf3e39ccaf491064ad1fcf56c65018237ddfeceb264d98e47ef87eb4ae5230d61997f8fb7095b4c9a792968034f272cc2e24ad4c3fe8efa7b51e870d1da67a04c7168086c9c79d0dc44452160d5b380294a81edd0d160e4acc947a5c79f63b2bb0c00a075ba230bffce24bddc3c04138cf3dfbbc7638f637d6597b5dd765d92eeeb0430fd7bcac31b866e95289e423cfac532aa286b367b192b4305978f50f9d20a45bf52cc4b132d995f23060cc12619636fde7e9d9d171ea8a63cceff012a8b8912346ba3b6fbf534988136edc63e1fcfedb1f4a44b7f7ba5dc3d121280fcfeebce34e778f10d32fbcd7230e5948db0f4c08af32835139e599fdb6d98bc99c6f1364cfea85fac8ee3d79e52d1c10c74f98ff40fbd787789c6508fdc52bded0b7048c13bec481a37f33597bf595d77cdf96f0d5e956a719fb656122ff3986e4579407d0b124638bf183ac3c63acb0fad3b7cf5bbabc8ee3e010a74ad19b94977855e348e2c4e9c67aab29409ede026172fab4ae24a15b38418ba3ce21c5a2b88d454c2465d128c2c92c9cfa08870a5448c5ca1505881fd6081bedccec815a3791d58022de60fd0d94708e38fc084f38f25c95a2a6edc35250ffbc6ee788c36633a45039c4b546379978a6e1349eef50be5cde2a4066a0f7f2ccdf4b079206650f071971ecb530ab613d9a30263b479d393480b9cd9fbce508b51d36e0c4daedb7ddae969deee988e35d9eebaebdcedd78c38d7aafc42c61918f815a557679c66f2b93efd49e8c0172e87d28ab0edeaa3aa894d97e5bfdd507dfb609f3138afa4115e2b021bcea02c64ae8b3803ec83819fadd50d5017c068aebd75f7ead7ac54f86fcac3c4b1b58daf1b300cbb72960b21701991853c8e765f5cb9b6c05f479a38f9b32698a944586ab9467ec4f6375b5027d99110d63966b541f862259661f8cf38a5e78f1f9173d19fa39be9b3471922f87c8a1284ca31c6222298bd9241caf944d311bfcb3b03ea842f9c2f3ec8bcfbe10e5fbbb32ede772cfbb28be527ca7bcf38ebbdc06eb6de096ebbc9c3bfaa8a335af385d7f0d8ab44a49d2807ef9083fbf8ce415a9fed64e2261051a17f9243f2c354d439e3f2f5696f9c5f17d3e3ebca5a79d52404763a911526096c6fe0ab31dca449d61010df86080be83c3d1e8f1e3c6bba993a76aa373a49aefb2b14cc6018377df794f9fe3e810584090159d17c2411e96ecb2ce2bf270e53756a3d537cf4c660f5f6771b9342c1d2d82d5830dfa389ec5a9a4edf34948a805fa14fd88f180eef05febf078fdb5377482f5e5175fe918679f1265cd78603cd95e9c85273efac1945c517e731b36f6196f940bd244917f38e023377cd8705de1b0c9218ef1fefdc8efb54c948531443a36f6f2e9cf0d984e40662c9a11c346b8ef060fd13d65d5614d30966322298bf28423336c48c7cc441ac094b4c17edb928f7ffe9c5a33bf8ae245817ef6c967fa9ccae08ae05c596e5a779d75dd725d02e148a3aa9f548c4fc72b3e14ac7ff9d4ef67f8347cde5e31fab03e5d4f54bee28382957bae9483f8c0ca12978778007ff254654b439196c48500084727e3d000719199b419381012070b5e7fed75e99033b223ce0c2eea878305d42d27d2209e01fd076867a58ee8c0946fcae429fa0c72263d93099037b29186c94919e372212be1a8177e231b8358c9163f29137e1a26f8599b5bfd92b6af17017510c990307f80fe510684657cd15f38a5a993279964b15f334dc0bead4d3a5f7de555192f8fb921df0d51658d7e601c31569891334eb014785500c2a27fe6e59a9bc897cbf4e02bbd5f7123878fccf657cdaab1252bbba74c93274dd6b88c2baf9beaa66de937052c2d1ba75667e4fdc2732f64e3191d69e3deff9e3dc44452168d221c142a42a37cf20a1af867cfab30f6fbab2fbfd2d93aca96fd9b6c692a283c53e42ca9adbbce7aae4b67bfa48682252d230d3a1dfb1b57f5bcca9d7fdef9ee9cb3ce71e79d7b9ebbe6ea6bf474188d4aba2867b59e44f172daed9aabafd53d1108821361175d78913bfbccb3ddb9e7f8b8ecad685c14aa22c8247942b0375e7fa3bbf8c28bddf9e79eef2ebde4325d1ae3a4190479e92597ba6bafb9d6f13d353bc977d38d37b9ebaeb9ce1f1490191c84c24100ad43498f65b58b2fbac4dd70dd0dd9be0ccfed854fca42ba279f74b23bf944815cc99be3d3bc0c0aa96475a8f5ecaf9016b220eb39679fe32ebce022fd7ddf3df7b9bbc47abcaae7d5fade0ff929f9641dee596d578e6e5f72f1a55a2fe79e73aebbfcb22b5cafdb7a65c46f449e905017912e907e42df62e958bfb021e39e150036ab99f563110cfa769086675203a1f082341bdb9c5cd397a35573cb446ec64c3dc989e2b4bc7c5faca02243d34327b25236e4242f26cec8a4d60c2e5c90b5c8413eac6cbcfcd2cbd9def7dc95b95a1f6b5e8c5b015f40e13d41d573f29bb2cda92c31919445463828a25a40e9e8921a84238a9cce62c80b81b26796436132b2114787a3d0eff47bc7f57bab9f169e6bdf3e7d752d97b8471e7194db738fbd5ccf2b7aea6697cd96d81bb94494f46ebbece656597915b7f4524bbb653a2de33a2edd510f1af4d8b78792074a5d2b5d2a1312d8afc77e6eb5555773bbecbcab3be6e8635df7adbaeb92dd521d9652acb9c69aeeb0430e5362f233102983807b665f279f748adb78c38d5dbb25da29b0be20c503f63fc0edb9fb9e6ed5555675bbeeb2ab7e31804ec9f1e76db7de56f33cfcb0c3c312e4534a461037f5c7093c64d8bafbd64a083aeb907292df8d37dca432afb5e6daaed3d29d5cc7a53aba4e1d97712b2ebfa2db72f32ddd99679ca54b7056d7461a10eaa9a79cead65bd71376a78e9d343e7b62fbeeb3afcad86df56e6ee79d7651e2f566beeffc10dca9a79ce636db6433b7ec32cbbaa53b2cad7543d976da716721a14b54fe7c674e48c883fe942939f9cd6b032c9fa1a4b1786c898db10289d07fb9328942cfb032e057437e55ab88d35fa6ecf379cd4da86ed3f1e157115e78fe45f7fda8ef75a90c8755a32413134d8d7be240be3a510ff532d710d257a20c137fca3250081ef2832039c4141b0573829848caa214e1d049509e5ce920ec79402c4638da40e19ee75cd9a761c35c5d6800353bf9270557c86fbbb2af417840234150343a8a9a19ff461b6ee496edb4ac2ad59d76dc4995e816a284575f6d7555b01ca956e2a0230b50a4bbefb6bbfa116f6d51e228e0edb7db5e49615d212a886bf9e59677870ae9a0c87de77f4ac9f5ac33cf52a58bf2edb65a378d8302468e35565f43086f59f5235f36fe696cbe30004191df81071ca8168f7502ca42faa79f7abaebd0be83db68838ddc35575de3079f100ed6c4ae428cc8447e90e34e3beca424cb522371d65e6b6d77c6e967fa2506485dc0203df18413ddca2bade2da2fd9deadd16d0db7e30e3bbaedb6ddceadbfdefa5a0625124977cb2db6d241af035df0c0fd0fba638f39d6adb6ca6a6ef92ecbbbcd37dd5ccbb34df76d344f089d6758633a60a2b6b6f69eeb83a89523aeaf7986269e1c14e61123ca8f7b36cc757937286b969f18d3bc9b861ed1312a7dd7e2108efe88754338bec8cebe035601e9c7ba666e02d9c9877165e30bb97879bbd019f1e0ec8ab37bf1a72cbc5f471951f29aae5c55e13762ec986cf5210eefdbe029f7eacbaf667a1707996355c66167173191944569c2c1ca405951081832bfd16e9d8e2b0ccbc92c3edfa24e0acb46389ff4e78d7c30f6c7b1eea71f7f0abf7f52e665168415c48622d6118dc2d2d43e7befa3c4b1cdd6dbb82b2ebf42ad013a2e8afea4134f76abaebcaa5a3e679f75b62efd21074b6510ce027f5b4049e5e0830e71575e71a5100befcf3cac16d1b6db6cab9612d6036445c766a0b0f4b4febaebbbf6edda2bb9110f326169ec969b6f75c71c758c5b718515dd928b2fa9fe9005794272901a6474e0fe076abd55eac6130e84d1be9d108e1017cb73c463698de541487175211bac206434a2277f648574b0ac587e63203020aebfee7a2508f2dc65e75ddc65975eae65270c16d471c71ca716d7027f5f40df71224dda877665e96ccd35d6d2b8871c7c88969136a61c175e70a1db62b32dc4aa5b5e2d3a3ead13b775d6c1e702e1201f681b6416ea6b1ea2588ed947511e31aac26bdbf9993560aca20bf41350bfcc92d9f640dfb6a42bfee811ee870d1dae64f3dde0ef54c764877a2c6c3e9fb904f231b244866fbefa265b3acb2c1b73e8712c87706f5796dc080b819226e3de4806e4f32c8bb8ce8b6075a5f52fbfd1112ce7e9293595d5ffadae975e7829b4531867b97cca222692b2284938e1c54f96d4a4f2ac33814c0015dcff260c573606274e98a4560b2f3bb27c8692342b88f86c66c1c6bc10b9a1ccfa575ca1ab3bfeb8e3b3d90dfb2510c911871fa9ca94e3c834a029708e10a3bcdb2dd94ec3a0bca944de91613969c10516729b6cbc892a5f942df9d22094e998a38f71cb745cc6add96d4d55fec8854575cac9a7b8a5dab3acb49a7ef9807c743f49d265860239417e100016014b5a34300701d65b673d5d063be88083d4fae0b9d68f5c29fb99679ce996587c0925a66bafbe56fd20c91baebf51e5c19fc3067416804c2c831d75e4d14a809495af53e387ac58285827902ecb5f0c701bf4c87df34db728592dbee8e27aa53d910392dc61bb1d74098d32dc74c34dba5c6a44465bb30c897544fdb0f764e5b0b6f3bf9b1e363041917f42cb44dc66d63fe84bf439de4d31c2a19f118ea55dbdca58c712c01f45affd5ec69b5788f3be1fa0bf185b2c09a2bb9468e012b9622db044c8c19e2993a7eac188e9d3a6ab428f1d47bfb124280b69c6653082b0b1d454b03ca837d2a7eed1016c4ff8c9fd4f3aa1d730e237a7751b134959349a7010d0ac1bdfa9aac9c70aa18515703470c2386fe9403a901095819f2ab7109efd0f96713a2fdbd91d2dca95bc0843e3b3ec64b24024bc9d8f82beecd2cb54416fbaf1a6aef3329ddda1871caa84048131cbdf7bcfbd9570580a8388626549c73ee3f433dc0acbada016001bfd3414564c8f7d7aa822eebe6577b5a248cf1f60f0712180fd7becaf848385c3f7d128137972b41b8be1a0030f526bc1c8d5f2e6c002e4c8d2e0d5575d1dc9e35feea4a3530608819761d9cfe2a003e4d941489065b2dba4fcd40dd6da1ebbede196586c099503c2233deb70d42fcb6658882ca961e1d889bb9e57f6d43d2cf67cb0a8203dea97b2419490f385e75fa87b3f5881583ce44979744935d487c95f07a1bc317866fe793ff5cffb05851387696db032cd5314d4fd9ca0308f1821bfb8ad182ff8e9244dfa36c7717f9939cbf5ffa0bf5aed8c078e15b372c2d233078a50eef689185b45d134250d4b775e007919f31089910dd6174a9b2f874024940dbd04593291b613a510d2a891a354668895f42a3a60f6118f9d5ac8c75152097a56db28aec7e8be282d4316be00319194454638cc368ae1fffa2404e097631a221cdff12820571a8ea3c1f6697e1aa6cf9b7d353c0d6115c9ac1e250ce11c2b336b2337fc90010be4d8638e5305bbd5965ba9e2e5c0009602ca94d9ffc1071eac4a1bf9eebde73eb7c7ee7bba85165cc8edb5e75eaad0a964cb934638f3f433ddca5d5756c2613f05f99103e58d72279e1f1c954a263e9d6cfffdf6774b2eb1a4db61fb1d74d90f3f96b136dc6043b50ab07020694f545637cfe8921af1d88f31c2618d17d9888f623f60bf0374996cd34d36d5a53dcab9ca4aabb885175a58cb0b09d2913829c75e0d84c32105062fe9c4ed417d4038ed966caf4b641c29a78d203108076285b0f7de6b6fb7dfbefb29d97208e3e0830ed6b2610182d34e3d4ddbc4c846eb917ca2f6b767e49b471c4e11ea247e56143e7ed61a11976f9e21d46d53a1308f0258d8ec2afd8cbecff81d3e74b88e7dfa3a8785d42a10c7521b9f78ea2784c4f2148706321dd3c4e52803f264e2f5febbefeb516d8866f40fa3f5fd2126a96a81a14b24ac4e98651c521efef022fa0db2a18c94d914bd916f2de46528828d8732309dacf1c2333bacc518e579acc3eb432c431e319194454638546211d4c210058b9583b2222396c1105c11944fac6cac72b4c309e840583a9cabc7713e9d590164e4e33daf4a9b13609d97eda2cb44901b69d0f8975f76b9db7edbedddf2628d30e3de62f32d1c27aef6d87d0fb78b5cbb745e4e37ccb12afc71eae7f410c0ee424e8b2cbc889214e5886504ec9bb014b592900eca9f8d4aac04142d24d64314b0c9e1e3f92b56087e2c8ded2cd6d35d77dca5f5409e1002a4892c100e755589ffac921ce40861f255019ed36939f67ce8c187ea5e141bfd2c9d7168803242189b6dbab95b6cd1c594945926a35e211e4ebb2107cb71c8e597285f5479c80f0b67af3df6d203002c03ea329fe4c9d1e9ae2baee4fef6d7bfa93c1012e963b5b137b5e8228b69ba8b2eb2a89e92e3b0037dc0dada5b7d9e64ac1d6358990d797f43deaf286c9c4e42cb46dc86f68c3ec90b9e53a74cd3bf0b851267298a7770eca0d08fa37f54853d62f84855eaa6632c8db90dd35b5c9968db0b9d1f7ff4b18eabcc5fc61de11963f69b3f39c27ef5f06123f439f23747df8debdeee91e79baffd3e14d6d788e1c85819bb0dc1d22e424c246591118eb1771d48e5732a8ae521ae645425548e70008d034c1119f1bcf2f2ab7a58808e4587334b0742e23d9cf56436cfd21884637b1128558e4a7768d7c175df6a6bb500b23f7226d6c8f5d75eaf4a97993a27c35812a223e0c7a18145175e54af108ee5853fb30f36cd51eeec1b5d75e555fa9c6f986135901e337d08473b99f851163a23efbca0c4175f6c710dcbf7d008834c2c0b72c0812537fe422acb50bece5e506261f98a23d61baebfa12ee3912e24c93e15871b565e696577d28927291941c2583d6ce61f77ec714aaa10cead527eea175939cd86c5c4e100088e37a0b54349baccb478b7c79608a927b552450eca4e5dafd4752577d49147b9b3ce3c5b490870420f4b8ce5cab3cf3a47f7866807fa836f67dfd6d4a52761ffccfcb86abb3348259c878f4378f3a74ef4b93c3332b7b0f1a4a6f23ca1a5a3d2b695b6e3d32f382c184e4941343c47a7bcf9c69b6afdd8e63b7a21b3d4abfac4dc87ea2dc9972f58730c9ae53d64f4fd9cbe6c7dd15ff5b984e7fa72ef97f5193ad2143ac8d747112cec9ca3229f8d3d2c339cd52f270691b5529e8690cfa3829848caa21ce1889581a2e2aa8a5704a1528d50b27b799ea1a052b962e9b0160ae9f0a79a6954140f5602b37eac039427b30a1af2cacbaf746bafb58e5b61f915541962aa5a7a00e58ff5c311654e864138f8f3014d96c498a5430e2859934595bf741494290a9765350e152037a4815501296c27e97262cb2a9e346c6911b95886e204177b2dd413870738a040fcab7b5eade120135bcb05a79f768610443b5dc6e2a552881072c4fac0d2c072622f883c51bad4012f7c7238023282703834405a9475b75d77532b0459a80bda01d2c19fb292ffbe7befab796eb9c596bac486e5cafe1747a821b9f3cfbbc0d72b7986b6a4bc1056d696a10ed41f3208bff18bc9c1805f462239c561fe9686effc95df5c4d0ec0efd60aca33ef512ccbeca2388f62c47d8076a5ffdaf70319f77cb85315b5f409f59731053e78ff035d66c3dad17e17f5917901f23299d0516c03e8929896291008ba2fc8e5c3fb31a6f135ae87953f6b87f0bb262c5c3d6848f9031fae5267dcb367ce171eccf15e94ed4159b8d9454c2465516a490d850901c0de56c928359d4d4b63d87d5c893c8f1511054479109f4ae0d83364a369c87366f158386c62b387435e744c66d758216ceef33e8eef8c3e6dfc3916ccf2134b41fb89558142252f942f47881759681155ca948578260f724060287148873d1cfcd9b3217fdb67214f943169b2b4c8976d5912c4e466a6c6dbd1f6791a2c928f067ca46f54f3ed221a9732ea5e8e7444d2e1054d96ae3891c7fb2d58725848101027e3588ae3d0003327e4c4428258860e19e6ce3be73c7dcf8753727e83ff113d28c10ba290355f39b078fc812bae1cafe69d25cab3c9469b68b9dfeef78e1e1a60996e29b17cd88fa2fe291ff564930aea974147db7305befefc00a4ddb81a08e7f788bc12212f3f10fd462c323389e16a6bdcbe2d7cddd0cff0b7b8f891aecfb375a28ca2686aa842289065765194472d581c9b28d08e1ccde56fb168ff9236b77ee1c3fb31491fa0dd79095c0949fab1f6c390dedc46553b857c5fe4f8b0c88a6cf9f2d5429930b38512fd8870f1d50079a28b268c9be0de7de75d2d93b64f9cfe6c202692b2689070805939f11e0e8a5f01d9847b5f084f06d6e16848fcb493c9bd559c12147e11e1b01c05e11c75c4519a1f85f216ceda4a287c15804fb5d069b11e585a43e1b234843fd606ca9d78bc378285a37b38627150066d80d07990e79cb3cfd53d93ae2b76d53d1c5b7fc5da81e44813eb008b4295a5a4c10622cb4bc4615f04c2c0fcc64a79e3f5379548d7597b1dddec67008d1b3b5e4fbe71bc9b8d7af6879089b25e76c9652a2716120721165b64312181cd840cae524b0b2263498d63da1c5dc68a8394798708ab87137b2cc5f1122bcb6d1007ef1041ba1027fb51ec19f1a22a8727388400d9b3d64c9ebc7bc37b361cabe60834cb9ac4c52aa21eb18238fcc09f8be0d41ccf2015ac3ec88daf39509fb4071304954908cede21521291fab4f6628951ffd68f9419b2644f8830d42d9623f9f29c7b263ad49ff699a893b736cc8f84c3151de0cb2e903ec2788348bc7f7e425ab12000fa404f5a3671391a84caebcb601368afb7fc33b55e4c26ae012a7b08133fe7b7f9d5078dd710a27c6a210e1f3ff3f51c20e9e8a434c837278889a42c32c2d159691164d0433a3a2b95198aef08be4391a9162a54705640e9304a2412862b2f1a69075342aa16da488bfd08968bf87c0c848322820098cdb307c372131bfcbcdc78f8614788123c4cdf9c871838a5c50c7eb75d77cf9695d4c2d9632fb7b05838bbcb73ca61a4a89d49e44559f30227870e5802339951baec6b7048813f97c0a93536e53964403df0450036d9175c60417d378893362852fee8da1bafbfa165401ef657f846149fe561e39f7d1b960c9189a3dd98eefc995dde41e0940ecb6a583d9f7ffab912170709381cc1bb3d101a7b30d401f5c9c73e3ff9f8535dfffee0bd0ff44b081c74e0fb6bfc86dca8374ecddd2144b28f10e71542dee4c5891a96335902e4d0c5565b76d7fae633f19f7cfc895a8d585a10d449279ca4b34e2cbaafbffa5a091062e770c4e142445875d409f5f695c4675318eb8e2f6073d49a357008849348d4057e2c9f701ae925b1c2204d08e98bcfbf14e2fe41373599859126fd4e955368b3d6081b27f3124d5d5f4579d4820fefc7ba8d7feef1b3c91efefa3caa1beef18bf589a537af909719fda3f205593259837ffccc3fafd671a4e3157d75b86a946baba2fcf2209cd57dfc8c3ab56ba5ce1b4ecfeaa2166222298b528463160eef70f00cc5ad24229922946f80b863fa86f37ede5f0b181ace3a9656406824941fef8960cdf0a9164f382f28c9f101ceadbb6fa333fc05febea05a08dc639df03223fb26ecc3f0cd3466df98c21000efae6085b0bfc10c3cae2c88938f807693d93f27df78af47fda46cc88545c221040889fc2010de47011b6fb4b12e61a1e0098bf2b6e5343ee9b3ff7e07683c2c16be9e001162b96d2084c3f21f84c4662947c5a9534e92f1c5053ef4c77e0a613950c04b72584b94ef9bafbfd5973f575f75753de2c8b7a650e294b3fffbfdf51867d715baea916a080bb2c3f263a9eec3fe1feaf7d22025cc6bbeea80d585cc582e58689029561bfb4a5841103996e1b7df0c544b861773f9020444c1278538ddc681092c1d080322c38f7421127efb537ff728b14e9b324de5c5ca415efe42228748b068f86c3aa793b090488bb2516f58542c295a1ff183a435a23288e70d8a64981314e5510b3ebc6f33d30ffe99b7783ce1f03c4edb8f3b7f8f5561cf2b32cc5d980e430764ba4d800ca6e3f43e84317f0fd288658d65b7fb5ab0386550143f46a51c994c1159fa36f1cf2d9cf91523cebb2e6222298b8c7030b38a00c118e1a0fc99a5985592092f99fb0e5411d63a9a870f5bfd2cfc16909e3fa9758ebe8c79adbe846916c98b3ad3e593322c2da150393dc6521ab378880a25c9e9af0bcebf509554ef975e5679796992136f1caba62c969e7dda01654b7e7c91998d7a1ac748874e8f55411e1c5766798e25a8334e3bc35d2e560d248675c30b6bbc858f4585428534580e235d942dbfcf3bf77c77e4e147ea5218cb75c8c446ea9732abe7ef00f1d22bcb71584a278a4581a2e74f34b017c449b18b2fba584862947ed119eb8e3fd1cd1777491fd2e0d4090a1eb26269104261290dabeca20b2ed2aff1b2770471b1a784a5c17b4a2c63a2d8214cf2a15e0f91b27e208480f5477efc0960ea148b8c36623d9eaf57f3791ffbf2034b632812ea903459f6240f2c237e7ffac967519ef7e85221d60c754d3cea88f682e42137ac3dca0e0131e1f1fd26f4a1845603d31145c8fb55ff96fbbcae98ebf03a4d11f49b5df18faf7954a7d3dc28928bfbea674d21774c246551211c51b08510c55c453828656b10414c3219d98830e65f1f62e189473eacdd638d683aa1d34104dcebec48ee212364b378f89935c6332c1cf383acb066986d832c7f2903fe1028e5223dcd47e38b9fe6e309176071a100a90766f5585d2c6971a800a5cfde06cb4728568e76fef4e3583d54c03170d2c69fba43464ed00d1d325497cd2027f6342002fece06ca1aa2c3524011b317c36ff68eb01cf83235e7ea598af37b1e0f6bb9f8d3b6901e84c0171db014f812010712201c0890f77a58f26379cc8e5b437c84e73d022c2e480ff9a953c2605951162c302c2b96c92020ea81f6a06ed89f81e4590e1b33fa47253fbe9dc78924641f3c70b05f8e13796c1fe8070847ea992f028f1f3741eb41f779a43cd4d7e81fc6e86fcaa16d12f59b848484e6474c2465d1ac8463a619ca4d7f4bda28314d5fe04dec400096aee52d57e219496479f23ca4c56f1fc7938d85c5c2b174b8e7b997dd9314c4c1e9387be7877a201ea483d24429a2f4d923e108378ade4e5fb15f01814018844799a3b8591a221d088e193e7b19100e337a7ebff6ca6bfef081ccf2490f653b69e264bd62c98c1105cc975fb1e8be1512807038b000d9210f161071292bc401b161a160d9402afc9d1cac2c96b7781b1a19bdf5f1a92eb921237b572c79210f5748002023e5834c2113ca0991536f9491df1015df6c421ed21ef2dd50b170de55d9591a4466c887b2913e2ffa51ff102d6407d1b29fc31221758d3ff2904fd6b60909092d0631919445a3090785acd6024a1cc55d20481964718d40042816d2b767fcce948d12892727350f03b1d8bd0f5349332395705f24abcfcfa78f3fe7d3b9a218d99fe093375805ec6f708c1812baeedaebf5ede3430e3a44bfb5a65faf162b04cb0c52e14d7e94268a12e56cdf8e3222850878b18de3d4900627bab01a5852233c0a190241914f90993fa482d247a1b3b7c277db203bac16e2f17e0e2f89f28c3f5cc7721fd6102f87f285053e91c3de0bef3971f49bbd23f64b200248068b070b83b6e55339901647aab142f813d92cb7414c9c6a83ac2050b36c9810e83166b9e723adb41dcb8b902432b0a4c6893ef697b0902063e4a06eecaf39d2b7f0e3e5404ed541e8940deb106b883c7c9b27d2494868498889a42c1a261c819fbdfb0fd53515e100b56e54e957ac23b3686232b030f9b06619f9f0957016d6fc4d56951712224e086f2415fb431aec9ba0ac79319283021c10e084187b367c0916ab01a5f8d3989f74e90b650ce1f0c91eded3e124d8a0818355f9421e2a8ba48d02e57839840349e8529c84e1f318286996c9c89fe53cff276a9fd567aa94dfeca30a1912206fb3b850cc03bf19a87b341c92a0fc2c6ff1c63461b120588e63790d2b89dfec91b0f70309b0693f71fc4455f458472cf771041499b1ac78618fcfc61306ab0c92507fa93fc883df583f1c0c60cf0702e34f0b73e28de543fc214cea89ba63f98fb438340099426c2cc161f55107e447dac4a32cd65e0909092d073191944529c241912ae1a0384511303365160c5461c74018947aa4d86b41492107e229a109f43ea46b7e7954c2faf09567c8c66f4f247954c2fb7b7baec4258a96bd033e18ca81020e08701a0e6b874303fcb966ac188898bc50dcccf2b17250902875969b2013c2f00c7908cb3dcb6ac461bf85ba252ef961c1b07f85a2251ecb4dd43b0445582c0bc80879b9a73db040b9b21cc591683e63b3e71e7bea979e39628dc5832583850a2037d2627f0519f94d9eb4251ff7a30e2011d2c40f39b08af80badf85126f2ccda4cea0a79491b02b1bfd2887c003264790ecbcdca4fba1019e5e339a4479df0a9234ed19127e5a4ef69bbe7fa4d424242f3232692b2284d382815140956078a834d625b828aa1c29822cf095808c2d67916c820f86bba9a66055579e6fc3de1e4e2485a593a51bad933b9a2dcecb7de6b1a2fa94246499af5c11e8f9289d409ca19b2a09e50e0285914264b672866cd57d251c529e92ae148181fc7bf1087b2b57d24eef1c7b2e137fe1012fea4c7bdbdf98c3fedc13dcf88839cec1fe96931b11e50f8c8495c4d833c351ddfb62aabdc439694c9939ffffe1be168739e5307dc6b3a92a7d6a1d6a32711ca4b5a84d3f042403c232dc8957d1cea8afd1bde1362bf8ad36d10aaca11ea922be9f02cab37cb2b2121a1c5202692b26890704c399a22b0a521b572209ca0dc0d2a4c50e67901f3b0b4ccaae05efd82d2e7de488119b8dddbeffc3395a1869fa5a5e9225f1436935f7e33fb272c8a5ff78788277e94d5ee9558f017998da4b89ae5173f273cf1149435f8d9bd5e23a5cabd3ed7f095b8b1ecf8932e1682ca2c0a1d0b8afcb96732a0e501513c64e64a184d87fc902793c3972f93419e4126711a5abe20bfaf3b5fe6584ee2f08c2b7d87671c1ae0dd1b96dd38f5f64aef57941ce3fca857eeb95adedc13bf162cdf848484798b9848ca22231c88a5083a7b65d6cbec13c2918c4cb179e5e6159dc1149d2aa3020511c39418889fc561627822f2a87ee615a5e62fbfc9dbf2cfe22037cf827c8ac82fcb37a4e321e50b6979255db154bc720ef9119670e11aa76179714f7c93cff2f4617c587e13268b178537c58e1f8018f53e3cf3b287df51381f37a4a9613c41e5cbcb559f857cb5bee4b9ca431a84e579b866cfc2d597c7fb6b184987be431fc282d2a542e93ffcb6e53d2c205fe64abe94cba7eb7fdb7d9c768c2c4c4242c23c454c246551cac2e18ab260b68ac2450118d998c2692c5050f967995204281c8129c30611c5234e3e5ea66073617c38af982d8e5e259c110e8a8d67b10560e148972bc84840807f969fc1947350b03e1dcbcb5fb3fc833c31e234e3e771be867c182c0a8e2d5b584d8b3c2c7fae59de5e0e90af37ae56660d1fe25999f459c8d3e2524e4fd43e1cf568d68c128ca5abf5ebe531f8673edd424461131212e61d6222298b8c7074f9a20028054e564136583a64c4520e1bdc5cbd22f3d68ec1f677e604a650f43e57d042940d8b92b53ceaf8556061e270a69ce33059dc02105ed3889428bfe359bcfdb66ba50e7ddcb83ecddffc2ccd3ac8c99f479c8fa1305c817fd1b33cf2e540a6d84fafe2879c713a1627ff4ceb3b5fc6000b979090306f11134959d44f3842345cb1706c73dc66a579c55016aa2822a55f0699824191d68a1b29759bb9c77e55614bc0f2f3280e031a2d9ba056389ddd934e815f8c8a5ca0384c93837c425e5a86f0cc64f67510c246d0be62fdc5c846ae3eacffedd3a88e97a5a9e916a76da8d4850f5f140654d22a192e5c0bc3207314ae769b8630162ef6ab27de9ca08e6c0561407db2c5c8d20a280a03e23c6bb557c5df5f8bc200cbab285c7df1e604a565b3308d0927280aa36328ca738eeb2dceb36c38415198bc6cf9be1a13495954080772c923908e128e908d271c369dfdd24c2c705d5049b5e00bc87d5c802264e9651514a7132384d170c5fe9aa6dc3734c8cbe729c8f2ac2f5c0853533643c970599806c209b4d31420ae03fd1d95bf181572c84824003f7b6ee91beaa4139ef97839bf181a3f94715ed75ba970218c862bf237341cceeaafb01e1a092f734043b2995c65c369ba05fe86326995a80f8585a9279c2f6fdd3a981d345fbd85300da555365c16a629c285301aaeae7f4c24655168e1e8c9252116d6cf6d49cd8ed1b206cf1f21cb96d404deda79256a407e87d96cb0842c4cf5eff2a8e453f779d1b25e351a9fafca1ecad19a11b78fb517f595dd67fef5a3a1b0715b57fa4131ca84ab9059be0fb50dd4eab371bbcc0e349db65c6f56c60cfe77be1ef2a88e530c9b5415f93517cacade1c8889a42c6a2fa909c9e829b560edd83b20b01e64c3cb8dbce857a990d0f09132e377a64042987cf8cab52e342d4115b9e54920fb4d3ad5f99a9f3dab35c863589e8a28adb80c9a4fe46f72158613bf38ffac5317caedc381eab4f2e12a65aa99677ce579965f25ae85af2057fe806a396a83b045cfeb0059a2fa2a8285a58f591c7d5e586ff67b0eeb2d1f2e93b16e5a95b236d4a6957a89f3b4bcb26b808f3ffba8a455aede8a642b0cc735a4550917c2d40c57372dcb0f349867081b87d334d43fa497fdb634660f5a8628efacdeb230953c2d3cd7ea3284307138aeb5ea4dfce2f4eaf4a37cfd85385938f58bfca3b4b816e61987e33abbb2c9b39848ca22231c7b1f23835836463c5cb16e201c2c1f2b905d2b422094bf1a192908a70287b0022b4c19c485b7745872b1df16c687afbe661519f2cc64ae0726bb119d3582557adc4075c3d50dc3f3389cc9900fa77e566fc4215c8379faf4e3301ea12c21af181a2faab72a42cf85f561f0b749467118603217e55981f7f775595db61884d5b462f942ba75c21126aab7726de56589c364755615ae469ef25cc355e55b5e36adff009f8fcfbb367c7c4ba3388c4f2bebbf71be924f59d90ac355d54775bd15f52593b12a1c61e4b9e65746b63a794a3e11bc9fcfbb367c1e56bee2303e2d0ff29c3dd98ac3bd1685cb85a11cf2bc6e7a3e1c572b675efea691ad6e9e599802d9bc0c9570319194454638fa1e451e2f784040bc3408e9a0e85f7bf5752fa80ae581507cf198ab81868bc3c41506e282c5cfe3c2d5794ebeb9e706fcac728afc155af9fe3ece837b8ba77285b0e65f1f1a92cb5014ce9e2972f2c4f771bc388e3dcb3fcf230e5784388ce55769c75c7af5c8963d0f61f36d9b47255c54ef7a5f69a7323039e23826a70d107d16e5571f9a325ca58e6a87cbe4cb85a9375e5c56938367b3516f711ef6ac0871dc223465b8b9566f1132391a5b6f16afe05911e27045280e13e40abf29a38ec706cad5983ce744b69848ca22231cfe464a3146e88719f958249f9ce7d3f67c3a1ef04146fe6e493546078c517fc087277dd8d1d935f6e7bb5ae667b030d5f0699b7f163ef2cbc2c8b3cc3f06cf835f551ae1b73dab92af06e23035f3946775c245fe9627f8e17b0f7fff43b5dfa81f3cc2732b87de17a657f1e36ae916a3123f6eab5a408eaa67c81dc916a376bad57964e142bfaa94cf3faf8522ff4a5ed1334b373caf956efc5ce52a0ac7b37cb8d83f7b9effdd50b81f354c9dfacd6069f8b254c66025ccecd69b4fb7fa7705f1b34a980cb9fc34ad82701a261f2ef2af3c8f7ecb7dc3e1a4de74ecd4aa37508957586ff81126cebb000dc916a76961354c51ba1abffa595e57fa7b1fd69ec77e311a92cd10879b13d96222298b8c7020925ae02f48423a43870cd36f6091319f97077c2d99affb7a613c1171cf153f1534f7dcdfe3977b96f905e47fe79fe7fcad52eaf81b24cf9afe9a86f8c7bf63ff2284f47cf9a3b85561403de1d48f3af4755998afa511c2934ebd69691849af56b82c3cc0dfcbe615997fae69c4698570c569d87d08a308f9ca3ded92f58d5ae1e479555fc9c246fdaa0821be97afb8bf3178ec7763eaa37cb89c7f16cea761b2d517ae66dfb5780a1f4e119441753881de7b345c6fbe9db378999ff987b69732366dbd599de4fcb37025d202e2576fbde935dcebd5fb3549bd15c9a6f17dd9667ffcc5b2f9dffe7978561fa2b46ae609ca842b215b4c2465512fe1402e5c211c3e593f6ce8709d4920404638762f15cc67e7b9fa82345c49be32a342d440997056210de759365cf3c956e417a34c9ea04cb8245b5d3426cfd62d5b63f24cb2191a9767fde1cae75936dcbc932d2692b2c8080772c90313952ba483850330a794648458945c84053da387abddc7bf6bc0b3a83068815f8ca60cd7946981c6852bf633cc9d3c5baf6c36c34ab25550265c6b90adc82f4653e609ca846bd9b2cdfb3c810f57ec17134959348a70868b8503e361d1f087ba80593a06239b2a324a4848484868538889a42c9a9c70ccf2a9ba4f4848484868538889a42c1a4d38acddb157336eecf862c2494848484868f38889a42c1a4738c38470c494826cf8fbf4463866ed5408a886f59390909090d0261013495994221c4ea9413623878f6c90701212121212da3e6222298bd216ce8861239478201cc866c2b80992a9904eb6bc16a3ae7009090909096d07319194454638904b7d1835c2bf9bc33139cb10eb464fa44566562c504242424242db444c2465512fe1f0ce0d57ac1cac1b48c7138e5838e32788a513ac9c02611212121212da2e6222298b887020976af02d1d259f51d5160e4b6a13274c5428f108e9188a044b48484848685b8889a42c32c2815c6a42c867d448bf97c30b3f6406d1782ba72ec928f9c8f322bf8484848484d68f9848caa204e188b583852364c3b21a7b369e6cb06e26d62115231a96dbcc3f21212121a16d212692b2c80827ff6136035f168078201df67238183069e2243751c864d2844985a49227a48484848484b6859848caa204e10832c2f941ad98c913272bd914118e2db54148b6c79390909090d0b610134959540847bf0a5a0c4807c2e1000184a36423568e5a3a900acb670611c4c8c6082921212121a16d212692b2c80827ff25d018583a100e8707b062201aac1cb374f28218d924c249484848689b8889a42c1a241cbe2cc03e0efb372cad61c14c9ee4c9a60ce12424242424b43dc444521619e1c45f0b88c19f4ac5c2d1830362e1b0a43665f2940cf17e4e1ef5f92524242424b45ec4445216a52c1c5d52e3cb038170f2164e0c7dc6fe4eee7911f296913d4b165242424242cb464c246551211cb1646a01d2816c620b67f2240f3b3c60f0841348071408aa10bf8c58aae2567e2724242424b44cc44452160d2ea9f197ddb074fc77d58a97d4aa80f56316905c8b0405f8fbfb10d6e2c6bfe3e709090909092d063191944529c2e168747d7b3831a6a8e5e3052a24a412a82221419c5f4242424242f3232692b268907020183e67c349357f4a6da2663675ca54455e883c62e2a84220a5a9937d3a3eade2f4cc3f21212121a165202692b2c808076229c44f4238632a84c337d26212c89343698825c4d548c7aed3a64c73d3a64eab2a58252f8f22bf84e645dc668d69a33afd22f489f8773c29a942d5f3e23e9390903077101349593448387cf939b670d8e82733144cfdc450ad44f230a5c2d709ecb339f6091dfbaa81fdd5513d2117fd6d9e5ab0b0f56254fd6934168579b441d03e45e5cfa3286e7da05df3280ad75a51544745288a5b84a2b83134dc281f2e1f777e46be9e8a607aa72114c52d4251dcb6849848ca22239cf86fda544108414faaf14d35211d4f389e6ce684703830405ac3870d778f3efca8bbfebaebdd4d37dce4aeb9ea1a7755cfabdc55575ee57a0aaeee79b5bbfaaaabf539e09e678451bf1c34ee6ca229d39a1fa16d435b5deddba928cc555aaf8493f69470312cbe8f1bd2a23f483f206ebe7d346cb8af9b4f4242c2dc444c246551219ce8039c31f8b2007b39f65db58913268565af9f154584c3524711c91401c2b9eedaebdcc9279eecce3fef7c77d18517c9f502770138ff0277e10517eab318175f7471768fbf210e33bb68cab4e637506fb499a1be7a343fdaf2928b2ed1f0679f75b63bfbccb3ddb9e79cabbf2fbaa0ba3d085b8438dd84848479839848caa2e12535211d231c96d6580afb5988e6e769d315b19563560f8454454035405a23868f50ebe6ac33cf72f7de73af7be9c5deeeadbe6fb9be6ff6756fbef1a67be375c16b6fe8f575b9bef6ea6beef5575f97fbd72bfeaf8bbff8bd19c2e8ef021047ef6b8489d3f3f7c5e13cc4bf9ebc1a8b4cb67a517ff92a6848f68092f297914deb3eb4cbabaff836aa95be85d1b6947bf072ef97dde38f3dee1e7af021f7cc53cfb8575e7e3584f7e9724f9b18e2b41a2a4743fda2d168e27a6bda7e54fc3c8f52b251cff35c36daaa39646b38cfd2b235799b369d6caa1b9a48b69848caa2de2535f657201d259cd1dec2d1cdfd0696d4ca81b8d3f48fbadd70dd0d3a8bed2d64c31a3e56947eb36de2645d7663f9adcaeae2abd4017c99da7fa9c0ff6609d087ab8451887f258d4ab8aa3002f2b37b0b4f5cfd02760c9191b0759ee7411843913f281306983f79e7fd6294490b58b8fac2960903c45fdb21aacb3ce2fae4372ffd6a3bc96ffad9a79f7ce67abfd4db7dfdd5d799bf860de1ab10da44af923761ebc86468545b95acdb86d22b1d2ee4572abd245b86245b354a876b8c6cb96739c4445216f55a382807bbc7ba817858066bd0c22989e93fcfd0bf248a85c3b20acc8b02f2cb75d324fd700d4b77459613f2c4a795081ffbe761a7e06a85233dcb7b86c837fde7e985e1121a8f5a2710695f9e4334afbcfc8a1bf2dd10ad7f9bd8583fc8c74b4848683ec4445216f5eee13063e56a840338cedc5484832219354208e7daeb754df0b5575ed3bc7c7a3e4c6c4d11def2f5e0b75746599888acaac306987f16aee2676924cc1e1aaa7b0b97271280e56c843368e0209d4498bff5ad385d9b94242424340f6222298bd284c3f7d49a9a70a64b7c2c1c5b52634d9ffcbcbf91895c93726953c80827b42b5624d6cf575f7ee55e7df9553778d06079feb3f68f98941212125a0e6222298bc65b384dbca4c679f51b6fb8d15d78fe85ba39cc9a3c7e3e0faf6c2c9f84b605dfae422c4238b437848395fbdd60bfa4e6c324c2494868898889a42c32c2f11befd5b04d5b4887fd1b00b1a020d8df003119180995b54808379225b5ebae771708e160e118e1c4964dd9f4125a07f21314261efcfeea0b211ce90343bf1b1afa5265d2919090d0b21013495994201cac1cdec5f187079a8a70088332e1ed5e2c9c4b2ef687063899669bf53af355a5932c9cb604231c23130887fef0cdd7dfe8d14e08c72fa795ef4f090909f316319194458384c3d1384f38c1c299dcc484f37d8570585233c2f169359fa2f14497d05814d5652d581b1be17cfde5d7baa43674c830251c9ecf983eb32afd84848496819848ca22239cecdc7504fbdb352c73f1114f2c1cf670209c99a208664cf796880a200ac3df1bfcb39a107fc2f387dd6ebaf12677e9c597eaec36b670b274b816a5918786ad0f969ea028be21940119e618a42388adb639017235555a7343b6aa3a6e001a8ffca51ff1fbab8c708666324138711e7934595d3406d49b5c5b6c9bcab525ca465afe3ec9d618b454d96222298b8c70b066f240f9f3b76978c9c70e0f4038083b7346201c2a23400b2157ada070ad0504263e7f67e7e69b6e56c2e1ed55f2d5f4f097f44051fc22981c35112aaa286e1e96774328931e7917c5cdc33a54511a318ae216a13964abaaef1ab0b09a2e57259ce99e70d8c311c2212fa0139b488e2234d54034987cf5817045b2e4d12c6d9a64ab83a695ad5c3f298a5b842697ad207e1e45718b509f6c319194454638904b11f4cf450b09a8951308e79719bfb859bfccd22b0a2186ef28266cfd203c1f048570f82656bc87535de872c8c7cbc32a4a159ffcae0f45f18ba0e9c9b52114c5cdc33a4b51fc1845718bd0a4b23551bdc51d587fcb55fb8d5c59527bf59557ddf0a1c3b56f414471df2a8297c9c3d29d531495ab08f9b215a1225fddf8318ae216a1ac7c4571f3985f64235c53cae6d39a1f64ab7f3cc444521619e1402485983425231cff1580696addfc32735666e5544104b17b5ff0da200c7b382ca941387c1f8917006385626916c58f61f9c6718be0e5aa3fbd4a198ad388d15cb215c5cfa325ca469d6ab808f423259cafbec92c9cc2be5584906776df04282a5b354258c9b3a88c3108539c460565d3020dcbd708d91a4c6b2ec8266925d9aad15a658b89a42c1a45387cc38ad345998533b3ae85131746ef1b00df4ee3cf12e8a101b170c893740d55e936000b5b1fb4e10ae2e65114b7084571eba06ce3ce67b2d93d93177e7ffbf5b7ba8f37e43b211cfc7462237d40ae16360fcd976b49f99a0c6da14d8be216a0286e118ae2d64192ad0e8ae2d6410b942d2692b2c80847bf475604211896b9d8c7e1e41a9bbbb34441d4249cdc7dbd10a18d702ebfec72b570f28463cb7685f1231086b00dc1cf9c1b4651dc2214c5cd23c956c14c10c272d5fc211c195083be1da4cbaa58381abe01b201713ab11c731bc8952f5b11caca5514b7084571f348b2d54551dc3c9a4336c64351dc3ccaca5614b7084571f36848b69848caa24238e1dd880c8170f8636a7a524dac1b504d387e59ad0a2248d57d3d40c9f0573ef594da2597ea67bdc98f743da4e025948e42f3f495543f72f16aa1306e018ae2e6311fc9964d146a214e4bf39ea97d89be30f09b816ae10c1b324c9f13dec2d444944e2cc75c87e619d74f2de4e2d54261dc0214c5cd23c956174571f3282b5b51dc2214c5ad838278456881b2c54452163509c796d4d853817038308095c32612648092302b2786558c2a960221f3d0430337deac5f8bc6c2216f4b3b4ebf286e42cb43dc17ea431cf6d75f7ed57ef3ed377e494d09a7645a1ace06489021212161ee232692b2c80827ff525e9e7cd8c38170d82c4241fc3aebd742c2690c5032764a0d0ba7cf1b7dea10ce9ce691306f916fbb22e4e3d09fb8b2a4a6843374b8f60d35ed73611312125a066222298b9a8463a8229c091375ed8ecc6a298fc600a5c21e0e8473d9a59729e1d4d9c3496855f0fd82c9482d14138e5a38e1d0c08861237462a3e9454bab0909092d073191944569c2e1a49a110e8a030bc7ac9cd9839fd5f2670f6eb9f9166fe1bce92d9c38edc6e491af9022d8fe537db03c8be2e7918f9b4763acc1d62e9ba1287e1e71786400fc59029655f92bb0c8861f4414879d5d58399b022a6f90afa86c31f2718b50b60d403e6e1e49b662e4e3e691642b463e6e8c9848caa241c2d1bfb2190e0ef0e749211c0aaf9590095e11c2578c7fde1028107fb6ba9070421a769d9720cf862abbb168aaf45ab26c65417e719eb4377d8825350867f8b0e15a4e9e63e9c4718ba0611be8274d5b6f3eafa64a6feec856e4d77824d9660ff3836c31919445c384238004fc570702e18822f86dd66f0a2ac30b4fa5a0247e537ffb5d1f88e709e7d640387d95e048974a218c5dcb4089aa2114c42b826fdc82f839e4e315c37796a2f855288c5b172d5936df197df822f8fc728423cfb164b070fa4a1fd063d1e2eff3a68ff970f5232f475d54066cb17fe350aede8ae3d685a625d7a2346214c5ad0b296353cb56103f8fa2b8759164cba3286e5db43cd96222298bf284336972f61500259b5f7f5778a12ac2fff62b7e9e741a02f1c6fe38d6dd7a8b279cbe7d3ce1fcfe5b256dbb26b40ee8c0a80fd2d18d6c2cbc5df9d3d27c4f6fd8d061aa7cfd84a6208d0871de090909f30e31919445e3094766a29e549a96702ebbe4b26c492d114edb464c167685848c70460c1fa1cf12e12424b45cc444521619e1f07e4d31fcdf38d18f790ae13043fd3d90cd9c120e30c2e14b032ca7b05f9408a76d23268bb8ef7c37e83bf756dfb7dcf06142385838daf60df7a5c6f6b984848439474c2465518a70ec941a84c34c14c2894901d8a0e7b92724ffbb21f047dd6ebdf95677c5e557e8925a11e114c54b68bd88fb8c5d59131e3c70b07e6de2fb51df8730f8d74f2471ba090909f30e319194454638f605d03a10d28104aa2c9cdffe707f08aa09c793047e46180d817031e1bcd5e7adc225b584b6849870bc05c333251cb170de7ca38f7e415c3b357e0d41d2a84c72121212e6156222298b8c70f25f0235403a7e0fc77fe6a6290987348c706c49ade8d040425b4231e1b08466a7d4468d1ca5cf2a284aa702259c927d2e2121a16910134959348270263b3eacc99a3bb3c9a6261cfbd240229cb68eda843368a0104e9fbe7e0f479efb30897012125a226222298b7a098723d0fcf19f69537fd665b5a94206100e44e17e777a35f2995dfcf4e34feeb65b6f73575e7ea52a1bf2fd23a46d05cbc74968bd8889417fcb95490acb6343060fd13ef0fda81fa40ff8b065261d84cbe79390903077111349596484137f05340fdbc7310b076500e118e930e8ed5ad6c241d1101fc2e1949a12ce9b7d352f4b0bc4f7096d0166b9e40847ae43bef384336ae4f7d2b1e49ff4330bd71092859390306f11134959d44b38f627069470a6f82f47a32c500606b546443170b599a6914e438070c6fd34cedd76cb6daee7953df5482c7f17c5d202a64c12da0e201daebe9de93bbe8df9c240df3e6fe9a101eb537a254c0328dbe71212129a0631919445fd843333229cb0a496118e39510ab1b553062ab03024ca64fcb8096ae15c71d9154238fdf4c5d2c6a495d0ba40db333be25edb59fa80b53784c34945251cc237b25f252424cc3bc4445216cd42387e23f8378dc3dfd881702eb9f8924438f301ca108eeee1103ef24b484868598889a42c32c2815cf2d0ef5ecde0ef5a7370c07fe6a621c2d16b03cb206692910e2f9472688063d1fddeaa4b3871ba0dc1e224b45c94b270847062bf86d0507f4b4848687ac44452160deee128e1fc3c43f76f7e9efab3b74c62578f0228f203f82be1c8bff1e3c6bb5eb7f6d24303100e44a72e0e9f2b682dc471125a26745f266aaf9870f84b9fece329e1c8e36c6213e2262424b41cc4445216150b27904b15c4c2c1cac1ea806c585a2b4338a5210a65dcd871eef65eb7bbab7b5e2d84f37621e124b41dcc16e1d87d7d08e9272424cc1bc4445216f52fa9fde2ffe68712ceb49f154d4a3802b5706eeba5a7d4deee9708a7ad63b608a72197082721619e232692b2284138bf28e160dd142ea99962988d418fb231c26149ededd8c2b1f492326953a89f708629e17c1fdec3519471a98f2424cc73c4445216f5128e4109277cc8930ddf9a2e275019d8929a128e5838905ca66c4ce114c44b689d30c2a97a2e3f95708608e1d8a181b8fd1b72848bd34b484898eb8889a42c1ab67066f843032ca74138f59d526b14829281706ee3d0c015dec251c2c12525d22651c7c289aefec5cfbed58413e2252424b42cc4445216a52d1cfddb38b6a4862228720542d54450287c694097d4aee859219cbcb2c1c571135a3d8c6814a1ad877ee70967f4f7a3e5817755e11212125a0c6222298b8609070b47dfc3f939108ee4848228723981ea056908c68d1d1f2c9c9e7a2c3a11cefc8142c2310be77bb170c2f3443809092d133191944569c2816c78f1b3a92d1cfdb4cdcdb726c299cf504c38c35c9f37bd85a38709f897082721a145222692b268c4929a10ce94a6279c097cda2611ce7c873a8423e0d04015e1f038114e42428b444c2465910827a15990082721a175232692b26856c241a94c183f41ff3c4146383313e1cc0f48849390d0ba11134959342be1f0270a209cd8c2213f9c2a1c0b8b8be326b47a24c2494868dd8889a42cca1f1a10c2d1536ab384706ab902a16a023d2284c39706ccc2d12f0d487eeae2b0b8f87742ab871209ff209670e5d0801e8bfe21229c78e2919090d06210134959348a70b2173ff30edd000a84aa09948c281d259c702cbae6b7d41a9b76428b86befc19118d5d211cbe3430e68731feb938c216a5919090d0bc8889a42c4a110e7faac03e6d53e74b03dc1708530679c2a93a346061d20cb74da1ead33638eb4b72b54fdba425b58484968f9848caa29c85133e6d03740f2776e88502614a41dc8471135cafdb6ecf2c9c8c70704571125a350abfa586932b2f7e32e960492d7371b884848416839848caa241c2d1bf8723168e1e1a98fa73935a3838ffb5e80ae19067963ed739493fa1c5a10ce1f027a6d5a5b64f4868b18889a42c1a261cb1382a8453f027a6e7442988cb130e27e2b2f4b926a5d3a6508e70bef7cf52db2724b458c4445216a52c9c19817038a536cf09075714b7087f488432288a9b304f508670f46bd1380956152e2121a1c5202692b2284738b687d3920947c9446e1a8484934b42f3409ba00ce1d0f6200e979090d06210134959348e7004897012e604da040d110e5f8b6e4cdb272424cc73c4445216e5f670ec4b034dbd872371eb1c1ae0c54f4bbf314a27114eab8036417d84d3375838d1f384848496879848caa2948563efe1f047d87856e520850261ca824fdb54110ee91bd1d81517c257bd97837f06f9af0eb9e440c08870eaa465f76d09f5950bbf795c6e6d8a02c2e1599d25355c1cae08382b87b9795ca6160fdc9cd609aee879c27c8b9848caa241c2017c69c05efcfc4508a8cacd494796b8bc8773bb12ce958170a2f770e2ab84cf7823c4ad8b3fc49f40f2a38e9ff7affa1dd252e22978de26505426fbdd4ce5adf332affcf48433ccbdd5f7adcaa1015cf0af0a6fe0398e6b1142b8c2498afd2e00e1ebc8d88ae0c749243f4e7edab346954f82d5b9e6eff3cf6af925b429c44452160d134e78f113b201552f66e2e6a43389e30fb029e15c2e8413ff89695c7c95f07ea0f87b7d66c0857b1d48f62c76c13ff3e31ad2cae2c4b07c5a3bf2e50238aeb17f3edebc84e44f1b0c1b9a231c93ad967ce6e27005c8946bfc3c9f5604c8af8e15d68aa0e3c4e4a7ac38b95a3f577fab938680e34a3a76c5995feccc8fabdde32c6e429b424c2465519a70d8c369ea4fdbe0fc1e4eaffa090727e15511c40305ff380c2ea4ab4efc74e01585e37148cb0662962eceee5b3bea7316262e7b33813650c2099fb651871fae967cf539e2188ac2c7e98010d6c82653d8ad0cd46356069ec57510df97451457c74970d998a93caab8fc73eef3e926b47ac4445216cd4b381217c2b9edd6db1a4d38aa10f22eff487e670323cad3f0fb6fbf67e9e9b3d859f8d6082b63ecf2bfcdf1bc288d790cda61b609c7ca6bc0591cfb1dbb102e53ca162e7be61576555ead042a7bdca7b9e242f9b267256175e1d3e5b73c9734aaf2c83bcb2776fc0e6926b40dc44452162dc2c2699070421ed6f1f96dd74217fc2b03e50f2597df7efd5daf1e213e4016bb07b8d8afb5212e87b9fcefd8b58072d246734a38be8d7f0bed2d0f786eceee35dc1f219cffad8eab219f4f2b82f57bee19abbffef2abff6de50aae8ef5530f34be384bdbc613578daf7efeaaced2cd23976e42eb464c2465d13a08278ec333810d2a4b2793431c328e1b3bce0d1e38d87df1f997eeb34f3f775f7df1951b317c841eede66ffac483d00691bfcab390bedeb74650aee0543908d1aa72c0897f768f0b75d0dc40a639221cf93df6a7b16ee0b703dde04183dd90ef86ea158c1c314a3f08ca019599d29f090fe1403c595dc845eff379b416500c20f7946dcae4a9eea3011fe9df17faeacbafdcc40993a47c3e0ce5ac1a3ff521a4a92edc2bb1cb18d2899bf42df5223d7110dc50a9fbfeeff7771ff6ffd00d1f365c9f93b78db3aaf4135a2d6222298b66271c9440630947074cb8d7df61f0a04050566c3cdf78fd8deee8a38e76fbf7d8dff5d8a7873b60ff03dc59679ee51e79f811f7e9c79fba491365008601e015b24fc79eb5ea8141bdc89532d05e5c51421c71cf66a6b10be19b14a46928f2cf0199668b70421e4c245e7bf57577e20927ba638f39d61d77ec71dafec71c758c3be9c493dc79e79ea7fdec8dd7ded08907c443dd60f566cee48d91cfb3158031c4f1f2bdf7dadb6db5657777c8c187b8575f794d4f9b5a99a86f8fbaf1ab60ceea838b8c11fa51fcccae23868f74175d7891dbbafbd66e87ed77d4d71d744c8b2b955f42ab414c2465d1ec7b38fa1e0e7f0fa791164e76cf551c0af5bbc1dfb97beebac7edb9c75e6e994ecbbaa53b2cedba74eee23a2eddd12db9c49272ede436de686377ccd1c7b8975e7cc94d9d32cd479674f4c4b400d2fa9d81113d6b4a643217c1fccd3510be287d038e13806fbcf1a67bf08187dc3d77dfa365e6cf845739d2227c1eb9bc4a218e6bf7b812e9cd36e1e0c47fec8f63ddcd37deec56586e05d76ec9f6ae53c74e6ee9a53aba4ed2e61dda2fa5cf565c7e45b7e30e3bba2b2ebb4267fed48f3a49ab4a811ae2bc5a385499d3778540a74e99ea1e79e8111903cbb8bffcf9af6eb92ecbb93befb8539f9b5547588d8bcb9735ae035cf0a78ef89b45cf3ef39cbbefdefbdc138f3de13efde4d36c1ca11b98cc6db7ed766e918517917aefe00ed8ef00f7e3981fabd34f68138889a42c5ac492daec128e0e1a9cdc7394f6d65b6e75db6eb3ad2899655d87764bb9155758d16dbac9a6aefb56dddd3a6bada3a403baaed8d51d7ae861ae5fbff7dc0c29a38c3fc56ff21fd0e4c3b30611c212afea790da843767ef05b1308e0b7c15c3e4c0488259f7e8cef860c7547ca2c7f05a9871544d91e74c041eea71f7faae42d4e958fc2ff56875f2eaf2ad4f20f69ea350ed3507a0264986dc2113771c24477f34d37ab926d2fe4c275e5ae2bbbb5d658cbadb6ea6a3af958688185dc52423eebacbd8e5abe6f0a19f3150d14e9af2cb3522f51fa6aedd687105eade35cdcfa90d577897a0171da352d04d202e218b7afbefcaadb70fd0d5de7653bbb6dba6fe39e7fee791dcb85c48ae35a9016bfbdbcdeaaa1ce76de6967e94f2bb8f5d75bdfdd24243feea7713ea8f87ffbcdb76a51755da1ab5b7db56eeeb8638ed3319ea59dd06610134959b408c269f03d9c380ecf2ccfe08f6c8ffde371b7c76e7ba8425972f1f66ace5f71f915f2fc31f7ecd3cfba871e7cc81d2b9d7fe59556764b2cb684ebb6fa1aeeb4d3cf72df7c3bc82727ff9585fc53672463f7f6dcc2e521ff5461e8ba37cf6cf05316200e7fea9830f8ab8209cf7fe76fdf5958419e7090e1578963720d1d36cced7fc0816e09ac3b99edefb1fb1e6a51aa02e39f284dd2a9c88352f1ca255672359df91b421ab6218f12f76588d2aa01c254118e44513f9cdde7614efce9475838cb2ee32ddb55565ed59d7bceb9daee0fdcff8090d12deec8238e746b745bc32dbee8e24a46471d7994fbe4e34f342dea229395fcb850174590f05a4f020bab758833d90ae0e3551f5ab1ab22175e21ceea8f3c6ad525697bf87260556081dc75e75deeb9679fd365c42c0fb95a59b4ccc810d2a9a417f2343f2e1216cb70ab2db7728b2dba985ba9eb4aeeba6baff3160c694a383ef0db57daf0fefbeed77a7fe7ed777c5af24f1d69e1f8cd7d01e232926655dc92d0ba28285742d3212692b26834e1b05958e5eae9386550ead33605f114c17fe4f0efdd69a79c2e33d96eaebd5836abacbc9abbe62a1908a3c74aa79360d28167cc98e5faf7ffc81d7cc861ae4b9715dc524b75721b6cb8a97bfc89a7ddb49f65962b69a1ac7f11653f53486f3ab341793663e6af6efc8449eefb1fc6b81f7f1aab1611e162c50ee2fb5fa48e264c9c22717e74c3868f148cd2df12c5cd12bf592864919b3893264d95d9f914376d2a64fe9ba63b81fcbe1fe3befb6e98ccc0fdfaf76fbf8a2297b2fcf2cbef6efcf8896e8c582ac34748da2346b8297ce34ee291266983b1a280077cf8b1dbb7c7016e99659773cb765e4eeef757ab67f294a97ee220f2302821087eb3af3141d2e6efd1f09919ac219e67031717ea9db0ec9bcce2149494837093446ebe1630e4bb216ef2a4c93a7950f2a4e0c42b0242e3e40ae1a0d0ecd336b1e2a984570f85d537982016ce0d37dee43a2dd3c5b5efd0d175ebb6a67bf1c5de12c13bfad5471f7ee44e3ef164b57c975e6a69b7ea2aabba3b7adda1e54099530fe441bec84c7fff69cc4f5a1783060e52c5ca58b07046d4ea904d1ccb4b63468fd10f90b29f316eec78fd4a87860b61a94f36d7896f043d4bfad9c4f1d2eea346bb51237f90781374cc59bac4d5ba94382c8b4e994c9ff1df36048ca3512346898c62c1324425fcf46933dde4895315b413cfa83ada05cb8eb18d6cf8513fc84a7c64277dd24556ea027f0e1eb02cbbcdd6dbba4e9d3abbb5d75ecf5dd9f36a3768d010376dda8cac9d89876c2ce165fb4638ae02ad3fb91266b48c2b0e19b054f7834c34b4cc38ca4df8704566e4252ef900f29922e3c7ea6cec8fe3a57e2a1381ec6003ed29bf63e8b2336927cc366222298bd9b3706237870dc73a7a1dc23147dab882780a3a8f74b00fde1be076db750fd7a13d7b362bb81efbecef3e1af089a48532f4e1180b93264f73f73ff0b0db74b32d5d3b09bb62d755dda5975de946897287603ee83f4006d055eefc0b2e74d75e77a37be2c967dcbdf73de84e3ded4c77f81147bb934e3ed5f5bcea6af7caabafb97132c0716a55fc2eca4a7a3064f5edc0c11ae79c732f70c71c7b823bf4b023f57ad3cdb7b9b7df79df8d96016de43055ea13c23be7acf3dca9a79ce16eb9e536f7e24b2fb95b6febe58e3ee678cdf7db6f064b1ba05026bb7e6fbfe76ebce95677caa9a7bba38e3e46d23edc9d78d2c992f62dee2da93b48061920a09b25ada38e3eceadb6fa9a6ee98ecb6a79bbadb1963bf99453c4ef56f7edb703fde0150586b27ae5e557dce5975dee4e38fe0477b8a40bce39fb1cf78f47fea1ebf4cc5c5568018ae7b5575e73679e71a65a11f7de73af7bf9a597ddedbd6e97729ce62e94fafbfcb3cf7ddd134547b9dc1481347172ad4b38f2bc4e78eff18720531ef278a210dc8d37ddac844359d75c6b6dd7fb9557c4273889cbb7005f93b6db67ef7ddca28b2caa96d0f1c71eaf2719e9d7282764852c077c30c0dd79fb9d7ad0846521ad8fb3ced1bd90f7de7dcf2b4615c50bc02799584ea2bece3ce32cb5a60e3ff4703db07095f4a9175f78d17d37e83b3db841b950f85ce9ef9f7dfa997bf8c14725af73dc11871d25f18e9478a7b89b6eb8c90d903e09f19b82c552b9e1fa1bb46d7aca9879fcb1c715975d7ab93b55fae7dd77deed860f1de13eecffb1bbfcd22bddb9679fefaebcfc2af7e1808f5469a3e4f940ea25175fe2ce3eeb6c7de9fae5deaf681aa79c748aca7ce20927e9f2f4fbefbeafe5a49f7cf1f9176a251e281673d71557721d64c2b6d4d2cbbaee5b6f27fdf10c77cf3df76bfb711a90fd1d0e699c25f58085c589511c750520e4de2ff576575d7995589947bb430e3a440f77d06f908374d03546c8c8fcd4134fb90bcebbc05d78fe8592fefdaecf9b7ddce3ff78dc5d7af1e592c63112ff3877c5e53dddbb324648dffa8fcfd3f793188970e61c31919445cbd8c38908c78eadaab36b515cfc0433a7ff221def49b7c17a1bb9764b7470abadd2cd5d70fec592eea48a6c72e5136b4cac3e102ba7c77e07ca6059c6755a7679778810c257df0c7253a46c4f3cf5b4db70934ddc329dbbb875d6dbc0edb1e73e6eb32dbabb0e12764951621d96eee8565d7d7577982893279f7ec68d1d3f5eb3f8557af0cf3366b80f3ffec45d7af9156e9bed7674cb8a15b5b8d4eb624bb4177470abafb18e3be0a043dd830f3dac6405514d9838c99d7efad97ecf49d2df5a668e58211b6cb8895b7cf1f66ec38d36755f7ef98d0ca0b1ee3129e361871f25b3caf545f64e32e03bca55d0b1a3a4bda6caf4bccc3ec7c94c7fa4cc50f7da675fd77199ce6ec18517731d6536caac1f45bcbccceeb7db7e07f7fa6b6f68fb0e1625788b28921efbf670abafb6ba6bb7643bd7a15d07d7a9e3326e5989bfd9269ba9e2e0982bb36106300a1065d865597f2083251614d1861b6ca87b27fc7efdb5d775a6497894659df633508138b9e609a738bc788806890987c746385656251c21d1d8a1c0b052ce3fef7cdde75972f125dd965b6ce59e7de659ad0b1cfd11723859887c6d4983a54888a9bdd64927b7f69a6b2b897cf0fe0799e5429fe5374a7cf3cd36d765bd653b2dab96148756d8efd86edbed957820255d2990cec89882504e3fed7489b7a5c4eb2275bfb4e4b98cd46367dd6b3ae1b81354d9a244911122a77e919f3d923d76df53265bbbb9e5bb2caf6d71ea29a74a3d0e774f3ef18c5b63f5b545e62eaedbea6bc9187942e363c162d5add47565b794948b3cf69434d8ebb403361c32d860fd0ddcb1471fabcbdc1c37670f68a71d77d27c8807b1433a5c975f612577e8a147b82f85b8b104391db79c58d4d4dd01fb1fa8962f4a1fddc131690869e71d77d665cdc5165d5cf75597eae0f75cd96fbdecd2cbdc7befbc27c43f45eb9713a54c6c56597915dd7fdd7ebbedddc1071dec36d97813b7fc722bba653a7696722eebd65c636d77848c1196f220299c5a68f441eb2b018970e61c319194450b249c99995f964f3e9ef98b9bf1f34c998df572abacb49a0ed475d7d94066da774b870b7f572740c594ff860e1de94e90d9630709db7ee9ceaebb9043ff8f3e7553a7cf740f3ff698ebb6d65a6ea1c516730b88a26e2703a68b0ca635d65e4f9eafeb961265bac0c20bbba5975dd6edbddf7eeebd0103dc0ca98f5f44a17ef1f537ee5c99a12d2bca85b81d1800ebacef36d87833b7f26a6bb8bf2eb0a85b78b125dd8e3bede29e79f639b1b6a6a88573dcf127a992595a06ef8a2bacecba7459d12db7bc9f416e2bb27df4e1a7a2005f763becb0b3fbdbdf1752a2dc62cbee6eef7d7ab8ddf6d8cbadd2ad9b5b64f1255cc7ce9ddd9efbece3deeddfdf8d160571a60cd02db7d9ce75eabcbc10e8f26e51c91ba2da7a9b6d85b88e706fbffd8e10c7581d9c10c5a28b2c264ab5bd0ce0e5753378938d3611026fe7fef697bfe97e08a4f3e9279fe952101bf4ccb251aa8441c1a2a4201b14d6965b6ca9c78f713ac36489a3a80d010d8393eb6c138e60e2a449ee861bbd8543ddad21c4f0b25838aa588886e29176e2afd7de71fb1daab8907bf5555757c2a59fd3df5174fbefb7bf9667c10516549261f31d854cd916f8fb825a47271c7fa22ed1513e4ec871f26ddd75d655e50911701a8ed390ec9b91cf9fffefcf52cf1ba99540bd636da0a099d5e3bff0828b4a9e2b4add6f28ca7e63217369336993ce42fa1ceb870451a2d411697711858e8c286d8802026202709a5898a3467cef9e7cfc1929db5ad246cb4b5957718f3cfca89755fa067ba61ca640c133c180102112ea84349790fef47ffffb677d8e7cd409af1a60fd6e2465587cb125dc42d2c717597409b7b6f4f1adb7d9de9d2b16fdc81123f5bd27f64fe90becf3507e96d5a87f96ce6ebaf12625ccbfffedef7a928d3db58d36dc48273bc4e139873cce38fd4cf7f1471fabcc58e02c85222365a5bed88be520cc7232b15b7595d545e6f65a875da4af1f79f891ba2c6c7d2f11cedc414c2465d13209c7d2b76b8db8f84f9e34d55d7dd5b53ad359ba432799f56ce61e7ce051b17caa97fe480afcf8e37877f639e78b75b39c904217b1683677efbc3fc04d9141f1d8934fbab5d75bcf2db9d452aea30cdeddc4c2b9f1d65eeed537fa88df33eee8e38e77cb75ed2ac4b1b85b6bddf5dc5df7dda7ca7dd2b469eebe871e72ddb7ddcefd5d06d1b222cba9679ced9e7fe965f7da9b7d5dafbbee75dbefb49ba4dbd1adb0e24a92ffb96ed8f0e1ee67517ec79f70b2124ee765441e999977edbaaadb7d8fbdddf14244975f7195ebdbf76dd7ebd63bdcd6ddb7732bcbc0da61c75ddc5d77dfeb3efbfc0bf7aeccaa2fbcf452b7c63aebb8c5dab5739d975fdedd2f728c13e5fbd9975fb9279e7eceedb49b283c19845837dbefb0937be3cd3eee6b99654f9bfab32a92830f3c581529b3d6bdf6dc5b8f4fbff1fa9bba567fcac9a7e8c04611a014eebff77e8dc7bec6b5575fab0a0a92c2525853acac7df6da4795d235575d2333ddc15aefb4d5dc261c8242e0378a32f7164e27b5705e7ee5555536ea882b0e45cfb2d76aabac26e55a568f51f7bcb2a7f675f640aeb9fa1a9d492f2e6dbca958777cc5fce5de2f6bdfe410ca566211b1ffd36df56efaae17fd1545db63dffd846cdaa952c49261d98dbd9f5745060e27401ca4cb521bb37c942833fd9da44d2029f61f2fbaf012f7c2732f491df41339aed3d3650bfc7d01dd9cbfe4a24b54897ef9c5976a7572e49b785cb1aa0e3df8506d2f963721b4271f7f5af25b43087339219d2eeebe7beed73a807050fab42be5c00a41a6071f785027091c3438422624bc42c051f25d76de452d222cc3afbefc5a97c8a817ea791591f94291b98ff4d14f3ffdc24d9d3c555fb6de5eac3948997eb5e71e7bea7e108d449fc2fa81e8e837dc3f2a6df14ebf77f4a8354b7c585e10159627f5437b29e19c748a120c7d91fae07dab175f784964eee39e90b2eebdd7be4ad2ed4497f10e10874188ab9d43607d25eb3382aa7e95d068c4445216ad97700498e993264e71975c7c9974c6aeba2cb5e9265bb8a79e784ed2a996d36e7f1a3b41f757b070da2db5ac10c706ae4fbf77dd1429e313cf3ce3d6df682379be945b5e3af595a27c46fe30da4d9b39d38d13b3fee9e75e745b74dfd62dba447bb7a228ac33ce3ed77d3d70901b357ab43bf5cc3385a496754b7658ca6d2bd6c8f3bd5f913853dcc4293fbb81df0d77e75f74b95b71e5d544192ee57aecbfbffb987d11219c134f3c5506c952a2183acb4cad9bbbe9865b64e6fc892aa5ef45f1b204f2c9479fb8279f78ca3df2e8e3eec5975e7103070d7163c74d743f8c19eb1e79ec49b7b558424bcbac6fc90e1ddc35d75fef7e9a30c1cdfced373770c810b78fccd69792593af9ee2e839f653c061cc4c19e0b334c66f11006a7bc588367898837d559276786ca8c97e535f626460c1be1c68cfe5148fe6a55d61015712fbff47225b0218387e8a6337d864a679659d47619ac61e43a27160e848385e309a7a35b6bed7574af8da5cbccc92d7b28ec13a0bc582ae3f82eca9c5938160bd60d6542199f76ea69ba77c19210cb679f8985c733ea027ff61d18131c92d861bb1d5451a24cafbfee7a37e8db411a67fcd8f142e06f28a941c4bc78cc922496002fa6daa9c95d77d9d57dfce1c76a8131eed8d7611f04625c53ac91b3cf3c5bf219eabefd7a90db62f3ad7482b25ce715c4dad9d93d2ad6cbb75f7fab7dc60e293cf9c4d352b65545e9b3a4d7d53df4e0c3da1646381c984079b36cc8494e8e3633f6200d486b3d995061c9acd96d4db136ce7053264dd1f894050b76099964203bc7a259ee6389908905efc2edb0fd0e6a8570247bdf7df6d58314a48d550ce94294e4cf3b7393274ed6cd7dfa5bbfb7de76bbeebcab583e8b2a59b1d4c8fe0f16357b69d42de9b2ec063162f171e0011d72feb9e78b3cab681b6cbcf126eefd0ffaeb011fba4b7ca0c7900867ce11134959b47ac29932799abbfcb29e6ea51557c92c9c679e7a5ed2e1a84e5d375a94f499679dab7b2c4b2fb3bc2e97bd258a120be7f1b087b354a74e4a3877dd7baf10d1cf9add2fa2c0bf11657abcccb4965b516687cb7411657ea07bafff00f7e5b7dfba3d6560fd7da185dd4aabaee6f6eeb1bffb870cf87eef7ee0de90d95fbf77fbbb73cebfc4adb0d2aa6e41b180b6dd6e7bf7fa1b6fe869b8534f3d43145c2719fc5d942c3ff9f8332d972e07086cb318e2192c8aaddfdbefeac1876baebdc15d2d38ead8135cb7b5d651a26b274af0ca6bae713fb14724327f270a68b7bdf672ede5f9b29d65f0f7d84f4fa851adcc1a2f38ff02559eec4fecb6cb6eba9fc09bf77612881344679c7686cece19c8bb4a980fdefb4015ccd5a23c510a9d3a2ea32ffab1e4c2729b262e50ab867f3ac2e5592d101e27d73a8403ea849787058443b96ebaf956d749ea9125b575d65ddfbd2496097eb18585324641b31cc88b892ca9d1f7980d63c9acbbf6baba8785f5c632621fb16efb8a95ca2c9c7d0c66d62ceb30fb47b13229c09261e31b658a126749922f1db0a9fdb558059c56c32a4469f3c70c291775bdcdd6dbb865a4fe480fcbd0de67c11fc5cf92d2dd77ddad1383179f7f51fd077efb9ddb70fd8d75bf92193d1be64c0288c31e15f5cdb87de985dea2d4d71462ecacaf0040b238dafd56a92796cb58d262a9904304c4518b401c2f6feeb5e75e4a0cb42ffb7b4c22e81b58bfc4c142a1bc37de70a35a545ac7e2868b2cec2bb12783f504811bf1b22c469af8d1df98a0202ffd9b3e07b16b7f13a242362c20f68438c4c12109c886f890d2bbefbcebfb9638f41324cfbb768bcbe408ebf6352146f655718970e60e6222298bd64b38f809209cebaebdd1addc7555b51436da705331fbef93d94f741c531cb7ec5d631d9c708298e7421a8bb75bda6db5cdf6ee03b128b0701e7af41f6eedf5d7d7bd9aaeabace2eebeff7e375588e857893cebf7dfdd4899d99f7d1efb342b8a82ef2824d3c3f57dfb1dd7efbdf7dc56db6eab4b711dc45a586ec595dcaaddd672abadb1b65a5000b269bff4326e3119101b0ba9bdf8526f3dbeac7b38ed3b8af266b37d1bf7f55703555e667dd43da77458ce78f2c9a7dcd1c71ce736da78535d5a63ed7c8db5d6d5fda12e324b876c96100be7fa9b6e7213a64cd17da5c14387badd447160e17492c1bab790e24f3263e494dc88112375f31ba58b85c3e62edf9ba36e211b2a8cb661666eb352962a50bc58412c3d31cb272e1bc0bc6f61efdde0204dad74aef5c1da48ae4638d97b3845f1eb211c4ee6b1c76587069e7bfe05f78b2851534cc886f2bbeb8ebb54c95376943127b5b0701e7bf431b75c97e55599a2f4569119f35a6baea57b32ec73adb7ce7a6a19b1efc10c9fe5352c3a88e01fd277589264164e9db0a4c4b21bcaf9386937de13c35a620ca15c99cd635df2de98ee5988a2e518b1d587c9ca72140a77baf44feaf7bb41436552b5b96b2f7d7d85e55712ebe32cf7a3f44be2514e143f27e69e7bf67991bf9b947119b9aeea1e7de4514d13596fbce1a66caf6613e94fefbff77e36c980b438d8c03220cb6a100e562e561c639fd3896cd62337a7d578d9d64ea12103e15886836c08c3bb719c706439908d7eac3988e3a0030f528bd1ca8b838c396d076953bfec55b13469160e131faccf5d02e1e0282f3a83bd31260beda4edd611ebecd5d75e773f4b9b923c2748e3be0212e1cc396222298b56bf87c3fb2bf7def3805b7fdd0da5837794c1b59abbf8c2cb65a0729c5302581ac17d2416c43efbeeafefa6b49399708f030f765f7c3dd04d93723efaf8e36e5d512c90c64aabada6fb2153a74f77b3a477fe9211ce05aea3c45d523afeae7beca584f3ce071fb82d44192fdebebd2afd65c47aea269d7f7d19cc6b8a92827cc02aabafa98a70271990ec2f60f2437eed85f820cb6dba6fe706c90cd6dea34009a0705e78ee0599291ee05692b22db77c57b755f76dddc1871ce14e3cf934d7e38083dd8a2bafea9610e549fe575d7bad1b2f0a6a968caaef860d132b6c3fb1e6780fa78beb21b3cdf132781970a3468ed2250b4e13411cfb8955f6cdd7df54d539dfb9bbbae7d5aa7051ce2c65f08dae3162f95c77cd75aab4514aacd9a300f4254173f9f6aa85283f08277bf1d3fce2b0fa4c1e16100e47c16fb9d5138e1d1a80d47f83008987932bef9970b496f260a171ea8ccfc0a0dc59ee620f06428134200cf6ae380cc0b2e15a1216d2518852db5b0866e03703755c90ee0b4270679f758ebe89bfc1fafec41efb3a285f96aed81b79532c26ac174e7f913ee416130e0a14a5afe272d5e2ca7fe2b020bf1b3cd46dbcd1667a4066c5153ce160711ad9101e627ae6a967c5ea5f4d2d1cf645281b931896d46eb9f9165d0e236f88149267dcd964817ec03170c806e2c4d2c08aa37d397dc881123b55c632d958b3ccc441c02c0f6239536e4ed0a13bb090283f4442bd63f9b06ca8ce174f750b47f339fc409fe4f0c1fb6251f3ea04d6266d439d32c1c13a52272243b094893a6662b4b6b4172b08d3a44d2951dc4f0c8970e61c31919445ebb670c4f1aecdabafbc2e837c377f3c72e965dd81071c2a0373980c3006a10f47079b2903f699675f709b6dbe955b70e1457573ff9c0b2e72c3467eef264bd93834b021cb051d3b8a125fc5ddf7e043baa486f2c662183474b83b5914432794b40ca83df7eda1d64dff8f3f763becbcb35b74c925c5af8bdb65f73dc5d2b8d53df2d813ee5ebe6376ff83ee81871e150bea31f7e83f1e734f3dfd8c1b3a6cb810ce2c219c939528211c0e060cfcd66fb68b3e55053272f8487dbf825349ccdcb7d97607f7dc732faaa5f6d3b889ee85deafba6d77d849aca78e6a61f5bce61a3776e2c48c70f69399642799ad63e1b0a48662e65d9d1fc44ae1a829df1a63798859ec80fe1f56293b3b42ccf2120a9a992bc77f51705838766288fd8b77dfce110eb7717bd50771949597ff209cd9d9c3992afdf3b65e77e83b47d413ef1cb1a4a64ee2a190e9c728579688f8da00cb591c09fe70c0876a413cf1f813a2443908d141ad3a942efb190f3ff4b02e6ddd77cf7dba4c86258445c3c93166f7cce0590ea22ff365ea77a42e58b6bbec92cbdca1871caa64f5973fff45ad0a1427e5a31eb12e50acd4ef49279ca4048fd267698bb1c7f2179bf02c2b51e7ecef0c160b67b34db7d47ede55acf433cf385bfd709925276df7dc33cf8bd5bfba28fdce4a4c90aa5a38222f56097b431dc402d978c38d755f060b8f7c593663cf90ef11e28f55c11219e5227e9f37fbaad586dc6cdeb3b4ca293d1b8fec4d41b8f40b9626e957e80e64e4a3aa58559030d620f58ea3afe3205c96ce2015489fb81c0367399977be201c26026af918e188631fe736b16e39e2cd5735d611c2d12535211cba4bdc4f0c8970e61c31919445a309a749bf34206eb60907883f560c4afad4934f772b2ebf925b749125dcfaeb6deceebae35e37fa879f7c1a02cceb0f85184e95597d1799b52db0e0426ea34db7105278dc8d9f3cd94d1662795414cefa1b6faccb53abc8ecf3869b6f763f8e1ba764c3c1817e62deb309df41086999e59673c71c7fbc1bf0c927ee9bc183dd21327b43e1b379bf578f1eee6599094e933cc997c301bc89cd1e0cb347363b796175c6cf62e11c7fb2ce567907a3fb565bbbafbffada0f4091f977e1f6afbffc5614e4013250dbb9e596ebaaefe28c120b8075e969627d71d061f3eedd75df89430b575d779d583893741970c8f011eec0430e714b8bdfd2325077dd6d777d399401374dda9397fb98a5a23c98b5b2cecf26aee62d65e6b3f6284c14337b1eec4bb0710d11d15e46382800daae8a7062976fb73c241a84c32c9abd20259ca27011f28a64aad4ef6dbdee741d65d2d15e08bcdb1aebb8e75fe8adef5fe1a68ac50ba172f001ab06c587c2bcfedaebf545562652ecd76cb7cd76aa68a9975384e859f6a1df330e6837f622901319e9ab284996ca7849f481fb1e14c27cdbfd3406129a2133fff1bae7c5be0fd6024b4cec77f1eed3975f7ca556ab9dbca29e39686027ab5826e3fd205e4c65e9f381fb1ed067bc08cc5e1ffb7e5d5758b962e148fd19e130469f79fa59b162fcab022c7d419a4a38628d4038ab8a558c95c231672c33ca467c3e9ff4fa6b6fbaadb6d85aeaa8bde681fcbc0be309a78f120e71b1289878704a8fba203ea713795f0762a0bc7befb58fea0efad5c5175d2c16d30a42f6bcffd4ddbdf87c6f217abf6c8cccec771d76c8617aea114be5f8e38ed7b2b1a476e6e98170648294110ec5154038b7dc7cab120ef1d6597b5d2551ac56eb5b457d2861ce10134959b45a0b470717fe0296cffef1e8e36edbadb7d741b2e4e24bb96db7d9418f13bfffee07ba41cbf2ca59e79c238a684d29ef92fa02e4b132abfcf8f3cf55394f96f23dc292da861bea1ece0a2bade40e3fea68f7e4b3cfba4fbef8c2f579fb6d77e12597bab5d75bdf2db4e8a26ef535d77237de728b1b397ab41b3376acbbfabaebf51d1e8e4c73e0e06cb10cfa4a79be1402f9421477dfb7de71575cd9535fcce33414b3d599d367b9934f3a4dd7e33934b0950c4208479dc8c4e0fff28bafddbe7befe71693418a326539901338c3844c067cf4913bf7c20bddaaddbaa95506095edeb3a7fb69fc78254908e7e8e38e734bb46bef169781d87deb6d746d9bcfdb4c9a3459dfba67f9836531f62c506e7c7100a24189f251d575d7594f07f16aabaeaecb272858942ec78551941011160e8ab5a62b683f83b563463866e1e00ac21b62c2917ffa79a23beebcc75b384238ecd171b0e2adb7de15aba69f7be2b1a7f42b08acf3b3acc3ccfd50516efccd186440d1b3ffc032238a72e18516765b6ebea5bb4dea00eb8d7d0d66dbcf3ff782bb54fa012fbe42105821bd5fec2d56c7e65287cbb95dc4d27ef6e9e74509ffa0a4f3dde0216a4942ea1cb566f9118b853d0ddeb4270f4e65b1b4c53160fe860ce9f2fd338e2bf32ece4a4218e79e739ee3854e965cb1705886658275fa6967eaa9379cd6a53894f7f3cf3e2f560c4b764b2ba9f11e0e0ec241f655c5c28114b0e42ebdf85255d028fc8f3ffcd45d78fec5ba346dc4c09e0f64035852edbe65777def873d2e48819788a91b3d162d64bacb4ebb28c112662fb1945816667918ab6f5b085d64e27d99d34e394309fa2be9e37c09e186eb6e70ebadbbbe1e18d0c9808c29f40f6407e1b0bfc6c942088736d18617c7a94a251c0ecf485f5d5fd260f290e912fa8c5d139a0c31919445eb5d5203e26fd6c0f0a1234521dea4fb209d9759c12db1186be3dddcf6dbeda8837c934d37739dbb2ce7165d6c31bd1e72d8e1fa66fef88913f54b01536536f4a8ccf0d71142692f964abb0e1d5c57198c5bcb8c74bffd0f70bbedb1a7bed1df4e66769cfada63afbddd1b7dfab8e9d4d1afbfba77de7bcf1d75ccb1ba5fb29874fa1565c0f0463f1fcf3ce0c083743d9a9926ebf5bcc332f6c7716a9db124b29858651c1ad87aab6df478ab3a2913160ee53af71c96b556d197ed383070d0c187b9134f3ac51d70d0c16efd0d37d2fcf80a4227b170cebff02237e6a7b1ba513a5a14d165575ca1e55864d1c5dc72cbafa047a34f39f5345dd2e108ebf532c8d9bce6141a7b0a3b8a9c7c529e757b4e5bb1c9cb7a3fca8f2f05a3cc50b2c44361014e6bf93d1c1aa3c0c56d96431dc2110b874309daf605e10d790b67f2949f95703a775941df3962af6bbdf537729b6cb285db68c34d6436beae2e69514ef625f6dd7b5f250afdd6174ed26046ccbb22db0b813283a76c58432c11f10564f61d783706ab8ed9345f00e07839930496dff40dfca5c5c2dd735f77f659e74a3b5fefce3fef027dd1f1af7ff9abc683d0d83fe3333b1cc038fdd4d395fc5842da4cfa28754f5a5842e44ffda3a41f7ef061b512068a85b399948983262b755dd59d2184c331f5acbee40a79f2c15a48a5e3529db4fd3834c058b163d13ca38c9020ed8c1267537f8fddf612eb6775b7c0df17d249d059679ca3a7f4746543d2e66009ef5b111732e4941ffb7f1c4bc67aa74ff16e111311e4e7b41b93140887b83d8564f9aac2827f5f58da614521a47ddc11871da975cbcba8589e9020968e7ef853fa0547a6d9e3d2fd46259c9db24303387406561b6dc5321e16ce9bafbfa93a8b327beb4faeda5924424293202692b268f584636166cdfccd0d1e3844663abddceebbee25b3cde5756fa49328723a299f815982b7aa57ecea0e9481f5026423a63a4b5324c11ec0e34f3ca9ef6ff0ce0aa4b4ea6aabab25c4ef65c402e04a3abcad7fd7ddf7e8c73c89cf9e08ef813cffc28bee90430f735d6530b3840571b177425c94117f8f65f7ddf6d0a59269a220674cff4567a81ce75e61b9ae6ebb6db6f71bf7e64430c2bcf6ea1bae877e847379b764bba55c4719cc4bcb0c92749177152131fdcc8de0acb3cf71a3c78cd132f1b9978745d16c210aafa358231d842809b3d1c69bb8a79e7a5a97519899f29e051be3c88822d1d34032cb6753996533fe781d478279c703c5c312079bb458452c71b084121f53ade38ada2ea0887058b2d302808238204f3853a64c7777de75af5b6699e532c2e9d8a9b3eb2075cbf213b36a94208700ce3af36cb5e4e87bea2c5d71ec473c70ff836eb75d775782a00eec8001bf51a2580c6c8073ba8bfd12fa2cfb39fb4b1b715a92cface832a9286c9be91397e5258e152bc989cc10f72bbd5f71fbeed3434990bd0dea14397907061262d39d2f23f0963e6ef0a021424c5b88c524d68958217a4a8dfa8a1c870b38a566560cefa7605d90271bfc100efb466cec9317e4c96f964ea927ac228873a71d76d1af5c683d495cc03d5f1f80a428975a8b2233a40a81728802b264cf11ab8e7d180887b8e8908f3efcd85d76c915fa1ac3128b7138a3b3c4f79fd4594c088cfe06e1b2ccc7e93cea972ba7d4588ea3bf3101500b0727e952fffc713dac23fa2d073a981c51cff4afac8f45fd2761ce11134959b40dc209e17e99314b48e73bf7f493cf4aa7bedcf5d8777fd75dac064e57edb2cb6e4a06575f7d8debdfff4355c6fac567d15c24c566fa134f3ea5275c50ceabcbacff98638f73e79e77bedb67df1e6aad6c2fb3403e9a79ff030fb811324ba51f73b49974b842607c44f3ea6baed5bf43b38328e28d37d9d46d29839117e0f846149bd62c6be0f84ac29db7dfe50e3ce06099411fa6cb06fa19791c650a651cf7d304f772ef57ddd9679f2fe5d8c3759759f6ce3befe24e3ae964775bafdb75a9ee209981efb3efbefa214f08079978cf877d23be317618b3662903b21c2396d87befbeaf3361da9899276f90b3a9cb60de7cb32d1c47a00f3af06095999349b4932eaba80298a20a81774fd880e7a38a2cc7d0570a5ddc663914110ea7e0d41584cf207188aa90df3fff3cd3bdf0426f77d04187ba3df6d8dbedb3cf7e6eafbdf675fb4a1f38e88043dc31471fa79f9f61b39f3f434d7eb64c64f9932ebfb1b0981440c4fbf5d84f95294781b1feb0f4d8b7e083a6760c1cb0acc59bef175f74a910cbbedaef36de68535d7ee2532b2c0f413658442abf38e243de2f89a5856cbbefb6bbbe5449fd73cf676ab0b8b088d8a7a0ee870e192e56c7d99ac7e1871ee1eeb9fbdeaa63c9be0c7fa8050b2962a91e76e8e1ba64869541dfe34f0ab087c3bb38908d7e1453488489c3669b6c2e13b63d744ff4b1471f17520cdf240ca0cfb07fc20b9f7c7287af1e30bef812009feaa1ee2ebce02277e0fe07aa25c4f223131bad6369ace9d3668845f8ad7e8eeac8c38f92baddda6d289628ef24b1a7c5d71c782f88fd2a6b1b08870f76f23585fdf6ddcf5d70fe859523d51284f459826449982f1bb0e7f5f1477cbc377c9791fa2629ed2c95df0973869848caa2f5eee1c8a0520485a54eae0c2aac023e758e52e05825e9f2f55fcc7d6695ba31eb8367d7693f7b0b8733fc5802580dbd6466c97ec7a76205bcfbfefbee1d3e57326cb85a43f63219d7cabdfff306bc133270d060f79e0cfa3ea240df91d93f9f0599385e2c2a91cf32a67e59cb47cecf3ffd5cd7f675a313471883b89fa74e77a346fce006f4ff48971afab38f3374989b3071a2fb61f418f79558469f7cfa99ca8b7cc84354641b2f654619f0f55fea823d1ad6d57540e32420839a23adfa77f0dfecab84c4be85128d283a9383bac7ca6156cd67563ef9f853fd0a328a53c38530655144381ca1c5e92184823855402e01f58ad2a76c5a9fd26680bd2896bcd8ffc8640c7180c96cca0d874c7c9100e2fbe2b32f74df02b9d80bfce6ab6f94708947385bd24516480185cb3e0c4a9978fdb5dff93fd700c1a8b3fc7172a53f421ac84b1c2c05be5b07d1304bd73e13f2e137edc4cb99948bfce833c84219ac3ed94fa1ec84235d3dba2c6960c15d7bcd75baa48685c329352c35143cfb28580ed6b7188bda06f28fb85647949d83161c6ba65eac4f715a8fbd49264d9ab7948136f57249d4201bd0fe2693212c63ac91f7646c110742acd4ad9449eed1391c4ca0bf511664f3871c7c5a8c23960aa90ff647b992bea54118bd123ea1c910134959b47ec231a514c9c4203139adc3c5fe55f7e2f8c969b2c71e7fc2adb7fe064a381c2eb8fb9e7b55795b74439c64fc0ce5ce3d2efecdb5d0f15850459ce1b7dee3b8c665b67091e391c1fef48139ee898332acca83fbd8e59fc92df5a8833f2f4f00031e658242cc14b621c8dc104c26f2c8f670780f075710be0e6227bf9137734116953f0ecb337e9b9ffccb1039adefe09fd55dce658483932b75c1d1628d179ed58c1ffcb2e75c494f90c985e336c4b7098be60b70840b6162a8a2b7320407b1f175007d0f67c9f6bac4889246664bd7f252d472f8c57246b2d8b32cad9cd3368afc545ee4b47ccd711f7e5316c6745c16dff748283c906b553f94dbecde7e2734196222298bd6bda416232f538163b0669d3a17875922ef6130003b755ac675ebb6867e49d9fe5ebb393e06c9fe8101a59cdd07bf2a179e17ba82c7269f290b953372f8eb80b530210d9341076f788663d067b3d4bc236d928a0671ec342de4215c0892290673dc0ab26721cdb2d078fc9374ab08a7206c21705cc9de9e85f4f419ceae5178f3b7f255850f69d4ebf0275e1416cb4f37d70b9ca6af3702e2c44e9e59fd5529d0e0e23aaaf293fbac4f87df86aae7b82027e3ed8edbefd4a534f695f81027d6581db9256cb61260f286b44155dae2b2f289b3fba2b2a8e3b1c45772e09f9144ece451834ee2a81c21ac8e458b47ba927fe69fd0e48889a42c1a261c81110ec8be97658efb02614a415c93118e41e2d41968251c4b15bcd0c7df01d17734565c495ff6ab9227763c93b4ab3a74ad70458ee7f5f869bae69f0f1bdf17b9a23213277e5e4bde865c2c8ba521575532fc6e24ac9cc4af5a52235d9e37a4307021ac0faf4ffceff85ae4a27835818bf33257141610ceaeb8f03c2b47f8adceaee6e270e1774d879f858fc385e79697fae3c285a527c61b2fb8feedaf7f53e261194fc9c5e4abe5f0abcfdf9c85e16a6589ca949174409d32c4ce9e73259ec5b5f42297a513c5d1bc12e60a6222298b128433cb13ce54211c81124eecacf16707e2e606e154c5e759030e65c759ffa79e7c4adfaade68c38df5ad7a3698d5c2294ac3d28e61f9c6cee48961ceeee367e62caca51b87b57b5c7c6f2eff4c7e170eeaf837f7f63bbecf3b799ea565b2c9559f593d9445945615e1d87b38e21a2432f1ae83bc2b7a86e3793e1d5cfebe5698f8394eee8b949e3daf2a4bf63cfc06e6e2b8065c7c5fcbe11fd2cbd2c6c97366fcecbdf1a70838decd31644ec8b18fa27ff83096a1c8c5f937248739d2349970711ae68ad2b27031ac3c86bc234cec8ae22434196222298bd24b6afc1d75251c96d46237278d2aaec909c75c1cb701c7c06409824d6536c039dac995affb169afb38cb2f4643e1f0b76b0c9ee51dcfa3ab2a3271759629ea8b8be33e9fb7b95ae10499e2ccbbe0af61051a2edc371a968e5c8d70986d378a700ca485b36bec8a9e992b4a837b73b1bf8170c07e9b33bfa23079047fcaa765e4378edbd0d6eaa2b08d76b978a48b25c3677838a0c23b5f1cc3e73d17ede7e64ae4556fff304710ca868bcb6161ec5a5446ee795e1fcab8a278094d829848caa241c2e1b48e12ced4693adb57d3bbb11da316c43539e118ea930b3f4b5b5ca6c4e5a21be5f9c11785cd9ca5352f11646c144cfe1845e1f268286cd974ea83a521d79870468dfc5e1e0627fe73446af31a946976eaa6acb3f0964f3e2f7ed7e3d4ead11beeffd08956cd38963e8e6b3e9ffcb384f90a319194c5ec114eece6a4d3899b6b84530692beb76ed85c94dfb8501e9b99d55176c13fa109607529d742c209fead8a705a0aa83b83b86c035d9c5dd5c92d759f2dbfc571e367090939c44452168d221cd0e2f7701a0b939fabe5878bfd12e60ea2ba8f09877793b2b610ff443873089cdd53af56b7760fe2f002084889888957ce2f2101c44452166d7749ad047430f14faefe48a587fa7125ff5c9c842684d56f68830ae184536a38f14f84d348507701713fceea31f855218e1f40f854f709b510134959349a7078a61dd45c8dce5a0ae29a8d7024ed8c706c60c93fbf87c38d84c1c96d9db8094d03ab5baa3e114ed3c1ea8e7a95dfd46daac384a6464c2465518a707829924f65e8921a2f885987c6715f204c29886b16c2215d931b67f9e0ec79ec67bf139a1656b7724d84d384a0ee0212e124cc2dc44452160d120ec7a2211cbebd8585d3a47b3812b7b92c1c06a05938fe777816a0e170c13f612ec0ea966630c2e9dbaff2e2274efc93b26c3caafa7142c25c404c2465518a706c498df770f826579533a5313b10c79f8fe50f7df514c2794b940d79aa23dd48e9cc13589ef61b3727e54ba81f56b7728d2d1c7d0f276a8ba4381b07251bac1a265405fe09094d819848caa261c211cce44f240bd9149e52c31508531679c2d1379e71a6707005f19a0c960fb0df793ffb9dd0b4b0fa15a01c870d19a65f1af89e63d1e69f8f93500ade622ff64b48680ac4445216e50867c6ccf02db5828f77e26653313013e3edfe5eb719e1bcd5fc8493306f11da98bec067e7fbf611c2e158b4f9e5c3272424b408c44452168d221c3e6f53f866f21c28866a0be72dcd4f1dfe964f2e4e421b82b5b15c3de1f4ad1c1a280a9f9090d02210134959343be1e8a101219c2b2ebfd2efe1cc6b0b27a179616d2c57239c6c0fa7287c4242428b404c2465d1bc8423ce4ea941386fbff5b6e69739cba7286e42db80b5b15c13e12424b41ec44452162d8e70c82b73964f51dc84b6016b63b926c24948683d8889a42c12e124342fac8de59a082721a1f5202692b2488493d0bcb036966b229c8484d6839848caa27184a37f806d2e13cef44438f315ac8de59a082721a1f5202692b26804e14caffcc54f5312e666573988ab7368c04ea9e12c9fa2b8096d03d6c6721d3674b8ebf366e55874fac2404242cb454c2465519a70f8bc8dffb44deecf13e0f85d205083109708673e068e3616545efc4c164e42426b404c2465d1380b67dacfe9587442d301471b87fe93082721a1f5202692b2488706129a0f38da3820114e4242eb414c2465d1e20867c6f419de0367f914c54d68fdc0d1c601897012125a0f6222298b64e124341f70b4710084f3569fb712e12424b402c44452168970129a0f38da3820114e4242eb414c2465d1e20887fc3267f914c54d68fdc0d1c601897012125a0f6222298b64e124341f70b47140229c8484d6839848caa2718433351d1a486842e068e3007f684008e7fb443809092d1d31919445230867ba9bdec47ff113972c9cf918386b63b97ac2e9eb467f3fda3f2b8a939090d0221013495994261cbe34c0b7d4e6f6970612e1b46de8dfdaff4d1a367e8e9347c3870daf3a165d18362121a145202692b248870612e6291a229c3e6ff6c92c1cc2fa38b9f0090909cd8e9848caa2651e1ab0f4ed5a1437a15522114e4242db404c2465910827619e22114e4242db404c2465d13209c79ce5531437a15522114e4242db404c2465d1e208271d8b6edb48849390d03610134959b4dc4303a469f914c54d689548849390d0361013495924c24998a748849390d03610134959348a70c06fb39a9070044638575e71a5ebf7563fcd4f1d691a0ae225b44e24c24948681b8889a42c4a13cef49ffd5ffc6cd22f0d086a120e8e74e720ed8496873284a39fb6e191858fc3262424b408c4445216a50967ae7c6940507349cd5c419c84d68b528493be349090d0e21113495934ef1e8e60fcb8094238bdc4c2e9a9160e79c52e2da7b42d348670aac2242424b428c4445216cd4a3890c984f113dc6db7de569770421e8970da1612e12424b40dc4445216cd6ee128e1dce209a76a490d7f718970da1612e12424b40dc44452162d8870727b38f88b4b84d3b690082721a16d202692b2685ec29178d9921a8706fa25c269eb48849390d03610134959343be1e829b55b7be929b577de7e47f35387bfb844386d0b0d114efcf770aac2242424b428c4445216cd7b684014cfb8b1e3d4c2b9e2b22b9285331fa03ec2e12f7ef679b3affb7ed4f7fa3b914e4242cb454c2465d108c269fa3f318de2c1c2b99d173fc5c2a97af19330764d6833a89770860c736ff5eda75f1ad08906fd6a36fb564242c2dc454c2465519a70ec4b03b37e6942c211f01eceedbd0a08c7944d52386d0eb47b55fbe2e43a6ce870251c5d52238cb9286e424242cb404c2465d128c29936759afbb58909678210ce1dbdeed0536a281bf2cb9c29a45cbc84360073d697e43a5c08874947b6a4169ea73e9090d0f21013495934fb1e0ea7d45852eb79454f219cb734afcc2565d37661cefa925cb170209cecd040785e183f2121a15911134959b418c261490dc299313d7dda66be80b9885838a5461f48849390d0f211134959b40cc2e92516ce953df5945a9585832b8897d00660cefa923c1b316c84befcab7f9e20114e42428b464c2465d1ac84f3fbafbf87af45f70a164e3fff27a6e3f4edbe207e422b86b9d0be58b21c8b8670c6fc30a6ba0f34e466b3ff252424cc3e6222298be6b57044c9f01e0e16ce159787f77066fc529dbedd17c44f68c53017daf777b1763916cdcbbfa37f882c9c326e36fb5f4242c2ec232692b26856c2c1d997062e0f2f7eeadfdbc1e5f3288a9fd07a612eb4b359384a38f1925a1937bbfd2f212161b611134959342fe1483c08e7d69b6fd54fdbd4790f277645f1135a2fcc85768670860e19aa870612e12424b47cc44452168d209ca6ffd200f1c68d1def6eb9f9167d0fe7bd77dff7e9e31aa3701ae3caca9adc3c771c8bc6ca55c2492eb9e45ab48b89a42c4a13ce5cf913d3e2ccc2e1efe1bcf7ee7b9525b5d971738ba4929bfb4edace5b38bcf8191d8b4e2eb9e45aa48b89a42c1abfa436ab69f770ece39d9c527bef9df734bfd976c85184e45abe9376d2536afddea97e0f674e5cdc079a22bde4924b2e7331919445f31f1a18eb3fdec99706f85b2853264dd1fc38ad96e53f7da69b357356954cb11fd6172f8c02e2cd54ccac02c7ad7d18b96a780fe2d741557c4baf1a265f7d613c7c3a3e6c5d64e5a8ba0f71348ca52fd74cbe8a9f95c1ca6e69e4d3ac3c8bc3cdd27ad5b8ea1787ab40c347bfeb437de1b274545e913b2a139f4e1a3c68b0eb2716ce88e123d4bf92962f738cac2d433a15b97d7a95b0fe59965f09989c069f977f1e878bd3b4bced19e1b5cca18e553e8d5f17b59ec75059ac7cfaac22473e5cb57ffeb77f565d161fc6a75f8d6ad9ea8657b902f2fe79d4cab33a8f7cb85cd8ac0eaadba93a7ce80f995fb8d7b87158fb5d1db63ec4f957fbd933ffdca7153fabf8192a79d6f58b5137adf03cab8f8a7fdd34737180c4b1fe193fcbae79581881a615c6424c2465d1bc8423b03d9c73cf39cffde3d17fb84f3efac47df4e147eec3011fba01fd0754a1ff07fd15d9b30ffcb30fdeffc03f0fbfeb47252de27df05ef3a3fffb221788640395fbea72aa9f3d23be3db3f021bd2c8fdc6f8b57040d3717ea252e9fca29bf4d5ecaf2c9c79fb8977bbfeceebfef01f7daabafbb8f06f83e00e232194c46f50b69c4e971d572077ffd8d2c21defbefbeefde7f4fc0d520bf2d4d93d3d2b467769f87f955b591853799c9bf0960e9c7fd22f3cb9739f7db3fab4ea3227b6d19e374e372a97f5c669329171fd49b461c2e84c9f77be2d01f9093f6523f099fa515c2d8d564d1df05f7f97cebf4871ac8c72b4a377b861c01ea17b555be1d8aea02c4f566697025bf01fdfdf84076f523bc86f1755405ca27feec9557e5417a711edc87dfb1fc56067b1e134959343be1f0a5014f38e7ba471f7e54c9e6e30f3f96027965f3a15cad82b5b1ac62f41a1a295498fa6795e82bbd0af23cabccf0cc2a30860fef1ba26114a79121e455e807c84be4b2ce409a74244bd7cbe2c3d5827604b9c6e148c7f23059ed7795120fcf7c9ec5e58aef1b427d6149d7947a3640825c1f7ff4b1ebfd526f219cfbddabafbcea3efdf853251d2b4b1ec46110a97fa837f2d6749141a00aa0cadf8378ec17c6cff479904bfb89ca66b2c7ed41d828fd2c9ccf8bdf71be965e164fd3ab46ade74520ace55b13a497a5298a220e6fcfabc2d44645b69046162f27833cd37ae39ac5a940cb1feaa1926f71392c1d83a517c7d57a907eafcf482784f5e1fdb32c4f93cbd28df232681e35fcf2c897cfda3b7ea6bf8b9ec5bfc3b34cbe02ffac0c5a261fded75ba57c76af57f94d9fd37e877f047b4edfcff290f44cefc4f59ca5a17ed5b2e9bd202692b2683ec29138fab568219c5b6fe158f415ee8dd7ded0b7cc274d9cec264f9aec264e98e8264d9824bfab31519e4d1c3f51e282095938ee89cb3dcfcac0a73167209d4c4e95237a6630f9a37b0d937b56752f3039edb7d50be58ff3d03a0961b56ec6f97ac9cb6ab2991f57e25377556122bf38fd388c860b6955c2f9b8c5e12c0dc94be4d3e7028bf7e5175f0ad9bce6060d1ca4cf264b5b5a983ad0f4a2fbe8795c7f994cf65c7ffb36cac3e25bddd58186436e2fbba5ede357fa61f69c7442ba713ec0a7e9c35af85ae12c4c966e03e16ab6559d70fe779d70fabc3acfc6ca56950663b20e72e173e9f9f815ff2c5c2e5d0ba7f103b42d72618bd2b2f42a7916879b2dd96aa465e12c4cd97035659367d5e1e4772e4c255c759ef96716ce7e5787cb41c2c6445216cd4a38380ac58b9f57f7bcdabdfbce7bba96af0eff7c3eadc5e5ca98399e998beb6c7e7471ddc8fdefbffdae1fef7cf79d77fd2935730dd54f6bed23c925d7dc2eafa34c1f951c5331919445f3128e804303b7dc7cabbbaae7556aeab121a54efcf40f7535c6e5e54aaee5ba7c5b495b0f1d32540f0d8c1a19fd3d9ce4924bae45ba9848caa2718433b589f770241e87066ebee9667df193d92da77cd4891f6f9f83061d418a302f5c51be4528eb8ae2e6d1169c9523f403be1cceb16808873fc0a6ed1e9795fb5a3057e467c0153d2f424b7645f2ce0e42bd3788b2e140195714af084de58ad2ae0f655c51bc3c9aa3de7065f2250caec8cf50229d9848caa211843317be34208e173f211cf670d4c291bc5a952b2a571ef9fa4aae522fe16a9fb6e16bd123478cf47ee6df94ced2ac0f2dd915c9db5250c695a97f40b8a6744579e45136cfb2652883a6cc1357f4bc08b8a2e78d404c2465519a709afc4b0312c7fe1e8eff965a201c5b52c3356563cc2d34a52b5b8ed6ecac8cb10b7dc1bff8f9b6ff13d3651d6995ed278d099b5ceb703626eac3fcd4e60d95173fc234818b89a42c9a750f87592d271e6ebde53677f96597bb7e32bbcd96d47045f112da0e6227fdc1be16fd3d7b38e15961bc84848466474c2465d1ec8706388ac7a76db070209cec941aae285e42db012ef403261f9c52e38be14a38e17961bc84848466474c2465d1ec84637ff1933f4fc0ec3611ce7c045ce8079e7046b8be7ddef24b6ab3d3a7121212e6196222298be6251c71100edf52e3e39d8970e633e0e8070158386f29e1848f7716c549484868118889a42c12e124341f70f48300f670f8036c897012125a3e6222298b443809cd071cfd2020114e4242eb414c2465910827a159c031e8ec377d41c05ffc4c849390d03a1013495994261c8800d2f9b5a9fe005b482311cefc893a84235708a76f9fbe953fc066fecd08fde281fd6e2132cd6b5007318afcf3cf12da3e6222298bd9209c26fad2007104104e2f239c7eefe80ba6992b8a97d0eac137f24c49e9f7f2e496ab12ce9b739170429f6b74da167e76e2b664e4cb5350366bab1875c344cf0ad2c89e1b8afc135a1d6222298b462ca909e134f197068012ceadbd947078cb3cbdf8d9b6a10a2cb26e5459f14fbf3430dcf5999b8463ae44da4a8480b016de9cf9b576c465b3df72cdcace7d6c8996012e4e337e8e2bf24b68958889a42c9a770f47900867fe424dc291eb087d0fa7efdcdbc3315722ed2a392dbcb910a659802c655014378f286cdc0e4584e39ffb3031aa9e99e33e4a4361aec82fa155222692b268718493f670da366a128e3ce33d1c2c9cb97e6880b4cd15f90b4cce4ce1729d9b329540265320054351d806810be5c9973323118204bfdf7ffd5dff6691fa112ec8f07b083fdb7224b45ac4445216cd4e387cbc3311cefc03559241b9f9df72cf3f793662f85cb6700ca46d2e7f1fc26472f2cc50e42ccd7909c40a8a3e7b9677c81bc7c90317c264ed11a78b1fcec2f3db9ee1b88fe3029cdd27b479c4445216cd4a38746cfb965a229cf903350947aefa699bb968e1988236a50a98b56b5e2076e199ca1b87934b169efb7905f2c359def61b67b2c47ef9f8794461ad2ef43e261c80233c2ef857dd8b9fc6b778711e096d1a31919445b3130e7f1b3b11cefc83fa098725b53eb34f38c4a9279e578ae17708ab4b42268fc50fcf7906d1e8729240156b044b779e20c885fcd9d2963dd3720599c233453e8d3ca27016b74e5d70e137d7c8cff2a49e2a7543d85cfcfc7d429b414c2465d1fc4b6ae3d292dafc84b94a3838bbe69d3c4731c64ec904cb85c7c16bf40fa3ddb7df7c2bd731daef55b99bbcb19b1df9e604e417ea89713868e020f7dde0ef740f545f55287245e9c420cdbce3b9b990a7851b37769c1bf8ed40f7c17b1fb8f7df7b5f5727d0074ace16aea1b4e33009ad1a319194453a3490304f31370887b83ae38e30eb975fb56f7df3d537eef5d75e772f3effa2ebfd526f5596557f511417ee89f3d4934fb9a38f3cda3df8c0436a7d67f9585873fc8e6498eb083252368e8ddf78fd8dee9cb3cf71aff47e45c765e642b8c23472b0baa7dc5f7df995d60d75ff1bc48c57d636ce7df1f917eeda6bae75871e72a8db61fb1ddcde7beeadf5ca5f01b6fcd412e2de9cdd738d41b884568f9848caa21184e3dfc369d2173fc5a114ec4b038d261cebc071feb8d8cf9e998bc3e6fd70b13ff7b8f89a7f16a795d0201a249c37faf8f770cc0f17c2d641889739b9c52299346192fb70c047ee9aabae71071e70a0dbbafb366ec30d36749b6fbab9db6dd7dddd99a79fe99e7dfa59f7e3981f7d3ac1d1f76ebee916d771a98eeea4134e72637f1aeb3d425e99e31e6432f87b25bb705f887c1ab15fec2c7d0b13ff16879571d8a187bb8d37dcd8dd7ce3cd3a860a5d9c7e04ab731cf7584ac71d739c92c9138f3fe1a64e999af933c11c23d6dee9a79dee565b7575b7fe7a1b487d6ead61d96fe3af00abb3f4b3747dda3c437f98de88dbd4fcabeef106f6dcfa0a2e3cb33cd4c5e1f3cf2dbc21ef8ac29441ece23c71fc2e4a377e6ef7f1b35ac0158569281e3067f9c42e0a17b74386d845791156db44fec5445216a50987c108e9fc2ab3a13ac2470295067104b185c39706ea231c2d6ca81cbd5abe21ad2a98cbdf83283d7eff91470866ce9e671ec0f20d69259443838423164ed58b9ff5d5317e0017ae284b4eba9d7cd2c96e83f537746badb196db79a75ddc41071ee47aecdbc375df6a6bb7ee3aebba6db7de56ac98077509cde2f2958b5b6ebec57568dfc19d70fc096ed4c85195fc2d1f73d173645728e154a061f2885d43cf710561209cfd7becefd65a736d77fd75d77bc209fe4a78715cabab3c421888e0cb2fbe1422decd6dbfddf6fab7a9264f9aacfe9481fa6422b8e5165bb94d37d9d45d7cd1c5ee85e75f70fdfaf653c2d625499ca519405d903664f6dcb3cfbbfe1ff4d709abe59b850df1b2fa32677e91ac7a0df71a1e17b2af8a6fe1f2881dbf2dfd22e4e3c630c7bd85cd3bf32b4a2fefe2b0e1bec1f2e0f269c7f7065c7c6fce9e15c5899f99b3e702eb63319194452309a7e93f6da3c7a2a5932be1bc5dffa76d6c40ebbd75b870c95c48b7d0995f8035aa918c261dee01ce9eebb3aa8701f17d4283682ce1587bd7048eb0049374516cc71f77bc5b65e555dc1ebbede16ebaf126fd20e8179f7de13ef9e813f7ccd3cfb8534e3ec5adbaca6a6ea71d7772cf3df39c7e3d83652414e28d37dce4965da6b386f9e1fb404686d8f19bfc43bec899c92a17bd8f1d3f738f70550451cbe5e20efc76903bf8a083dd3a6bafab04a94b7fc169dd12d6ea86abe561f7f69b5b09cf187c462cbe471e7e54c8e72b1df3ea24cc98d13fba07ee7fd0755db1ab3bf8c083dd800f06685d79ab255a5e8fd2e40a114d9e38592d49c8fde28b2ec9c83d93118478facc5cf0cbea34f2323fdd5bb3b2e00ac2642872e66769e451c659fca23cf2e95998382cf7359e6bd96ab9388e85b37bae3170762d7279d9f2f1a2fb7c7bc4445216cdbb8723d72a0b07c2a9e74b03750827a4a115819f00f918087448c0e0006c18eb73b9c6e971fd4de2835f257c1eb324bd99b366e97d559e216e42e35086706c0f271fb616348cfc63e9e7aa9e57b9b5d75adb6db7edf6eed9679e5565ac9bda38094b7ffe68c047eed8638e755dfeffecfd079f1645d7ee817e8b73f6d97bbffb7d1e73ce899cb3a06240c4aca8181090ac483280a018403082a292734605332019cc82981530fbbc66adb3feab6bf5d4dd77cfd003334ca0d76faee9eeea4a5d5dbdae5aabaafb3eea189d0781e0e81710ced887c6ba230e3fc2f5ecd1532d1ccb5beb42793e2bdb526f066156572b2bee2b26a415f9e337e94b0cdabc58fe5a86d5334c971439c7a2060887eb642e07c208db23357d783e80d69d7acbf533974318fb762ddc130684471d7194bb7dd0edfaae14c23315d71db13c03c1b5f99c90d521071de26eee7e7364319a90346c237683fca84bdc1e48703e4ca7fb226669711c9f2788ad214d88eaebae69a50c2dc7aec5f240d2b6413cbbafb49bd5a7482c6df2b485a709e7d2c0c65fbf1dc712c4611bb765225ed4af89c04114a642906fef58d8a7de3e2c2492aca852c2e162219c47f78270149a873fa60e65403b53d8b092261a2571209d45f6d95562e1b4fcb32da2c73e907ac469ad2e3932c11473c9b16f53d9ee2de144038bbf94483a5dd0c99d76ea69eec9279e74df7f178dfcad0c850823ef39b3e7b8534e3ac59dd5e12c9dfcc6ca89e670c6bbc30e3dcc0d1c70abdbbd73b7ba9476ca28ffd34f3e5310c6f3a04ad9e7abcac5d7857cfef3f37f34dd975f7ca99feb614bdec40bfb5c5c2f11ea4f7d59d0801b0aa0a0b1f8438222be114edd3a759520bfdd1dcde1fc25032af2a40ebffd1a3dbb9a56ea45b896e7eb493eb42fca312afb07a9e3afbacfb5514fca5ebf76bd9278837a0ddcf061c375f1002eb7f839f5f58ff28f8eb967cced70ed939f7ec61d7fecf13a4784650639522ff2e77a7ffaf1275fef92b4ec43cc94c3a284f8fb8d02eacb79ae8b36b6f4560f843cb81656d5d18eace8dbb17d8712a095ad65b1111841e8bd217f2d83c23817c505b429839338cf8f3e763bbfde154d3368c11148433b526fae97fec031d7c33dddf1d10eb7edc36dea925492279d1453203e2feaf2ed37dfe9b3812b75fbb68fe4f9f842ef4d5c37c4971b79a3a23e43de58959fecf844fb30d7a95165cbb53047f9d1f68ff477a8a8d3ae9dbba2fbafd72ff9d10ffcc0820106f78b749ca32d4322c98aaab570042cad8cbf162d84f3db2fbfc9092f8934614750f87269143a1ee4c50d66544be3e8d6ef134e23fd2cd760f350a4a301bf9174bb05df7ef79dfb46e27df7fd0fee1bd9fff6fbefe3e31fa4b368c7477c5de27ae4c80c7dc883b6d3fbc99f6cf786702c3d0a10f7d8e9a79de19a346ae25e7bf5b5e801933f05c2a1c4e7be5356b7ebbab94b2fb9d42d59bc449516fdfc91f18f780ba797ae0063e101733f1dda7770e79d7bbebbf69aeb44894e765f7ff575f4c0fb7c01cf0a8aedf1c71e170baaa790df85426867bb2e9dbbb8bbefbcdb2d5fba3c9e1fd16452177b785921366cc830a9cf65eaea633ee58acbaf708f4c78449f8b1fa40ff2d0233a8773c595ae6183466ec2c313b47f23e405613d35e929a9e7b56ef0a0c13a7f12af6223b9afb2d581b64081f6e9ddc7f5ef37c02d5ab8489f75c8e2c1071e745d2eeae25ab56ced0e3de450d7b85163d7f9c2ceeea61bbbbb67263fe37efae1a7281311ca264fda1c457cbb94cdbcd099edce74fff57fffcbd539a38e3b5fdaefaa2baf52b726f5bc77f4bdeeb24b2f732fad7c299adfd18c22ebe6fdf73e7043060f717dfaf475ab56af71bf8b02554f84b4f9afd2ceafc8fded76fd0deeb65b6f5365697d0145cccac4fbc7dcaf65d196679f75b6d6056bf685e75f5022a21cd5651469ed9280f52d94f747a2e8a73e37d55ddfed7a77c1f917e84085fb4b3fa1cdb0fce28181a4817057bdb15afbd8b0a1c334ce7df78e71575fd55557f9717fb1fa66ce9825e4b52d2a2b21dcd7756bd7b97b468ed27e7ab6f425d2725dcf08917f247d8dfb475de9bf5f7cf6855ee32d3d6fd13efaf4534f6b3fa00de8133a25226d0b69cd9c3e53cbe75aceed78aede1b1682708ddba43e463cf471064c8ba41f75bfa9bbf689952b56ba07ef7fb0884cb2a06a2d1cb9a0c8c2895efc2c978583f87a40268c4c6fbce1469dec65450d7e7cdc26bda443f030117e8374d0491327c5be64caa203ded2abb7eb29f19968ee7d4b6fd75be2038ee9f0dd6fbad98d1831d2bdbdf56d4dc74dd0ba089275cc51369224620f35dbbdb570888bf233d70f730d2821d2d25f350ff943ecc166fb3b5680408949f2a13f3cf8c043ee88c38e1025dbca356bd24ce72e705d31617ec2f127b883fe75902e46a01f45a34c1eca287f88a06fefbeeefffdd7ff73871f76b86bd7f64c413b77cac9a7bafffe7fffadf930d91e1395080a00d71f4af1d8a38f55eb8c1575ac043bf9a49325afff56ab0df263e44a39efbcfdae925183fa0ddc430f8a8523cf10e1580353a74cd54511279d78b29bf2dc14b5cac2f25424aeb51bedc068bb75ab367acd8f4e78540990b03befb84b95d5e9a79deefed7fff77f697d9a376beece3fef7c25424850c5f21341e9bef7ee7ba2cc7ab8664d9bb9460d1bb9fff5fff95fee38b172b82e14ed8ce9334499fea08478f45147eb4204088e39523c0c0cee668905da42ea73ec71c7bbfb45c971db7e113df41fb114d98e1df7b03b45da0a0278ffddf7d522c28a5cf9e24a5d5071e41147eaaa3aeac03da857b79efbf7bffead8b48b0bab4ee5cbfdc3bed13d43f0061364745fe3de47a8e97bad01fe80b28ff268d9b687f20cf7e7dfa69ffa5cf323020ff17c5726edebc853be594535d4321eb53a5be0deb37d4363ced94d3d4923ee6e863dcedb7ddaed6860ae58ba0739f7de659ed07fffa7fffd27b40b90ca6e887471f758cea27255b11ee31fd8f7ec1f9c60d1bbb138e3bc11d7bccb172df4e710f8c7940ebf4d5175fb9fe7dfbeb1c27659327a4433b9d78fc891a176281b4edbe7efee9e73aed41ffe57ee2ae6e2acf4648245951c52eb57f94c543975a99abd4c2cee1856308e4de51f72a53b76bd3ceb56dd3d6b56ad1cab56cde52b784b56ed55a3bdea87b46e9888e1bc4033a77ce3cbd492c99a5f189af90ce0eec41848818856af95c6f88443d73948eca221c061db87e8e3af22877d30d37c5730db1489c58d83798c83e4a8b111c16ce19622961d9e0b2a24ef4cd271f7fd275bbb69b3b599439cbad51e6369781c278f28989dacf184db37a0c2b8b172499c760848a85c0a81deb88eb65248fc2604054bf6e7d1d613e3bf9591919af72ab65748cc261e103fd7860ff81ea1aa19e8cfeafbef26ad7482c9c7163c7b96f767da37932f2a45ef4ff0162adbc2bc4c435d146daceb495bfd6f8da650bb9b46dddd6b56fd75e97856385e131d8b279ab8cc067ea020a141423e2850b166adda88be69d14c98fd5ac1bd66f504be68e6177a8e2a32de7ce9eab0b386837f40a4bba51a45801bc0704e150cd2fe55a1e90f63b55ce1d270abe4ffffeee879f7f76bf489a5f7fffc37d2d6d3d502c9b134f3cc90d1b36dceddefdad7a1f3e7cff436d5f9427ef09e98291975fd5fab2dcfb66193842d294473dd035f1f3eceb1e02c2c15d89a5c07dc55a6364bf74c9524d8f458d450181a03f207bda0edd82725fb274993b41ea78b4287dacb10932b06670b1e285156ee29313b51e0c4cda888e79f1f917d5d56be5ae5fb75e2d1988038b85765fb36a8d5bba78a90e8a28efdc73ced5158366a9418c1777b958c9963ce90b58554f4d7cca6ddeb4595d66585a1dda9fe59acaa089413ad7c12b04ac4424ee19a79fa18b51682ff43ecf20160ef585244f92ebe92a561a738721916445b55b3490997048efeb818f74e99265faf08db96f8c7b403a05233f5e54e318f39afc478f1aad0dae2342c923bab11bd4a587b2ba6ff47d9af6e1b10feb4d1d233700b39f74743a7ce7f1b526b73932a1520847c0dcca3d23ef9191f47132f2eba72e1bcddbc4e21244dee48bd846e262ed3c24f7fddffffd6f1d8db36c3a729d45d62ca4c203ce726408e2cd356faa72013cb8e7763ccfd539bd8e9bf4e42475c1e8b322654286b367ce564b05e5c49c11cf54d46f97aa82ec70660721a8d7d5156375c4fd3be5d929aa3c9a376ba18a130b02c572d9a597ab9b0a8b041ffcb429d3544151b741b70d72ebd6aed7b8b1f83c6309ae9bba322863348d95a8a37fdf560cce580987258245c29c45515e26419e5c3bca77fab4e9aa5471c3a1b8c897f642b0da204d5c762852c81bb7d946518ed7df70a3124e1369af4e9d2f725bde7edbfd0f0a50d2addfb8c975b9f812574fc863b290322eb6ff887e82a0cf90f6c7f280dc20625c4db89db02421ff2bafb84a47e93cd7903d7589fb099ba08fa0f34883c57caa5829a461610a03059d27fbe537f781903f0b4cb0fef084409cb43b16dcb265cbdd8912de4cac9c6962d5ed92fe1359d432d8153d475fc7b2352b8fbc1006e10c8cb14e384f3cd38bea3a93e783010516177d5d57758ad02f2eb9f8529d33ebddabb7ae108464b80eea8bde9b357396baf5860f1daebf3fc57d8af46ae48ebd4a0632471f79b49e272d825534510653a78aa5de42fa21162aeebb9048b2a2dab9d432130ef0027150371e60b64c26fefce3cfdae1797818ad45f839bee19a8ffc717d96c6b671fc1f7e8af320dc26f834bd57427b75ed07302a8b70208611778f70c71d739c1bd07f404438d65ff8f3f74bf39430cd17f11b84becda81b5707ee5946cc288fe819f85dfae6afeab6603ea7918c3c71df709ebe72af0c565000b86d799019e593dfef6205a098de7de75d2582d34f3d5d4787f42994d7dd77ddada36ecea95b25a80ff5dcb2698bc6b9ee9aeb5429d34771593192ad5ba79e2a4146d6cc13a1bcc90725c933abae3e137683436d3711cad8fee176d7c65b384f3cfe843e47169f4965ca60d4cc5c84be2c6b7909e2b6e4d8e78970ede403e19016eb88fb8af2270dcfd03629179263893a83be3fa42d7f163df39c5c4f07e65d2ebac8f511eb0ad7da42217ae65971b9e16e6bdea2a5bbeaeaaeeea5975f5192fa4aee3fabe850b6b8d9508894433d749e43ea8705c1dc066ead0b2fb850c95e9f69eaedaf27dc6749b85937584ce8272545c953d389706fb1e4ba5c74b17a50588cc275737f973fff825a389d2feae2d6bcb9d6fd495da4fef419eac6fd1e357294de7fac91375e5fa5e158a617713f85181f96fe88eea50f429aa46750327fee7cf5bc70dfb78a254a7d1910938ec110f5e699a0ae26eca3c718a0ec92011afa10fd8615c7a79c08c79ac2821f2016b54e3d88406858f758a30c6a78b6b8869048b2a21c8453095f1a10ecb58503443806a403dc1cb6f8e3a933379f7ab3fd510884f08870240bd9ea48d308c7c7d53c242df91801b1d59b27c56b1db47081d525472664211c7b0fc7e26a1c1fbf34ec92913793abf8d87101a94b4d92e979bf2d294b60ca98635fc6afa23c78c099076284c86aa0287ea420e92bb89fb04658b585c242a93312ecdfafbfa6c375c63b2db8b7f89c0e6e97175f7851275d71cbe2b2e87d4b1fbf5ae96375d131e7c23350307f8948d98c4cc99f390efa21e5415e2c1a605e024b071f3c7336cc8fe08ee3998d85cbf46d148330e0052b465d6a725d1365244b5fd7eb96b23887e780c51858fa586bda76963e9197096d86429b3e75ba8ee019fd4302d1c968c3f54044ac16c43545fbef1425dc4f060caddbb4d5b99be93366baa662e5dc7bdf18f7c1871fba5dbbbf71a3efbdcfd5916b7f582caf6d428864f7c1071faa32a49e7834b85708f5d0fb2e02f13087c6843fca136bce5c8e0540240993e7770cbf23b61a236bf76f6d5fb59a44176271703f981761fe0daf0aca1c458e4b8d39a84e177676eb376c54b20c053d336dea341dc0406a7366cdd17941061658b4f40b065158c4cb962ed77ec4c213fa1573684c01702db8dfb84606224c2bd037e7cd9da7edcbf5e8f553b46ca83344b7754be42ee5dee2d9193a64a81236d6e1a1071faad7a316a9a4f95ceedb138f3da17362b4317d80f09048b22233e1d010054b1443e1d86e56569046c0923f239c727ddac60b8d0951e0d2c0fd801b84151c303c26f6e4a726eb8a1a8e99e8e52d743a03e9b8ae2d9bb7e84d0fd3e09e60d4f8cce467352dab8ee6cd99a72300cad61bb837d79c43da4e80c20ac3110952c259f9b29af0165610af348830a2c40dcac4e7f5dd6e5045c97d0a1f368b4f5834e8b07768e4a4fc315ac5a58685c32213467296bf9e57c2d9ae0a0265b040c804850379b0408591fc41ff3e48276d71ed0146dc90204af5f0c38e50770523f0cf3ef94cf3c252616e87be664a5285fa02119b27b2d12a235946c45854b85d0e110571a4901d236cda8ffecdf591deaedfaeb148240c126dd3ba8dce51a084ed73354638cc47310f8385632bbc0a606d84702c8242c643c0f378f0bf0f7637c83db111b3a543d9f3bc3569d2cc5d7ae9154236dfbaf73fd8eecee978be7e1de225197c6cdab459dd675777bdc6bd208af77d211616f4d417a5ba42485d95aae4b575cb5b4ab8b819273e39296e2bed6f5c3b22fbcc4b61159c20fd84f9395d1840fd0d81a0c051bc4c9633b7878b5375a1f493987864cb00e9eebb46e81cc7d0c143d50ac49a5abeec79b94727e84a3fe6500a2c4e1174eae2858b75ce8f32d035b8d320022ce8fffeafffd6bec4bc2413fcb80bd9328fc2bdffdfffbfffadae5fbed0423fe63e626961c1e13ae399a06decdeb3a56eb8613b77eaacc48495c43c218316eac9c085feafaeba98703ed7cf8fe156c465b75f08475d6aa2d879c028ac40380e6f5a169046102e8b2e37e1487abbe1b70ebc554718dc201e0e6e0c232b1e481e7a5d61229d8c0e4447e281e0c1c48540a313476fec51c72848c7315bf264e4ca08a38070fd35a4d62f472af64838a264ca4d3802dc5dbc7bc37d66a92df798f4fa90934f0811c865e58a9774029707d5faf9d807c7ea088f15405a0f1f1fe1de5347fceab8af947044b1610931e18fd2675517abbb1819336aa75f62d1b07292fd912346c6abb458d6ca3263e670582c80224b15ae11f175a1bebc8703d19c78c249eaeed151bb8c4059da8c8bc5084721bb45ed1008a402e1e0dec2bd8dc56fe938c79c268a88f7709470b288a4c752c2a576d8a187eb2a2f9d3bf5e7cc4a7ae7ad77dc05175ce89ab768e356ad5aeb962e7dc19d72ea19727dd7eac2849d62dddd25a37c5c688fc9b3ba52fac75542b62d9ab7d4390b53a65819dc1726d9b1d274459f2f4b21429b6c58bf51db9c4100a37bee7b1cc7c7b32d2e55e64a587e8ed584bec025af3a40041dc260804510ccc1d0fedc7b9b37a17f31b7c3fde1f341f13df182ae43a7a05b58e906e1e095812c201c143c9f64c245cca21156b34104b8bb581c71e7f03bb5cf5bffe5dd20f2222d93fef431155f26f5670e1b6b1630cfcd2286d5ab56eb0a5cac6316a3a037f996a059f8b842d5a526d7c7022ba62b909048b2a26ae770a4b34473387b61e150a62f975101378ba5d04c4eb22413f0d55f56a6007cf21cb3da4247ae9296b25e924e71dbad8324dd4dba1c902da355d2b08f4f9e554f7438464736dab4fa17d52b4799a82cc2618e055716ae1226d9993457210fbfd5724550be282b2683e917b829b0de51f88ce6cdc2893f6de3856701f7029f6ac14f8e1f9d9125be7efa1e4b55870d1daec728665eb663e29a7ddc18f8cae9ef3fc8e81765a52eb5ebbaa992c4ba0e0773a64811cad5c19e7ff6a83bae0d0655280046c4f44f2c2fac14e629be91b234bd47010101c46f7977a8ad5fddc9e8575d6a449776627e87364171de210a0e77918ae58184fb26128682c37b80ab91f6a10de2eb227fd9a78d7bf4b8c53569dac2cd9c39d78d1bf7883bf5b43a5a16ed869bf159b1921a8845395894ec6421e68e1dcf95ebbe5247dee401b016690b5c9663eebb5fdd79f135cb06a1cd5f7ff5755da5c5bc119e0be645ec5ab56e5aafa86e1fcbfd61951d2e35def741f1124ebec4216fd26fdeb445e73ea265ead1b7edb85f9009d60816049f55427790264aff8fea54be4ece6a335c6adc4774122bd298bfe17ee06d09fb105b4019581afcbc8bbe8c29f58778280beb7bd6ccd9dafe2ab48100ab9a41032f0c43622c77c64284e420512c38062c0cb8d1815838d413e2d1556a32a067b52169080f89242baa9470008d87195f6ec201929efad09148471d615fb61c73d37978a837fb745eaec53a19e9494bfc28cdaf7ebe273a66144c1af2c0fca72ced68021a9cf445ca334799a850c2e17c00265b710ba08859f2a96fe0738ed372bf4c4930f29b3563962ef5e5616764479fc0c5c1fb0a071f74b0279cc8a560a0ef30378435814260b448ffe10164d10023435c47b82db47f84228784e99c813f0521a92b461e641606f092b2d651842d8a0937148b1370f1a2fc1961b39ac9e6709833200e0a97d564bc1f818b86c96bfab0d5ddfaab4ab815d0ee28375c72b8b775042be110202f09e266a4adeebc03c2d915b77d419e261cfb309e9b19d367ea3273066e3a6296b4d1bd88d2f2ac4d9cf8943bb3fdd9ae47cfdeaed3855ddcb9e775527794ce69491c560352b7cea24c1904e27ec21dc6336df794496fdc597ce99b38713d394d5922b4c75451e0dcbb73ce3a475f8a65c06004a0a443df8ca22bc1a068b140717db22cd9ce59b9a467451c5653cb16ad9460d121287baee124b1402fea7c91db289615425936b0c0e58585c2f5e022a5efa36fd7ae59ab2f78464b972728a1a85035a99fa617a1ec589789608d5e72f1256a7d331fa484437d4927d7f79e0c54b80edc704c2f2076edc4a13d99ffc4ab6384c3e08ce7917a6271e13d60804ffc9048b2a2ca0907a6de17c2091b8c30ed381c735ab67a43a243153d4fc7f2e993b0bc0ace23b2d56b47ec1cc27e8ecca05d2b947002e14140e96231a040193d9af96fc22893555cd776bd56e75550a236114edf1bfbd0389d8b6182df969b9af02c30798f32e0e54f266f9903201c5f3c73083cccb8916c951c421fa56e8c84f9aa812db546d92e963c48c39bde6b56bfa9cf9a090a97912afe75162af04e09e719c9320fc4fb12b845982f4029b1a20c85c10896c504cc1b98b2b267224d989b64029a36e35d2214a6b6ad8025d3100e160e2e1c46d92665e589900f6fb4e3fac335a4cb90a5fde374720f79a6d68882bdf4b22bd5b2a95fbf911b78ebedeefdf73f8c9e530124cff5d24e101feeb468c18664e0b35232796eaa9e872058ac112b5c1146f07ca687f93de679b8167df7c73fef05f042fba39318d543ee0c62181468df13a17cee339f41623e843ec5e795b826c8f685e75fd476c37aa12fa2d0d14710057d060b883e83cb1e572b2b20291fab8f3c212b06509b366e92f8d14085bcb916da72f9b2e5ea0eb3792c5c6aac52634e305a3410f47d398f9b19971b2f22b3ec5a2d5911ae8381d08b2fac5097302f20b3d45b1779483a06348f3ff6842ef9c78ad436100989242baad6a5269d099330fc89691dd598a4a53320e41174181e62f2341252e5a65b4e72de2724be3fa76974bfe4d8f253210990e302c2f1b0bc73644385120e3091b82c55c575c13c1dae153e45c312641694f060b2726cfab419ea4663429f1133d683292efa3893c3bc3702e198eb552182f2c6fd84db0af7895938f401943d7d18ff39ae2d2c17ca65351093bad403a5c9030b11a078e84f280e5cb990042e5f2c2fbec80c29325a6644ca2430a376e232bac5c2c1d7cec8984fdbd8e4308a6c855c0fee265c39cc2b6c94f64068f768c76f117f6d282a7d49ba652b1df9d20e160ff71deeba230f3f52e7a4204b6bf7f83e8679223e0c02c73d445b6351b0400025ab2fb012cd3f6b9018f35bffe77fff5f9d67259e5d1382e7819738f9fd9f830f3ac45d7fddf5f19c883e7f8894c97570df2026ee2d2bb9f8bc0cedb964f15269c3ee4a48575c76852e1e42e146cf7fa437e267992cd995fcb192b1fa7053715f19d0700d58212f2c7f415791f16e5533a91b6e511bfda3ec59e470b258054789e57ba558304f8ab5441fa42f420858112c2269d1bc85e6854b0ba1dd2013ac6f5cc4cc0f42dcac4663993c7d16171f2bd2586186a5ccfde5fa593440bfe0bdaff8d343fe7a7041121f12c4626441152f9c2e5bba4ce7b271efe21666e10bfbb88f69132c1d8c02885109a7265b387c46235ca5565ec2d17d9f571c6e7108cb2a16d7f2f1e98b14a489c5b7f01c99506984e385fec30b924cb0f26361f8df517658257c4182912a0afcd28b2f55eb82a5f22a9217fd1bc2c135860264a9757c9f45180532b98a4b0dd715ca5495a6086404b9dc75c75d5a0604423cdc5b3cdc282ceac19bea8c18d5f216814078e0512aa481c87841f482f33ba9a5a6cba87bf5d6b90775c7893052ed7af535aa5819ace122b4e792d127ef8570bd28425e8665dec5dc3849e15e901fca8b34bc958e65628a9ca5c1d499ba716d6ae1a4e45320febe5027fbad1d16e0e0eae1fd177eee207cced12f5c077307d403c5ca7908d48465c18cce51c08cced56516d643cac47a850858b081c5c1443cdfb263d4cecba5b4e5e54236b4b7914d9c075bea1d1cd336900e5f76a04cbd8fd277c88b25e4bced4f9e5829f78cb8472d45ae997a6375f0691b966ff3099ef6d217da8805497dce39bba3de3b5c5458aeb4af12795036037156ddb23884050eb41d5630ee392c26ae8d9734972d59165ba4d413a2c5c2e1176bd1ada1608d63d5e1bee37e40be0c32b06c7133d2ef7879997a41caac86e4fa213408a9ee1975f5db6c7804282f2492aca81e2eb590706c75099296cee0d31721148ec3344818370cf3716c94a34ad1c78bf789e3c362f87439b2a1c2090724045715a368de7de1775878d785878cf915ac1f96c033728f47f2e4215be647f8b61e2bcae2f718380f442009e6677839140583a512968f85851582953252ce336fc1889072f9782779b2a0402daa401889b23c9fdfe2e16390a461951613bb8c545981a5cf85af272f8ca2b4a903f535d788f55d480197132b99b00c68d7d8c249888d6071cda935a86ebb92955b5c2fae21ac252c3ab53c7c3dca147f9e36e43e3022679106561cee2e94326503740abf633442ac42080f9dc0bd40415a5b614132ffc24ba8ccb9d98b97b1f8f2703731d7c5726cde96e785599427162213fabceb477b43c056be5d6b01826bc49d8575a06d7afb10b590b53fc9fda55de8b3ccf7c4ee7b01ee3cdec3e16b091776eeac2fb33e2e4a9baf355c27fd11c53d64f050fdda02967481ab51847d060fb8d3b0aab0dc704b42320c4058f0c03926fcad9edc2b2c11fa1e9f1652220a45e23168c1e2b36f4ff2dd39dc677c6905ab0f62675e90157cacbea31d70d9a29bd1d158453c37f4a79048b2a27c84f37365cfe194fde2672aac2e2975d00e25cacd5074ce6eb0a5250a1d9cf346326c88a75b1fcfc755846139f6884a211c40dc4050288c12f908210f0b8a061f3e24c1e475b21f5b5f60be80071905138eb011e2f02c306a07287aeb27a618514e900afe78dc395c0f733390069fdf292897a451b2d82fcfd78149439da92b8b6a78062d0d7560f4cf681a6b8bb68afb25425d4479b14a0d12a39e280c5b21657162917dae8976c2d2a18ef1fd11a15e5864e405311157d327f22890f0bc6cb114498f95c6b5310f16d6977dac34ae97f929da923a70ad6cb144d03d0c221828a84b27145f5ed8969f7dfa79b4d4f7f555fa53d8b828998f8a94a5b9d28124003e8f289f62ddc031e5f2f30c7c5391fec4620616aa40aa36c762962b96f3f2e5cfbbe38e3fc15d2c96d99b725fb7cbfdc50a863049cfbb4390447200a2e283686f5697d127693f4881cf71d13f2165ab2fd7c331fd82b6a6aef403158d13c5435891495bb20802f71cfd930507b8f4e86ff45dfa6bb42823eaf3d413eb0832a77dc9332492ac2807e154e297063ce1ece94b03a9b0baa4d481c6d28eeb913c1fa7456cdf9fb30e1fc68f3b2748c4cf910ddaf193f70291a022c209e3ec09763f42913014ad8e86edbcdfc675f062235e3d6f71d384642844fff016c4b720cb578ed94709c5f1430983fc3e8a23aa4be492d2f000719f669bacaf3fcf75c504e3cf15941f84ab84c7695b01f54a558c4991b8dab6a4a30a7e1fe5a7f7421473ac4300e2b3257f7d1153c4d2e9b55a7e7ac223148ead6ac139adafc51758db1508e94a8309492ccce763dbb80c2f760c0961e19c74d2c9ae4b978bf505563e4e4a1b683dfcfde03e2b3170e8f3b7fc2c0e6265856d11e5c38e802dd9f8e3386e28e121fb02bb17767fb5ff49bf631bc6d35d298ffa03e2864492159909a7b2be34c02874afbe34b02ff065c7fbc1566f7259f172ec137820f44108c3110952c2497e690009e396068b9b14bb6f261c0bf43e07fb050ada87e97e28763e148d1b6d8bcedb7e189e529782fa5b98c12408a3fd54b1516545185182c36bf17987d7ab61c08430138b132054727178983e94a0bc12f870833f5f946700eb236ce3f20112ee23ec87f986121c520f6d37c22c4d12e13924b99f04121cebb58ab06880c505ccbf3087c50a45bb0e8b43bed4271e58c871dc5688edfbbc6324c37cbca236253c90f8bcc5f1e98012216d9dc8236e7b130e250e0889242baa7c0e8709a8f007d8f60be1e4a832f04069270ec311094a73a915c5ad24e88316865176324c9016afe0380bd2d294950fe782f3fac027dba5acf4604fe7cb405a3b6485d6751fd2978a52aea7acb26265be0fb0764f5e57bc4fbd44f006b1d28c2f5f30918f4b4cc92e14e2024be7f32a0f325fd31ef22fcf3d8aaebd262e8b968ae352cbfab5e81c351fd5957072e4d8179410911c8b40382c8be77d283e8ac95c9aeac900a43124f3ab090889242baadcc2d175eefb328793a34621279c1c351ed225938846fdd1c89f63ac19a621588116fd86ce1f25694dfc7179ac8bea849048b2a26a0947b6e1b2e89c706a3f72c2c9516b800e3324cea99e0ce2c4a4c2b1893f17a6ab490889242baad6a526ca84399cdca576e020279c1c351d25d64c71df2c2016b6261cfb308d63e76b304222c98a2a77a9f172536ee11c38d813e1f09e414e38396a04a46b16096186a44898badc3cccfda608c26b0a4222c98a2ab770f245030716f648382fe58493a39640baae8a1d238481308eedd73084449215e5231cbe76ca8b59d690267bd3689206e513114e6ee11c28c864e17c2984439f026cc2b83972d42420d69743c8b934975c4d42482459919970200248a752be342084c3c7f1f8aa6e01e1f838a9e973d45884fe6f251311b61feff8449792f209150de7defb73c93c72e4a811301d96849cabe9fd3a2492acc84c3895f6a5015efc8470468e2afed280495afa1c351a66e5d8042ac77c4becb5575fd3cfa2c7423f49a4cd91a3c6817e8cd4a2fe1c12495654f9a201fdb4cda339e11c68288b70d4a5463c13fa4a9036478e1c558f9048b2a2ca09475d6a39e11c70288d7070a9b168c0c26324d2e7c891a36a11124956542de1884038fc7c694e3807168a0847b64a382fbfaa6f66c78483b04da4cf912347d5222492aca81e164e3e8773c0218d703efee8635da5c6af1fe684932347f54648245951a5848352e1c54fdec3c909e7c0422ae1ec8070c4c231c241d88044fa1c3972542d4222c98aeab16820b7700e382409878f1d467338af45bfef4e3cc4f793306d8e1c39aa1e21916445d5bbd4fcd7a28d70f4b7db9392963e478d4611e1fcf9b7fb687b4438ba6880f326ec26d2e7c891a36a111249569483702ae127a645f80d6dfbb44d6ee11c38880947b6900e5b2c1cfa40bc4acd8bee27d2e7c891a36a1112495664269c5fc4f28074f87df68a241c2c1c56a919e1fcfa4b8a859331ff02c5449abd85cfcbb0cff955157c5b84d752704d19506abab09cac08f38b2d9ce81cc72c1ad02f0d7cce97060894739cf6a41497ed11e7e5119f235d6d4470edfb7c9dc9bc92f9c9b1dda3f89c0f33c4e73c0aee03f1d390486361957aff2cdf307fd9165d5f18d78e93b0f321d2e21d000889242bca41389563e1c4cba2ef49b8d4fc456947cc987ffc30f88e5f2a2c5e69f0f1e27cc3b449a4a54f222d5d69484b9f445aba1414d43f9147149e3817a489d3066932c1975d2a82b8511dfc568e5934c0b2e8cf3ffb3c0a973f84f99d305d8c943ce3b09a86f01ad2e0e385cf456abcac08f22aca4fcb4a9c237e1056720e589a288eee876505f9867984690ac27cdc8a44b2cc3d5d5f49bc62589c385ef23a0d8974b50d21916445d5cde10091f0c54f3edea99fce31b11b8bd87e6948e69d3c8f24c39269c274e17e1a10b6c443c23c42589c306d1288ed27d38790f3f18382589a2490706b694284525a1c0b4f3b67e1e1f9b47809d051ffd68731084764cbc73bf9d200efe11408e9fc434c19f1362cd7c07112485a7812485a7812485a7808242d3c09846ddab58490737abd7e9f362c8ae311c64b9eb3f0645edc97304ea4544af6352f0fe26bf94118d0f8884f572648e3f7a3b224c0c2b300490b4f02f1fbd66faccc826bd0b008a5d60361ebcfc771c334f1394b20c26e0824dc26f7432069e1492069fb492069fb492069fb014222c98a2a279c6f76475f8b1e3962a47b7ef9f3fae146e675767e, 'abcd', 6855989, b'0000000000', '2009', 5, '2024-06-16 17:50:12', 0, '2024-06-16 21:20:12', 1, 1, '', '', '', 0, 0, '');
INSERT INTO `jobseeker_reg` (`name`, `email`, `password`, `seeker_lastname`, `seeker_pn_no`, `Profile_Photo`, `Address`, `Pin`, `Gender`, `Date_of_Birth`, `seeker_id`, `ban_end_date`, `message_sent`, `ban_start_date`, `banned`, `permanently_banned`, `skills`, `work_experience`, `job_description`, `year_of_experience`, `expected_hourly_rate`, `location`) VALUES
('bbbb', 'bbaa', 'abala', 'kjewkuf', 0, '', 'ewgug', 2333, b'0000000000', '1988', 12, '2024-06-16 17:55:54', 1, '2024-06-16 21:25:54', 0, 1, '', '', '', 0, 0, ''),
('babu', 'babu@gmail.com', 'manu', 'manu', 12345678, '', 'asdfghjm,', 12345, b'0000000000', '0000', 33, '2024-07-13 11:27:17', 1, '2024-06-18 17:56:31', 0, 0, '', '', '', 0, 0, ''),
('abey', 'lrlwsi', '134', 'last', 0, '', '', 0, b'0000000000', '0000', 66, '2024-06-19 21:00:58', 1, '2024-06-19 14:23:38', 0, 0, '', '', '', 0, 0, ''),
('ramu', 'ramu@gmail.com', 'password', 'last', 7894562, '', 'kll', 7945, b'0000000000', '0000', 78, NULL, 1, NULL, 0, 0, '', '', '', 0, 0, ''),
('John Doe', 'john.doe@example.com', '', '', 0, '', '123 Elm Street', 0, b'0000000000', '0000', 79, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, ''),
('Jane Smith', 'jane.smith@example.c', '', '', 0, '', '456 Oak Avenue', 0, b'0000000000', '0000', 80, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, ''),
('Robert Brown', 'robert.brown@example', '', '', 0, '', '789 Pine Road', 0, b'0000000000', '0000', 81, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, ''),
('Emily Davis', 'emily.davis@example.', '', '', 0, '', '101 Maple Lane', 0, b'0000000000', '0000', 82, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, ''),
('Michael Johnson', 'michael.johnson@exam', '', '', 0, '', '202 Birch Boulevard', 0, b'0000000000', '0000', 83, NULL, 0, NULL, 0, 0, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `job_position` varchar(50) NOT NULL,
  `experience` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_list`
--

CREATE TABLE `job_list` (
  `job_title` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_listings`
--

CREATE TABLE `job_listings` (
  `id` int(11) NOT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `requirements` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, 'recruiter2@example.com', 1);

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
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_jobs`
--

INSERT INTO `pending_jobs` (`job_name`, `email`, `phone_no`, `rq_name`, `posted_date`, `id`) VALUES
('painter', 'augustineshaji0', 799452990, 'augustine', '2024-06-17', 9);

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
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `recruiter_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`recruiter_id`, `name`, `company`, `email`) VALUES
(1, 'John Doe', 'Tech Corp', 'john.doe@techcorp.com');

-- --------------------------------------------------------

--
-- Table structure for table `recruiters`
--

CREATE TABLE `recruiters` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `email` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pin` int(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `rec_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec_reg`
--

INSERT INTO `rec_reg` (`name`, `email`, `password`, `address`, `pin`, `city`, `rec_id`) VALUES
('Ann Mariya Rajan', 'annmariyarajan1@gmai', '$2y$10$3', 'Oorakattil (h)', 682308, 'Thiruvaniyoor ', 1),
('anu', 'anu@gmail.com', '$2y$10$1', 'idukki', 789654, 'idukki', 2),
('augustine', 'augustine22@gmail.co', '$2y$10$L', 'edad', 45698, 'idukki', 3),
('gopika suresh', 'gopika123@gmail.com', '$2y$10$S', 'kumaramangalam', 234765, 'para', 4),
('gopika suresh', 'gopika@2003', '$2y$10$Q', 'Alackal h', 685605, 'Thodupuzha', 5),
('gopika suresh', 'gopika@gmail.com', '$2y$10$5', 'Alackal h', 685605, 'thodupuzha', 6),
('m,.', 'hyma@gmail.com', '$2y$10$V', 'lkjhb', 147852, 'Thodupuzha', 7),
('Jinix chacko', 'jinix@gmail.com', '$2y$10$2', 'vellor(H)', 234567, 'odacacity', 8),
('liana', 'liana@gmail.com', '$2y$10$x', 'malik manzil', 456, 'jn', 9),
('Basil Rajan', 'rajan@gmail.com', '$2y$10$5', 'Oorakattil (h)', 682308, 'kuppethzham', 10),
('gopika suresh', 'stea@gmail.com', '$2y$10$C', 'kjnhbgv', 147852, 'thodupuzha', 11),
('steffy', 'steffy@gmail.com', '$2y$10$B', 'vellamattom', 25686, 'mariapuram', 12),
('suresh', 'suresh@gmail.com', '$2y$10$p', 'ghbnjkm', 147852, 'kijhugytf', 13);

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
  `s_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`fname`, `lname`, `email`, `job_title`, `password`, `phonenumber`, `address`, `dob`, `gender`, `skills`, `work_experience`, `year_of_experience`, `expected_hourly_rate`, `known_language`, `location`, `s_id`) VALUES
('gopika', 'suresh', 'sureshgopikaal@gmail', '', '789456', '2147483647', 'alackal', '0000-00-00', '', '', '', '', '', '', '', 1),
('gopika', 'suresh', 'sureshgopikaal@gmail', '', '789456', '2147483647', 'n cfhnbhjm', '0000-00-00', '', '', '', '', '', '', '', 2),
('hyma', 'suresh', 'hyma@gmail.com', 'vbnm,', '741', '147852369', 'jghghhjkj', '0000-00-00', '', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 3),
('Jayan', ' K R', 'jayan123@gmail.com', '', '8520', '2147483647', 'x,.dxkjujhuhhj', '0000-00-00', '', '', '', '', '', '', '', 4),
('asha', 'Das', 'ashad@gmail.com', '', '963', '1000014785', 'ghytrf', '0000-00-00', '', '', '', '', '', '', '', 5),
('asha', 'Das', 'ashad@gmail.com', '', '123', '1000014785', 'ghytrf', '0000-00-00', '', '', '', '', '', '', '', 6),
('km', 'ljng', 'aal@gmail.com', '', '369', '2147483647', 'lkiju', '0000-00-00', '', '', '', '', '', '', '', 7),
('vijayan', 'suresh', 'vijayan@gmail.com', '', '789', '2147483647', 'njaril h ', '0000-00-00', '', '', '', '', '', '', '', 8),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 9),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 10),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 11),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 12),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 13),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 14),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 15),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 16),
('', '', '', '', '', '0', '', '0000-00-00', '', '', '', '', '', '', '', 17),
('sushama', 'p', 'sushama@gmail.com', '', '123', '9961507612', 'edamakkal', '0000-00-00', '', '', '', '', '', '', '', 18),
('sushama', 'p', 'sushama@gmail.com', '', '123', '9961507612', 'edamakkal', '0000-00-00', '', '', '', '', '', '', '', 19),
('', '', 'liana@gmail.com', '', '789', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 20),
('', '', 'liana@gmail.com', '', '789', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 21),
('liana', 'salimraj', 'liana@gmail.com', '', '741', '987421036', ',anakijnhjhjghgv', '2024-06-18', 'Female', 'nmb v v', 'nyt', '5', '123', 'English', 'thos', 22),
('', '', 'liana@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 23),
('suresh ', 'A V', 'suresh743@gmail.com', '', '8520', '9961507612', 'Alackal(h)\r\nprumpillichira p o', '2024-06-03', 'Male', 'html', 'yes', '8', '500', 'Malayalam', 'thodupuzha', 24),
('', '', 'liana@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 25),
('', '', '', '', '', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 26),
('omana', 'das', 'omana2024@gmail.com', '', '9630', '7907653619', 'sooralayam', '2024-06-19', 'Female', 'dfr', 'yes', '5', '521', 'Malayalam', 'kumaramangalam', 27),
('', '', '', '', '', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 28),
('sanjay', 'kumar', 'sanjay123@gmail.com', '', '8523', '8281204612', 'sanjay nivas', '2024-06-03', 'Male', 'php', 'yes', '3', '500', 'English', 'idukki', 29),
('', '', 'suresh743@gmail.com', '', '8520', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 30),
('asdfghj', 'asdfghj', 'asdfgh3@gmail.com', '', '1234', '789456123', 'sdfghjkl', '2024-06-13', 'Male', 'qwertyu', '4', '8', '8', 'English', 'eeee', 31),
('bhaskaran', 'nair', 'bhaskaran@12', '', '789', '7592945712', 'edathothi;', '2012-01-16', 'Male', ',jmnbgvcx', 'yes', '2', '168', 'Malayalam', 'kalloor', 32),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 33),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 34),
('steffy', 'mol', 'steffy@gmail.com', 'painter', '9630', '3210456987', 'mekkalath', '2024-06-04', 'Female', '0', 'yes', '2', '85', 'Malayalam', 'mariyapuram', 35),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 36),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 37),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 38),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 39),
('peethambaran', 'nair', 'peethambaran@gmail.c', '', 'petha@12', '6502348819', 'koijhunybgtfvrdces', '2011-01-03', 'Male', ';lkjihuy', 'yes', '2', '100', 'Malayalam', 'para', 40),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 41),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 42),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 43),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 44),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 45),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 46),
('gowrika ', 'suresh', 'gowrika@gmail.com', 'lkmnjhbgvfd', '$2y$10$F.WI9nh7so3AS', '7907525795', 'kmjnbhgvcfd', '2024-06-19', 'Female', ';lkijhubgytfvrd', 'yes', '1', '100', 'English', 'vgbhnjm,.', 47),
('anu', 'raj', 'anu12@gmail.com', 'painter', '7896', '7410258963', ';.lkjhg', '2024-06-03', 'Female', 'lkoijhugfd', 'yes', '2', '100', 'English', 'lkijhugf', 48),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 49),
('ann', 'rajan', 'annrajan123@gmail.co', 'tailor', '8523', '7412589630', 'dcfvgbhnm,', '2024-06-03', 'Female', 'dfghnjkm,l', 'yes', '', '100', 'English', 'kochi', 50),
('ann', 'rajan', 'annrajan123@gmail.co', 'tailor', '8523', '7412589630', 'dcfvgbhnm,', '2024-06-03', 'Female', 'dfghnjkm,l', 'yes', '', '100', 'English', 'kochi', 51),
('maya', 'sabu', 'maya@gmail.com', 'carpenter', '7412', '7418529630', 'kjhgfds', '2024-06-03', 'Female', ';lkoijhugytfd', 'yes', '1', '420', 'Malayalam', 'kumaramangalam', 52),
('hyma', '', 'hyma@gmail.com', 'vbnm,', '741', '', 'jghghhjkj', '0000-00-00', 'Male', 'cvbnm', 'ghbjnkml,', '', '', '', 'bnm,.', 53),
('', '', 'hyma@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 54),
('', '', 'hyma@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 55),
('', '', 'liana@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 56),
('', '', 'liana@gmail.com', '', '741', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', 57),
('chithra', 'saji', 'chithra12@gmail.com', 'painter', '9630', '8574142560', 'ghjklkoijuhygtfr', '1999-01-24', 'Female', 'dxfcgvhbjnkm', 'yes', '1', '412', 'English', 'kochi', 58),
('steffy', '', 'steffy@gmail.com', 'painter', '9630', '', 'mekkalath', '0000-00-00', 'Male', '0', 'yes', '', '', '', 'mariyapuram', 59),
('prajith', 'p s', 'prajith123@gmail.com', 'painter,interior', '7520', '8086543321', 'dfghjk', '1991-05-14', 'Male', 'cvbhnjm,', 'yes', '5', '150', 'Malayalam', 'moolamattom', 60),
('pooja', 'ramesh', 'pooja2000@gmail.com', 'tailor', '8520', '785412036', 'lakshmi nivas', '2000-09-11', 'Female', 'fcgv bhnm', 'yes', '5', '100', 'English', 'idukki', 61),
('pooja', 'ramesh', 'pooja2000@gmail.com', 'tailor', '8520', '785412036', 'lakshmi nivas', '2000-09-11', 'Female', 'fcgv bhnm', 'yes', '5', '100', 'English', 'idukki', 62);

-- --------------------------------------------------------

--
-- Table structure for table `seekers`
--

CREATE TABLE `seekers` (
  `seeker_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `resume` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, 1, 5, 'fdgvhbjnk', '2024-08-27 07:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('jobseeker','recruiter') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `created_at`) VALUES
(1, 'John Doe', 'john@example.com', '$2y$10$Q/CH7Fl4Kx2loT4c8EXxOer7D6lPB.qzULbRh7pSoBksT5JzjE9Mi', 'jobseeker', '2024-06-20 01:46:42'),
(2, 'Jane Smith', 'jane@example.com', '$2y$10$Q/CH7Fl4Kx2loT4c8EXxOer7D6lPB.qzULbRh7pSoBksT5JzjE9Mi', 'recruiter', '2024-06-20 01:46:42');

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
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `application_history`
--
ALTER TABLE `application_history`
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
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `recruiter_id` (`recruiter_id`),
  ADD KEY `job_listing_id` (`job_listing_id`);

--
-- Indexes for table `got_job`
--
ALTER TABLE `got_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseekers`
--
ALTER TABLE `jobseekers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_listings_ibfk_1` (`recruiter_id`);

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
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`recruiter_id`);

--
-- Indexes for table `recruiters`
--
ALTER TABLE `recruiters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `recruiter_messages`
--
ALTER TABLE `recruiter_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rec_reg`
--
ALTER TABLE `rec_reg`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `seekers`
--
ALTER TABLE `seekers`
  ADD PRIMARY KEY (`seeker_id`);

--
-- Indexes for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_history`
--
ALTER TABLE `application_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `got_job`
--
ALTER TABLE `got_job`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobseekers`
--
ALTER TABLE `jobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobseeker_messages`
--
ALTER TABLE `jobseeker_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recruiters`
--
ALTER TABLE `recruiters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rec_reg`
--
ALTER TABLE `rec_reg`
  MODIFY `rec_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `s_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `seekers`
--
ALTER TABLE `seekers`
  MODIFY `seeker_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connections_ibfk_1` FOREIGN KEY (`jobseeker_id`) REFERENCES `jobseekers` (`id`),
  ADD CONSTRAINT `connections_ibfk_2` FOREIGN KEY (`recruiter_id`) REFERENCES `recruiters` (`id`),
  ADD CONSTRAINT `connections_ibfk_3` FOREIGN KEY (`job_listing_id`) REFERENCES `job_listings` (`id`);

--
-- Constraints for table `job_listings`
--
ALTER TABLE `job_listings`
  ADD CONSTRAINT `job_listings_ibfk_1` FOREIGN KEY (`recruiter_id`) REFERENCES `recruiters` (`id`);

--
-- Constraints for table `seeker_reviews`
--
ALTER TABLE `seeker_reviews`
  ADD CONSTRAINT `seeker_reviews_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `register` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
