-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2018 at 11:55 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1-log
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1662160`
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
(2, '1', '2', 'Leeds', '2017-12-01 10:00:00', 17, 7, NULL, NULL),
(3, '4', '1', 'Huddersfield', '2017-12-12 10:00:00', 9, 11, NULL, NULL),
(4, '5', '1', 'Bradford', '2018-01-03 10:00:00', 9, 12, NULL, NULL),
(5, '6', '1', 'Halifax', '2018-04-03 23:00:00', 0, 0, NULL, NULL),
(6, '1', '3', 'Leeds', '2018-03-01 10:00:00', 0, 0, NULL, NULL),
(7, '1', '5', 'Leeds', '2017-12-01 10:00:00', 10, 6, NULL, NULL),
(8, '4', '1', 'Huddersfield', '2018-01-01 10:00:00', 9, 11, NULL, NULL),
(9, '6', '1', 'Bradford', '2018-01-03 10:00:00', 9, 10, NULL, NULL),
(10, '7', '1', 'Harrogate', '2018-03-07 00:00:00', 0, 0, NULL, NULL),
(11, '7', '1', 'Harrogate', '2018-01-02 00:00:00', 10, 9, NULL, NULL),
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
(82, '9', '5', 'Skipton', '2018-12-02 10:00:00', 0, 0, NULL, NULL),
(83, '10', '11', 'Harrogate', '2018-04-11 09:00:00', 0, 0, NULL, NULL),
(84, '10', '12', 'wakefield', '2017-12-13 10:00:00', 10, 12, NULL, NULL),
(85, '10', '13', 'Wakefield', '2018-05-21 09:00:00', 0, 0, NULL, NULL),
(86, '10', '16', 'Bradford', '2017-10-01 09:00:00', 10, 15, NULL, NULL),
(87, '10', '16', 'wakefiield', '2018-09-10 09:00:00', 0, 0, NULL, NULL),
(88, '10', '17', 'Skipton', '2017-11-07 10:00:00', 12, 10, NULL, NULL),
(89, '10', '18', 'Leeds', '2018-09-11 09:00:00', 0, 0, NULL, NULL),
(90, '10', '19', 'wakefield', '2017-10-05 09:00:00', 8, 7, NULL, NULL),
(91, '10', '20', 'Harrogate', '2018-09-22 09:00:00', 0, 0, NULL, NULL),
(92, '10', '21', 'Skipton', '2018-12-02 10:00:00', 0, 0, NULL, NULL),
(93, '11', '10', 'Harrogate', '2018-06-11 09:00:00', 0, 0, NULL, NULL),
(94, '11', '12', 'wakefield', '2017-12-14 10:00:00', 14, 10, NULL, NULL),
(95, '11', '13', 'Wakefield', '2018-05-22 09:00:00', 0, 0, NULL, NULL),
(96, '11', '16', 'Bradford', '2017-10-02 09:00:00', 14, 15, NULL, NULL),
(97, '11', '16', 'wakefiield', '2018-09-10 10:00:00', 0, 0, NULL, NULL),
(98, '11', '17', 'Skipton', '2017-11-07 10:00:00', 14, 12, NULL, NULL),
(99, '11', '18', 'Leeds', '2018-09-12 09:00:00', 0, 0, NULL, NULL),
(100, '11', '19', 'wakefield', '2017-10-08 09:00:00', 11, 12, NULL, NULL),
(101, '11', '20', 'Harrogate', '2018-09-23 09:00:00', 0, 0, NULL, NULL),
(102, '11', '21', 'Skipton', '2018-12-03 10:00:00', 0, 0, NULL, NULL),
(103, '12', '10', 'Harrogate', '2018-06-12 09:00:00', 0, 0, NULL, NULL),
(104, '1', '12', 'wakefield', '2017-12-15 10:00:00', 14, 10, NULL, NULL),
(105, '12', '13', 'Wakefield', '2018-05-23 09:00:00', 0, 0, NULL, NULL),
(106, '12', '16', 'Bradford', '2017-10-04 09:00:00', 10, 13, NULL, NULL),
(107, '12', '16', 'wakefiield', '2018-09-10 10:00:00', 0, 0, NULL, NULL),
(108, '12', '17', 'Skipton', '2017-11-10 10:00:00', 14, 10, NULL, NULL),
(109, '12', '18', 'Leeds', '2018-09-14 09:00:00', 0, 0, NULL, NULL),
(110, '12', '19', 'wakefield', '2017-10-09 09:00:00', 8, 10, NULL, NULL),
(111, '12', '20', 'Harrogate', '2018-09-24 09:00:00', 0, 0, NULL, NULL),
(112, '12', '21', 'Skipton', '2018-12-04 10:00:00', 0, 0, NULL, NULL),
(113, '13', '10', 'Harrogate', '2018-06-13 09:00:00', 0, 0, NULL, NULL),
(114, '13', '12', 'wakefield', '2017-12-16 10:00:00', 14, 9, NULL, NULL),
(115, '13', '9', 'Wakefield', '2018-05-24 09:00:00', 0, 0, NULL, NULL),
(116, '13', '16', 'Bradford', '2017-10-06 09:00:00', 14, 10, NULL, NULL),
(117, '13', '16', 'wakefiield', '2018-09-11 10:00:00', 0, 0, NULL, NULL),
(118, '13', '17', 'Skipton', '2017-11-10 10:00:00', 11, 12, NULL, NULL),
(119, '13', '18', 'Leeds', '2018-09-15 09:00:00', 0, 0, NULL, NULL),
(120, '13', '19', 'wakefield', '2017-10-10 09:00:00', 12, 10, NULL, NULL),
(121, '13', '20', 'Harrogate', '2018-09-25 09:00:00', 0, 0, NULL, NULL),
(122, '13', '21', 'Skipton', '2018-12-05 10:00:00', 0, 0, NULL, NULL),
(123, '14', '10', 'Harrogate', '2018-06-14 09:00:00', 0, 0, NULL, NULL),
(124, '14', '12', 'wakefield', '2017-12-17 10:00:00', 12, 10, NULL, NULL),
(125, '14', '13', 'Wakefield', '2018-05-25 09:00:00', 0, 0, NULL, NULL),
(126, '14', '16', 'Bradford', '2017-10-07 09:00:00', 10, 9, NULL, NULL),
(127, '14', '16', 'wakefiield', '2018-09-12 10:00:00', 0, 0, NULL, NULL),
(128, '14', '17', 'Skipton', '2017-11-11 10:00:00', 13, 10, NULL, NULL),
(129, '14', '18', 'Leeds', '2018-09-16 09:00:00', 0, 0, NULL, NULL),
(130, '14', '19', 'wakefield', '2017-10-11 09:00:00', 11, 13, NULL, NULL),
(131, '14', '20', 'Harrogate', '2018-09-26 09:00:00', 0, 0, NULL, NULL),
(132, '14', '21', 'Skipton', '2018-12-06 10:00:00', 0, 0, NULL, NULL),
(133, '15', '10', 'Harrogate', '2018-06-15 09:00:00', 0, 0, NULL, NULL),
(134, '15', '12', 'wakefield', '2017-12-18 10:00:00', 10, 9, NULL, NULL),
(135, '15', '13', 'Wakefield', '2018-05-25 09:00:00', 0, 0, NULL, NULL),
(136, '15', '16', 'Bradford', '2017-10-08 10:00:00', 14, 12, NULL, NULL),
(137, '15', '17', 'wakefiield', '2018-09-13 10:00:00', 0, 0, NULL, NULL),
(138, '15', '17', 'Skipton', '2017-11-12 10:00:00', 10, 8, NULL, NULL),
(139, '15', '18', 'Leeds', '2018-09-17 09:00:00', 0, 0, NULL, NULL),
(140, '15', '19', 'wakefield', '2017-10-12 09:00:00', 10, 18, NULL, NULL),
(141, '15', '20', 'Harrogate', '2018-09-27 09:00:00', 0, 0, NULL, NULL),
(142, '15', '21', 'Skipton', '2018-12-07 10:00:00', 0, 0, NULL, NULL),
(143, '16', '10', 'Harrogate', '2018-06-16 09:00:00', 0, 0, NULL, NULL),
(144, '16', '12', 'wakefield', '2017-12-19 10:00:00', 12, 7, NULL, NULL),
(145, '16', '13', 'Wakefield', '2018-05-26 09:00:00', 0, 0, NULL, NULL),
(146, '16', '10', 'Bradford', '2017-10-09 10:00:00', 10, 8, NULL, NULL),
(147, '16', '17', 'wakefiield', '2018-09-17 10:00:00', 0, 0, NULL, NULL),
(148, '16', '17', 'Skipton', '2017-11-13 10:00:00', 9, 8, NULL, NULL),
(149, '16', '18', 'Leeds', '2018-09-18 09:00:00', 0, 0, NULL, NULL),
(150, '16', '19', 'wakefield', '2017-10-13 09:00:00', 12, 10, NULL, NULL),
(151, '16', '20', 'Harrogate', '2018-09-27 09:00:00', 0, 0, NULL, NULL),
(152, '16', '21', 'Skipton', '2018-12-08 10:00:00', 0, 0, NULL, NULL),
(153, '17', '10', 'Harrogate', '2018-06-18 09:00:00', 0, 0, NULL, NULL),
(154, '17', '12', 'wakefield', '2017-12-20 10:00:00', 10, 7, NULL, NULL),
(155, '17', '13', 'Wakefield', '2018-05-27 09:00:00', 0, 0, NULL, NULL),
(156, '17', '16', 'Bradford', '2017-10-10 10:00:00', 10, 8, NULL, NULL),
(157, '17', '4', 'wakefiield', '2018-09-18 10:00:00', 0, 0, NULL, NULL),
(158, '17', '3', 'Skipton', '2017-11-14 10:00:00', 12, 8, NULL, NULL),
(159, '17', '18', 'Leeds', '2018-09-19 09:00:00', 0, 0, NULL, NULL),
(160, '17', '19', 'wakefield', '2017-10-13 09:00:00', 12, 10, NULL, NULL),
(161, '17', '20', 'Harrogate', '2018-09-27 09:00:00', 0, 0, NULL, NULL),
(162, '17', '21', 'Skipton', '2018-12-09 10:00:00', 0, 0, NULL, NULL),
(163, '18', '10', 'Harrogate', '2018-06-17 09:00:00', 0, 0, NULL, NULL),
(164, '18', '12', 'wakefield', '2017-12-20 10:00:00', 10, 8, NULL, NULL),
(165, '18', '13', 'Wakefield', '2018-05-28 09:00:00', 0, 0, NULL, NULL),
(166, '18', '16', 'Bradford', '2017-10-11 10:00:00', 11, 9, NULL, NULL),
(167, '18', '17', 'wakefiield', '2018-09-20 10:00:00', 0, 0, NULL, NULL),
(168, '18', '17', 'Skipton', '2017-11-15 10:00:00', 9, 8, NULL, NULL),
(169, '18', '6', 'Leeds', '2018-09-20 09:00:00', 0, 0, NULL, NULL),
(170, '18', '19', 'wakefield', '2017-10-14 09:00:00', 10, 12, NULL, NULL),
(171, '18', '20', 'Harrogate', '2018-09-29 09:00:00', 0, 0, NULL, NULL),
(172, '18', '21', 'Skipton', '2018-12-10 10:00:00', 0, 0, NULL, NULL),
(173, '19', '10', 'Harrogate', '2018-06-20 09:00:00', 0, 0, NULL, NULL),
(174, '19', '12', 'wakefield', '2017-12-25 10:00:00', 10, 8, NULL, NULL),
(175, '19', '13', 'Wakefield', '2018-05-30 09:00:00', 0, 0, NULL, NULL),
(176, '19', '16', 'Bradford', '2017-10-11 10:00:00', 12, 8, NULL, NULL),
(177, '19', '17', 'wakefiield', '2018-09-22 10:00:00', 0, 0, NULL, NULL),
(178, '19', '17', 'Skipton', '2017-11-15 10:00:00', 12, 10, NULL, NULL),
(179, '19', '18', 'Leeds', '2018-09-20 09:00:00', 0, 0, NULL, NULL),
(180, '19', '9', 'wakefield', '2017-10-24 09:00:00', 10, 12, NULL, NULL),
(181, '19', '20', 'Harrogate', '2018-09-30 09:00:00', 0, 0, NULL, NULL),
(182, '19', '21', 'Skipton', '2018-12-12 10:00:00', 0, 0, NULL, NULL),
(183, '20', '10', 'Harrogate', '2018-06-22 09:00:00', 0, 0, NULL, NULL),
(184, '20', '12', 'wakefield', '2017-12-28 10:00:00', 10, 8, NULL, NULL),
(185, '20', '13', 'Wakefield', '2018-06-01 09:00:00', 0, 0, NULL, NULL),
(186, '20', '16', 'Bradford', '2017-10-13 10:00:00', 12, 8, NULL, NULL),
(187, '20', '17', 'wakefiield', '2018-09-24 10:00:00', 0, 0, NULL, NULL),
(188, '20', '17', 'Skipton', '2017-11-18 10:00:00', 8, 8, NULL, NULL),
(189, '20', '18', 'Leeds', '2018-09-22 09:00:00', 0, 0, NULL, NULL),
(190, '20', '8', 'wakefield', '2017-10-24 09:00:00', 11, 10, NULL, NULL),
(191, '20', '1', 'Harrogate', '2018-09-01 09:00:00', 0, 0, NULL, NULL),
(192, '20', '21', 'Skipton', '2018-12-13 10:00:00', 0, 0, NULL, NULL),
(193, '18', '13', 'wakefield', '2017-12-21 10:00:00', 11, 6, NULL, NULL),
(194, '14', '15', 'Bradford', '2017-10-11 10:00:00', 11, 9, NULL, NULL),
(195, '16', '4', 'wakefield', '2017-10-14 09:00:00', 10, 12, NULL, NULL),
(196, '14', '19', 'wakefield', '2017-12-25 10:00:00', 10, 8, NULL, NULL),
(197, '20', '10', 'Bradford', '2017-10-11 10:00:00', 12, 8, NULL, NULL),
(198, '11', '20', 'Skipton', '2017-11-15 10:00:00', 12, 10, NULL, NULL),
(199, '15', '14', 'wakefield', '2017-10-24 09:00:00', 10, 12, NULL, NULL),
(200, '13', '18', 'wakefield', '2017-12-28 10:00:00', 10, 8, NULL, NULL),
(201, '20', '11', 'wakefield', '2017-10-24 09:00:00', 11, 10, NULL, NULL),
(202, '16', '10', 'wakefield', '2017-12-21 10:00:00', 11, 9, NULL, NULL),
(203, '17', '12', 'Bradford', '2017-10-11 10:00:00', 11, 9, NULL, NULL),
(204, '18', '10', 'wakefield', '2017-10-14 09:00:00', 10, 12, NULL, NULL),
(205, '20', '12', 'wakefield', '2017-12-25 10:00:00', 10, 8, NULL, NULL),
(206, '13', '14', 'Bradford', '2017-10-11 10:00:00', 12, 8, NULL, NULL),
(207, '13', '20', 'Skipton', '2017-11-15 10:00:00', 11, 10, NULL, NULL),
(208, '14', '16', 'wakefield', '2017-10-24 09:00:00', 7, 12, NULL, NULL),
(209, '17', '10', 'wakefield', '2017-12-28 10:00:00', 10, 8, NULL, NULL),
(210, '10', '9', 'wakefield', '2017-10-24 09:00:00', 8, 7, NULL, NULL),
(211, '10', '7', 'wakefield', '2017-12-21 10:00:00', 10, 6, NULL, NULL),
(212, '20', '11', 'Bradford', '2017-10-11 10:00:00', 8, 6, NULL, NULL),
(213, '20', '14', 'wakefield', '2017-10-14 09:00:00', 10, 12, NULL, NULL),
(214, '11', '13', 'wakefield', '2017-12-25 10:00:00', 10, 8, NULL, NULL),
(215, '13', '14', 'Bradford', '2017-10-11 10:00:00', 12, 8, NULL, NULL),
(216, '13', '20', 'Skipton', '2017-11-15 10:00:00', 11, 10, NULL, NULL),
(217, '10', '12', 'wakefield', '2017-10-24 09:00:00', 7, 11, NULL, NULL),
(218, '11', '7', 'wakefield', '2017-12-28 10:00:00', 10, 8, NULL, NULL);

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
(1, 'Romany', 'Romany', 'Sefen', '7342978488', 'romany@club.com', '1975-04-27', 7, 'balmoral', 'Huddersfield', 'HD4 5LR', 'Romany.JPG', '2018-01-05 01:00:12', '2018-01-16 21:30:26'),
(2, 'Matthew', NULL, NULL, NULL, 'mathew@club.com', NULL, NULL, NULL, NULL, NULL, 'Matthew.jpg', '2018-01-05 01:00:18', '2018-01-05 17:07:42'),
(3, 'Richard', NULL, NULL, NULL, 'rich@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-05 01:00:50', '2018-01-05 01:00:50'),
(4, 'Oliver', 'oliver', 'Stephen', '07456987414', 'oliver@club.com', '1980-01-03', 8, 'Walford', 'leeds', 'LS16 WXy', 'Oliver.jpg', '2018-01-05 01:01:02', '2018-01-05 17:09:10'),
(5, 'David', NULL, NULL, NULL, 'dav@club.com', NULL, NULL, NULL, NULL, NULL, 'David.jpg', '2018-01-05 01:01:16', '2018-01-05 15:48:51'),
(6, 'Anderw', NULL, NULL, NULL, 'anderw@club.com', NULL, NULL, NULL, NULL, NULL, 'Anderw.jpg', '2018-01-05 01:01:28', '2018-01-05 16:24:21'),
(7, 'John', NULL, NULL, NULL, 'john@club.com', NULL, NULL, NULL, NULL, NULL, 'John.jpg', '2018-01-05 01:21:13', '2018-01-05 16:23:53'),
(9, 'Nancy', NULL, NULL, NULL, 'nancy@club.com', NULL, NULL, NULL, NULL, NULL, 'Nancy.jpg', '2018-01-05 17:54:12', '2018-01-05 17:58:25'),
(10, 'sarah', NULL, NULL, NULL, 'Sarah@club.com', NULL, NULL, NULL, NULL, NULL, 'sarah.jpg', '2018-01-16 21:02:27', '2018-01-16 21:29:28'),
(11, 'Daniel', NULL, NULL, NULL, 'dan@club.com', NULL, NULL, NULL, NULL, NULL, 'Daniel.jpg', '2018-01-16 21:58:02', '2018-01-16 23:00:47'),
(12, 'Harry', NULL, NULL, NULL, 'harry@club.com', NULL, NULL, NULL, NULL, NULL, 'Harry.jpg', '2018-01-16 21:59:56', '2018-01-16 23:41:02'),
(13, 'Donald', NULL, NULL, NULL, 'Don@club.com', NULL, NULL, NULL, NULL, NULL, 'Donald.jpg', '2018-01-16 22:00:57', '2018-01-16 23:41:24'),
(14, 'Ethan', NULL, NULL, NULL, 'ethan@club.com', NULL, NULL, NULL, NULL, NULL, 'Ethan.jpg', '2018-01-16 22:02:22', '2018-01-16 23:46:20'),
(15, 'Lisa', NULL, NULL, NULL, 'lisa@club.com', NULL, NULL, NULL, NULL, NULL, 'Lisa.jpg', '2018-01-16 22:03:34', '2018-01-16 23:51:51'),
(16, 'Mary', NULL, NULL, NULL, 'mary@club.com', NULL, NULL, NULL, NULL, NULL, 'Mary.jpg', '2018-01-16 22:04:11', '2018-01-16 23:38:33'),
(17, 'Emily', NULL, NULL, NULL, 'emily@club.com', NULL, NULL, NULL, NULL, NULL, 'Emily.jpg', '2018-01-16 22:04:51', '2018-01-16 23:36:23'),
(18, 'Robert', NULL, NULL, NULL, 'robert@robert.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-16 22:58:00', '2018-01-16 22:58:00'),
(19, 'Kevin', NULL, NULL, NULL, 'kevin@club.com', NULL, NULL, NULL, NULL, NULL, 'Kevin.jpg', '2018-01-16 22:58:30', '2018-01-16 23:35:17'),
(20, 'Jacob', NULL, NULL, NULL, 'jacob@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-16 22:59:01', '2018-01-16 22:59:01'),
(21, 'Nicolas', NULL, NULL, NULL, 'nicolas@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-16 22:59:18', '2018-01-16 22:59:18'),
(22, 'Frank', NULL, NULL, NULL, 'frank@club.com', NULL, NULL, NULL, NULL, NULL, '', '2018-01-16 22:59:48', '2018-01-16 22:59:48');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
