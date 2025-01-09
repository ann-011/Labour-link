-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 03:41 AM
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
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `complainer_email` varchar(255) NOT NULL,
  `complainer_role` varchar(50) NOT NULL,
  `complained_against_email` varchar(255) NOT NULL,
  `complaint` text NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complainer_email`, `complainer_role`, `complained_against_email`, `complaint`, `rating`, `created_at`) VALUES
(1, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji007@gmail.com', 'not coming to work', 1, '2024-10-16 20:28:27'),
(2, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji007@gmail.com', 'not coming to work', 1, '2024-10-16 20:28:35'),
(3, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji007@gmail.com', 'not coming to work', 1, '2024-10-16 20:28:38'),
(4, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji007@gmail.com', 'not coming to work', 1, '2024-10-16 20:28:40'),
(5, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji007@gmail.com', 'not coming to work', 1, '2024-10-16 20:28:42'),
(6, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji007@gmail.com', 'not coming to work', 1, '2024-10-16 20:28:45'),
(7, 'augustineshaji007@gmail.com', 'seeker', 'augustineshaji005@gmail.com', 'not coming to work', 1, '2024-10-16 20:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `application_id` int(11) NOT NULL,
  `seeker_email` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `recruiter_email` varchar(255) NOT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`application_id`, `seeker_email`, `job_title`, `recruiter_email`, `application_date`) VALUES
(5, 'hyma743@gmail.com', 'company_employee', 'sheeja@gmail.com', '2024-10-17 18:56:12'),
(6, 'chithra1@gmail.com', 'interior', 'annmariyarajan1@gmail.com', '2024-10-17 21:10:53'),
(8, 'gouri@gmail.com', 'interior', 'shini@gmail.com', '2024-10-17 21:10:53'),
(21, 'gowrika@gmail.com', 'teacher', 'suresh1@gmail.com', '2024-10-21 16:49:36'),
(55, 'blesson@gmail.com', 'teacher', 'shini@gmail.com', '2024-11-12 05:24:06'),
(65, 'alwinbabu2004@gmail.com', 'welder', 'alwinbabu2004@gmail.com', '2024-11-13 19:04:20'),
(68, 'mathewstharakan2006@gmail.com', 'painter', 'alwinbabu777@gmail.com', '2024-11-14 01:49:53');

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
(1, 'teacher', 'nursery teacher', 'kochi', 'maintain childrens', 3, '2024-10-17 22:40:00', 8, 500.00, 'shini@gmail.com'),
(2, 'teacher', 'nursery teacher', 'kochi', 'maintain childrens', 3, '2024-10-17 22:40:00', 8, 500.00, 'shini@gmail.com'),
(3, 'driving teacher', 'driving school lady teacher', 'thodupuxzha', 'driving liscence,experience ', 1, '2024-10-18 23:00:00', 5, 100.00, 'gopika@gmail.com'),
(4, 'painter', 'interior painting', 'idukki', 'paint', 4, '2024-10-18 22:00:00', 8, 3000.00, 'anu@gmail.com'),
(5, 'teacher', 'teacher at preschool', 'thodupuzha', 'teaching experience', 3, '2024-10-18 00:00:00', 8, 5000.00, 'anu@gmail.com'),
(6, 'company employee', 'company employee', 'idukki', 'company work', 2, '2024-10-19 10:00:00', 8, 2000.00, 'sheeja@gmail.com'),
(7, 'painter', 'interior  painting', 'kochi', '444', 7, '2024-10-19 16:55:00', 7, 8.00, 'anu@gmail.com'),
(8, 'interior designing', 'interior painting', 'idukki', '7', 8, '2024-10-19 19:00:00', 7, 800.00, 'shini@gmail.com'),
(9, 'baby siter', 'handle babys', 'idukki', 'baby handling', 5, '2024-10-23 15:48:00', 7, 7001.00, 'minimol@gmail.com'),
(10, 'painter', 'house painting', 'adimali', 'painting', 3, '2024-10-24 20:00:00', 8, 2000.00, 'anu@gmail.com'),
(11, 'driver', 'school bus driver', 'munnar', 'carefull driving', 3, '2024-10-23 10:00:00', 4, 500.00, 'jinix@gmail.com'),
(12, 'teacher', 'school teacher', 'adimali', 'teaching skills', 2, '2024-10-23 22:17:00', 3, 7000.00, 'suresh1@gmail.com'),
(13, 'plumber', 'plumber for a new house work', 'ernakulam', 'plumbing experience', 4, '2024-10-24 08:00:00', 8, 100.00, 'abin@gmail.com'),
(14, 'house cleaner', 'neeed to clean entire house', 'kottayom', 'cleaning', 1, '2024-10-25 11:00:00', 6, 100.00, 'viji@gmail.com'),
(15, 'house keeping', 'clean house and surroundings', 'ernakulam', 'cleaning', 1, '2024-10-25 09:22:00', 3, 100.00, 'joy@gmail.com'),
(16, 'laundry and ironing', 'need a worker for laundry and ironing', 'thrisur', 'neat and clean washing and ironing', 1, '2024-11-01 10:00:00', 3, 100.00, 'saumya@gmail.com'),
(17, 'teacher', 'pre school teacher', 'alapuzha', 'manage kids', 3, '2024-10-24 08:44:00', 8, 200.00, 'saumya@gmail.com'),
(19, 'plumber', 'bathroom work', 'alapuzha', 'plumbing skills', 4, '2024-10-25 00:30:00', 8, 150.00, 'saumya@gmail.com'),
(20, 'baby siter', 'manages baby', 'kollam', 'baby handling', 1, '2024-10-25 00:40:00', 9, 300.00, 'jio@gmail.com'),
(21, 'carpenter', 'door work', 'karunagapilly', 'wood carving', 2, '2024-10-31 15:46:00', 9, 100.00, 'jio@gmail.com'),
(22, 'tailor', 'tailor for dress shop', 'maneed', 'tailoring skills', 1, '2024-10-31 11:30:00', 9, 100.00, 'elna@gmail.com'),
(25, 'house maid', 'need house maid to work on as house', 'kottayam', 'good cleaning and managing skills', 3, '2024-11-22 13:41:00', 4, 400.00, 'lissy@gmail.com'),
(26, 'electrician', 'electrician work for a house', 'aluva', 'handle eqipments with care', 1, '2024-11-13 10:59:00', 8, 200.00, 'farismuhammed096@gmail.com'),
(27, 'plumber', 'plumber for a new house', 'maneed', 'plumbing skills', 3, '2024-11-15 09:00:00', 8, 90.00, 'bibin@gmail.com'),
(28, 'carpenter', 'carpenter with good skills', 'ernakulam', 'carpenter with experience', 2, '2024-11-13 10:00:00', 9, 100.00, 'bibin@gmail.com'),
(29, 'welder', 'welder for welding work in a shop ', 'piravom', 'welding experience', 2, '2024-11-14 10:00:00', 8, 100.00, 'eliasshaju6084@gmail.com'),
(30, 'baby siter', 'to look after a 3year old baby till evening', 'ernakulam', 'handle baby', 1, '2024-11-14 21:49:00', 8, 100.00, 'viji@gmail.com'),
(31, 'driver', 'need a personal driver for a doctor', 'kanuur', 'experienced drivers required', 2, '2024-11-14 09:00:00', 12, 100.00, 'alwinbabu2004@gmail.com'),
(32, 'welder', 'welder for a shop', 'kanuur', 'welding skills', 2, '2024-11-21 09:00:00', 8, 100.00, 'alwinbabu2004@gmail.com'),
(34, 'plumber', 'plumbing worker', 'ernakulam', 'plumbing', 2, '2024-11-15 09:00:00', 9, 100.00, 'angelreji03@gmail.com'),
(35, 'welder', 'experienced welder needed ', 'kollam', 'experience', 2, '2024-11-15 10:00:00', 8, 100.00, 'alwinbabu777@gmail.com'),
(36, 'painter', 'paiter for a new house painting', 'trivandrum', 'experience', 5, '2024-11-16 09:00:00', 12, 110.00, 'alwinbabu777@gmail.com');

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
(11, 'gowrika', 'suresh', 'tailor', 'gowrika12@gmail.com', 'gowrika@1', '2004-01-05', 'nedumkandam', 500.00, '2024-09-22 16:30:13', '8921038696', '0', 'bbhhb', 'female', NULL, NULL, 0),
(12, 'chithra', 'saji', 'interior', 'chithra1@gmail.com', 'chithra@1', '1995-10-14', 'vengaloor', 550.00, '2024-09-22 22:55:09', '9961002591', '0', 'njnjnj', 'female', NULL, NULL, 0),
(16, 'suresh', 's', 'interior', 'avsuresh877@gmail.com', 'suresh@12', '1997-10-14', 'vengaloor', 560.00, '2024-09-23 00:13:31', '9951002591', '0', 'njnjnjjnjnj', 'female', NULL, NULL, 0),
(17, 'gopika', 's', 'plumber', 'augustineshaji007@gmail.com', '123', '1999-05-01', 'bhbh', 410.00, '2024-09-23 05:08:44', '4785210378', '0', 'bjj', 'male', NULL, NULL, 0),
(18, 'merin', 'saji', 'painter', 'merin@gmail.com', 'merin123@', '1998-06-12', 'idukki', 100.00, '2024-10-17 18:21:11', '7865432908', '0', 'painting', 'female', NULL, NULL, 0),
(19, 'basil', 'rajan', 'plumber', 'basil@gmail.com', 'beku123@', '1999-04-05', 'Ernakulam', 100.00, '2024-10-22 06:03:50', '8086498592', '0', 'plumbing skills with experience of 5+ years', 'male', NULL, NULL, 0),
(20, 'salviya', 'abin', 'house keeping', 'shalu@gmail.com', 'shalu12@', '1995-02-17', 'kottayam', 100.00, '2024-10-22 06:39:44', '8097654382', '0', 'house cleaning ', 'female', NULL, NULL, 0),
(21, 'jini', 'rejo', 'laundry worker', 'jini@gmail.com', 'jini12@', '1990-07-22', 'thrisur', 70.00, '2024-10-22 07:56:51', '8963729017', '0', 'laundry and ironing', 'female', NULL, NULL, 0),
(22, 'blessy', 'var', 'baby siter', 'blessy@gmail.com', 'blessy12', '1995-02-10', 'karunagapilly', 100.00, '2024-10-22 10:08:35', '6748390273', '0', 'baby handling', 'female', NULL, NULL, 0),
(23, 'reena', 'sunny', 'tailor', 'reena@gmail.com', 'reena@', '1985-03-09', 'pambra', 100.00, '2024-10-22 10:53:19', '6789930278', '0', 'tailoring with 10 year exprience', 'female', NULL, NULL, 0),
(24, 'joel', 'sunny', 'tile worker', 'joel@gmail.com', 'joel1@', '1994-11-18', 'piravom', 60.00, '2024-10-22 10:58:53', '9649036718', '0', 'tile work skills', 'male', NULL, NULL, 0),
(25, 'sunny', 'ambraham', 'tiles', 'sunny@gmail.com', 'sunny@', '1988-03-03', 'kottayam', 80.00, '2024-10-22 11:17:40', '9946728906', '0', 'tile works', 'male', NULL, NULL, 0),
(26, 'shibi', 'sojan', 'house maid', 'shibi@gmail.com', 'shibi@', '1991-06-21', 'kottayam', 300.00, '2024-11-07 08:12:16', '9946728906', '0', 'cleaning skills', 'female', NULL, NULL, 0),
(27, 'Reji', 'John', 'electrician', 'reji@gmail.com', 'reji@123', '1993-05-03', 'ernakulam', 200.00, '2024-11-11 04:49:13', '9400963798', 'oorakatil', 'electrical skills', 'male', NULL, NULL, 0),
(28, 'blesson', 'k', 'electrician', 'blesson@gmail.com', 'blesson@', '1992-06-14', 'ernakulam', 200.00, '2024-11-11 05:11:38', '1234567890', '0', 'electrical skills', 'male', NULL, NULL, 0),
(29, 'rameshan', 'nair', 'electrician', 'rameshan@gmail.com', 'rameshan@123', NULL, 'kottayam', 300.00, '2024-11-11 06:28:35', '9946728906', 'ramanilayam', 'electrical work experience of three years', 'male', NULL, NULL, 0),
(30, 'neev', 'bibin', 'plumber', 'neev@gmail.com', 'neev@123', NULL, 'maneed', 90.00, '2024-11-12 06:14:11', '9946728906', 'oorakatil', 'plumbing skilss with three year experience', 'male', NULL, NULL, 0),
(31, 'milan', 'mureekan', 'driver', 'mureekanmilan@gmail.com', 'milan@12', NULL, 'kannur', 100.00, '2024-11-13 17:01:51', '9946728906', 'mureekal', 'experienced driver', 'male', NULL, NULL, 0),
(32, 'basil', 'rajan', 'driver', 'basilrajan15168@gmail.com', 'basil@34', NULL, 'kanuur', 100.00, '2024-11-13 17:23:27', '8921979073', 'palakal', 'experienced driver', 'male', NULL, NULL, 0),
(34, 'valsa', 'shaju', 'shopstaaff', 'valsashaju67@gmail.com', 'valsama1@', NULL, 'kottayam', 90.00, '2024-11-13 17:48:56', '8078484175', 'chenikunel', 'shopp skills', 'female', NULL, NULL, 0),
(35, 'meera', 'toms', 'shopstaff', 'mariumtoms21@gmail.com', 'meera@123', NULL, 'ernakulam', 100.00, '2024-11-13 18:06:15', '9947563829', 'murikanatil', 'shop keeper experience', 'female', NULL, NULL, 0),
(39, 'riya', 'reji', 'plumber', 'riyareji006@gmail.com', 'riyareji@12', NULL, 'ernakulam', 100.00, '2024-11-14 01:25:15', '8520147963', 'menndal', 'plumbing skills', 'female', NULL, NULL, 0),
(40, 'shaju', 'john', 'welder', 'shaju95@gmail.com', 'shajujohn@12', NULL, 'kollam', 90.00, '2024-11-14 01:40:59', '8907657835', 'chenakot', 'welder with five year experience', 'male', NULL, NULL, 0),
(41, 'mathews', 'tharakan', 'painter', 'mathewstharakan2006@gmail.com', 'mathews@12', NULL, 'trivandrum', 100.00, '2024-11-14 01:48:27', '9875033467', 'badarankuditil', 'experience of six year', 'male', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `seeker_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0,
  `recruiter_email` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `seeker_email`, `message`, `created_at`, `is_read`, `recruiter_email`, `job_title`) VALUES
