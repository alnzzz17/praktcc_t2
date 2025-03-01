-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2025 at 03:08 PM
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
-- Database: `dbnote`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `noteTitle` varchar(255) NOT NULL,
  `noteContent` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `userId`, `noteTitle`, `noteContent`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Shopping List', 'Bernacle. Clown fish. Tartar Sauce. Shrimp. Lobster.', '2025-02-26 18:52:36', '2025-02-26 18:52:36'),
(5, 4, 'Nomor Guru Adek', 'Pak Ogah (yang botak) 0879635272635. Pak Unyil (yang pake peci) 0873645726356. Bu Melani 087983647363 (rambutnya kuncir dua)', '2025-02-27 12:37:29', '2025-02-27 18:32:51'),
(7, 4, 'Placeholdernya', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis quam ac elementum posuere. Nunc purus lectus, placerat vitae blandit a, iaculis sit amet metus. Pellentesque feugiat dolor ac euismod efficitur. Donec sodales pharetra ipsum, sed hendrerit nunc condimentum id. Duis non tincidunt quam. Mauris aliquet hendrerit diam, et finibus turpis placerat semper. Pellentesque vulputate porttitor sem, nec pellentesque felis ullamcorper non.', '2025-02-27 17:24:04', '2025-02-27 18:31:03'),
(9, 4, 'Alamat klien', 'Jl. Kejawen No. 82 RT/W 8/19', '2025-02-27 18:38:20', '2025-02-27 18:38:20'),
(11, 5, 'Menu Rekomendasi Mbak Carlotta', 'Pizza olive', '2025-02-27 18:52:25', '2025-02-27 18:52:25'),
(12, 5, 'Reminder', 'bayar roccia topeng yang patah kemarin!!', '2025-02-27 18:53:02', '2025-02-27 18:53:02'),
(13, 4, 'List belanjaan mami', 'kopi\nkemangi\nkentang\nlada (yg ladaku ceunah chef bondan)', '2025-02-27 20:28:21', '2025-02-27 20:28:49'),
(14, 4, 'Pengeluaran', 'sarapan 9k\nbensin 50k', '2025-02-27 20:44:04', '2025-02-27 20:44:04'),
(15, 4, 'tanggal', '10/08/2025', '2025-02-27 20:44:46', '2025-02-27 20:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullName`, `createdAt`, `updatedAt`) VALUES
(1, 'hiuSucipto', '$2b$10$bkNr7iIZAs.WFUoFcIDCXeSitQz2TejWRoywuJ6HTIEa9mTm303Wq', 'Sucipto', '2025-02-26 18:05:05', '2025-02-26 18:33:27'),
(4, 'getWellSoon', '$2b$10$ZIpannP/wzXYGuUNJpx1m.fxxwYaox4jJfAJqBdQC0bBMhzuOgpom', 'Gunawan Septiadi', '2025-02-26 19:38:28', '2025-02-27 20:27:43'),
(5, 'CaptainBrant', '$2b$10$AYpEE2rEvUtLLVrzpLRuK.UOi27ufXN1ATg5E1CZdOWmO3BvpbFfW', 'Brant', '2025-02-27 15:33:30', '2025-02-27 15:33:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
