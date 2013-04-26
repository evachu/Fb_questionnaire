-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2013 年 04 月 04 日 09:32
-- 伺服器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `questionnaire`
--

-- --------------------------------------------------------

--
-- 表的結構 `ansfreq`
--

CREATE TABLE IF NOT EXISTS `ansfreq` (
  `answers_id` int(10) NOT NULL DEFAULT '0',
  `resultFreq_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`answers_id`,`resultFreq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的結構 `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `questions_id` int(10) NOT NULL,
  `answer` text NOT NULL,
  `point` int(2) NOT NULL,
  `lastUpdate` date DEFAULT NULL,
  `seq` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 轉存資料表中的資料 `answers`
--

INSERT INTO `answers` (`id`, `questions_id`, `answer`, `point`, `lastUpdate`, `seq`) VALUES
(1, 1, '不要了', 1, '2013-04-01', 1),
(2, 1, '重新買一份', 2, '2013-04-01', 2),
(3, 1, '可惜，把上面沒有臟的部分吃掉', 3, '2013-04-01', 3),
(4, 2, '手繪瓷盆', 1, '2013-03-18', 1),
(5, 2, '原始風的木製花盆', 2, '2013-03-18', 2),
(6, 2, '精緻的塑膠花盆', 3, '2013-03-18', 3),
(7, 3, '無名指長過食指', 1, '2013-03-18', 1),
(8, 3, '一樣長', 2, '2013-03-18', 2),
(9, 3, '食指長過無名指', 3, '2013-03-18', 3),
(10, 4, '向陽的山坡上', 1, '2013-03-18', 1),
(11, 4, '花樹下，隨著樹陰改變位置', 2, '2013-03-18', 2),
(12, 4, '山坡下的陰涼處', 3, '2013-03-18', 3),
(13, 5, '喝酒吸煙', 1, '2013-03-18', 1),
(14, 5, '劇烈運動', 2, '2013-03-18', 2),
(15, 5, '聽音樂看電影，平靜的娛樂', 3, '2013-03-18', 3),
(16, 6, '上揚', 1, '2013-03-18', 1),
(17, 6, '看不出，大概是平行的', 2, '2013-03-18', 2),
(18, 6, '下墜得比較明顯', 3, '2013-03-18', 3),
(19, 7, '眼角', 1, '2013-03-18', 1),
(20, 7, '嘴角', 2, '2013-03-18', 2),
(21, 7, '看不出', 3, '2013-03-18', 3);

-- --------------------------------------------------------

--
-- 表的結構 `fbuser`
--

CREATE TABLE IF NOT EXISTS `fbuser` (
  `id` varchar(50) NOT NULL,
  `firstName` char(20) DEFAULT NULL,
  `lastUpdate` date DEFAULT NULL,
  `lastName` char(15) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` char(30) DEFAULT NULL,
  `gender` char(7) DEFAULT NULL,
  `Location` char(60) DEFAULT NULL,
  `middleName` char(20) DEFAULT NULL,
  `religion` char(20) DEFAULT NULL,
  `work` char(20) DEFAULT NULL,
  `education` char(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `devices` varchar(50) DEFAULT NULL,
  `interested_in` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `menu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 轉存資料表中的資料 `information`
--

INSERT INTO `information` (`id`, `menu`) VALUES
(1, 'Questionnaire Page');

-- --------------------------------------------------------

--
-- 表的結構 `introduction`
--

CREATE TABLE IF NOT EXISTS `introduction` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `lastUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 轉存資料表中的資料 `introduction`
--

INSERT INTO `introduction` (`id`, `name`, `description`, `lastUpdate`) VALUES
(1, '性格心理測驗 - 你會假裝快樂嗎？', '強顏歡笑對身體有害？那可不一定。<br>\r\n“假裝快樂”是一種快速調整情緒的好方法，可以使人們脫離不良情緒。<br>\r\n身與心是互動的，當心情無法調節時，<br>\r\n如果強迫自己做微笑的動作，你就會發現內心開始湧動歡喜。<br>\r\n所以假裝快樂也會變成真的開心。<br>\r\n', '2013-04-01');

-- --------------------------------------------------------

--
-- 表的結構 `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `lastUpdate` date DEFAULT NULL,
  `seq` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 轉存資料表中的資料 `questions`
--

INSERT INTO `questions` (`id`, `question`, `lastUpdate`, `seq`) VALUES
(1, '剛開始享受的美味甜點，卻一下子掉到地上摔壞了，怎麼辦？', '2013-04-01', 1),
(2, '在陽臺上種一株名品玫瑰，你會把它栽在哪個盆子裏？', '2013-03-18', 2),
(3, '比較一下自己食指和無名指的長度，從指根到指尖，哪個更長？', '2013-03-18', 3),
(4, '花開得正艷，山坡上有一棵極美的花樹，而山坡下有許多開花的小樹和灌木，你會把座席鋪在哪兒？', '2013-03-18', 4),
(5, '你用哪種方式緩解壓力和疲勞？', '2013-03-18', 5),
(6, '仔細觀察一下自己的臉，你的外眼角是下墜還是上揚？', '2013-03-18', 6),
(7, '你眼角的紋理和嘴角邊的紋理，哪邊更深更明顯？', '2013-03-18', 7);

-- --------------------------------------------------------

--
-- 表的結構 `resultfreq`
--

CREATE TABLE IF NOT EXISTS `resultfreq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fbuser_id` varchar(50) DEFAULT NULL,
  `result_id` int(10) DEFAULT NULL,
  `subDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 轉存資料表中的資料 `resultfreq`
--

INSERT INTO `resultfreq` (`id`, `fbuser_id`, `result_id`, `subDate`) VALUES
(1, '1', 2, '2013-04-04'),
(2, '1', 2, '2013-04-04'),
(3, '1', 2, '2013-04-04');

-- --------------------------------------------------------

--
-- 表的結構 `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lower` int(3) NOT NULL,
  `upper` int(3) NOT NULL,
  `type` text NOT NULL,
  `content` text NOT NULL,
  `lastUpdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 轉存資料表中的資料 `results`
--

INSERT INTO `results` (`id`, `lower`, `upper`, `type`, `content`, `lastUpdate`) VALUES
(1, 0, 5, '假笑絕緣體', '你似乎很不習慣“強顏歡笑”。開心就笑，不高興就哭，冷面以對也是你不爽時常用的表情。\n當然可以說，你是個性情中人，不過，作為一個不懂得調節自己情緒的人，你會放任不良情緒控制身體。', '2013-03-18'),
(2, 6, 10, '假笑初體驗', '聽到冷笑話或遇到小困難，你可能會假裝笑笑掩飾過去。\n而在辦公室被人嘲諷、遭到大挫折，你肯定就笑不出來啦，就算強迫自己也只能做到不爆發情緒。', '2013-03-18'),
(3, 11, 15, '假笑經營者', '對別人來說，你是個第一印象為“好性格，猜不透”的人。\n而你自己知道，什麼笑容是真的感到快樂，什麼時候只是在強迫自己。\n你不需要哭泣或發怒來宣洩自己，強顏歡笑的調節方式對你正好合適。', '2013-03-18'),
(4, 16, 21, '假笑發燒友', '你經常發出熱烈誇張的笑吧？那笑容是真還是假，別說身邊的人不清楚，恐怕連你自己都已經搞不清楚了。\n你用笑掩藏負面情緒，也用笑給自己打氣。笑已經變成了一種強迫症。', '2013-03-18');

-- --------------------------------------------------------

--
-- 表的結構 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastUpdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UID` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 轉存資料表中的資料 `users`
--

INSERT INTO `users` (`id`, `account`, `password`, `lastUpdate`) VALUES
(2, 'root', '202cb962ac59075b964b07152d234b70', '2013-03-22'),
(3, 'user1', '310dcbbf4cce62f762a2aaa148d556bd', '2013-03-20');

--
-- 匯出資料表的 Constraints
--

--
-- 資料表的 Constraints `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `answers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
