DROP TABLE IF EXISTS `t_aboutus`;
CREATE TABLE IF NOT EXISTS `t_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_bin,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE IF NOT EXISTS `t_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `postID` int(10) DEFAULT NULL,
  `floor` int(10) DEFAULT NULL,
  `likeCount` int(10) DEFAULT NULL,
  `likeIds` longtext COLLATE utf8_bin,
  `publishTime` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` mediumblob,
  `commenterID` int(10) DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE IF NOT EXISTS `t_customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `headPic` varchar(255) COLLATE utf8_bin DEFAULT '',
  `nickname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `school` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `label` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `registTime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
`status` int(4) DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE IF NOT EXISTS `t_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_bin,
`date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_loginlog`;
CREATE TABLE IF NOT EXISTS `t_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
`loginTime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE IF NOT EXISTS `t_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `parentID` int(10) DEFAULT NULL,
  `orderNum` int(10) DEFAULT NULL,
`remarks` varchar(100) COLLATE utf8_bin DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_mm`;
CREATE TABLE IF NOT EXISTS `t_mm` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `senderID` int(10) DEFAULT NULL,
  `receiverID` int(10) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isRead` int(4) DEFAULT NULL,
  `sendTime` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `postID` int(10) DEFAULT NULL,
  `xqzID` int(10) DEFAULT NULL,
`pmID` int(10) DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_pm`;
CREATE TABLE IF NOT EXISTS `t_pm` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `senderID` int(10) DEFAULT NULL,
  `receiverID` int(10) DEFAULT NULL,
  `content` mediumblob,
`lastUpTime` datetime DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_pmreplies`;
CREATE TABLE IF NOT EXISTS `t_pmreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pmID` int(10) DEFAULT NULL,
  `parentReplierID` int(10) DEFAULT NULL,
  `replierID` int(10) DEFAULT NULL,
`content` mediumblob,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_post`;
CREATE TABLE IF NOT EXISTS `t_post` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` mediumblob,
  `publisherID` int(10) DEFAULT NULL,
  `publishTime` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `likeCount` int(10) DEFAULT NULL,
  `likeIds` longtext COLLATE utf8_bin,
  `lastUpTime` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `commentCount` int(10) DEFAULT NULL,
`orderNum` int(11) DEFAULT '0',
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_postreplies`;
CREATE TABLE IF NOT EXISTS `t_postreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `postID` int(10) DEFAULT NULL,
  `commentID` int(10) DEFAULT NULL,
  `parentReplierID` int(10) DEFAULT NULL,
  `replierID` int(10) DEFAULT NULL,
`content` mediumblob,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_role`;
CREATE TABLE IF NOT EXISTS `t_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
`roleName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_root`;
CREATE TABLE IF NOT EXISTS `t_root` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `roleID` int(10) NOT NULL,
  `menuID` int(10) NOT NULL,
  primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_sm`;
CREATE TABLE IF NOT EXISTS `t_sm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_bin,
  `publishTime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `realname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `roleID` int(10) DEFAULT NULL,
  `SA` tinyint(4) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_xqz`;
CREATE TABLE IF NOT EXISTS `t_xqz` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` mediumblob,
  `publishTime` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `likeCount` int(10) DEFAULT NULL,
  `dislikeCount` int(10) DEFAULT NULL,
  `likeIds` longtext COLLATE utf8_bin,
  `dislikeIds` longtext COLLATE utf8_bin,
  `publisherID` int(10) DEFAULT NULL,
`repliesCount` int(10) DEFAULT NULL,
primary key (id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `t_xqzreplies`;
CREATE TABLE IF NOT EXISTS `t_xqzreplies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `xqzID` int(10) DEFAULT NULL,
  `parentReplierID` int(10) DEFAULT NULL,
  `replierID` int(10) DEFAULT NULL,
`content` mediumblob,
primary key (id)
) ENGINE=InnoDB;


