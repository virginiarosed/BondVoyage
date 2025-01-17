-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 04:47 AM
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
-- Database: `bondvoyage_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`, `created_at`) VALUES
(1, '4bstravelandtours@gmail.com', '0680ca7e3e9b3b7dfafaf52b4a55179785689364f87829dbe6faae005603a595', '2025-01-10 03:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `itineraries`
--

CREATE TABLE `itineraries` (
  `id` int(11) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  `duration_nights` int(11) DEFAULT NULL,
  `lodging` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itineraries`
--

INSERT INTO `itineraries` (`id`, `destination`, `duration_days`, `duration_nights`, `lodging`) VALUES
(1, 'Sample 1', 1, 1, 'Hotel'),
(2, 'Baguio', 2, 1, 'Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary_days`
--

CREATE TABLE `itinerary_days` (
  `id` int(11) NOT NULL,
  `itinerary_id` int(11) NOT NULL,
  `day_number` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itinerary_days`
--

INSERT INTO `itinerary_days` (`id`, `itinerary_id`, `day_number`, `start_time`, `end_time`, `activity`) VALUES
(1, 1, 1, '12:00:00', '13:00:00', 'Lunch'),
(2, 2, 1, '00:00:00', '10:00:00', 'Meet Up'),
(3, 2, 2, '00:00:00', '10:00:00', 'Run');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `activities` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `destination`, `place_name`, `location`, `description`, `activities`, `created_at`) VALUES
(1, 'Ilocos', 'San Agustin Church of Paoay', 'Marcos Ave, Paoay, Ilocos Norte', 'Paoay Church is a Roman Catholic church in Paoay, Ilocos Norte province, completed in 1710 after two decades of construction. With a massive pediment and complementary bell tower standing imposingly on an expansive plain, the church is famous for its architecture that blends baroque, gothic, Chinese, and Javanese styles. Today, it is one of the top tourist attractions in the Ilocos Region.', 'Religious Services (Masses, Novena Services, Sacrament of Confession)\r\nCultural and Heritage Tours\r\nEducational and Spiritual Workshops\r\nHeritage and Arts Exhibits\r\nLocal Craft and Souvenir Sales:', '2025-01-07 16:14:41'),
(2, 'Ilocos', 'a', 'a', 'a', 'a', '2025-01-07 16:44:14'),
(3, 'Ilocos', 'b', 'b', 'b', 'b', '2025-01-07 16:45:21'),
(4, 'Ilocos', 'C', 'C', 'C', 'C', '2025-01-07 16:47:57'),
(5, 'Ilocos', 'D', 'D', 'D', 'D', '2025-01-07 16:56:10'),
(6, 'Ilocos', 'E', 'E', 'E', 'E', '2025-01-07 16:56:56'),
(7, 'Ilocos', 'F', 'F', 'F', 'F', '2025-01-07 17:11:37'),
(8, 'Ilocos', 'H', 'H', 'H', 'H', '2025-01-07 17:21:05'),
(9, 'Ilocos', 'I', 'I', 'I', 'I', '2025-01-07 17:23:30'),
(10, 'Ilocos', 'J', 'J', 'J', 'J', '2025-01-07 17:32:57'),
(11, 'Ilocos', 'K', 'K', 'K', 'K', '2025-01-07 17:33:43'),
(12, 'Ilocos', 'L', 'L', 'L', 'L', '2025-01-07 17:34:38'),
(13, 'Ilocos', 'M', 'M', 'M', 'M', '2025-01-07 17:36:10'),
(14, 'Ilocos', 'N', 'N', 'N', 'N', '2025-01-07 17:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `place_images`
--

CREATE TABLE `place_images` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place_images`
--

INSERT INTO `place_images` (`id`, `place_id`, `image_path`) VALUES
(1, 1, 'uploads/677d52f1dbba6_paoay-church-4.JPG'),
(2, 1, 'uploads/677d52f20fba6_paoay-church-3.jpg'),
(3, 1, 'uploads/677d52f235890_paoay-church-2.png'),
(4, 1, 'uploads/677d52f28c461_paoay-church-1.jpg'),
(5, 2, 'uploads/677d59e0225f9_paoay-church-1.jpg'),
(6, 3, 'uploads/677d5a21cbfa2_paoay-church-3.jpg'),
(7, 3, 'uploads/677d5a2200ee3_paoay-church-2.png'),
(8, 4, 'uploads/677d5abdaf9d8_paoay-church-3.jpg'),
(9, 5, 'uploads/677d5caae1020_paoay-church-3.jpg'),
(10, 6, 'uploads/677d5cd8def1a_paoay-church-1.jpg'),
(11, 7, 'uploads/677d6049be8c1_paoay-church-1.jpg'),
(12, 7, 'uploads/677d604a11cbe_paoay-church-2.png'),
(13, 7, 'uploads/677d604ad83db_paoay-church-3.jpg'),
(14, 7, 'uploads/677d604b219a7_paoay-church-4.JPG'),
(15, 8, 'uploads/677d6282b14c3_paoay-church-1.jpg'),
(16, 9, 'uploads/677d6312beef2_paoay-church-4.JPG'),
(17, 9, 'uploads/677d6312d577a_paoay-church-3.jpg'),
(18, 9, 'uploads/677d631307ca5_paoay-church-2.png'),
(19, 9, 'uploads/677d631360861_paoay-church-1.jpg'),
(20, 10, 'uploads/677d6549aab4c_paoay-church-4.JPG'),
(21, 10, 'uploads/677d6549e48a9_paoay-church-3.jpg'),
(22, 10, 'uploads/677d654a26faf_paoay-church-1.jpg'),
(23, 10, 'uploads/677d654a6d12b_paoay-church-2.png'),
(24, 10, 'uploads/677d654b3bd03_paoay-church-4.JPG'),
(25, 10, 'uploads/677d654b96d43_paoay-church-3.jpg'),
(26, 11, 'uploads/677d6577736d6_paoay-church-4.JPG'),
(27, 11, 'uploads/677d6577c21d0_paoay-church-3.jpg'),
(28, 11, 'uploads/677d6577f2e1c_paoay-church-1.jpg'),
(29, 11, 'uploads/677d657841418_paoay-church-2.png'),
(30, 11, 'uploads/677d6578b35c2_paoay-church-4.JPG'),
(31, 11, 'uploads/677d65794fb14_paoay-church-3.jpg'),
(32, 11, 'uploads/677d65796ad3c_paoay-church-1.jpg'),
(33, 11, 'uploads/677d657995a0b_paoay-church-2.png'),
(34, 11, 'uploads/677d6579abd7a_paoay-church-4.JPG'),
(35, 11, 'uploads/677d657abb353_paoay-church-3.jpg'),
(36, 12, 'uploads/677d65aed279b_paoay-church-4.JPG'),
(37, 12, 'uploads/677d65af1c9f2_paoay-church-3.jpg'),
(38, 12, 'uploads/677d65af3c960_paoay-church-1.jpg'),
(39, 12, 'uploads/677d65af5ea00_paoay-church-2.png'),
(40, 12, 'uploads/677d65af8bca6_paoay-church-3.jpg'),
(41, 12, 'uploads/677d65afbf3ff_paoay-church-4.JPG'),
(42, 13, 'uploads/677d660a3b4ed_paoay-church-4.JPG'),
(43, 13, 'uploads/677d660a691a4_paoay-church-3.jpg'),
(44, 13, 'uploads/677d660a7c2b6_paoay-church-1.jpg'),
(45, 13, 'uploads/677d660a94845_paoay-church-2.png'),
(46, 13, 'uploads/677d660abe4be_paoay-church-3.jpg'),
(47, 13, 'uploads/677d660af261a_paoay-church-4.JPG'),
(48, 13, 'uploads/677d660b869c5_paoay-church-1.jpg'),
(49, 13, 'uploads/677d660be09b7_paoay-church-2.png'),
(50, 13, 'uploads/677d660c13d07_paoay-church-4.JPG'),
(51, 13, 'uploads/677d660c254e7_paoay-church-3.jpg'),
(52, 14, 'uploads/677d697db3327_paoay-church-4.JPG'),
(53, 14, 'uploads/677d697e089d4_paoay-church-3.jpg'),
(54, 14, 'uploads/677d697e6b1f5_paoay-church-1.jpg'),
(55, 14, 'uploads/677d697f4eb48_paoay-church-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `security_question_1` varchar(255) NOT NULL,
  `security_answer_1` varchar(255) NOT NULL,
  `security_question_2` varchar(255) NOT NULL,
  `security_answer_2` varchar(255) NOT NULL,
  `security_question_3` varchar(255) NOT NULL,
  `security_answer_3` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile`, `birthday`, `password`, `security_question_1`, `security_answer_1`, `security_question_2`, `security_answer_2`, `security_question_3`, `security_answer_3`, `created_at`) VALUES
(1, 'Virginia Rose', 'Dichoso', 'virginiarosedichoso@gmail.com', '09064815090', '2003-01-04', '$2y$10$QWuAIAV9UfBwYXuQKdRkP.BPoPFx5GzKt1.X1D2YHvY9s6tDTl1eK', 'friend', '$2y$10$YmGUAAGhlFLCabdkr4ij0eMQqbsvIawvHqke.zG0PECHl5CimtTsm', 'toy', '$2y$10$pgDzzfjf/MwX5pzmZu5pwuyICtd9zlSj16Tp/UPDOvyJoTBY2qHqa', 'character', '$2y$10$uNv3Cewp.C5dV/jY7Frsaea5cIa1wvEvStS9kpppbdh228o3w1eeu', '2025-01-06 08:53:26'),
(2, 'Harry', 'Potter', 'harrypotter@gmail.com', '09064815091', '1995-02-14', '$2y$10$an2iWJerXc1DDzbkMxCkue.BQ1fXezdfXiS93PYMmIfm1ycjIPiQa', 'movie', '$2y$10$hXne7t1.ojeyBSNyl0IaKuDCC6uI9UjzN2e7RzIfJXNdM.N7N4Yme', 'pet', '$2y$10$uC2f9kMzH7kr1vQCNyDM5eeNC.Phn/z.1UivNYhXYucG/4c/sQHo.', 'character', '$2y$10$GWU2sf6qe5MJTKYXk76lL.0id1MPT12/Td/CcGEL24R5OnJOX4Khe', '2025-01-06 08:55:22'),
(3, 'Hermione', 'Granger', 'hermionegranger@gmail.com', '09064815092', '1995-03-12', '$2y$10$tME073wQ6wgcOvarXO6cBeWVt3w6j4cB0WsO9CJXuMAs//5iNwUmi', 'movie', '$2y$10$V/sYdempRnSF89wdhM7fnOwegwFUTbWQQ3KwmPKRD1TyWLSYTE9P.', 'purchase', '$2y$10$5aordqcwAs9LOpTT9Vl63eqnYhMpzcy9ae36WSzDBy86P5j3f88Zi', 'character', '$2y$10$u.XR7.lMlT/rGCR4VnkwIOOPOuQB0m7WIOTf2YQC8Hf5CGT2j8Ke2', '2025-01-06 08:58:44'),
(4, 'Ron', 'Weasley', 'ronweasley@gmail.com', '09064815093', '1995-04-04', '$2y$10$48pdtWb/RrMeCBO7tPZF9uIgYrz2n4IeGSpzAkoCHCBzl3cKJJu1.', 'movie', '$2y$10$QyH/sdIEB2Tgn9UO3iLWSeE.Lbad97Znt1GXKgjkCCw5rq8E9V0jS', 'pet', '$2y$10$MRvzF48p1esjFNs7OcBj4uewJxSoVLY7W1ncEXDnCO7XhgUk776NK', 'character', '$2y$10$g8KiQKOL0a1W6RXvwLsareWwRCgMn4SYmEbJk9/QnNjn.XHcVhSiq', '2025-01-06 09:01:18'),
(5, 'Albus', 'Dumbledore', 'albusdumbledore@gmail.com', '09064815094', '1995-05-01', '$2y$10$TXZnhYoNX0a63XbiMxVm9uuwVtrOdXR9ZRJycFxGppcfu4hqSQ1bW', 'movie', '$2y$10$5vdLj9wcj55ntpvF0mqPq.SW/5xH9RwgnF8porvSoYmQFDuqaRg.i', 'purchase', '$2y$10$PV/zQbWUIvycA366nzZLF.7QWYGj0Yy7a.PqpBlcT6zVVUaW.jNZa', 'toy', '$2y$10$Wfx9IDO0/HIIAis72irgI.iq8b3K8BKsbPTWWQsm1qBx8qa1tOn.a', '2025-01-06 09:03:02'),
(6, 'Minerva', 'McGonagall', 'minervamcgonagall@gmail.com', '09064815095', '1995-06-30', '$2y$10$U2T6lpa8fF.d1vp7lh3tMOmdclwhOvM2bVMJWKRD5N7SS42o/RK8a', 'movie', '$2y$10$Scwb2/qlkCRaLWU5lkCeH.R0KKk/jiuY71iRyZa4BBYt7CF/q6I0i', 'pet', '$2y$10$0yR0WiO3Bn.1V5kMoPpb/.yMwdssYqcKtm1iKEB8a9NhKUG8qGlC6', 'book', '$2y$10$jYxuaKyYVvYrpzESAedLu.25FBmXNQQxdEXemAPU80VT5USX.fm4u', '2025-01-06 09:05:36'),
(7, 'Severus', 'Snape', 'severussnape@gmail.com', '09064815096', '1995-07-11', '$2y$10$NJ9UjQhLJpnt.lOceSUBZeM/Nl79W0AZoXIYDZMjYyAMr848FPg2y', 'movie', '$2y$10$ttvHg.56cxBIMDr4pygPX.nOojy8VcMtu/0PRv1/Ldnzv7caq5lR.', 'book', '$2y$10$hZptjcRT8LB4fSjlxZzxquLVPZMxrYMBzb/tzpb/r7EKfdGDv.FCe', 'character', '$2y$10$Hp8YGy/5lLq/5XC6MMseLeTcbCifzkf8Tn3E6/73rBSoaKLxxohTC', '2025-02-06 09:08:23'),
(8, 'Sirius', 'Black', 'siriusblack@gmail.com', '09064815097', '1995-08-15', '$2y$10$yPZrWrBgKYxSfwqS5gZBleOlGzheXOQdNGAy7GW2wnRBMR6Tey39u', 'movie', '$2y$10$dsS1V0ELIBWKajOc0aFB6ebEbBPiwd9.FDcG5IMXbN2otTWAtMdWu', 'toy', '$2y$10$eBSsW12Qnry7jfLWCHHRg.Rov56ZkkEUQcuml2FIrbqbb0FtUP2sq', 'book', '$2y$10$1DWJXZPcq1QwKEMoDikxounEwXAy1Swt9R3XO20rpkA0/ta6cehAi', '2025-01-06 09:12:45'),
(9, 'Tom', 'Riddle', 'tomriddle@gmail.com', '09064815098', '1995-09-21', '$2y$10$7QWHaNqIKX9mYi3aCvaQvO2JjrVCwyg7NL8qnBiDoEA/iYmeuHPtq', 'movie', '$2y$10$oMzg.x2OJGlVxmmkubCRiunzHzYjSBJNcAr1kkd2yNJ1aZL59xJbG', 'pet', '$2y$10$Fv/yZV3bCLEfK8E2a2IyseOVIJaFX39mfNrGPmgWLUQOhP7ppZ67y', 'character', '$2y$10$HTmufMOvy4oMIvtW.AexLuKnjLXuNacLk.icV/FITdy7uNshh42pi', '2025-01-06 09:14:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `itineraries`
--
ALTER TABLE `itineraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itinerary_days`
--
ALTER TABLE `itinerary_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itinerary_id` (`itinerary_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_images`
--
ALTER TABLE `place_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itineraries`
--
ALTER TABLE `itineraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itinerary_days`
--
ALTER TABLE `itinerary_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `place_images`
--
ALTER TABLE `place_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `place_images`
--
ALTER TABLE `place_images`
  ADD CONSTRAINT `place_images_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
