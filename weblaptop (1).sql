-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 05:30 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weblaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` int(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `level` tinyint(4) DEFAULT '1',
  `avatar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `created_at`, `updated_at`) VALUES
(2, 'nhattuan1610@gmail.com', '45/32/22 Cao Lỗ Phường 4 Quận 8', 'nhattuan1610@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 342951729, 1, 2, NULL, '2020-11-12 05:46:55', '2020-11-12 05:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `home` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `created_at`, `updated_at`) VALUES
(59, 'ACER', 'acer', NULL, NULL, 1, 1, '2020-11-06 04:40:06', '2020-11-12 12:41:20'),
(58, 'ASUS', 'asus', NULL, NULL, 0, 1, '2020-11-06 04:39:54', '2020-11-06 04:57:36'),
(56, 'DELL', 'dell', NULL, NULL, 0, 1, '2020-11-06 04:39:40', '2020-11-12 12:41:21'),
(57, 'HP', 'hp', NULL, NULL, 1, 1, '2020-11-06 04:39:46', '2020-11-19 07:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(20, 10, 28, 5, 41990000, '2020-11-12 07:16:32', '2020-11-12 07:16:32'),
(19, 9, 30, 1, 30490000, '2020-11-11 17:02:34', '2020-11-11 17:02:34'),
(18, 9, 29, 1, 31290000, '2020-11-11 17:02:34', '2020-11-11 17:02:34'),
(17, 9, 28, 3, 41990000, '2020-11-11 17:02:34', '2020-11-11 17:02:34'),
(16, 8, 28, 1, 41990000, '2020-11-11 16:06:34', '2020-11-11 16:06:34'),
(15, 7, 30, 1, 30490000, '2020-11-11 15:54:16', '2020-11-11 15:54:16'),
(14, 7, 29, 1, 31290000, '2020-11-11 15:54:16', '2020-11-11 15:54:16'),
(13, 7, 28, 1, 41990000, '2020-11-11 15:54:16', '2020-11-11 15:54:16'),
(21, 11, 28, 1, 41990000, '2020-11-12 07:21:34', '2020-11-12 07:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT '0',
  `thunbar` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text,
  `number` int(11) NOT NULL DEFAULT '0',
  `head` int(11) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0',
  `pay` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `content`, `number`, `head`, `view`, `hot`, `pay`, `created_at`, `updated_at`) VALUES
(28, 'Dell G5 15 5500', 'dell-g5-15-5500', 41990000, 0, 'dell-g5-5500.jpg', 56, '- CPU: Intel Core i7-10750H\r\n- Màn hình: 15.6" WVA (1920 x 1080)\r\n- RAM: 2 x 8GB DDR4 2933MHz\r\n- Đồ họa: NVIDIA GeForce RTX 2070 8GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 1TB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 68 Wh Pin liền\r\n- Khối lượng: 2.6 kg', 38, 0, 0, 0, 3, NULL, '2020-11-12 07:21:52'),
(29, 'Dell G3 15 3500', 'dell-g3-15-3500', 31290000, 0, 'dell-g3-3500.jpg', 56, '- CPU: Intel Core i7-10750H\r\n- Màn hình: 15.6" TN (1920 x 1080)\r\n- RAM: 2 x 8GB DDR4 2933MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 51 Wh Pin liền\r\n- Khối lượng: 2.6 kg', 47, 0, 0, 0, 1, NULL, '2020-11-11 17:02:51'),
(30, 'Dell Inspiron 15 7501', 'dell-inspiron-15-7501', 30490000, 0, 'dell-inspiron-15-7501.jpg', 56, '- CPU: Intel Core i7-10750H\r\n- Màn hình: 15.6" WVA (1920 x 1080)\r\n- RAM: 8GB Onboard DDR4 2933MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 56 Wh Pin liền\r\n- Khối lượng: 1.8 kg', 47, 0, 0, 0, 1, NULL, '2020-11-11 17:02:51'),
(31, 'Dell Vostro 5370-V5370A', 'dell-vostro-5370-v5370a', 24590000, 0, 'dell-vostro-5370.jpg', 56, '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng )\r\n- Màn hình: 13.3" ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 1 x 8GB DDR4 2400MHz\r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon 530 2GB\r\n- Lưu trữ: 256GB SSD M.2 SATA\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 38 Wh Pin liền , khối lượng: 1.4 kg', 50, 0, 0, 0, 0, NULL, NULL),
(32, 'Dell Inspiron 5379-TI7501W', 'dell-inspiron-5379-ti7501w', 23990000, 0, 'dell-inspiron-5379.jpg', 56, '- CPU: Intel Core i7-8550U ( 1.8 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng )\r\n- Màn hình: 13.3" IPS ( 1920 x 1080 ) , cảm ứng\r\n- RAM: 1 x 8GB DDR4 2400MHz\r\n- Đồ họa: Intel UHD Graphics 620\r\n- Lưu trữ: 1TB HDD 5400RPM\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.7 kg', 50, 0, 0, 0, 0, NULL, NULL),
(33, ' HP OMEN 15-dh0169tx', 'hp-omen-15-dh0169tx', 76990000, 0, 'HP-OMEN-15.jpg', 57, ' - CPU: Intel Core i9-9880H\r\n- Màn hình: 15.6" (1920 x 1080), 240Hz\r\n- RAM: 2 x 8GB DDR4 2666MHz\r\n- Đồ họa: NVIDIA GeForce RTX 2080 8GB GDDR6 / Intel UHD Graphics 630\r\n- Lưu trữ: 512GB SSD M.2 NVMe + 32GB Optane /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 6 cell 70 Wh Pin liền\r\n- Khối lượng: 2.4 kg', 50, 0, 0, 0, 0, NULL, '2020-11-06 15:52:54'),
(34, ' HP EliteBook 745 G5', 'hp-elitebook-745-g5', 34790000, 0, 'HP-EliteBook-745-G5.jpg', 57, ' - CPU: AMD Ryzen 7 2700U ( 2.2 GHz - 3.8 GHz / 4MB / 4 nhân, 8 luồng )\r\n- Màn hình: 14" IPS ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 1 x 8GB DDR4 2400MHz\r\n- Đồ họa: AMD Radeon Vega 10 Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe\r\n- Hệ điều hành: Windows 10 Pro 64-bit\r\n- Pin: 3 cell 50 Wh Pin liền , khối lượng: 1.6 kg', 50, 0, 0, 0, 0, NULL, '2020-11-06 15:52:34'),
(35, ' HP Pavilion Gaming 15', 'hp-pavilion-gaming-15', 33990000, 0, 'HP-Pavilion-Gaming-15.jpg', 57, ' - CPU: Intel Core i7-9750H\r\n- Màn hình: 15.6" IPS (1920 x 1080), 144Hz\r\n- RAM: 1 x 16GB DDR4 2666MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1660Ti 6GBIntel UHD Graphics 630\r\n- Lưu trữ: 512GB SSD M.2 NVMe / 1TB HDD 5400RPM\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 3 cell 53 Wh Pin liền\r\n- Khối lượng: 2.2 kg', 50, 0, 0, 0, 0, NULL, '2020-11-06 15:52:17'),
(36, ' HP ENVY 13', 'hp-envy-13', 29690000, 0, 'HP-ENVY-13.jpg', 57, ' - CPU: Intel Core i7-10510U\r\n- Màn hình: 13.3" IPS (1920 x 1080)\r\n- RAM: 1 x 8GB Onboard DDR4 2400MHz\r\n- Đồ họa: NVIDIA GeForce MX250 2GB GDDR5 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 53 Wh Pin liền\r\n- Khối lượng: 1.3 kg', 50, 0, 0, 0, 0, NULL, '2020-11-06 15:51:59'),
(37, ' HP ENVY X360 13', 'hp-envy-x360-13', 26890000, 0, 'HP-ENVY-X360-13.jpg', 57, ' - CPU: AMD Ryzen 7 3700U ( 2.3 GHz - 4.0 GHz / 4MB / 4 nhân, 8 luồng )\r\n- Màn hình: 13.3" IPS ( 1920 x 1080 ) , cảm ứng\r\n- RAM: 1 x 8GB Onboard DDR4 2400MHz\r\n- Đồ họa: AMD Radeon Vega 10 Graphics\r\n- Lưu trữ: 256GB SSD M.2 NVMe\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell Pin liền , khối lượng: 1.3 kg', 50, 0, 0, 0, 0, NULL, '2020-11-06 15:51:33'),
(39, 'Acer Predator Triton 500', 'acer-predator-triton-500', 79990000, 0, 'Acer-Predator-Triton-500.jpg', 59, '- CPU: Intel Core i7-10875H\r\n- Màn hình: 15.6" (1920 x 1080), 300Hz\r\n- RAM: 2 x 16GB DDR4 2933MHz\r\n- Đồ họa: NVIDIA GeForce RTX 2080 Super 8GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 1TB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 84 Wh Pin liền\r\n- Khối lượng: 2.1 kg', 50, 0, 0, 0, 0, NULL, NULL),
(40, 'Acer Predator Helios 300', 'acer-predator-helios-300', 40990000, 0, 'Acer-Predator-Helios-300.jpg', 59, '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng )\r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 1 x 16GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1060 6GB GDDR5\r\n- Lưu trữ: 256GB SSD M.2 NVMe / 1TB HDD 5400RPM\r\n- Hệ điều hành: Linux\r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 2.6 kg', 50, 0, 0, 0, 0, NULL, NULL),
(41, 'Acer Predator Helios 300', 'acer-predator-helios-300-2019', 44990000, 0, 'Acer-Predator-Helios-300-2019.jpg', 59, '- CPU: Intel Core i7-9750H ( 2.6 GHz - 4.5 GHz / 12MB / 6 nhân, 12 luồng )\r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 2 x 8GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce RTX 2060 6GB GDDR6\r\n- Lưu trữ: 256GB SSD M.2 NVMe\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 59 Wh , khối lượng: 2.4 kg', 50, 0, 0, 0, 0, NULL, NULL),
(42, 'Acer Nitro 7', 'acer-nitro-7', 34990000, 0, 'Acer-Nitro-7.jpg', 59, '- CPU: Intel Core i7-9750H\r\n- Màn hình: 15.6" IPS (1920 x 1080), 144Hz\r\n- RAM: 1 x 8GB DDR4 2400MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1660Ti 6GB GDDR6 / Intel UHD Graphics 630\r\n- Lưu trữ: 256GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 55 Wh Pin liền\r\n- Khối lượng: 2.4 kg', 50, 0, 0, 0, 0, NULL, NULL),
(43, 'Acer Nitro 5', 'acer-nitro-5', 29290000, 0, 'Acer-Nitro-5.jpg', 59, '- CPU: Intel Core i7-10750H\r\n- Màn hình: 15.6" IPS (1920 x 1080)\r\n- RAM: 1 x 8GB DDR4 2933MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1650Ti 4GB GDDR6 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 58 Wh Pin liền\r\n- Khối lượng: 2.3 kg', 50, 0, 0, 0, 0, NULL, NULL),
(44, 'ASUS ROG Zephyrus S', 'asus-rog-zephyrus-s', 54990000, 0, 'ASUS-ROG-Zephyrus-S.jpg', 58, '- CPU: Intel Core i7-9750H\r\n- Màn hình: 15.6" IPS (1920 x 1080), 240Hz\r\n- RAM: 16GB Onboard DDR4 2666MHz\r\n- Đồ họa: NVIDIA GeForce RTX 2060 6GB GDDR6 / Intel UHD Graphics 630\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 76 Wh Pin liền\r\n- Khối lượng: 2 kg', 50, 0, 0, 0, 0, NULL, NULL),
(45, 'ASUS ROG Zephyrus S', 'asus-rog-zephyrus-s', 54990000, 0, 'ASUS-ROG-Zephyrus-Ss.jpg', 58, '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng )\r\n- Màn hình: 15.6" ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 16GB (8GB + 8GB Onboard) DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1060 6GB GDDR5\r\n- Lưu trữ: 512GB SSD M.2 NVMe\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 50 Wh Pin liền , khối lượng: 2.1 kg', 50, 0, 0, 0, 0, NULL, NULL),
(46, 'ASUS ROG Strix SCAR II', 'asus-rog-strix-scar-ii', 39990000, 0, 'ASUS-ROG-Strix-SCAR-II.jpg', 58, '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng )\r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 1 x 8GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1060 6GB GDDR5\r\n- Lưu trữ: 256GB SSD M.2 NVMe\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 66 Wh Pin liền , khối lượng: 2.4 kg', 50, 0, 0, 0, 0, NULL, NULL),
(47, 'ASUS TUF Gaming', 'asus-tuf-gaming', 29990000, 0, 'ASUS-TUF-Gaming.jpg', 58, '- CPU: Intel Core i7-8750H ( 2.2 GHz - 4.1 GHz / 9MB / 6 nhân, 12 luồng )\r\n- Màn hình: 17.3" IPS ( 1920 x 1080 ) , không cảm ứng\r\n- RAM: 1 x 8GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050Ti 4GB GDDR5\r\n- Lưu trữ: 256GB SSD M.2 NVMe / 1TB HDD 5400RPM\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 64 Wh Pin liền , khối lượng: 2.7 kg', 50, 0, 0, 0, 0, NULL, NULL),
(48, 'ASUS ROG Strix G', 'asus-rog-strix-g', 27990000, 0, 'ASUS-ROG-Strix-G.jpg', 58, '- CPU: Intel Core i7-9750H\r\n- Màn hình: 15.6" IPS (1920 x 1080), 120Hz\r\n- RAM: 1 x 8GB DDR4 2666MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 48 Wh Pin liền\r\n- Khối lượng: 2.3 kg', 50, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `note` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(8, 46189000, 6, 1, 'thanh toán 2', '2020-11-11 16:06:34', '2020-11-11 17:02:52'),
(7, 114147000, 6, 1, 'thanh toán', '2020-11-11 15:54:16', '2020-11-11 16:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` int(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `password`, `phone`, `avatar`, `status`, `token`, `created_at`, `updated_at`) VALUES
(6, 'Lê Quang Nhật Tuấn', 'nhattuan1610@gmail.com', '45/32/22 Cao Lỗ Phường 4 Quận 8', 'e10adc3949ba59abbe56e057f20f883e', 342951729, NULL, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
