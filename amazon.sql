-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 11:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(35) CHARACTER SET utf8 NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(8, 'Hew kao', 'harryden@gmail.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(10) NOT NULL,
  `brand_title` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Amazon'),
(2, 'No Brands');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `product_id` int(50) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `ip_add` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `email`, `qty`, `ip_add`) VALUES
(512, 4, 'aa@email.com', 1, '::1'),
(513, 2, 'aa@email.com', 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'เครื่องดื่มพิเศษ'),
(2, 'เครื่องดื่มสุขภาพ'),
(3, 'กาแฟพรีเมียม'),
(4, 'ชา'),
(5, 'นมและช็อกโกแลต'),
(6, 'น้ำผลไม้'),
(15, 'สินค้าอื่น'),
(17, 'สวกด');

-- --------------------------------------------------------

--
-- Table structure for table `local`
--

CREATE TABLE `local` (
  `local_ID` int(15) NOT NULL,
  `local_name` varchar(30) DEFAULT NULL,
  `province_ID` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `local`
--

INSERT INTO `local` (`local_ID`, `local_name`, `province_ID`) VALUES
(1, 'บางพลี', 1),
(2, 'บางใหญ่', 2),
(3, 'บางปะอิน', 3),
(4, 'ลำลูกกา', 4),
(5, 'ธาตุพนม', 5),
(6, 'ไชยบาดาล', 6),
(7, 'เมืองภูเก็ต', 7),
(8, 'วังสะพุง', 8),
(9, 'หนองจอก', 9),
(10, 'เมือง', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(15) NOT NULL,
  `total_amount` int(30) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `date` datetime NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `total_amount`, `total_price`, `date`, `email`) VALUES
(1, 101, 5135.75, '2021-10-23 00:37:04', 'aa@email.com'),
(2, 1201, 60950.75, '2021-10-23 01:15:34', 'aa@email.com'),
(3, 1, 60.75, '2021-10-23 16:26:20', 'aa@email.com'),
(4, 200, 12150, '2021-10-23 20:14:05', 'aa@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `orderdetail_id` int(10) NOT NULL,
  `address` varchar(90) CHARACTER SET utf8 NOT NULL,
  `cardname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cardnumber` varchar(20) CHARACTER SET utf8 NOT NULL,
  `expdate` varchar(40) CHARACTER SET utf8 NOT NULL,
  `cvv` int(5) NOT NULL,
  `product_id` int(50) NOT NULL,
  `amount` int(30) NOT NULL,
  `price` double NOT NULL,
  `order_id` int(15) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`orderdetail_id`, `address`, `cardname`, `cardnumber`, `expdate`, `cvv`, `product_id`, `amount`, `price`, `order_id`, `email`) VALUES
(268, 'asda asd', 'zxc', '132', '12/22', 415, 2, 100, 5075, 1, 'aa@email.com'),
(269, 'asda asd', 'zxc', '132', '12/22', 415, 3, 1, 60.75, 1, 'aa@email.com'),
(270, 'sdf sdsd', 'liomklm', '456', '12/22', 51, 2, 1, 50.75, 2, 'aa@email.com'),
(271, 'sdf sdsd', 'liomklm', '456', '12/22', 51, 7, 1200, 60900, 2, 'aa@email.com'),
(272, 'SDF SDF', 'sdf', '45', '12/22', 456, 3, 1, 60.75, 3, 'aa@email.com'),
(273, 'asd  sad', 'hi', '1234', '12/22', 4567, 28, 200, 12150, 4, 'aa@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `total_price` double NOT NULL,
  `trx_id` varchar(13) CHARACTER SET utf8 NOT NULL,
  `pay_time` time NOT NULL,
  `pay_date` date NOT NULL,
  `p_status` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `email`, `total_price`, `trx_id`, `pay_time`, `pay_date`, `p_status`) VALUES
(162, 'aa@email.com', 60800.75, 'H485JXP4C18JE', '12:44:53', '2021-10-22', 'complete'),
(163, 'aa@email.com', 5135.75, 'ZZ5UJM5MK9IU7', '00:37:04', '2021-10-23', 'complete'),
(164, 'aa@email.com', 60950.75, '7NGD2ZCCRN1SH', '01:15:34', '2021-10-23', 'complete'),
(165, 'aa@email.com', 60.75, '695Y31TF6EZU4', '16:26:20', '2021-10-23', 'complete'),
(166, 'aa@email.com', 12150, 'ORZYYUIIFLJF7', '20:14:05', '2021-10-23', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_ID` int(15) NOT NULL,
  `place_name` varchar(30) DEFAULT NULL,
  `postcode` int(7) DEFAULT NULL,
  `place_img` text NOT NULL,
  `place_key` text NOT NULL,
  `local_ID` int(15) NOT NULL,
  `tel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_ID`, `place_name`, `postcode`, `place_img`, `place_key`, `local_ID`, `tel`) VALUES
(1, 'Unnamed Road', 10540, '1.jpg', 'บางพลี,สมุทรปราการ', 1, '092-246-6749'),
(2, 'Cafe Amazon ซอยวัดพระเงิน ', 11140, '2.jpg', 'บางใหญ่,นนทบุรี', 2, '092-569-4988'),
(3, 'อยุธยา-เอเชีย ไฮเวย์ กม.55 (St', 13161, '3.jpg', 'บางปะอิน,อยุธยา,พระนครศรีอยุธยา', 3, '084-438-5601 '),
(4, 'follow me', 12150, '4.jpg', 'ลำลูกกา,ปทุมธานี', 4, '061-681-8439 '),
(5, 'Cafe Amazon ศรีนคร ธาตุพนม', 48110, '5.jpg', 'ธาตุพนม,นครพนม', 5, '063-681-1234 '),
(6, 'Cafe Amazon สวนต้นไม้ จ.ลพบุรี', 15230, '6.jpg', 'ไชยบาดาล,ลพบุรี', 6, '064-687-8109 '),
(7, 'คาเฟ่ อเมซอน สวนหลวง (ภูเก็ต)', 83000, '7.jpg', 'เมืองภูเก็ต,ภูเก็ต', 7, '064-060-7028'),
(8, 'Cafe Amazon สาขาตลาดวังสะพุง', 42130, '8.jpg', 'วังสะพุง,เลย', 8, '085-858-8508'),
(9, 'ร้านกาแฟ Cafe Amazon หนองจอก –', 10530, '9.jpg', 'หนองจอก,กรุงเทพมหานคร', 9, '092-253-9291'),
(10, 'คาเฟ่ อเมซอน (อนุสาวรีย์สามกษั', 50200, '10.jpg', 'เมือง,เชียงใหม่', 10, '1-365');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `product_title` varchar(40) CHARACTER SET utf8 NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` varchar(70) CHARACTER SET utf8 NOT NULL,
  `product_image` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`) VALUES
(2, 1, 1, 'precappuccino', 50.75, 2148, 'คาปูชิโนร้อน ผสมนมสดร้อนครึ่งแ', 'precappuccino.png'),
(3, 1, 1, 'precaramelcold', 60.75, 500, 'กาแฟเย็นผสมนมสด หวานละมุน หอมก', 'precaramelcold.png'),
(4, 1, 1, 'precaramelhot', 50.75, 500, 'หัวกาแฟเข้มข้น ผสมนมสดร้อน หวา', 'precaramelhot.png'),
(5, 1, 1, 'precaramelsmoothie', 55, 500, 'กาแฟปั่น รสชาติหวานละมุน หอมนุ', 'precaramelsmoothie.png'),
(6, 1, 1, 'precoolcoffee', 60.75, 500, 'กาแฟเย็นผสมนมสด รสชาติหอม หวาน', 'precoolcoffee.png'),
(7, 1, 1, 'preespresso', 50.75, 500, 'หัวกาแฟรสชาติเข้มข้น ขนาดเล็ก ', 'preespresso.png'),
(8, 1, 1, 'Prelatte', 50.75, 500, 'หัวกาแฟเข้มข้น ผสมนมสดร้อน หัว', 'Prelatte.png'),
(9, 2, 1, 'AmazonFortuneCookies', 60.7400016784668, 500, 'กาแฟปั่นผสมไซรัปกลิ่นคุกกี้ราด', 'AmazonFortuneCookies.png'),
(10, 2, 1, 'amazonGreenlatte', 60.95000076293945, 500, 'สดชื่นไปกับความนุ่มนวลของกาแฟล', 'amazonGreenlatte.png'),
(11, 2, 1, 'Bloodyvelvetchocolate', 60.31999969482422, 500, 'Bloody Velvet Chocolate เครื่อ', 'Bloodyvelvetchocolate.png'),
(12, 2, 1, 'BlueSparkling', 60.66999816894531, 500, 'เติมความซ่าให้ทุกวันของคุณด้วย', 'BlueSparkling.png'),
(13, 2, 1, 'ButterscotchCoffeeLava', 60.36000061035156, 500, 'กาแฟบัตเตอร์สกอตซ์ราดด้วยช็อกแ', 'ButterscotchCoffeeLava.png'),
(14, 2, 1, 'Chocobananalava', 60.75, 500, 'ช็อคโกแลตปั่นราดด้วยช็อกโกแลตห', 'Chocobananalava.png'),
(15, 2, 1, 'Crunchylovepinkymilkyfrappe', 60.75, 500, 'คู่ใหม่หวานใจกรุบ คู่ความอร่อย', 'Crunchylovepinkymilkyfrappe.png'),
(16, 2, 1, 'Hojichabrownjellyfrappe', 60.75, 100, 'ชาเขียวคั่วสไตล์ญี่ปุ่นปั่น เพ', 'Hojichabrownjellyfrappe.png'),
(17, 2, 1, 'Hojicharedbeanfrappe', 60.7578985623, 500, 'ชาเขียวคั่วสไตล์ญี่ปุ่นปั่น รส', 'Hojicharedbeanfrappe.png'),
(18, 2, 1, 'IceCoffeeSoya', 60.75, 500, 'Ice Coffee Soya', 'IceCoffeeSoya.png'),
(19, 2, 1, 'IcedCoffeewithSoyMilk', 60.75, 500, 'เมนูสุขภาพที่ทำจากนมถั่วเหลือง', 'IcedCoffeewithSoyMilk.png'),
(20, 2, 1, 'Iceddarkchocolatewithsoymilk', 60.75, 500, 'ดาร์กช้อคโกแลตเย็นสูตรเจ', 'Iceddarkchocolatewithsoymilk.png'),
(21, 2, 1, 'IcedthaiteawithSoymilk', 60.75, 500, 'เมนูสุขภาพทำจากนมถั่วเหลือง ชา', 'IcedthaiteawithSoymilk.png'),
(22, 2, 1, 'MatchabrownjellyLatte', 60.75, 500, 'มัทฉะนมสดเย็นต้นตำรับญี่ปุ่นแท', 'MatchabrownjellyLatte.png'),
(23, 2, 1, 'NewyearSunrise', 60.75, 500, 'น้ำส้มอเมซอน Sparkling ผสมโซดา', 'NewyearSunrise.png'),
(24, 2, 1, 'orangejuice', 40.75, 500, 'น้ำส้มเขียวหวานผสมเกล็ดส้ม 100', 'orangejuice.png'),
(25, 2, 1, 'PerfectMatchIcedButterflyPea', 60.75, 500, 'คู่หวานมันที่เข้าใจกันดี สัมผั', 'PerfectMatchIcedButterflyPea.png'),
(26, 2, 1, 'Saltedeggdarkchocolate', 60.75, 500, 'ช็อคโกแลตเย็นเข้มขันผสมไซรัป s', 'Saltedeggdarkchocolate.png'),
(27, 2, 1, 'SaltedEggLatte', 60.75, 500, 'กาแฟลาเต้ ผสมไซรัป salted cara', 'SaltedEggLatte.png'),
(28, 3, 1, 'healthblachhoney', 60.75, 500, 'ความหอมของชาดำที่เป็นเอกลักษณ์', 'healthblachhoney.png'),
(29, 3, 1, 'healthdark', 60.75, 500, 'ดื่มด่ำกับช็อกโกแลตเกรดพรีเมี่', 'healthdark.png'),
(30, 3, 1, 'healthfreshlatte', 60.75, 500, 'กาแฟลาเต้สไตล์ คาเฟ่ อเมซอน  น', 'healthfreshlatte.png'),
(31, 3, 1, 'healthfreshmilk', 60.75, 500, 'ความเข้มผสานความหอมของชา สไตล์', 'healthfreshmilk.png'),
(32, 3, 1, 'healthgreentealatte', 60.75, 500, 'ดื่มด่ำกับมัทฉะเกรดพรีเมี่ยม ก', 'healthgreentealatte.png'),
(33, 3, 1, 'healthhoneygreentea', 60.75, 500, 'ดื่มด่ำกับมัทฉะสูตรพรีเมี่ยม ก', 'healthhoneygreentea.png'),
(34, 3, 1, 'lifecoolcoffee', 60.75, 500, 'ดื่มด่ำกับมัทฉะสูตรพรีเมี่ยม ก', 'lifecoolcoffee.png'),
(35, 3, 1, 'lifecoolcoffee', 60.75, 500, 'ความเข้มของกาแฟสไตล์คาเฟ่อเมซอ', 'lifecoolcoffee.png'),
(36, 4, 1, 'blacktea', 50.75, 500, 'ชาดำเย็น จากชาซีลอนแท้ผสมน้ำตา', 'blacktea.png'),
(37, 4, 1, 'coolgreentea', 50.75, 500, 'ชาเขียวนมสดเย็นสูตรพิเศษ ', 'coolgreentea.png'),
(38, 4, 1, 'coolmilktea', 50.75, 500, 'ชานมเย็นสูตรพิเศษ หวานมัน กลมก', 'coolmilktea.png'),
(39, 4, 1, 'honeylemongreentea', 45.75, 500, 'ชาเขียวเย็น ผสมน้ำผึ้งธรรมชาติ', 'honeylemongreentea.png'),
(40, 4, 1, 'hotgreentea', 50.75, 500, 'ชาเขียวนมสดร้อนสูตรพิเศษ ', 'hotgreentea.png'),
(42, 4, 1, 'hottea', 50.75, 500, 'ชาร้อนกลิ่นต่างๆ หอมกลิ่นเฉพาะ', 'hottea.png'),
(43, 4, 1, 'lemontea', 45.75, 500, 'ชามะนาว\r\nทำจากชาซีลอนแท้ผสมน้ำ', 'lemontea.png'),
(44, 4, 1, 'matchagreenteasmoothie', 70.75, 500, 'มัทฉะเกรดพรีเมี่ยม กลมกลมเต็มร', 'matchagreenteasmoothie.png'),
(45, 4, 1, 'smoothiegreentea', 55.75, 500, 'ชาเขียวนมสดปั่นสูตรพิเศษ รสนุ่', 'smoothiegreentea.png'),
(46, 4, 1, 'smoothiemilktea', 55.75, 500, 'ชานมปั่นสูตรพิเศษ เข้มข้น หวาน', 'smoothiemilktea.png'),
(47, 5, 1, 'chocolatesmoothie', 55.75, 500, 'ช็อกโกแลตปั่นสูตรพิเศษ รสชาติห', 'chocolatesmoothie.png'),
(48, 5, 1, 'coolchocolate', 50.75, 500, 'ช็อกโกแลตเย็นสูตรพิเศษ รสชาติห', 'coolchocolate.png'),
(49, 5, 1, 'coolmilk', 50.75, 500, 'นมสดเย็น รสชาติหวานมัน หอมกลิ่', 'coolmilk.png'),
(50, 5, 1, 'hotchocolate', 50.75, 500, 'ช็อกโกแลตร้อนสูตรพิเศษ รสชาติเ', 'hotchocolate.png'),
(51, 5, 1, 'hotmilktea', 50.75, 500, 'นมสดร้อน ได้รสชาติและความหอมขอ', 'hotmilk.png'),
(52, 5, 1, 'milkshake', 55.75, 500, 'นมสดปั่น สดชื่น หวานมัน หอมกลิ', 'milkshake.png'),
(53, 5, 1, 'strawcheesecake', 70.75, 500, 'เครื่องดื่มปั่นรสสตรอเบอร์รี่ ', 'strawcheesecake.png'),
(54, 6, 1, 'KiwiSmoothie', 60.75, 500, 'น้ำกีวี่เข้มข้น หอม หวาน อมเปร', 'KiwiSmoothie.png'),
(55, 6, 1, 'lycheecool', 45.779998779296875, 500, 'น้ำลิ้นจี่ รสชาติเปรี้ยว หวานอ', 'lycheecool.png'),
(56, 6, 1, 'lycheeSmoothie', 60.650001525878906, 500, 'น้ำลิ้นจี่ปั่น รสชาติเปรี้ยว ห', 'lycheeSmoothie.png'),
(57, 6, 1, 'MixberrySmoothie', 60.45000076293945, 500, 'น้ำมิกซ์เบอรี่เข้มข้น  สดชื่นโ', 'MixberrySmoothie.png'),
(58, 6, 1, 'strawberry', 60.36000061035156, 500, 'น้ำสตรอเบอร์รี่เข้มข้น หอม หวา', 'strawberry.png'),
(59, 6, 1, 'yoghurtstraw', 65.95999908447266, 500, 'น้ำสตรอเบอร์รี่ผสมโยเกิร์ต   อ', 'yoghurtstraw.png'),
(60, 15, 2, 'ceramicblack', 159.47000122070312, 300, 'แก้วเซรามิคลายภาพวาดฝีพระหัตถ์', 'ceramicblack.png'),
(61, 15, 2, 'ceramicgold', 159.3300018310547, 300, 'แก้วเซรามิคลายภาพวาดฝีพระหัตถ์', 'ceramicgold.png'),
(62, 15, 2, 'ceramicwhite', 159.32000732421875, 300, 'แก้วเซรามิคลายภาพวาดฝีพระหัตถ์', 'ceramicwhite.png'),
(63, 15, 2, 'glasschangecolor', 299.75, 300, 'แก้วพลาสติกสองชั้นเปลี่ยนสีตาม', 'glasschangecolor.png'),
(64, 15, 2, 'glassgreen', 299.35, 300, 'แก้วพลาสติกใสลวดลายใหม่', 'glassgreen.png'),
(65, 15, 2, 'glasslimitedThailand', 299.7799987792969, 300, 'แก้วเปลี่ยนสี เที่ยวไทย 4 ภาค', 'glasslimitedThailand.png'),
(66, 15, 2, 'glasswhite', 299.75, 300, 'แก้วพลาสติกใสลวดลายใหม่', 'glasswhite.png'),
(67, 15, 2, 'glittertumbler', 79.75, 300, 'แก้วกลิตเตอร์พลาสติก 2 ชั้น (1', 'glittertumbler.png'),
(68, 15, 2, 'keyparrot', 79.75, 100, 'เป็นทั้งไฟฉายและเสียงพูด น่าสะ', 'keyparrot.png'),
(69, 15, 2, 'ombretumbler', 350.75, 100, 'แก้วสเตนเลสไล่สีเก็บความเย็นสุ', 'ombretumbler.png'),
(70, 15, 2, 'pillowmonkey', 239.75, 100, 'สามารถเปลี่ยนจากหมอนรองคอเป็นต', 'pillowmonkey.png'),
(71, 15, 2, 'pillowparrot', 239.75, 100, 'สามารถเปลี่ยนจากหมอนรองคอเป็นต', 'pillowparrot.png'),
(72, 15, 2, 'snoopytumbler', 399.75, 500, '“Cafe Amazon x PEANUTS” แก้วพล', 'snoopytumbler.png'),
(73, 15, 2, 'stainlessblack', 370.75, 500, 'แก้วสแตนเลสลายภาพวาดฝีพระหัตถ์', 'stainlessblack.png'),
(74, 15, 2, 'snowytumbler', 399.75, 500, 'แก้วเก็บความเย็น Limited Editi', 'snowytumbler.png'),
(75, 15, 2, 'stainlessgold', 399.75, 500, 'แก้วสแตนเลสลายภาพวาดฝีพระหัตถ์', 'stainlessgold.png'),
(76, 15, 2, 'stainlesswhite', 399.75, 500, 'แก้วสแตนเลสลายภาพวาดฝีพระหัตถ์', 'stainlesswhite.png'),
(77, 15, 2, 'tumblerspacegray', 499.75, 500, 'Online Exclusive! แก้วสเตนเลสไ', 'tumblerspacegray.png'),
(99, 15, 1, 'zxc', 3000.78, 98, 'asdกด', '1635001224_Screenshot (112).png');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_ID` int(15) NOT NULL,
  `province_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_ID`, `province_name`) VALUES
(1, 'สมุทรปราการ'),
(2, 'นนทบุรี'),
(3, 'พระนครศรีอยุธยา'),
(4, 'ปธุมทานี'),
(5, 'นครพนม'),
(6, 'ลพบุรี'),
(7, 'ภูเก็ต'),
(8, 'เลย'),
(9, 'กรุงเทพมหานคร'),
(10, 'เชียงใหม่');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `first_name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `email` varchar(35) NOT NULL,
  `date` date DEFAULT NULL,
  `password` varchar(15) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`first_name`, `last_name`, `email`, `date`, `password`, `mobile`) VALUES
('wer', 'kml', 'a@email.com', '2021-10-22', 'aa', '123-4567-7'),
('sad', 'asd', 'aa@email.com', '2021-10-22', 'aa', '123-4567-7'),
('asd', 'asdasd', 'ds@email.com', '2021-10-23', 'dd', '123-4567-4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`local_ID`),
  ADD KEY `provience_id` (`province_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderdetail_id`),
  ADD KEY `order_detail_ibfk_2` (`product_id`),
  ADD KEY `order_detail_ibfk_3` (`order_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_ID`),
  ADD KEY `place_ibfk_1` (`local_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`cat_id`),
  ADD KEY `fk_product_brand` (`brand_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `orderdetail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user_info` (`email`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `local`
--
ALTER TABLE `local`
  ADD CONSTRAINT `local_ibfk_1` FOREIGN KEY (`province_ID`) REFERENCES `province` (`province_ID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user_info` (`email`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `order_detail_ibfk_4` FOREIGN KEY (`email`) REFERENCES `user_info` (`email`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user_info` (`email`);

--
-- Constraints for table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `place_ibfk_1` FOREIGN KEY (`local_ID`) REFERENCES `local` (`local_ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
