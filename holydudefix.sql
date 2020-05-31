-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 04:37 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holydude`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Id_Account` int(255) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Confirm_Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Id_Account`, `Username`, `Email`, `Password`, `Confirm_Password`) VALUES
(1, 'Ghozy', 'gliozghozy@gmail.com', '1111', '1111'),
(2, 'Shiddiq', 'shiddiqmu4@gmail.com', 'sss123', 'sss123'),
(3, 'Mumun', 'mumun123@gmail.com', 'mmm123', 'mmm123'),
(4, 'Dudun', 'dudun789@gmail.com', 'dudun000', 'dudun000'),
(5, 'Dadam', 'dadamuwuu@gmail.com', 'dddmmm', 'dddmmm'),
(6, 'Kokom', 'kokommm@gmail.com', 'kkkmmm', 'kkkmmm'),
(7, 'Rafi', 'rafi@gmail.com', 'rrr123', 'rrr123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id_Contact` int(255) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id_Contact`, `First_Name`, `Last_Name`, `Email`, `Subject`, `Message`) VALUES
(1, 'Ghozy', 'MHM', 'gliozghozy@gmail.com', 'Test', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `Id_Subs` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`Id_Subs`, `Email`) VALUES
(1, 'gliozghozy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `paymentcatalog`
--

CREATE TABLE `paymentcatalog` (
  `Id_Checkout` int(11) NOT NULL,
  `Fullname` varchar(80) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Addressuser` text NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `TShirt_Code` varchar(20) NOT NULL,
  `TShirt_Size` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentcatalog`
--

INSERT INTO `paymentcatalog` (`Id_Checkout`, `Fullname`, `Email`, `Addressuser`, `Phone_Number`, `TShirt_Code`, `TShirt_Size`) VALUES
(1, 'Ghozy Muhammad HM', 'gliozghozy@gmail.com', 'Pamulang Estate, Blok G9/10', '085770472997', 'Black 02', 'M'),
(3, 'Maman Sumimin', 'maman@gmail.com', 'Jakarta', '088767615241', 'White 02', 'XL'),
(4, 'Rafi', 'rafi@gmail.com', 'Depok                          ', '098777876545', 'Black 02', 'M'),
(5, 'Rafi', 'rafi@gmail.com', 'Depok                          ', '087876562212', 'Black 05', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `paymentconfirmation`
--

CREATE TABLE `paymentconfirmation` (
  `Id_Confirm` int(11) NOT NULL,
  `Account` varchar(80) NOT NULL,
  `Confirmation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentconfirmation`
--

INSERT INTO `paymentconfirmation` (`Id_Confirm`, `Account`, `Confirmation`) VALUES
(2, 'Ghozy MHM', 'aaaaaa.png'),
(3, 'aa', 'Penggantian Pasangan Basa.PNG'),
(4, 'aabb', 'Mutasi pergeseran kerangka.PNG'),
(5, 'Rafiiiii', 'aaaaaa.png'),
(6, 'bb', 'WhatsApp Image 2020-01-20 at 10.05.27.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `paymentcustom`
--

CREATE TABLE `paymentcustom` (
  `Id_Payment` int(11) NOT NULL,
  `Fullname` varchar(80) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Addressuser` text NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Colour` varchar(10) NOT NULL,
  `Size` varchar(5) NOT NULL,
  `DesignF` varchar(10) NOT NULL,
  `DesignB` varchar(10) NOT NULL,
  `Design` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentcustom`
--

INSERT INTO `paymentcustom` (`Id_Payment`, `Fullname`, `Email`, `Addressuser`, `Phone_Number`, `Colour`, `Size`, `DesignF`, `DesignB`, `Design`) VALUES
(4, 'Ghozy Muhammad HM', 'gliozghozy@gmail.com', 'Pamulang Estate, Blok G9/10', '085770472997', 'Black', 'M', 'A3', 'None', 'Selfpic.jpg'),
(6, 'Kokom Kikin', 'kokommm@gmail.com', 'Banten                          ', '087677366112', 'Black', 'M', 'A6', 'None', 'capture_20190516210748.png'),
(7, 'a', 'b', 'c                          ', '1', 'Black', 'M', 'A7', 'A6', 'Mutasi pergeseran kerangka.PNG'),
(8, 'aa bb', 'aabb@gmail.com', 'Depok', '087877365241', 'Black', 'M', 'A3', 'None', 'aaaaaa.png'),
(9, 't', 't@gmail.com', 'Karawaci                          ', '12', 'Black', 'M', 'A3', 'None', '415-4159827_borders-border-frames-frame-fl-elegant-fancy-flower.png');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `Id_Method` int(11) NOT NULL,
  `Method` varchar(20) NOT NULL,
  `Shipping` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentmethod`
--

INSERT INTO `paymentmethod` (`Id_Method`, `Method`, `Shipping`) VALUES
(1, 'BCA', 'JNE'),
(2, 'Bank DKI', 'SiCepat'),
(3, 'BNI', 'JnT'),
(4, 'BCA', 'JNE'),
(5, 'Bank DKI', 'SiCepat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id_Account`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id_Contact`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`Id_Subs`);

--
-- Indexes for table `paymentcatalog`
--
ALTER TABLE `paymentcatalog`
  ADD PRIMARY KEY (`Id_Checkout`);

--
-- Indexes for table `paymentconfirmation`
--
ALTER TABLE `paymentconfirmation`
  ADD PRIMARY KEY (`Id_Confirm`);

--
-- Indexes for table `paymentcustom`
--
ALTER TABLE `paymentcustom`
  ADD PRIMARY KEY (`Id_Payment`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`Id_Method`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Id_Account` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id_Contact` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `Id_Subs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentcatalog`
--
ALTER TABLE `paymentcatalog`
  MODIFY `Id_Checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paymentconfirmation`
--
ALTER TABLE `paymentconfirmation`
  MODIFY `Id_Confirm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `paymentcustom`
--
ALTER TABLE `paymentcustom`
  MODIFY `Id_Payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  MODIFY `Id_Method` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
