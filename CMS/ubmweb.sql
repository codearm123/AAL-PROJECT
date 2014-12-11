-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2014 at 07:56 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ubmweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
`id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
`id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(11, 12, 'What is Internet Cepat?', 1, 1, 'Perseroan pada awalnya memiliki kegiatan usaha di bidang perdagangan barang dan jasa. Namun kegiatan usaha Perseroan berubah menjadi di bidang teknologi informasi dan jasa penyelenggaraan internet serta jasa pada umumnya.\nNamun terjadi penambahan kegiatan usaha, sehingga kegiatan usaha Perseroan sampai dengan saat ini adalah bergerak dalam bidang penyelenggaraan jaringan tetap berbasis kabel, jasa TV berlangganan, internet serta jasa konsultasi manajemen bisnis. Perseroan menjalankan bisnis internet dan multimedia demi mewujudkan visi dan misi untuk menjadi perusahaan megamedia di Indonesia.\n\nUntuk sasaran pasar, Perseroan membagi dua sasaran pasar, yaitu pasar konsumen dan pasar bisnis. Untuk pasar konsumen (consumer market), Perseroan menawarkan produk Internet berlabel FastNet, dan produk TV kabel berlangganan berlabel HomeCable. Sedangkan untuk pasar bisnis (business market) Perseroan menawarkan layanan data komunikasi berlabel DataComm, serta produk solusi korporasi lain seperti Media Sales, dan Corporate TV untuk HOTEL.\n\nTerus berkembang dan berinovasi, Perseroan terus mengerahkan kemampuan terbaik di bidang usahanya untuk menjadi yang pertama dan terdepan dalam layanan broadband dan media.\n\n'),
(12, 12, 'Why Internet Cepat?', 2, 1, 'Kami penyedia internet 1Gbps pertama di Indonesia.'),
(15, 14, 'Mengapa internet saya pelan?', 1, 1, 'Kami menjanjikan kecepatan 1 Gbps namun kecepatan tersebut hanya dapat dinikmati dengan hardware yang memadai. Bila Hardware kurang memadai maka anda tidak dapat menikmati kecepatan full 1 Gbps. Segeralah upgrade network interface card anda.'),
(16, 14, 'Kok komputer saya jadi pelan?', 2, 1, 'Karena komputer anda tidak mampu memproses kecepatan super cepat yang kami berikan yaitu 1 Gbps. Segeralah beli komputer yang lebih bagus!!'),
(17, 15, 'Hubungi Kami', 1, 1, 'Alamat:  Universitas Bunda Mulia\r\nTelepon: 123-456-789\r\nE-mail:  Internet_cepat@ubm.com\r\n'),
(18, 15, 'Tinggalkan Pesan', 2, 1, 'aadc'),
(13, 13, 'Ultimate Packet', 1, 1, 'download up to 1Gbps Rp 99.000/month'),
(14, 13, 'Super Packet', 2, 1, 'download up to 500 mbps Rp 50.000/month');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
`urutan` int(11) NOT NULL,
  `nama` char(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
`id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'Home', 1, 1),
(12, 'About Us', 2, 1),
(13, 'Packages', 3, 1),
(14, 'FAQ', 4, 1),
(15, 'Contact Us', 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
 ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
