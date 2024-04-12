-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 02:32 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rfidpass`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin'),
(2, 'admin2', 'admin2@gmail.com', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `busroot_driver`
--

CREATE TABLE IF NOT EXISTS `busroot_driver` (
  `busrootdriverid` int(4) NOT NULL AUTO_INCREMENT,
  `busdetailid` varchar(10) NOT NULL,
  `rootid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `staffidc` int(4) NOT NULL,
  PRIMARY KEY (`busrootdriverid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `busroot_driver`
--

INSERT INTO `busroot_driver` (`busrootdriverid`, `busdetailid`, `rootid`, `staffid`, `staffidc`) VALUES
(1, '1', 1, 2, 5),
(2, '2', 2, 2, 1),
(3, '3', 3, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `bus_detail`
--

CREATE TABLE IF NOT EXISTS `bus_detail` (
  `busdetailid` int(4) NOT NULL AUTO_INCREMENT,
  `busno` varchar(20) NOT NULL,
  `capacity` varchar(20) NOT NULL,
  `bustypeid` int(10) NOT NULL,
  PRIMARY KEY (`busdetailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bus_detail`
--

INSERT INTO `bus_detail` (`busdetailid`, `busno`, `capacity`, `bustypeid`) VALUES
(1, 'GJ 23 8889', '65', 1),
(2, 'GJ 25 1234', '70', 2),
(3, 'GJ 30 9999', '50', 3);

-- --------------------------------------------------------

--
-- Table structure for table `bus_type`
--

CREATE TABLE IF NOT EXISTS `bus_type` (
  `bustypeid` int(4) NOT NULL AUTO_INCREMENT,
  `bustypename` varchar(50) NOT NULL,
  PRIMARY KEY (`bustypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bus_type`
--

INSERT INTO `bus_type` (`bustypeid`, `bustypename`) VALUES
(1, 'Regular'),
(2, 'Inter City'),
(3, 'Volvo');

-- --------------------------------------------------------

--
-- Table structure for table `desig_detail`
--

CREATE TABLE IF NOT EXISTS `desig_detail` (
  `desig_id` int(4) NOT NULL AUTO_INCREMENT,
  `desig_name` varchar(30) NOT NULL,
  PRIMARY KEY (`desig_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `desig_detail`
--

INSERT INTO `desig_detail` (`desig_id`, `desig_name`) VALUES
(1, 'conductor'),
(2, 'driver'),
(3, 'astaff');

-- --------------------------------------------------------

--
-- Table structure for table `localroot`
--

CREATE TABLE IF NOT EXISTS `localroot` (
  `lrid` int(10) NOT NULL AUTO_INCREMENT,
  `rid` varchar(10) NOT NULL,
  `lrname` varchar(20) NOT NULL,
  `lrkm` varchar(10) NOT NULL,
  `lrrate` varchar(10) NOT NULL,
  PRIMARY KEY (`lrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `localroot`
--

INSERT INTO `localroot` (`lrid`, `rid`, `lrname`, `lrkm`, `lrrate`) VALUES
(1, '1', 'Station', '0', '0'),
(2, '1', 'Fategujh', '2', '5'),
(3, '1', 'Amitnagar', '3', '3'),
(4, '1', 'Airport', '1', '4'),
(5, '1', 'Varashia', '1', '3'),
(6, '1', 'Mahavir Hall', '2', '5'),
(7, '1', 'Mandvi', '5', '10'),
(8, '2', 'Mandvi', '0', '0'),
(9, '2', 'Mahavir Hall', '2', '5'),
(10, '2', 'Varashia', '1', '3'),
(11, '2', 'Airport', '1', '4'),
(12, '2', 'Amitnagar', '1', '4'),
(13, '2', 'Fateganjh', '2', '5'),
(14, '2', 'Railway', '5', '10'),
(77, '3', 'Akota', '0', '0'),
(78, '3', 'Sur Sagar', '3', '5'),
(79, '3', 'Mandvi', '5', '15');

-- --------------------------------------------------------

--
-- Table structure for table `localticket`
--

CREATE TABLE IF NOT EXISTS `localticket` (
  `ltid` int(10) NOT NULL AUTO_INCREMENT,
  `rfid` varchar(10) NOT NULL,
  `fid` varchar(10) NOT NULL,
  `fromc` varchar(10) NOT NULL,
  `toid` varchar(10) NOT NULL,
  `toc` varchar(10) NOT NULL,
  `totalfare` varchar(10) NOT NULL,
  `ecount` varchar(10) NOT NULL,
  `busno` varchar(10) NOT NULL,
  `conductorname` varchar(30) NOT NULL,
  `record_date` varchar(30) NOT NULL,
  PRIMARY KEY (`ltid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `localticket`
--

INSERT INTO `localticket` (`ltid`, `rfid`, `fid`, `fromc`, `toid`, `toc`, `totalfare`, `ecount`, `busno`, `conductorname`, `record_date`) VALUES
(38, '0004415605', '2', 'Fatheganj', '5', 'Varasia', '21', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Feb 2, 2020 6:29:47 PM'),
(39, '0009642077', '3', 'Amitnagar', '5', 'Varasia', '15', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Feb 2, 2020 7:14:01 PM'),
(40, '0004415605', '2', 'Fatheganj', '4', 'Airport', '18', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:58:53 PM'),
(41, '0009642077', '2', 'Fatheganj', '4', 'Airport', '18', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 2:32:16 PM'),
(42, '0009642077', '4', 'Airport', '6', 'Mahavir Ha', '12', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:56:17 PM'),
(43, '0009642077', '6', 'Mahavir Ha', '1', 'Railway St', '0', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:57:30 PM'),
(44, '0009642077', '1', 'Railway St', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:58:18 PM'),
(45, '0009642077', '2', 'Fatheganj', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:58:18 PM'),
(46, '0009642077', '3', 'Amitnagar', '4', 'Airport', '12', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:58:53 PM'),
(47, '0009642077', '4', 'Airport', '4', 'Airport', '3', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:58:53 PM'),
(48, '0004415605', '4', 'Airport', '1', 'Railway St', '0', '2', 'GJ 23 8889', 'Mr Arjun Das', '15-Feb-2020 11:59:58 PM'),
(49, '0004415605', '1', 'Railway St', '1', 'Railway St', '0', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:00:43 AM'),
(50, '0004415605', '1', 'Railway St', '1', 'Railway St', '0', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:00:43 AM'),
(51, '0009642077', '1', 'Railway St', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:01:31 AM'),
(52, '0004415605', '1', 'Railway St', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:01:42 AM'),
(53, '0009642077', '1', 'Railway St', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:02:09 AM'),
(54, '0009642077', '2', 'Fatheganj', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:02:09 AM'),
(55, '0009642077', '2', 'Fatheganj', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', '16-Feb-2020 12:02:09 AM'),
(56, '0009642077', '2', 'Fatheganj', '', '', '', '1', 'GJ 23 8889', 'Mr Arjun Das', ''),
(57, '0004415605', '2', 'Fatheganj', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Feb 16, 2020 12:56:47 AM'),
(58, '0004415605', '2', 'Fatheganj', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Feb 16, 2020 12:57:43 AM'),
(59, '0004415605', '2', 'Fatheganj', '5', 'Varasia', '21', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Feb 16, 2020 12:58:12 AM'),
(60, '1234567890', '1', 'Railway St', '2', 'Fatheganj', '6', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Feb 18, 2020 4:16:46 PM'),
(61, '1234567890', '2', 'Fatheganj', '', '', '', '1', 'GJ 23 8889', 'Mr Arjun Das', ''),
(62, '9999999999', '1', 'Station', '7', 'Mandvi', '42', '2', 'GJ 23 8889', 'Mr Arjun Das', 'Mar 19, 2020 9:10:47 AM');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `emailid` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `root_detail`
--

CREATE TABLE IF NOT EXISTS `root_detail` (
  `rootid` int(4) NOT NULL AUTO_INCREMENT,
  `rootfrom` varchar(30) NOT NULL,
  `rootto` varchar(30) NOT NULL,
  `roottime` varchar(30) NOT NULL,
  `rootfair` varchar(30) NOT NULL,
  PRIMARY KEY (`rootid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `root_detail`
--

INSERT INTO `root_detail` (`rootid`, `rootfrom`, `rootto`, `roottime`, `rootfair`) VALUES
(1, 'Bharuch', 'Ankleshwar', '12:40', '200'),
(2, 'Ahmedabad', 'Surat', '12:30', '150'),
(3, 'Vadodara', 'Rajkot', '16:30', '50');

-- --------------------------------------------------------

--
-- Table structure for table `root_visit`
--

CREATE TABLE IF NOT EXISTS `root_visit` (
  `visit_id` int(4) NOT NULL AUTO_INCREMENT,
  `rfidno` varchar(30) NOT NULL,
  `userid` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `rootfair` varchar(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `root` varchar(100) NOT NULL,
  `conductorname` varchar(30) NOT NULL,
  `busno` varchar(30) NOT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `root_visit`
--

INSERT INTO `root_visit` (`visit_id`, `rfidno`, `userid`, `username`, `rootfair`, `date`, `root`, `conductorname`, `busno`) VALUES
(7, '5555555555', 22, 'sunidhi', '200', 'Aug 20, 2019 12:50:14 PM', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(8, '1111111111', 21, 'sunil', '100', 'Aug 20, 2019 12:53:31 PM', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(9, '1111111111', 21, 'sunil', '100', 'Aug 20, 2019 12:53:31 PM', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(10, '5555555555', 22, 'sunidhi', '100', 'Aug 20, 2019 12:55:56 PM', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(13, '5555555555', 22, 'sunidhi', '100', 'Aug 20, 2019 10:42:27 PM', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(14, '5555555555', 22, 'sunidhi', '100', 'Aug 20, 2019 10:42:27 PM', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(15, '0011742167', 25, 'rina', '100', 'Aug 26, 2019 11:44:16', 'Vadodara-Ahmedabad', 'rashesh', 'gj25 1234'),
(34, '0004415605', 19, 'Samarth Patel', '50', 'Feb 2, 2020 5:43:25 PM', '3', 'Mr Suresh Patel', 'gj30 9999'),
(35, '0004415605', 19, 'Samarth Patel', '50', 'Feb 2, 2020 6:40:52 PM', '3', 'Mr Suresh Patel', 'GJ 30 9999'),
(36, '0009642077', 18, 'Maharshi Patel', '50', 'Feb 2, 2020 7:14:06 PM', '3', 'Mr Suresh Patel', 'GJ 30 9999'),
(37, '0004415605', 19, 'Samarth Patel', '50', 'Feb 2, 2020 7:33:41 PM', '3', 'Mr Suresh Patel', 'GJ 30 9999'),
(38, '0009642077', 18, 'Maharshi Patel', '50', '15-Feb-2020 2:32:37 PM', '3', 'Mr Suresh Patel', 'GJ 30 9999'),
(39, '9999999999', 18, 'Maharshi Patel', '50', 'Mar 19, 2020 9:04:59 AM', '3', 'Mr Suresh Patel', 'GJ 30 9999');

-- --------------------------------------------------------

--
-- Table structure for table `staff_regis`
--

CREATE TABLE IF NOT EXISTS `staff_regis` (
  `staffid` int(4) NOT NULL AUTO_INCREMENT,
  `staffname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contno` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `desig_id` varchar(4) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `staff_regis`
--

INSERT INTO `staff_regis` (`staffid`, `staffname`, `email`, `password`, `contno`, `address`, `city`, `desig_id`) VALUES
(2, 'Mr Suresh Patel', 'suresh@gmail.com', 'password', '9537086987', 'Karelibaug', 'Vadodara', '3'),
(3, 'Mr Lalit Patel', 'lalit@gmail.com', 'password', '9909931618', 'Gotri', 'Ahmedabad', '3'),
(4, 'Mr Ramesh Shah', 'ramesh@gmail.com', 'password', '8460415128', 'R C Road', 'Vadodara', '2'),
(5, 'Mr Arjun Das', 'arjun@gmail.com', 'password', '7847857142', 'Satellite Road', 'Ahmedabad', '1'),
(6, 'Mr Deepak Mehta', 'deepak@gmail.com', 'password', '7354187450', 'Mandvi', 'Rajkot', '2');

-- --------------------------------------------------------

--
-- Table structure for table `user_complain`
--

CREATE TABLE IF NOT EXISTS `user_complain` (
  `compid` int(4) NOT NULL AUTO_INCREMENT,
  `userid` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desca` varchar(1000) NOT NULL,
  `attach` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`compid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_complain`
--

INSERT INTO `user_complain` (`compid`, `userid`, `title`, `desca`, `attach`, `date`, `status`) VALUES
(1, 18, 'Payment Issue', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n', 'uploads/uploads/uploads/uploads/IMG-20190829-WA001', '29/08/2019', 'Pending'),
(2, 18, 'bhikhi', 'kjkhh', 'uploads/VID-20190829-WA0020.mp4', '29/08/2019', 'Pending'),
(4, 18, 'ok', 'ok', 'uploads/VID-20190829-WA0020.mp4', '29/08/2019', 'Pending'),
(6, 18, 'complain by sk', 'not proper service', 'uploads/IMG-20190829-WA0003.jpg', '30/08/2019', 'Pending'),
(7, 21, 'hello', 'I lost my bag', 'uploads/IMG-20190901-WA0034.jpg', '01/09/2019', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_regis`
--

CREATE TABLE IF NOT EXISTS `user_regis` (
  `userid` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contno` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(20) NOT NULL,
  `walletamt` varchar(10) NOT NULL,
  `pc_attach` varchar(300) NOT NULL,
  `rfidno` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `user_regis`
--

INSERT INTO `user_regis` (`userid`, `username`, `email`, `password`, `contno`, `address`, `city`, `walletamt`, `pc_attach`, `rfidno`) VALUES
(18, 'Maharshi Patel', 'maharshi@gmail.com', 'maharshi', '8511223859', 'Navjivan', 'Vadodara', '701', 'images/DSC_1271.jpg', '0000000001'),
(19, 'Samarth Patel', 'samarth@gmail.com', 'samarth', '9825397667', 'Uma Cross Road', 'Ahmedabad', '450', 'images/PHOTO 001.jpg', '0000000003'),
(20, 'Sunita Patel', 'sunita@gmail.com', 'sunita', '9909245008', 'Bits Hostel', 'Rajkot', '180', 'images/c.jpg', '0000000004'),
(21, 'Pratik Patel', 'pratik@gmail.com', 'parth', '9208856172', 'Vrundavan', 'Vadodara', '250', 'images/Pratik Sir.jpg', '0000000002'),
(22, 'Nisarg Patel', 'nisarg@gmail.com', 'nisarg', '7359528316', 'Vrundavan', 'Ahmedabad', '125', 'images/2.jpg', '0000000017'),
(23, 'Maitri Patel', 'maitri@gmail.com', 'maitri', '7201838241', 'Vrundavan', 'Rajkot', '145', 'images/2.jpg', '0000000010'),
(47, 'Itishree Patel', 'itishree@gmail.com', 'itishree', '9662096522', 'Vrundavan Cross Road', 'Rajkot', '180', 'images/', '0000000014'),
(48, 'Neel Patel', 'neel@gmail.com', 'neel', '9723842202', 'Gotri', 'Vadodara', '230', 'images/DSC_1271.jpg', '0000000006'),
(50, 'Akshar Patel', 'akshar@gmail.com', 'akshar', '7777777777', 'Sojitra', 'Ahmedabad', '140', 'images/DSC_1271.jpg', '0000000005'),
(51, 'Neel Shah', 'neel@gmail.com', 'neel', '7487747145', 'Bapod', 'Vadodara', '150', '', '0000000011'),
(52, 'Mrudang', 'mrudang@gmail.com', 'mrudang', '8511112463', 'Surya Nagar', 'Vadodara', '120', 'images/', '0000000007'),
(53, 'ashwini', 'ashu@gmail.com', 'ashwini', '7407027191', 'Alkapuri', 'Vadodara', '250', 'images/', '0000000018'),
(54, 'Aarushi Patel', 'aarushi@gmail.com', 'aarushi', '7878785473', 'Rajpipla', 'Vadodara', '500', 'images/IMG_20170625_142455983.jpg', '0000000016'),
(55, 'Aaru Patel', 'aaru2@gmail.com', 'aaru', '7787479875', 'Varkhad', 'Ahmedabad', '150', 'images/IMG_20170625_142455983.jpg', '0000000013'),
(56, 'Meet Shukla', 'meet@gmail.com', 'meet', '7888999978', 'Waghodia Road', 'Vadodara', '245', 'images/aaru.jpg', '0000000008'),
(57, 'asdsdf', 'apppsdf@gmail.com', 'wewewe', '7666320001', 'asdfas', 'Ahmedabad', '120', 'images/aaru.jpg', '0000000012'),
(58, 'asdfsadf', 'kkkk@gmail.com', 'tytyty', '8885741247', '', 'Ahmedabad', '120', 'images/aaru.jpg', '0000000015'),
(59, 'Aaarushi Patel', 'aarushipatel@gmail.com', 'aarushi', '8547574124', 'Varkhad', 'Vadodara', '250', 'images/IMG_20171020_111625900.jpg', '0000000009'),
(60, 'Jainam Shah', 'jainam@gmail.com', 'jainam', '7414785267', 'Panigate', 'Vadodara', '140', '', '0000000019'),
(61, 'Harsh Chauhan', 'harsh@gmail.com', 'harsh', '8747742587', 'Bapod', 'Vadodara', '130', '', '0000000020'),
(78, 'Disha Patel', 'disha@gmail.com', 'disha', '7414735753', 'D-Mart', 'Vadodara', '120', 'images/', '0000000021'),
(79, 'sdfasdf', 'a@gm.com', 'maa', '4321432432', 'sdfg', 'Ahmedabad', '40', 'images/', '0000000022'),
(80, 'aksdjf', 'asd@g.com', 'jjjj', '8511223859', 'sasd', 'Vadodara', '250', 'images/', '0000000023');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
