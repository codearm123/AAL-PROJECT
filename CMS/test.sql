-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2014 at 02:33 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `hashed_password`) VALUES
(4, 'semoga', '$2a$10$Salt22CharacterOrMoreexuq5UU9t0PtU13HUdKZaDD1auSsUhee'),
(5, 'admin', '$2a$10$MWE0M2UyNWM5ZjgyYzEyM.ORpuewHow2hwKxi2gGlnIuPRVs5vA3u');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(11, 12, 'What is Internet Cepat?', 1, 1, 'Perseroan pada awalnya memiliki kegiatan usaha di bidang perdagangan barang dan jasa. Namun kegiatan usaha Perseroan berubah menjadi di bidang teknologi informasi dan jasa penyelenggaraan internet serta jasa pada umumnya.\r\nNamun terjadi penambahan kegiatan usaha, sehingga kegiatan usaha Perseroan sampai dengan saat ini adalah bergerak dalam bidang penyelenggaraan jaringan tetap berbasis kabel, jasa TV berlangganan, internet serta jasa konsultasi manajemen bisnis. Perseroan menjalankan bisnis internet dan multimedia demi mewujudkan visi dan misi untuk menjadi perusahaan megamedia di Indonesia.\r\n\r\nUntuk sasaran pasar, Perseroan membagi dua sasaran pasar, yaitu pasar konsumen dan pasar bisnis. Untuk pasar konsumen (consumer market), Perseroan menawarkan produk Internet berlabel FastNet, dan produk TV kabel berlangganan berlabel HomeCable. Sedangkan untuk pasar bisnis (business market) Perseroan menawarkan layanan data komunikasi berlabel DataComm, serta produk solusi korporasi lain seperti Media Sales, dan Corporate TV untuk HOTEL.\r\n\r\nTerus berkembang dan berinovasi, Perseroan terus mengerahkan kemampuan terbaik di bidang usahanya untuk menjadi yang pertama dan terdepan dalam layanan broadband dan media.\r\n\r\n'),
(12, 12, 'Why Internet Cepat?', 2, 1, 'Visi dan misi Perseroan adalah menjadi penyedia jasa televisi berlangganan dan jasa layanan internet broadband berkecepatan tinggi di Indonesia dengan layanan dan solusi inovatif. Untuk mewujudkan visi dan misi ini, Perseroan mengoperasikan sistem kabel dua arah Hybrid Fiber Optic Coaxial Cable (”HFC”) dimana sistem tersebut merupakan teknologi yang menggunakan kabel serat optik dan kabel coaxial yang dapat digunakan sebagai media untuk menyalurkan program-program TV dan sebagai media bagi bandwidth yang besar yang dapat digunakan tidak hanya layanan internet tapi juga pengiriman data digital lainnya, seperti High Definition TV, 3D High Definition TV, Video on Demand, Home Banking, Home Shopping dan Interactive Games.\n\nSaat ini Perseroan menjadi penyedia jasa televisi berlangganan dan jasa layanan internet broadband berkecepatan tinggi di Indonesia yang mengoperasionalkan sistem kabel Hybrid Fiber Coaxial (“HFC”) dengan teknologi tinggi dan mampu mengoperasikan 860 MHz two-way broadband services. Perseroan telah memiliki jaringan lebih dari 1.312.970 home-passed terbentang di wilayah Jabodetabek, Bandung, Surabaya dan Bali.'),
(13, 13, 'Ultimate Packet', 1, 1, 'download up to 1Gbps Rp 99.000/day'),
(14, 13, 'Super Packet', 2, 1, 'download up to 500 mbps Rp 50.000/day');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'Home', 1, 1),
(12, 'About Us', 2, 1),
(13, 'Packages', 3, 1),
(14, 'FAQ', 4, 1),
(15, 'Contact Us', 5, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
