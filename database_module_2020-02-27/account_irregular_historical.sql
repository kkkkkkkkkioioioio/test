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
-- 資料庫： `account_irregular_historical`
--

-- --------------------------------------------------------

--
-- 資料表結構 `example_tabel`
--

CREATE TABLE `example_tabel` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `date` date NOT NULL COMMENT '日期',
  `time` time NOT NULL COMMENT '時間',
  `1` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '電話',
  `2` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '觸發類型',
  `3` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '回應碼',
  `4` varchar(100) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '回應狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `example_tabel`
--
ALTER TABLE `example_tabel`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `example_tabel`
--
ALTER TABLE `example_tabel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
