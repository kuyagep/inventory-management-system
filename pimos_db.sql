-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 02:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pimos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(55) NOT NULL,
  `category_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Equipment'),
(2, 'Furniture And Fixture'),
(4, 'Consumables');

-- --------------------------------------------------------

--
-- Table structure for table `con`
--

CREATE TABLE `con` (
  `con_id` int(55) NOT NULL,
  `con_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `con`
--

INSERT INTO `con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemned');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(55) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `contact_no` varchar(55) NOT NULL,
  `office` varchar(250) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(55) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `emp_contact_no` varchar(50) NOT NULL,
  `emp_email_add` text NOT NULL,
  `position_id` int(55) NOT NULL,
  `office_id` int(55) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role_id` int(55) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `picture`, `firstname`, `middlename`, `lastname`, `emp_contact_no`, `emp_email_add`, `position_id`, `office_id`, `username`, `password`, `role_id`, `added_at`) VALUES
(1, '_DSC0128 (2).JPG', 'Geperson', 'Camporedondo', 'Mamalias', '09317562740', 'geperson.ph@gmail.com', 7, 9, 'geperson', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', 2, '2022-06-05 16:02:24'),
(10, '', 'Ferly', 'Paungilan', 'Paungilan', '0912345789', 'ferly@gmail.com', 1, 1, 'ferly', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', 0, '0000-00-00 00:00:00'),
(13, '', 'Vince', 'procorato', 'Agbon', '1234567890', 'agbonjanvince@gmail.com', 7, 9, ' 3', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', 3, '2022-10-06 09:27:46'),
(14, '', 'Rose', 'Eroela', 'Dio', '1234567890', 'rose@gmail.com', 7, 9, ' 3', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', 3, '2022-10-06 09:28:48'),
(15, '', 'Romeo', 'miñoza', 'yting', '1234567890', 'romeo@gmail.com', 1, 9, '', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', 3, '2022-10-06 09:40:36'),
(16, '', 'antonio', 'campañano', 'pace', '234567890', 'antonio@gmail.com', 7, 9, 'antonio@gmail.com', '$2y$10$Hah02qLT/fGZKC0qRyrqHe.FOxJabwTcgVJ4.gqWKfhnQmViAveha', 3, '2022-10-06 09:44:16'),
(17, '', 'lee mark', 'mendez', 'digma', '234567890', 'lee@gmail.com', 7, 9, 'lee@gmail.com', '$2y$10$6UV1U1qAIYDfAAOrx9rcKeZ0enJE6IBYzSqyw9vJKjbTQXKYTPKIu', 3, '2022-10-06 09:49:22'),
(18, '', 'Erickson', 'Lomanta', 'Dañolko', '1234567890', 'erickson@gmail.com', 7, 9, 'erickson@gmail.com', '$2y$10$GZfeAqddWHEC9VUZQ/Uxk.McnMkRtDvNbmufZXSVH1VAfh.R3lGaG', 3, '2022-10-06 09:51:51'),
(62, '', 'James', 'Magnanakaw', 'Tuling', '4567890', 'james@gmail.com', 3, 9, 'james@gmail.com', '$2y$10$SYrom.qnC4clt4e1YFDN9exz7HybSeqKcGb.W/thgoFVTBSjRTZ0u', 3, '2022-10-14 11:31:51'),
(64, 'What is Inventory Management .png', 'Vince', 'C', 'Sparks', '56789', 'testadmin@gmail.com', 4, 5, 'testadmin@gmail.com', '$2y$10$wdgwQryboexLDplnSTI2O.eYhw4LMHPpvf9ro1txTrhn/7vpfiq66', 3, '2022-10-15 15:50:30'),
(67, '', 'Gerald', 'Ayunar', 'Agbon', '56789', 'testadmin@gmail.com', 5, 4, 'testadmin@gmail.com', '$2y$10$c5e.fyA3ZHm0IW46mu3n3.vwzOcQySrwee246tDrpiadCnf3QK.ya', 3, '2022-10-20 12:33:17'),
(68, '', 'Romeo', 'Minoza', 'Yting', '09109235796', 'romeo.yting@deped.gov.ph', 1, 9, 'romeo.yting@deped.gov.ph', '$2y$10$jCkBqtasSN7tW9Km7GaoMuh9stupNOMHSXfs1kR67Q3oTQw0N8tea', 3, '2022-10-20 17:16:34'),
(69, '', 'John Carlo', 'V', 'Montecillo', '09181910102', 'johncarlo@gmail.com', 7, 1, 'johncarlo@gmail.com', '$2y$10$G4TGBaw6kQSOi1wJax0Hxe3PvqrwrHg0g7CVCBOKEukqWi1Co/RIa', 2, '2022-10-20 20:10:14'),
(70, '', 'Geraint Lloyd', 'Carreon', 'Ortiz', '09559341555', 'gr3at_g3raint24@yahoo.com', 1, 1, 'gr3at_g3raint24@yahoo.com', '$2y$10$U8MksLQ6luzy/mXIsjII8ORdBkOi80VDCyYdeLLy1nk0b/gXiTVTa', 3, '2022-10-20 20:13:34'),
(71, '', 'Admin', 'Admin', 'Admin', '09123456789', 'admin@gmail.com', 1, 1, 'admin@gmail.com', '$2y$10$627KTYhahPQq9al9sbgQDuJaeRiROt.rDoWPV1nqwYjsxZNHNlr4W', 2, '2022-10-22 09:18:43'),
(72, '', 'User', 'User', 'User', '09123456789', 'user@gmail.com', 1, 1, 'user@gmail.com', '$2y$10$aoF3GO5Wyf6qLSG8MhbDaO4hjb8VID9A9NEnfqr6gvxaqJHA3jrwO', 3, '2022-10-22 09:20:09'),
(73, '', 'Superadmin', 'Superadmin', 'Superadmin', '09123456789', 'superadmin@gmail.com', 3, 1, 'superadmin@gmail.com', '$2y$10$9cKb.z/gAsSZwlK10oSX1OPQsNE1HtkJYouQouw0CaJ4pc6wL6WI.', 1, '2022-10-22 09:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `issuance`
--

CREATE TABLE `issuance` (
  `issued_id` int(11) NOT NULL,
  `issuance_code` varchar(250) NOT NULL,
  `issued_date` date NOT NULL,
  `issued_to` int(11) NOT NULL,
  `issued_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuance`
--

INSERT INTO `issuance` (`issued_id`, `issuance_code`, `issued_date`, `issued_to`, `issued_item`) VALUES
(5, 'ISNC2210-2', '2022-10-20', 16, 7),
(6, 'ISNC2210-3', '2022-10-20', 10, 2),
(7, 'ISNC2210-4', '2022-10-20', 10, 7),
(11, 'ISNC2210-5', '2022-10-20', 17, 5),
(12, 'ISNC2210-6', '2022-10-20', 62, 9),
(13, 'ISNC2210-7', '2022-10-20', 16, 8),
(15, 'ISNC2210-8', '2022-10-20', 10, 9),
(16, 'ISNC2210-8', '2022-10-20', 15, 7),
(17, 'ISNC2210-9', '2022-10-20', 68, 7),
(18, 'ISNC2210-10', '2022-10-20', 1, 9),
(19, 'ISNC2210-11', '2022-10-20', 70, 2),
(20, 'ISNC2210-12', '2022-10-22', 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(55) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_desc` varchar(250) NOT NULL,
  `item_serial` varchar(250) NOT NULL,
  `item_model` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `unit` varchar(250) NOT NULL,
  `item_amount` int(250) NOT NULL,
  `item_purdate` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(55) NOT NULL,
  `con_id` int(55) NOT NULL,
  `status_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_desc`, `item_serial`, `item_model`, `item_brand`, `unit`, `item_amount`, `item_purdate`, `supplier_id`, `category_id`, `con_id`, `status_id`) VALUES
(2, 'Laptops', 'Core i7', '123456', '1234567', 'ASUS', 'unit', 45000, '2022-10-16', 2, 1, 2, 1),
(5, 'Printer', 'Monochrome Printer', '456FGHJ78', 'LBP2900', 'CANON', 'unit', 7689, '2022-10-18', 3, 1, 1, 4),
(7, 'Hard Drive', 'SEAGATE 8TB SATA Ironwolf 7200RPM 256MB NAS Hard Drive', '437FG7', 'YTRE45', 'SEAGATE', 'pc', 14850, '2022-10-17', 4, 1, 1, 4),
(8, ' DESKTOP', ' I3 W/ GT1030', '76YUIE4', 'ASPIRE TC-1750', 'ACER ', 'unit', 41995, '2022-10-18', 4, 1, 1, 4),
(9, 'MONITOR ', ' 27″ L AGON GAMING LOL EDTN', '765GFHJ890', 'AG275QX', 'AOC', 'pc', 25700, '2022-10-18', 4, 1, 1, 4),
(10, 'MONITOR ', ' ECO 8CH HDTVI Combo Kit', '6543FGHJKL', ' TVI-8CH4D4B-2MP', 'HIKVISION', 'unit', 9200, '2022-10-18', 3, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `item_status`
--

CREATE TABLE `item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_status`
--

INSERT INTO `item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repaire'),
(2, 'for transfer'),
(3, 'for condemned'),
(4, 'no status'),
(7, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `office_id` int(55) NOT NULL,
  `office_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`office_id`, `office_name`) VALUES
(1, 'Admin'),
(2, 'Budget'),
(3, 'Cashier'),
(4, 'CID'),
(5, 'COA'),
(6, 'Finance'),
(7, 'HR'),
(8, 'Legal'),
(9, 'Supply'),
(10, 'SGOD'),
(13, 'Records');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(55) NOT NULL,
  `position_name` varchar(250) NOT NULL,
  `position_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`, `position_desc`) VALUES
(1, 'Administrative Officer', 'Permanent'),
(2, 'Administrative Aide', 'Permanent'),
(3, 'Accountant', 'Permanent'),
(4, 'Budget Officer', 'Permanent'),
(5, 'Education Program Supervisor', 'Permanent'),
(6, 'Auditor', 'Permanent'),
(7, 'Job Order', 'Contractual'),
(8, 'CEO', 'System Admin');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL,
  `req_is_done` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `req_status`
--

CREATE TABLE `req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `req_status`
--

INSERT INTO `req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `req_type`
--

CREATE TABLE `req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_type`
--

INSERT INTO `req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(55) NOT NULL,
  `role_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_desc`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(55) NOT NULL,
  `supplier_name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact_no` varchar(250) NOT NULL,
  `email_add` varchar(250) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `address`, `contact_no`, `email_add`, `added_at`) VALUES
(1, 'Thinking Tools', 'Digos City', '09123456789', 'supplier@gmail.com', '2022-08-05 16:02:24'),
(2, 'Davao Future Bright Enterprise', 'Davao City', '09123456789', 'supplier@gmail.com', '2022-08-05 16:02:24'),
(3, 'Octagon', 'Digos City', '09123456789', 'supplier@gmail.com', '2022-08-05 16:02:24'),
(4, 'PC Express', 'Davao City', '09123456789', 'supplier@gmail.com', '2022-08-05 16:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(50) NOT NULL,
  `username` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(50) NOT NULL,
  `active_status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `firstname`, `lastname`, `email`, `password`, `role`, `active_status`, `created_at`) VALUES
(1, 'superadmin', 'System', 'Administrator', 'superadmin@gmail.com', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', '1', '1', '2022-06-05 16:02:24'),
(2, 'admin', 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', '2', '1', '2022-06-05 16:02:24'),
(3, 'user', 'User', 'Test', 'usertest@gmail.com', '$2y$10$77qr92YiqHUMn4c.BVo8ZufBN.K3srkdBeBwxsNDYrGuYBGfLeUSi', '3', '1', '2022-06-05 16:02:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `con`
--
ALTER TABLE `con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `issuance`
--
ALTER TABLE `issuance`
  ADD PRIMARY KEY (`issued_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_status`
--
ALTER TABLE `item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `req_status`
--
ALTER TABLE `req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `req_type`
--
ALTER TABLE `req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `con`
--
ALTER TABLE `con`
  MODIFY `con_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(55) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `issuance`
--
ALTER TABLE `issuance`
  MODIFY `issued_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item_status`
--
ALTER TABLE `item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `office_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `req_status`
--
ALTER TABLE `req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `req_type`
--
ALTER TABLE `req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
