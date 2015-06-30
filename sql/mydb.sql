-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-06-30 12:51:57
-- 服务器版本： 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, '乡村'),
(2, '伤感'),
(3, '爵士'),
(4, '摇滚'),
(5, '流行'),
(6, '古典');

-- --------------------------------------------------------

--
-- 表的结构 `follow`
--

CREATE TABLE IF NOT EXISTS `follow` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `follow`
--

INSERT INTO `follow` (`user_id`, `follower_id`) VALUES
(1, 1),
(1, 26),
(1, 28),
(1, 30),
(1, 32),
(1, 35),
(1, 44),
(1, 46);

-- --------------------------------------------------------

--
-- 表的结构 `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `song_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `record`
--

INSERT INTO `record` (`id`, `user_name`, `song_id`, `time`) VALUES
(3, 'ahriy', 1, '2015-06-26 23:24:49'),
(5, 'ahriy', 1, '2015-06-27 13:19:59'),
(6, 'ahriy', 2, '2015-06-27 13:20:22'),
(7, 'ahriy', 2, '2015-06-27 13:26:44'),
(8, 'ahriy', 1, '2015-06-27 13:30:25'),
(9, 'ahriy', 1, '2015-06-27 14:08:17'),
(10, 'ahriy', 3, '2015-06-27 14:14:14'),
(11, 'ahriy', 2, '2015-06-27 16:23:34'),
(12, 'ahriy', 3, '2015-06-29 21:48:44'),
(13, 'ahriy', 3, '2015-06-29 21:50:22'),
(14, 'ahriy', 3, '2015-06-29 22:22:50'),
(15, 'ahriy', 3, '2015-06-29 22:45:14'),
(16, 'ahriy', 3, '2015-06-29 22:54:27'),
(17, 'ahriy', 2, '2015-06-29 22:54:32'),
(18, 'ahriy', 3, '2015-06-29 23:24:05'),
(19, 'ahriy', 2, '2015-06-30 10:11:10'),
(20, 'ahriy', 3, '2015-06-30 11:21:19'),
(21, 'ahriy', 1, '2015-06-30 16:02:10'),
(22, 'ahriy', 3, '2015-06-30 16:03:58'),
(23, 'ahriy', 3, '2015-06-30 16:13:48'),
(24, 'ahriy', 2, '2015-06-30 16:13:51'),
(25, 'ahriy', 3, '2015-06-30 16:13:55'),
(26, 'ahriy', 3, '2015-06-30 16:15:01'),
(27, 'ahriy', 3, '2015-06-30 16:18:05'),
(28, 'ahriy', 3, '2015-06-30 16:24:43'),
(29, 'ahriy', 3, '2015-06-30 16:26:34'),
(30, 'ahriy', 3, '2015-06-30 16:32:38'),
(31, 'ahriy', 2, '2015-06-30 16:35:46'),
(32, 'ahriy', 2, '2015-06-30 16:36:41'),
(33, 'ahriy', 2, '2015-06-30 16:38:03');

-- --------------------------------------------------------

--
-- 表的结构 `singer`
--

CREATE TABLE IF NOT EXISTS `singer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `singer`
--

INSERT INTO `singer` (`id`, `name`, `gender`, `region`, `birthday`, `note`) VALUES
(5, 'taylor swift', NULL, NULL, NULL, '								泰勒·斯威夫特（Taylor Swift），美国乡村音乐著名创作女歌手。1989年出生于美国宾州。\r\n								2006年与独立唱片公司Big Machine签约并发行首张个人专辑《Taylor Swift》。第二张专辑\r\n								《Fearless》在2008年11月11日发行，在Billboard排行榜上到达了第一的位置，首支单曲\r\n								《Love Story》在2008年9月正式发行，成为了第二畅销的乡村单曲，在公告牌最热100中最高排到第四。\r\n								该专辑也卖出了乡村音乐最高的销售量约60万张，包括其他种类的音乐，也是美国女歌手公开销售最多的专辑。\r\n								Taylor曾获得美国乡村音乐协会奖年度最佳专辑奖、格莱美年度专辑奖等荣誉。'),
(6, 'cold play', NULL, NULL, NULL, '								Coldplay是英国摇滚乐坛进入新世纪之后崛起的最受欢迎的摇滚乐队之一，他们秉承了英式摇滚乐队\r\n								一贯的风格，成为了英国新一代乐队中的杰出代表。Coldplay有四个成员，1996年时在UCL（University\r\n								 College London）四人相遇，两年后决定合组此乐团。Coldplay乐队成军之后的每一张专辑都不断进步\r\n								 ，一步一步地扩大他们的影响，目前他们正处于事业的快速上升期。'),
(7, 'Justin Timberlake', 'male', NULL, NULL, '								 贾斯汀·汀布莱克，美国超级巨星，六座格莱美奖、四座艾美奖得主，被认为是对当今流行文化最有影\r\n								 响力的艺人之一。贾斯汀12岁出道，成名于流行组合超级男孩（专辑总销量5000万张）。单飞后全面发\r\n								 展，集歌手、制作人、演员等多重身份于一身，两张个人专辑总销量超过1700万张，受到全球范围内好评\r\n								 。近年来贾斯汀专注于电影事业，在好莱坞发展渐有起色，近期五部电影票房全部突破1.5亿美元并接连与\r\n								 大导演大卫·芬奇、科恩兄弟、克林特·伊斯特伍德等合作。由于Justin拥有或投资服装、高尔夫球场、唱\r\n								 片公司等多项产业，江湖人送外号——贾老板。');

-- --------------------------------------------------------

--
-- 表的结构 `song`
--

CREATE TABLE IF NOT EXISTS `song` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `album` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song`
--

