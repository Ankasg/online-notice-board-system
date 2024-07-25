-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 01:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notice`
--
CREATE DATABASE IF NOT EXISTS `notice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `notice`;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `i` int(22) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`i`, `notice_id`, `user`, `subject`, `Description`, `Date`) VALUES
(0, 4, 'niki@gmail.com', 'Hello', 'user how areyou.....', '2016-06-29 12:07:19'),
(0, 6, 'niki@gmail.com', 'adfdfdfdfd', 'bbbbbbbb', '2016-07-31 15:38:35'),
(0, 7, 'ravi@gmail.com', 'adfdfdfdfd', 'aaaaaaaaaaaaaa', '2016-07-31 15:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` varchar(8) NOT NULL,
  `mobile` int(10) NOT NULL,
  `gender` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `gender`) VALUES
(15, 'prathu', 'gvkjqs@gmail.com', 'jaggi', 561658456, 'mal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `online_notice`
--
CREATE DATABASE IF NOT EXISTS `online_notice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `online_notice`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user`, `subject`, `Description`, `Date`) VALUES
(4, 'niki@gmail.com', 'Hello', 'user how areyou.....', '2016-06-29 12:07:19'),
(6, 'niki@gmail.com', 'adfdfdfdfd', 'bbbbbbbb', '2016-07-31 15:38:35'),
(7, 'ravi@gmail.com', 'adfdfdfdfd', 'aaaaaaaaaaaaaa', '2016-07-31 15:38:35'),
(8, 'prajju@123', 'parent meetiing', '5uw4tewrhweth', '2023-01-17 10:27:47'),
(9, 'prajju@123', 'asdfgh', 'qwedfgh', '2023-01-17 12:19:09'),
(10, 'p@p', 'pppppp', 'poiuytrewqazxcvghjklmnbvcxz', '2023-01-17 17:52:45'),
(11, 'p@p', 'jhgiyu', 'jhjyut', '2023-01-17 19:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `id` int(4) NOT NULL,
  `notif` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`id`, `notif`) VALUES
(5, 'hgfdsaqwertyuio'),
(7, 'DUE TO 7TH SEMISTER FINAL YEAR EXAMS, THIRD TEST SCHEDULED ON 19TH TO 21 ST FOR 5TH SEMISTER HAS BEEN RESCHEDULED ON 18TH, 20TH AND 21ST'),
(8, 'this is new notice'),
(9, 'i love you');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` datetime NOT NULL,
  `regid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(8, 'ravivvvv', 'ravi@gmail.com', '63dd3e154ca6d948fc380fa576343ba6', 878787, 'm', 'reading,singin', 'Lighthouse.jpg', '1966-09-15 00:00:00', 2147483647),
