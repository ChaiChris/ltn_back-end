-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 20, 2025 at 01:53 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_db`
--
CREATE DATABASE IF NOT EXISTS news_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE news_db;
-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sort`) VALUES
(1, '即時', 10),
(2, '日韓', 20),
(3, '娛樂', 30),
(4, '體育', 40),
(5, '財經', 50),
(6, '汽車', 60),
(7, '玩咖', 70),
(8, '3C', 80);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `article_url`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, '美年度預算首度單獨列台灣 國務院：展現安全承諾', 'https://news.ltn.com.tw/news/politics/breakingnews/4604644', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/27663678065efa1b31391e2.82558978.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(2, 1, '日本流行「奶茶+龍角散」 台灣網友驚：不就「這款」手搖飲？', 'https://news.ltn.com.tw/news/novelty/breakingnews/4604419', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/29181605865ef8ad8364860.42722523.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(3, 1, '朴炯植《低谷醫生》求婚倒數 朴信惠大難不死迎幸福結局', 'https://ent.ltn.com.tw/news/breakingnews/4604409', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/11/4604409_1.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(4, 2, 'LTN經濟通》粉紅全變綠？外送平台風雲起', 'https://ec.ltn.com.tw/article/breakingnews/4597204', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/155953655165ef93b38cc474.09320566.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(5, 2, '玉山北峰深夜下冰霰！清晨僅-9.4度 遙望主峰超美', 'https://news.ltn.com.tw/news/life/breakingnews/4604746', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/7023159665efb9b3139f82.79656416.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(6, 2, '「KING SUPER LIVE 2024」神級名單出爐 台粉跨海抽票也OK', 'https://ent.ltn.com.tw/news/breakingnews/4605288', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/12/4605288_2.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(7, 2, '想見周子瑜要快！TWICE演唱會將開演 門票少量釋出', 'https://ent.ltn.com.tw/news/breakingnews/4604760', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/12/phpi7yzyj.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(8, 2, '金秀賢《淚之女王》奇蹟現身變救世主 開槍護金智媛收視急升', 'https://ent.ltn.com.tw/news/breakingnews/4604563', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/11/4604563_1.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(9, 2, '宋慧喬《黑暗榮耀》拍出真友情 替朴涎鎮送咖啡車超暖', 'https://ent.ltn.com.tw/news/breakingnews/4604535', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/11/4604535_2.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(10, 2, '南韓YTR大爆辛拉麵秘密 「這一版」料多又便宜', 'https://ent.ltn.com.tw/news/breakingnews/4604390', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/11/php062Xyx.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(11, 3, '黃國昌悄悄拆違建 四叉貓第一手現場直擊', 'https://ent.ltn.com.tw/news/breakingnews/4604704', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/105780133665efbd5417d689.47731897.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(12, 4, '全英賽》最後一舞力拚賽史第四冠！ 戴資穎將挑戰李宗偉紀錄', 'https://sports.ltn.com.tw/news/breakingnews/4604649', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/21433715065efab5ef36dd0.31417556.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(13, 4, 'NBA》超糗！ Kobe紀念雕像上有錯字 湖人球團：會盡快修正', 'https://sports.ltn.com.tw/news/breakingnews/4604696', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/160268750765efbf2d912a59.04406666.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(14, 4, '全英賽》行李沒來只能穿「蠟筆小新」 王子維2局不敵日本好手', 'https://sports.ltn.com.tw/news/breakingnews/4605672', 'https://img.ltn.com.tw/Upload/sports/page/800/2024/03/12/phpiRPcPD.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(15, 5, '川普：若當選美國總統 將推動強硬關稅政策', 'https://ec.ltn.com.tw/article/breakingnews/4604687', 'https://img.ltn.com.tw/Upload/Module/index/800/2024/03/81179278665efba24bd8838.76582559.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(16, 5, '李多慧私約林襄經紀人 下一步動向引猜疑', 'https://ent.ltn.com.tw/news/breakingnews/4604629', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/12/phpDazfcc.png', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(17, 5, '池晟、李寶英「電影院約會」閃爆 夫妻檔將攜新作回歸', 'https://ent.ltn.com.tw/news/breakingnews/4604525', 'https://img.ltn.com.tw/Upload/ent/page/800/2024/03/11/4604525_1.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(18, 6, 'BMW i5 Touring純電旅行車首發！雙車型預購啟動 時尚動感兼具空間機能', 'https://auto.ltn.com.tw/news/25189/2', 'https://img.ltn.com.tw/Upload/auto/page/2024/03/13/240313-25189-000-EkCkn.jpg', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(19, 7, '全台最高川菜餐廳開箱！攜手成都米其林一星演繹花椒乳鴿、國宴湯名菜', 'https://playing.ltn.com.tw/article/29162', 'https://img.ltn.com.tw/Upload/playing/page/2024/03/12/240312-29162-11-et82K.png', '2025-06-18 04:56:38', '2025-06-18 04:56:38'),
(20, 8, '任天堂下一代 Switch 真實命名流出！網吐槽：沒有從 Wii U 學到教訓', 'https://3c.ltn.com.tw/news/57336', 'https://img.ltn.com.tw/Upload/3c/page/2024/03/13/300x200/240313-57336-1.jpeg', '2025-06-18 04:56:38', '2025-06-18 04:56:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
