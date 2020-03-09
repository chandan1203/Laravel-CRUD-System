-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 04:00 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'chandan', 'kumar', 'chandan.sharma@gmial.com', '01716852802', '2019-11-18 06:19:20', '2019-11-18 09:52:51'),
(6, 'Muktakim', 'hossian', 'muktakim@gmail.com', '01717805785', '2019-11-18 23:08:00', '2019-11-18 23:08:00'),
(8, 'mahabul', 'hasan2', 'jiku@gmail.com', '018237364562', '2019-11-18 23:09:09', '2019-11-18 23:12:07'),
(9, 'rasel', 'islam', 'rasel@gmail.com', '0171112345', '2019-11-19 00:28:26', '2019-11-19 00:28:26'),
(10, 'suparna', 'dutta', 'suparna@gmail.com', '01718764532', '2019-11-19 00:33:19', '2019-11-19 00:33:19'),
(11, 'Nawaz', 'Shahriar 2', 'nawaz@gmail.com', '0171411111', '2019-11-19 04:43:29', '2019-11-19 04:43:29'),
(12, 'chandan', 'kumar', 'chandan.aece.iu@gmail.com', '018712653872', '2019-11-19 04:45:51', '2019-11-19 04:45:51'),
(13, 'chandan', 'roy', 'chandan.aece.iu@gmail.com', '018712653872', '2019-11-19 04:50:40', '2019-11-19 04:50:40'),
(14, 'alok', 'sharma', 'chandan.aece.iu@gmail.com', '01717805785', '2019-11-19 04:55:22', '2019-11-19 04:55:22'),
(15, 'Nawaz', 'kumar', 'roy0935alok@gmail.com', '01716852802', '2019-11-19 05:01:36', '2019-11-19 05:01:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
