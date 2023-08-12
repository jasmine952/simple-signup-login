-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 02:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`) VALUES
(1, 'jasmine', 'admin@admin.com', '$2y$10$omPcsSR7kmYfacB8qHqFQerahLFbsLzUnj2PTHnYdfcRxmYSGrtzu'),
(4, 'Jasmine ', 'jasmine@gmail.com', '$2y$10$QybPaj4nszgib36ejBE7aOca5TOiRCSJ7ry5GSl13d92rDIoDvMmq'),
(6, 'Jasmine ', 'jasmine1@gmail.com', '$2y$10$iFCzaDEX/qY.X6YxYfMj9u/BqDIRLEKIJzPptTgeCaWlYntwMv5yy'),
(7, 'opeyemi', 'ope@gmao.com', '$2y$10$Gk0OxfG5kttoTgh.EU/gW..c32dGIiQpuU3S3C7/0.6iXQ4GTG9zu'),
(8, 'PAUL O SAMUEL', 'paulsam@gmail.com', '$2y$10$3rfegVPYMWoHIAsOStw7A./fsU32auPuZLt0au38CSywgRw77ma9.'),
(9, 'JASMINEEE', 'temo@gmail.com', '$2y$10$sesO.GLSKChZ4WnR/KcMSODOTQzb9aj9okZnhWbHSGlBjHLbfKG86'),
(10, 'GABRIEL ISRAEL', 'gabrielis@gmail.com', '$2y$10$cwXhgzcM913pERtj4hipluX7H35z7X9UnZaTZL89/79oNQRrOZ3AK'),
(11, 'AMOS GEORGE ', 'amosgeorge@gmail.com', '$2y$10$nnVPdn6WZJulYPUUuAfcyObtd3CYFxPazkZdBzGn91raUvvO9JdLu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
