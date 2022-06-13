-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 12:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Order_Id` int(11) NOT NULL,
  `Customer_Fname` varchar(20) NOT NULL,
  `Customer_Lname` varchar(20) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Total_Amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_Id` int(11) NOT NULL,
  `Table_Num` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Cust_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `Cashier_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`Cashier_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Abdullah', 'Shiekh', '124142', 'E-19 OBH , IIIT Hyderabad', '12000', 'M', '1993-11-30', '2012-08-01'),
(2, 'Sohail', 'Goga', '113332', 'E-24 OBH , IIIT Hyderabad', '12000', 'M', '1993-02-21', '2012-08-01'),
(3, 'Akbar', 'Choudry', '122121', 'E-25 OBH , IIIT Hyderabad', '12000', 'M', '1992-07-21', '2012-08-01'),
(4, 'Talha', 'Goga', '443332', 'E-24 OBH , IIIT Hyderabad', '13000', 'M', '1997-02-21', '2012-08-01'),
(5, 'Aslam', 'Choudry', '223332', 'E-24 OBH , IIIT Hyderabad', '12000', 'M', '1999-03-21', '2012-08-01'),
(6, 'Ali', 'Sahib', '227732', 'E-24 OBH , IIIT Hyderabad', '12000', 'M', '1990-03-21', '2012-08-01'),
(7, 'Aslam', 'Ilyaas', '223332', 'E-24 OBH , IIIT Hyderabad', '12000', 'M', '1998-01-21', '2012-08-01'),
(8, 'SAhil', 'Mian', '118832', 'E-24 OBH , IIIT Hyderabad', '12000', 'M', '1998-02-21', '2012-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `cook`
--

CREATE TABLE `cook` (
  `Cook_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL,
  `Specialization` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cook`
--

INSERT INTO `cook` (`Cook_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`, `Specialization`) VALUES
(1, 'Bilal', 'Jindal', '123211', 'E-18 OBH , IIIT Hyderabad', '15000', 'M', '1992-08-02', '2012-08-01', 'Maggi'),
(2, 'Umair', 'Singh', '231312', 'E-19 OBH , IIIT Hyderabad', '15000', 'M', '1992-10-12', '2012-08-01', 'Samosa'),
(3, 'Danish', 'Ali', '874594', 'E-18 OBH , IIIT Hyderabad', '15000', 'M', '1992-03-14', '2012-08-01', 'Omlette'),
(4, 'Sahil', 'Sonu', '587654', 'E-26 OBH , IIIT Hyderabad', '15000', 'M', '1992-01-01', '2012-08-01', 'Bonda'),
(5, 'HAmza', 'Akmal', '142355', 'E-24 OBH , IIIT Hyderabad', '15000', 'M', '1992-02-22', '2012-08-01', 'Jalebi'),
(6, 'Hmaza', 'Raza', '222355', 'E-24 OBH , IIIT Hyderabad', '15000', 'M', '1992-02-22', '2012-08-01', 'Jalebi'),
(7, 'HAmza', 'Mughal', '342355', 'E-24 OBH , IIIT Hyderabad', '15000', 'M', '1992-02-22', '2012-08-01', 'Jalebi'),
(8, 'Nadia', 'Rao', '897933', 'HOLLYWOOD USA', '15000', 'F', '1980-01-02', '2012-08-01', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `Fname`, `Lname`, `Contact`, `Email_Id`) VALUES
(1, 'Mudassir', 'Saleem', '938912', 'mudassirsaleem@students.iiit.ac.in'),
(2, 'Yash', 'Shah', '289374', 'yashshah@studentsgmail.com'),
(3, 'Dawood', 'Saiii', '234322', 'dawoodsaii@studentsgmial.com'),
(4, 'Adil', 'Sheikh', '778989', 'aditya.sharma@studentsgmial.com'),
(5, 'Adeel', 'Shah', '364932', 'adeelshah@studentsgmail.com'),
(6, 'Bilal', 'ikram', '3234277', 'bialikram@studentsgmail.com'),
(7, 'Talha', 'islam', '347534', 'talha@studentsgmial.com'),
(8, 'Mudassir', 'Saleem', '938912', 'mudassirsaleem@students.iiit.ac.in'),
(9, 'Yash', 'Shah', '289374', 'yashshah@studentsgmail.com'),
(10, 'Dawood', 'Saiii', '234322', 'dawoodsaii@studentsgmial.com');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `Delivery_Boy_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`Delivery_Boy_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Whabb', 'Riaz', '133132', 'E-17 OBH , IIIT Hyderabad', '10000', 'M', '1993-02-21', '2012-08-01'),
(2, 'Sohail', 'Maheshwari', '657569', 'E-17 OBH , IIIT Hyderabad', '10000', 'M', '1992-10-21', '2012-08-01'),
(3, 'Daood', 'Ikraam', '596509', 'E-16 OBH , IIIT Hyderabad', '10000', 'M', '1993-02-21', '2012-08-01'),
(4, 'Fzal', 'Basheer', '344244', 'E-15 OBH , IIIT Hyderabad', '10000', 'M', '1993-10-22', '2012-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_2`
--

CREATE TABLE `delivery_boy_2` (
  `Boy_Id` int(11) NOT NULL,
  `Delivery_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_delivery`
--

CREATE TABLE `home_delivery` (
  `Delivery_Id` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Cust_Id` int(11) NOT NULL,
  `Order_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `Ingredient_Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Quantity` varchar(15) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Supp_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Manager_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Manager_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Faizan ', 'Jellani', '9642540626', 'E-28 OBH , IIIT Hyderabad', '30000', 'M', '1992-09-29', '2012-08-01'),
(2, 'Ali ', 'Gora', '9581871321', 'E-27 OBH , IIIT Hyderabad', '30000', 'M', '1993-11-18', '2012-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Menu_Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Menu_Id`, `Name`, `Price`, `Type`, `Category`) VALUES
(1, 'Vegetable Pakora', '3.00', 'Veg', 'Starters'),
(2, 'Vegetable Samosa', '3.00', 'Veg', 'Starters'),
(3, 'Onion Bhaji ', '3.00', 'Veg', 'Starters'),
(4, 'Potato and Mushroom Chaat', '3.00', 'Veg', 'Starters'),
(5, 'Mushroom Garlic Fry', '3.00', 'Veg', 'Starters'),
(6, 'Chicken Tikka', '4.00', 'Non-Veg', 'Starters'),
(7, 'Tandoori Chicken', '4.00', 'Non-Veg', 'Starters'),
(8, 'Chicken Garlic Fry', '4.00', 'Non-Veg', 'Starters'),
(9, 'Chicken Tikka on Puree', '4.00', 'Non-Veg', 'Starters'),
(10, 'Lamb Tikka', '4.00', 'Non-Veg', 'Starters'),
(11, 'Tandoori King Prawn', '6.95', 'Non-Veg', 'SeaFood'),
(12, 'King Prawn Rosun', '5.95', 'Non-Veg', 'SeaFood'),
(13, 'King Prawn on Puree', '5.95', 'Non-Veg', 'SeaFood'),
(14, 'Prawn Bhuna on Puree', '3.95', 'Non-Veg', 'SeaFood'),
(15, 'Prawn Cocktail', '3.95', 'Non-Veg', 'SeaFood'),
(16, 'Chi/Lam Sashlik Chi', '9.95', 'Non-Veg', 'Tandoori Specials'),
(17, 'Tandoori Deluxe', '12.95', 'Non-Veg', 'Tandoori Specials'),
(18, 'Tandoori Chicken Main', '9.95', 'Non-Veg', 'Tandoori Specials'),
(19, 'Chicken Tikka', '7.95', 'Non-Veg', 'Tandoori Specials'),
(20, 'Lamb Tikka', '9.95', 'Non-Veg', 'Tandoori Specials'),
(21, 'Bombay Aloo ', '6.50', 'Veg', 'Vegetable Dishes'),
(22, 'Mushroom Bhaji ', '6.50', 'Veg', 'Vegetable Dishes'),
(23, 'Saag Dall', '6.50', 'Veg', 'Vegetable Dishes'),
(24, 'Mattor Paneer', '6.50', 'Veg', 'Vegetable Dishes'),
(25, 'Vegetable Roshun', '6.50', 'Veg', 'Vegetable Dishes'),
(26, 'Boiled Rice', '2.50', 'Veg', 'Side Orders - Rice'),
(27, 'Keema Pilau Rice', '3.50', 'Non-Veg', 'Side Orders - Rice'),
(28, 'Mushroom Rice', '3.20', 'Veg', 'Side Orders - Rice'),
(29, 'Garlic Naan', '3.00', 'Veg', 'Side Orders - Bread'),
(30, 'Stuffed Naan', '3.50', 'Veg', 'Side Orders - Bread'),
(31, 'Chapati', '1.00', 'Veg', 'Side Orders - Bread'),
(32, 'Green Salad', '2.00', 'Veg', 'Side Orders - Sundries'),
(33, 'Spice Popadum', '0.80', 'Veg', 'Side Orders - Sundries'),
(34, 'Chutney', '0.70', 'Veg', 'Side Orders - Sundries'),
(35, 'Ras Malai', '2.95', 'Veg', 'Dessert'),
(36, 'Ice Cream', '2.95', 'Veg', 'Dessert'),
(37, 'Gulab Jamun', '2.95', 'Veg', 'Dessert'),
(38, 'Kulfi', '2.95', 'Veg', 'Dessert'),
(39, 'Kheer', '2.95', 'Veg', 'Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `menu_bill`
--

CREATE TABLE `menu_bill` (
  `Order_Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Rest_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Fname`, `Lname`, `Contact`, `Rest_Name`) VALUES
('ehsan', 'Yaqoob', '9999999999', 'Tandoori By Nature');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Opening_Closing_Time` varchar(100) NOT NULL,
  `Details` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Name`, `Location`, `Contact`, `Opening_Closing_Time`, `Details`) VALUES
('Tandoori By Nature', 'G11 Markaz/ Islamabad Pakistan  ', '09642540626/09581871321', '10:00 AM - 12:00 AM', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `Date` date NOT NULL,
  `Daily` int(11) NOT NULL,
  `Weekly` int(11) DEFAULT NULL,
  `Monthly` int(11) DEFAULT NULL,
  `Rname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Details` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Fname`, `Lname`, `Address`, `Contact`, `Details`) VALUES
('Aneeeb', 'Gogaa', 'E-15 OBH , IIIT Hyderabad', '678668', 'Provides Sea Food.'),
('Muna', 'Mian', 'E-16 OBH , IIIT Hyderabad', '856855', 'Provides Grocery.'),
('Waleed', 'Islam', 'E-121 OBH , IIIT Hyderabad', '123211', 'Provides Non-Veg Stuff.');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `Table_Number` varchar(9) NOT NULL,
  `Details` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`Table_Number`, `Details`) VALUES
('1', 'Capacity 4 People'),
('10', 'Capacity 8 People Family Table'),
('11', 'Capacity 8 People Family Table'),
('2', 'Capacity 4 People Near Window'),
('3', 'Capacity 3 People'),
('4', 'Capacity 2 People'),
('5', 'Capacity 8 People Family Table'),
('6', 'Capacity 4 People'),
('7', 'Capacity 4 People Near Window'),
('8', 'Capacity 3 People'),
('9', 'Capacity 2 People');

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `Waiter_Id` int(11) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Salary` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Bdate` date DEFAULT NULL,
  `Join_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`Waiter_Id`, `Fname`, `Lname`, `Contact`, `Address`, `Salary`, `Sex`, `Bdate`, `Join_Date`) VALUES
(1, 'Raza', 'Sohail', '123456', 'E-22 OBH , IIIT Hyderabad', '8000', 'M', '1993-10-12', '2012-08-01'),
(2, 'ehsan', 'Ali', '132244', 'E-28 OBH , IIIT Hyderabad', '8000', 'M', '1992-12-22', '2012-08-01'),
(3, 'Wajid', 'Noor', '213122', 'E-27 OBH , IIIT Hyderabad', '8000', 'M', '1993-05-12', '2012-08-01'),
(4, 'Bilal', 'jhon', '121232', 'E-26 OBH , IIIT Hyderabad', '8000', 'M', '1992-03-12', '2012-08-01'),
(5, 'MAria', 'Fazal', '213122', 'Hollywood USA', '9000', 'F', '1986-10-13', '2012-08-01'),
(6, 'Sunny', 'Mian', '323322', 'Bollywood INDIA', '9000', 'F', '1982-10-13', '2012-08-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_Id`),
  ADD KEY `Cust_Id` (`Cust_Id`),
  ADD KEY `Table_Num` (`Table_Num`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`Cashier_Id`);

--
-- Indexes for table `cook`
--
ALTER TABLE `cook`
  ADD PRIMARY KEY (`Cook_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`Delivery_Boy_Id`);

--
-- Indexes for table `delivery_boy_2`
--
ALTER TABLE `delivery_boy_2`
  ADD KEY `Boy_Id` (`Boy_Id`),
  ADD KEY `Delivery_Id` (`Delivery_Id`);

--
-- Indexes for table `home_delivery`
--
ALTER TABLE `home_delivery`
  ADD PRIMARY KEY (`Delivery_Id`),
  ADD KEY `Cust_Id` (`Cust_Id`),
  ADD KEY `Order_Id` (`Order_Id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`Ingredient_Id`,`Name`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Manager_Id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Menu_Id`,`Name`);

--
-- Indexes for table `menu_bill`
--
ALTER TABLE `menu_bill`
  ADD KEY `Order_Id` (`Order_Id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Fname`,`Lname`,`Contact`),
  ADD KEY `Rest_Name` (`Rest_Name`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Fname`,`Lname`,`Address`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`Table_Number`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`Waiter_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `Cashier_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cook`
--
ALTER TABLE `cook`
  MODIFY `Cook_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `Delivery_Boy_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_delivery`
--
ALTER TABLE `home_delivery`
  MODIFY `Delivery_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `Ingredient_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `Manager_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Menu_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `waiter`
--
ALTER TABLE `waiter`
  MODIFY `Waiter_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Table_Num`) REFERENCES `tables` (`Table_Number`);

--
-- Constraints for table `delivery_boy_2`
--
ALTER TABLE `delivery_boy_2`
  ADD CONSTRAINT `delivery_boy_2_ibfk_1` FOREIGN KEY (`Boy_Id`) REFERENCES `delivery_boy` (`Delivery_Boy_Id`),
  ADD CONSTRAINT `delivery_boy_2_ibfk_2` FOREIGN KEY (`Delivery_Id`) REFERENCES `home_delivery` (`Delivery_Id`);

--
-- Constraints for table `home_delivery`
--
ALTER TABLE `home_delivery`
  ADD CONSTRAINT `home_delivery_ibfk_1` FOREIGN KEY (`Cust_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `home_delivery_ibfk_2` FOREIGN KEY (`Order_Id`) REFERENCES `bill` (`Order_Id`);

--
-- Constraints for table `menu_bill`
--
ALTER TABLE `menu_bill`
  ADD CONSTRAINT `menu_bill_ibfk_1` FOREIGN KEY (`Order_Id`) REFERENCES `bill` (`Order_Id`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`Rest_Name`) REFERENCES `restaurant` (`Name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
