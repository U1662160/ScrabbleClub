-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 12:54 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrabble`
--

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `player1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `player1_score` smallint(6) DEFAULT NULL,
  `player2_score` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `player1`, `player2`, `place`, `date`, `player1_score`, `player2_score`, `created_at`, `updated_at`) VALUES
(1, '1', '3', 'Leeds', '2018-03-01 10:00:00', 0, 0, NULL, NULL),
(2, '1', '2', 'Leeds', '2017-12-01 10:00:00', 10, 7, NULL, NULL),
(3, '4', '1', 'Huddersfield', '2017-12-12 10:00:00', 9, 11, NULL, NULL),
(4, '5', '1', 'Bradford', '2018-01-03 10:00:00', 9, 7, NULL, NULL),
(5, '6', '1', 'Halifax', '2018-04-03 23:00:00', 0, 0, NULL, NULL),
(6, '1', '3', 'Leeds', '2018-03-01 10:00:00', 0, 0, NULL, NULL),
(7, '1', '5', 'Leeds', '2017-12-01 10:00:00', 8, 6, NULL, NULL),
(8, '4', '1', 'Huddersfield', '2018-01-01 10:00:00', 9, 11, NULL, NULL),
(9, '6', '1', 'Bradford', '2018-01-03 10:00:00', 9, 10, NULL, NULL),
(10, '7', '1', 'Harrogate', '2018-03-07 00:00:00', 0, 0, NULL, NULL),
(11, '7', '1', 'Harrogate', '2018-01-02 00:00:00', 9, 5, NULL, NULL),
(12, '2', '1', 'Wakefield', '2017-12-01 10:00:00', 10, 0, NULL, NULL),
(13, '2', '3', 'Wakefield', '2017-12-01 10:00:00', 11, 7, NULL, NULL),
(14, '3', '2', 'Skipton', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(15, '2', '4', 'wakefield', '2017-12-03 10:00:00', 11, 7, NULL, NULL),
(16, '4', '2', 'Wakefield', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(17, '2', '5', 'Bradford', '2017-12-01 10:00:00', 11, 7, NULL, NULL),
(18, '4', '2', 'wakefiield', '2018-06-10 09:00:00', 0, 0, NULL, NULL),
(19, '2', '6', 'Skipton', '2017-12-06 10:00:00', 8, 10, NULL, NULL),
(20, '6', '2', 'Leeds', '2018-05-10 09:00:00', 0, 0, NULL, NULL),
(21, '2', '4', 'wakefield', '2017-12-05 10:00:00', 12, 6, NULL, NULL),
(22, '4', '7', 'Harrogate', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(23, '2', '6', 'Bradford', '2018-01-02 10:00:00', 11, 7, NULL, NULL),
(24, '4', '2', 'wakefiield', '2018-07-10 09:00:00', 0, 0, NULL, NULL),
(25, '3', '1', 'Wakefield', '2017-12-01 10:00:00', 10, 12, NULL, NULL),
(26, '7', '3', 'Wakefield', '2017-12-01 10:00:00', 11, 7, NULL, NULL),
(27, '3', '7', 'Skipton', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(28, '3', '4', 'wakefield', '2017-12-03 10:00:00', 11, 7, NULL, NULL),
(29, '4', '3', 'Wakefield', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(30, '3', '5', 'Bradford', '2017-12-01 10:00:00', 11, 7, NULL, NULL),
(31, '4', '3', 'wakefiield', '2018-06-10 09:00:00', 0, 0, NULL, NULL),
(32, '3', '6', 'Skipton', '2017-12-06 10:00:00', 8, 11, NULL, NULL),
(33, '6', '3', 'Leeds', '2018-05-10 09:00:00', 0, 0, NULL, NULL),
(34, '3', '4', 'wakefield', '2017-12-05 10:00:00', 12, 5, NULL, NULL),
(35, '3', '1', 'Harrogate', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(36, '1', '3', 'Skipton', '2018-01-02 10:00:00', 11, 10, NULL, NULL),
(37, '4', '1', 'Wakefield', '2017-11-01 10:00:00', 10, 12, NULL, NULL),
(38, '7', '4', 'Wakefield', '2017-10-01 09:00:00', 11, 7, NULL, NULL),
(39, '4', '7', 'Skipton', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(40, '1', '4', 'wakefield', '2017-12-03 10:00:00', 11, 7, NULL, NULL),
(41, '4', '1', 'Wakefield', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(42, '4', '5', 'Bradford', '2017-12-01 10:00:00', 11, 7, NULL, NULL),
(43, '4', '1', 'wakefiield', '2018-06-10 09:00:00', 0, 0, NULL, NULL),
(44, '4', '6', 'Skipton', '2017-11-07 10:00:00', 8, 11, NULL, NULL),
(45, '6', '3', 'Leeds', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(46, '2', '4', 'wakefield', '2017-10-05 09:00:00', 12, 6, NULL, NULL),
(47, '4', '1', 'Harrogate', '2018-08-01 09:00:00', 0, 0, NULL, NULL),
(48, '1', '4', 'Skipton', '2018-02-02 10:00:00', 0, 0, NULL, NULL),
(49, '5', '1', 'Wakefield', '2017-12-01 10:00:00', 10, 10, NULL, NULL),
(50, '7', '5', 'Wakefield', '2017-10-02 09:00:00', 11, 7, NULL, NULL),
(51, '5', '7', 'Skipton', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(52, '1', '5', 'wakefield', '2017-12-13 10:00:00', 11, 10, NULL, NULL),
(53, '5', '1', 'Wakefield', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(54, '1', '5', 'Bradford', '2017-12-01 10:00:00', 11, 9, NULL, NULL),
(55, '5', '1', 'wakefiield', '2018-06-10 09:00:00', 0, 0, NULL, NULL),
(56, '5', '6', 'Skipton', '2017-11-07 10:00:00', 12, 10, NULL, NULL),
(57, '5', '3', 'Leeds', '2018-08-10 09:00:00', 0, 0, NULL, NULL),
(58, '2', '5', 'wakefield', '2017-10-05 09:00:00', 12, 6, NULL, NULL),
(59, '5', '1', 'Harrogate', '2018-09-01 09:00:00', 0, 0, NULL, NULL),
(60, '1', '5', 'Skipton', '2018-02-02 10:00:00', 0, 0, NULL, NULL),
(61, '5', '1', 'Wakefield', '2017-12-01 10:00:00', 8, 12, NULL, NULL),
(62, '7', '1', 'Wakefield', '2017-10-02 09:00:00', 8, 12, NULL, NULL),
(63, '1', '7', 'Harrogate', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(64, '1', '5', 'wakefield', '2017-12-13 10:00:00', 11, 10, NULL, NULL),
(65, '5', '1', 'Wakefield', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(66, '1', '5', 'Bradford', '2017-10-01 09:00:00', 11, 9, NULL, NULL),
(67, '5', '1', 'wakefiield', '2018-09-10 09:00:00', 0, 0, NULL, NULL),
(68, '1', '6', 'Skipton', '2017-11-07 10:00:00', 12, 6, NULL, NULL),
(69, '1', '3', 'Leeds', '2018-09-10 09:00:00', 0, 0, NULL, NULL),
(70, '2', '1', 'wakefield', '2017-10-05 09:00:00', 8, 10, NULL, NULL),
(71, '5', '1', 'Harrogate', '2018-09-01 09:00:00', 0, 0, NULL, NULL),
(72, '1', '5', 'Skipton', '2018-12-02 10:00:00', 0, 0, NULL, NULL),
(73, '9', '7', 'Harrogate', '2018-04-10 09:00:00', 0, 0, NULL, NULL),
(74, '9', '5', 'wakefield', '2017-12-13 10:00:00', 10, 12, NULL, NULL),
(75, '5', '9', 'Wakefield', '2018-05-01 09:00:00', 0, 0, NULL, NULL),
(76, '9', '5', 'Bradford', '2017-10-01 09:00:00', 6, 12, NULL, NULL),
(77, '5', '9', 'wakefiield', '2018-09-10 09:00:00', 0, 0, NULL, NULL),
(78, '9', '6', 'Skipton', '2017-11-07 10:00:00', 10, 6, NULL, NULL),
(79, '9', '3', 'Leeds', '2018-09-10 09:00:00', 0, 0, NULL, NULL),
(80, '2', '9', 'wakefield', '2017-10-05 09:00:00', 8, 7, NULL, NULL),
(81, '5', '9', 'Harrogate', '2018-09-01 09:00:00', 0, 0, NULL, NULL),
(82, '9', '5', 'Skipton', '2018-12-02 10:00:00', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `house` smallint(6) DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `fname`, `lname`, `phone`, `email`, `dob`, `house`, `street`, `city`, `postcode`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Romany', 'Romany', 'Sefen', '7342978488', 'romany@club.com', '1975-04-27', 7, 'balmoral', 'Huddersfield', 'HD4 5LR', 'Romany.jpg', '2018-01-05 01:00:12', '2018-01-05 16:10:58'),
(2, 'Matthew', NULL, NULL, NULL, 'mathew@club.com', NULL, NULL, NULL, NULL, NULL, 'Matthew.jpg', '2018-01-05 01:00:18', '2018-01-05 17:07:42'),
(3, 'Richard', NULL, NULL, NULL, 'rich@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-05 01:00:50', '2018-01-16 10:27:27'),
(4, 'Oliver', 'oliver', 'Stephen', '07456987414', 'oliver@club.com', '1980-01-03', 8, 'Walford', 'leeds', 'LS16 WXy', 'Oliver.jpg', '2018-01-05 01:01:02', '2018-01-05 17:09:10'),
(5, 'David', NULL, NULL, NULL, 'dav@club.com', NULL, NULL, NULL, NULL, NULL, 'David.jpg', '2018-01-05 01:01:16', '2018-01-05 15:48:51'),
(6, 'Anderw', NULL, NULL, NULL, 'anderw@club.com', NULL, NULL, NULL, NULL, NULL, 'Anderw.jpg', '2018-01-05 01:01:28', '2018-01-05 16:24:21'),
(7, 'John', NULL, NULL, NULL, 'john@club.com', NULL, NULL, NULL, NULL, NULL, 'John.jpg', '2018-01-05 01:21:13', '2018-01-05 16:23:53'),
(9, 'Nancy', NULL, NULL, NULL, 'nancy@club.com', NULL, NULL, NULL, NULL, NULL, 'Nancy.jpg', '2018-01-05 17:54:12', '2018-01-05 17:58:25'),
(10, 'Lewis', NULL, NULL, NULL, 'lewis@club.com', NULL, NULL, NULL, NULL, NULL, 'Lewis.jpg', '2018-01-11 23:16:29', '2018-01-11 23:30:32'),
(11, 'Juliet', NULL, NULL, NULL, 'Juliet@club.com', NULL, NULL, NULL, NULL, NULL, 'Juliet.jpg', '2018-01-11 23:35:48', '2018-01-12 00:43:55'),
(35, 'Kuba', NULL, NULL, NULL, 'Kuba@club.com', NULL, NULL, NULL, NULL, NULL, 'Kuba.jpg', '2018-01-16 11:00:32', '2018-01-16 11:02:11'),
(8, 'Mario', NULL, NULL, NULL, 'mario@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-12 00:41:13', '2018-01-12 00:41:13'),
(36, 'Daniel', 'Daniel', 'Dan', '076569894', 'dan@club.com', '1980-10-14', 9, 'Oxfam', 'Halifax', 'LS9 7Pn', '', '2018-01-16 11:03:58', '2018-01-16 11:05:10'),
(37, 'Janet', NULL, NULL, NULL, 'jan@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-16 11:11:32', '2018-01-16 11:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2017_12_26_185703_create_members_table', 1),
(4, '2017_12_26_194607_create_matches_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
