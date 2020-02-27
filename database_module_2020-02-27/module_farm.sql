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
-- 資料庫： `farm0001`
--

-- --------------------------------------------------------

--
-- 資料表結構 `motor_control`
--

CREATE TABLE `motor_control` (
  `id` int(11) NOT NULL COMMENT 'id',
  `date` date NOT NULL COMMENT '年月日',
  `time` time NOT NULL COMMENT '時分秒',
  `1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '場域ID',
  `2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '設備編號',
  `3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '運作%數',
  `4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '類型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `motor_status_comparison`
--

CREATE TABLE `motor_status_comparison` (
  `id` int(11) NOT NULL COMMENT 'id',
  `date` date NOT NULL COMMENT '年月日',
  `time` time NOT NULL COMMENT '時分秒',
  `1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '場域ID',
  `2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '設備編號',
  `3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '設備名稱',
  `4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收闔時間',
  `5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '展開時間',
  `6` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '當前開關',
  `7` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '當前%數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `motor_status_other`
--

CREATE TABLE `motor_status_other` (
  `id` int(11) NOT NULL COMMENT 'id',
  `date` int(11) NOT NULL COMMENT '年月日',
  `time` int(11) NOT NULL COMMENT '時分秒',
  `1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '場域ID',
  `2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手/自動狀態',
  `3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '運作狀態',
  `4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '雲/本地切換'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sensor_display_cloud`
--

CREATE TABLE `sensor_display_cloud` (
  `id` int(11) NOT NULL COMMENT 'id',
  `date` date NOT NULL COMMENT '當前日期',
  `time` time NOT NULL COMMENT '當前時間',
  `1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '場域代號',
  `2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器編號',
  `3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器俗名',
  `4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '電量',
  `5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器學名',
  `6` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器數值',
  `7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '顯示更新日期',
  `8` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '顯示更新時間',
  `9` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新日期時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sensor_historical_data_cloud`
--

CREATE TABLE `sensor_historical_data_cloud` (
  `id` int(11) NOT NULL COMMENT 'id',
  `date` date NOT NULL COMMENT '當前日期',
  `time` time NOT NULL COMMENT '當前時間',
  `1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '場域代號',
  `2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器編號',
  `3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回傳狀態',
  `4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '電量',
  `5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器名稱',
  `6` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器數值',
  `7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '整理後之日期',
  `8` time DEFAULT NULL COMMENT '整理後之時間',
  `9` datetime DEFAULT NULL COMMENT '整理日期時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sensor_irregular_historical`
--

CREATE TABLE `sensor_irregular_historical` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `date` date NOT NULL COMMENT '日期',
  `time` time NOT NULL COMMENT '時間',
  `1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器編號',
  `2` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測器學名',
  `3` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測器俗名',
  `4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大於',
  `5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大於數值',
  `6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小於',
  `7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小於數值',
  `8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '觸發數值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sensor_irregular_setting`
--

CREATE TABLE `sensor_irregular_setting` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `date` date NOT NULL COMMENT '日期',
  `time` time NOT NULL COMMENT '時間',
  `1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '感測器編號',
  `2` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測器學名',
  `3` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測器俗名',
  `4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大於',
  `5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大於數值',
  `6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小於',
  `7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小於數值',
  `8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '簡訊通知時間',
  `9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '賴通知時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sensor_type_cloud`
--

CREATE TABLE `sensor_type_cloud` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `date` date NOT NULL COMMENT '日期',
  `time` time NOT NULL COMMENT '時間',
  `1` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測器名稱',
  `2` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '485位址',
  `3` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '485長度',
  `4` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '乘值換算',
  `5` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '485ID',
  `6` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測單位',
  `7` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '感測器啟用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `sensor_type_cloud`
--

INSERT INTO `sensor_type_cloud` (`id`, `date`, `time`, `1`, `2`, `3`, `4`, `5`, `6`, `7`) VALUES
(1, '0000-00-00', '00:00:00', 'AirTemp_1', '40001', '2', '0.1', '1', '°C', '0'),
(2, '0000-00-00', '00:00:00', 'AirHumi_1', '40002', '2', '0.1', '1', '%RH', '0'),
(3, '0000-00-00', '00:00:00', 'AirTemp_2', '40003', '2', '0.1', '2', '°C', '0'),
(4, '0000-00-00', '00:00:00', 'AirHumi_2', '40004', '2', '0.1', '2', '%RH', '0'),
(5, '0000-00-00', '00:00:00', 'AirTemp_3', '40005', '2', '0.1', '3', '°C', '0'),
(6, '0000-00-00', '00:00:00', 'AirHumi_3', '40006', '2', '0.1', '3', '%RH', '0'),
(7, '0000-00-00', '00:00:00', 'GndTemp_1', '40007', '2', '0.01', '4', '°C', '0'),
(8, '0000-00-00', '00:00:00', 'GndHumi_1', '40008', '2', '0.01', '4', '%RH', '0'),
(9, '0000-00-00', '00:00:00', 'GndEC_1', '40009', '2', '1', '4', 'ms/cm', '0'),
(10, '0000-00-00', '00:00:00', 'GndSalinity_1', '40010', '2', '1', '4', '', '0'),
(11, '0000-00-00', '00:00:00', 'GndTDS_1', '40011', '2', '1', '4', '', '0'),
(12, '0000-00-00', '00:00:00', 'GndPermittivity_1', '40012', '2', '0.01', '4', '', '0'),
(13, '0000-00-00', '00:00:00', 'GndPH_1', '40013', '2', '0.1', '5', 'pH', '0'),
(14, '0000-00-00', '00:00:00', 'AirLux_1', '40014', '4', '0.01', '0', 'Lux', '0'),
(15, '0000-00-00', '00:00:00', 'AirLux_2', '40016', '4', '1', '6', 'Lux', '0'),
(16, '0000-00-00', '00:00:00', 'AirWinSpeed_1', '40018', '2', '0.1', '7', 'm/s', '0'),
(17, '0000-00-00', '00:00:00', 'AirWinDirection_1', '40019', '2', '0.1', '8', '', '0'),
(18, '0000-00-00', '00:00:00', 'AirRainfall_1', '40020', '2', '1', '0', 'mm/hr', '0'),
(19, '0000-00-00', '00:00:00', 'AirPa_1', '40028', '2', '0.1', '9', 'Pa', '0'),
(20, '0000-00-00', '00:00:00', 'AirTemp_4', '40029', '2', '0.1', '9', '°C', '0'),
(21, '0000-00-00', '00:00:00', 'AirHumi_4', '40030', '2', '0.1', '9', '%RH', '0'),
(22, '0000-00-00', '00:00:00', 'AirLux_3', '40031', '4', '1', '9', 'Lux', '0'),
(23, '0000-00-00', '00:00:00', 'WaterTemp_1', '40040', '2', '9999', '10', '°C', '0'),
(24, '0000-00-00', '00:00:00', 'WaterPH_1', '40038', '4', '9999', '11', 'pH', '0'),
(25, '0000-00-00', '00:00:00', 'WaterTemp_2', '40040', '4', '9999', '11', '°C', '0'),
(26, '0000-00-00', '00:00:00', 'WaterEC_1', '40042', '4', '9999', '12', 'μS/cm', '0'),
(27, '0000-00-00', '00:00:00', 'WaterDO_1', '40052', '4', '9999', '13', 'mg/L', '0'),
(28, '0000-00-00', '00:00:00', 'WaterORP_1', '40061', '2', '1', '15', 'mV', '0');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `motor_control`
--
ALTER TABLE `motor_control`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `motor_status_comparison`
--
ALTER TABLE `motor_status_comparison`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `motor_status_other`
--
ALTER TABLE `motor_status_other`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sensor_display_cloud`
--
ALTER TABLE `sensor_display_cloud`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sensor_historical_data_cloud`
--
ALTER TABLE `sensor_historical_data_cloud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `2` (`2`,`5`,`7`,`8`);

--
-- 資料表索引 `sensor_irregular_historical`
--
ALTER TABLE `sensor_irregular_historical`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sensor_irregular_setting`
--
ALTER TABLE `sensor_irregular_setting`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sensor_type_cloud`
--
ALTER TABLE `sensor_type_cloud`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `motor_control`
--
ALTER TABLE `motor_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `motor_status_comparison`
--
ALTER TABLE `motor_status_comparison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `motor_status_other`
--
ALTER TABLE `motor_status_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensor_display_cloud`
--
ALTER TABLE `sensor_display_cloud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensor_historical_data_cloud`
--
ALTER TABLE `sensor_historical_data_cloud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=48705;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensor_irregular_historical`
--
ALTER TABLE `sensor_irregular_historical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensor_irregular_setting`
--
ALTER TABLE `sensor_irregular_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=20;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sensor_type_cloud`
--
ALTER TABLE `sensor_type_cloud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
