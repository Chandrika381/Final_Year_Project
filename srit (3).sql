-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 04:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srit`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_qns`
--

CREATE TABLE `add_qns` (
  `qns_id` int(11) NOT NULL,
  `question_name` varchar(255) NOT NULL,
  `sample_input` varchar(255) NOT NULL,
  `sample_output` varchar(255) NOT NULL,
  `aim` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_qns`
--

INSERT INTO `add_qns` (`qns_id`, `question_name`, `sample_input`, `sample_output`, `aim`) VALUES
(1, 'write a program to print hello world', 'hello world', 'hello world', 'To print hello world program'),
(2, 'write a program to print addition of two numbers', 'Enter input : 2 7', 'Addition of two numbers is : 9', 'To write a program to print addition of two numbers'),
(3, 'write a program to perform XOR operation between two numbers ', '2 3', 'XOR operation between two numbers is 1', 'To write a program to perform XOR operation between two numbers. '),
(4, 'Write a C program to find the reverse of the given number?', 'Enter an integer : 157', 'The reverse number of a given number = 751', 'To Write a C program to find the reverse of the given number'),
(5, 'Design an algorithm and implement using C language the following  exchanges', 'Enter values of a, b, c and d: 98 74 21 36', 'After swapping a = 74 b = 21 c = 36 d = 98', 'to Design an algorithm and implement using C language the following exchanges a ← b ← c ← d ← a and print the result as shown in sample input and output.'),
(6, 'Implement the C program which computes the sum of the first n terms of  the series?', 'Enter the value of n: 99', 'The sum of first 99 terms of the series is: 99', 'To Implement the C program which computes the sum of the first n terms of the series .Sum = 1 - 3 + 5 - 7 + 9 + ....'),
(7, 'Construct an algorithm which computes the sum of the factorials of  numbers between m and n.', 'Enter m and n value : 4 6', 'Sum of factorials of numbers between 4 and 6 is 864', 'Construct an algorithm which computes the sum of the factorials of numbers between m and n(both inclusive).'),
(8, 'Design an algorithm and implement using a C program which finds the  sum of the infinite series.', 'Enter the value of x and n: 4 5', 'sum = 3.666667', 'Design an algorithm and implement using a C program which finds the sum of the infinite series $1-\\frac{x^2}{2!}\\ +\\ \\frac{x^4}{4!\\ }\\ -\\ \\frac{x^6}{6!}\\ +\\ .....$, print the result as shown in the ex');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('srit', 'cse@srit');

-- --------------------------------------------------------

--
-- Table structure for table `examdate`
--

CREATE TABLE `examdate` (
  `date` varchar(255) NOT NULL,
  `id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examdate`
--

INSERT INTO `examdate` (`date`, `id`) VALUES
('2021-07-10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `std_ans_qns`
--

CREATE TABLE `std_ans_qns` (
  `std_id` int(11) NOT NULL,
  `qns_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_ans_qns`
--

INSERT INTO `std_ans_qns` (`std_id`, `qns_id`) VALUES
(1, 3),
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `std_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`std_id`, `username`, `password`, `name`) VALUES
(1, '174g1a0545', 'Nandu$11', 'Nandini'),
(2, '174g1a0518', 'Divya@123', 'Divya'),
(3, '174g1a0515', 'Chandu@2000', 'Chandrika'),
(16, '174g1a0550', 'Pavan@00', 'Pavan'),
(17, '174g1a0520', 'PavanShankr@12', 'PavanSankar'),
(18, '194g1a0545', 'Nandini!00', 'Nandini'),
(19, '174g1a0555', 'Nandu#123', 'Nandini');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_qns`
--
ALTER TABLE `add_qns`
  ADD PRIMARY KEY (`qns_id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_qns`
--
ALTER TABLE `add_qns`
  MODIFY `qns_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