(10, 'liana1@gmail.com', 'Your application for the position \'tailor\' has been rejected.', '2024-10-21 21:25:29', 0, 'jinix@gmail.com', 'tailor'),
(11, 'basil@gmail.com', 'Your application for the position \'plumber\' has been rejected.', '2024-10-22 11:46:10', 1, 'abin@gmail.com', 'plumber'),
(14, 'jini@gmail.com', 'Your application for the position \'laundry and ironing\' has been rejected.', '2024-10-22 13:31:10', 0, 'saumya@gmail.com', 'laundry and ironing'),
(15, 'augustineshaji007@gmail.com', 'Your application for the position \'plumber\' has been rejected.', '2024-10-22 13:46:45', 0, 'saumya@gmail.com', 'plumber'),
(16, 'jini@gmail.com', 'Your application for the position \'pre school techer\' has been rejected.', '2024-10-22 13:52:10', 0, 'saumya@gmail.com', 'pre school techer'),
(17, 'basil@gmail.com', 'Your application for the position \'shop works\' has been accepted.', '2024-10-22 13:58:22', 1, 'saumya@gmail.com', 'shop works'),
(19, 'basil@gmail.com', 'Your application for the position \'laundry and ironing work\' has been accepted by the recruiter.', '2024-10-22 14:20:45', 1, 'saumya@gmail.com', 'laundry and ironing work'),
(20, 'merin@gmail.com', 'Your application for the position \'shop keeping\' has been rejected.', '2024-10-22 15:24:23', 0, 'saumya@gmail.com', 'shop keeping'),
(21, 'blessy@gmail.com', 'Your application for the position \'carpenter\' has been rejected.', '2024-10-22 16:08:33', 0, 'jio@gmail.com', 'carpenter'),
(22, 'basil@gmail.com', 'Your application for the position \'carpenter\' has been accepted.', '2024-10-22 16:19:21', 0, 'jio@gmail.com', 'carpenter'),
(23, 'reena@gmail.com', 'Your application for the position \'tailor\' has been rejected.', '2024-10-22 16:31:26', 0, 'elna@gmail.com', 'tailor'),
(24, 'joel@gmail.com', 'Your application for the position \'tile work\' has been accepted.', '2024-10-22 16:32:26', 0, 'elna@gmail.com', 'tile work'),
(25, 'liana@gmail.com', 'Your application for the position \'tailor\' has been accepted.', '2024-10-22 16:44:52', 0, 'elna@gmail.com', 'tailor'),
(29, 'sunny@gmail.com', 'Your application for the position \'tile worker\' has been accepted.', '2024-10-22 17:01:23', 0, 'elna@gmail.com', 'tile worker'),
(30, 'reena@gmail.com', 'Your application for the position \'tailor\' has been accepted.', '2024-11-07 13:32:18', 0, 'lissy@gmail.com', 'tailor'),
(31, 'shibi@gmail.com', 'Your application for the position \'house maid\' has been accepted.', '2024-11-07 13:47:36', 0, 'lissy@gmail.com', 'house maid'),
(32, 'rameshan@gmail.com', 'Your application for the position \'electrician\' has been rejected.', '2024-11-11 12:09:12', 0, 'farismuhammed096@gmail.com', 'electrician'),
(33, 'blesson@gmail.com', 'Your application for the position \'electrician\' has been accepted.', '2024-11-11 12:09:23', 0, 'farismuhammed096@gmail.com', 'electrician'),
(34, 'neev@gmail.com', 'Your application for the position \'plumber\' has been accepted.', '2024-11-12 12:00:09', 0, 'bibin@gmail.com', 'plumber'),
(35, 'blessy@gmail.com', 'Your application for the position \'baby siter\' has been accepted.', '2024-11-13 22:23:08', 0, 'viji@gmail.com', 'baby siter'),
(36, 'alwinbabu777@gmail.com', 'Your application for the position \'driver\' has been rejected.', '2024-11-13 23:13:52', 0, 'alwinbabu2004@gmail.com', 'driver'),
(37, 'mureekanmilan@gmail.com', 'Your application for the position \'driver\' has been accepted.', '2024-11-13 23:14:05', 0, 'alwinbabu2004@gmail.com', 'driver'),
(38, 'valsashaju67@gmail.com', 'Your application for the position \'billing staff\' has been accepted.', '2024-11-13 23:24:56', 0, 'saumya@gmail.com', 'billing staff'),
(39, 'mariumtoms21@gmail.com', 'Your application for the position \'billing staff\' has been accepted.', '2024-11-13 23:38:55', 0, 'saumya@gmail.com', 'billing staff'),
(42, 'shaju95@gmail.com', 'Your application for the position \'welder\' has been rejected.', '2024-11-14 00:14:29', 0, 'alwinbabu2004@gmail.com', 'welder'),
(43, 'blessy@gmail.com', 'Your application for the position \'house maid\' has been accepted.', '2024-11-14 00:46:33', 0, 'lissy@gmail.com', 'house maid'),
(44, 'riyareji006@gmail.com', 'Your application for the position \'plumber\' has been rejected.', '2024-11-14 07:04:57', 0, 'angelreji03@gmail.com', 'plumber');

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
('abin joy', 'abin@gmail.com', 'appu12@', 'Oorakattil (h)', 682308, 'ernakulam', NULL, NULL, 0, 0, NULL, NULL),
('Alwin babu', 'alwinbabu2004@gmail.com', 'alwinbab', 'mundumpuzhakal', 678935, 'kanuur', NULL, NULL, 0, 0, NULL, NULL),
('Alwin babu', 'alwinbabu777@gmail.com', 'alwin@12', 'kunapuram', 682308, 'kollam', NULL, NULL, 0, 0, NULL, NULL),
('angel', 'angelreji03@gmail.com', 'angel@03', 'kunuvetil', 682308, 'kochi', NULL, NULL, 0, 0, NULL, NULL),
('Ann Mariya Rajan', 'annmariyarajan1@gmail.com', 'ann123@', 'arakulam', 234567, 'Thiruvaniyoor ', NULL, NULL, 0, 1, NULL, NULL),
('anu', 'anu@gmail.com', 'anu1234@', 'marinoor', 234587, 'idukki', NULL, NULL, 0, 0, NULL, NULL),
('Augustine Shaji', 'augustineshaji007@gmail.com', 'ABCD@123', 'abcdd', 123456, 'edadu', NULL, NULL, 0, 1, NULL, NULL),
('bibin', 'bibin@gmail.com', 'bibin@', 'parakatil', 682308, 'Thiruvaniyoor', NULL, NULL, 0, 0, NULL, NULL),
('elias shaju', 'eliasshaju6084@gmail.com', 'elias@12', 'chennatu', 682308, 'anchalpetty', '2024-11-23 21:40:45', '2024-11-13 21:40:45', 0, 0, NULL, NULL),
('elna sunny', 'elna@gmail.com', 'elna1@', 'kunathveed', 234567, 'pambra', NULL, NULL, 0, 0, NULL, NULL),
('Faris', 'farismuhammed096@gmail.com', 'faris@', 'cherupily house', 683511, 'aluva', NULL, NULL, 0, 0, NULL, NULL),
('gopika', 'gopika@gmail.com', 'gopz12@', 'vennad', 234567, 'para', NULL, NULL, 0, 0, NULL, NULL),
('Jinix chacko', 'jinix@gmail.com', 'jinix123', 'veloor', 234567, 'idukki', NULL, NULL, 0, 0, NULL, NULL),
('jio', 'jio@gmail.com', 'jio123@', 'areerkal', 234567, 'kollam', NULL, NULL, 0, 0, NULL, NULL),
('joy kuruvila', 'joy@gmail.com', 'joy123@', 'Oorakattil (h)', 234567, 'Thiruvaniyoor ', NULL, NULL, 0, 0, NULL, NULL),
('lissy chacko', 'lissy@gmail.com', 'lissy@', 'veloor house', 682308, 'ernakulam', NULL, NULL, 0, 0, NULL, NULL),
('minimol', 'minimol@gmail.com', 'mini123@', 'potekayil', 234567, 'idukki', NULL, NULL, 0, 0, NULL, NULL),
('suamya', 'saumya@gmail.com', 'saumya12', 'meenkunath', 682308, 'thrisuur', NULL, NULL, 0, 0, NULL, NULL),
('sheeja', 'sheeja@gmail.com', 'sheeja12', 'Oorakattil (h)', 682308, 'Thiruvaniyoor ', NULL, NULL, 0, 0, NULL, NULL),
('shini', 'shini@gmail.com', 'shini123', 'Oorakattil (h)', 682308, 'Thiruvaniyoor ', NULL, NULL, 0, 0, NULL, NULL),
('suresh', 'suresh1@gmail.com', 'suresh12', 'paramatom ', 543678, 'para', NULL, NULL, 0, 0, NULL, NULL),
('viji joy', 'viji@gmail.com', 'viji12@', 'menkun house', 678903, 'kottayom', NULL, NULL, 0, 0, NULL, NULL);

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
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `one_star_ratings`
--
ALTER TABLE `one_star_ratings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `job_postings`
--
ALTER TABLE `job_postings`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `job_seekers`
--
ALTER TABLE `job_seekers`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `one_star_ratings`
--
ALTER TABLE `one_star_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `recruiter_messages`
--
ALTER TABLE `recruiter_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
