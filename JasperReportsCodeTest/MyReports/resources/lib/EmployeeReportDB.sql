-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.25 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for employee_report
CREATE DATABASE IF NOT EXISTS `employee_report` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employee_report`;

-- Dumping structure for table employee_report.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int NOT NULL,
  `employee_name` varchar(128) NOT NULL COMMENT ' The employee full name ',
  `department` enum("HR","SALES","IT","FINANCE") NOT NULL COMMENT ' The employee job department ',
  `salary` decimal(12,2) NOT NULL COMMENT ' The employee salary ',
  `bonus` decimal(12,2) NULL DEFAULT '0.00' COMMENT ' The employee bonus based on 10% of salary ',
  `hire_date` date NOT NULL COMMENT ' The employee date of hire ',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='this table records employee job related information';

-- Dumping data for table employee_report.employees: ~20 rows (approximately)
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476500', 'Joyce Kiragu Kagiri', 'HR', '85000.00', '2017-02-12');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476501', 'Anne Ogolla Owira', 'HR', '80000.00', '2019-06-24');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476502', 'Juma Musyoka Musau', 'HR', '86000.00', '2015-11-09');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476503', 'Peter Ashok Kariuki', 'HR', '82000.00', '2018-09-17');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476504', 'Purity Mueni Musyoka', 'SALES', '50000.00', '2018-03-11');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476505', 'Charlotte Kendy Koome', 'SALES', '54000.00', '2018-02-23');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476506', 'Mary Njoki Muthoni', 'SALES', '52000.00', '2018-02-25');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476507', 'Grace Anita Aloo', 'SALES', '55000.00', '2017-11-20');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476508', 'Bonnie Kiserian Tepis', 'SALES', '50000.00', '2018-02-27');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476509', 'Mark Masai Lenkul', 'SALES', '52000.00', '2018-02-22');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476510', 'Brandon Twain Talle', 'SALES', '50000.00', '2018-02-28');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476511', 'Susan Wuesh Dorcas', 'IT', '95000.00', '2017-03-12');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476512', 'Isaac Mutheu Muoki', 'IT', '98000.00', '2017-03-15');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476513', 'Dennis Waweru Kinuthia', 'IT', '100000.00', '2017-02-28');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476514', 'Stanley Pilate Pinto', 'IT', '102000.00', '2017-02-20');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476515', 'Jacob Kimutai Rono', 'IT', '110000.00', '2017-02-15');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476516', 'Wanja Wacucu Wahiu', 'FINANCE', '85000.00', '2018-05-17');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476517', 'Stephanie Mills Njeri', 'FINANCE', '88000.00', '2018-05-20');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476518', 'Christopher Maitha Mau', 'FINANCE', '90000.00', '2018-05-10');
REPLACE INTO `employees` (`employee_id`, `employee_name`, `department`, `salary`, `hire_date`) VALUES
	('22476519', 'Godfrey Silvanus Kiprop', 'FINANCE', '95000.00', '2017-02-10');

-- Dumping structure for table employee_report.employee_details
CREATE TABLE IF NOT EXISTS `employee_details` (
  `serial_no` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL COMMENT ' The employee unique id from table employees ',
  `gender` enum("MALE","FEMALE") NOT NULL COMMENT ' The employee gender ',
  `contact` int NOT NULL COMMENT ' The employee contact info ',
  `address` varchar(128) DEFAULT NULL COMMENT ' The employee address ',
  `email` varchar(128) NOT NULL COMMENT ' The employee email ',
  `birth_date` date NOT NULL COMMENT ' The employee date of birth ',
  PRIMARY KEY (`serial_no`),
  CONSTRAINT `employee_details_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='this table records employee personal information';

-- Dumping data for table employee_report.employee_details: ~20 rows (approximately)
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476500', 'FEMALE', '0700156372', '21070-00500 Nairobi', 'joycekiragu@gmail.com', '1987-02-12');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476501', 'FEMALE', '0711370600', '34512-00200 Nairobi', 'annie@gmail.com', '1990-05-17');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476502', 'MALE', '0110478260', '2389-00300 Nairobi', 'musau@gmail.com', '1985-11-23');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476503', 'MALE', '0746900786', '45321-00110 Nairobi', 'ashok@gmail.com', '1988-05-16');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476504', 'FEMALE', '0725367234', '3244-00100 Kiambu', 'purity12@gmail.com', '1995-02-11');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476505', 'FEMALE', '0722671234', '35672-00505 Nairobi', 'charlotte@gmail.com', '1994-12-24');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476506', 'FEMALE', '0110450200', '67-00200 Kiambu', 'mary66@gmail.com', '1990-07-17');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476507', 'FEMALE', '0703178540', '235-00202 Nairobi', 'graceanita@gmail.com', '1989-02-18');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476508', 'MALE', '0727300985', '78-0045 Kajiado', 'bonnie@gmail.com', '1993-02-15');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476509', 'MALE', '0705173200', '344-0055 Kajiado', 'lenkul@gmail.com', '1994-10-09');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476510', 'MALE', '0100034376', '54420-00101 Nairobi', 'twain@gmail.com', '1996-04-22');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476511', 'FEMALE', '0721562312', '21072-00222 Nairobi', 'susan.wuesh@gmail.com', '1989-01-30');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476512', 'MALE', '0733712009', '476-00600 Nairobi', 'mutheuisac@gmail.com', '1987-10-05');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476513', 'MALE', '0722173400', '700-0010 Nairobi', 'wawerudenno@gmail.com', '1986-03-30');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476514', 'MALE', '0100189376', '2120-00303 Nairobi', 'pilate@gmail.com', '1985-12-18');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476515', 'MALE', '0721555333', '10100-00100 Nairobi', 'kimutai@gmail.com', '1983-06-29');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476516', 'FEMALE', '0713404211', '909-0077 Nairobi', 'wanja@gmail.com', '1990-04-30');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476517', 'FEMALE', '0101187320', '467-0030 Kiambu', 'stephanie@gmail.com', '1988-01-22');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476518', 'MALE', '0700892222', '10100-00200 Nairobi', 'maitha@gmail.com', '1989-05-12');
REPLACE INTO `employee_details` (`employee_id`, `gender`, `contact`, `address`, `email`, `birth_date`) VALUES
	('22476519', 'MALE', '0721009841', '4588-00300 Nairobi', 'silvanus.kiprop@gmail.com', '1983-09-13');
   

/*!40103 SET TIME_ZONE = IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE = IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS = IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES = IFNULL(@OLD_SQL_NOTES, 1) */;
