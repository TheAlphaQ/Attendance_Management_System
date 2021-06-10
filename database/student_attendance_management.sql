-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 02:51 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_attendance_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `a_id` int(10) NOT NULL,
  `full_name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`a_id`, `full_name`, `email`, `password`) VALUES
(1, 'Abinash Behera', '2019abinash.behera@ves.ac.in', 'password1'),
(2, 'Nihar Kenny', '2019nihar.kenny@ves.ac.in', 'nihar'),
(3, 'Dhiren Ganwani', '2019dhiren.ganwani@ves.ac.in', 'password3'),
(4, 'Soham Ambre', '2019soham.ambre@ves.ac.in', 'password4');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `c_id` varchar(20) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `semester` decimal(10,0) NOT NULL,
  `d_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`c_id`, `c_name`, `semester`, `d_id`) VALUES
('C001', 'D7A', '3', 'D001'),
('C002', 'D7B', '3', 'D001'),
('C003', 'D9A', '3', 'D002'),
('C004', 'D9B', '3', 'D002'),
('C005', 'D11A', '3', 'D003'),
('C006', 'D11B', '3', 'D003'),
('C007', 'D13A', '3', 'D004'),
('C008', 'D13B', '3', 'D004'),
('C009', 'D15A', '3', 'D005');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `d_id` varchar(20) NOT NULL,
  `d_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`d_id`, `d_name`) VALUES
('D001', 'CMPN'),
('D002', 'ETRX'),
('D003', 'IT'),
('D004', 'CIVIL'),
('D005', 'EXTC'),
('D006', 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `record_attendance`
--

CREATE TABLE `record_attendance` (
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `date` date NOT NULL,
  `time-slot` decimal(10,0) NOT NULL,
  `s_id` varchar(20) NOT NULL,
  `t_id` varchar(20) NOT NULL,
  `sub_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_attendance`
--

INSERT INTO `record_attendance` (`note`, `status`, `date`, `time-slot`, `s_id`, `t_id`, `sub_id`) VALUES
('', 'A', '2021-05-20', '1', 'S0000011', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000011', 'T0000006', 'SUB003'),
('', 'A', '2021-05-20', '1', 'S0000012', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000012', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000013', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000013', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000014', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000014', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000015', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '1', 'S0000015', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000016', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000016', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000017', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000017', 'T0000006', 'SUB003'),
('', 'A', '2021-05-20', '1', 'S0000018', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '1', 'S0000018', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000019', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '1', 'S0000019', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '1', 'S0000020', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '1', 'S0000020', 'T0000006', 'SUB003'),
('', 'P', '2021-05-20', '2', 'S0000011', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '2', 'S0000012', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '2', 'S0000013', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '2', 'S0000014', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '2', 'S0000015', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '2', 'S0000016', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '2', 'S0000017', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '2', 'S0000018', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '2', 'S0000019', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '2', 'S0000020', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000011', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '3', 'S0000012', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000013', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '3', 'S0000014', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '3', 'S0000015', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000016', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000017', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000018', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000019', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '3', 'S0000020', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000011', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000012', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000013', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000014', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000015', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '4', 'S0000016', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '4', 'S0000017', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000018', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000019', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '4', 'S0000020', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000011', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000012', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000013', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '5', 'S0000014', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000015', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000016', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000017', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000018', 'T0000003', 'SUB002'),
('', 'P', '2021-05-20', '5', 'S0000019', 'T0000003', 'SUB002'),
('', 'A', '2021-05-20', '5', 'S0000020', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000011', 'T0000003', 'SUB002'),
('', 'A', '2021-05-22', '1', 'S0000012', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000013', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000014', 'T0000003', 'SUB002'),
('', 'A', '2021-05-22', '1', 'S0000015', 'T0000003', 'SUB002'),
('', 'A', '2021-05-22', '1', 'S0000016', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000017', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000018', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000019', 'T0000003', 'SUB002'),
('', 'P', '2021-05-22', '1', 'S0000020', 'T0000003', 'SUB002');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `c_id` varchar(20) NOT NULL,
  `roll_no` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `fname`, `mname`, `lname`, `gender`, `address`, `password`, `email`, `dob`, `c_id`, `roll_no`) VALUES
('S0000001', 'Soham', 'V', 'Ambre', 'M', '', 'password1', '2019soham.ambre@ves.ac.in', '2001-08-08', 'C001', '4'),
('S0000002', 'Abinash', 'M', 'Behera', 'M', NULL, 'password2', '2019abinash.behera@ves.ac.in', '2000-08-15', 'C001', '9'),
('S0000003', 'Dhiren', 'A', 'Ganwani', 'F', NULL, 'password3', '2019dhiren.ganwani@ves.ac.in', '2001-04-13', 'C001', '21'),
('S0000004', 'Nihar', 'H', 'Kenny', 'M', NULL, 'password4', '2019nihar.kenny@ves.ac.in', '2021-04-05', 'C001', '32'),
('S0000005', 'Paras', 'M', 'Patil', 'M', '', 'password5', '2019paras.patil@ves.ac.in', '2001-08-08', 'C001', '32'),
('S0000006', 'harsh', 'D', 'patil', 'M', NULL, 'HARSH@123', 'HARSH@GMAIL.COM', '2021-05-14', 'C001', '15'),
('S0000007', 'DATTARAJ', 'D', 'DHADAS', 'M', NULL, 'DATTA@123', 'DATTA@GMAIL.COM', '2021-05-04', 'C001', '16'),
('S0000008', 'POOJA', 'M', 'DESHMUKH', 'F', NULL, 'POOJA@345', 'POOJA@GMAIL.COM', '2021-05-09', 'C001', '17'),
('S0000009', 'DEVENDRA', 'C', 'CHOUGULE', 'M', NULL, 'DEV@876', 'DEV@GMAIL.COM', '2021-04-14', 'C001', '19'),
('S0000010', 'BOB', 'F', 'MARLEY', 'M', NULL, 'BOB@134', 'BOB@GMAIL.COM', '2021-03-09', 'C001', '27'),
('S0000011', 'MIA', 'A', 'JUDITH', 'F', NULL, 'MIA@189', 'MIA@GMAIL.COM', '2021-02-01', 'C002', '1'),
('S0000012', 'STACY', NULL, 'NINA', 'F', NULL, 'STACY@789', 'STACY@GMAIL.COM', '2021-02-10', 'C002', '2'),
('S0000013', 'NINA', NULL, 'M', 'F', NULL, 'NINA123', 'NINA@GMAIL.COM', '2021-01-21', 'C002', '4'),
('S0000014', 'LIAM', 'F', 'NEESON', 'M', NULL, 'LIAM678', 'LIAM@GMAIL.COM', '2020-11-18', 'C002', '6'),
('S0000015', 'ROSS', 'H', 'G', 'M', NULL, 'ROSS678', 'ROSS@GMAIL.COM', '2020-11-19', 'C002', '7'),
('S0000016', 'CHANDLER', 'G', 'BING', 'M', NULL, 'CHANDLER442', 'CHANDLER@GMAIL.COM', '2020-11-18', 'C002', '8'),
('S0000017', 'JOEY', 'T', 'TRIBBIANI', 'M', NULL, 'JOEY199', 'JOEY@GMAIL.COM', '2021-01-06', 'C002', '9'),
('S0000018', 'PHOEBE', 'A', 'GRAPHH', 'F', NULL, 'PHOEBEABC', 'PHOEBE@GMAIL.COM', '2021-02-26', 'C002', '12'),
('S0000019', 'RACHAEL', 'S', 'GREEN', 'F', NULL, 'RACHAEL1923', 'RACHAEL@GMAIL.COM', '2021-05-28', 'C002', '17'),
('S0000020', 'JUDY', 'M', 'KELLER', 'F', NULL, 'JUDY@987', 'JUDY@GMAIL.COM', '2020-10-17', 'C002', '65'),
('S0000021', 'TINO', 'G', 'HELLER', 'F', NULL, 'TINO112', 'TINO@GMAIL.COM', '2021-05-02', 'C003', '16'),
('S0000022', 'MONICA', 'A', 'GELLER', 'F', NULL, 'MONICA@7653', 'MONICA@GMAIL.COM', '2021-03-10', 'C003', '41'),
('S0000023', 'JOSS', 'B', 'BUTTLER', 'M', NULL, 'JOSS1221', 'JOSS@GMAIL.COM', '2020-12-18', 'C003', '65'),
('S0000024', 'JASON', 'K', 'ROY', 'M', NULL, 'JASON8SD', 'JASON@GMAIL.COM', '2021-01-22', 'C003', '21'),
('S0000025', 'JOE', 'C', 'ROOT', 'M', NULL, 'JOEABCD', 'JOE@GMAIL.COM', '2021-01-23', 'C003', '22'),
('S0000026', 'SARAH', 'H', 'TAYLOR', 'F', NULL, 'SARAH991', 'SARAH@GMAIL.COM', '2020-08-02', 'C003', '28'),
('S0000027', 'MURLI', 'E', 'VIJAY', 'M', NULL, 'MURILIVIJAY', 'MURLI@GMAIL.COM', '2020-11-20', 'C003', '55'),
('S0000028', 'JASON', 'B', 'BHERENDOFF', 'M', NULL, 'JASONB', 'JASON123@GMAIL.COM', '2021-01-22', 'C003', '11'),
('S0000029', 'JAMES', 'B', 'ANDERSON', 'M', NULL, 'JAMESA', 'JAMES@GMAIL.COM', '2020-11-28', 'C003', '14'),
('S0000030', 'SMRITI', 'M', 'MANDHANA', 'F', NULL, 'SMRITIM', 'SMRITI@GMAIL.COM', '2020-10-30', 'C003', '25'),
('S0000031', 'ELLYSE ', 'M', 'PERRY', 'F', NULL, 'ELLPERR', 'ELLYSE@GMAIL.COM', '2020-12-31', 'C004', '26'),
('S0000032', 'MEGAN', 'S', 'SCHUTT', 'F', NULL, 'MEGAN445', 'MEGAN@GMAIL.COM', '2020-09-30', 'C004', '43'),
('S0000033', 'MIKE', 'C', 'ROSS', 'M', NULL, 'MIKEY@1123', 'MIKE@GMAIL.COM', '2020-09-29', 'C004', '66'),
('S0000034', 'FLOSS', 'M', 'GERRET', 'M', NULL, 'GORSS2113', 'FLOSS@GMAIL.COM', '2019-12-31', 'C004', '67'),
('S0000035', 'HARVEY', 'M', 'SPECTER', 'M', NULL, 'HARSPEC', 'HARVEY@GMAIL.COM', '2021-03-24', 'C004', '48'),
('S0000036', 'LOUIS', 'L', 'LITT', 'M', NULL, 'LOUIS334', 'LOUIS@GMAIL.COM', '2020-09-06', 'C004', '55'),
('S0000037', 'AUDREY', 'S', 'NICOL', 'F', NULL, 'AUDREY567', 'AUDREY@GMAIL.COM', '2020-07-07', 'C004', '39'),
('S0000038', 'JESSICA', 'P', 'PEARSON', 'F', NULL, 'JESS123', 'JESSICA@GMAIL.COM', '2019-12-24', 'C004', '41'),
('S0000039', 'DANIEL', 'N', 'HARDMAN', 'M', NULL, 'DAN432', 'DANIEL@GMAIL.COM', '2019-08-14', 'C004', '47'),
('S0000040', 'KATRINA', 'Z', 'NIGEL', 'F', NULL, 'KAT445', 'KATRINA@GMAIL.COM', '2020-05-20', 'C004', '47'),
('S0000041', 'GINA', 'L', 'LINETTE', 'F', NULL, 'GINA12345', 'GINA@GMAIL.COM', '2020-07-21', 'C005', '48'),
('S0000042', 'JAKE', 'P', 'PERALTA', 'M', NULL, 'JAKEP', 'JAKE@GMAIL.COM', '2020-10-20', 'C005', '4'),
('S0000043', 'AMY', 'S', 'SANTIAGO', 'F', NULL, 'AMYQQQ', 'AMY@GMAIL.COM', '2019-12-26', 'C005', '52'),
('S0000044', 'ROSA', 'D', 'DIAZ', 'F', NULL, 'ROZAWWW', 'ROZA@GMAIL.COM', '2020-04-05', 'C005', '56'),
('S0000045', 'TERRY', 'S', 'SINHA', 'M', NULL, 'TERRYM', 'TERRY@GMAIL.COM', '2020-01-30', 'C005', '70'),
('S0000046', 'CHARLES', 'W', 'BOYLE', 'M', NULL, 'CHALRIE', 'CHARLES@GMAIL.COM', '2019-11-11', 'C005', '1'),
('S0000047', 'RAY', 'H', 'HOLD', 'M', NULL, 'RAYYYY', 'RAY@GMAIL.COM', '2020-02-16', 'C005', '33'),
('S0000048', 'SCULLY', 'A', 'CANDY', 'M', NULL, 'SCULLYYYYY', 'SCULLY@GMAIL.COM', '2020-05-18', 'C005', '39'),
('S0000049', 'HITCHCOCK', 'A', 'TRIBBIANI', 'M', NULL, 'ITCH234', 'HITCHCOCK@GMAIL.COM', '2020-07-22', 'C005', '65'),
('S0000050', 'DOUG', 'J', 'JUDY', 'M', NULL, 'DOUGJUDY', 'DOUG@GMAIL.COM', '2020-07-29', 'C005', '35'),
('S0000051', 'Soham', NULL, 'Das', 'M', NULL, 'password', 'soham.das@ves.ac.in', '2021-05-20', 'C006', '1'),
('S0000056', 'IYER', NULL, 'Bhosle', 'M', NULL, 'password', 'soham.bhosale@ves.ac.in', '2021-04-05', 'C006', '6'),
('S0000057', 'BABITA', NULL, 'Shidore', 'M', NULL, 'password', 'soham.shidore@ves.ac.in', '2021-05-03', 'C006', '7'),
('S0000058', 'JETHALAL', NULL, 'Londhe', 'M', NULL, 'password', 'soham.londhe@ves.ac.in', '2021-05-04', 'C006', '8'),
('S0000060', 'Soham', NULL, 'Javle', 'M', NULL, 'password', 'soham.javle@ves.ac.in', '2021-07-07', 'C006', '10'),
('S0000061', 'Shivam', NULL, 'Shidore', 'M', NULL, 'password', 'shivam.shidore@ves.ac.in', '2021-04-05', 'C007', '1'),
('S0000080', 'Shivam', NULL, 'mahajan', 'M', NULL, 'password', 'shivam.mahajan@ves.ac.in', '2021-02-27', 'C008', '10'),
('S0000081', 'CHARLIE', 'S', 'SHEEN', 'M', NULL, 'CHALRIE11223', 'CHARLIE@GMAIL.COM', '2020-09-21', 'C009', '1'),
('S0000082', 'ALAN', 'B', 'SHEEN', 'M', NULL, 'ALANSHEEN', 'ALAN@GMAIL.COM', '2020-03-09', 'C009', '2'),
('S0000083', 'JAKE', 'A', 'SHEEN', 'M', NULL, 'JAKE212', 'JAKEY@GMAIL.COM', '2020-05-18', 'C009', '3'),
('S0000084', 'ROSE', 'B', 'PERRY', 'F', NULL, 'ROSECHAR', 'ROSE@GMAIL.COM', '2020-05-29', 'C009', '4'),
('S0000085', 'TRACY', 'B', 'CHIA', 'F', NULL, 'TRACY456', 'TRACY@GMAIL.COM', '2020-06-10', 'C009', '5'),
('S0000086', 'HARWIN', 'B', 'SCHMUCK', 'M', NULL, 'HARWIN', 'HARWIN@GMAIL.COM', '2020-07-16', 'C009', '6'),
('S0000087', 'LUKE', 'S', 'JAKE', 'M', NULL, 'LUKEY', 'LUKE@GMAIL.COM', '2020-07-13', 'C009', '7'),
('S0000088', 'COBBY', 'S', 'STREET', 'F', NULL, 'COBBYSTREET', 'COBY@GMAIL.COM', '2020-08-18', 'C009', '8'),
('S0000089', 'HELLEN', 'B', 'KELLER', 'F', NULL, 'HELLENKELLER', 'HELLEN@GMAIL.COM', '2020-08-02', 'C009', '9'),
('S0000090', 'EVA', 'A', 'TALREJA', 'F', NULL, 'EVE@FAV', 'EVA@GMAIL.COM', '2020-08-27', 'C009', '10'),
('S0000091', 'nhk', 'nhk', 'nhk', 'M', 'nhk nhk', 'nhk', 'nhk@ves.ac.in', '2021-05-20', 'C001', '34');

-- --------------------------------------------------------

--
-- Table structure for table `student_phone`
--

CREATE TABLE `student_phone` (
  `s_id` varchar(20) NOT NULL,
  `s_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_phone`
--

INSERT INTO `student_phone` (`s_id`, `s_phone`) VALUES
('S0000001', '7977845621'),
('S0000001', '9833544518'),
('S0000002', '9978908732'),
('S0000003', '9837568734'),
('S0000004', '9274618374'),
('S0000005', '7837263546'),
('S0000006', '9483285761'),
('S0000007', '9832459873'),
('S0000008', '9837536572'),
('S0000009', '8756234581'),
('S0000010', '9999999999'),
('S0000011', '8888888888'),
('S0000012', '7777777777'),
('S0000013', '6666666666'),
('S0000014', '5555555555'),
('S0000015', '4444444444'),
('S0000016', '3333333333'),
('S0000017', '2222222222'),
('S0000018', '1111111111'),
('S0000019', '9898989898'),
('S0000020', '8989898989'),
('S0000021', '8787878787'),
('S0000022', '8686868686'),
('S0000023', '8585858585'),
('S0000024', '8484848484'),
('S0000025', '8383838383'),
('S0000026', '8282828282'),
('S0000027', '8181818181'),
('S0000028', '7171717171'),
('S0000029', '7272727272'),
('S0000030', '7373737373'),
('S0000031', '7474747474'),
('S0000032', '7575757575'),
('S0000033', '7676767676'),
('S0000034', '7878787878'),
('S0000035', '7979797979'),
('S0000036', '6969696969'),
('S0000037', '6868686868'),
('S0000038', '6767676767'),
('S0000039', '6565656565'),
('S0000040', '6464646464'),
('S0000041', '5959595959'),
('S0000042', '5858585858'),
('S0000043', '5757575757'),
('S0000044', '5656565656'),
('S0000045', '5454545454'),
('S0000046', '5353535353'),
('S0000047', '5252525252'),
('S0000048', '5151515151'),
('S0000049', '4141414141'),
('S0000050', '4242424242'),
('S0000051', '4343434343'),
('S0000056', '4949494949'),
('S0000057', '3131313131'),
('S0000058', '3232323232'),
('S0000060', '3535353535'),
('S0000061', '3636363636'),
('S0000080', '5050505050'),
('S0000081', '6060606060'),
('S0000082', '7070707070'),
('S0000083', '8080808080'),
('S0000084', '9090909090'),
('S0000085', '1919191919'),
('S0000086', '1818181818'),
('S0000087', '1717171717'),
('S0000088', '1616161616'),
('S0000089', '1515151515'),
('S0000090', '1414141414'),
('S0000091', '7859663124'),
('S0000091', '7977391127');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` varchar(20) NOT NULL,
  `sub_name` varchar(40) NOT NULL,
  `sub_credits` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`, `sub_credits`) VALUES
('SUB001', 'AOA', '10'),
('SUB002', 'DBMS', '10'),
('SUB003', 'MATHS', '10'),
('SUB004', 'OS', '10'),
('SUB005', 'MICROPROCESSOR', '10'),
('SUB006', 'ACAD', '10'),
('SUB007', 'Fluid Mechanics.', '10'),
('SUB008', 'Engineering Geology.', '10'),
('SUB009', 'Mechanics of structure', '10'),
('SUB010', 'Structural Analysis', '10'),
('SUB011', 'Microelectronics Circuits', '10'),
('SUB012', '	Advanced Communication Lab', '10'),
('SUB013', 'Information Theory & Coding', '10'),
('SUB014', 'Fundamentals of CMOS', '10'),
('SUB015', 'Microcontrollers', '10'),
('SUB016', 'Multimedia Applications', '10'),
('SUB017', 'Data Structures', '10'),
('SUB018', 'Object Oriented Programming', '10'),
('SUB019', 'Design and Analysis of Algorithms', '10'),
('SUB020', 'Computer Networks', '10'),
('SUB021', 'COMPUTER GRAPHICS', '10'),
('SUB022', 'Signals & Systems', '10'),
('SUB023', 'Electronic Devices & Circuits (EDC)', '10'),
('SUB024', 'Network Theory', '10'),
('SUB025', 'Analogue Electronics', '10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` varchar(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `d_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `fname`, `mname`, `lname`, `gender`, `address`, `password`, `email`, `d_id`) VALUES
('T0000001', 'Pallavi', 'M', 'Sainade', 'F', NULL, 'password1', 'pallavi.sainade@ves.ac.in', 'D001'),
('T0000002', 'Nusrat', 'M', 'Ansari', 'F', NULL, 'password2', 'nusrat.ansari@ves.ac.in', 'D002'),
('T0000003', 'Sunita', NULL, 'Sahoo', 'F', NULL, 'sunita', 'sunita.sahoo@ves.ac.in', 'D001'),
('T0000004', 'ABHILASHA', '', 'BEHERA', 'F', '', 'ABHILASHAB', 'abhilasha.behera@ves.ac.in', 'D005'),
('T0000005', 'SUGANDHA', 'D', 'SHARMA', 'F', '', 'SAARMASUGANDHA', 'sugandha.sharma@ves.ac.in', 'D005'),
('T0000006', 'Sheesha', 'h', 'harimi', 'F', '', 'sheesha123', 'sheesha.harimi@ves.ac.in', 'D004'),
('T0000007', 'Abhishek', 'p', 'patil', 'M', '', 'abhishek234', 'abhishek.patil@ves.ac.in', 'D002'),
('T0000008', 'Arya', 't', 'talwarkar', 'M', '', 'aryat12', 'arya.talwarkar@ves.ac.in', 'D003');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_phone`
--

CREATE TABLE `teacher_phone` (
  `t_id` varchar(20) NOT NULL,
  `t_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_phone`
--

INSERT INTO `teacher_phone` (`t_id`, `t_phone`) VALUES
('T0000001', '9210678925'),
('T0000002', '7899648579'),
('T0000003', '9876543210'),
('T0000004', '9876543210'),
('T0000005', '9786573847'),
('T0000006', '9787867564'),
('T0000007', '9098789086'),
('T0000008', '7897896765');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `t_id` varchar(20) NOT NULL,
  `c_id` varchar(20) NOT NULL,
  `sub_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`t_id`, `c_id`, `sub_id`) VALUES
('T0000001', 'C001', 'SUB001'),
('T0000002', 'C003', 'SUB002'),
('T0000003', 'C002', 'SUB002'),
('T0000004', 'C005', 'SUB025'),
('T0000005', 'C006', 'SUB024'),
('T0000006', 'C002', 'SUB003'),
('T0000007', 'C004', 'SUB014'),
('T0000008', 'C005', 'SUB017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `class_fk0` (`d_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `record_attendance`
--
ALTER TABLE `record_attendance`
  ADD PRIMARY KEY (`date`,`time-slot`,`s_id`,`t_id`,`sub_id`),
  ADD KEY `record_attendence_fk0` (`s_id`),
  ADD KEY `record_attendence_fk1` (`t_id`),
  ADD KEY `record_attendence_fk2` (`sub_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `student_fk0` (`c_id`);

--
-- Indexes for table `student_phone`
--
ALTER TABLE `student_phone`
  ADD PRIMARY KEY (`s_id`,`s_phone`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `teacher_fk0` (`d_id`);

--
-- Indexes for table `teacher_phone`
--
ALTER TABLE `teacher_phone`
  ADD PRIMARY KEY (`t_id`,`t_phone`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`t_id`,`c_id`,`sub_id`),
  ADD KEY `teaches_fk1` (`c_id`),
  ADD KEY `teaches_fk2` (`sub_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_fk0` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`) ON DELETE CASCADE;

--
-- Constraints for table `record_attendance`
--
ALTER TABLE `record_attendance`
  ADD CONSTRAINT `record_attendance_fk0` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `record_attendance_fk1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `record_attendance_fk2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_fk0` FOREIGN KEY (`c_id`) REFERENCES `class` (`c_id`) ON DELETE CASCADE;

--
-- Constraints for table `student_phone`
--
ALTER TABLE `student_phone`
  ADD CONSTRAINT `student_phone_fk0` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_fk0` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_phone`
--
ALTER TABLE `teacher_phone`
  ADD CONSTRAINT `teacher_phone_fk0` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE;

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `teaches_fk0` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teaches_fk1` FOREIGN KEY (`c_id`) REFERENCES `class` (`c_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teaches_fk2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
