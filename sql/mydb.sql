-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-07-03 02:04:54
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
(46, 1),
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

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
(33, 'ahriy', 2, '2015-06-30 16:38:03'),
(34, 'ahriy', 3, '2015-07-01 18:59:58'),
(35, 'ahriy', 5, '2015-07-01 19:10:35'),
(36, 'ahriy', 22, '2015-07-01 19:10:49'),
(37, 'ahriy', 2, '2015-07-01 19:12:08'),
(38, 'ahriy', 2, '2015-07-01 19:18:13'),
(39, 'ahriy', 70, '2015-07-01 19:37:01'),
(40, 'ahriy', 22, '2015-07-01 19:38:41'),
(41, 'ahriy', 70, '2015-07-01 19:39:35'),
(42, 'ahriy', 82, '2015-07-01 19:41:08'),
(43, 'ahriy', 81, '2015-07-01 19:41:10'),
(44, 'ahriy', 81, '2015-07-01 19:41:11'),
(45, 'ahriy', 81, '2015-07-01 19:41:11'),
(46, 'ahriy', 80, '2015-07-01 19:41:12'),
(47, 'ahriy', 92, '2015-07-01 22:10:18'),
(48, 'ahriy', 2, '2015-07-01 22:10:49'),
(49, 'ahriy', 1, '2015-07-02 19:40:09'),
(50, 'ahriy', 2, '2015-07-02 23:50:16'),
(51, 'ahriy', 99, '2015-07-03 02:56:17'),
(52, 'ahriy', 121, '2015-07-03 05:04:48'),
(53, 'ahriy', 126, '2015-07-03 05:13:03'),
(54, 'ahriy', 131, '2015-07-03 07:49:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `singer`
--

INSERT INTO `singer` (`id`, `name`, `gender`, `region`, `birthday`, `note`) VALUES
(5, 'taylor swift', NULL, NULL, NULL, '								泰勒·斯威夫特（Taylor Swift），美国乡村音乐著名创作女歌手。1989年出生于美国宾州。\r\n								2006年与独立唱片公司Big Machine签约并发行首张个人专辑《Taylor Swift》。第二张专辑\r\n								《Fearless》在2008年11月11日发行，在Billboard排行榜上到达了第一的位置，首支单曲\r\n								《Love Story》在2008年9月正式发行，成为了第二畅销的乡村单曲，在公告牌最热100中最高排到第四。\r\n								该专辑也卖出了乡村音乐最高的销售量约60万张，包括其他种类的音乐，也是美国女歌手公开销售最多的专辑。\r\n								Taylor曾获得美国乡村音乐协会奖年度最佳专辑奖、格莱美年度专辑奖等荣誉。'),
(6, 'cold play', NULL, NULL, NULL, '								Coldplay是英国摇滚乐坛进入新世纪之后崛起的最受欢迎的摇滚乐队之一，他们秉承了英式摇滚乐队\r\n								一贯的风格，成为了英国新一代乐队中的杰出代表。Coldplay有四个成员，1996年时在UCL（University\r\n								 College London）四人相遇，两年后决定合组此乐团。Coldplay乐队成军之后的每一张专辑都不断进步\r\n								 ，一步一步地扩大他们的影响，目前他们正处于事业的快速上升期。'),
(7, 'Justin Timberlake', 'male', NULL, NULL, '								 贾斯汀·汀布莱克，美国超级巨星，六座格莱美奖、四座艾美奖得主，被认为是对当今流行文化最有影\r\n								 响力的艺人之一。贾斯汀12岁出道，成名于流行组合超级男孩（专辑总销量5000万张）。单飞后全面发\r\n								 展，集歌手、制作人、演员等多重身份于一身，两张个人专辑总销量超过1700万张，受到全球范围内好评\r\n								 。近年来贾斯汀专注于电影事业，在好莱坞发展渐有起色，近期五部电影票房全部突破1.5亿美元并接连与\r\n								 大导演大卫·芬奇、科恩兄弟、克林特·伊斯特伍德等合作。由于Justin拥有或投资服装、高尔夫球场、唱\r\n								 片公司等多项产业，江湖人送外号——贾老板。'),
(8, '周杰伦', NULL, NULL, NULL, '周杰伦（Jay Chou），1979年1月18日出生于台湾新北市，华语流行男歌手、词曲创作人、制作人、演员、MV及电影导演、编剧及监制[1]  。\r\n2000年发行首张专辑《Jay》。2002年在中国、新加坡、马来西亚、美国等地举办首场个人世界巡回演唱会。2003年成为美国《时代周刊》亚洲版封面人物[2-3]  。周杰伦的音乐融合中西方元素，风格多变，四次获世界音乐大奖中国最畅销艺人奖[4-5]  。凭借专辑《Jay》《范特西》《叶惠美》及《跨时代》四次获金曲奖最佳国语专辑奖，并凭借《魔杰座》《跨时代》两度获金曲奖“最佳国语男歌手”奖。2014年、2015年两度获QQ音乐年度盛典最佳全能艺人奖[6-7]  。2015年获全球华语榜中榜亚洲影响力最受欢迎全能艺人奖[8]  。\r\n2005年以电影《头文字D》获台湾电影金马奖及香港电影金像奖“最佳新演员”奖。2007年成立杰威尔音乐有限公司[9]  ，自编自导自演的电影《不能说的秘密》获台湾电影金马奖台湾年度杰出电影奖[10]  。2009年入选美国CNN亚洲极具影响力人物[11]  ，2011年主演好莱坞电影《青蜂侠》进军国际[12]  ，获美国MTV电影大奖最佳新人奖提名[13]  。2012年登福布斯中国名人榜榜首[14]  。2013年自编自导自演电影《天台爱情》获选美国纽约电影节闭幕片[15]  。2014年加盟好莱坞电影《惊天魔盗团2》[16]  。2015年监制电影《一万公里的约定》[1]  。'),
(9, 'mariah carey', NULL, NULL, NULL, '1990年6月13日，发行首张同名专辑《Mariah Carey》，专辑中诞生了以《Vision Of Love》为首的四张冠军单曲[2]  。1995年，发行专辑《Daydream》，根据Nielsen SoundScan统计，在美国售出760万[3]  。1996年，获世界音乐大奖美国销量最佳歌手奖。1999年，与惠特妮·休斯顿共同演唱的歌曲《When You Believe》获得了第71届奥斯卡最佳电影主题曲奖[4]  。2005年，获格莱美音乐奖最佳R&B女歌手。2010年，参演电影《珍爱人生》并凭借该片获意大利第14届好莱坞国际电影节年度女配角奖[5]  。2015年5月，发售精选辑《#1 to Infinity》[6]  。截至2015年，Mariah Carey共拥有18首公告牌冠军单曲[3]  ，从1990年首支单曲《Vision Of Love》开始共有79周在公告牌百强单曲榜夺冠[1]  。'),
(10, 'carly rae jepsen', NULL, NULL, NULL, '卡莉·蕾·吉普森（Carly Rae Jepsen），1985年11月21日出生于加拿大哥伦比亚省，加拿大歌手。\r\n2007年参加“Canadian Idol”选秀节目，并获得了季军[1]  。2008年9月，发行了首张专辑《Tug Of War》。2011年9月，发行单曲《Call Me Maybe》，在美国公告牌Hot 100单曲榜中九周夺冠，获得了第55届格莱美的年度最佳新人奖提名[2]  。2012年，被贾斯汀·比伯签下。2013年，凭借《Call Me Maybe》获得MTV日本音乐录影带奖最佳新晋艺人音乐录影带奖和第11届华鼎奖全球最受欢迎女歌手奖[3-4]  。2015年3月推出歌曲《I Really Like You》[5]  。'),
(11, '迈克尔·杰克逊', NULL, NULL, NULL, '迈克尔·杰克逊（Michael Jackson），1958年08月29日在美国印第安纳州加里市出生，美国歌手、词曲创作人、舞蹈家、表演家、慈善家、音乐家、人道主义者、和平主义者、慈善机构创办人。\r\n杰克逊是家族的第七个孩子，他在1964年作为杰克逊五人组的成员和他的兄弟一起在职业音乐舞台上初次登台，1968年乐队与当地的一家唱片公司合作出版了第一张唱片《Big Boy》。1971年12月，发行了个人首支单曲《Got to be there》，标志着其个人独唱生涯的开始。\r\n1982年12月，杰克逊音乐生涯最畅销的专辑《Thriller》发行。1987年9月，杰克逊展开个人首次全球巡演。通过舞台和视频的表演，杰克逊普及了一些像机械舞和太空步等舞蹈技术。杰克逊一生中两次入选的摇滚名人堂，获得了13个格莱美奖和26个全美音乐奖。在他单飞生涯中，他拥有13支美国冠军单曲。2000年吉尼斯世界纪录大全里认证他资助过39个慈善机构。\r\n2009年5月，杰克逊宣布将在伦敦举行系列音乐会；6月25日，他因为急性丙泊酚和苯二氮平类药物中毒导致心脏骤停逝世。洛杉矶法医裁定这是一宗凶杀案，他的私人医生康拉德·莫里被判定过失杀人罪。2010年，迈克尔·杰克逊被授予格莱美终生成就奖。\r\n2009年6月25日，杰克逊辞世，享年50岁。2011年11月7日下午，杰克逊的私人医师莫里 “过失杀人罪”罪名成立，服刑四年监禁。'),
(12, 'fall out boy', NULL, NULL, NULL, 'Fall out boy（中译名：闹翻天男孩），是来自芝加哥的一个摇滚乐队，组建于2001年，曾入围格莱美。充满年轻活力朝气，畅快将庞克的不羁气焰完全释放，些许EMO风格夹带流畅声线， Fall Out Boy虽然和时下偶像团体般，在团名中加入个"Boy"字眼，但是，他们可完全不按牌理出牌，踢爆时下做作男孩偶像团体的面具，给你最热血的新世代之音！');

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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song`
--

INSERT INTO `song` (`id`, `name`, `album`, `year`, `singer_id`, `category`) VALUES
(1, 'OnlyLove', NULL, NULL, NULL, 2),
(2, 'Yellow', NULL, NULL, 6, 1),
(3, '22', NULL, NULL, 5, 1),
(5, 'Enchanted', NULL, NULL, 5, 1),
(6, 'HowYouGetTheGirl', NULL, NULL, 5, 1),
(7, 'IKnewYouWereTrouble', NULL, NULL, 5, 1),
(8, 'IKnowPlaces', NULL, NULL, 5, 1),
(9, 'IWishYouWould', NULL, NULL, 5, 1),
(10, 'LastChristmas', NULL, NULL, 5, 1),
(11, 'LoveStory', NULL, NULL, 5, 1),
(12, 'Mean', NULL, NULL, 5, 1),
(13, 'OutOfTheWoods', NULL, NULL, 5, 1),
(14, 'AllTooWell', NULL, NULL, 5, 1),
(15, 'AllYouHadToDoWasStay', NULL, NULL, 5, 1),
(16, 'BackToDecember', NULL, NULL, 5, 1),
(17, 'BeginAgain', NULL, NULL, 5, 1),
(18, 'BlankSpace', NULL, NULL, 5, 1),
(19, 'Clean', NULL, NULL, 5, 1),
(20, 'Red', NULL, NULL, 5, 1),
(21, 'Riptide', NULL, NULL, 5, 1),
(22, 'SafeAndSound', NULL, NULL, 5, 1),
(23, 'SpeakNow', NULL, NULL, 5, 1),
(24, 'Style', NULL, NULL, 5, 1),
(26, 'ThisLove', NULL, NULL, 5, 1),
(28, 'WelcomeToNewYork', NULL, NULL, 5, 1),
(29, 'WildestDreams', NULL, NULL, 5, 1),
(70, 'AlwaysInMyHead', NULL, NULL, 6, 2),
(71, 'ASkyFullofStars', NULL, NULL, 6, 2),
(72, 'FixYou', NULL, NULL, 6, 2),
(73, 'Ink', NULL, NULL, 6, 2),
(74, 'Magic', NULL, NULL, 6, 2),
(75, 'Midnight', NULL, NULL, 6, 2),
(76, 'Miracles', NULL, NULL, 6, 2),
(77, 'O', NULL, NULL, 6, 2),
(78, 'Oceans', NULL, NULL, 6, 2),
(79, 'Paradise', NULL, NULL, 6, 2),
(80, 'TheScientist', NULL, NULL, 6, 2),
(92, 'DeadandGone', NULL, NULL, 7, 2),
(93, 'FiveHundredMiles', NULL, NULL, 7, 3),
(94, 'Mirrors', NULL, NULL, 7, 2),
(95, 'NotaBadThing', NULL, NULL, 7, 5),
(96, 'SexyBack', NULL, NULL, 7, 1),
(97, 'SuitTie', NULL, NULL, 7, 3),
(98, 'TakeBacktheNight', NULL, NULL, 7, 3),
(99, 'TKO', NULL, NULL, 7, 5),
(100, 'WhereIsTheLove', NULL, NULL, 7, 3),
(121, '安静', NULL, NULL, 8, 5),
(122, '不能说的秘密', NULL, NULL, 8, 6),
(123, '彩虹', NULL, NULL, 8, 6),
(124, '简单爱', NULL, NULL, 8, 5),
(125, '龙卷风', NULL, NULL, 8, 3),
(126, '七里香', NULL, NULL, 8, 5),
(127, '晴天', NULL, NULL, 8, 4),
(128, '手写的从前', NULL, NULL, 8, 4),
(129, '算什么男人', NULL, NULL, 8, 6),
(130, '夜曲', NULL, NULL, 8, 4),
(131, 'ByeBye', NULL, NULL, 9, 5),
(132, 'IStayInLove', NULL, NULL, 9, 5),
(133, 'WhenYouBelieve', NULL, NULL, 9, 5),
(134, 'WithoutYou', NULL, NULL, 9, 2),
(135, 'CallMeMaybe', NULL, NULL, 10, 5),
(136, 'Curiosity', NULL, NULL, 10, 5),
(137, 'IReallyLikeYou', NULL, NULL, 10, 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `song_list`
--

INSERT INTO `song_list` (`id`, `name`, `user_id`, `note`, `user_name`) VALUES
(12, 'Taylor Swift', NULL, '', 'ahriy'),
(17, 'I love music', NULL, '', 'ahriy'),
(18, '周杰伦', NULL, '这是一个关于周杰伦的歌单', 'ahriy'),
(19, 'coldplay', NULL, '', 'ahriy'),
(20, '安安静静听歌', NULL, '', 'ahriy'),
(21, '我的名字叫devil', NULL, '', 'devil'),
(22, '只是一个人畜无害的歌单', NULL, '', 'devil'),
(23, 'devil要学mysql', NULL, '', 'devil');

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
(12, 2),
(17, 2),
(19, 2),
(23, 2),
(12, 3),
(20, 3),
(12, 5),
(12, 6),
(18, 7),
(12, 10),
(12, 14),
(12, 23),
(17, 92),
(20, 92),
(22, 94),
(22, 95),
(22, 97);

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

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
(1, 2, '真好听', NULL, '2015-07-03 04:25:38'),
(1, 5, '被迷住了！', NULL, '2015-07-03 08:00:57'),
(1, 7, '真好听！', NULL, '2015-07-03 08:01:37'),
(46, 1, 'the music is great!', NULL, '2015-06-17 22:00:37'),
(46, 2, 'so gentle', NULL, '2015-07-01 18:42:59');

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
(1, 20),
(1, 21);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `song_list`
--
ALTER TABLE `song_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
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
