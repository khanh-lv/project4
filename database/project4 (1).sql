-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 01:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project4`
--
CREATE DATABASE IF NOT EXISTS `project4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `project4`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishing_company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publishing_year` int(11) DEFAULT NULL,
  `quantity_in_stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `short_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `cat_id`, `author`, `publishing_company`, `publishing_year`, `quantity_in_stock`, `price`, `short_des`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Sach giao khoa1', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(2, 'Sach giao khoa2', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(3, 'Sach giao khoa3', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(4, 'Clean Code1', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(5, 'Clean Code2', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(6, 'Clean Code3', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(7, 'Clean Code4', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(8, 'Clean Code5', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(9, 'Clean Code6', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(10, 'Clean Code7', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(11, 'Clean Code8', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(12, 'Clean Code9', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(13, 'Clean Code10', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(14, 'Clean Code11', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(15, 'Clean Code12', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(16, 'Clean Code13', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(17, 'Clean Code14', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(18, 'Clean Code15', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(19, 'Sach giao khoa4', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(20, 'Sach giao khoa5', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(21, 'Sach giao khoa6', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(22, 'Clean Code19', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(23, 'Clean Code20', 'layout/image/products/product-2.jpg', 1, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(24, 'Sach giao khoa7', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(25, 'Sach giao khoa8', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1),
(26, 'Sach giao khoa9', 'layout/image/products/product-2.jpg', 2, 'Lê Văn Khánh', 'NXB Sách Giáo Khoa', 20008, 1000, 120000, 'Sách hướng dẫn code sạch', 'Sách hướng dẫn code sạch', '2020-10-07', '2020-10-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `catName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `catName`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Sách công nghệ', NULL, NULL, 1),
(2, 'Sach giao khoa', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Lê Văn Khánh', 'khanh.lv.138@aptechlearning.edu.vn', 'Tét', NULL, NULL),
(2, 'Lê Văn Khánh', 'khanh.lv.138@aptechlearning.edu.vn', 'Tét contact', NULL, NULL),
(3, 'Lê Văn Khánh', 'khanh.lv.138@aptechlearning.edu.vn', 'téyt', NULL, NULL),
(4, 'Lê Văn Khánh', 'khanh.lv.138@aptechlearning.edu.vn', 'téyt', NULL, NULL),
(5, 'Lê Văn Khánh', 'khanh.lv.138@aptechlearning.edu.vn', 'Khanh dang tét contach', NULL, NULL),
(6, 'Lê Văn Khánh', 'khanh.lv.138@aptechlearning.edu.vn', 'Thu cai ne', NULL, NULL),
(7, 'Lê Văn Khánh', 'enuu@gmail.com', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `ordercode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discountPrice` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordercode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`ordercode`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordercode`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`ordercode`) REFERENCES `orders` (`ordercode`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
