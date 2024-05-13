-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2024 at 04:07 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `brief_of_problem` varchar(255) NOT NULL,
  `description_of_problem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `full_name`, `email`, `phone_no`, `brief_of_problem`, `description_of_problem`) VALUES
(1, 'Mukul singhal', 'singhalmukul920@gmail.com', '753-3856-904', 'hadsifoha', 'idhsfaioasdhfio'),
(2, 'Mukul singhal', 'singhalmukul920@gmail.com', '753-3856-904', 'hadsifoha', 'idhsfaioasdhfio'),
(3, 'Mukul singhal', 'ram@gmail.com', '123-4567-890', 'sadsfu', 'haihsdfoa');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `exp_month` varchar(10) NOT NULL,
  `exp_year` varchar(10) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `full_name`, `email`, `address`, `city`, `state`, `zip`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`, `order_date`) VALUES
(1, 'Mukul Singhal', 'singhalmukul920@gmail.com', 'nishank nagar  colony', 'Agra', 'Uttar Pradesh', '283121', 'Mukul singhal', '64984654984616', '1', '2028', '352', '2024-04-22 01:22:41'),
(6, 'Ria chugh', 'riachugh010903@gmail.com', 'dadjfoi', 'difoah', 'dfkjsgioash', 'dofha', 'dfjnaoih', 'sdfhao', 'dnfaoih', 'cdhfoaish', 'fadsoifh', '2024-04-23 11:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_type`, `cost`, `quantity`, `color`, `gender`, `seller_id`) VALUES
(6, 'T-Shirt', 25.99, 50, 'Red', 'Male', 1),
(7, 'Jeans', 49.99, 30, 'Blue', 'Female', 2),
(8, 'Sneakers', 39.99, 40, 'Black', 'Unisex', 3),
(9, 'Dress', 59.99, 20, 'Pink', 'Female', 1),
(10, 'Watch', 99.99, 15, 'Silver', 'Unisex', 2);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL,
  `seller_password` varchar(255) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_password`, `seller_name`, `phone_no`, `address`) VALUES
(1, 'password123', 'Mukul singhal', '1234567890', '123 Main Street'),
(2, 'password456', 'Ria chugh', '0987654321', '456 Elm Street'),
(3, 'password789', 'MR jewellers', '9876543210', '789 Oak Street');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `address`, `gender`, `age`) VALUES
(1, 'kingm01', 'singhalmukul920@gmail.com', '$2y$10$P3T3Ygywa.RgQJ5ercEoS.dfdGJkxmGTzpjZkkESgMWPYb8Mqg7qq', 'agra', 'male', 20),
(2, 'kingm01', '1654', '$2y$10$DYnJJPVdpytkfVkjYwYptOl3TgDXaGPNHUAcsvkW01JNvbW2lEZSS', '2516', 'male', 20),
(3, 'Ria', 'riachugh010903@gmail.com', '$2y$10$89iq01JGqN1zRMGEZVFqaePhDXl5YKi3S5mTCK65aYm1YyQAYW/IK', 'chandigarh', 'female', 20),
(4, 'Muk', 'mukul6237@gmail.com', '$2y$10$bZ4GPbIjWLiIgGrQ3sJ0BerHMwFbEx3.bc4EamXKI53t19Y2F5abC', 'Agra', 'male', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
CREATE TABLE contact_logs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone_no VARCHAR(15) NOT NULL,
  brief_of_problem VARCHAR(255) NOT NULL,
  description_of_problem TEXT NOT NULL,
  contact_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER log_contact_details
AFTER INSERT ON contact_us
FOR EACH ROW
BEGIN
    -- Insert new contact details into contact_logs table
    INSERT INTO contact_logs (full_name, email, phone_no, brief_of_problem, description_of_problem, contact_time)
    VALUES (NEW.full_name, NEW.email, NEW.phone_no, NEW.brief_of_problem, NEW.description_of_problem, NOW());
END;
//

DELIMITER ;
