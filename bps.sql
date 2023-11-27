-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 11:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `iv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `iv`) VALUES
(39, 348291480, 1579486176, 'gYcgIa0=', 'c502f3c1bca2dd0cd36a6c83f492b6a7'),
(40, 1579486176, 348291480, 'HWTo', 'a876cfe6843a97c3fc489954fd5df9ea'),
(41, 348291480, 1579486176, 'g3hVGFv3vNPF', 'c551c30826a80bb4e7cbb976646ee66e'),
(42, 1579486176, 348291480, 'ATA=', '9c2d75749f1fcbbb97fec6cb98dafd23'),
(43, 1579486176, 348291480, 'PTk=', '3c49bd32d5e88ed252b4c415e855ba8b'),
(44, 1579486176, 348291480, 'T7ao4X5ZAACGb4NhEL7nTixP', '0b00df9205809d3f6dc3b996a458ebb5'),
(45, 348291480, 1579486176, 'G2RnJnXOyg==', '09e5c7770b2d7d81d522fe6ce0495124'),
(46, 348291480, 1579486176, '7yMJ', 'a56d366e36e2b480e63634986f58ca30'),
(47, 1579486176, 348291480, 'LJh3', 'cf9192181d548fa3ae5710361a172777'),
(48, 348291480, 1579486176, 'Bg==', '5546d94e70ad08ba86c87c4ce40b2e3f'),
(49, 348291480, 1579486176, '5KbNPTU=', '79c3f180f16f034d9778b697d43f6638'),
(50, 273068343, 1662375816, 'WGBzqqDjX67ewcs=', '88110504d4127b2a62f18cd3de31a853'),
(51, 1662375816, 273068343, 'sYSS+m804iIl7hY=', '5fca2ad7d931070c5adeb6736dd1163d'),
(52, 1662375816, 273068343, 'sNjwRdPESXTn1b7tb+0=', '7cae6dfc1c7938d42a0b16ccf339f0e4'),
(53, 273068343, 1662375816, 'lSzy53keSdQWiTSXK7zG', 'd71ebcbd0f8b3789eadfd6fb044adca6'),
(54, 1662375816, 273068343, 'JBNa/Hqx8XTyYdW415z7LZuEUCNvv+1jeJE=', 'dfd75fd066fa79971ad1cb4b11ccf0b5'),
(55, 273068343, 1662375816, 'w31Fw9ycjrOu9g8=', '57a8ac04e3162c6b7dd9515cc76f5c77');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`, `theme`) VALUES
(1, 348291480, 'Navneet', 'Singh', 'navneet@gmail.com', '4297f44b13955235245b2497399d7a93', '17009259451bg.png', 'offline', ''),
(5, 1579486176, 'rahul', 'Singh', 'rahul@gmail.com', '4297f44b13955235245b2497399d7a93', '1700926033bgew.png', 'offline', ''),
(6, 1662375816, 'Sohil', 'Sohil', 'sohil@gmail.com', '4297f44b13955235245b2497399d7a93', '1700990434download (1).png', 'offline', ''),
(7, 273068343, 'vikas', 'vikas', 'vikas@gmail.com', '4297f44b13955235245b2497399d7a93', '1700990491GLA_University_logo.png', 'offline', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
