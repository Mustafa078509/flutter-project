-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 مارس 2022 الساعة 23:55
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profuct`
--

-- --------------------------------------------------------

--
-- بنية الجدول `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `detals` longtext NOT NULL,
  `Price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `cart`
--

INSERT INTO `cart` (`id`, `name`, `image`, `detals`, `Price`) VALUES
(28, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', '', '$30'),
(29, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', '', '$30'),
(30, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', '', '$30'),
(31, 'Beats Fit Pro', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK2J3?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1634663503000', '', '$40'),
(32, 'Beats Fit Pro', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK2J3?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1634663503000', '', '$40'),
(33, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', '', '$30'),
(34, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', '', '$30'),
(35, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', '', '$30');

-- --------------------------------------------------------

--
-- بنية الجدول `headphone`
--

CREATE TABLE `headphone` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `detals` longtext NOT NULL,
  `Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `headphone`
--

INSERT INTO `headphone` (`id`, `name`, `image`, `detals`, `Price`) VALUES
(1, 'HeadPhone bts', 'https://www.bhphotovideo.com/cdn-cgi/image/format=auto,fit=scale-down,width=500,quality=95/https://www.bhphotovideo.com/images/images500x500/msi_ds501headset_ds501_gaming_headset_1447071065_1196800.jpg', 'The black and red DS501 Gaming Headset from MSI features large 40mm drivers for quality audio, a lightweight, self-adjusting headband, soft earpads for comfort, and an adjustable microphone. The 40mm drivers provide detailed reproduction of high, medium, and low frequency audio while its closed, soft pads cushion your ears gently. The closed', '$30'),
(2, 'Beats Fit Pro', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK2J3?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1634663503000', '\r\nDesigned for comfort\r\nBeats Fit Pro is equipped with comfortable, secure-fit wingtips that flex to fit your ear. The universal wingtip design was put to the ultimate test by athletes of all kinds so you can trust these earbuds will stay put through work days and workouts. Complete with pressure-relieving vents, you can comfortably wear these earbuds all day long.', '$40'),
(3, 'Beats Studio Buds', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MJ503?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1621538312000', '\r\nDriven by premium sound\r\nBeats was born to deliver music as the artist intended. Beats Studio Buds are engineered to deliver powerful, balanced sound in a compact design, through an entirely customized acoustic platform. A proprietary, dual-element diaphragm driver resides within a two-chamber housing, resulting in clear sound with outstanding stereo separation. An advanced digital processor then optimizes audio performance for loudness and clarity, while simultaneously ensuring clean noise-cancellation. The result — immersive sound that pulls the emotion of music from the studio to your ears to keep you going all day long.', '$40'),
(4, 'Beats Flex-yuzu ', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MYMD2?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1601053181000', '\r\nMagnetic earbuds with Auto-Play/Pause¹\r\nCustom acoustic platform delivers premium sound with accurate bass and low distortion\r\nBuilt-in microphone with wind reduction for elevated voice clarity\r\nUp to 12 hours of listening time²\r\nAll-day comfort with Flex-Form cable and four eartip options\r\nPowered by the Apple W1 chip for seamless connectivity³\r\nAudio Sharing lets you wirelessly share audio with another pair of Beats headphones or AirPods⁴\r\n10-minute Fast Fuel charging gives 1.5 hours of playback²\r\nClass 1 Bluetooth® for extended range and fewer dropouts\r\nOn-device controls for volume, track and call controls located on the left side of neckband housing\r\nPower button located on the right side of neckband housing\r\nKeep track of your Beats Flex using Find My5', '$12'),
(5, 'EarPods with Lightning Connector', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMTN2?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1473703488187', 'Designed by Apple\r\nDeeper, richer bass tones\r\nGreater protection from sweat and water\r\nControl music and video playback\r\nAnswer and end calls', '$19.00'),
(6, 'Powerbeats Pro ', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MY582?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1604515400000', '\r\nTotally wireless high-performance earphones\r\n\r\nUp to 9 hours of listening time (more than 24 hours with charging case)\r\n\r\nAdjustable, secure-fit earhooks for lightweight comfort and stability\r\n\r\nReinforced design for IPX4-rated sweat and water resistance during tough workouts5\r\n\r\nVolume and track controls on each earbud, voice capability and Auto Play/Pause\r\n\r\nPowerful, balanced sound with dynamic range and noise isolation\r\n\r\n“Hey Siri” hands-free voice² and improved connection speed³ via the Apple H1 headphone chip\r\n\r\nEarbuds connect independently via Class 1 Bluetooth for extended range and fewer dropouts\r\n\r\nWith Fast Fuel, a 5-minute charge gives 1.5 hours of playback when battery is low¹\r\n\r\nEnhanced phone call performance and call handling from either earbud\r\n\r\nKeep track of your Powerbeats Pro using Find My6', '$200'),
(7, 'HeadPhone bts', '', '\r\nTotally wireless high-performance earphones\r\n\r\nUp to 9 hours of listening time (more than 24 hours with charging case)\r\n\r\nAdjustable, secure-fit earhooks for lightweight comfort and stability\r\n\r\nReinforced design for IPX4-rated sweat and water resistance during tough workouts5\r\n\r\nVolume and track controls on each earbud, voice capability and Auto Play/Pause\r\n\r\nPowerful, balanced sound with dynamic range and noise isolation\r\n\r\n“Hey Siri” hands-free voice² and improved connection speed³ via the Apple H1 headphone chip\r\n\r\nEarbuds connect independently via Class 1 Bluetooth for extended range and fewer dropouts\r\n\r\nWith Fast Fuel, a 5-minute charge gives 1.5 hours of playback when battery is low¹\r\n\r\nEnhanced phone call performance and call handling from either earbud\r\n\r\nKeep track of your Powerbeats Pro using Find My6', '30$');

-- --------------------------------------------------------

--
-- بنية الجدول `keyboard`
--

CREATE TABLE `keyboard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `detals` longtext NOT NULL,
  `Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  `detals` longtext NOT NULL,
  `Price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `detals`, `Price`) VALUES
(3, 'Head phone', 'https://alitools.io/en/showcase/image?url=https%3A%2F%2Fae01.alicdn.com%2Fkf%2FU7e50e6fe5f264caa9e66a8af0a8661f5e.jpg', 'AirPods pro 1: 1 headphones Wireless Suite copy 2020G AirPods pro Lux Copy 1 in1', '$255'),
(4, 'HeadPhone bts', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKd_2kb0BmffmHW7Q9cHY29DY2j6j2jujvQ&usqp=CAU', 'Product Description\r\nKey Features\r\n\r\nCorded option for MP3 players etc\r\nBluetooth\r\nBattery up 4 hours of music time\r\nExtra audio enhancement with Power bass\r\nFm player\r\nConvenient carrying style\r\nSupport Micro SD Card', '$20'),
(5, 'Headphone wirless', 'https://shopse.pk/wp-content/uploads/2019/09/buy-best-quality-beats-x-bluetooth-headset-copy-replica-at-lowest-price-in-pakistan-2.jpg', '', '$30'),
(6, 'Cover', 'https://image.made-in-china.com/43f34j00fvtawTHyaNrI/Triple-Security-Protected-Mobile-Phone-Protection-Case-for-iPhone-5-with-Clip.jpg', 'Triple Security Protected Mobile Phone Protection Case for iPhone 5 with Clip\r\n', '$8'),
(7, 'Stand Phone', 'https://rukminim1.flixcart.com/image/416/416/kbxzbm80/mobile-holder/u/8/b/foldable-portable-desktop-stand-for-phone-tablets-home-turf-original-imaft6zycf2zzmfe.jpeg?q=70', 'Stand phone c white color ', '$5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headphone`
--
ALTER TABLE `headphone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyboard`
--
ALTER TABLE `keyboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `headphone`
--
ALTER TABLE `headphone`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keyboard`
--
ALTER TABLE `keyboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
