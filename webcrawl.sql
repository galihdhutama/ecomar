-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2015 at 09:36 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webcrawl`
--
CREATE DATABASE IF NOT EXISTS `webcrawl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webcrawl`;

-- --------------------------------------------------------

--
-- Table structure for table `ar`
--

CREATE TABLE IF NOT EXISTS `ar` (
  `idsc` int(11) NOT NULL AUTO_INCREMENT,
  `id1` varchar(11) NOT NULL,
  `id2` varchar(11) NOT NULL,
  `sup` float NOT NULL,
  `con` float NOT NULL,
  `sc` float NOT NULL,
  PRIMARY KEY (`idsc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `ar`
--

INSERT INTO `ar` (`idsc`, `id1`, `id2`, `sup`, `con`, `sc`) VALUES
(1, 'a', 'b', 1, 1, 1),
(2, 'a', 'c', 0.285714, 1.5, 0.428571),
(3, 'a', 'd', 0, 0, 0),
(4, 'a', 'e', 0, 0, 0),
(5, 'b', 'a', 0, 0, 0),
(6, 'b', 'c', 0.5, 1, 0.5),
(7, 'b', 'd', 0.111111, 2, 0.222222),
(8, 'b', 'e', 0, 0, 0),
(9, 'c', 'a', 0.333333, 1, 0.333333),
(10, 'c', 'b', 0.125, 2, 0.25),
(11, 'c', 'd', 0, 0, 0),
(12, 'c', 'e', 0.0769231, 3, 0.230769),
(13, 'd', 'a', 0, 0, 0),
(14, 'd', 'b', 0, 0, 0),
(15, 'd', 'c', 0, 0, 0),
(16, 'd', 'e', 0.2, 1, 0.2),
(17, 'e', 'a', 0.181818, 1, 0.181818),
(18, 'e', 'b', 0, 0, 0),
(19, 'e', 'c', 0.0833333, 3, 0.25),
(20, 'e', 'd', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `harga` int(11) NOT NULL,
  `pic` text NOT NULL,
  `idsec` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `kategori`, `detail`, `harga`, `pic`, `idsec`) VALUES
