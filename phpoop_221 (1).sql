-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 03:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpoop_221`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `birthday`, `sex`, `user_name`, `user_pass`, `user_profile_picture`, `email`) VALUES
(24, 'Althea', 'Plata', '2004-12-07', 'Female', 'Althea', '$2y$10$fdlX6mX35DDzfgo4lOsFzO5kWucHSBsDl9MrtrQe80NQdyJjcVNMi', 'uploads/aiah.jpg', 'plataalthea4@gmail.com'),
(25, 'Aiah', 'Arceta', '2004-12-07', 'Female', 'Aiah', '$2y$10$OpUWCbz/mTTPhvC/E24xR../nD8PordHlFVdZUaVThAtXyqEXNf.W', 'uploads/f4387d22e8cc8216e7780797ff8113bf.jpg', 'aiaharceta@gmail.com'),
(26, 'Colet', 'Vergara', '2000-12-09', 'Female', 'Colet', '$2y$10$h6XH2lU1E4cbcJcIfXXQo.D5.RuaTXNEZsmOd9Fx1OPk5aNdcSWUW', 'uploads/8345ebf51eaccb20d5353d29dc86f9e7.jpg', 'Coletvergara@gmail.com'),
(27, 'Mikha', 'Lim', '2003-06-05', 'Female', 'Mikha', '$2y$10$PdsaYMO.BcpTtPvZkMdoq.vDoygrw7xvyw9.ucIVmK9LXHKsZP1UC', 'uploads/f6f1f0e929941e1f374207757edc3a0b.jpg', 'mikhalim@gmail.com'),
(28, 'Maloi', 'Ricalde', '2000-12-09', 'Female', 'Maloi', '$2y$10$i5xVZ45U5R.7tyxC8dRUTOgSrikOvrxHeJF0q4BbIsoQcnkEo3jp2', 'uploads/1d33d96bd4fa7053d3f114573b0ede05.jpg', 'Maloi@gmail.com'),
(29, 'Jhoanna', 'Robles', '2000-12-07', 'Female', 'Jhoanna ', '$2y$10$DvCs1PmHtkXuC8rgRqq1lect.9315HSOjMCRoLEELf7JjmNGsKlyW', 'uploads/MV5BMjY4NjY0NzMtNDAxYi00Yzc3LWFjODctNThiMjRkY2UxOGIwXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_FMjpg_UX1000_.jpg', 'Jhoanna@gmail.com'),
(30, 'Coleen', 'Roxas', '2000-08-07', 'Female', 'Coleen', '$2y$10$buUtjxgG92UnRJQ4omkut.OZWy/KOA7IsxFXWo4Bu8oApokFA6Faa', 'uploads/f6f1f0e929941e1f374207757edc3a0b_1716428363.jpg', 'coleenroxas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_street` varchar(255) DEFAULT NULL,
  `user_barangay` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `user_id`, `user_street`, `user_barangay`, `user_city`, `user_province`) VALUES
(15, 24, '12343 ', 'Barangay 2 (Pob.) ', 'Carmona ', 'Region IV-A (CALABARZON)'),
(16, 25, 'Bini  ', 'Balete  ', 'Batangas City (Capital)  ', 'Region IV-A (CALABARZON)'),
(17, 26, 'Bini ', 'Balagtas ', 'Batangas City (Capital) ', 'Region IV-A (CALABARZON)'),
(18, 27, 'Bini ', 'Simlong ', 'Batangas City (Capital) ', 'Region IV-A (CALABARZON)'),
(19, 28, 'Bini', 'Lucky', 'Lemery', 'Region IV-A (CALABARZON)'),
(20, 29, 'Bini', 'Bagong Sikat', 'Agoncillo', 'Region IV-A (CALABARZON)'),
(21, 30, 'Scott', 'Anilao', 'Lipa City', 'Region IV-A (CALABARZON)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
