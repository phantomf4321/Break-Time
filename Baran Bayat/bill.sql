-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2023 at 03:36 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `torfepoo_DB1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_id` varchar(200) NOT NULL DEFAULT current_timestamp(),
  `box_id` varchar(30) NOT NULL,
  `costumer_id` varchar(25) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `unique_id`, `box_id`, `costumer_id`, `visitor_id`, `cost`, `size`, `downloads`, `type`, `time`, `date`) VALUES
(81, '20230713-09:57:19.png', '2023-07-13 09:57:19', '56', '9301085442', 5, '11111', 104620, 0, '0', '09:57:19', '1402/04/22'),
(82, '20230713-10:01:01.png', '2023-07-13 10:01:01', '56', '09301085442', 5, '11111', 104620, 0, 'Ù†Ù‚Ø¯', '10:01:01', '1402/04/22'),
(83, '20230713-10:10:13.png', '2023-07-13 10:10:13', '56', '09301085442', 5, '11111', 104620, 0, 'Ù†Ù‚Ø¯', '10:10:13', '1402/04/22'),
(84, '20230713-10:12:00.png', '2023-07-13 10:12:00', '56', '09301085442', 5, '11111', 104620, 0, 'Ù†Ù‚Ø¯', '10:12:00', '1402/04/22'),
(85, '20230713-10:12:22.png', '2023-07-13 10:12:22', '56', '09301085442', 5, '11111', 104620, 0, 'Ù†Ù‚Ø¯', '10:12:22', '1402/04/22'),
(86, '20230713-10:24:38.png', '2023-07-13 10:24:38', '57', '09301085442', 5, '12000', 104620, 0, 'Ù¾ÙˆØ²Û³', '10:24:38', '1402/04/22'),
(87, '20230713-11:37:02.png', '2023-07-13 11:37:02', '60', '09301085442', 5, '3000', 13844, 0, 'Ú©Ø§Ø±Øª Ø¨Ù‡ Ú©Ø§Ø±Øª', '11:37:02', '1402/04/22'),
(88, '20230713-19:51:40.png', '2023-07-13 18:51:40', '63', '09301085442', 11, '1000', 13844, 0, 'Ù†Ù‚Ø¯', '19:51:40', '1402/04/22'),
(89, '20230713-20:13:15.png', '2023-07-13 19:13:16', '64', '09301085442', 5, '1000', 104620, 0, 'Ù¾ÙˆØ²Û±', '20:13:16', '1402/04/22'),
(90, '20230713-20:17:49.png', '2023-07-13 19:17:49', '65', '09380678403', 5, '2000', 104620, 0, 'Ù¾ÙˆØ²Û´', '20:17:49', '1402/04/22'),
(101, '20230715-08:59:29.jpg', '2023-07-15 07:59:29', '78', '09367505690', 14, '910000', 1749749, 0, 'Ù¾ÙˆØ²Û´', '08:59:29', '1402/04/24'),
(102, '20230715-09:09:49.jpg', '2023-07-15 08:09:50', '79', '09335938197', 14, '910000', 1794283, 0, 'Ù¾ÙˆØ²Û´', '09:09:50', '1402/04/24'),
(103, '20230715-09:19:22.jpg', '2023-07-15 08:19:23', '80', '09352444222', 14, '910000', 1975054, 0, 'Ù¾ÙˆØ²Û´', '09:19:23', '1402/04/24'),
(104, '20230715-09:20:49.jpg', '2023-07-15 08:20:50', '81', '09151041266', 14, '910000', 2087035, 0, 'Ù¾ÙˆØ²Û´', '09:20:50', '1402/04/24'),
(105, '20230715-09:35:27.jpg', '2023-07-15 08:35:28', '82', '09155132802', 14, '910000', 1894971, 0, 'Ù¾ÙˆØ²Û´', '09:35:28', '1402/04/24'),
(106, '20230715-09:51:12.jpg', '2023-07-15 08:51:12', '88', '09054821577', 14, '910000', 2005247, 0, 'Ù¾ÙˆØ²Û´', '09:51:12', '1402/04/24'),
(107, '20230715-10:11:07.jpg', '2023-07-15 09:11:07', '90', '09370803706', 14, '910000', 1820540, 0, 'Ù¾ÙˆØ²Û´', '10:11:07', '1402/04/24'),
(108, '20230715-10:19:27.jpg', '2023-07-15 09:19:27', '92', '09387238257', 14, '910000', 1535800, 0, 'Ù¾ÙˆØ²Û´', '10:19:27', '1402/04/24'),
(110, '20230715-10:38:39.jpg', '2023-07-15 09:38:40', '94', '09352452563', 14, '910000', 1618324, 0, 'Ù¾ÙˆØ²Û´', '10:38:40', '1402/04/24'),
(111, '20230715-10:58:08.jpg', '2023-07-15 09:58:08', '99', '09338936502', 14, '910000', 1518253, 0, 'Ù¾ÙˆØ²Û´', '10:58:08', '1402/04/24'),
(112, '20230715-11:17:23.jpg', '2023-07-15 10:17:24', '103', '09153137598', 14, '910000', 1744095, 0, 'Ù¾ÙˆØ²Û´', '11:17:24', '1402/04/24'),
(113, '20230715-11:26:45.jpg', '2023-07-15 10:26:45', '106', '09363053018', 14, '910000', 1591039, 0, 'Ù¾ÙˆØ²Û´', '11:26:45', '1402/04/24'),
(114, '20230715-11:51:48.jpg', '2023-07-15 10:51:48', '111', '09365230017', 14, '910000', 1910750, 0, 'Ù¾ÙˆØ²Û´', '11:51:48', '1402/04/24'),
(124, '20230716-09:01:34.jpg', '2023-07-16 08:01:34', '130', '09333956665', 14, '910000', 1314092, 0, 'Ù¾ÙˆØ²Û´', '09:01:34', '1402/04/25'),
(126, '20230716-09:13:52.jpg', '2023-07-16 08:13:52', '132', '09150407357', 14, '910000', 1483540, 0, 'Ù¾ÙˆØ²Û´', '09:13:52', '1402/04/25'),
(127, '20230716-09:17:57.jpg', '2023-07-16 08:17:58', '135', '09023175471', 14, '910000', 1518230, 0, 'Ù¾ÙˆØ²Û´', '09:17:58', '1402/04/25'),
(128, '20230716-09:24:46.jpg', '2023-07-16 08:24:47', '136', '09155092596', 14, '100000', 1429398, 0, 'Ù¾ÙˆØ²Û´', '09:24:47', '1402/04/25'),
(129, '20230716-09:33:22.jpg', '2023-07-16 08:33:23', '139', '09036639357', 14, '910000', 1857832, 0, 'Ù¾ÙˆØ²Û´', '09:33:23', '1402/04/25'),
(130, '20230716-09:36:34.jpg', '2023-07-16 08:36:35', '141', '09159515407', 14, '910000', 1529283, 0, 'Ù¾ÙˆØ²Û´', '09:36:35', '1402/04/25'),
(132, '20230716-09:40:47.jpg', '2023-07-16 08:40:47', '142', '09355016970', 14, '910000', 1304346, 0, 'Ù¾ÙˆØ²Û´', '09:40:47', '1402/04/25'),
(133, '20230716-10:10:26.jpeg', '2023-07-16 09:10:26', '148', '09155224421', 19, '910,000', 116874, 0, 'Ù¾ÙˆØ²Û²', '10:10:26', '1402/04/25'),
(135, '20230716-10:19:09.jpg', '2023-07-16 09:19:10', '150', '09153115111', 14, '910000', 1942780, 0, 'Ù¾ÙˆØ²Û´', '10:19:10', '1402/04/25'),
(136, '20230716-10:20:20.jpg', '2023-07-16 09:20:20', '152', '09151221330', 14, '910000', 2179142, 0, 'Ù¾ÙˆØ²Û´', '10:20:20', '1402/04/25'),
(137, '20230716-10:20:57.jpg', '2023-07-16 09:20:57', '154', '09155139981', 21, '1360000', 2827438, 0, 'Ù¾ÙˆØ²Û³', '10:20:57', '1402/04/25'),
(138, '20230716-10:23:37.jpg', '2023-07-16 09:23:37', '155', '09153047063', 14, '910000', 1961079, 0, 'Ù¾ÙˆØ²Û´', '10:23:37', '1402/04/25'),
(139, '20230716-10:52:06.jpeg', '2023-07-16 09:52:06', '160', '09370360099', 19, '210,000', 114594, 0, 'Ù¾ÙˆØ²Û²', '10:52:06', '1402/04/25'),
(140, '20230716-11:04:01.jpg', '2023-07-16 10:04:01', '163', '09157076127', 14, '910000', 1969877, 0, 'Ù¾ÙˆØ²Û´', '11:04:01', '1402/04/25'),
(141, '20230716-11:26:05.jpg', '2023-07-16 10:26:06', '164', '09155143143', 14, '910000', 1932308, 0, 'Ù¾ÙˆØ²Û´', '11:26:05', '1402/04/25'),
(142, '20230716-11:29:51.jpg', '2023-07-16 10:29:51', '166', '09155085411', 14, '910000', 1790528, 0, 'Ù¾ÙˆØ²Û´', '11:29:51', '1402/04/25'),
(143, '20230716-11:35:45.jpeg', '2023-07-16 10:35:45', '165', '09390209107', 19, '910,000', 113395, 0, 'Ù¾ÙˆØ²Û²', '11:35:45', '1402/04/25'),
(144, '20230716-11:46:29.jpeg', '2023-07-16 10:46:29', '167', '09300662089', 19, '910,000', 91075, 0, 'Ù¾ÙˆØ²Û²', '11:46:29', '1402/04/25'),
(145, '20230716-11:51:50.jpg', '2023-07-16 10:51:51', '169', '09156182826', 21, '415000', 2983308, 0, 'Ù¾ÙˆØ²Û³', '11:51:51', '1402/04/25'),
(146, '20230716-11:55:26.jpg', '2023-07-16 10:55:26', '168', '09128263262', 14, '910000', 1475633, 0, 'Ú©Ø§Ø±Øª Ø¨Ù‡ Ú©Ø§Ø±Øª', '11:55:26', '1402/04/25'),
(147, '20230716-11:57:13.jpg', '2023-07-16 10:57:14', '171', '09159224721', 14, '100000', 1846269, 0, 'Ù†Ù‚Ø¯', '11:57:14', '1402/04/25'),
(148, '20230716-12:00:45.jpg', '2023-07-16 11:00:46', '170', '09155199205', 21, '495000', 2828668, 0, 'Ù¾ÙˆØ²Û³', '12:00:46', '1402/04/25'),
(149, '20230716-12:14:18.jpg', '2023-07-16 11:14:19', '172', '09153013925', 21, '1360000', 3041770, 0, 'Ù¾ÙˆØ²Û³', '12:14:19', '1402/04/25'),
(150, '20230716-12:21:22.jpeg', '2023-07-16 11:21:22', '173', '09151028829', 19, '500,000', 64743, 0, 'Ù¾ÙˆØ²Û²', '12:21:22', '1402/04/25'),
(151, '20230716-12:25:24.jpeg', '2023-07-16 11:25:24', '176', '09153094383', 19, '910,000', 109133, 0, 'Ù¾ÙˆØ²Û²', '12:25:24', '1402/04/25'),
(152, '20230716-12:34:04.jpeg', '2023-07-16 11:34:04', '178', '09153166324', 19, '910,000', 120466, 0, 'Ù¾ÙˆØ²Û²', '12:34:04', '1402/04/25'),
(153, '20230716-12:35:18.jpg', '2023-07-16 11:35:19', '177', '09153198216', 21, '1360000', 2804295, 0, 'Ù¾ÙˆØ²Û³', '12:35:19', '1402/04/25'),
(154, '20230716-12:43:49.jpeg', '2023-07-16 11:43:49', '180', '09155076882', 19, '910,000', 82465, 0, 'Ù¾ÙˆØ²Û²', '12:43:49', '1402/04/25'),
(155, '20230716-12:45:57.jpg', '2023-07-16 11:45:58', '181', '09151566875', 21, '865000', 2850073, 0, 'Ù¾ÙˆØ²Û³', '12:45:58', '1402/04/25'),
(156, '20230716-12:49:21.jpeg', '2023-07-16 11:49:21', '182', '09151200225', 19, '910,000', 103422, 0, 'Ù¾ÙˆØ²Û²', '12:49:21', '1402/04/25'),
(157, '20230716-13:01:46.jpeg', '2023-07-16 12:01:46', '184', '09153233454', 19, '500,000', 105974, 0, 'Ù¾ÙˆØ²Û²', '13:01:46', '1402/04/25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