(1, 'ACER Liquid C1 - Black - Smart Phone Android', 'Smart Phone Android', 'Intel Atom Z2420 1.2 GHz, 4.3inch IPS LCD capacitive touchscreen, 16M colors, GPRS, EDGE, Bluetooth, Camera, Wi-Fi, Android Ice Cream Sandwich, Touchscreen', 1999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/ACER-Liquid-C1-SKU00313235.jpg', 'a'),
(2, 'ACER Liquid E3 - Titanium - Smart Phone Android', 'Smart Phone Android', '4.7-inch IPS LCD capacitive touchscreen, 16GB Internal, 2GB RAM, GSM/HSDPA, Wi-Fi/Bluetooth, 13 MP + 2.0 MP Camera, Android 4.2.2 Jelly Bean, Mediatek MT6589 Quad Core 1.2 Ghz', 2799000, 'http://s2.bmdstatic.com/Data/thumbnail_product/ACER-Liquid-E3-Titanium-SKU00614854-20140425141415.jpg', 'b'),
(3, 'ACER Liquid Z5 Dual SIM [Z150] - Grey - Smart Phone Android', 'Smart Phone Android', 'Dual-core 1.3 GHz Cortex-A7, 5.0inch TFT capacitive touchscreen, 16M colors, Camera, Video, Audio, Bluetooth, 4 GB, 512 MB RAM, Wi-Fi, Android Jelly Bean, Touchscreen', 1699000, 'http://s1.bmdstatic.com/Data/thumbnail_product/ACER-Z5-[Z150]-Grey-SKU00314750.jpg', 'c'),
(4, 'APPLE iPhone 5c 32GB - Blue - Smart Phone Apple iPhone', 'Smart Phone Apple iPhone', '4.0 inch widescreen Multi-Touch display (Retina Display), 32 Internal, GSM/HSDPA/LTE, Wi-Fi/Bluetooth, 8MP + 1.2MP Camera, iOS 7, Apple A6 Dual-core 1.3 GHz Swift (ARM v7-based)[Special Deal] Free - HARMAN KARDON Onyx Studio Speaker (SKU00514966)', 9999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPhone-5c-32GB-Blue-SKU00114006.jpg', 'd'),
(5, 'APPLE iPhone 5S 16GB - Silver / White - Smart Phone Apple iPhone', 'Smart Phone Apple iPhone', '4.0 inch LED-backlit IPS LCD Capacitive touchscreen, 16GB Internal, GSM/HSDPA/LTE, Wi-Fi/Bluetooth, 8 MP + 1.2 MP Camera, iOS 7, Apple A7 Cyclone Dual-core 1.3GHz[Special Deal] Free - HARMAN KARDON Onyx Studio Speaker (SKU00514966)', 10499000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPhone-5S-16GB-Silver-White-SKU00114081.jpg', 'e'),
(6, 'APPLE iPhone 5S 32GB - Silver / White - Smart Phone Apple iPhone', 'Smart Phone Apple iPhone', '4.0 inch LED-backlit IPS LCD Capacitive touchscreen, 32GB Internal, GSM/HSDPA/LTE, Wi-Fi/Bluetooth, 8 MP + 1.2 MP Camera, iOS 7, Apple A7 Cyclone Dual-core 1.3GHz[Special Deal] Free - HARMAN KARDON Onyx Studio Speaker (SKU00514966)', 11999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPhone-5S-32GB-Silver-White-SKU00114084.jpg', ''),
(7, 'APPLE iPhone 5S 64GB - Gold / White - Smart Phone Apple iPhone', 'Smart Phone Apple iPhone', '4.0 inch LED-backlit IPS LCD Capacitive touchscreen, 64GB Internal, GSM/HSDPA/LTE, Wi-Fi/Bluetooth, 8 MP + 1.2 MP Camera, iOS 7, Apple A7 Cyclone Dual-core 1.3GHz[Special Deal] Free - HARMAN KARDON Onyx Studio Speaker (SKU00514966)', 13599000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPhone-5S-64GB-Gold-White-SKU00114086.jpg', ''),
(8, 'AXIOO Picophone X1 GDS - Smart Phone Android', 'Smart Phone Android', '4.65-inch AMOLED capacitive touchscreen, 4GB Internal, 3G, WiFi/Bluetooth, 8.0 MP + 1.0 Camera, Android Jelly Bean, Quad Core 1.2Ghz Mediatek MT6589', 2799000, 'http://s1.bmdstatic.com/Data/thumbnail_product/AXIOO-Picophone-X1-GDS-SKU00614649-20140417155005.jpg', ''),
(9, 'HP Slate 6 VoiceTab - Smart Phone Android', 'Smart Phone Android', '6-inch HD IPS capacitive touchscreen, 16GB Internal, EDGE/GPRS, WiFi/Bluetooth, 5.0 MP + 2.0 Camera, Android Jelly Bean, Quad Core 1.2Ghz Marvell PXA1088', 2799000, 'http://s2.bmdstatic.com/Data/thumbnail_product/HP-Slate-6-VoiceTab-SKU00614623-20140417100454.jpg', ''),
(10, 'HP Slate 7 VoiceTab - Tablet Android', 'Tablet Android', 'Quad Core 1.2Ghz Marvell PXA1088, 7inch HD IPS capacitive touchscreen, Call, SMS, Camera, Audio, Video, 16 GB eMMC storage, 1 GB RAM, MicroSD, WiFi, Bluetooth, Android Jelly Bean, Touchscreen[Bhinneka Promo] Free - UNEED Universal Case Basic for 7inch Tablet [UCUN7201] - Brown (SKU00914264)', 2699000, 'http://s1.bmdstatic.com/Data/thumbnail_product/HP-Slate-7-VoiceTab-SKU00614611-20140417095948.jpg', ''),
(11, 'HTC Desire 300 - White - Smart Phone Android', 'Smart Phone Android', '1 GHz Qualcomm Snapdragon S4 Dual-core, 4.3inch WVGA screen , 5MP Camera, Audio, Video, Bluetooth, 4 GB, 512 MB RAM, Android Jelly Bean', 2599000, 'http://s1.bmdstatic.com/Data/thumbnail_product/HTC-Desire-300-White-SKU00214586-20140410103426.jpg', ''),
(12, 'LENOVO A269i - Black - Smart Phone Android', 'Smart Phone Android', '3.5 inch HVGA Capacitive Touchscreen, 512 ROM Internal, microSD slot, Dual-SIM GSM/HSDPA, WiFi/Bluetooth, 2MP Camera, Android 2.3 Gingerbread, MT6572 Dual-core 1 GHz', 699000, 'http://s1.bmdstatic.com/Data/thumbnail_product/LENOVO-A269i-Black-SKU00114597.jpg', ''),
(13, 'LENOVO P780 8GB â€“ Deep Black - Smart Phone Android', 'Smart Phone Android', 'MT 6589W Quad-Core 1.2 GHz, Dual Sim, Quad Band, 5.0inch IPS Capacitive Multi-Touch Screen, GPRS, EDGE, HSPA+, Bluetooth, Camera, Audio, Video, 8 GB eMMC Storage, 1 GB RAM, microSD Slot, Wi-Fi, Android Jellybean, Touchscreen[Bhinneka Promo] Free - HP Bluetooth Wireless Headset H3200 [G1Y55AA] - Green (SKU01514519)', 2799000, 'http://s2.bmdstatic.com/Data/thumbnail_product/LENOVO-P780-8GB-â€“-Deep-Black-SKU00014186.jpg', ''),
(14, 'LENOVO Vibe Z [K910] - Silver - Smart Phone Android', 'Smart Phone Android', '5.5 inch IPS LCD Capacitive touchscreen, 16GB Internal + 2 GB RAM, GSM/HSDPA, WiFi/Bluetooth, 13MP + 5MP Camera, Android 4.3 Jelly Bean, Quad-core 2.2GHz.', 3999000, 'http://s2.bmdstatic.com/Data/thumbnail_product/LENOVO-Vibe-Z-[K910]-Silver-SKU00514062.jpg', ''),
(15, 'LG G2 Mini - Black - Smart Phone Android', 'Smart Phone Android', '4.7-inch IPS LCD capacitive touchscreen, 8GB Internal, GSM/ HSDPA, WiFi/ Bluetooth, 8.0 MP + 1.3 MP Camera, Android 4.4 Kitkat, Qualcomm MSM8226 Snapdragon 400 Quad-core 1.2 GHz', 3299000, 'http://s1.bmdstatic.com/Data/thumbnail_product/LG-G2-Mini-Black-SKU00714233-20140505160815.jpg', ''),
(16, 'MITO Fantasy Card A65 - Red - Smart Phone Android', 'Smart Phone Android', '4.5-inch FWVGA IPS capacitive touchscreen, 4GB Internal, GSM/WCDMA/GPRS/HSDPA, WiFi/ Bluetooth, 2 MP + 0.3 MP Camera, Android Jelly Bean, MTK6572 Dual-core 1.2 GHz', 899000, '/Data/thumbnail_product/MITO-Fantasy-Card-A65-Red-SKU00714316-20140506100537.jpg', ''),
(17, 'NOKIA Lumia 925 - Black - Smart Phone Windows Phone', 'Smart Phone Windows Phone', 'Dual-core 1.5 GHz, Quad Band, 4.5inch ClearBlack AMOLED Super Sensitive Touch, 16M colors, GPRS, EDGE, HSDPA, HSUPA, Bluetooth, Camera, Audio, Video, 16 GB, 1 GB RAM, Wi-Fi, Windows Phone 8[Bhinneka Promo] Free - MONSTER Headset (SKU00612304)inchBBM Ready!inch', 6200000, 'http://s1.bmdstatic.com/Data/thumbnail_product/NOKIA-Lumia-925-Black-SKU01513284.jpg', ''),
(18, 'NOKIA X - Bright Green - Smart Phone Android', 'Smart Phone Android', 'Dual Core 1 GHz, 4.0inch IPS LCD capacitive touchscreen,  Dual-SIM, GSM, HSDPA, 3.15 MP Camera, Bluetooth, WI-fi, 4GB, 512MB RAM, FM Radio, Android Jelly Bean, Touchscreen', 1599000, 'http://s2.bmdstatic.com/Data/thumbnail_product/NOKIA-X-Bright-Green-SKU00614194-20140411100230.jpg', ''),
(19, 'NOKIA X - Cyan - Smart Phone Android', 'Smart Phone Android', 'Dual Core 1 GHz, 4.0inch IPS LCD capacitive touchscreen,  Dual-SIM, GSM, HSDPA, 3.15 MP Camera, Bluetooth, WI-fi, 4GB, 512MB RAM, FM Radio, Android Jelly Bean, Touchscreen', 1599000, 'http://s1.bmdstatic.com/Data/thumbnail_product/NOKIA-X-Cyan-SKU00614196-20140411112733.jpg', ''),
(20, 'SAMSUNG Galaxy Grand 2 Duos [G7102] - Black - Smart Phone Android', 'Smart Phone Android', '5.25-inch TFT capacitive touchscreen, 8GB Internal, microSD Slot, EDGE/GPRS/HSPA+, WiFi/Bluetooth, 8 MP + 1.9 MP Camera, Android 4.3  Jelly Bean, 1.2 GHz Quad-core Processor', 3499000, 'http://s2.bmdstatic.com/Data/thumbnail_product/SAMSUNG-Galaxy-Grand-2-Duos-[G7102]-Black-SKU00414551.jpg', ''),
(21, 'SAMSUNG Galaxy Grand Neo - Black - Smart Phone Android', 'Smart Phone Android', '5.0-inch TFT capacitive touchscreen, 8GB Internal, GSM, WiFi/Bluetooth, 5 MP + VGA Camera, Android Jelly Bean, 1.2GHz  Quad-Core', 2699000, 'http://s2.bmdstatic.com/Data/thumbnail_product/SAMSUNG-Galaxy-Grand-Neo-Black-SKU00614673-20140421093705.jpg', ''),
(22, 'SAMSUNG Galaxy Note 3 [N9000] - Rose Gold White - Smart Phone Android', 'Smart Phone Android', 'Quad-core 1.9 GHz & 1.3 GHz, 5.7inch Super AMOLED capacitive touchscreen, 16M colors, Camera, Video, Audio, Bluetooth, 32 GB storage, 3 GB RAM, Wi-Fi, Android Jelly Bean, Touchscreen', 7999000, 'http://s2.bmdstatic.com/Data/thumbnail_product/SAMSUNG-Galaxy-Note-3-[N-9000]-Rose-Gold-White-SKU00214191.jpg', ''),
(23, 'SAMSUNG Galaxy Note 3 Neo [N750] - White - Smart Phone Android', 'Smart Phone Android', '5.5inch Super AMOLED, Quad Core 1.3 GHz + Dual Core 1.7 GHz, 8MP + 2 MP Camera, Bluetooth, Wifi, 16 GB storage, 2 GB RAM, Android Jelly Bean.', 4999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/SAMSUNG-Galaxy-Note-3-Neo-[N750]-White-SKU00514319.jpg', ''),
(24, 'SAMSUNG Galaxy S5 [G900H] - Shimmering White - Smart Phone Android', 'Smart Phone Android', 'Quad-core 1.9 GHz & quad-core 1.3 GHz , 5.1inch Super AMOLED capacitive touchscreen, 16M colors,GPRS, EDGE, HSDPA, Bluetooth, 16MP + 2 MP Camera, 16GB Storage, 2GB RAM, microSD slot, Android 4.4.2 KitKat.', 7499000, 'http://s1.bmdstatic.com/Data/thumbnail_product/SAMSUNG-Galaxy-S5-[G900I]-White-SKU00414308.jpg', ''),
(25, 'V-GEN S1 - Smart Phone Android', 'Smart Phone Android', '5.0-inch Full HD, Touchscreen, 16GB Internal, GSM/GPRS /HSPA/HSDPA, WiFi/Bluetooth, 13 MP + 5 MP Camera, Android 4.2 Jelly Bean, MTK6592 1.7GHZ Eight-Core', 3888000, 'http://s1.bmdstatic.com/Data/thumbnail_product/V-GEN-Zeus-S1-SKU00614653-20140417160200.jpg', ''),
(26, 'ACER Iconia W4-820 - Tablet Windows', 'Tablet Windows', 'Intel Atom Z3740 Quad-core (4 core) 1.33 GHz, 8inch IPS Display 16:10, Bluetooth, Wi-Fi, Intel HD Graphics, Windows 8 OS, higher compatibility with other applications', 5199000, 'http://s2.bmdstatic.com/Data/thumbnail_product/ACER-Iconia-W4-820-(With-Keyboard)-SKU00114769.jpg', ''),
(27, 'APPLE iPad Air 128GB WiFi - Silver - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 128GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 10999000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-128GB-WiFi-Silver-SKU00314073.jpg', ''),
(28, 'APPLE iPad Air 128GB WiFi + Cellular - Silver - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 128GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 12999000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-128GB-WiFi-Cellular-Silver-SKU00314091.jpg', ''),
(29, 'APPLE iPad Air 16GB WiFi - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 16GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 6999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-16GB-WiFi-Space-Gray-SKU00314066.jpg', ''),
(30, 'APPLE iPad Air 32GB WiFi - Silver - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 32GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 8499000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-32GB-WiFi-Silver-SKU00314069.jpg', ''),
(31, 'APPLE iPad Air 32GB WiFi + Cellular - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 32GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 9999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-32GB-WiFi-Cellular-Space-Gray-SKU00314086.jpg', ''),
(32, 'APPLE iPad Air 64GB WiFi - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 64GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 9699000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-64GB-WiFi-Space-Gray-SKU00314070.jpg', ''),
(33, 'APPLE iPad Air 64GB WiFi + Cellular - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based),  9.7inch LED-backlit IPS LCD, Bluetooth, Camera, Audio, Video, 64GB storage, Wi-Fi, iOS 7.0.4, Touchscreen', 11599000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Air-64GB-WiFi-Cellular-Space-Gray-SKU00314088.jpg', ''),
(34, 'APPLE iPad Mini 128 GB With Retina Display Wifi - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio, Video, Wi-Fi, 128GB Storage, iOS 7, Touchscreen', 9899000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-128-GB-With-Retina-Display-Wifi-Space-Gray-SKU00314082.jpg', ''),
(35, 'APPLE iPad Mini 128GB With Retina Display (WiFi + Cellular) - Silver - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio, Video, Wi-Fi + Cellular, 128GB Storage, iOS 7, Touchscreen', 0, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-128GB-With-Retina-Display-(WiFi-Cellular)-Silver-SKU00314074.jpg', ''),
(36, 'APPLE iPad Mini 16 GB With Retina Display Wifi - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio, Video, Wi-Fi, 16GB Storage, iOS 7, Touchscreen', 5699000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-16-GB-With-Retina-Display-Wifi-Space-Gray-SKU00314076.jpg', ''),
(37, 'APPLE iPad Mini 16GB With Retina Display (WiFi + Cellular) - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio, Video, Wi-Fi + Cellular, 16GB Storage, iOS 7, Touchscreen', 7599000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-16GB-With-Retina-Display-(WiFi-Cellular)-Space-Gray-SKU00314064.jpg', ''),
(38, 'APPLE iPad Mini 32 GB With Retina Display Wifi - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio, Video, Wi-Fi, 32GB Storage, iOS 7, Touchscreen', 7199000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-32-GB-With-Retina-Display-Wifi-Space-Gray-SKU00314078.jpg', ''),
(39, 'APPLE iPad Mini 32GB With Retina Display (WiFi + Cellular) - Space Grey - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio,  Video, Wi-Fi + Cellular, 32GB Storage, iOS 7, Touchscreen', 8999000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-With-Retina-Display-(WiFi-Cellular)-32GB-Space-Grey-Black-SKU00014884.jpg', ''),
(40, 'APPLE iPad Mini 64 GB With Retina Display Wifi - Space Gray - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio, Video, Wi-Fi, 64GB Storage, iOS 7, Touchscreen', 8499000, 'http://s1.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-64-GB-With-Retina-Display-Wifi-Space-Gray-SKU00314080.jpg', ''),
(41, 'APPLE iPad Mini 64GB With Retina Display (WiFi + Cellular) - Space Grey - Tablet iOS', 'Tablet iOS', 'Dual-core 1.3 GHz Cyclone (ARM v8-based), 7.9-inch (diagonal) LED-backlit Multi-Touch display with IPS technology (Retina Display), Blutooth, Camera, Audio,  Video, Wi-Fi + Cellular, 64GB Storage, iOS 7, Touchscreen', 10399000, 'http://s2.bmdstatic.com/Data/thumbnail_product/APPLE-iPad-Mini-With-Retina-Display-(WiFi-Cellular)-64GB-Space-Grey-Black-SKU00014886.jpg', ''),
(42, 'AXIOO Picopad 10 3G GJE3 - Tablet Android', 'Tablet Android', 'Quad Core 1.2 Ghz Mediatek MT8389, 9.7inch IPS Capacitive Touchscreen, Camera, Audio, Video, 8 GB ROM, 1 GB RAM, MicroSD, WiFi, Bluetooth, Android Jelly Bean, Touchscreen', 1999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/AXIOO-Picopad-10-3G-GJE3-SKU00614650-20140417155809.jpg', ''),
(43, 'CYRUS GamePad Lily - Tablet Android', 'Tablet Android', '1GHz processor, 8GB Storage, Wi-Fi, Camera, 5.3inch LCD Capacitive , Touchscreen, Android Ice Cream Sandwich, Tv Analog', 1199000, 'http://s2.bmdstatic.com/Data/thumbnail_product/CYRUS-GamePad-Lily-SKU00213745.jpg', ''),
(44, 'HP Slate 7 VoiceTab - Tablet Android', 'Tablet Android', 'Quad Core 1.2Ghz Marvell PXA1088, 7inch HD IPS capacitive touchscreen, Call, SMS, Camera, Audio, Video, 16 GB eMMC storage, 1 GB RAM, MicroSD, WiFi, Bluetooth, Android Jelly Bean, Touchscreen[Bhinneka Promo] Free - UNEED Universal Case Basic for 7inch Tablet [UCUN7201] - Brown (SKU00914264)', 2699000, 'http://s1.bmdstatic.com/Data/thumbnail_product/HP-Slate-7-VoiceTab-SKU00614611-20140417095948.jpg', ''),
(45, 'K-FONE Jupiter LA - Iron Grey - Tablet Android', 'Tablet Android', 'Single core 1GHZ, GPU MALI 400, Capacitive touch screen 7inch, WIFI, Camera, Audio, Video, 4GB ROM, 512MB RAM, Micro SD, Android Ice Cream Sandwich', 699000, 'http://s2.bmdstatic.com/Data/thumbnail_product/K-FONE-Jupiter-LA-Iron-Grey-SKU01713624.jpg', ''),
(46, 'LENOVO A3300 [A7-30] - White - Tablet Android', 'Tablet Android', 'Quad Core 1.3GHz MTK 8382M, 7inchIPS Multi-touch, Call, SMS, Camera, Audio, Video, 8 GB, 1 GB LP DDR2, Wifi, Android 4.2 Jelly Bean, Touchscreen', 1499000, 'http://s1.bmdstatic.com/Data/thumbnail_product/LENOVO-A3300-[A7-30]-White-SKU00514958-20140411160544.jpg', ''),
(47, 'SAMSUNG Galaxy NotePro [SM-P901] - White - Tablet Android', 'Tablet Android', 'Octa Core Processor (1.9GHz Quad + 1.3GHz Quad), 32 GB storage, 3 GB RAM, Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi Direct, Wi-Fi hotspot, Bluetooth V 4.0, microUSB v2.0, 8MP + 2MP Camera, 12.2inch WQXGA TFT LCD capacitive touchscreen, Android 4.4 KitKat', 10999000, 'http://s1.bmdstatic.com/Data/thumbnail_product/SAMSUNG-Galaxy-NotePro-[SM-P901]-White-SKU00314558.jpg', ''),
(48, 'SPEEDUP Tablet Pad 7.85 [TA-7831] - Tablet Android', 'Tablet Android', 'MTK 8389 1.2 GHz Quad-core, 7.85inch Multi-Touch display with IPS technology, Call, SMS, Camera, Audio, Video, Bluetooth, 8 GB, 1 GB RAM, microSD, WiFi, GPS, Android Jelly Bean, Touchscreen', 2499000, 'http://s1.bmdstatic.com/Data/thumbnail_product/SPEEDUP-Tablet-Pad-7-85-[TA-7831]-SKU01513730-20140429111255.jpg', ''),
(49, 'SPEEDUP Tablet Pad 8 - Tablet Android', 'Tablet Android', 'MTK  1.2 GHz Dual Core,   8â€ TFT LCD, Bluetooth, Camera, 4GB Storage, 1GB RAM, microSD Slot, WiFi, 3G, SMS, Touchscreen, Android Jelly BeaninchLimited Stock, consult with your sales for availabilityinch', 1799000, 'http://s2.bmdstatic.com/Data/thumbnail_product/SPEEDUP-Tablet-Pad-8-SKU00313740.jpg', ''),
(50, 'TABULET Troy Duos S - Pure White - Tablet Android', 'Tablet Android', '1.2 Ghz Dual Core Qualcomm USA Snapdragon S4, 7inch HD Capacitive 5 point touch, Built in 3.5G, 2MP Camera, GPS, FM Radio, Bluetooth 3.0, WiFi, Android 4.1 Jelly BeaninchinchLimited, usually on-stock. Consult with your sales for availabilityinchinch', 1499000, 'http://s1.bmdstatic.com/Data/thumbnail_product/TABULET-Troy-Duos-S-Pure-White-SKU00913049.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `idrec` int(11) NOT NULL AUTO_INCREMENT,
  `ab` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `ad` int(11) NOT NULL,
  `ae` int(11) NOT NULL,
  `ba` int(11) NOT NULL,
  `bc` int(11) NOT NULL,
  `bd` int(11) NOT NULL,
  `be` int(11) NOT NULL,
  `ca` int(11) NOT NULL,
  `cb` int(11) NOT NULL,
  `cd` int(11) NOT NULL,
  `ce` int(11) NOT NULL,
  `da` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `dc` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  `ea` int(11) NOT NULL,
  `eb` int(11) NOT NULL,
  `ec` int(11) NOT NULL,
  `ed` int(11) NOT NULL,
  PRIMARY KEY (`idrec`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`idrec`, `ab`, `ac`, `ad`, `ae`, `ba`, `bc`, `bd`, `be`, `ca`, `cb`, `cd`, `ce`, `da`, `db`, `dc`, `de`, `ea`, `eb`, `ec`, `ed`) VALUES
(1, 1, 2, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 2, 2, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `singlerec`
--

CREATE TABLE IF NOT EXISTS `singlerec` (
  `idsingle` int(11) NOT NULL AUTO_INCREMENT,
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  PRIMARY KEY (`idsingle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `singlerec`
--

INSERT INTO `singlerec` (`idsingle`, `a`, `b`, `c`, `d`, `e`) VALUES
(1, 3, 2, 3, 2, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
