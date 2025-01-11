-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 11, 2025 at 05:17 PM
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
-- Database: `blog_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'Hafiz Ahmed', '2025-01-11 10:21:46', '2025-01-11 10:21:46'),
(2, 'Jane Smith', '2025-01-11 10:59:56', '2025-01-11 10:59:56'),
(3, 'Rabbil Hasan', '2025-01-11 10:59:56', '2025-01-11 11:11:46'),
(4, 'Alice Johnson', '2025-01-11 10:59:56', '2025-01-11 10:59:56'),
(5, 'Bob Brown', '2025-01-11 10:59:56', '2025-01-11 10:59:56'),
(6, 'Charlie White', '2025-01-11 10:59:56', '2025-01-11 10:59:56'),
(7, 'David Black', '2025-01-11 10:59:56', '2025-01-11 10:59:56'),
(9, 'Frank Grey', '2025-01-11 10:59:56', '2025-01-11 10:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(9, 'New Blog Post', 'This is a new blog post', 1, 1, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(10, 'Another Blog Post', 'This is another blog post', 2, 2, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(11, 'Yet Another Blog Post', 'This is yet another blog post', 3, 3, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(12, 'One More Blog Post', 'This is one more blog post', 4, 4, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(13, 'Final Blog Post', 'This is the final blog post', 1, 5, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(14, 'The Last Blog Post', 'This is the last blog post', 2, 6, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(15, 'The Very Last Blog Post', 'This is the very last blog post', 1, 1, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(16, 'The Ultimate Blog Post', 'This is the ultimate blog post', 3, 7, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(17, 'The Penultimate Blog Post', 'This is the penultimate blog post', 2, 2, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(18, 'The Best Blog Post', 'This is the best blog post', 4, 9, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(19, 'The Worst Blog Post', 'This is the worst blog post', 1, 9, '2025-01-11 15:47:55', '2025-01-11 15:47:55'),
(20, 'The Most Popular Blog Post', 'This is the most popular blog post', 4, 3, '2025-01-11 15:47:55', '2025-01-11 16:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2025-01-11 11:03:12', '2025-01-11 11:03:12'),
(2, 'Science', '2025-01-11 11:03:12', '2025-01-11 11:03:12'),
(3, 'Health & Wellness', '2025-01-11 11:03:12', '2025-01-11 11:03:12'),
(4, 'Entertainment', '2025-01-11 11:03:12', '2025-01-11 11:03:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