INSERT INTO `song` (`id`, `name`, `album`, `year`, `singer_id`, `category`) VALUES
(1, 'OnlyLove', NULL, NULL, NULL, 2),
(2, 'Yellow', NULL, NULL, 6, 1),
(3, '22', NULL, NULL, 5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `song_has_category`
--

CREATE TABLE IF NOT EXISTS `song_has_category` (
  `song_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song_has_category`
--

INSERT INTO `song_has_category` (`song_id`, `category_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `song_list`
--

CREATE TABLE IF NOT EXISTS `song_list` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` text,
  `user_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song_list`
--

INSERT INTO `song_list` (`id`, `name`, `user_id`, `note`, `user_name`) VALUES
(12, 'Taylor Swift', NULL, '', 'ahriy'),
(17, 'I love music', NULL, '', 'ahriy'),
(18, '周杰伦', NULL, '这是一个关于周杰伦的歌单', 'ahriy'),
(19, 'coldplay', NULL, '', 'ahriy'),
(20, '安安静静听歌', NULL, '', 'ahriy');

-- --------------------------------------------------------

--
-- 表的结构 `song_list_has_song`
--

CREATE TABLE IF NOT EXISTS `song_list_has_song` (
  `song_list_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song_list_has_song`
--

INSERT INTO `song_list_has_song` (`song_list_id`, `song_id`) VALUES
(17, 2),
(18, 2),
(19, 2),
(20, 3);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `passwd` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `what_up` text
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `passwd`, `phone`, `mail`, `photo`, `gender`, `what_up`) VALUES
(1, 'ahriy', 'asdf911', NULL, NULL, NULL, NULL, ''),
(26, 'user0', 'asdf911', NULL, NULL, NULL, NULL, ''),
(27, 'user1', 'asdf911', NULL, NULL, NULL, NULL, ''),
(28, 'user2', 'asdf911', NULL, NULL, NULL, NULL, ''),
(29, 'user3', 'asdf911', NULL, NULL, NULL, NULL, ''),
(30, 'user4', 'asdf911', NULL, NULL, NULL, NULL, ''),
(31, 'user5', 'asdf911', NULL, NULL, NULL, NULL, ''),
(32, 'user6', 'asdf911', NULL, NULL, NULL, NULL, ''),
(33, 'user7', 'asdf911', NULL, NULL, NULL, NULL, ''),
(34, 'user8', 'asdf911', NULL, NULL, NULL, NULL, ''),
(35, 'user9', 'asdf911', NULL, NULL, NULL, NULL, ''),
(36, 'user10', 'asdf911', NULL, NULL, NULL, NULL, ''),
(37, 'user11', 'asdf911', NULL, NULL, NULL, NULL, ''),
(38, 'user12', 'asdf911', NULL, NULL, NULL, NULL, ''),
(39, 'user13', 'asdf911', NULL, NULL, NULL, NULL, ''),
(40, 'user14', 'asdf911', NULL, NULL, NULL, NULL, ''),
(41, 'user15', 'asdf911', NULL, NULL, NULL, NULL, ''),
(42, 'user16', 'asdf911', NULL, NULL, NULL, NULL, ''),
(43, 'user17', 'asdf911', NULL, NULL, NULL, NULL, ''),
(44, 'user18', 'asdf911', NULL, NULL, NULL, NULL, ''),
(45, 'user19', 'asdf911', NULL, NULL, NULL, NULL, ''),
(46, 'devil', '4876', '', '', NULL, '', 'I love music!');

-- --------------------------------------------------------

--
-- 表的结构 `user_comment_song`
--

CREATE TABLE IF NOT EXISTS `user_comment_song` (
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `content` text,
  `picture` varchar(40) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_comment_song`
--

INSERT INTO `user_comment_song` (`user_id`, `song_id`, `content`, `picture`, `time`) VALUES
(46, 1, 'the music is great!', NULL, '2015-06-17 22:00:37'),
(46, 2, 'so gentle', NULL, '2015-06-17 22:14:34');

-- --------------------------------------------------------

--
-- 表的结构 `user_like_category`
--

CREATE TABLE IF NOT EXISTS `user_like_category` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_like_singer`
--

CREATE TABLE IF NOT EXISTS `user_like_singer` (
  `user_id` int(11) NOT NULL,
  `singer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_like_singer`
--

INSERT INTO `user_like_singer` (`user_id`, `singer_id`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- 表的结构 `user_like_song_list`
--

CREATE TABLE IF NOT EXISTS `user_like_song_list` (
  `user_id` int(11) NOT NULL,
  `song_list_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_like_song_list`
--

INSERT INTO `user_like_song_list` (`user_id`, `song_list_id`) VALUES
(1, 12),
(1, 17),
(1, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`user_id`,`follower_id`), ADD KEY `fk_users_has_users_users1_idx` (`follower_id`), ADD KEY `fk_users_has_users_users_idx` (`user_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_song_singer1_idx` (`singer_id`);

--
-- Indexes for table `song_has_category`
--
ALTER TABLE `song_has_category`
  ADD PRIMARY KEY (`song_id`,`category_id`), ADD KEY `fk_song_has_category_category1_idx` (`category_id`), ADD KEY `fk_song_has_category_song1_idx` (`song_id`);

--
-- Indexes for table `song_list`
--
ALTER TABLE `song_list`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `fk_song_list_user1_idx` (`user_id`);

--
-- Indexes for table `song_list_has_song`
--
ALTER TABLE `song_list_has_song`
  ADD PRIMARY KEY (`song_list_id`,`song_id`), ADD KEY `fk_song_list_has_song_song1_idx` (`song_id`), ADD KEY `fk_song_list_has_song_song_list1_idx` (`song_list_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD UNIQUE KEY `name_2` (`name`);

--
-- Indexes for table `user_comment_song`
--
ALTER TABLE `user_comment_song`
  ADD PRIMARY KEY (`user_id`,`song_id`), ADD KEY `fk_user_has_song_song1_idx` (`song_id`), ADD KEY `fk_user_has_song_user1_idx` (`user_id`);

--
-- Indexes for table `user_like_category`
--
ALTER TABLE `user_like_category`
  ADD PRIMARY KEY (`user_id`,`category_id`), ADD KEY `fk_user_has_category_category1_idx` (`category_id`), ADD KEY `fk_user_has_category_user1_idx` (`user_id`);

--
-- Indexes for table `user_like_singer`
--
ALTER TABLE `user_like_singer`
  ADD PRIMARY KEY (`user_id`,`singer_id`), ADD KEY `fk_user_has_singer_singer1_idx` (`singer_id`), ADD KEY `fk_user_has_singer_user1_idx` (`user_id`);

--
-- Indexes for table `user_like_song_list`
--
ALTER TABLE `user_like_song_list`
  ADD PRIMARY KEY (`user_id`,`song_list_id`), ADD KEY `fk_user_has_song_list_song_list1_idx` (`song_list_id`), ADD KEY `fk_user_has_song_list_user1_idx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `song_list`
--
ALTER TABLE `song_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- 限制导出的表
--

--
-- 限制表 `follow`
--
ALTER TABLE `follow`
ADD CONSTRAINT `fk_users_has_users_users` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_has_users_users1` FOREIGN KEY (`follower_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `song`
--
ALTER TABLE `song`
ADD CONSTRAINT `fk_song_singer1` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `song_has_category`
--
ALTER TABLE `song_has_category`
ADD CONSTRAINT `fk_song_has_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_song_has_category_song1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `song_list`
--
ALTER TABLE `song_list`
ADD CONSTRAINT `fk_song_list_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `song_list_has_song`
--
ALTER TABLE `song_list_has_song`
ADD CONSTRAINT `fk_song_list_has_song_song1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_song_list_has_song_song_list1` FOREIGN KEY (`song_list_id`) REFERENCES `song_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `user_comment_song`
--
ALTER TABLE `user_comment_song`
ADD CONSTRAINT `fk_user_has_song_song1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_user_has_song_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `user_like_category`
--
ALTER TABLE `user_like_category`
ADD CONSTRAINT `fk_user_has_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_user_has_category_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `user_like_singer`
--
ALTER TABLE `user_like_singer`
ADD CONSTRAINT `fk_user_has_singer_singer1` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_user_has_singer_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `user_like_song_list`
--
ALTER TABLE `user_like_song_list`
ADD CONSTRAINT `fk_user_has_song_list_song_list1` FOREIGN KEY (`song_list_id`) REFERENCES `song_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_user_has_song_list_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
