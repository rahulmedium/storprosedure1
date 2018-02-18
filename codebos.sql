-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 06:21 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codebos`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_insert` (IN `cat_name1` VARCHAR(255))  BEGIN 
      INSERT INTO category
       ( cat_name)
VALUES (cat_name1);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `category_update` (IN `cat_id` INT(12), IN `cat_name` VARCHAR(255))  BEGIN 
     UPDATE category SET cat_name = cat_name WHERE id = cat_id; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_category` (IN `cat_id` INT(12))  NO SQL
BEGIN
DELETE FROM `category` WHERE `category`.`id` = cat_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_cat_all` ()  NO SQL
BEGIN
select * from category;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_data` ()  BEGIN
	 select * from  news_feed;
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_news` (IN `news_title` VARCHAR(50), IN `news_description` VARCHAR(50))  BEGIN
   insert into news_feed (news_title,news_description) values (news_title,news_description);
   
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `news_update` (IN `news_id1` INT, IN `news_title` VARCHAR(64), IN `news_discription` VARCHAR(64))  BEGIN 
UPDATE news_feed 
SET news_title = news_title, 
news_description = news_discription 

WHERE 	news_id = news_id1; 
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(12) NOT NULL,
  `cat_name` varchar(89) CHARACTER SET utf8 NOT NULL,
  `parent` tinyint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `parent`) VALUES
(1, 'cxzx', 0),
(3, 'hsfk', 0),
(6, 'cXcxc', 0),
(9, 'hello', 0),
(12, 'xds', 0),
(13, 'SDvc', 0),
(14, 'xcvf', 0),
(15, 'sd', 0),
(16, 'zdsd', 0),
(17, 'xdc', 0),
(18, 'cxc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_feed`
--

CREATE TABLE `news_feed` (
  `news_id` int(10) NOT NULL,
  `news_title` text NOT NULL,
  `news_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_feed`
--

INSERT INTO `news_feed` (`news_id`, `news_title`, `news_description`) VALUES
(1, 'sdrahul', 'sdhskjh'),
(3, 'sdrahul', 'sdhskjh'),
(4, 'sdrahul', 'sdhskjh'),
(5, 'sdrahul', 'sdhskjh'),
(6, 'sdrahul', 'sdhskjh'),
(7, 'sdrahul', 'sdhskjh'),
(8, 'sdrahul', 'sdhskjh'),
(9, 'sdrahul', 'sdhskjh'),
(10, 'sdrahul', 'sdhskjh'),
(11, 'sdrahul', 'sdhskjh'),
(12, 'sdrahul', 'sdhskjh'),
(13, 'sdrahul', 'sdhskjh'),
(14, 'sdrahul', 'sdhskjh'),
(15, 'sdrahul', 'sdhskjh'),
(16, 'sdrahul', 'sdhskjh'),
(17, 'sdrahul', 'sdhskjh'),
(18, 'sdrahul', 'sdhskjh'),
(19, 'sdrahul', 'sdhskjh'),
(20, 'sdrahul', 'sdhskjh'),
(21, 'sdrahul', 'sdhskjh');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(12) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Age` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `FirstName`, `LastName`, `Age`) VALUES
(31, 'Peter', 'Griffin', '35'),
(32, 'Glenn', 'Quagmire', '33'),
(34, 'Mary', 'Moe', '0'),
(35, 'Julie', 'Dooley', '0'),
(51, 'John', 'Doe', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cat_name_2` (`cat_name`),
  ADD KEY `cat_name` (`cat_name`);

--
-- Indexes for table `news_feed`
--
ALTER TABLE `news_feed`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FirstName_2` (`FirstName`),
  ADD KEY `FirstName` (`FirstName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news_feed`
--
ALTER TABLE `news_feed`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
