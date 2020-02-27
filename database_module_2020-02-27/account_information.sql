-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `account_information`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `date` date NOT NULL COMMENT '日期',
  `time` time NOT NULL COMMENT '時間',
  `1` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '帳號',
  `2` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '密碼',
  `3` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '權限等級',
  `4` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '人員姓名',
  `5` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '公司',
  `6` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '電話',
  `7` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '手機',
  `8` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '地址',
  `9` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'ICON',
  `10` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'LOGO1',
  `11` varchar(300) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'LOGO2',
  `12` varchar(200) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '連結網址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