(12, 'prajwal A A', 'prajju@123', 'af4fda668457b70f06393cb4f02cd414', 7760275147, 'm', 'reading,singin,playing', 'WIN_20230116_16_28_10_Pro.jpg', '0000-00-00 00:00:00', 2147483647),
(13, 'parthu', 'p@p', 'c483f6ce851c9ecd9fb835ff7551737c', 9876, 'm', 'reading,singin,playing', 'WIN_20230116_10_29_47_Pro.jpg', '2001-01-15 00:00:00', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `onmpdb`
--
CREATE DATABASE IF NOT EXISTS `onmpdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onmpdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-01 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(1, 'Milk', '2019-10-12 05:23:29'),
(2, 'Curd', '2019-10-12 05:23:43'),
(3, 'Ghee', '2019-10-12 05:24:00'),
(4, 'Butter milk', '2019-10-12 05:24:17'),
(5, 'Milk powder', '2019-10-12 05:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ID` int(10) NOT NULL,
  `OrderNumber` varchar(200) DEFAULT NULL,
  `UserID` int(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `FlatNo` varchar(50) DEFAULT NULL,
  `StreetName` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Landmark` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Zipcode` int(10) NOT NULL,
  `State` varchar(200) NOT NULL,
  `OrderDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT NULL,
  `payType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ID`, `OrderNumber`, `UserID`, `FullName`, `ContactNumber`, `FlatNo`, `StreetName`, `Area`, `Landmark`, `City`, `Zipcode`, `State`, `OrderDate`, `Status`, `payType`) VALUES
(9, '253971675', 4, 'Test2', 7897777797, 'F-789', 'Mayur Vihar Ph-1', 'Mayur Vihar', 'Near Shiv Mandir', 'New Delhi', 110096, 'New Delhi', '2020-04-08 06:11:14', 'Cancelled', 'Cash on Delivery'),
(10, '368116033', 4, 'Test2', 7987897798, 'F-789', 'Kanji', 'Mayur Vihar Ph-1', 'Near Relaince Fresh', 'Delhi', 110096, 'Delhi', '2020-04-08 06:27:11', 'Delivered', 'Cash on Delivery'),
(11, '543140442', 4, 'Anuj', 4253463434, 'BC 414', 'XYZ Strret', 'ABC', 'Cricket Stadium', 'New Delhi', 100001, 'New Delhi', '2020-05-07 08:46:25', 'Confirmed', 'Cash on Delivery'),
(12, '221850996', 5, 'Anuj kumar', 7545454545, '3423 XYZ', 'BAC Street', 'New Delhi', 'Crikcet stadium', 'New Delhi', 110001, 'New Delhi', '2020-05-07 08:54:25', 'Delivered', 'Cash on Delivery'),
(13, '320674547', 5, 'Anuj', 1236547890, '34534 XYZ', 'ABC Street', 'Noida', 'NA', 'Noida', 201301, 'UP', '2022-03-09 16:50:49', 'Confirmed', 'Cash on Delivery'),
(14, '849399829', 6, 'Joh Die', 4758963254, 'J 32423', 'HGshg', 'XYZ', 'ABC', 'Noida', 3201301, 'UP', '2022-03-27 09:53:18', 'Delivered', 'Cash on Delivery'),
(15, '294194717', 7, 'dfgh', 345678, 'efghj', 'msdf', 'sdfg', 'dfg', 'dfg', 5645, 'dfghj', '2023-01-19 17:35:28', 'Confirmed', 'Cash on Delivery'),
(16, '394833787', 8, 'prathyaksha AA', 8762568934, 'hassan', 'qwe', 'hassan', 'hassan', ';lkjhg09876', 9876, 'karnataka', '2023-01-21 11:50:25', 'Confirmed', 'Cash on Delivery'),
(17, '527668005', 8, 'prathyaksha AA', 8762568934, 'trs', 'uyfuk', 'jyf', 'hgfc', ';lkjhg09876', 9876, 'ytrdxcv', '2023-01-21 11:52:16', NULL, 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdetails`
--

CREATE TABLE `tblorderdetails` (
  `id` int(11) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `OrderNumber` bigint(12) DEFAULT NULL,
  `ProductId` int(10) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT NULL,
  `ProductQty` int(10) DEFAULT NULL,
  `OrderDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderdetails`
--

INSERT INTO `tblorderdetails` (`id`, `UserId`, `OrderNumber`, `ProductId`, `ProductPrice`, `ProductQty`, `OrderDate`) VALUES
(4, 3, 989645529, 3, NULL, 1, '2020-03-30 14:51:31'),
(5, 3, 989645529, 22, NULL, 1, '2020-03-30 14:51:31'),
(6, 3, 989645529, 15, NULL, 1, '2020-03-30 14:51:31'),
(7, 3, 268223761, 5, NULL, 1, '2020-04-01 14:11:42'),
(8, 3, 268223761, 6, NULL, 1, '2020-04-01 14:11:42'),
(9, 3, 572683925, 19, NULL, 1, '2020-04-01 14:44:01'),
(10, 3, 603822506, 7, NULL, 1, '2020-04-01 14:51:25'),
(11, 3, 466336049, 4, NULL, 1, '2020-04-03 07:25:35'),
(12, 4, 253971675, 5, NULL, 1, '2020-04-08 06:11:14'),
(13, 4, 253971675, 16, NULL, 1, '2020-04-08 06:11:14'),
(14, 4, 368116033, 4, NULL, 1, '2020-04-08 06:27:12'),
(15, 4, 543140442, 3, NULL, 1, '2020-05-07 08:46:25'),
(16, 5, 221850996, 3, NULL, 1, '2020-05-07 08:54:26'),
(17, 5, 221850996, 22, NULL, 2, '2020-05-07 08:54:26'),
(18, 5, 320674547, 6, NULL, 1, '2022-03-09 16:50:50'),
(19, 6, 849399829, 19, NULL, 1, '2022-03-27 09:53:19'),
(20, 6, 849399829, 3, NULL, 1, '2022-03-27 09:53:19'),
(21, 7, 294194717, 5, NULL, 1, '2023-01-19 17:35:28'),
(22, 8, 394833787, 5, NULL, 1, '2023-01-21 11:50:25'),
(23, 8, 527668005, 5, NULL, 1, '2023-01-21 11:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div class=\"head\" style=\"color: rgb(33, 37, 41); font-family: \" exo=\"\" 2\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h4 style=\"margin-bottom: 15px; line-height: 1.2; color: rgba(0, 0, 0, 0.66); font-size: 36px;\">About</h4></div><div class=\"content\" style=\"color: rgb(33, 37, 41); font-family: \" exo=\"\" 2\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"><div class=\"col-12 col-lg-12 col-md-12 col-sm-12\" style=\"width: 870px; -webkit-box-flex: 0; flex: 0 0 100%; max-width: 100%;\"><p style=\"margin-bottom: 1rem; line-height: 1.5; color: rgb(60, 60, 60);\">We are the pioneers in home retail in India. We started our journey in 2007 with our first store in Noida as a one-stop shop destination for home solutions. We offer a clearly defined home offering with a wide assortment in furniture, homeware, customised solutions in kitchen and wardrobes and home improvement. We strive to add value to our customers by providing personalised interior design consultation and services for homes and offices. We extended our presence online in 2016 with a specially curated assortment of product offering catering to the specific needs of the new-age online customers.</p><p style=\"margin-bottom: 1rem; line-height: 1.5; color: rgb(60, 60, 60);\">Today we have a strong presence with 49 stores across 28 cities. Our expansion plan is long-term and we plan to grow both online and new stores across in existing and new markets. We want to offer great quality home products and services to as many people as possible.</p></div></div></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'test@test.com', 8529631236, '2019-10-16 10:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ID` int(10) NOT NULL,
  `ProductID` varchar(120) NOT NULL,
  `CatID` int(5) DEFAULT NULL,
  `SubCatid` int(5) DEFAULT NULL,
  `ProductTitle` varchar(120) DEFAULT NULL,
  `RegularPrice` varchar(120) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Availability` varchar(50) NOT NULL,
  `PDesc` mediumtext DEFAULT NULL,
  `SalePrice` varchar(120) DEFAULT NULL,
  `Image` varchar(120) NOT NULL,
  `Image1` varchar(120) NOT NULL,
  `Image2` varchar(120) NOT NULL,
  `Image3` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ID`, `ProductID`, `CatID`, `SubCatid`, `ProductTitle`, `RegularPrice`, `Quantity`, `Availability`, `PDesc`, `SalePrice`, `Image`, `Image1`, `Image2`, `Image3`, `CreationDate`) VALUES
(3, '605319160', 1, 2, 'Alba 3 Seater Sofa in Navy Blue Colour by Woodsworth', '42186', 6, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label that’s part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nModern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details & compact proportions. These sofas can be with or without arms.\r\nDETAILS\r\n\r\nBrand: Woodsworth\r\n\r\nDimensions: H 33.7 x W 71.5 x D 31.5; Seating Height-17; Seating Depth : 22\r\n(all dimensions in inches)\r\n\r\nWeight: 50 KG\r\n\r\nPrimary Material: Fabric\r\n\r\nRoom Type: Living Room\r\n\r\nCollection: Alba\r\n\r\nHeight: 34.0 inches\r\n\r\nWidth: 72.0 inches\r\n\r\nDepth: 32.0 inches\r\n\r\nSeating Height: 17', '31426', 'e3168eaa92b6b2f8b1f94b77cc1cd9781585982487.jpg', 'e29602c48623aa8fec8530eb8c3253381571121368.jpg', '2e893e74252a8bcf69015a1519e71c031571121368.jpg', 'db59b22a2c12c5a6c037ddfbf15c3d051571121368.jpg', '2019-10-15 06:36:08'),
(4, '740805918', 1, 4, 'Amelia 3 Seater Sofa in Navy Blue Colour by CasaCraft', '41000', 7, 'Instock', 'OVERVIEW\r\n\r\nCasacraft offers the best in comfort with élan. The collections are a series of modern trendy designs, simple yet striking and represent the ideals of minimalism. The designs are a perfect blend of functionality and exceptional aesthetics. Each piece is crafted with passion and follows international standards on quality and style.\r\n\r\nModern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details & compact proportions. These sofas can be with or without arms.\r\n\r\nDimensions: H 34.5 x W 64 x D 31; Seating Height-18.5 (All Dimension in Inches)\r\n\r\nWeight: 32.5 KG\r\n\r\nPrimary Material: Fabric\r\n\r\nRoom Type: Living Room\r\n\r\nCollection: Amelia\r\n\r\nHeight: 35.0 inches\r\n\r\nWidth: 64.0 inches\r\n\r\nDepth: 31.0 inches\r\n\r\nSeating Height: 19', '36000', 'a5385c65ebe661368905be727f5f41bf1571122321.jpg', 'fd0f594b38967915621135a9102ecccc1571122321.jpg', '028e7f21936642561d9bfa6e705bdada1571122321.jpg', 'af11c8fd6b813600deeb6148255ccc5b1571122321.jpg', '2019-10-15 06:52:01'),
(5, '422977631', 2, 6, 'Coffee Table Walnut in Finish by F9 Furnichair', '17000', 8, 'Instock', 'F9 Furniture, we take pride in offering you the finest quality furniture along with an extensive selection of customization furniture accessories that is not only certain to fit your unique taste and style, but will last for generations.\r\n\r\nCoffee Tables are low tables used in living room spaces placed in the centre of seating furniture. Used for drinks, flowers, and is a general table for placing items.\r\nDimensions: H 15.7 x W 29.5 x D 25.59, (all dimensions in inches)\r\n\r\nWeight: 21.5 KG\r\n\r\nPrimary Material: Steam Beech Wood\r\n\r\nRoom Type: Living Room\r\n\r\nHeight: 16.0 inches\r\n\r\nWidth: 30.0 inches\r\n\r\nDepth: 26.0 inches\r\n\r\nTop Material: Glass', '14000', '1e5c3acbeac8756676125e094019db551571123225.jpg', 'c3c423b8e13b7f33a0ad8cac8de599da1571123225.jpg', '2e2ec36fce6201606227cf3813e4a5c31571123225.jpg', '4d7774aa9fc83e59a4ba8d0f3ecd9d8e1571123225.jpg', '2019-10-15 07:07:05'),
(6, '406096822', 2, 7, 'Takeo Dressing Table with Stool in Walnut Finish by Mintwud', '15000', 10, 'Instock', 'OVERVIEW\r\n\r\nMintwud is a classic amalgamation of form and function. Crafted for compact homes, the range is clean and convenient and has an understated design aesthetic that adapts to any space.\r\n\r\nADressing Unit is a piece of furniture that combines vanity storage and dressing mirror in one unit.\r\n\r\nDimensions: H 65.2 x W 35.4 x D 17.4; Stool : H 16.1 x W 14 x D 11.6\r\n(all dimensions in inches)\r\n\r\nWeight: 31 KG\r\n\r\nPrimary Material: Engineered Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nHeight: 66.0 inches\r\n\r\nWidth: 36.0 inches\r\n\r\nDepth: 18.0 inches', '11000', 'd2bf1278616b104154a267f63afd1f921571123507.jpg', '62d452a2aa446f1f4411739f422e9f9f1571123507.jpg', '55e3ec3cd4ddc0d053fa6529c3eca42c1571123507.jpg', '0249b706077647b8d1c8f895e7bd362d1571123507.jpg', '2019-10-15 07:11:47'),
(7, '829527247', 2, 31, 'Florito Solid Wood Dresser in Honey Oak Finish by Woodsworth', '24000', 12, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label that’s part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nA Dresser is a dressing table that has chest of drawers as the base and usually a mirror on the top.\r\nDimensions: Mirror : H 46 x W 16 x D 1.2; Table : H 22 x W 16 x D 13\r\n(all dimensions in inches)\r\n\r\nWeight: 22 KG\r\n\r\nColour: Honey Oak\r\n\r\nPrimary Material: Sheesham Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nCollection: Florito\r\n\r\nHeight: 46.0 inches\r\n\r\nWidth: 16.0 inches\r\n\r\nDepth: 13.0 inches', '17000', 'f8e70f6b7256e187103d79c9a82037761571124510.jpg', 'a81c6e0e813c0c8c6d0bdb91d33975b21571124510.jpg', '41f28c0c003563b49ac1685b30fa6bdb1571124510.jpg', 'f8e70f6b7256e187103d79c9a82037761571124510.jpg', '2019-10-15 07:28:30'),
(8, '699602396', 2, 9, 'Slade Study Table by RoyalOak', '16000', 5, 'Instock', 'OVERVIEW\r\n\r\nFurniture\'s is the leading organized distributor & retailer in India.ROYALOAK assures international standard of quality & excellence. With our decades of experience and expertise we are proud to bring you the biggest collection of furniture in the country - like sofas, living room furniture, Office Furniture, Bedroom Furniture, Utility Furniture, and Outdoor Furniture in unbeatable quality, ultimate comfort and admiration with honest pricing policy.\r\n\r\nIndustrial Style depicts a raw, unfinished, earthy and elemental look. As the name implies, it draws inspiration from warehouses and urban lofts – it’s a style which celebrates contrasts. It’s coming together of opposing materials to create a cohesive format. It’s a fusion of old with the new, the bold with muted colours, the shiny with distressed finish, the knotty with the even tones, the solids with the patterned fabrics, or the functional with the outlandish.\r\n\r\nWriting Tables are a piece of furniture with a surface for writing on, with drawers and compartments for storing writing material. Writing Tables take up less space than computer desks. If you are looking for just a single table, writing desks are good to go. They are also advisable if you only use your laptop to check your social media every once in a while. Computer desks are usually bulkier.\r\nDimensions: H 30 x W 47.5 x D 23.5\r\n\r\nWeight: 55 KG\r\n\r\nPrimary Material: Engineered Wood\r\n\r\nRoom Type: Office Furniture\r\n\r\nHeight: 30.0 inches\r\n\r\nWidth: 48.0 inches\r\n\r\nDepth: 24.0 inches', '7900', 'e4551b5f1611db2e23c3b2159edd11c91571124977.jpg', '62637fba9d936ff9a1903e260662c55b1571124977.jpg', '95377ccb2f85e6c8e629dd763e661bea1571124977.jpg', '80fcdd6ac20bd085c6629686be0699f91571124977.jpg', '2019-10-15 07:36:17'),
(9, '770450051', 1, 3, 'Alba LHS 2 Seater Sofa with Lounger in Ash Grey Colour by Woodsworth', '60000', 16, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label that’s part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nModern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details & compact proportions. These sofas can be with or without arms.\r\n\r\nDimensions: Sofa : H 34 x W 45.5 x D 31.5; Lounger :H 34 x W 33.5 x D 64; Seating Height - 17\r\n(all dimensions in inches)\r\n\r\nWeight: 72 KG\r\n\r\nPrimary Material: Fabric\r\n\r\nRoom Type: Living Room\r\n\r\nCollection: Alba\r\n\r\nHeight: 34.0 inches\r\n\r\nWidth: 79.0 inches\r\n\r\nDepth: 32.0 inches\r\n\r\nSeating Height: 17', '47000', 'f8f2987d4cd4e7a718006563bf98e1211571125313.jpg', '928f4b7282999d31dfd867a93acdfc2d1571125313.jpg', '8f8c02493ea80bcb153a6593cbbfdc191571125313.jpg', 'ceffd1c7ebcc6bdf47ba28daa47922b81571125313.jpg', '2019-10-15 07:41:53'),
(10, '994546968', 1, 3, 'Three Seater Sofa with Lounger in Crimson Red Colour by Furnitech', '68000', 6, 'Instock', 'OVERVIEW\r\n\r\nFURNITECH - Incorporated in 1997, FURNITECH SEATING SYSTEMS is grown to Indias largest upholstered company . A passion for design and quality , a strong undying spirit and a set of skilled hand and experience has made FURNITECH a prestigious brand in the country.\r\n\r\nModern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details & compact proportions. These sofas can be with or without arms.\r\n\r\nDimensions: Three Seater : H 26 x W 64 x D 31; Lounger : H 26 x W 30 x D 55; Seating Height - 16\r\n(all dimensions in inches)\r\n\r\nDesign: Adelia\r\n\r\nWeight: 68 KG\r\n\r\nPrimary Material: Fabric\r\n\r\nRoom Type: Living Room\r\n\r\nHeight: 26.0 inches\r\n\r\nWidth: 94.0 inches\r\n\r\nDepth: 55.0 inches\r\n\r\nSeating Height: 16', '59000', 'efede5d219eb743a84090a2c6d57ac411571125637.jpg', '64559cb921daea2692c99066546aa7161571125637.jpg', '9eca746301f23e338d1a7f82eb9904691571125637.jpg', 'b504b874131dd923116a6259f5c93c2e1571125637.jpg', '2019-10-15 07:47:17'),
(11, '953524437', 1, 4, 'LHS Sofa with Motorized Recliner by Durian', '120000', 3, 'Instock', 'OVERVIEW\r\n\r\nDurian is the industries foremost brand, creating beautiful spaces for you within your homes and offices since 1985. With a successful start by importing our furniture we now have 9 factories that manufactures furniture such as Sofas, Beds, Tables, Dining sets and Office Desks & Chairs. We are humbled to have touched the lives of millions of people with our range of world class home and office furniture, innovative laminates, sturdy designer doors, exquisite veneers and top-grade plywood.', '98000', 'aa95fd13edd9ad6005bd0f6231a712551571136333.jpg', '957d4fff1a71d3315d36135a736584761571136333.jpg', '36a79095ca2f105ef7a1a5d79a55eb8e1571136333.jpg', 'c256148230f50a4511b13c34741d84561571136333.jpg', '2019-10-15 10:45:33'),
(12, '768121665', 1, 4, 'Sleek 3 Seater Recliner in Brown Colour', '102000', 6, 'Instock', 'OVERVIEW\r\n\r\nStar India specializes in offering the latest and in trend furniture designs at very affordable prices with great selection in modern furniture designs and display.\r\nDimensions: H 39 x W 70 x D 32;Seating Height-17 (all dimension in inches)\r\n\r\nColour: Brown\r\n\r\nPrimary Material: Half Leather\r\n\r\nRoom Type: Living Room\r\n\r\nHeight: 39.0 inches\r\n\r\nWidth: 70.0 inches\r\n\r\nDepth: 32.0 inches\r\n\r\nRecliner Mechanism: Manual', '80000', 'd6a1767a697446037cc201fed5a999b51571136714.jpg', '81e15317db7652ba1b7993635ad3b98e1571136714.jpg', '184c5786770e698f7e340cd54ce9363c1571136714.jpg', 'c8441043740a24a3d89449639deb45331571136714.jpg', '2019-10-15 10:51:54'),
(13, '684003221', 1, 5, '3 Seater Sofa in Grey colour', '59000', 5, 'Instock', 'OVERVIEW\r\n\r\nHometown is one stop destination for all the latest and trendy furniture. All Hometown products are designed and developed with you in mind, and have gone through rigorous quality inspection and conform to the best quality standards in the industry.\r\n\r\nModern Style Sofas usually come in fixed back with cushions attached to the frame. They mostly come with minimal details & compact proportions. These sofas can be with or without arms.\r\n\r\nDimensions: H 34 x W 72 x D 35\r\n\r\nWeight: 13 KG\r\n\r\nPrimary Material: Pine Wood\r\n\r\nRoom Type: Living Room\r\n\r\nHeight: 22.0 inches\r\n\r\nWidth: 72.0 inches\r\n\r\nDepth: 35.0 inches\r\n\r\nSeating Height: 11', '16000', '964a9a1624fce976230bd409054ecbcc1571136971.jpg', 'fa0dbfdb1b3f6896a1f718be6c4177331571136971.jpg', '9a102de306f28b0e90ce64fc95fc563a1571136971.jpg', '5cbf21cecfb768d8c16bd511fe28432d1571136971.jpg', '2019-10-15 10:56:11'),
(14, '506105555', 3, 11, 'Segur Solid Wood Single Bed with Storage in Honey Oak Finish', '49000', 8, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label thats part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nModern is a distinct, defined style which originated in the early 1900s. It uses a combination of vinyl, steel, plastic, glass or wood having monochromatic colors and sleek silhouettes. Modern furniture lives at the intersection of clean lines and relaxed comfort accentuating form and function.\r\n\r\nDimensions: Bed: H 39 x W 38 x D 84; Seating Height - 15; Mattress Size -36 x 78(Not Included)\r\n(all dimensions in inches)\r\n\r\nWeight: 85.4 KG\r\n\r\nColour: Honey Oak\r\n\r\nPrimary Material: Sheesham Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nCollection: Segur\r\n\r\nStorage: Drawer Storage\r\n\r\nHeight: 39.0 inches\r\n\r\nWidth: 38.0 inches\r\n\r\nDepth: 84.0 inches\r\n\r\nSeating Height: 15', '17000', '73792f727f1e4af5852f7ae084c6b8841571137453.jpg', 'ae05abb63bc948ce3ba36c960a16dda11571137453.jpg', '67fae6328758dd316afeaaf060d53bd91571137453.jpg', '2ff18d699eb38b50d3fc2c6ceea39ede1571137453.jpg', '2019-10-15 11:04:13'),
(15, '308870493', 3, 11, 'Bianca Solid Wood Single Bed in White Finish', '45000', 9, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label that’s part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nModern is a distinct, defined style which originated in the early 1900’s. It uses a combination of vinyl, steel, plastic, glass or wood having monochromatic colors and sleek silhouettes. Modern furniture lives at the intersection of clean lines and relaxed comfort accentuating form and function.\r\n\r\nDimensions: H 34 x W 39 x D 81; Seating Height-14; Mattress Not Included\r\n\r\nColour: White\r\n\r\nPrimary Material: Mango Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nStorage: No Storage\r\n\r\nHeight: 34.0 inches\r\n\r\nWidth: 38.0 inches\r\n\r\nDepth: 82.0 inches\r\n\r\nSeating Height: 14', '14000', '2fbe5d243a1c61e1029123f1c00eb7281571137710.jpg', '619cd8cc2aac4533da411380251259221571137710.jpg', 'a5e1d82024f35f9ed264d4f7724094b61571137710.jpg', 'efdf9c54c497a8f64248d7125e528c0b1571137710.jpg', '2019-10-15 11:08:30'),
(16, '593920243', 3, 12, 'Bianca Solid Wood  Bed with Storage in White Finish', '74000', 10, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label thats part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nModern is a distinct, defined style which originated in the early 1900s. It uses a combination of vinyl, steel, plastic, glass or wood having monochromatic colors and sleek silhouettes. Modern furniture lives at the intersection of clean lines and relaxed comfort accentuating form and function.\r\n\r\nDimensions: H 34 x W 75 x D 81; Seating Height-14; Mattress Not Included\r\n\r\nWeight: 124 KG\r\n\r\nColour: White\r\n\r\nPrimary Material: Mango Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nStorage: Drawer Storage\r\n\r\nHeight: 34.0 inches\r\n\r\nWidth: 74.0 inches\r\n\r\nDepth: 82.0 inches\r\n\r\nSeating Height: 14', '64000', '36a5f94ad5e3e33c79c94d629f4191ff1571138066.jpg', '36a5f94ad5e3e33c79c94d629f4191ff1571138066.jpg', 'f5713fbcf3e56d3548c6e983b392e03b1571138066.jpg', 'f5713fbcf3e56d3548c6e983b392e03b1571138066.jpg', '2019-10-15 11:14:26'),
(17, '254998557', 3, 13, 'Florito Solid Wood  Bed in Provincial Teak Finish', '62000', 10, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label thats part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nDimensions: H 37 x W 74 x D 81; Seating Height-12; Mattress Not Included\r\n\r\nWeight: 81 KG\r\n\r\nColour: Provincial Teak\r\n\r\nPrimary Material: Sheesham Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nCollection: Florito\r\n\r\nStorage: No Storage\r\n\r\nHeight: 37.0 inches\r\n\r\nWidth: 74.0 inches\r\n\r\nDepth: 81.0 inches\r\n\r\nSeating Height: 12', '48000', '9cc53a360ca3f7c26e250091183f2bf11571138327.jpg', 'efdf9c54c497a8f64248d7125e528c0b1571138327.jpg', '67fae6328758dd316afeaaf060d53bd91571138327.jpg', '9cc53a360ca3f7c26e250091183f2bf11571138327.jpg', '2019-10-15 11:18:47'),
(18, '479059366', 3, 13, 'Tesseract Solid Wood Bed with Storage in Warm Walnut Finish', '110000', 10, 'Instock', 'OVERVIEW\r\n\r\nWoodsworth is our premium homegrown label that’s part classic, part contemporary. A delectable amalgamation of the timeless and trendy, a precarious balance of function and flair. Woodsworth is a harmonious fit for all tastes, styles and spaces.\r\n\r\nDimensions: H 35.4 x W 73.6 x D 79.9; Seating Height-15; Mattress Not Included\r\n\r\nWeight: 115.6 KG\r\n\r\nColour: Warm Walnut\r\n\r\nPrimary Material: Sheesham Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nCollection: Tesseract\r\n\r\nStorage: Drawer Storage\r\n\r\nHeight: 36.0 inches\r\n\r\nWidth: 74.0 inches\r\n\r\nDepth: 80.0 inches\r\n\r\nSeating Height: 15\r\n\r\nRecommended Mattress Size: 78 L x 72 W Inch', '85000', 'bcb996d0379eeaa209efb6cfe8272da61571138565.jpg', 'e1ddccacc3cc69d0b891c6175c4519061571138565.jpg', 'cb24759368b210ab52d9d52ad0a20d2d1571138565.jpg', '5b0e1b549103b6472abec9c9fe71ea061571138565.jpg', '2019-10-15 11:22:45'),
(19, '726744391', 3, 14, 'King Size Sofa cum Bed with Box Storage & Mattress in Walnut & Wenge Finish', '47000', 15, 'Instock', 'OVERVIEW\r\n\r\nFor Crystal Furnitech convenience is the most important aspect in home furniture. At Crystal Furnitech we couple this convenience of comfort with cost effectiveness in every design that we offer. We have everything you need to beautify your valued abode. With exceptional quality and unbeatable price, our collection of fine bedroom furniture will make your dreams come true.\r\n\r\nA Sofa cum Bed is a multi-functional piece of furniture, its a sofa or divan by day, flipped into a double bed at night. Available in different styles like the simple foldable or the pull out or convertible version.\r\nDimensions: Sofa : H 31 x W 77.6 x D 37.5; Seating Height-17; Bed : H 31 x W 77.6 x D 72; Seating Height-12.5\r\n(all dimensions in inches)\r\n\r\nWeight: 130 KG\r\n\r\nPrimary Material: Engineered Wood\r\n\r\nRoom Type: Bedroom\r\n\r\nStorage: With Storage\r\n\r\nHeight: 31.0 inches\r\n\r\nWidth: 78.0 inches\r\n\r\nDepth: 38.0 inches', '37000', '5eb33559e89cf66b9a077575f59453c31571138887.jpg', '30cd48ee35ad3824673c4234af0aa3a91571138887.jpg', '7507def000a1c2f8d1c540fd268c1de21571138887.jpg', 'fe107ec8559f1d048ea19d1be21689ae1571138887.jpg', '2019-10-15 11:28:07'),
(20, '592655979', 3, 15, 'McTaylor Bunk Bed (Single & Queen) in Walnut Finish', '93000', 10, 'Instock', 'OVERVIEW\r\n\r\nMollycoddle adds a fun element to the kids room with an adorable range of playful and lively collection of kids furniture. Each piece is carefully designed to suit the needs of your kids, with a palette of colours that appeal to all age groups. Along with great aesthetics, the collection follows world class safety norms for kids furniture.\r\n\r\nStandard bunk beds are two beds positioned one atop the other with or without trundle storage option. Ideally comes in a configuration of twin over twin size or twin over full size beds.\r\n\r\nDimensions: H 66.5 x W 65.7 x D 81.4; Mattress Size - Single Bed : 35 x 75; Queen Bed : 60 x 75 (Not Included)\r\n(all dimensions in inches)\r\n\r\nWeight: 80 KG\r\n\r\nPrimary Material: Rubber Wood\r\n\r\nRoom Type: Kids Room\r\n\r\nCollection: McTaylor\r\n\r\nStorage: No Storage\r\n\r\nHeight: 67.0 inches\r\n\r\nWidth: 66.0 inches\r\n\r\nDepth: 82.0 inches', '53000', '3f467869094023d372fd3c15843357081571139298.jpg', '038413ebb4cbcf4e0ab0c48e1abc130a1571139298.jpg', '7480f8d5f17bae99b2d7ada1c339bdd71571139298.jpg', '3f467869094023d372fd3c15843357081571139298.jpg', '2019-10-15 11:34:58'),
(21, '526296702', 3, 15, 'Dave Bunk Bed in White Finish', '40000', 9, 'Instock', 'OVERVIEW\r\n\r\nCasacraft offers the best in comfort with lan. The collections are a series of modern trendy designs, simple yet striking and represent the ideals of minimalism. The designs are a perfect blend of functionality and exceptional aesthetics. Each piece is crafted with passion and follows international standards on quality and style.\r\n\r\nStandard bunk beds are two beds positioned one atop the other with or without trundle storage option. Ideally comes in a configuration of twin over twin size or twin over full size beds.\r\n\r\nDimensions: H 57 x W 38 x D 84; Seating Height-13.77; Mattress - Upper - 78 X 36, Lower - 78 x 36 (Not included) (All dimension in inches)\r\n\r\nWeight: 49 KG\r\n\r\nPrimary Material: Rubber Wood\r\n\r\nRoom Type: Kids Room\r\n\r\nStorage: No Storage\r\n\r\nHeight: 57.0 inches\r\n\r\nWidth: 38.0 inches\r\n\r\nDepth: 84.0 inches\r\n\r\nSeating Height: 14', '9000', '415b28fde36aa001decdbdff6214256e1571139588.jpg', '415b28fde36aa001decdbdff6214256e1571139588.jpg', '71ee3f2878b99294452b45c116f8a3fa1571139588.jpg', 'e40f29e07a43b78112641197f28e386f1571139588.jpg', '2019-10-15 11:39:48'),
(22, '396024196', 4, 18, 'Urban Ladder Genoa Wing Chair (Colour : Floral)', '20000', 10, 'Instock', 'Product Dimensions: Length (28.7 inches), Width (28.5 inches), Height (42.5 inches)\r\nPrimary Material: Fabric, Subtype: Fabric | Finish : Matte\r\nWing your way to comfort, The Genoa Wing Chair is the perfect spot for an afternoon snooze, or a date with a good book\r\nAssembly Required\r\nWarranty in Months: 12', '18000', 'ad8681ee99476e78547fa276adb619e51571201092.jpg', '4fd2fde5a44f1f1a70536e437228346e1571201092.jpg', 'dba2a876ef486a20ed9b599ec7c004621571201092.jpg', '05ccd4541dd04426bb6055faed9da7ce1571201092.jpg', '2019-10-16 04:44:52'),
(24, '735356890', 1, NULL, 'Nandini Pasteurised Toned Milk', '25', 500, 'Outstock', 'dfghj', '12', 'eff6dde607c87d692c8eedab271cdf751674149617.jpg', '63a5d4ad288941f6c4a2dc95dfad9a541674149617.jpg', '90a84b6854130db34f8a199a7bcb7f2f1674149617.jpg', '90a84b6854130db34f8a199a7bcb7f2f1674149617.jpg', '2023-01-19 17:33:37'),
(25, '924252154', 2, NULL, 'ijhuv', 'jihugygc', 9, 'Instock', 'huytdfc', '6543', '4efdd2f969559e8b1c92e99f32ded48e1674300511.jpg', '4efdd2f969559e8b1c92e99f32ded48e1674300511.jpg', '4efdd2f969559e8b1c92e99f32ded48e1674300511.jpg', '4efdd2f969559e8b1c92e99f32ded48e1674300511.jpg', '2023-01-21 11:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `OrderId` varchar(50) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `OrderId`, `Remark`, `Status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '989645529', 'Your Order has been Confirmed', 'Confirmed', '2020-04-01 12:04:01', NULL),
(2, '989645529', 'Your Item is on the way', 'On The Way', '2020-04-01 12:31:32', NULL),
(3, '989645529', 'Item delivered', 'Delivered', '2020-04-01 12:32:10', NULL),
(4, '268223761', 'Your Order Has Been Confirmed', 'Confirmed', '2020-04-01 14:16:48', NULL),
(5, '268223761', 'On the way', 'On The Way', '2020-04-01 14:17:26', NULL),
(6, '253971675', 'cancel', 'Cancelled', '2020-04-08 06:34:34', 1),
(7, '368116033', 'Order Confirmed', 'Confirmed', '2020-04-08 07:24:46', NULL),
(8, '368116033', 'Out for delivery', 'On The Way', '2020-04-08 07:32:52', NULL),
(9, '368116033', 'Delivered', 'Delivered', '2020-04-08 07:33:25', NULL),
(10, '221850996', 'Order Confirmed', 'Confirmed', '2020-05-07 08:55:57', NULL),
(11, '221850996', 'Product is on the way.', 'On The Way', '2020-05-07 08:56:40', NULL),
(12, '221850996', 'Product delivered to the customer', 'Delivered', '2020-05-07 08:57:26', NULL),
(13, '849399829', 'Order is confimred', 'Confirmed', '2022-03-27 09:54:24', NULL),
(14, '849399829', 'Order is on the way', 'On The Way', '2022-03-27 09:54:59', NULL),
(15, '849399829', 'Order delivered to the user', 'Delivered', '2022-03-27 09:55:23', NULL),
(16, '320674547', 'sdfgh', 'Confirmed', '2023-01-19 17:19:39', NULL),
(17, '294194717', 'fgfdd', 'Confirmed', '2023-01-19 17:36:20', NULL),
(18, '543140442', 'swdefrgb', 'Confirmed', '2023-01-21 10:52:31', NULL),
(19, '394833787', 'fuck you', 'Confirmed', '2023-01-21 11:50:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Khusi', 8956234569, 'khusi@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-10-16 14:22:03'),
(2, 'Rishi Singh', 5689234578, 'rishi@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-10-16 14:37:49'),
(4, 'Test Sample', 8797977779, 'sample@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-04-08 05:51:06'),
(5, 'Anuj  kumar', 1236547890, 'test@test.com', 'f925916e2754e5e03f75dd58a5733251', '2020-05-07 08:52:34'),
(6, 'John doe', 1425366352, 'john@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-03-27 09:52:09'),
(7, 'jagadish', 9071871419, 'jagga123@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-01-19 17:18:49'),
(8, 'prathyaksha AA', 8762568934, 'prathyakshaprathu23806@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-01-21 11:46:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OrderNumber` (`OrderNumber`);

--
-- Indexes for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `onmpmsdb`
--
CREATE DATABASE IF NOT EXISTS `onmpmsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onmpmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'jagadish', 'admin', 9071871419, 'jagadish@gmail.com', '9ab3b9b53cc61f1795166eecbbf0d355', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(10, 'Milk', '2023-01-19 15:52:04'),
(11, 'chocalate', '2023-01-19 15:52:09'),
(12, 'curds', '2023-01-19 15:52:18'),
(13, 'sweets', '2023-01-19 15:52:24'),
(14, 'icecrems', '2023-01-19 15:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ID` int(10) NOT NULL,
  `OrderNumber` varchar(200) DEFAULT NULL,
  `UserID` int(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `FlatNo` varchar(50) DEFAULT NULL,
  `StreetName` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Landmark` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Zipcode` int(10) NOT NULL,
  `State` varchar(200) NOT NULL,
  `OrderDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT NULL,
  `payType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ID`, `OrderNumber`, `UserID`, `FullName`, `ContactNumber`, `FlatNo`, `StreetName`, `Area`, `Landmark`, `City`, `Zipcode`, `State`, `OrderDate`, `Status`, `payType`) VALUES
(12, '221850996', 5, 'Anuj kumar', 7545454545, '3423 XYZ', 'BAC Street', 'New Delhi', 'Crikcet stadium', 'New Delhi', 110001, 'New Delhi', '2020-05-07 08:54:25', 'Delivered', 'Cash on Delivery'),
(13, '320674547', 5, 'Anuj', 1236547890, '34534 XYZ', 'ABC Street', 'Noida', 'NA', 'Noida', 201301, 'UP', '2022-03-09 16:50:49', NULL, 'Cash on Delivery'),
(14, '849399829', 6, 'Joh Die', 4758963254, 'J 32423', 'HGshg', 'XYZ', 'ABC', 'Noida', 3201301, 'UP', '2022-03-27 09:53:18', 'Delivered', 'Cash on Delivery'),
(15, '948424790', 7, 'jagadish', 9071871419, 'hassan', 'hassan', 'hassan', 'hassan', 'ghassan', 345678, 'karnataka', '2023-01-19 17:04:01', NULL, 'Cash on Delivery'),
(16, '923108538', 7, 'prathyaksha AA', 8762568934, 'hassan', 'uyfuk', 'mkjh', 'poiu', ';lkjhg09876', 9876, 'kjhg', '2023-01-21 09:39:31', NULL, 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdetails`
--

CREATE TABLE `tblorderdetails` (
  `id` int(11) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `OrderNumber` bigint(12) DEFAULT NULL,
  `ProductId` int(10) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT NULL,
  `ProductQty` int(10) DEFAULT NULL,
  `OrderDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorderdetails`
--

INSERT INTO `tblorderdetails` (`id`, `UserId`, `OrderNumber`, `ProductId`, `ProductPrice`, `ProductQty`, `OrderDate`) VALUES
(4, 3, 989645529, 3, NULL, 1, '2020-03-30 14:51:31'),
(5, 3, 989645529, 22, NULL, 1, '2020-03-30 14:51:31'),
(6, 3, 989645529, 15, NULL, 1, '2020-03-30 14:51:31'),
(7, 3, 268223761, 5, NULL, 1, '2020-04-01 14:11:42'),
(8, 3, 268223761, 6, NULL, 1, '2020-04-01 14:11:42'),
(9, 3, 572683925, 19, NULL, 1, '2020-04-01 14:44:01'),
(10, 3, 603822506, 7, NULL, 1, '2020-04-01 14:51:25'),
(11, 3, 466336049, 4, NULL, 1, '2020-04-03 07:25:35'),
(12, 4, 253971675, 5, NULL, 1, '2020-04-08 06:11:14'),
(13, 4, 253971675, 16, NULL, 1, '2020-04-08 06:11:14'),
(14, 4, 368116033, 4, NULL, 1, '2020-04-08 06:27:12'),
(15, 4, 543140442, 3, NULL, 1, '2020-05-07 08:46:25'),
(16, 5, 221850996, 3, NULL, 1, '2020-05-07 08:54:26'),
(17, 5, 221850996, 22, NULL, 2, '2020-05-07 08:54:26'),
(18, 5, 320674547, 6, NULL, 1, '2022-03-09 16:50:50'),
(19, 6, 849399829, 19, NULL, 1, '2022-03-27 09:53:19'),
(20, 6, 849399829, 3, NULL, 1, '2022-03-27 09:53:19'),
(21, 7, 948424790, 24, NULL, 2, '2023-01-19 17:04:01'),
(22, 7, 923108538, 24, NULL, 1, '2023-01-21 09:39:31'),
(23, 7, 923108538, 34, NULL, 1, '2023-01-21 09:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div class=\"head\" style=\"color: rgb(33, 37, 41); font-family: \" exo=\"\" 2\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h4 style=\"margin-bottom: 15px; line-height: 1.2; color: rgba(0, 0, 0, 0.66); font-size: 36px;\">About</h4></div><div class=\"content\" style=\"color: rgb(33, 37, 41); font-family: \" exo=\"\" 2\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"row\" style=\"display: flex; flex-wrap: wrap;\"><div class=\"col-12 col-lg-12 col-md-12 col-sm-12\" style=\"width: 870px; -webkit-box-flex: 0; flex: 0 0 100%; max-width: 100%;\"><p style=\"margin-bottom: 1rem; line-height: 1.5; color: rgb(60, 60, 60);\">We are the&nbsp;</p><h1 class=\"title\" id=\"page-title\" style=\"font-size: 24.5px; margin-bottom: 20px; font-family: Lato, sans-serif; font-weight: 300; color: rgb(68, 68, 68); padding: 0px 0px 20px; border-bottom: 1px solid rgb(238, 238, 238); -webkit-font-smoothing: subpixel-antialiased !important;\">About Us</h1><div class=\"tabs\"></div><div id=\"block-system-main\" class=\"block block-system\" style=\"margin-top: 0px;\"><div class=\"content\"><div id=\"node-105\" class=\"node node-about-us en clearfix\" about=\"/en/about-us\" typeof=\"sioc:Item foaf:Document\"><div class=\"content\"><div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\" property=\"content:encoded\"><p style=\"color: rgb(17, 17, 17); font-family: Lato, sans-serif; font-size: 13px;\"></p><div class=\"dexp-animate fadeInDown animated dexp-animate-visible\" data-animate=\"fadeInDown\" style=\"opacity: 1; color: rgb(17, 17, 17); font-family: Lato, sans-serif; font-size: 13px;\">Karnataka Cooperative Milk Producers\' Federation Limited (KMF) is the Apex Body for the dairy co-operative movement &nbsp;in Karnataka. It is the second largest dairy co-operative amongst the dairy cooperatives in the country. In South India it stands first in terms of procurement as well as sales. One of the core functions of the Federation is marketing of Milk and Milk Products. The Brand \"Nandini\" is the household name for Pure and Fresh milk and milk products.&nbsp;<span style=\"line-height: 20.8px; text-align: justify;\">KMF has 16 Milk Unions covering all the districts of &nbsp;the State which procure milk from Primary Dairy Cooperative Societies(DCS) and distribute milk to the consumers in various Towns/Cities/Rural markets in Karnataka.</span>&nbsp;</div><p class=\"rtejustify\" style=\"margin-top: 15px; text-align: justify; color: rgb(17, 17, 17); font-family: Lato, sans-serif; font-size: 13px;\"></p><div class=\"dexp-animate fadeInLeft animated dexp-animate-visible\" data-animate=\"fadeInLeft\" style=\"opacity: 1; color: rgb(17, 17, 17); font-family: Lato, sans-serif; font-size: 13px;\"><span style=\"line-height: 1.6;\">Karnataka Dairy Development Cooperation(KDDC), the first ever World Bank/ International Development Agency funded Dairy Development Program in the country started in Karnataka on co-operative lines with the organisation of Village Level Dairy Co-operatives in 1974. The AMUL pattern of dairy co-operatives started functioning in Karnataka from 1974-75 with the financial assistance from World Bank/IDA, Operation Flood II &amp; III. The Anand Pattern three tier organisation structure – Dairy Cooperative Societies at the village level, District Milk Unions at the District level to take care of the procurement, processing and marketing of milk and provide technical input services for enhancing milk production at producers level&nbsp; and Federation at the state level to co-ordinate the growth of the sector in the State, are resolutely and harmoniously working hand-in-hand in creating self-sustaining rural economy based on cooperative dairying. KMF is one of the few federations in the country, who have converted dairying from a subsidiary occupation into an industry.</span><span style=\"line-height: 1.6;\"></span></div><div><span style=\"line-height: 1.6;\"><br></span></div><p style=\"margin-top: 15px; color: rgb(17, 17, 17); font-family: Lato, sans-serif; font-size: 13px;\"></p><p class=\"rtejustify\" style=\"margin-top: 15px; text-align: justify; color: rgb(17, 17, 17); font-family: Lato, sans-serif; font-size: 13px;\"></p></div></div></div></div></div></div></div></div></div></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'hassan', 'jaga@gmail.com', 9071871419, '2019-10-16 10:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ID` int(10) NOT NULL,
  `ProductID` varchar(120) NOT NULL,
  `CatID` int(5) DEFAULT NULL,
  `SubCatid` int(5) DEFAULT NULL,
  `ProductTitle` varchar(120) DEFAULT NULL,
  `RegularPrice` varchar(120) DEFAULT NULL,
  `BrandName` varchar(120) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Availability` varchar(50) NOT NULL,
  `PDesc` mediumtext DEFAULT NULL,
  `SalePrice` varchar(120) DEFAULT NULL,
  `Image` varchar(120) NOT NULL,
  `Image1` varchar(120) NOT NULL,
  `Image2` varchar(120) NOT NULL,
  `Image3` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ID`, `ProductID`, `CatID`, `SubCatid`, `ProductTitle`, `RegularPrice`, `BrandName`, `Quantity`, `Availability`, `PDesc`, `SalePrice`, `Image`, `Image1`, `Image2`, `Image3`, `CreationDate`) VALUES
(24, '207822649', 10, NULL, 'Nandini Pasteurised Toned Milk', '20', NULL, 500, 'Instock', 'oiuytfcvbn', '15', 'a46deb5fc6db296189bd42755b3ce14d1674144641.png', 'a46deb5fc6db296189bd42755b3ce14d1674144641.png', 'a46deb5fc6db296189bd42755b3ce14d1674144641.png', 'a46deb5fc6db296189bd42755b3ce14d1674144641.png', '2023-01-19 16:10:41'),
(25, '835194403', 10, NULL, 'Nandini Homogenised Cow\'s Pure Milk', '25', NULL, 500, 'Instock', 'mnbvcxzasdfghjk', '15', 'f80b697fcd7450885da4a4dcf1f792641674144771.png', '75d1224550d2388b1a1a749fb61203cd1674144771.png', 'f80b697fcd7450885da4a4dcf1f792641674144771.png', 'e93d398060a0ed8e5cf52044f3f0b2d71674144771.png', '2023-01-19 16:12:51'),
(26, '672869875', 10, NULL, 'Nandini Pasteurised Toned Milk', '30', NULL, 200, 'Outstock', 'Karnataka’s highest selling and most preferred milk. Pasteurised Toned milk with Min. 3.0% fat and Min.8.5 % SNF content make this milk the best choice for all purposes and all generation.\r\n\r\nAvailable in 200ml/250ml, 500ml, 1 liter and 6 liters pouches. Homogenised variants also available.', '12', '2613c0cbf2ae977c15582f245e883a1e1674144947.png', '2613c0cbf2ae977c15582f245e883a1e1674144947.png', '2613c0cbf2ae977c15582f245e883a1e1674144947.png', '2613c0cbf2ae977c15582f245e883a1e1674144947.png', '2023-01-19 16:15:47'),
(27, '127250195', 10, NULL, 'Nandini Pasteurised Toned Milk', '25', NULL, 500, 'Instock', 'kjhgfertyui', '12', '75d1224550d2388b1a1a749fb61203cd1674149376.png', '75d1224550d2388b1a1a749fb61203cd1674149376.png', 'f80b697fcd7450885da4a4dcf1f792641674149376.png', 'f80b697fcd7450885da4a4dcf1f792641674149376.png', '2023-01-19 17:29:36'),
(28, '349005190', 10, NULL, 'Nandini Goodlife', '50', NULL, 250, 'Outstock', 'Goodlife Cow milk is UHT processed milk with Min.3.0% fat and Min. 8.5% SNF. Suitable for all generation.\r\n\r\nAvailable in 100ml, 200ml and 500 ml Fino packs,500ml and 1 litre Tetra brick packs.', '25', '136727d80f9978fe7d2d8af3e987e3ec1674154276.png', '136727d80f9978fe7d2d8af3e987e3ec1674154276.png', '136727d80f9978fe7d2d8af3e987e3ec1674154276.png', '136727d80f9978fe7d2d8af3e987e3ec1674154276.png', '2023-01-19 18:51:16'),
(29, '259715739', 10, NULL, 'Nandini Dairy Whitener', '65', NULL, 250, 'Instock', 'Nandini Dairy Whitener is made from pasteurized fresh whole milk and added sugar. Processed with ultra modern spray drying technology that makes the whitener completely miscible in hot or luke warm water,  leaving no lumps behind. Dissolve just 3 ½ table spoons full of Dairy whitener in 180 ml lukewarm water gives you delightful cups of sweetened milk and tea/coffee prepared will be having the natural richness and goodness of cow’s milk.\r\n\r\nAvailable in 20g, 40g, 200g, 500g and 1kg metalized Aluminium based laminated film, 10 kg HDPE containers.\r\n\r\n', '30', '6d8bb2f7f047b547970ff6c9c69078fd1674154404.jpg', '6d8bb2f7f047b547970ff6c9c69078fd1674154404.jpg', '6d8bb2f7f047b547970ff6c9c69078fd1674154404.jpg', '6d8bb2f7f047b547970ff6c9c69078fd1674154404.jpg', '2023-01-19 18:53:24'),
(30, '743824552', 14, NULL, 'Family-Pack-Fresh- Milk Ice-Cream - Manga-b', '70', NULL, 750, 'Instock', 'Family-Pack-Fresh- Milk Ice-Cream - Manga-b\r\nwith 750ml', '50', '9eeb729c029cf84dc939366741990b001674293366.png', '9eeb729c029cf84dc939366741990b001674293366.png', '9eeb729c029cf84dc939366741990b001674293366.png', '9eeb729c029cf84dc939366741990b001674293366.png', '2023-01-21 09:29:26'),
(31, '257140446', 14, NULL, 'Family-Pack-Fresh-Milk-Ice-Cream – Black-Currant-b', '70', NULL, 750, 'Instock', 'Family-Pack-Fresh-Milk-Ice-Cream – Black-Currant-b\r\nwith 750ml', '50', '2ed2d31966d48b085ab5467502adbc231674293493.png', '2ed2d31966d48b085ab5467502adbc231674293493.png', '2ed2d31966d48b085ab5467502adbc231674293493.png', '2ed2d31966d48b085ab5467502adbc231674293493.png', '2023-01-21 09:31:33'),
(32, '585916387', 14, NULL, 'Family-Pack-Fresh-Milk-Ice-Cream – Chocolat-b', '65', NULL, 750, 'Instock', 'Family-Pack-Fresh-Milk-Ice-Cream – Chocolat-b\r\nwith 750ml\r\n', '50', '29a95994fa46a2021675b6cf9d9a8bef1674293607.png', '29a95994fa46a2021675b6cf9d9a8bef1674293607.png', '29a95994fa46a2021675b6cf9d9a8bef1674293607.png', '29a95994fa46a2021675b6cf9d9a8bef1674293607.png', '2023-01-21 09:33:27'),
(34, '718938120', 12, NULL, 'curds sachet 500ml_0', '55', NULL, 250, 'Instock', 'curds sachet 500ml_0\r\n', '55', '835a8aa7e0236bc816093d38373a06c11674293797.jpg', '835a8aa7e0236bc816093d38373a06c11674293797.jpg', '835a8aa7e0236bc816093d38373a06c11674293797.jpg', '835a8aa7e0236bc816093d38373a06c11674293797.jpg', '2023-01-21 09:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(2, 'Rishi Singh', 5689234578, 'rishi@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-10-16 14:37:49'),
(5, 'Anuj  kumar', 1236547890, 'test@test.com', 'f925916e2754e5e03f75dd58a5733251', '2020-05-07 08:52:34'),
(6, 'John doe', 1425366352, 'john@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-03-27 09:52:09'),
(7, 'jagadish', 9071871419, 'jagga123@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-01-19 17:01:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OrderNumber` (`OrderNumber`);

--
-- Indexes for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblorderdetails`
--
ALTER TABLE `tblorderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'online_notice', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"notice\",\"notif\",\"user\"],\"table_structure[]\":[\"admin\",\"notice\",\"notif\",\"user\"],\"table_data[]\":[\"admin\",\"notice\",\"notif\",\"user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'online_notice', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"notice\",\"online_notice\",\"onmpdb\",\"onmpmsdb\",\"phpmyadmin\",\"prathu\",\"sql\",\"test\",\"test1\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"online_notice\",\"table\":\"notif\"},{\"db\":\"online-notice-board\",\"table\":\"notif\"},{\"db\":\"online-notice-board\",\"table\":\"admin\"},{\"db\":\"onmpdb\",\"table\":\"tblcategory\"},{\"db\":\"onmpdb\",\"table\":\"tbladmin\"},{\"db\":\"ofsmsdb\",\"table\":\"tbladmin\"},{\"db\":\"ofsmsdb\",\"table\":\"tblsubcategory\"},{\"db\":\"ofsmsdb\",\"table\":\"tblproducts\"},{\"db\":\"onmpmsdb\",\"table\":\"tblproducts\"},{\"db\":\"onmpmsdb\",\"table\":\"tbladmin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-21 09:51:05', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":241,\"Console\\/Height\":304.98900000000003}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `prathu`
--
CREATE DATABASE IF NOT EXISTS `prathu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prathu`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `branch`, `address`) VALUES
('4hg21cs422', 'prathu', 'cs', 'mudigere'),
('4hg21cs422', 'prathu', 'cs', 'mudigere');
--
-- Database: `sql`
--
CREATE DATABASE IF NOT EXISTS `sql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sql`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 1234567899, 'admin@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-12-22 18:30:00', '2019-12-25 14:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'Milk', 'MK01', '2019-12-24 16:27:43'),
(2, 'Butter', 'BT01', '2019-12-24 16:27:59'),
(3, 'sweets\r\n', 'BD01', '2019-12-24 16:28:12'),
(4, 'icecream', 'PN01', '2019-12-24 16:29:18'),
(5, 'milk powder', 'SY01', '2019-12-24 16:29:58'),
(7, 'Ghee', 'GH01', '2019-12-25 14:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 4, 2, 753947547, 'Anuj', 9354778033, 'cash', '2019-12-25 08:32:47'),
(3, 1, 1, 979148350, 'Sanjeen', 1234567890, 'card', '2019-12-25 11:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml', '22', '2019-12-25 05:22:37', '2019-12-25 05:22:37'),
(2, 'Milk', 'Amul', 'Toned milk 1ltr', '42', '2019-12-25 04:25:20', NULL),
(3, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', '26', '2019-12-25 06:42:24', '2019-12-25 06:42:24'),
(4, 'Milk', 'Mother Diary', 'Full Cream Milk 1ltr', '50', '2019-12-25 06:42:39', '2019-12-25 06:42:39'),
(5, 'Butter', 'Amul', 'Butter 100mg', '46', '2019-12-25 11:42:56', '2019-12-25 11:42:56'),
(6, 'Bread', 'Patanjali', 'Sandwich Bread', '30', '2019-12-25 11:40:10', NULL),
(7, 'Ghee', 'Paras', 'Ghee 500mg', '350', '2019-12-25 14:53:33', '2019-12-25 14:53:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test1`;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user`, `subject`, `Description`, `Date`) VALUES
(4, 'niki@gmail.com', 'Hello', 'user how areyou.....', '2016-06-29 12:07:19'),
(6, 'niki@gmail.com', 'adfdfdfdfd', 'bbbbbbbb', '2016-07-31 15:38:35'),
(7, 'ravi@gmail.com', 'adfdfdfdfd', 'aaaaaaaaaaaaaa', '2016-07-31 15:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
