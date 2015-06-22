-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-06-22 10:45:28
-- 服务器版本： 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- 表的结构 `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- 转存表中的数据 `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `imusic`
--

-- --------------------------------------------------------

--
-- 表的结构 `singers`
--

CREATE TABLE IF NOT EXISTS `singers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `birthday` varchar(11) DEFAULT NULL,
  `profile` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `singers`
--

INSERT INTO `singers` (`id`, `name`, `gender`, `region`, `birthday`, `profile`) VALUES
(1, 'å¤©ä½‘çˆ±äºº', NULL, NULL, NULL, NULL),
(2, '天佑爱人', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `song_like`
--

CREATE TABLE IF NOT EXISTS `song_like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `album` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sung_by`
--

CREATE TABLE IF NOT EXISTS `sung_by` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `singer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `passwd` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `mail` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `photo` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `passwd`, `phone`, `mail`, `photo`, `gender`) VALUES
(4, 'Ahriy', 'asdf911', NULL, NULL, NULL, 'male'),
(5, 'Ahriy', 'asdf911', NULL, NULL, NULL, 'male'),
(6, 'Ahriy', 'asdf911', NULL, NULL, NULL, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `singers`
--
ALTER TABLE `singers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song_like`
--
ALTER TABLE `song_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sung_by`
--
ALTER TABLE `sung_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `singers`
--
ALTER TABLE `singers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 26),
(1, 28),
(1, 30),
(1, 32),
(1, 35),
(1, 46);

-- --------------------------------------------------------

--
-- 表的结构 `singer`
--

CREATE TABLE IF NOT EXISTS `singer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `singer`
--

INSERT INTO `singer` (`id`, `name`, `gender`, `region`, `birthday`) VALUES
(1, '天佑爱人', NULL, NULL, NULL),
(2, '天佑爱人', NULL, NULL, NULL),
(3, '天佑爱人', NULL, NULL, NULL),
(4, '天佑爱人', NULL, NULL, NULL),
(5, '天佑爱人', NULL, NULL, NULL),
(6, '天佑爱人', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `song`
--

CREATE TABLE IF NOT EXISTS `song` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `album` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song`
--

INSERT INTO `song` (`id`, `name`, `album`, `year`, `singer_id`) VALUES
(1, 'OnlyLove', NULL, NULL, NULL),
(2, 'Yellow', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `song_has_category`
--

CREATE TABLE IF NOT EXISTS `song_has_category` (
  `song_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song_list`
--

INSERT INTO `song_list` (`id`, `name`, `user_id`, `note`, `user_name`) VALUES
(12, 'Taylor Swift', NULL, '', 'ahriy'),
(17, 'I love music', NULL, '', 'ahriy'),
(18, '周杰伦', NULL, '这是一个关于周杰伦的歌单', 'ahriy'),
(19, 'coldplay', NULL, '', 'ahriy');

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
(19, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

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
(46, 'devil', '4876', '', '', NULL, '', 'I love music!'),
(327, '', '', '', '', NULL, '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `song_list`
--
ALTER TABLE `song_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=328;
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
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- 表的结构 `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 表的结构 `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 表的结构 `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"mydb","table":"song_list_has_song"},{"db":"mydb","table":"song"},{"db":"mydb","table":"song_list"},{"db":"mydb","table":"user"},{"db":"mydb","table":"user_comment_song"},{"db":"mydb","table":"user_like_singer"},{"db":"mydb","table":"follow"},{"db":"mydb","table":"singer"},{"db":"mydb","table":"user_follow_user"},{"db":"mydb","table":"user_has_user"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 转存表中的数据 `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'imusic', 'singers', '{"sorted_col":"`name` DESC"}', '2015-06-09 03:25:59');

-- --------------------------------------------------------

--
-- 表的结构 `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-05-19 05:42:09', '{"lang":"zh_CN","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 表的结构 `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `test`
--

INSERT INTO `test` (`name`) VALUES
('哈哈'),
('哈哈'),
('哈哈'),
('hhh'),
('å¤©ä½‘çˆ±ä'),
('å¤©ä½‘çˆ±ä'),
('å¤©ä½‘çˆ±ä'),
('å¤©ä½‘çˆ±ä'),
('å“ˆå•Šå“ˆ'),
('å¤©ä½‘çˆ±ä'),
('å¤©ä½‘çˆ±äºº');
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- 表的结构 `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- 转存表中的数据 `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
