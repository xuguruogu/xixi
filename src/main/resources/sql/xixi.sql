/*
Navicat MySQL Data Transfer

Source Server         : bd
Source Server Version : 50091
Source Host           : localhost:3306
Source Database       : xixi

Target Server Type    : MYSQL
Target Server Version : 50091
File Encoding         : 65001

Date: 2015-05-19 13:15:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_aboutus`
-- ----------------------------
DROP TABLE IF EXISTS `t_aboutus`;
CREATE TABLE `t_aboutus` (
  `id` int(11) NOT NULL auto_increment,
  `content` longtext collate utf8_bin,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_aboutus
-- ----------------------------
INSERT INTO `t_aboutus` VALUES ('1', 0x3C64697620616C69676E3D2263656E746572223E3C7370616E207374796C653D22666F6E742D66616D696C793AE5AE8BE4BD933B464F4E542D53495A453A2031327074223E3C2F7370616E3E3C7020616C69676E3D226C656674223E3C7370616E207374796C653D22666F6E742D73697A653A313870783B223EE58FAFE4BBA5E5958AE5958AE5958AE5958AE5958A266E6273703B203C2F7370616E3E3C2F703E3C2F6469763E);

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(10) NOT NULL auto_increment,
  `postID` int(10) default NULL,
  `floor` int(10) default NULL,
  `likeCount` int(10) default NULL,
  `likeIds` longtext collate utf8_bin,
  `publishTime` varchar(100) collate utf8_bin default NULL,
  `content` mediumblob,
  `commenterID` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '1', '1', '3', 0x312C31352C37, '2015-04-18 10:59:35', 0xE7949FE5A682E5A48FE88AB1EFBC8CE6ADBBE5A682E7A78BE58FB6, '2');
INSERT INTO `t_comment` VALUES ('2', '1', '2', '9', 0x312C37, '2015-04-18 11:00:48', 0xE5A682E6838AE9B8BFE4B880E79EA5EFBC8CE8BDACE79EACE58DB3E9809D, '1');
INSERT INTO `t_comment` VALUES ('3', '1', '3', '-14', 0x332C332C332C332C332C332C332C332C332C332C332C332C332C332C332C332C332C332C332C31352C37, '2015-04-18 13:23:09', 0xE68891E79A84E6BB91E69DBFE99E8BEFBC8CE697B6E5B09AE697B6E5B09AE69C80E697B6E5B09A, '2');
INSERT INTO `t_comment` VALUES ('4', '1', '4', '-2', 0x372C37, '2015-04-18 13:46:12', 0xE4BCBCE788AAE78999EFBC8CE4BCBCE9AD94E9ACBCE79A84E8889EE6ADA5, '1');
INSERT INTO `t_comment` VALUES ('5', '1', '5', '-7', '', '2015-04-18 13:47:51', 0x73617920796573, '2');
INSERT INTO `t_comment` VALUES ('6', '1', '6', '4', 0x372C372C372C372C372C37, '2015-04-18 13:48:47', 0xE58D8AE99DA2E5A686, '1');
INSERT INTO `t_comment` VALUES ('7', '2', '1', null, null, '2015-04-18 13:49:07', 0xE58D8AE99DA2E5A686, '1');
INSERT INTO `t_comment` VALUES ('8', '2', '2', null, null, '2015-04-21 10:22:02', 0xE4BB8AE5A4A9E79C9FE698AFE5A5BDE5A4A9E6B094, '2');
INSERT INTO `t_comment` VALUES ('9', '2', '3', null, null, '2015-04-21 10:22:54', 0xE4BB8AE5A4A9E79C9FE698AFE5A5BDE5A4A9E6B094, '2');
INSERT INTO `t_comment` VALUES ('10', '2', '4', null, null, '2015-04-21 10:32:24', 0xE4BB8AE5A4A9E79C9FE698AFE5A5BDE5A4A9E6B094, '2');
INSERT INTO `t_comment` VALUES ('11', '2', '5', null, null, '2015-04-21 10:36:26', 0xE591B5E591B5E591B5E591B5, '1');
INSERT INTO `t_comment` VALUES ('12', '2', '6', null, null, '2015-04-21 10:39:57', 0xE58F97E4B88DE4BA86E4BA86E5958AEFBC81, '1');
INSERT INTO `t_comment` VALUES ('13', '2', '7', null, null, '2015-04-21 10:41:44', 0xE5958AE5958AE5958AE5958AEFBC81, '2');
INSERT INTO `t_comment` VALUES ('14', '2', '8', null, null, '2015-04-21 11:27:19', 0xE59388E59388E59388E59388, '2');
INSERT INTO `t_comment` VALUES ('15', '2', '9', null, null, '2015-04-21 12:22:53', 0xE4BB8AE5A4A9E79C9FE698AFE5A5BDE5A4A9E6B094, '2');
INSERT INTO `t_comment` VALUES ('16', '3', '1', '2', 0x372C37, '2015-05-04 10:33:32', 0xE68891E69DA5E8B79FE4B8AAE5B896, '2');
INSERT INTO `t_comment` VALUES ('17', '1', '7', '-9', 0x372C37, '2015-05-06 17:04:55', 0x616E64726F69642E7769646765742E45646974546578747B343263343431363820564645442E2E434C202E462E2E2E2E492E20302C302D302C3020233766303630313466206170703A69642F73656E645F65646974746578747D, '7');
INSERT INTO `t_comment` VALUES ('18', '1', '8', '0', '', '2015-05-06 17:07:06', 0x616E64726F69642E7769646765742E45646974546578747B343261383939343020564645442E2E434C202E462E2E2E2E2E2E2032302C33302D3534302C31313020233766303630313466206170703A69642F73656E645F65646974746578747D, '7');
INSERT INTO `t_comment` VALUES ('19', '1', '9', '0', '', '2015-05-06 17:08:28', 0x616E64726F69642E7769646765742E45646974546578747B343166373565383020564645442E2E434C202E462E2E2E2E2E2E2032302C33302D3534302C31313020233766303630313466206170703A69642F73656E645F65646974746578747D, '7');
INSERT INTO `t_comment` VALUES ('20', '1', '10', '0', '', '2015-05-06 17:09:54', 0xE595A6E592AFE595A6E592AFE595A6E592AF, '7');
INSERT INTO `t_comment` VALUES ('21', '1', '11', '0', '', '2015-05-06 17:14:06', 0xE58FA4E5B7A8E59FBA, '7');
INSERT INTO `t_comment` VALUES ('22', '1', '12', '1', 0x37, '2015-05-06 17:15:41', 0xE5A5BDE595A6E590A7, '7');
INSERT INTO `t_comment` VALUES ('23', '9', '1', '1', 0x37, '2015-05-08 16:05:45', 0x67667364677767, '7');
INSERT INTO `t_comment` VALUES ('24', '3', '2', null, null, '2015-05-08 16:06:16', 0x72677365677365, '7');
INSERT INTO `t_comment` VALUES ('25', '11', '1', null, null, '2015-05-11 12:04:10', 0xE8B79FE69BB4, '7');
INSERT INTO `t_comment` VALUES ('26', '12', '1', '2', 0x312C37, '2015-05-11 15:33:35', 0xE4BA86E69DA5E592AFE593A6E593A6E58AAAE58A9BE592AFE88083E89991E59BBEE58594E58594E59BBEE59BBEE593A6, '15');
INSERT INTO `t_comment` VALUES ('27', '1', '13', '1', 0x37, '2015-05-11 17:59:48', 0xE59388E59388, '7');
INSERT INTO `t_comment` VALUES ('28', '12', '2', '2', 0x312C37, '2015-05-11 22:33:25', 0xE7B291E7B291, '1');
INSERT INTO `t_comment` VALUES ('29', '4', '1', '2', 0x372C3233, '2015-05-11 22:43:15', 0xE5AE9DE5AE9DE698AFE4BA8CE4B8AB, '1');
INSERT INTO `t_comment` VALUES ('30', '16', '1', '2', 0x312C3233, '2015-05-13 14:20:38', 0x746FE8BF9B6C6F6F6B, '23');
INSERT INTO `t_comment` VALUES ('31', '19', '1', null, null, '2015-05-14 12:51:07', 0xE59388E59388, '26');
INSERT INTO `t_comment` VALUES ('32', '19', '2', null, null, '2015-05-14 12:51:17', 0xE59388E59388E599A2, '26');
INSERT INTO `t_comment` VALUES ('33', '21', '1', null, null, '2015-05-14 13:02:12', 0xE89795E4B881, '30');
INSERT INTO `t_comment` VALUES ('34', '26', '1', null, null, '2015-05-14 15:00:05', 0x68656865, '30');
INSERT INTO `t_comment` VALUES ('35', '28', '1', null, null, '2015-05-14 18:42:24', 0x72645147464157454756, '7');
INSERT INTO `t_comment` VALUES ('36', '31', '1', '1', 0x3339, '2015-05-14 19:27:27', 0xE58F91E4B8AAE5B08FE59C88E5AD90E8AF95E8AF95, '30');
INSERT INTO `t_comment` VALUES ('37', '30', '1', '2', 0x33392C31, '2015-05-14 19:28:07', 0xE8AF95E8AF95E59388, '30');
INSERT INTO `t_comment` VALUES ('38', '25', '1', null, null, '2015-05-14 19:28:46', 0xE8AF95E8AF95E5958A, '30');
INSERT INTO `t_comment` VALUES ('39', '25', '2', null, null, '2015-05-14 19:41:00', 0xE8B79FE5B896, '35');
INSERT INTO `t_comment` VALUES ('40', '30', '2', '2', 0x33392C31, '2015-05-14 19:42:02', 0xE593AAE4B8AAE38082, '35');
INSERT INTO `t_comment` VALUES ('41', '32', '1', null, null, '2015-05-14 19:48:14', 0xE38082E38082, '35');
INSERT INTO `t_comment` VALUES ('42', '32', '2', null, null, '2015-05-14 19:48:28', 0xE58FAFE4BBA5E4BA86E38082, '35');
INSERT INTO `t_comment` VALUES ('43', '33', '1', null, null, '2015-05-14 19:56:38', 0xE696ADE8838CE5B1B1F09F98B3F09F98B3F09F98B3F09F98B3, '30');
INSERT INTO `t_comment` VALUES ('44', '34', '1', null, null, '2015-05-15 17:14:07', 0xE4B88DE99499E5958A, '36');
INSERT INTO `t_comment` VALUES ('45', '34', '2', null, null, '2015-05-15 17:14:20', 0xE7ACA8E9878CE5A881E6ADA6, '36');
INSERT INTO `t_comment` VALUES ('46', '35', '1', null, null, '2015-05-15 17:30:54', 0xE59388E59388, '36');
INSERT INTO `t_comment` VALUES ('47', '31', '2', '1', 0x3339, '2015-05-16 12:54:50', 0xE4BA8CE8B4A7E69F90E88097, '38');
INSERT INTO `t_comment` VALUES ('48', '36', '1', '2', 0x312C3432, '2015-05-16 20:56:19', 0xE693A67E, '39');
INSERT INTO `t_comment` VALUES ('49', '38', '1', '2', 0x372C31, '2015-05-18 17:01:52', 0x6173647361, '7');

-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(10) NOT NULL auto_increment,
  `headPic` varchar(255) collate utf8_bin default '',
  `nickname` varchar(100) collate utf8_bin default NULL,
  `school` varchar(100) collate utf8_bin default NULL,
  `email` varchar(100) collate utf8_bin default NULL,
  `password` varchar(100) collate utf8_bin default NULL,
  `sex` varchar(50) collate utf8_bin default NULL,
  `age` int(4) default NULL,
  `label` varchar(100) collate utf8_bin default NULL,
  `registTime` varchar(255) collate utf8_bin default NULL,
  `status` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'resource/imgUpload/20150518/imageskoalac_oa681887.jpg', 'Xanxuss', '华师', '598134644@qq.com', '123', '男', '25', '没意思啊', '2015-05-07 11:11:11', '0');
INSERT INTO `t_customer` VALUES ('2', 'resource/uploadHeadImg', 'Cloud', '华师', '5555555@qq.com', '123', '女', '22', '大美女', '2015-05-07 11:11:11', '0');
INSERT INTO `t_customer` VALUES ('3', 'resource/imgUpload/20150518/imageskoalac_oa600127.jpg', '555', '华师', '100520140@qq.com', '123456', '1', '16', '123', '2015-05-07 11:11:11', '0');
INSERT INTO `t_customer` VALUES ('4', null, '宁锟', '华师', '11231', '111111', '男', '1111', null, '2015-05-07 11:11:11', '0');
INSERT INTO `t_customer` VALUES ('5', null, '宁锟', '华师', null, null, null, '0', null, '2015-05-07 11:11:11', '0');
INSERT INTO `t_customer` VALUES ('6', null, '宁锟', '华师', null, null, null, '0', null, '2015-05-07 11:11:11', '0');
INSERT INTO `t_customer` VALUES ('7', 'resource/imgUpload/20150518/imageskoalac_oa622429.jpg', '嗯嗯嗯', '华师', '1570240728@qq.com', '157024', '男', '21', '调皮', null, '0');
INSERT INTO `t_customer` VALUES ('8', '', 'xanxus', '华师', '553334@qq.com', '123456', '男', '24', null, '2015-05-07 13:47:44', '0');
INSERT INTO `t_customer` VALUES ('9', '', '好名字', '华师', '10000@qq.com', '123456', '男', '20', null, '2015-05-07 14:00:51', '0');
INSERT INTO `t_customer` VALUES ('10', 'resource/imgUpload/20150508/imageskoalac_oa473636.jpg', '宁锟', '华师', '15702407128@qq.com', '111111', '男', '0', null, '2015-05-08 18:47:54', '0');
INSERT INTO `t_customer` VALUES ('11', 'resource/imgUpload/20150508/imageskoalac_oa470903.jpg', '宁锟', '华师', '157024072811@qq.com', '157024', '男', '0', null, '2015-05-08 18:49:01', '0');
INSERT INTO `t_customer` VALUES ('12', 'resource/imgUpload/20150508/imageskoalac_oa533183.jpg', '宁锟', '华师', '15702407811@qq.com', '157024', '男', '0', null, '2015-05-08 18:55:34', '0');
INSERT INTO `t_customer` VALUES ('13', 'resource/imgUpload/20150511/imageskoalac_oa833577.jpg', '宁锟', '华师', '1570240722811@qq.com', '157024', '男', '0', null, '2015-05-11 11:49:15', '0');
INSERT INTO `t_customer` VALUES ('14', 'resource/imgUpload/20150511/imageskoalac_oa761480.jpg', '宁锟', '华师', '1570246666@126.com', '157024', '男', '0', null, '2015-05-11 12:18:29', '0');
INSERT INTO `t_customer` VALUES ('15', '', '林俊杰', '华师', '4657676476@126.com', '157024', '男', '0', '', '2015-05-11 12:20:15', '0');
INSERT INTO `t_customer` VALUES ('16', 'resource/imgUpload/20150512/imageskoalac_oa943419.jpg', '宁锟', '华师', '598134645@qq.com', '157024', '男', '0', null, '2015-05-12 10:17:55', '0');
INSERT INTO `t_customer` VALUES ('17', '', '宁锟', '华师', 'dfghhhjjj@qq.com', '157024', '男', '0', null, '2015-05-12 11:24:43', '0');
INSERT INTO `t_customer` VALUES ('18', 'resource/imgUpload/20150512/imageskoalac_oa451091.jpg', 'nani', '华师', 'test@qq.com', '1', '男', '0', null, '2015-05-12 18:17:41', '0');
INSERT INTO `t_customer` VALUES ('19', '', '测试员', '华师', '598134643@qq.com', '123', '男', '24', '', '2015-05-12 18:20:24', '0');
INSERT INTO `t_customer` VALUES ('20', '', 'nani', '华师', '499137774@qq.com', '111111', '男', '0', null, '2015-05-12 18:26:13', '0');
INSERT INTO `t_customer` VALUES ('21', '', 'nani', '华师', '2572199656@qq.com', '111111', '男', '0', null, '2015-05-12 18:37:02', '0');
INSERT INTO `t_customer` VALUES ('22', 'resource/imgUpload/20150512/imageskoalac_oa662084.jpg', 'ssss', '华师', '5555@qq.com', '123', '男', '0', null, '2015-05-12 18:50:38', '0');
INSERT INTO `t_customer` VALUES ('23', 'resource/imgUpload/20150513/imageskoalac_oa219144.jpg', '小爱', '华师', '123456@qq.com', '157024', '女', '0', '', '2015-05-13 14:16:55', '0');
INSERT INTO `t_customer` VALUES ('24', '', '探秘', '华师', '8888@qq.com', '123', '男', '0', '', '2015-05-13 14:54:26', '0');
INSERT INTO `t_customer` VALUES ('25', '', '里', '安徽医科大学', '3355@qq.com', '2', '男', '0', null, '2015-05-14 07:24:44', '0');
INSERT INTO `t_customer` VALUES ('26', 'resource/imgUpload/20150514/imageskoalac_oa776878.jpg', 'chuck', '中国科学技术大学', 'chuckzhe@mail.ustc.edu.cn', '673582', '男', '24', '心静则致', '2015-05-14 11:58:33', '0');
INSERT INTO `t_customer` VALUES ('27', '', 'busy', '安徽医科大学', 'gggg@d.edu', '123456', '男', '0', null, '2015-05-14 12:07:23', '0');
INSERT INTO `t_customer` VALUES ('28', 'resource/imgUpload/20150514/imageskoalac_oa650131.jpg', '古岳', '安徽大学', 'maplezhe@edu.cn', '673582', '女', '0', null, '2015-05-14 12:36:12', '0');
INSERT INTO `t_customer` VALUES ('29', 'resource/imgUpload/20150514/imageskoalac_oa879118.jpg', '噢噢哲', '中国科学技术大学', 'chuv@edu.cn', '673582', '男', '0', null, '2015-05-14 12:59:37', '0');
INSERT INTO `t_customer` VALUES ('30', 'resource/imgUpload/20150514/imageskoalac_oa371328.jpg', '魔女哲', '中国科学技术大学', 'chuck@edu.cn', '123456', '女', '20', 'a', '2015-05-14 13:00:58', '1');
INSERT INTO `t_customer` VALUES ('31', 'resource/imgUpload/20150514/imageskoalac_oa118581.jpg', '四四四', '上海理工大学', 'chuck77@edu.cn', '673582', '男', '0', null, '2015-05-14 13:55:32', '0');
INSERT INTO `t_customer` VALUES ('32', 'resource/imgUpload/20150514/imageskoalac_oa686561.jpg', '神马', '中国科学技术大学', 'abc@edu.cn', '673582', '女', '456', 'vjvshn', '2015-05-14 14:16:43', '0');
INSERT INTO `t_customer` VALUES ('33', '', '查克', '安徽大学', 'zxc@edu.cn', '673582', '男', '0', null, '2015-05-14 14:24:36', '0');
INSERT INTO `t_customer` VALUES ('34', '', '里', '合肥工业大学', 'q@w.com', '1', '男', '0', null, '2015-05-14 19:00:13', '0');
INSERT INTO `t_customer` VALUES ('35', 'resource/imgUpload/20150514/imageskoalac_oa778398.jpg', '某浩的马甲', '中国科学技术大学', 'lihao90@mail.ustc.edu.cn', 'qshhdzx203', '男', '24', '篮球，dota2。', '2015-05-14 19:23:08', '1');
INSERT INTO `t_customer` VALUES ('36', 'resource/imgUpload/20150515/imageskoalac_oa863972.jpg', '其他高校', '其他高校', 'qwe@edu.cn', '673582', '女', '24', '', '2015-05-15 16:57:09', '0');
INSERT INTO `t_customer` VALUES ('37', '', 'TKing', '其他高校', 'W11@edu.cn', '12345', '男', '0', null, '2015-05-15 17:05:06', '0');
INSERT INTO `t_customer` VALUES ('38', 'resource/imgUpload/20150516/imageskoalac_oa724435.jpg', '夏虫', '中国科学技术大学', 'dingxin@mail.ustc.edu.cn', '1234567890', '男', '0', null, '2015-05-16 12:53:47', '0');
INSERT INTO `t_customer` VALUES ('39', 'resource/imgUpload/20150516/imageskoalac_oa201049.jpg', '八姐姐', '其他高校', 'asd@edu.cn', '673582', '女', '24', '哈哈~', '2015-05-16 20:27:57', '0');
INSERT INTO `t_customer` VALUES ('40', '', '哈哈', '中国科学技术大学', 'huson@edu.cn', '123456', '女', '0', null, '2015-05-19 11:50:23', '0');
INSERT INTO `t_customer` VALUES ('41', 'resource/imgUpload/20150519/imageskoalac_oa811864.jpg', 'huzhe', '中国科学技术大学', 'huzhe@edu.cn', '123456', '女', '0', '', '2015-05-19 11:51:03', '0');
INSERT INTO `t_customer` VALUES ('42', 'resource/imgUpload/20150519/imageskoalac_oa587301.jpg', '哈哈哈哈', '中国科学技术大学', 'mmm@edu.cn', '673582', '男', '0', null, '2015-05-19 12:08:04', '0');

-- ----------------------------
-- Table structure for `t_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback` (
  `id` int(11) NOT NULL auto_increment,
  `customerID` int(11) default NULL,
  `content` longtext collate utf8_bin,
  `date` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
INSERT INTO `t_feedback` VALUES ('1', '1', 0xE59388E59388E59388E59388E59388E59388E59388E59388E59388E59388E59388E59388E59388E59388, '2015-05-11');
INSERT INTO `t_feedback` VALUES ('2', '3', 0x717765717765, '2015-05-11');
INSERT INTO `t_feedback` VALUES ('3', '3', 0x717765717765, '2015-05-11');
INSERT INTO `t_feedback` VALUES ('4', '15', 0xE595A6E595A6E595A6, '2015-05-11');
INSERT INTO `t_feedback` VALUES ('5', '15', 0xE5A5BDE7A9BA, '2015-05-11');
INSERT INTO `t_feedback` VALUES ('6', '7', 0xE59388E59388EFBC8CE58F8DE9A688E6848FE8A781, '2015-05-11');
INSERT INTO `t_feedback` VALUES ('7', '23', 0xE4BDA0E6988EE6988E, '2015-05-13');
INSERT INTO `t_feedback` VALUES ('8', '39', 0xE59388E593887EE59388E59388E59388E59388E59388E59388E5958A, '2015-05-16');
INSERT INTO `t_feedback` VALUES ('9', '38', 0xE883A1E593B2E4BA8CE8B4A7, '2015-05-16');

-- ----------------------------
-- Table structure for `t_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `t_loginlog`;
CREATE TABLE `t_loginlog` (
  `id` int(11) NOT NULL auto_increment,
  `customerID` int(11) default NULL,
  `loginTime` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_loginlog
-- ----------------------------
INSERT INTO `t_loginlog` VALUES ('1', '1', '2015-05-15 13:47:46');
INSERT INTO `t_loginlog` VALUES ('2', '32', '2015-05-15 16:24:04');
INSERT INTO `t_loginlog` VALUES ('3', '36', '2015-05-15 16:57:21');
INSERT INTO `t_loginlog` VALUES ('4', '37', '2015-05-15 17:05:37');
INSERT INTO `t_loginlog` VALUES ('5', '38', '2015-05-16 12:54:11');
INSERT INTO `t_loginlog` VALUES ('6', '39', '2015-05-16 20:28:25');
INSERT INTO `t_loginlog` VALUES ('7', '35', '2015-05-16 21:08:57');
INSERT INTO `t_loginlog` VALUES ('8', '36', '2015-05-16 21:59:16');
INSERT INTO `t_loginlog` VALUES ('9', '7', '2015-05-18 12:24:14');
INSERT INTO `t_loginlog` VALUES ('10', '7', '2015-05-18 14:16:16');
INSERT INTO `t_loginlog` VALUES ('11', '7', '2015-05-18 15:49:21');
INSERT INTO `t_loginlog` VALUES ('12', '7', '2015-05-18 15:52:24');
INSERT INTO `t_loginlog` VALUES ('13', '3', '2015-05-18 15:56:29');
INSERT INTO `t_loginlog` VALUES ('14', '7', '2015-05-18 17:05:58');
INSERT INTO `t_loginlog` VALUES ('15', '7', '2015-05-18 17:09:56');
INSERT INTO `t_loginlog` VALUES ('16', '1', '2015-05-18 18:02:22');
INSERT INTO `t_loginlog` VALUES ('17', '7', '2015-05-18 18:26:21');
INSERT INTO `t_loginlog` VALUES ('18', '7', '2015-05-18 18:26:39');
INSERT INTO `t_loginlog` VALUES ('19', '7', '2015-05-18 18:30:35');
INSERT INTO `t_loginlog` VALUES ('20', '7', '2015-05-18 18:34:25');
INSERT INTO `t_loginlog` VALUES ('21', '1', '2015-05-18 18:40:51');
INSERT INTO `t_loginlog` VALUES ('22', '1', '2015-05-18 18:41:54');
INSERT INTO `t_loginlog` VALUES ('23', '1', '2015-05-18 18:46:03');
INSERT INTO `t_loginlog` VALUES ('24', '7', '2015-05-19 09:41:45');
INSERT INTO `t_loginlog` VALUES ('25', '7', '2015-05-19 10:01:25');
INSERT INTO `t_loginlog` VALUES ('26', '3', '2015-05-19 10:09:26');
INSERT INTO `t_loginlog` VALUES ('27', '1', '2015-05-19 10:10:47');
INSERT INTO `t_loginlog` VALUES ('28', '1', '2015-05-19 10:13:13');
INSERT INTO `t_loginlog` VALUES ('29', '1', '2015-05-19 10:14:52');
INSERT INTO `t_loginlog` VALUES ('30', '1', '2015-05-19 10:16:04');
INSERT INTO `t_loginlog` VALUES ('31', '1', '2015-05-19 10:16:25');
INSERT INTO `t_loginlog` VALUES ('32', '1', '2015-05-19 10:17:41');
INSERT INTO `t_loginlog` VALUES ('33', '1', '2015-05-19 10:19:01');
INSERT INTO `t_loginlog` VALUES ('34', '1', '2015-05-19 10:21:35');
INSERT INTO `t_loginlog` VALUES ('35', '1', '2015-05-19 10:22:08');
INSERT INTO `t_loginlog` VALUES ('36', '1', '2015-05-19 10:52:13');
INSERT INTO `t_loginlog` VALUES ('37', '1', '2015-05-19 10:55:44');
INSERT INTO `t_loginlog` VALUES ('38', '1', '2015-05-19 11:02:37');
INSERT INTO `t_loginlog` VALUES ('39', '1', '2015-05-19 11:13:35');
INSERT INTO `t_loginlog` VALUES ('40', '1', '2015-05-19 11:14:38');
INSERT INTO `t_loginlog` VALUES ('41', '1', '2015-05-19 11:17:05');
INSERT INTO `t_loginlog` VALUES ('42', '1', '2015-05-19 11:17:35');
INSERT INTO `t_loginlog` VALUES ('43', '30', '2015-05-19 11:43:37');
INSERT INTO `t_loginlog` VALUES ('44', '38', '2015-05-19 11:46:32');
INSERT INTO `t_loginlog` VALUES ('45', '38', '2015-05-19 11:47:43');
INSERT INTO `t_loginlog` VALUES ('46', '35', '2015-05-19 11:50:29');
INSERT INTO `t_loginlog` VALUES ('47', '41', '2015-05-19 11:51:18');
INSERT INTO `t_loginlog` VALUES ('48', '35', '2015-05-19 11:52:09');
INSERT INTO `t_loginlog` VALUES ('49', '35', '2015-05-19 11:59:00');
INSERT INTO `t_loginlog` VALUES ('50', '30', '2015-05-19 12:00:08');
INSERT INTO `t_loginlog` VALUES ('51', '35', '2015-05-19 12:01:28');
INSERT INTO `t_loginlog` VALUES ('52', '35', '2015-05-19 12:02:55');
INSERT INTO `t_loginlog` VALUES ('53', '42', '2015-05-19 12:10:20');
INSERT INTO `t_loginlog` VALUES ('54', '42', '2015-05-19 12:18:42');
INSERT INTO `t_loginlog` VALUES ('55', '42', '2015-05-19 12:18:51');
INSERT INTO `t_loginlog` VALUES ('56', '42', '2015-05-19 12:26:38');
INSERT INTO `t_loginlog` VALUES ('57', '42', '2015-05-19 12:27:47');
INSERT INTO `t_loginlog` VALUES ('58', '42', '2015-05-19 12:33:57');

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(10) NOT NULL auto_increment,
  `menuName` varchar(50) collate utf8_bin default NULL,
  `url` varchar(50) collate utf8_bin default NULL,
  `parentID` int(10) default NULL,
  `orderNum` int(10) default NULL,
  `remarks` varchar(100) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '用户管理', '', '0', '1', '查看注册用户信息和封停用户');
INSERT INTO `t_menu` VALUES ('2', '用户帐号管理', 'customer/customer', '1', '1', '');
INSERT INTO `t_menu` VALUES ('3', '鹊桥管理', '', '0', '2', '查看所有帖子，删除恶意帖子');
INSERT INTO `t_menu` VALUES ('4', '鹊桥帖子管理', 'post/post', '3', '1', '');
INSERT INTO `t_menu` VALUES ('5', '登录日志', '', '0', '4', '查看用户登录时间');
INSERT INTO `t_menu` VALUES ('6', '用户登录查看', 'loginLog/loginLog', '5', '1', '');
INSERT INTO `t_menu` VALUES ('7', '小圈子管理', '', '0', '3', '删除恶意、不良的内容');
INSERT INTO `t_menu` VALUES ('8', '小圈子内容管理', 'xqz/xqz', '7', '1', '');
INSERT INTO `t_menu` VALUES ('9', '消息推送', '', '0', '5', '');
INSERT INTO `t_menu` VALUES ('10', '推送消息管理', 'sm/sm', '9', '1', '');
INSERT INTO `t_menu` VALUES ('11', '用户反馈', '', '0', '6', '查看用户反馈信息');
INSERT INTO `t_menu` VALUES ('12', '用户反馈查看', 'feedback/fb', '11', '1', '');
INSERT INTO `t_menu` VALUES ('13', '关于我们', '', '0', '7', '');
INSERT INTO `t_menu` VALUES ('14', '编辑修改', 'aboutUs/toUpdate', '13', '1', '');

-- ----------------------------
-- Table structure for `t_mm`
-- ----------------------------
DROP TABLE IF EXISTS `t_mm`;
CREATE TABLE `t_mm` (
  `id` int(10) NOT NULL auto_increment,
  `senderID` int(10) default NULL,
  `receiverID` int(10) default NULL,
  `content` varchar(255) collate utf8_bin default NULL,
  `isRead` int(4) default NULL,
  `sendTime` varchar(100) collate utf8_bin default NULL,
  `type` int(4) default NULL,
  `postID` int(10) default NULL,
  `xqzID` int(10) default NULL,
  `pmID` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=755 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_mm
-- ----------------------------
INSERT INTO `t_mm` VALUES ('7', '1', '2', '在小圈子中赞了我', '0', '2015-04-21 12:41', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('8', '1', '2', '在小圈子中赞了我', '0', '2015-04-21 12:42', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('9', '1', '2', '在小圈子中duang了我', '0', '2015-04-21 12:42', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('10', '2', '2', '在小圈子中duang了我', '0', '2015-04-21 12:42', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('11', '2', '1', '在小圈子中回复了我', '1', '2015-04-21 12:44', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('12', '2', '1', '在小圈子中回复了我', '1', '2015-04-21 12:49', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('13', '2', '1', '在小圈子中回复了我', '1', '2015-04-21 12:49', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('15', '1', '2', '私信了我', '0', '2015-04-21 13:59', '2', '0', '0', '4');
INSERT INTO `t_mm` VALUES ('16', '2', '1', '在私信中回复了我', '1', '2015-04-21 14:02', '2', '0', '0', '2');
INSERT INTO `t_mm` VALUES ('17', '2', '1', '评论了我的帖子', '1', '2015-05-04 10:33', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('18', '3', '3', '在帖子中回复了我', '1', '2015-05-04 10:40', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('19', '3', '1', '赞了我的帖子', '1', '2015-05-04 10:44', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('20', '3', '3', '在评论中回复了我', '1', '2015-05-05 11:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('21', '3', '2', '赞了我的评论', '0', '2015-05-05 11:21', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('22', '3', '2', '赞了我的评论', '0', '2015-05-05 11:21', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('23', '3', '2', '赞了我的评论', '0', '2015-05-05 11:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('24', '2', '1', '在帖子中回复了我', '1', '2015-05-06 10:41', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('25', '2', '1', '在帖子中回复了我', '1', '2015-05-06 10:41', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('26', '2', '1', '在帖子中回复了我', '1', '2015-05-06 10:41', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('27', '7', '2', '在帖子中回复了我', '0', '2015-05-06 11:01', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('28', '7', '7', '在帖子中回复了我', '1', '2015-05-06 11:21', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('29', '7', '7', '在帖子中回复了我', '1', '2015-05-06 11:27', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('30', '7', '2', '在帖子中回复了我', '0', '2015-05-06 11:33', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('31', '7', '7', '在帖子中回复了我', '1', '2015-05-06 11:37', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('32', '7', '1', '在帖子中回复了我', '1', '2015-05-06 12:21', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('33', '7', '1', '在帖子中回复了我', '1', '2015-05-06 15:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('34', '7', '2', '在帖子中回复了我', '0', '2015-05-06 15:26', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('35', '7', '2', '在帖子中回复了我', '0', '2015-05-06 15:26', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('36', '7', '1', '在帖子中回复了我', '1', '2015-05-06 15:26', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('37', '7', '1', '在评论中回复了我', '1', '2015-05-06 15:27', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('38', '7', '1', '在评论中回复了我', '1', '2015-05-06 15:28', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('39', '7', '2', '在评论中回复了我', '0', '2015-05-06 15:35', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('40', '7', '3', '在评论中回复了我', '1', '2015-05-06 15:36', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('41', '7', '3', '在评论中回复了我', '1', '2015-05-06 15:39', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('42', '7', '3', '在评论中回复了我', '1', '2015-05-06 15:42', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('43', '7', '3', '在评论中回复了我', '1', '2015-05-06 15:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('44', '7', '3', '在评论中回复了我', '1', '2015-05-06 15:47', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('45', '7', '3', '在评论中回复了我', '1', '2015-05-06 15:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('46', '7', '1', '在评论中回复了我', '1', '2015-05-06 15:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('47', '7', '2', '在评论中回复了我', '0', '2015-05-06 16:17', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('48', '7', '1', '在评论中回复了我', '1', '2015-05-06 16:18', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('49', '7', '1', '在帖子中回复了我', '1', '2015-05-06 16:22', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('50', '7', '1', '在帖子中回复了我', '1', '2015-05-06 16:22', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('51', '7', '2', '在评论中回复了我', '0', '2015-05-06 16:22', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('52', '7', '1', '在评论中回复了我', '1', '2015-05-06 16:22', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('53', '7', '1', '评论了我的帖子', '1', '2015-05-06 17:04', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('54', '7', '1', '评论了我的帖子', '1', '2015-05-06 17:07', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('55', '7', '1', '评论了我的帖子', '1', '2015-05-06 17:08', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('56', '7', '1', '评论了我的帖子', '1', '2015-05-06 17:09', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('57', '7', '1', '评论了我的帖子', '1', '2015-05-06 17:14', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('58', '7', '1', '评论了我的帖子', '1', '2015-05-06 17:15', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('59', '7', '7', '赞了我的评论', '1', '2015-05-06 18:05', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('60', '7', '2', '赞了我的评论', '0', '2015-05-06 18:18', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('61', '7', '7', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('62', '7', '1', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('63', '7', '2', '赞了我的评论', '0', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('64', '7', '1', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('65', '7', '2', '赞了我的评论', '0', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('66', '7', '1', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('67', '7', '7', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('68', '7', '7', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('69', '7', '7', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('70', '7', '7', '赞了我的评论', '1', '2015-05-06 18:19', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('71', '7', '1', '赞了我的帖子', '1', '2015-05-06 18:43', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('72', '7', '1', '赞了我的评论', '1', '2015-05-06 18:43', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('73', '7', '1', '赞了我的评论', '1', '2015-05-06 18:43', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('74', '7', '2', '赞了我的评论', '0', '2015-05-06 18:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('75', '7', '1', '赞了我的评论', '1', '2015-05-06 18:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('76', '7', '1', '赞了我的评论', '1', '2015-05-06 18:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('77', '7', '1', '赞了我的评论', '1', '2015-05-06 18:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('78', '7', '1', '赞了我的评论', '1', '2015-05-06 18:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('79', '7', '1', '赞了我的评论', '1', '2015-05-06 18:44', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('80', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('81', '7', '7', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('82', '7', '7', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('83', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('84', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('85', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('86', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('87', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('88', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('89', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('90', '7', '1', '赞了我的评论', '1', '2015-05-06 18:45', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('91', '7', '1', '赞了我的帖子', '1', '2015-05-06 18:46', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('92', '7', '1', '赞了我的帖子', '1', '2015-05-06 18:46', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('93', '7', '1', '赞了我的帖子', '1', '2015-05-06 18:46', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('94', '7', '2', '赞了我的评论', '0', '2015-05-06 18:47', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('95', '7', '2', '赞了我的评论', '0', '2015-05-06 18:47', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('96', '7', '2', '赞了我的评论', '0', '2015-05-06 18:47', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('97', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('98', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('99', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('100', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('101', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('102', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('103', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('104', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('105', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('106', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('107', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('108', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('109', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('110', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('111', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('112', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('113', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('114', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('115', '7', '2', '赞了我的评论', '0', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('116', '7', '1', '赞了我的帖子', '1', '2015-05-06 18:48', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('117', '7', '2', '赞了我的评论', '0', '2015-05-06 18:52', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('118', '7', '2', '赞了我的评论', '0', '2015-05-06 18:52', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('119', '7', '2', '赞了我的评论', '0', '2015-05-06 18:52', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('120', '7', '2', '赞了我的评论', '0', '2015-05-06 18:52', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('121', '7', '2', '赞了我的评论', '0', '2015-05-06 18:52', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('122', '7', '2', '赞了我的评论', '0', '2015-05-06 18:52', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('123', '7', '1', '赞了我的帖子', '1', '2015-05-07 09:51', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('124', '7', '1', '赞了我的帖子', '1', '2015-05-07 09:51', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('125', '7', '2', '赞了我的评论', '0', '2015-05-07 09:53', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('126', '7', '7', '赞了我的帖子', '1', '2015-05-07 10:47', '0', '9', '0', '0');
INSERT INTO `t_mm` VALUES ('127', '7', '1', '赞了我的帖子', '1', '2015-05-07 12:09', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('128', '7', '7', '赞了我的帖子', '1', '2015-05-07 12:10', '0', '6', '0', '0');
INSERT INTO `t_mm` VALUES ('129', '7', '7', '在帖子中回复了我', '1', '2015-05-07 17:43', '0', '10', '0', '0');
INSERT INTO `t_mm` VALUES ('130', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 17:49', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('131', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 17:56', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('132', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:02', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('133', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:02', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('134', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:02', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('135', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:02', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('136', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:03', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('137', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:03', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('138', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:03', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('139', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:15', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('140', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:15', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('141', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:19', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('142', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:19', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('143', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:20', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('144', '7', '7', '在小圈子中回复了我', '1', '2015-05-07 18:20', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('145', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:44', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('146', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:52', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('147', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:52', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('148', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:53', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('149', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:53', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('150', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:53', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('151', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:53', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('152', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 18:53', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('153', '7', '2', '在小圈子中赞了我', '0', '2015-05-07 18:56', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('154', '7', '2', '在小圈子中赞了我', '0', '2015-05-07 18:56', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('155', '7', '2', '在小圈子中赞了我', '0', '2015-05-07 18:56', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('156', '7', '7', '在小圈子中赞了我', '1', '2015-05-07 19:01', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('157', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:27', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('158', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:29', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('159', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:29', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('160', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('161', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('162', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('163', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('164', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('165', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('166', '7', '7', '在小圈子中赞了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('167', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('168', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:31', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('169', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:38', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('170', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:38', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('171', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:38', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('172', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:38', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('173', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:39', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('174', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:39', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('175', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:39', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('176', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:39', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('177', '7', '7', '在小圈子中duang了我', '1', '2015-05-08 10:39', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('178', '7', '7', '在小圈子中赞了我', '1', '2015-05-08 10:54', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('179', '7', '7', '在小圈子中赞了我', '1', '2015-05-08 10:54', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('180', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:54', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('181', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:54', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('182', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:54', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('183', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:54', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('184', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:54', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('185', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:54', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('186', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:55', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('187', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:55', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('188', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:55', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('189', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:55', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('190', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:55', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('191', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 10:55', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('192', '7', '7', '在小圈子中赞了我', '1', '2015-05-08 11:11', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('193', '7', '7', '在小圈子中赞了我', '1', '2015-05-08 11:12', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('194', '7', '7', '在小圈子中赞了我', '1', '2015-05-08 11:12', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('195', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('196', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('197', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('198', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('199', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('200', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('201', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('202', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('203', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('204', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('205', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('206', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('207', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('208', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:19', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('209', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 11:20', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('210', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('211', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('212', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('213', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('214', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('215', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('216', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('217', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('218', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('219', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('220', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('221', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('222', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('223', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('224', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('225', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('226', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:28', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('227', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 11:56', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('228', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('229', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('230', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('231', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('232', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('233', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('234', '7', '2', '在小圈子中duang了我', '0', '2015-05-08 12:18', '1', '0', '5', '0');
INSERT INTO `t_mm` VALUES ('235', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:22', '1', '0', '4', '0');
INSERT INTO `t_mm` VALUES ('236', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:22', '1', '0', '3', '0');
INSERT INTO `t_mm` VALUES ('237', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:22', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('238', '7', '2', '在小圈子中赞了我', '0', '2015-05-08 12:22', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('239', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('240', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('241', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('242', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('243', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('244', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('245', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('246', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('247', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('248', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('249', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('250', '3', '2', '赞了我的评论', '0', '2015-05-08 12:23', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('251', '3', '2', '赞了我的评论', '0', '2015-05-08 12:24', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('252', '3', '2', '赞了我的评论', '0', '2015-05-08 12:24', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('253', '3', '2', '赞了我的评论', '0', '2015-05-08 12:24', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('254', '3', '2', '赞了我的评论', '0', '2015-05-08 12:24', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('255', '3', '3', '私信了我', '1', '2015-05-08 14:42', '2', '0', '0', '5');
INSERT INTO `t_mm` VALUES ('256', '3', '3', '私信了我', '1', '2015-05-08 14:42', '2', '0', '0', '6');
INSERT INTO `t_mm` VALUES ('257', '3', '3', '私信了我', '1', '2015-05-08 14:42', '2', '0', '0', '7');
INSERT INTO `t_mm` VALUES ('258', '3', '3', '私信了我', '1', '2015-05-08 14:42', '2', '0', '0', '8');
INSERT INTO `t_mm` VALUES ('259', '3', '3', '私信了我', '1', '2015-05-08 14:42', '2', '0', '0', '9');
INSERT INTO `t_mm` VALUES ('260', '7', '7', '赞了我的帖子', '1', '2015-05-08 15:30', '0', '8', '0', '0');
INSERT INTO `t_mm` VALUES ('261', '7', '7', '在帖子中回复了我', '1', '2015-05-08 16:05', '0', '9', '0', '0');
INSERT INTO `t_mm` VALUES ('262', '7', '7', '评论了我的帖子', '1', '2015-05-08 16:05', '0', '9', '0', '0');
INSERT INTO `t_mm` VALUES ('263', '7', '2', '在评论中回复了我', '0', '2015-05-08 16:06', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('264', '7', '2', '赞了我的评论', '0', '2015-05-08 16:06', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('265', '7', '2', '赞了我的评论', '0', '2015-05-08 16:06', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('266', '7', '1', '评论了我的帖子', '1', '2015-05-08 16:06', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('267', '7', '7', '在私信中回复了我', '1', '2015-05-10 17:51', '2', '0', '0', '1');
INSERT INTO `t_mm` VALUES ('268', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '10');
INSERT INTO `t_mm` VALUES ('269', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '11');
INSERT INTO `t_mm` VALUES ('270', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '12');
INSERT INTO `t_mm` VALUES ('271', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '13');
INSERT INTO `t_mm` VALUES ('272', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '14');
INSERT INTO `t_mm` VALUES ('273', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '15');
INSERT INTO `t_mm` VALUES ('274', '7', '7', '私信了我', '1', '2015-05-10 17:55', '2', '0', '0', '16');
INSERT INTO `t_mm` VALUES ('275', '1', '7', '私信了我', '1', '2015-05-10 17:59', '2', '0', '0', '17');
INSERT INTO `t_mm` VALUES ('276', '7', '1', '在帖子中回复了我', '1', '2015-05-10 19:49', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('277', '1', '7', '私信了我', '1', '2015-05-10 19:50', '2', '0', '0', '18');
INSERT INTO `t_mm` VALUES ('278', '7', '7', '私信了我', '1', '2015-05-11 09:47', '2', '0', '0', '19');
INSERT INTO `t_mm` VALUES ('279', '7', '7', '私信了我', '1', '2015-05-11 09:50', '2', '0', '0', '20');
INSERT INTO `t_mm` VALUES ('280', '7', '7', '私信了我', '1', '2015-05-11 09:50', '2', '0', '0', '21');
INSERT INTO `t_mm` VALUES ('281', '7', '7', '私信了我', '1', '2015-05-11 09:51', '2', '0', '0', '22');
INSERT INTO `t_mm` VALUES ('282', '7', '7', '私信了我', '1', '2015-05-11 09:51', '2', '0', '0', '23');
INSERT INTO `t_mm` VALUES ('283', '7', '7', '私信了我', '1', '2015-05-11 09:52', '2', '0', '0', '24');
INSERT INTO `t_mm` VALUES ('284', '7', '7', '私信了我', '1', '2015-05-11 09:54', '2', '0', '0', '25');
INSERT INTO `t_mm` VALUES ('285', '7', '7', '私信了我', '1', '2015-05-11 09:59', '2', '0', '0', '26');
INSERT INTO `t_mm` VALUES ('286', '7', '7', '私信了我', '1', '2015-05-11 10:01', '2', '0', '0', '27');
INSERT INTO `t_mm` VALUES ('287', '7', '7', '私信了我', '1', '2015-05-11 10:01', '2', '0', '0', '28');
INSERT INTO `t_mm` VALUES ('288', '7', '7', '私信了我', '1', '2015-05-11 10:01', '2', '0', '0', '29');
INSERT INTO `t_mm` VALUES ('289', '7', '7', '私信了我', '1', '2015-05-11 10:02', '2', '0', '0', '30');
INSERT INTO `t_mm` VALUES ('290', '7', '7', '私信了我', '1', '2015-05-11 10:03', '2', '0', '0', '31');
INSERT INTO `t_mm` VALUES ('291', '7', '7', '私信了我', '1', '2015-05-11 10:05', '2', '0', '0', '32');
INSERT INTO `t_mm` VALUES ('292', '7', '7', '私信了我', '1', '2015-05-11 10:07', '2', '0', '0', '33');
INSERT INTO `t_mm` VALUES ('293', '7', '7', '私信了我', '1', '2015-05-11 10:07', '2', '0', '0', '34');
INSERT INTO `t_mm` VALUES ('294', '7', '7', '私信了我', '1', '2015-05-11 10:07', '2', '0', '0', '35');
INSERT INTO `t_mm` VALUES ('295', '7', '7', '私信了我', '1', '2015-05-11 10:07', '2', '0', '0', '36');
INSERT INTO `t_mm` VALUES ('296', '7', '2', '私信了我', '0', '2015-05-11 10:19', '2', '0', '0', '37');
INSERT INTO `t_mm` VALUES ('297', '7', '7', '私信了我', '1', '2015-05-11 10:22', '2', '0', '0', '38');
INSERT INTO `t_mm` VALUES ('298', '7', '7', '在私信中回复了我', '1', '2015-05-11 10:45', '2', '0', '0', '33');
INSERT INTO `t_mm` VALUES ('299', '7', '7', '在私信中回复了我', '1', '2015-05-11 10:45', '2', '0', '0', '33');
INSERT INTO `t_mm` VALUES ('300', '7', '7', '在私信中回复了我', '1', '2015-05-11 10:48', '2', '0', '0', '33');
INSERT INTO `t_mm` VALUES ('301', '7', '7', '在私信中回复了我', '1', '2015-05-11 10:50', '2', '0', '0', '18');
INSERT INTO `t_mm` VALUES ('302', '7', '7', '在私信中回复了我', '1', '2015-05-11 10:50', '2', '0', '0', '17');
INSERT INTO `t_mm` VALUES ('303', '7', '2', '私信了我', '0', '2015-05-11 11:09', '2', '0', '0', '39');
INSERT INTO `t_mm` VALUES ('304', '7', '7', '赞了我的帖子', '1', '2015-05-11 11:50', '0', '9', '0', '0');
INSERT INTO `t_mm` VALUES ('305', '7', '7', '在帖子中回复了我', '1', '2015-05-11 12:03', '0', '11', '0', '0');
INSERT INTO `t_mm` VALUES ('306', '7', '7', '评论了我的帖子', '1', '2015-05-11 12:04', '0', '11', '0', '0');
INSERT INTO `t_mm` VALUES ('307', '7', '7', '在评论中回复了我', '1', '2015-05-11 12:04', '0', '11', '0', '0');
INSERT INTO `t_mm` VALUES ('308', '7', '3', '在帖子中回复了我', '1', '2015-05-11 12:05', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('309', '3', '1', '赞了我的帖子', '1', '2015-05-11 12:15', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('310', '7', '2', '在小圈子中赞了我', '0', '2015-05-11 12:26', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('311', '7', '2', '在小圈子中duang了我', '0', '2015-05-11 12:26', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('312', '7', '2', '在小圈子中赞了我', '0', '2015-05-11 12:26', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('313', '7', '2', '在小圈子中赞了我', '0', '2015-05-11 12:26', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('314', '7', '2', '在小圈子中回复了我', '0', '2015-05-11 12:26', '1', '0', '2', '0');
INSERT INTO `t_mm` VALUES ('315', '10', '7', '赞了我的帖子', '1', '2015-05-11 15:12', '0', '6', '0', '0');
INSERT INTO `t_mm` VALUES ('316', '15', '1', '赞了我的帖子', '1', '2015-05-11 15:13', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('317', '15', '2', '赞了我的评论', '0', '2015-05-11 15:13', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('318', '15', '15', '在小圈子中回复了我', '1', '2015-05-11 15:14', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('319', '15', '15', '在小圈子中回复了我', '1', '2015-05-11 15:17', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('320', '15', '15', '在小圈子中回复了我', '1', '2015-05-11 15:20', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('321', '15', '15', '在小圈子中回复了我', '1', '2015-05-11 15:21', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('322', '15', '7', '私信了我', '1', '2015-05-11 15:23', '2', '0', '0', '40');
INSERT INTO `t_mm` VALUES ('323', '15', '15', '在帖子中回复了我', '1', '2015-05-11 15:29', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('324', '3', '2', '赞了我的帖子', '1', '2015-05-11 15:32', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('325', '15', '15', '评论了我的帖子', '0', '2015-05-11 15:33', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('326', '3', '2', '赞了我的帖子', '1', '2015-05-11 15:36', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('327', '15', '7', '赞了我的帖子', '1', '2015-05-11 15:36', '0', '11', '0', '0');
INSERT INTO `t_mm` VALUES ('328', '15', '1', '赞了我的帖子', '1', '2015-05-11 15:36', '0', '3', '0', '0');
INSERT INTO `t_mm` VALUES ('329', '15', '7', '在小圈子中赞了我', '1', '2015-05-11 15:37', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('330', '15', '2', '在小圈子中赞了我', '1', '2015-05-11 15:37', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('331', '15', '2', '在小圈子中赞了我', '1', '2015-05-11 15:38', '1', '0', '4', '0');
INSERT INTO `t_mm` VALUES ('332', '15', '7', '在小圈子中赞了我', '1', '2015-05-11 15:38', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('333', '15', '2', '在小圈子中赞了我', '1', '2015-05-11 15:38', '1', '0', '8', '0');
INSERT INTO `t_mm` VALUES ('334', '15', '2', '在小圈子中赞了我', '1', '2015-05-11 15:38', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('335', '15', '7', '赞了我的帖子', '1', '2015-05-11 15:39', '0', '11', '0', '0');
INSERT INTO `t_mm` VALUES ('336', '15', '7', '赞了我的帖子', '1', '2015-05-11 15:39', '0', '10', '0', '0');
INSERT INTO `t_mm` VALUES ('337', '15', '2', '赞了我的评论', '1', '2015-05-11 15:40', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('338', '7', '15', '私信了我', '0', '2015-05-11 15:58', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('339', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 15:58', '1', '0', '11', '0');
INSERT INTO `t_mm` VALUES ('340', '7', '15', '在小圈子中回复了我', '0', '2015-05-11 15:59', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('341', '7', '7', '赞了我的帖子', '1', '2015-05-11 16:00', '0', '11', '0', '0');
INSERT INTO `t_mm` VALUES ('342', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:00', '1', '0', '11', '0');
INSERT INTO `t_mm` VALUES ('343', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:03', '1', '0', '11', '0');
INSERT INTO `t_mm` VALUES ('344', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:03', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('345', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:04', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('346', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:04', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('347', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:12', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('348', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:12', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('349', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:12', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('350', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:12', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('351', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:12', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('352', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:12', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('353', '7', '15', '在小圈子中回复了我', '0', '2015-05-11 16:12', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('354', '7', '15', '在小圈子中回复了我', '0', '2015-05-11 16:12', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('355', '7', '7', '在私信中回复了我', '1', '2015-05-11 16:13', '2', '0', '0', '40');
INSERT INTO `t_mm` VALUES ('356', '7', '2', '赞了我的评论', '1', '2015-05-11 16:14', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('357', '7', '2', '赞了我的评论', '1', '2015-05-11 16:14', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('358', '7', '2', '赞了我的评论', '1', '2015-05-11 16:14', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('359', '7', '2', '赞了我的评论', '1', '2015-05-11 16:16', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('360', '7', '1', '在评论中回复了我', '1', '2015-05-11 16:16', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('361', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:20', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('362', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:20', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('363', '7', '15', '在评论中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('364', '7', '15', '在评论中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('365', '7', '15', '在帖子中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('366', '7', '15', '在帖子中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('367', '7', '15', '在帖子中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('368', '7', '15', '在帖子中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('369', '7', '15', '在评论中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('370', '7', '15', '在帖子中回复了我', '0', '2015-05-11 16:21', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('371', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:25', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('372', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:26', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('373', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:28', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('374', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:28', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('375', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:28', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('376', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:28', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('377', '7', '15', '在私信中回复了我', '0', '2015-05-11 16:29', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('378', '7', '2', '在小圈子中duang了我', '1', '2015-05-11 16:43', '1', '0', '4', '0');
INSERT INTO `t_mm` VALUES ('379', '7', '2', '在小圈子中duang了我', '1', '2015-05-11 16:43', '1', '0', '3', '0');
INSERT INTO `t_mm` VALUES ('380', '7', '2', '在小圈子中赞了我', '1', '2015-05-11 16:43', '1', '0', '3', '0');
INSERT INTO `t_mm` VALUES ('381', '7', '2', '在小圈子中赞了我', '1', '2015-05-11 16:43', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('382', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:44', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('383', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:44', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('384', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 16:44', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('385', '7', '7', '赞了我的评论', '1', '2015-05-11 17:56', '0', '9', '0', '0');
INSERT INTO `t_mm` VALUES ('386', '7', '7', '赞了我的帖子', '1', '2015-05-11 17:56', '0', '9', '0', '0');
INSERT INTO `t_mm` VALUES ('387', '7', '7', '在小圈子中duang了我', '1', '2015-05-11 17:56', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('388', '7', '7', '在小圈子中回复了我', '1', '2015-05-11 17:57', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('389', '7', '1', '评论了我的帖子', '1', '2015-05-11 17:59', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('390', '7', '7', '赞了我的评论', '1', '2015-05-11 17:59', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('391', '7', '7', '在评论中回复了我', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('392', '7', '7', '在评论中回复了我', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('393', '7', '7', '在评论中回复了我', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('394', '7', '7', '在评论中回复了我', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('395', '7', '7', '在评论中回复了我', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('396', '7', '7', '赞了我的评论', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('397', '7', '7', '赞了我的评论', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('398', '7', '7', '赞了我的评论', '1', '2015-05-11 18:00', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('399', '7', '2', '赞了我的评论', '1', '2015-05-11 18:01', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('400', '7', '2', '赞了我的帖子', '1', '2015-05-11 18:01', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('401', '1', '7', '在私信中回复了我', '1', '2015-05-11 18:38', '2', '0', '0', '17');
INSERT INTO `t_mm` VALUES ('402', '7', '15', '在小圈子中duang了我', '0', '2015-05-11 19:14', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('403', '1', '2', '在评论中回复了我', '1', '2015-05-11 22:29', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('404', '1', '2', '在评论中回复了我', '1', '2015-05-11 22:29', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('405', '1', '1', '赞了我的评论', '1', '2015-05-11 22:29', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('406', '1', '1', '赞了我的评论', '1', '2015-05-11 22:30', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('407', '1', '1', '赞了我的评论', '1', '2015-05-11 22:30', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('408', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('409', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('410', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('411', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('412', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('413', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('414', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('415', '1', '7', '在评论中回复了我', '1', '2015-05-11 22:32', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('416', '1', '15', '赞了我的评论', '0', '2015-05-11 22:32', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('417', '1', '15', '评论了我的帖子', '0', '2015-05-11 22:33', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('418', '1', '1', '赞了我的评论', '1', '2015-05-11 22:33', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('419', '1', '1', '赞了我的评论', '1', '2015-05-11 22:33', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('420', '1', '2', '评论了我的帖子', '1', '2015-05-11 22:43', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('421', '1', '1', '在评论中回复了我', '1', '2015-05-11 22:44', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('422', '1', '1', '在评论中回复了我', '1', '2015-05-11 22:44', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('423', '1', '1', '在私信中回复了我', '1', '2015-05-12 10:15', '2', '0', '0', '2');
INSERT INTO `t_mm` VALUES ('424', '1', '7', '在小圈子中duang了我', '1', '2015-05-12 10:15', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('425', '1', '7', '在小圈子中赞了我', '1', '2015-05-12 10:15', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('426', '7', '2', '私信了我', '1', '2015-05-12 10:28', '2', '0', '0', '42');
INSERT INTO `t_mm` VALUES ('427', '7', '1', '赞了我的评论', '1', '2015-05-12 10:28', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('428', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 10:32', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('429', '7', '7', '在小圈子中赞了我', '1', '2015-05-12 10:34', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('430', '7', '1', '赞了我的帖子', '1', '2015-05-12 10:34', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('431', '7', '1', '在帖子中回复了我', '1', '2015-05-12 10:34', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('432', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 10:55', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('433', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 10:55', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('434', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 10:56', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('435', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 10:56', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('436', '7', '1', '赞了我的帖子', '1', '2015-05-12 11:13', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('437', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 11:13', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('438', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 11:14', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('439', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 11:14', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('440', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 11:14', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('441', '7', '7', '在小圈子中赞了我', '1', '2015-05-12 11:14', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('442', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 11:36', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('443', '7', '7', '在小圈子中赞了我', '1', '2015-05-12 11:36', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('444', '7', '7', '在小圈子中赞了我', '1', '2015-05-12 11:38', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('445', '7', '1', '赞了我的评论', '1', '2015-05-12 11:49', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('446', '7', '1', '赞了我的评论', '1', '2015-05-12 11:49', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('447', '7', '7', '赞了我的评论', '1', '2015-05-12 11:51', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('448', '7', '7', '赞了我的评论', '1', '2015-05-12 11:51', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('449', '7', '7', '赞了我的评论', '1', '2015-05-12 11:51', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('450', '7', '2', '赞了我的评论', '1', '2015-05-12 11:53', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('451', '7', '2', '赞了我的评论', '1', '2015-05-12 11:54', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('452', '7', '1', '赞了我的评论', '1', '2015-05-12 11:55', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('453', '7', '1', '赞了我的帖子', '1', '2015-05-12 12:02', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('454', '7', '1', '赞了我的帖子', '1', '2015-05-12 12:02', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('455', '7', '1', '赞了我的帖子', '1', '2015-05-12 12:02', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('456', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 14:42', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('457', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 14:43', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('458', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 14:44', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('459', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 14:53', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('460', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 14:53', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('461', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:02', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('462', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:04', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('463', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:04', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('464', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:06', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('465', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:08', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('466', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:09', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('467', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:10', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('468', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:11', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('469', '7', '15', '在小圈子中回复了我', '0', '2015-05-12 15:12', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('470', '7', '15', '在小圈子中回复了我', '0', '2015-05-12 15:12', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('471', '7', '15', '在小圈子中回复了我', '0', '2015-05-12 15:12', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('472', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:12', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('473', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:32', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('474', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:32', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('475', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:32', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('476', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:33', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('477', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:33', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('478', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:34', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('479', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:36', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('480', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:36', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('481', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:36', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('482', '7', '2', '在小圈子中回复了我', '1', '2015-05-12 15:38', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('483', '7', '2', '在小圈子中回复了我', '1', '2015-05-12 15:38', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('484', '7', '2', '在小圈子中回复了我', '1', '2015-05-12 15:42', '1', '0', '6', '0');
INSERT INTO `t_mm` VALUES ('485', '7', '2', '在小圈子中回复了我', '1', '2015-05-12 15:43', '1', '0', '3', '0');
INSERT INTO `t_mm` VALUES ('486', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:46', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('487', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:47', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('488', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:47', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('489', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 15:49', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('490', '7', '2', '在小圈子中duang了我', '1', '2015-05-12 16:19', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('491', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 16:22', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('492', '7', '1', '赞了我的帖子', '1', '2015-05-12 16:23', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('493', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 16:23', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('494', '7', '7', '在小圈子中赞了我', '1', '2015-05-12 16:23', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('495', '7', '15', '赞了我的帖子', '0', '2015-05-12 16:23', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('496', '7', '15', '赞了我的评论', '0', '2015-05-12 16:23', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('497', '7', '1', '赞了我的评论', '1', '2015-05-12 16:23', '0', '12', '0', '0');
INSERT INTO `t_mm` VALUES ('498', '7', '1', '在帖子中回复了我', '1', '2015-05-12 16:36', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('499', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 16:36', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('500', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 16:36', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('501', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 16:36', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('502', '7', '2', '在小圈子中回复了我', '1', '2015-05-12 16:37', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('503', '7', '2', '在小圈子中回复了我', '1', '2015-05-12 16:37', '1', '0', '7', '0');
INSERT INTO `t_mm` VALUES ('504', '7', '15', '在私信中回复了我', '0', '2015-05-12 16:43', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('505', '7', '15', '在私信中回复了我', '0', '2015-05-12 16:43', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('506', '7', '15', '在私信中回复了我', '0', '2015-05-12 16:43', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('507', '7', '7', '在小圈子中赞了我', '1', '2015-05-12 17:57', '1', '0', '11', '0');
INSERT INTO `t_mm` VALUES ('508', '7', '7', '在小圈子中duang了我', '1', '2015-05-12 17:58', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('509', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 18:02', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('510', '7', '1', '在帖子中回复了我', '1', '2015-05-12 18:03', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('511', '7', '1', '在帖子中回复了我', '1', '2015-05-12 18:03', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('512', '7', '7', '在小圈子中回复了我', '1', '2015-05-12 18:06', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('513', '22', '1', '赞了我的帖子', '1', '2015-05-12 18:51', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('514', '22', '1', '在帖子中回复了我', '1', '2015-05-12 18:51', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('515', '22', '7', '在小圈子中回复了我', '1', '2015-05-12 18:52', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('516', '22', '7', '在小圈子中回复了我', '1', '2015-05-12 18:52', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('517', '22', '7', '在小圈子中duang了我', '1', '2015-05-12 18:52', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('518', '22', '7', '在小圈子中赞了我', '1', '2015-05-12 18:53', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('519', '22', '1', '赞了我的帖子', '1', '2015-05-12 21:09', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('520', '22', '1', '在帖子中回复了我', '1', '2015-05-12 21:09', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('521', '22', '22', '在小圈子中赞了我', '1', '2015-05-13 10:40', '1', '0', '15', '0');
INSERT INTO `t_mm` VALUES ('522', '1', '22', '在小圈子中回复了我', '0', '2015-05-13 11:39', '1', '0', '15', '0');
INSERT INTO `t_mm` VALUES ('523', '1', '7', '在小圈子中回复了我', '1', '2015-05-13 11:40', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('524', '3', '1', '在帖子中回复了我', '1', '2015-05-13 11:43', '0', '1', '0', '0');
INSERT INTO `t_mm` VALUES ('525', '3', '7', '在小圈子中赞了我', '1', '2015-05-13 11:44', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('526', '3', '7', '在小圈子中duang了我', '1', '2015-05-13 11:44', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('527', '3', '7', '在小圈子中duang了我', '1', '2015-05-13 11:44', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('528', '1', '1', '赞了我的帖子', '1', '2015-05-13 11:59', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('529', '1', '22', '在小圈子中duang了我', '0', '2015-05-13 12:56', '1', '0', '15', '0');
INSERT INTO `t_mm` VALUES ('530', '1', '22', '在小圈子中赞了我', '0', '2015-05-13 12:56', '1', '0', '15', '0');
INSERT INTO `t_mm` VALUES ('531', '1', '7', '在小圈子中duang了我', '1', '2015-05-13 12:56', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('532', '1', '7', '在小圈子中duang了我', '1', '2015-05-13 12:56', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('533', '1', '7', '在小圈子中duang了我', '1', '2015-05-13 12:56', '1', '0', '11', '0');
INSERT INTO `t_mm` VALUES ('534', '1', '7', '在小圈子中duang了我', '1', '2015-05-13 12:56', '1', '0', '11', '0');
INSERT INTO `t_mm` VALUES ('535', '1', '7', '在小圈子中duang了我', '1', '2015-05-13 12:56', '1', '0', '10', '0');
INSERT INTO `t_mm` VALUES ('536', '23', '1', '在帖子中回复了我', '1', '2015-05-13 14:17', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('537', '23', '1', '在小圈子中回复了我', '1', '2015-05-13 14:17', '1', '0', '15', '0');
INSERT INTO `t_mm` VALUES ('538', '23', '7', '在小圈子中duang了我', '1', '2015-05-13 14:17', '1', '0', '14', '0');
INSERT INTO `t_mm` VALUES ('539', '23', '7', '在小圈子中duang了我', '1', '2015-05-13 14:17', '1', '0', '13', '0');
INSERT INTO `t_mm` VALUES ('540', '23', '15', '在小圈子中duang了我', '0', '2015-05-13 14:17', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('541', '23', '15', '在小圈子中赞了我', '0', '2015-05-13 14:17', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('542', '23', '7', '在小圈子中回复了我', '1', '2015-05-13 14:17', '1', '0', '9', '0');
INSERT INTO `t_mm` VALUES ('543', '23', '22', '评论了我的帖子', '0', '2015-05-13 14:20', '0', '16', '0', '0');
INSERT INTO `t_mm` VALUES ('544', '23', '23', '在评论中回复了我', '1', '2015-05-13 14:20', '0', '16', '0', '0');
INSERT INTO `t_mm` VALUES ('545', '23', '1', '赞了我的评论', '1', '2015-05-13 14:21', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('546', '23', '2', '赞了我的帖子', '0', '2015-05-13 14:21', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('547', '23', '2', '在帖子中回复了我', '0', '2015-05-13 14:21', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('548', '23', '22', '私信了我', '0', '2015-05-13 14:24', '2', '0', '0', '43');
INSERT INTO `t_mm` VALUES ('549', '23', '22', '私信了我', '0', '2015-05-13 14:24', '2', '0', '0', '44');
INSERT INTO `t_mm` VALUES ('550', '1', '2', '赞了我的帖子', '0', '2015-05-13 14:25', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('551', '23', '22', '私信了我', '0', '2015-05-13 14:25', '2', '0', '0', '45');
INSERT INTO `t_mm` VALUES ('552', '1', '23', '赞了我的评论', '1', '2015-05-13 14:25', '0', '16', '0', '0');
INSERT INTO `t_mm` VALUES ('553', '1', '23', '在评论中回复了我', '1', '2015-05-13 14:25', '0', '16', '0', '0');
INSERT INTO `t_mm` VALUES ('554', '23', '23', '赞了我的评论', '1', '2015-05-13 14:25', '0', '16', '0', '0');
INSERT INTO `t_mm` VALUES ('555', '23', '23', '在评论中回复了我', '1', '2015-05-13 14:25', '0', '16', '0', '0');
INSERT INTO `t_mm` VALUES ('556', '23', '23', '在小圈子中duang了我', '1', '2015-05-13 14:26', '1', '0', '16', '0');
INSERT INTO `t_mm` VALUES ('557', '23', '23', '在小圈子中赞了我', '1', '2015-05-13 14:26', '1', '0', '16', '0');
INSERT INTO `t_mm` VALUES ('558', '23', '23', '在小圈子中回复了我', '1', '2015-05-13 14:26', '1', '0', '16', '0');
INSERT INTO `t_mm` VALUES ('559', '1', '1', '在评论中回复了我', '1', '2015-05-13 14:27', '0', '4', '0', '0');
INSERT INTO `t_mm` VALUES ('560', '23', '22', '在小圈子中duang了我', '0', '2015-05-13 14:27', '1', '0', '15', '0');
INSERT INTO `t_mm` VALUES ('561', '23', '2', '在小圈子中duang了我', '0', '2015-05-13 14:29', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('562', '23', '2', '在小圈子中赞了我', '0', '2015-05-13 14:29', '1', '0', '1', '0');
INSERT INTO `t_mm` VALUES ('563', '23', '22', '在私信中回复了我', '0', '2015-05-13 14:29', '2', '0', '0', '43');
INSERT INTO `t_mm` VALUES ('564', '23', '22', '在私信中回复了我', '0', '2015-05-13 14:29', '2', '0', '0', '45');
INSERT INTO `t_mm` VALUES ('565', '23', '23', '在小圈子中回复了我', '1', '2015-05-13 14:30', '1', '0', '16', '0');
INSERT INTO `t_mm` VALUES ('566', '1', '1', '在私信中回复了我', '1', '2015-05-13 14:46', '2', '0', '0', '2');
INSERT INTO `t_mm` VALUES ('567', '1', '1', '在私信中回复了我', '1', '2015-05-13 14:46', '2', '0', '0', '2');
INSERT INTO `t_mm` VALUES ('568', '1', '2', '在私信中回复了我', '0', '2015-05-13 14:46', '2', '0', '0', '1');
INSERT INTO `t_mm` VALUES ('569', '1', '2', '在私信中回复了我', '0', '2015-05-13 14:47', '2', '0', '0', '4');
INSERT INTO `t_mm` VALUES ('570', '1', '1', '在私信中回复了我', '1', '2015-05-13 14:47', '2', '0', '0', '2');
INSERT INTO `t_mm` VALUES ('571', '24', '1', '在帖子中回复了我', '1', '2015-05-13 14:56', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('572', '24', '1', '赞了我的帖子', '1', '2015-05-13 14:56', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('573', '1', '1', '赞了我的帖子', '1', '2015-05-13 14:56', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('574', '1', '1', '赞了我的帖子', '1', '2015-05-13 14:56', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('575', '24', '1', '私信了我', '1', '2015-05-13 14:57', '2', '0', '0', '46');
INSERT INTO `t_mm` VALUES ('576', '1', '1', '在私信中回复了我', '1', '2015-05-13 14:58', '2', '0', '0', '46');
INSERT INTO `t_mm` VALUES ('577', '1', '1', '在私信中回复了我', '1', '2015-05-13 14:58', '2', '0', '0', '46');
INSERT INTO `t_mm` VALUES ('578', '3', '3', '私信了我', '1', '2015-05-13 17:30', '2', '0', '0', '47');
INSERT INTO `t_mm` VALUES ('579', '2', '1', '在私信中回复了我', '1', '2015-05-13 18:07', '2', '0', '0', '3');
INSERT INTO `t_mm` VALUES ('580', '1', '2', '在私信中回复了我', '0', '2015-05-13 18:07', '2', '0', '0', '4');
INSERT INTO `t_mm` VALUES ('581', '1', '2', '在私信中回复了我', '0', '2015-05-13 18:07', '2', '0', '0', '4');
INSERT INTO `t_mm` VALUES ('582', '7', '1', '在帖子中回复了我', '1', '2015-05-13 18:34', '0', '15', '0', '0');
INSERT INTO `t_mm` VALUES ('583', '7', '15', '在私信中回复了我', '0', '2015-05-13 18:36', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('584', '7', '15', '在私信中回复了我', '0', '2015-05-13 18:36', '2', '0', '0', '41');
INSERT INTO `t_mm` VALUES ('585', '25', '7', '赞了我的帖子', '1', '2015-05-14 07:25', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('586', '7', '7', '在私信中回复了我', '1', '2015-05-14 11:04', '2', '0', '0', '26');
INSERT INTO `t_mm` VALUES ('587', '26', '7', '赞了我的帖子', '1', '2015-05-14 12:00', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('588', '26', '7', '赞了我的帖子', '1', '2015-05-14 12:00', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('589', '26', '7', '赞了我的帖子', '1', '2015-05-14 12:00', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('590', '26', '7', '在帖子中回复了我', '1', '2015-05-14 12:00', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('591', '26', '7', '私信了我', '1', '2015-05-14 12:00', '2', '0', '0', '48');
INSERT INTO `t_mm` VALUES ('592', '27', '1', '在帖子中回复了我', '1', '2015-05-14 12:09', '0', '17', '0', '0');
INSERT INTO `t_mm` VALUES ('593', '27', '7', '在帖子中回复了我', '1', '2015-05-14 12:11', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('594', '27', '7', '在帖子中回复了我', '1', '2015-05-14 12:11', '0', '20', '0', '0');
INSERT INTO `t_mm` VALUES ('595', '26', '3', '评论了我的帖子', '1', '2015-05-14 12:51', '0', '19', '0', '0');
INSERT INTO `t_mm` VALUES ('596', '26', '3', '评论了我的帖子', '1', '2015-05-14 12:51', '0', '19', '0', '0');
INSERT INTO `t_mm` VALUES ('597', '26', '3', '赞了我的帖子', '1', '2015-05-14 12:51', '0', '19', '0', '0');
INSERT INTO `t_mm` VALUES ('598', '30', '26', '赞了我的帖子', '1', '2015-05-14 13:02', '0', '21', '0', '0');
INSERT INTO `t_mm` VALUES ('599', '30', '26', '评论了我的帖子', '1', '2015-05-14 13:02', '0', '21', '0', '0');
INSERT INTO `t_mm` VALUES ('600', '30', '26', '私信了我', '1', '2015-05-14 13:08', '2', '0', '0', '49');
INSERT INTO `t_mm` VALUES ('601', '26', '30', '在私信中回复了我', '1', '2015-05-14 13:11', '2', '0', '0', '49');
INSERT INTO `t_mm` VALUES ('602', '26', '30', '私信了我', '1', '2015-05-14 13:12', '2', '0', '0', '50');
INSERT INTO `t_mm` VALUES ('603', '33', '28', '在小圈子中赞了我', '0', '2015-05-14 14:25', '1', '0', '26', '0');
INSERT INTO `t_mm` VALUES ('604', '33', '28', '在小圈子中duang了我', '0', '2015-05-14 14:25', '1', '0', '26', '0');
INSERT INTO `t_mm` VALUES ('605', '33', '28', '在小圈子中回复了我', '0', '2015-05-14 14:25', '1', '0', '26', '0');
INSERT INTO `t_mm` VALUES ('606', '1', '7', '在小圈子中duang了我', '1', '2015-05-14 14:33', '1', '0', '20', '0');
INSERT INTO `t_mm` VALUES ('607', '30', '33', '赞了我的帖子', '0', '2015-05-14 14:59', '0', '26', '0', '0');
INSERT INTO `t_mm` VALUES ('608', '30', '33', '在帖子中回复了我', '0', '2015-05-14 14:59', '0', '26', '0', '0');
INSERT INTO `t_mm` VALUES ('609', '30', '33', '评论了我的帖子', '0', '2015-05-14 15:00', '0', '26', '0', '0');
INSERT INTO `t_mm` VALUES ('610', '32', '30', '在小圈子中duang了我', '1', '2015-05-14 15:24', '1', '0', '25', '0');
INSERT INTO `t_mm` VALUES ('611', '32', '26', '在小圈子中duang了我', '0', '2015-05-14 15:24', '1', '0', '24', '0');
INSERT INTO `t_mm` VALUES ('612', '30', '35', '在帖子中回复了我', '1', '2015-05-14 19:27', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('613', '30', '35', '评论了我的帖子', '1', '2015-05-14 19:27', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('614', '35', '30', '在小圈子中回复了我', '1', '2015-05-14 19:28', '1', '0', '25', '0');
INSERT INTO `t_mm` VALUES ('615', '30', '32', '评论了我的帖子', '1', '2015-05-14 19:28', '0', '25', '0', '0');
INSERT INTO `t_mm` VALUES ('616', '30', '35', '在小圈子中回复了我', '1', '2015-05-14 19:29', '1', '0', '25', '0');
INSERT INTO `t_mm` VALUES ('617', '30', '35', '在小圈子中赞了我', '1', '2015-05-14 19:29', '1', '0', '32', '0');
INSERT INTO `t_mm` VALUES ('618', '30', '35', '在小圈子中duang了我', '1', '2015-05-14 19:29', '1', '0', '32', '0');
INSERT INTO `t_mm` VALUES ('619', '30', '35', '在小圈子中回复了我', '1', '2015-05-14 19:30', '1', '0', '32', '0');
INSERT INTO `t_mm` VALUES ('620', '35', '30', '在小圈子中回复了我', '1', '2015-05-14 19:30', '1', '0', '32', '0');
INSERT INTO `t_mm` VALUES ('621', '30', '35', '在小圈子中回复了我', '1', '2015-05-14 19:31', '1', '0', '32', '0');
INSERT INTO `t_mm` VALUES ('622', '35', '30', '私信了我', '1', '2015-05-14 19:32', '2', '0', '0', '51');
INSERT INTO `t_mm` VALUES ('623', '35', '30', '私信了我', '1', '2015-05-14 19:32', '2', '0', '0', '52');
INSERT INTO `t_mm` VALUES ('624', '30', '35', '在私信中回复了我', '1', '2015-05-14 19:32', '2', '0', '0', '51');
INSERT INTO `t_mm` VALUES ('625', '30', '35', '在私信中回复了我', '1', '2015-05-14 19:32', '2', '0', '0', '51');
INSERT INTO `t_mm` VALUES ('626', '35', '30', '在私信中回复了我', '1', '2015-05-14 19:33', '2', '0', '0', '51');
INSERT INTO `t_mm` VALUES ('627', '30', '35', '在私信中回复了我', '1', '2015-05-14 19:33', '2', '0', '0', '51');
INSERT INTO `t_mm` VALUES ('628', '35', '32', '评论了我的帖子', '1', '2015-05-14 19:41', '0', '25', '0', '0');
INSERT INTO `t_mm` VALUES ('629', '35', '30', '在评论中回复了我', '1', '2015-05-14 19:41', '0', '25', '0', '0');
INSERT INTO `t_mm` VALUES ('630', '35', '30', '评论了我的帖子', '1', '2015-05-14 19:42', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('631', '35', '30', '在帖子中回复了我', '1', '2015-05-14 19:42', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('632', '35', '30', '评论了我的帖子', '1', '2015-05-14 19:48', '0', '32', '0', '0');
INSERT INTO `t_mm` VALUES ('633', '35', '30', '评论了我的帖子', '1', '2015-05-14 19:48', '0', '32', '0', '0');
INSERT INTO `t_mm` VALUES ('634', '30', '35', '评论了我的帖子', '1', '2015-05-14 19:56', '0', '33', '0', '0');
INSERT INTO `t_mm` VALUES ('635', '7', '15', '在小圈子中回复了我', '0', '2015-05-15 11:04', '1', '0', '12', '0');
INSERT INTO `t_mm` VALUES ('636', '7', '35', '私信了我', '1', '2015-05-15 11:06', '2', '0', '0', '53');
INSERT INTO `t_mm` VALUES ('637', '1', '3', '赞了我的帖子', '1', '2015-05-15 12:03', '0', '19', '0', '0');
INSERT INTO `t_mm` VALUES ('638', '1', '35', '赞了我的帖子', '1', '2015-05-15 12:04', '0', '33', '0', '0');
INSERT INTO `t_mm` VALUES ('639', '7', '30', '私信了我', '1', '2015-05-15 15:10', '2', '0', '0', '54');
INSERT INTO `t_mm` VALUES ('640', '7', '30', '私信了我', '1', '2015-05-15 15:10', '2', '0', '0', '55');
INSERT INTO `t_mm` VALUES ('641', '7', '30', '私信了我', '1', '2015-05-15 15:10', '2', '0', '0', '56');
INSERT INTO `t_mm` VALUES ('642', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '57');
INSERT INTO `t_mm` VALUES ('643', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '58');
INSERT INTO `t_mm` VALUES ('644', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '59');
INSERT INTO `t_mm` VALUES ('645', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '60');
INSERT INTO `t_mm` VALUES ('646', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '61');
INSERT INTO `t_mm` VALUES ('647', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '62');
INSERT INTO `t_mm` VALUES ('648', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '63');
INSERT INTO `t_mm` VALUES ('649', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '64');
INSERT INTO `t_mm` VALUES ('650', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '65');
INSERT INTO `t_mm` VALUES ('651', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '66');
INSERT INTO `t_mm` VALUES ('652', '7', '30', '私信了我', '1', '2015-05-15 15:11', '2', '0', '0', '67');
INSERT INTO `t_mm` VALUES ('653', '36', '37', '在小圈子中赞了我', '1', '2015-05-15 17:10', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('654', '36', '37', '在小圈子中duang了我', '1', '2015-05-15 17:10', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('655', '36', '37', '在小圈子中回复了我', '1', '2015-05-15 17:10', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('656', '36', '37', '评论了我的帖子', '1', '2015-05-15 17:14', '0', '34', '0', '0');
INSERT INTO `t_mm` VALUES ('657', '36', '37', '评论了我的帖子', '1', '2015-05-15 17:14', '0', '34', '0', '0');
INSERT INTO `t_mm` VALUES ('658', '37', '36', '在小圈子中回复了我', '1', '2015-05-15 17:14', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('659', '37', '36', '在小圈子中赞了我', '1', '2015-05-15 17:15', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('660', '37', '36', '在小圈子中duang了我', '1', '2015-05-15 17:15', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('661', '37', '36', '在小圈子中duang了我', '1', '2015-05-15 17:15', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('662', '36', '37', '在小圈子中回复了我', '1', '2015-05-15 17:16', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('663', '37', '36', '在帖子中回复了我', '1', '2015-05-15 17:55', '0', '35', '0', '0');
INSERT INTO `t_mm` VALUES ('664', '38', '35', '评论了我的帖子', '1', '2015-05-16 12:54', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('665', '38', '32', '在小圈子中赞了我', '0', '2015-05-16 12:55', '1', '0', '28', '0');
INSERT INTO `t_mm` VALUES ('666', '38', '30', '在小圈子中赞了我', '1', '2015-05-16 12:55', '1', '0', '25', '0');
INSERT INTO `t_mm` VALUES ('667', '38', '30', '在小圈子中duang了我', '1', '2015-05-16 12:55', '1', '0', '25', '0');
INSERT INTO `t_mm` VALUES ('668', '36', '38', '在评论中回复了我', '1', '2015-05-16 13:04', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('669', '38', '36', '在帖子中回复了我', '1', '2015-05-16 13:15', '0', '35', '0', '0');
INSERT INTO `t_mm` VALUES ('670', '39', '36', '赞了我的帖子', '1', '2015-05-16 20:34', '0', '35', '0', '0');
INSERT INTO `t_mm` VALUES ('671', '39', '37', '赞了我的帖子', '0', '2015-05-16 20:34', '0', '34', '0', '0');
INSERT INTO `t_mm` VALUES ('672', '39', '35', '赞了我的帖子', '1', '2015-05-16 20:39', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('673', '39', '35', '赞了我的帖子', '1', '2015-05-16 20:39', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('674', '39', '35', '赞了我的帖子', '1', '2015-05-16 20:40', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('675', '39', '30', '赞了我的评论', '1', '2015-05-16 20:40', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('676', '39', '38', '赞了我的评论', '1', '2015-05-16 20:40', '0', '31', '0', '0');
INSERT INTO `t_mm` VALUES ('677', '39', '30', '赞了我的帖子', '1', '2015-05-16 20:40', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('678', '39', '30', '赞了我的评论', '1', '2015-05-16 20:40', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('679', '39', '35', '赞了我的评论', '1', '2015-05-16 20:40', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('680', '39', '36', '在小圈子中赞了我', '1', '2015-05-16 20:41', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('681', '39', '36', '在小圈子中duang了我', '1', '2015-05-16 20:41', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('682', '39', '37', '在小圈子中赞了我', '0', '2015-05-16 20:41', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('683', '39', '37', '在小圈子中duang了我', '0', '2015-05-16 20:41', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('684', '39', '36', '在小圈子中回复了我', '1', '2015-05-16 20:41', '1', '0', '35', '0');
INSERT INTO `t_mm` VALUES ('685', '39', '38', '在帖子中回复了我', '1', '2015-05-16 20:56', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('686', '39', '38', '评论了我的帖子', '1', '2015-05-16 20:56', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('687', '39', '38', '私信了我', '1', '2015-05-16 20:56', '2', '0', '0', '68');
INSERT INTO `t_mm` VALUES ('688', '38', '39', '在评论中回复了我', '1', '2015-05-16 20:56', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('689', '39', '38', '私信了我', '1', '2015-05-16 20:57', '2', '0', '0', '69');
INSERT INTO `t_mm` VALUES ('690', '39', '38', '私信了我', '1', '2015-05-16 20:57', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('691', '38', '39', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('692', '39', '38', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('693', '39', '38', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('694', '38', '39', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('695', '39', '38', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('696', '39', '38', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('697', '39', '38', '在私信中回复了我', '1', '2015-05-16 20:58', '2', '0', '0', '70');
INSERT INTO `t_mm` VALUES ('698', '39', '37', '在小圈子中回复了我', '0', '2015-05-16 20:59', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('699', '35', '38', '在小圈子中赞了我', '1', '2015-05-16 21:10', '1', '0', '36', '0');
INSERT INTO `t_mm` VALUES ('700', '39', '37', '在小圈子中duang了我', '0', '2015-05-16 21:53', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('701', '39', '37', '在小圈子中赞了我', '0', '2015-05-16 21:53', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('702', '36', '39', '在小圈子中回复了我', '0', '2015-05-16 22:01', '1', '0', '34', '0');
INSERT INTO `t_mm` VALUES ('703', '36', '38', '赞了我的帖子', '1', '2015-05-17 22:38', '0', '37', '0', '0');
INSERT INTO `t_mm` VALUES ('704', '7', '1', '在小圈子中duang了我', '1', '2015-05-18 15:15', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('705', '7', '3', '在小圈子中赞了我', '1', '2015-05-18 15:15', '1', '0', '23', '0');
INSERT INTO `t_mm` VALUES ('706', '7', '1', '赞了我的帖子', '1', '2015-05-18 16:59', '0', '38', '0', '0');
INSERT INTO `t_mm` VALUES ('707', '7', '38', '赞了我的帖子', '1', '2015-05-18 17:01', '0', '37', '0', '0');
INSERT INTO `t_mm` VALUES ('708', '7', '38', '赞了我的帖子', '1', '2015-05-18 17:01', '0', '37', '0', '0');
INSERT INTO `t_mm` VALUES ('709', '7', '38', '赞了我的帖子', '1', '2015-05-18 17:01', '0', '37', '0', '0');
INSERT INTO `t_mm` VALUES ('710', '7', '38', '赞了我的帖子', '1', '2015-05-18 17:01', '0', '37', '0', '0');
INSERT INTO `t_mm` VALUES ('711', '7', '38', '赞了我的帖子', '1', '2015-05-18 17:01', '0', '37', '0', '0');
INSERT INTO `t_mm` VALUES ('712', '7', '1', '评论了我的帖子', '1', '2015-05-18 17:01', '0', '38', '0', '0');
INSERT INTO `t_mm` VALUES ('713', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 17:08', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('714', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 17:08', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('715', '7', '1', '赞了我的帖子', '1', '2015-05-18 17:09', '0', '38', '0', '0');
INSERT INTO `t_mm` VALUES ('716', '7', '1', '赞了我的帖子', '1', '2015-05-18 17:13', '0', '38', '0', '0');
INSERT INTO `t_mm` VALUES ('717', '1', '7', '赞了我的评论', '1', '2015-05-18 18:03', '0', '38', '0', '0');
INSERT INTO `t_mm` VALUES ('718', '1', '38', '赞了我的帖子', '1', '2015-05-18 18:06', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('719', '1', '39', '赞了我的评论', '0', '2015-05-18 18:06', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('720', '1', '38', '赞了我的帖子', '1', '2015-05-18 18:06', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('721', '1', '39', '赞了我的评论', '0', '2015-05-18 18:07', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('722', '1', '7', '赞了我的评论', '1', '2015-05-18 18:07', '0', '38', '0', '0');
INSERT INTO `t_mm` VALUES ('723', '1', '30', '赞了我的帖子', '1', '2015-05-18 18:07', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('724', '1', '30', '赞了我的评论', '1', '2015-05-18 18:07', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('725', '1', '35', '赞了我的评论', '1', '2015-05-18 18:07', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('726', '1', '35', '赞了我的评论', '1', '2015-05-18 18:07', '0', '30', '0', '0');
INSERT INTO `t_mm` VALUES ('727', '7', '1', '赞了我的帖子', '1', '2015-05-18 18:30', '0', '40', '0', '0');
INSERT INTO `t_mm` VALUES ('728', '7', '1', '赞了我的帖子', '1', '2015-05-18 18:30', '0', '40', '0', '0');
INSERT INTO `t_mm` VALUES ('729', '7', '1', '赞了我的帖子', '1', '2015-05-18 18:30', '0', '40', '0', '0');
INSERT INTO `t_mm` VALUES ('730', '7', '1', '在小圈子中duang了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('731', '7', '1', '在小圈子中duang了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('732', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('733', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('734', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('735', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('736', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('737', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('738', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('739', '7', '1', '在小圈子中赞了我', '1', '2015-05-18 18:35', '1', '0', '31', '0');
INSERT INTO `t_mm` VALUES ('740', '7', '3', '在小圈子中duang了我', '0', '2015-05-18 18:35', '1', '0', '23', '0');
INSERT INTO `t_mm` VALUES ('741', '35', '30', '在小圈子中赞了我', '1', '2015-05-18 23:41', '1', '0', '25', '0');
INSERT INTO `t_mm` VALUES ('742', '7', '1', '赞了我的帖子', '1', '2015-05-19 09:41', '0', '39', '0', '0');
INSERT INTO `t_mm` VALUES ('743', '7', '1', '赞了我的帖子', '1', '2015-05-19 09:41', '0', '39', '0', '0');
INSERT INTO `t_mm` VALUES ('744', '7', '31', '赞了我的帖子', '0', '2015-05-19 09:44', '0', '24', '0', '0');
INSERT INTO `t_mm` VALUES ('745', '7', '33', '赞了我的帖子', '0', '2015-05-19 10:00', '0', '26', '0', '0');
INSERT INTO `t_mm` VALUES ('746', '7', '33', '赞了我的帖子', '0', '2015-05-19 10:00', '0', '26', '0', '0');
INSERT INTO `t_mm` VALUES ('747', '7', '1', '赞了我的帖子', '1', '2015-05-19 10:01', '0', '39', '0', '0');
INSERT INTO `t_mm` VALUES ('748', '7', '1', '赞了我的帖子', '1', '2015-05-19 10:01', '0', '39', '0', '0');
INSERT INTO `t_mm` VALUES ('749', '7', '1', '赞了我的帖子', '1', '2015-05-19 10:01', '0', '39', '0', '0');
INSERT INTO `t_mm` VALUES ('750', '30', '1', '赞了我的帖子', '0', '2015-05-19 11:57', '0', '39', '0', '0');
INSERT INTO `t_mm` VALUES ('751', '42', '39', '赞了我的评论', '0', '2015-05-19 12:14', '0', '36', '0', '0');
INSERT INTO `t_mm` VALUES ('752', '42', '7', '私信了我', '0', '2015-05-19 12:23', '2', '0', '0', '71');
INSERT INTO `t_mm` VALUES ('753', '42', '7', '私信了我', '0', '2015-05-19 12:23', '2', '0', '0', '72');
INSERT INTO `t_mm` VALUES ('754', '42', '7', '赞了我的帖子', '0', '2015-05-19 12:34', '0', '11', '0', '0');

-- ----------------------------
-- Table structure for `t_pm`
-- ----------------------------
DROP TABLE IF EXISTS `t_pm`;
CREATE TABLE `t_pm` (
  `id` int(10) NOT NULL auto_increment,
  `senderID` int(10) default NULL,
  `receiverID` int(10) default NULL,
  `content` mediumblob,
  `lastUpTime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_pm
-- ----------------------------
INSERT INTO `t_pm` VALUES ('1', '1', '2', 0xE68891E698AFE8B59EE5858BE890A8E696AF, '2015-04-20 10:56:26');
INSERT INTO `t_pm` VALUES ('2', '2', '1', 0xE68891E698AFE5858BE58AB3E5BEB7EFBC8CE68891E7A781E4BFA1E4BDA0E8AF95E8AF95E8808CE5B7B2, '2015-04-20 11:32:07');
INSERT INTO `t_pm` VALUES ('3', '1', '2', 0xE591B5E591B5E591B5E591B5E591B5, '2015-04-21 13:49:05');
INSERT INTO `t_pm` VALUES ('4', '1', '2', 0xE591B5E591B5E591B5E591B5E591B5, '2015-04-21 13:59:56');
INSERT INTO `t_pm` VALUES ('5', '3', '3', 0xE69DA5E4B880E4B8AAE7A781E4BFA1, '2015-05-08 14:42:48');
INSERT INTO `t_pm` VALUES ('6', '3', '3', 0xE69DA5E4B880E4B8AAE7A781E4BFA1, '2015-05-08 14:42:50');
INSERT INTO `t_pm` VALUES ('7', '3', '3', 0xE69DA5E4B880E4B8AAE7A781E4BFA1, '2015-05-08 14:42:51');
INSERT INTO `t_pm` VALUES ('8', '3', '3', 0xE69DA5E4B880E4B8AAE7A781E4BFA1, '2015-05-08 14:42:52');
INSERT INTO `t_pm` VALUES ('9', '3', '3', 0xE69DA5E4B880E4B8AAE7A781E4BFA1, '2015-05-08 14:42:53');
INSERT INTO `t_pm` VALUES ('10', '7', '7', 0xE7A781E4BFA1E58685E5AEB9, '2015-05-10 17:55:27');
INSERT INTO `t_pm` VALUES ('11', '7', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:55:56');
INSERT INTO `t_pm` VALUES ('12', '7', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:55:56');
INSERT INTO `t_pm` VALUES ('13', '7', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:55:56');
INSERT INTO `t_pm` VALUES ('14', '7', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:55:56');
INSERT INTO `t_pm` VALUES ('15', '7', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:55:56');
INSERT INTO `t_pm` VALUES ('16', '7', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:55:57');
INSERT INTO `t_pm` VALUES ('17', '1', '7', 0xE7A781E4BFA1E58685E5AEB9313233E9A5BF31, '2015-05-10 17:59:47');
INSERT INTO `t_pm` VALUES ('18', '1', '7', 0x676673646667, '2015-05-10 19:50:41');
INSERT INTO `t_pm` VALUES ('19', '7', '7', 0x6868687368646864, '2015-05-11 09:47:56');
INSERT INTO `t_pm` VALUES ('20', '7', '7', 0x687868646864, '2015-05-11 09:50:18');
INSERT INTO `t_pm` VALUES ('21', '7', '7', 0x687868646864, '2015-05-11 09:50:21');
INSERT INTO `t_pm` VALUES ('22', '7', '7', 0x646667, '2015-05-11 09:51:43');
INSERT INTO `t_pm` VALUES ('23', '7', '7', 0x646667, '2015-05-11 09:51:44');
INSERT INTO `t_pm` VALUES ('24', '7', '7', 0x68686468646A66, '2015-05-11 09:52:44');
INSERT INTO `t_pm` VALUES ('25', '7', '7', 0x7A786466, '2015-05-11 09:54:05');
INSERT INTO `t_pm` VALUES ('26', '7', '7', 0x67676767676768, '2015-05-11 09:59:38');
INSERT INTO `t_pm` VALUES ('27', '7', '7', 0x76626568686468646A, '2015-05-11 10:01:21');
INSERT INTO `t_pm` VALUES ('28', '7', '7', 0x76626568686468646A6A6A646A64, '2015-05-11 10:01:27');
INSERT INTO `t_pm` VALUES ('29', '7', '7', 0x76626568686468646A6A6A646A64, '2015-05-11 10:01:29');
INSERT INTO `t_pm` VALUES ('30', '7', '7', 0x383536363436343635, '2015-05-11 10:02:53');
INSERT INTO `t_pm` VALUES ('31', '7', '7', 0x646676686A6A, '2015-05-11 10:03:02');
INSERT INTO `t_pm` VALUES ('32', '7', '7', 0x646666, '2015-05-11 10:05:33');
INSERT INTO `t_pm` VALUES ('33', '7', '7', 0x64686A636868636A646A64, '2015-05-11 10:07:20');
INSERT INTO `t_pm` VALUES ('34', '7', '7', 0x62646864686A636A6A666A6A666B666B, '2015-05-11 10:07:28');
INSERT INTO `t_pm` VALUES ('35', '7', '7', 0x7A68687368646864, '2015-05-11 10:07:34');
INSERT INTO `t_pm` VALUES ('36', '7', '7', 0x687A68646A646A786A, '2015-05-11 10:07:49');
INSERT INTO `t_pm` VALUES ('37', '7', '2', 0x6273686864686A646A64, '2015-05-11 10:19:05');
INSERT INTO `t_pm` VALUES ('38', '7', '7', 0x66666768, '2015-05-11 10:22:13');
INSERT INTO `t_pm` VALUES ('39', '7', '2', 0xE58EBBE68891, '2015-05-11 11:09:48');
INSERT INTO `t_pm` VALUES ('40', '15', '7', 0xE595A6E592AFE595A6E592AFE595A6E592AF, '2015-05-11 15:23:12');
INSERT INTO `t_pm` VALUES ('41', '7', '15', 0xE7BB99E593A6E59BA7E59BA7, '2015-05-11 15:58:07');
INSERT INTO `t_pm` VALUES ('42', '7', '2', 0xE59388E59388, '2015-05-12 10:28:47');
INSERT INTO `t_pm` VALUES ('43', '23', '22', 0xE595A6E5958A, '2015-05-13 14:24:43');
INSERT INTO `t_pm` VALUES ('44', '23', '22', 0xE4BB96E592AFE595A6E595A6, '2015-05-13 14:24:47');
INSERT INTO `t_pm` VALUES ('45', '23', '22', 0xE59BBEE59090E4BA86, '2015-05-13 14:25:24');
INSERT INTO `t_pm` VALUES ('46', '24', '1', 0xE4BDA0E5A5BD, '2015-05-13 14:57:55');
INSERT INTO `t_pm` VALUES ('47', '3', '3', 0xE69DA5E4B880E4B8AAE7A781E4BFA1, '2015-05-13 17:30:31');
INSERT INTO `t_pm` VALUES ('48', '26', '7', 0xE4BDA0E5A5BD, '2015-05-14 12:00:49');
INSERT INTO `t_pm` VALUES ('49', '30', '26', 0xE4BDA0E5A5BD7EF09F988A, '2015-05-14 13:08:54');
INSERT INTO `t_pm` VALUES ('50', '26', '30', 0xE4BDA0E5A5BDE4BDA0E5A5BD7E, '2015-05-14 13:12:58');
INSERT INTO `t_pm` VALUES ('51', '35', '30', 0xE38082, '2015-05-14 19:32:29');
INSERT INTO `t_pm` VALUES ('52', '35', '30', 0xE38082E38082, '2015-05-14 19:32:40');
INSERT INTO `t_pm` VALUES ('53', '7', '35', 0xE695B0E68DAE, '2015-05-15 11:06:08');
INSERT INTO `t_pm` VALUES ('54', '7', '30', 0xE592AFE593A6E593A6, '2015-05-15 15:10:34');
INSERT INTO `t_pm` VALUES ('55', '7', '30', 0x56E9A286E8BEA3E79A84E5A2A8E9B1BC, '2015-05-15 15:10:40');
INSERT INTO `t_pm` VALUES ('56', '7', '30', 0xE4BB96E592AFE69DA5E592AFE9A5BFE4BA86E592AFE595A6E592AFE4BA86, '2015-05-15 15:10:46');
INSERT INTO `t_pm` VALUES ('57', '7', '30', 0xE587A0E4B8AAE9A1BEE5AEA2E592AFE593A6E593A6E593A6E5A4B8E590A7, '2015-05-15 15:10:56');
INSERT INTO `t_pm` VALUES ('58', '7', '30', 0xE8BDB0E99A86E99A86, '2015-05-15 15:11:05');
INSERT INTO `t_pm` VALUES ('59', '7', '30', 0xE59B9EE5AEB6E592AF, '2015-05-15 15:11:08');
INSERT INTO `t_pm` VALUES ('60', '7', '30', 0xE8B5B7E69DA5E69DA5E592AF, '2015-05-15 15:11:17');
INSERT INTO `t_pm` VALUES ('61', '7', '30', 0xE8BDB0E99A86E99A86, '2015-05-15 15:11:21');
INSERT INTO `t_pm` VALUES ('62', '7', '30', 0xE69DA5E592AFE593A6E593A64F4BE4BA86, '2015-05-15 15:11:27');
INSERT INTO `t_pm` VALUES ('63', '7', '30', 0xE5A5BDE592AFE691B8E691B8E691B8, '2015-05-15 15:11:37');
INSERT INTO `t_pm` VALUES ('64', '7', '30', 0xE6809DE5A682E6B389E6B68C, '2015-05-15 15:11:43');
INSERT INTO `t_pm` VALUES ('65', '7', '30', 0xE6ADBBE592AFE593A6E593A6, '2015-05-15 15:11:49');
INSERT INTO `t_pm` VALUES ('66', '7', '30', 0x746F6D6F72726F77, '2015-05-15 15:11:52');
INSERT INTO `t_pm` VALUES ('67', '7', '30', 0xE592AFE593A6777777, '2015-05-15 15:11:56');
INSERT INTO `t_pm` VALUES ('68', '39', '38', 0xE9A29D28E28A996FE28A9929E280A6, '2015-05-16 20:56:41');
INSERT INTO `t_pm` VALUES ('69', '39', '38', 0xE9BC8EE991ABE79C8BE588B0E4BA86E4B988, '2015-05-16 20:57:07');
INSERT INTO `t_pm` VALUES ('70', '39', '38', 0xE59B9EE5A48D, '2015-05-16 20:57:14');
INSERT INTO `t_pm` VALUES ('71', '42', '7', 0x766967696C616E74, '2015-05-19 12:23:11');
INSERT INTO `t_pm` VALUES ('72', '42', '7', 0xE59B9BE8B7AFE9809A, '2015-05-19 12:23:18');

-- ----------------------------
-- Table structure for `t_pmreplies`
-- ----------------------------
DROP TABLE IF EXISTS `t_pmreplies`;
CREATE TABLE `t_pmreplies` (
  `id` int(10) NOT NULL auto_increment,
  `pmID` int(10) default NULL,
  `parentReplierID` int(10) default NULL,
  `replierID` int(10) default NULL,
  `content` mediumblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_pmreplies
-- ----------------------------
INSERT INTO `t_pmreplies` VALUES ('1', '2', '1', '2', 0xE68891E698AFE5858BE58AB3E5BEB7EFBC8CE68891E59CA8E7A781E4BFA1E4B8ADE59B9EE5A48DE4BDA0);
INSERT INTO `t_pmreplies` VALUES ('2', '2', '1', '2', 0xE68891E698AFE5858BE58AB3E5BEB7EFBC8CE68891E59CA8E7A781E4BFA1E4B8ADE59B9EE5A48DE4BDA0);
INSERT INTO `t_pmreplies` VALUES ('3', '1', '7', '7', 0xE7A781E4BFA1E58685E5AEB9);
INSERT INTO `t_pmreplies` VALUES ('4', '33', '7', '7', 0x6768756A);
INSERT INTO `t_pmreplies` VALUES ('5', '33', '7', '7', 0x67676768);
INSERT INTO `t_pmreplies` VALUES ('6', '33', '7', '7', 0x64676868);
INSERT INTO `t_pmreplies` VALUES ('7', '18', '7', '7', 0x6E736E646A64);
INSERT INTO `t_pmreplies` VALUES ('8', '17', '7', '7', 0x313131313131313131313131313131313131313131313131313131313131313131313131);
INSERT INTO `t_pmreplies` VALUES ('9', '40', '7', '7', 0xE59388E59388);
INSERT INTO `t_pmreplies` VALUES ('10', '41', '15', '7', 0x6C6F6CE592AF);
INSERT INTO `t_pmreplies` VALUES ('11', '41', '15', '7', 0x20202E6E6E686867);
INSERT INTO `t_pmreplies` VALUES ('12', '41', '15', '7', 0x67686767);
INSERT INTO `t_pmreplies` VALUES ('13', '41', '15', '7', 0x66666667);
INSERT INTO `t_pmreplies` VALUES ('14', '41', '15', '7', 0x6666676766);
INSERT INTO `t_pmreplies` VALUES ('15', '41', '15', '7', 0x63666768);
INSERT INTO `t_pmreplies` VALUES ('16', '41', '15', '7', 0x666667);
INSERT INTO `t_pmreplies` VALUES ('17', '17', '7', '1', 0x797979);
INSERT INTO `t_pmreplies` VALUES ('18', '2', '1', '1', 0xE68891E698AFE68B92E7BB9DE79A84);
INSERT INTO `t_pmreplies` VALUES ('19', '41', '15', '7', 0x7774687968777468797734);
INSERT INTO `t_pmreplies` VALUES ('20', '41', '15', '7', 0x677477776572796777);
INSERT INTO `t_pmreplies` VALUES ('21', '41', '15', '7', 0x3132);
INSERT INTO `t_pmreplies` VALUES ('22', '43', '22', '23', 0xE697B6E58099);
INSERT INTO `t_pmreplies` VALUES ('23', '45', '22', '23', 0xE79683);
INSERT INTO `t_pmreplies` VALUES ('24', '2', '1', '1', 0x68656C6C6FEFBC9F);
INSERT INTO `t_pmreplies` VALUES ('25', '2', '1', '1', 0xE4B88DE698AFE590A7);
INSERT INTO `t_pmreplies` VALUES ('26', '1', '2', '1', 0xE7A59EE9A9ACEFBC9F);
INSERT INTO `t_pmreplies` VALUES ('27', '4', '2', '1', 0x68656C6C6F);
INSERT INTO `t_pmreplies` VALUES ('28', '2', '1', '1', 0xE4B88DE58FAFE883BDE590A7);
INSERT INTO `t_pmreplies` VALUES ('29', '46', '1', '1', 0x68656C6C6F);
INSERT INTO `t_pmreplies` VALUES ('30', '46', '1', '1', 0xE4B88D);
INSERT INTO `t_pmreplies` VALUES ('31', '3', '1', '2', 0xE59B9EE5A48D);
INSERT INTO `t_pmreplies` VALUES ('32', '4', '2', '1', 0xE59B9EE5A48D);
INSERT INTO `t_pmreplies` VALUES ('33', '4', '2', '1', 0xE59B9EE5A48D);
INSERT INTO `t_pmreplies` VALUES ('34', '41', '15', '7', 0x5254464551575254574552);
INSERT INTO `t_pmreplies` VALUES ('35', '41', '15', '7', 0x45574551);
INSERT INTO `t_pmreplies` VALUES ('36', '26', '7', '7', 0x51464551574546);
INSERT INTO `t_pmreplies` VALUES ('37', '49', '30', '26', 0xE4BDA0E5A5BDE7BE8EE5A5B3);
INSERT INTO `t_pmreplies` VALUES ('38', '51', '35', '30', 0xE7A781E4BFA1);
INSERT INTO `t_pmreplies` VALUES ('39', '51', '35', '30', 0xE883BDE79C8BE588B0E4B988);
INSERT INTO `t_pmreplies` VALUES ('40', '51', '30', '35', 0xE883BDE38082);
INSERT INTO `t_pmreplies` VALUES ('41', '51', '35', '30', 0x6F6B);
INSERT INTO `t_pmreplies` VALUES ('42', '70', '39', '38', 0xE79C8BE588B0E595A6);
INSERT INTO `t_pmreplies` VALUES ('43', '70', '38', '39', 0xE694B6E588B0E4BA86);
INSERT INTO `t_pmreplies` VALUES ('44', '70', '38', '39', 0xE4B988EFBC9F);
INSERT INTO `t_pmreplies` VALUES ('45', '70', '39', '38', 0xE8B28CE4BCBCE6B2A1E69C89E8BF9EE7BBADE79A84E8818AE5A4A9E8AEB0E5BD95E59180);
INSERT INTO `t_pmreplies` VALUES ('46', '70', '38', '39', 0x6F6B);
INSERT INTO `t_pmreplies` VALUES ('47', '70', '38', '39', 0xE5AFB9);
INSERT INTO `t_pmreplies` VALUES ('48', '70', '38', '39', 0xE4BDA0E5A5BD7E);

-- ----------------------------
-- Table structure for `t_post`
-- ----------------------------
DROP TABLE IF EXISTS `t_post`;
CREATE TABLE `t_post` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(100) collate utf8_bin default NULL,
  `content` mediumblob,
  `publisherID` int(10) default NULL,
  `publishTime` varchar(100) collate utf8_bin default NULL,
  `likeCount` int(10) default NULL,
  `likeIds` longtext collate utf8_bin,
  `lastUpTime` varchar(100) collate utf8_bin default NULL,
  `commentCount` int(10) default NULL,
  `orderNum` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_post
-- ----------------------------
INSERT INTO `t_post` VALUES ('1', '我爱我家志利', 0xE68891E5B0B1E698AFE788B1E68891E68891E5AEB6E5AE9DE5AE9D, '1', '2015-04-17 20:00:00', '3', 0x322C31352C37, '2015-05-11 17:59:48', '13', '0');
INSERT INTO `t_post` VALUES ('2', '22222', 0x323232323232323232323232, '1', '2015-04-17 20:19:00', '0', '', '2015-04-21 12:22:53', '9', '0');
INSERT INTO `t_post` VALUES ('3', '新发布的帖子', 0xE696B0E58F91E5B883E5B896E5AD90E79A84E58685E5AEB9, '1', '2015-04-18 12:52:46', '1', 0x332C3135, '2015-05-08 16:06:16', '2', '0');
INSERT INTO `t_post` VALUES ('4', '我来发个帖子', 0xE696B0E79A84E5B896E5AD90E69DA5E6B58BE8AF95E4B880E4B88BE4B88B, '2', '2015-05-04 10:28:44', '4', 0x332C372C32332C31, '2015-05-11 22:43:15', '1', '0');
INSERT INTO `t_post` VALUES ('5', 'asdsad', 0x64617364736164, '7', '2015-05-05 15:01:42', null, '', '2015-05-05 15:01:42', null, '0');
INSERT INTO `t_post` VALUES ('6', 'ferwgwe', 0x72677666647367, '7', '2015-05-05 15:10:15', '1', 0x3130, '2015-05-05 15:10:15', null, '0');
INSERT INTO `t_post` VALUES ('7', 'frdf', 0x6466736173646664736473, '7', '2015-05-05 15:26:22', null, '', '2015-05-05 15:26:22', null, '0');
INSERT INTO `t_post` VALUES ('8', 'sdvsD', 0x6164666164, '7', '2015-05-05 15:27:55', '1', 0x37, '2015-05-05 15:27:55', null, '0');
INSERT INTO `t_post` VALUES ('9', 'asdas', 0x6461736461736461, '7', '2015-05-05 15:28:23', '1', 0x37, '2015-05-08 16:05:45', '1', '0');
INSERT INTO `t_post` VALUES ('10', '吐了咯啦咯啦咯啦咯啦咯啦咯', 0xE697AEE697AF, '7', '2015-05-07 15:22:51', '0', '', '2015-05-07 15:22:51', null, '0');
INSERT INTO `t_post` VALUES ('11', '我发一个新的', 0xE69DA5E8AF95E8AF95E5958AE38082, '7', '2015-05-11 12:03:10', '2', 0x372C3432, '2015-05-11 12:04:10', '1', '0');
INSERT INTO `t_post` VALUES ('12', '林俊杰发的帖子', 0xE58685E5AEB9, '15', '2015-05-11 15:29:20', '0', '', '2015-05-11 22:33:25', '2', '5');
INSERT INTO `t_post` VALUES ('13', '嗯嗯', 0xE99D9EE5B8B8E5A5BD, '7', '2015-05-11 16:54:55', '1', 0x37, '2015-05-11 16:54:55', null, '0');
INSERT INTO `t_post` VALUES ('14', '看看', 0xE6B581E9878FE4BA86, '7', '2015-05-11 17:58:27', null, null, '2015-05-11 17:58:27', null, '0');
INSERT INTO `t_post` VALUES ('15', '我爱我家老公', 0xE88081E585ACE38082E38082E38082E38082E788B1E4BDA0EFBC81, '1', '2015-05-11 22:45:06', '2', 0x372C3232, '2015-05-11 22:45:06', null, '0');
INSERT INTO `t_post` VALUES ('16', '哈哈', 0xE59388E59388E59388F09F9884, '22', '2015-05-12 18:53:34', null, null, '2015-05-13 14:20:38', '1', '0');
INSERT INTO `t_post` VALUES ('17', '新的', 0xE59388E59388E59388, '1', '2015-05-13 11:41:32', '2', 0x32342C31, '2015-05-13 11:41:32', null, '0');
INSERT INTO `t_post` VALUES ('18', '吧', 0xE590A7, '1', '2015-05-13 16:38:20', null, null, '2015-05-13 16:38:20', null, '0');
INSERT INTO `t_post` VALUES ('19', '我也测试下	', 0xE696B0E5B896E5AD90, '3', '2015-05-13 16:42:17', '2', 0x32362C31, '2015-05-14 12:51:17', '2', '0');
INSERT INTO `t_post` VALUES ('20', 'te4ewfgew', 0x464144444153464153444647, '7', '2015-05-13 16:58:42', '2', 0x32352C3236, '2015-05-13 16:58:42', null, '0');
INSERT INTO `t_post` VALUES ('21', '呵呵哒', 0xE68891E68891E4BBAC, '26', '2015-05-14 12:50:28', '1', 0x3330, '2015-05-14 13:02:12', '1', '0');
INSERT INTO `t_post` VALUES ('23', '哈哈测试中~', 0xE59388E59388, '28', '2015-05-14 13:24:55', null, null, '2015-05-14 13:24:55', null, '0');
INSERT INTO `t_post` VALUES ('24', '测试测试我来了', 0xE68891E79A84, '31', '2015-05-14 13:55:58', '1', 0x37, '2015-05-14 13:55:58', null, '0');
INSERT INTO `t_post` VALUES ('25', '我来了哈', 0xE59388E59388F09F9884E59388E59388, '32', '2015-05-14 14:18:31', null, null, '2015-05-14 19:41:00', '2', '0');
INSERT INTO `t_post` VALUES ('26', 'nnnn', 0x3A68666768686A, '33', '2015-05-14 14:25:24', '1', 0x3330, '2015-05-14 15:00:05', '1', '0');
INSERT INTO `t_post` VALUES ('27', 'ceshi', 0x6365736869, '7', '2015-05-14 18:28:49', null, null, '2015-05-14 18:28:49', null, '0');
INSERT INTO `t_post` VALUES ('28', 'ceishitupian', 0x63656973686974757069616E407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693635333630362E6A7067, '7', '2015-05-14 18:29:21', null, null, '2015-05-14 18:42:24', '1', '0');
INSERT INTO `t_post` VALUES ('29', 'ces', 0x636573407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693831363831332E6A7067, '34', '2015-05-14 19:01:38', null, null, '2015-05-14 19:01:38', null, '0');
INSERT INTO `t_post` VALUES ('30', '我来了哈哈{哈哈}', 0xE68891E8BF98E688917E6768636A62767676766A206A68686A626276766267626A76687668766876767676766A2063676A7666686A766276626E407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693339343837372E6A7067, '30', '2015-05-14 19:16:36', '3', 0x33302C33392C31, '2015-05-14 19:42:02', '2', '0');
INSERT INTO `t_post` VALUES ('31', '某浩', 0xE4B88DE99499E38082, '35', '2015-05-14 19:25:09', '1', 0x3339, '2015-05-16 12:54:50', '2', '0');
INSERT INTO `t_post` VALUES ('34', '【自挂】【男】【pic】88中科大男自挂东南枝', 0x4747E8BAABE9AB98312E3739E7B1B3EFBC8CE4B8ADE7AD89E4BD93E59E8BEFBC8C3838E5B9B4EFBC8CE4B8ADE7A791E5A4A7E4BFA1E999A2E7A195E5A3ABE6AF95E4B89AEFBC8CE59CA8E4B880E5AEB6E89197E5908DE4BA92E88194E7BD91E4BC81E4B89AE5B7A5E4BD9CE38082E69DADE5B79EE688B7E58FA3EFBC8CE5B1B1E4B89CE995BFE5A4A7E38082E5BE85E4BABAE5928CE6B094EFBC8CE680A7E6A0BCE5BC80E69C97EFBC8CE5969CE6ACA2E8BF90E58AA8EFBC8CE788B1E5A5BDE983BDE6AF94E8BE83E5A4A7E4BC97E58C96E380820D0AE69DA5E887AAE59F8EE5B882E4B8ADE4BAA7E5AEB6E5BAADEFBC8CE5AEB6E5BAADE697A0E8B49FE68B85E38082E5B7B2E59CA8E69DADE5B79EE8B4ADE688BFEFBC8CE5B7A5E8B584E4B99FE4B88DE99499EFBC8CE58FA6E69C89E5A5A5E8BFAA4136E4B880E8BE86E38082E69C9FE69C9B4D4DE8BAABE9AB98312E3636E7B1B3E4BBA5E4B88AEFBC8C3838E5B9B4E4BBA5E5908EE587BAE7949FEFBC8CE6AF95E4B89AE4BA8EE79FA5E5908DE9AB98E6A0A1EFBC8CE995BFE4B889E8A792E4B880E5B8A6E995BFE5A4A7E38082E88BA54D4DE69C89E6848FEFBC8CE8AFB7E58F91E982AEE4BBB6E887B36C695F62656E6C6940686F746D61696C2E636F6DEFBC8CE785A7E78987E58F8AE69BB4E8AFA6E7BB86E79A84E4BFA1E681AFE7A781E4B88BE4BAA4E6B581EFBC8CE8B0A2E8B0A2EFBC813A2D290D0A407C7265736F757263652F696D6755706C6F61642F32303135303531352F696D616765737869616F7175716E7A693234383436362E6A7067, '37', '2015-05-15 17:13:09', '1', 0x3339, '2015-05-15 17:14:20', '2', '0');
INSERT INTO `t_post` VALUES ('35', '\r\n【团挂】【女】【pic】毕业女生宿舍组团挂\r\n', 0xE5AE89E5BEBDE5A4A7E5ADA6E5A496E8AFADE7B3BBE6AF95E4B89AE5AEBFE8888DE5A6B9E5AD90E7BB84E59BA2E5AFBBE794B7E58F8B7EE794B1E4BA8EE8BAABE8BEB9E59FBAE69CACE983BDE698AFE5A6B9E5AD90EFBC8CE68980E4BBA5E5AEBFE8888DE4BA94E4B8AAE4BABAE4B880E79BB4E6B2A1E883BDE5AFBBE689BEE588B0E59088E98082E79A84E58FA6E4B880E58D8AEFBC8CE78EB0E59CA8E69CACE7A791E6AF95E4B89AE4BA94E4B8AAE4BABAE983BDE98089E68BA9E4BF9DE7A094E79599E59CA8E4BA86E69CACE6A0A1E38082E5A6B9E5AD90E4BBACE681B0E5B7A7E983BDE698AFE5AE89E5BEBDE4BABAEFBC8CE68980E4BBA5E5B88CE69C9BE4BBA5E5908EE79A84E58FA6E4B880E58D8AE68993E7AE97E59CA8E6B19FE6B599E6B2AAE79A96E4B880E5B8A6E58F91E5B195E38082E5AFB9E794B7E58F8BE79A84E59FBAE69CACE8A681E6B182EFBC9AE69CACE7A791E58F8AE4BBA5E4B88AE5ADA6E58E86EFBC8CE8BAABE9AB98313730E4BBA5E4B88AEFBC88E4B88DE5908CE5A6B9E5AD90E8A681E6B182E795A5E69C89E5B7AEE588ABEFBC89EFBC8CE4B88DE68EA5E58F97E5BC82E59CB0E38082E683B3E8A681E4BA86E8A7A3E4B8ADE6848FE5A5B3E7949FE79A84E585B7E4BD93E4BFA1E681AFEFBC8CE9BABBE783A6E88194E7B3BB5151EFBC9A31333232333532383431EFBC8CE78E8BE98193E5A682E4B88BEFBC9A407C7265736F757263652F696D6755706C6F61642F32303135303531352F696D616765737869616F7175716E7A693435343733352E6A7067, '36', '2015-05-15 17:28:43', '1', 0x3339, '2015-05-15 17:30:54', '1', '0');
INSERT INTO `t_post` VALUES ('36', '胡哲征婚', 0xE883A1E593B2E5ADA9E5AD90E4BABAE7959CE697A0E5AEB3EFBC8CE58CBBE586A0E68385E585BDEFBC8CE6B182E6B189E5AD90E4B880E4BD8DEFBC81, '38', '2015-05-16 20:52:29', '1', 0x31, '2015-05-16 20:56:19', '1', '0');
INSERT INTO `t_post` VALUES ('37', '帅哥背景', 0xE4B8BDE8B1AAE6B182E6B189E5AD90407C7265736F757263652F696D6755706C6F61642F32303135303531372F696D616765737869616F7175716E7A693934303030372E6A7067, '38', '2015-05-17 12:09:34', '1', 0x3336, '2015-05-17 12:09:34', null, '0');
INSERT INTO `t_post` VALUES ('38', '测试', 0xE68891E6B58BE8AF95E5A4B4E5838F, '1', '2015-05-18 15:29:30', '2', 0x372C31, '2015-05-18 17:01:52', '1', '0');
INSERT INTO `t_post` VALUES ('39', '测试', 0xE6B58BE8AF95, '1', '2015-05-18 18:08:48', '1', 0x3330, '2015-05-18 18:08:48', null, '0');
INSERT INTO `t_post` VALUES ('41', '我解封了', 0xE59097, '1', '2015-05-19 11:17:16', '1', 0x31, '2015-05-19 11:17:16', null, '0');
INSERT INTO `t_post` VALUES ('42', 'fg', 0x6767, '30', '2015-05-19 11:56:37', null, null, '2015-05-19 11:56:37', null, '0');
INSERT INTO `t_post` VALUES ('43', 'vv', 0x7676, '30', '2015-05-19 11:57:35', null, null, '2015-05-19 11:57:35', null, '0');
INSERT INTO `t_post` VALUES ('44', '封？', 0x6E756C6C, '35', '2015-05-19 12:00:41', null, null, '2015-05-19 12:00:41', null, '0');
INSERT INTO `t_post` VALUES ('45', '我来了哈哈哈哈', 0xE59388E59388407C7265736F757263652F696D6755706C6F61642F32303135303531392F696D616765737869616F7175716E7A693332383732342E6A7067, '42', '2015-05-19 12:11:13', null, null, '2015-05-19 12:11:13', null, '0');
INSERT INTO `t_post` VALUES ('46', '额你了', 0xE69D8EE6958F407C7265736F757263652F696D6755706C6F61642F32303135303531392F696D616765737869616F7175716E7A693236313737342E6A7067, '42', '2015-05-19 12:18:11', null, null, '2015-05-19 12:18:11', null, '0');
INSERT INTO `t_post` VALUES ('47', '哈', 0xE59388, '42', '2015-05-19 12:26:29', null, null, '2015-05-19 12:26:29', null, '0');

-- ----------------------------
-- Table structure for `t_postreplies`
-- ----------------------------
DROP TABLE IF EXISTS `t_postreplies`;
CREATE TABLE `t_postreplies` (
  `id` int(10) NOT NULL auto_increment,
  `postID` int(10) default NULL,
  `commentID` int(10) default NULL,
  `parentReplierID` int(10) default NULL,
  `replierID` int(10) default NULL,
  `content` mediumblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_postreplies
-- ----------------------------
INSERT INTO `t_postreplies` VALUES ('1', '1', null, '1', '2', 0xE8AFB4E5BE97E4B88DE99499);
INSERT INTO `t_postreplies` VALUES ('2', '1', null, '2', '1', 0xE681A9E681A9EFBC8CE8B0A2E8B0A2);
INSERT INTO `t_postreplies` VALUES ('3', null, '1', '2', '1', 0xE69CB4E6A091E79A84E7949FE5A682E5A48FE88AB1E5A5BDE590ACE79A84E5BE88);
INSERT INTO `t_postreplies` VALUES ('4', null, '1', '1', '2', 0xE698AFE59097EFBC8CE69C89E7A9BAE68891E590ACE590AC);
INSERT INTO `t_postreplies` VALUES ('5', '1', null, '2', '1', 0xE8B59EE5858BE890A8E696AFE59B9EE5A48DE5858BE58AB3E5BEB7E591B5E591B5E591B5);
INSERT INTO `t_postreplies` VALUES ('6', '0', '1', '1', '2', 0xE59B9EE5A48DE8B79FE5B896);
INSERT INTO `t_postreplies` VALUES ('7', '0', '2', '1', '2', 0xE59B9EE5A48DE8B79FE5B896);
INSERT INTO `t_postreplies` VALUES ('8', '1', '0', '1', '2', 0xE59CA8E69C80E9A1B6E7ABAFE79A84E5B896E5AD90E59B9EE5A48D);
INSERT INTO `t_postreplies` VALUES ('9', '0', '1', '2', '1', null);
INSERT INTO `t_postreplies` VALUES ('10', '3', '0', '3', '3', 0xE9A1B6E4B880E4B88BE887AAE5B7B1);
INSERT INTO `t_postreplies` VALUES ('11', '0', '3', '3', '3', 0xE59B9EE5A48DE4BDA0);
INSERT INTO `t_postreplies` VALUES ('12', '1', '0', '1', '2', 0xE6B58BE8AF95E69C80E9A1B6E7ABAFE8AF84E8AEBA);
INSERT INTO `t_postreplies` VALUES ('13', '1', '0', '1', '2', 0xE6B58BE8AF95E69C80E9A1B6E7ABAFE8AF84E8AEBA);
INSERT INTO `t_postreplies` VALUES ('14', '1', '0', '1', '2', 0xE6B58BE8AF95E69C80E9A1B6E7ABAFE8AF84E8AEBA);
INSERT INTO `t_postreplies` VALUES ('15', '1', '0', '2', '7', 0xE6B58BE8AF95E9A1B6E7ABAFE5B896E5AD90E8AF84E8AEBA);
INSERT INTO `t_postreplies` VALUES ('16', '1', '0', '7', '7', 0xE68891);
INSERT INTO `t_postreplies` VALUES ('17', '1', '0', '7', '7', 0xE8BF98E698AFE68891);
INSERT INTO `t_postreplies` VALUES ('18', '1', '0', '2', '7', 0xE4BDA0E698AF636C6F7564);
INSERT INTO `t_postreplies` VALUES ('19', '1', '0', '7', '7', '');
INSERT INTO `t_postreplies` VALUES ('20', '1', '0', '1', '7', 0xE8AF84E8AEBAE9A1B6E7ABAFE5B896E5AD90);
INSERT INTO `t_postreplies` VALUES ('21', '0', '0', '2', '7', 0x78646A6A6464);
INSERT INTO `t_postreplies` VALUES ('22', '0', '0', '2', '7', 0x78646A6A6464);
INSERT INTO `t_postreplies` VALUES ('23', '1', '0', '1', '7', 0x78646A6A6464);
INSERT INTO `t_postreplies` VALUES ('24', '1', '0', '2', '7', 0x67686868);
INSERT INTO `t_postreplies` VALUES ('25', '1', '0', '2', '7', 0x66676768);
INSERT INTO `t_postreplies` VALUES ('26', '1', '0', '1', '7', 0x66676768);
INSERT INTO `t_postreplies` VALUES ('27', '0', '1', '1', '7', 0x667676);
INSERT INTO `t_postreplies` VALUES ('28', '0', '1', '1', '7', 0x757569);
INSERT INTO `t_postreplies` VALUES ('29', '0', '2', '2', '7', 0x67797575);
INSERT INTO `t_postreplies` VALUES ('30', '0', '3', '3', '7', 0x666768);
INSERT INTO `t_postreplies` VALUES ('31', '0', '3', '3', '7', 0x686A6B);
INSERT INTO `t_postreplies` VALUES ('32', '0', '3', '3', '7', 0x616161616161);
INSERT INTO `t_postreplies` VALUES ('33', '0', '3', '3', '7', 0x626262);
INSERT INTO `t_postreplies` VALUES ('34', '0', '3', '3', '7', 0x636363636363);
INSERT INTO `t_postreplies` VALUES ('35', '0', '3', '3', '7', 0x646464646464);
INSERT INTO `t_postreplies` VALUES ('36', '0', '1', '1', '7', 0x7070707070);
INSERT INTO `t_postreplies` VALUES ('37', '0', '1', '2', '7', 0x74797979);
INSERT INTO `t_postreplies` VALUES ('38', '0', '2', '1', '7', 0x797979797979);
INSERT INTO `t_postreplies` VALUES ('39', '1', '0', '1', '7', 0x66666666);
INSERT INTO `t_postreplies` VALUES ('40', '1', '0', '1', '7', 0x667272727265);
INSERT INTO `t_postreplies` VALUES ('41', '0', '5', '2', '7', 0x717171717171);
INSERT INTO `t_postreplies` VALUES ('42', '0', '6', '1', '7', 0x6667676767);
INSERT INTO `t_postreplies` VALUES ('43', '10', '0', '7', '7', 0xE5AEA2E69C8D);
INSERT INTO `t_postreplies` VALUES ('44', '9', '0', '7', '7', 0x7474687265686A72657468);
INSERT INTO `t_postreplies` VALUES ('45', '0', '16', '2', '7', 0x67736567);
INSERT INTO `t_postreplies` VALUES ('46', '3', '0', '1', '7', 0xE4B8AAE592AFE595A6E592AFE595A6E592AF);
INSERT INTO `t_postreplies` VALUES ('47', '11', '0', '7', '7', 0xE68891E8AF84E8AEBAE4B880E4B88B);
INSERT INTO `t_postreplies` VALUES ('48', '0', '25', '7', '7', 0xE4BDA0E8AFB4);
INSERT INTO `t_postreplies` VALUES ('49', '3', '0', '3', '7', 0xE8B59EE8B59E);
INSERT INTO `t_postreplies` VALUES ('50', '12', '0', '15', '15', 0xE887AAE5B7B1E8AF84E8AEBAE887AAE5B7B1);
INSERT INTO `t_postreplies` VALUES ('51', '0', '2', '1', '7', 0xE59388E59388);
INSERT INTO `t_postreplies` VALUES ('52', '0', '26', '15', '7', 0xE593A6E593A6E593A6);
INSERT INTO `t_postreplies` VALUES ('53', '0', '26', '15', '7', 0xE4B880E5A986E5A986);
INSERT INTO `t_postreplies` VALUES ('54', '12', '0', '15', '7', 0xE8BF98E68B92E7BB9DE595A6E592AFE4BA86);
INSERT INTO `t_postreplies` VALUES ('55', '12', '0', '15', '7', 0x484BE683B9E680A5);
INSERT INTO `t_postreplies` VALUES ('56', '12', '0', '15', '7', 0xE5969DE88CB6E588ABE4B8AA);
INSERT INTO `t_postreplies` VALUES ('57', '12', '0', '15', '7', 0xE5969DE88CB6E588ABE4B8AA);
INSERT INTO `t_postreplies` VALUES ('58', '0', '26', '15', '7', '');
INSERT INTO `t_postreplies` VALUES ('59', '12', '0', '15', '7', '');
INSERT INTO `t_postreplies` VALUES ('60', '0', '17', '7', '7', 0xE68891E58EBB);
INSERT INTO `t_postreplies` VALUES ('61', '0', '17', '7', '7', 0xE68891E58EBB);
INSERT INTO `t_postreplies` VALUES ('62', '0', '17', '7', '7', 0xE59388E59388);
INSERT INTO `t_postreplies` VALUES ('63', '0', '17', '7', '7', 0xE597AF);
INSERT INTO `t_postreplies` VALUES ('64', '0', '17', '7', '7', 0xE59388E59388);
INSERT INTO `t_postreplies` VALUES ('65', '0', '1', '2', '1', 0x6767686768);
INSERT INTO `t_postreplies` VALUES ('66', '0', '1', '2', '1', 0x6767686768);
INSERT INTO `t_postreplies` VALUES ('67', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('68', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('69', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('70', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('71', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('72', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('73', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('74', '0', '19', '7', '1', 0xE8BF99E698AFE4BB80E4B988E59180);
INSERT INTO `t_postreplies` VALUES ('75', '0', '29', '1', '1', 0xE88081E585ACE698AFE5A4A7E4B8ABEFBC81);
INSERT INTO `t_postreplies` VALUES ('76', '0', '29', '1', '1', 0xE88081E585ACE698AFE5A4A7E4B8ABEFBC81);
INSERT INTO `t_postreplies` VALUES ('77', '15', '0', '1', '7', 0xE59388E59388);
INSERT INTO `t_postreplies` VALUES ('78', '15', '0', '1', '7', 0x6F753B3B6968673B);
INSERT INTO `t_postreplies` VALUES ('79', '15', '0', '1', '7', 0xE5A4AAE5A5BD);
INSERT INTO `t_postreplies` VALUES ('80', '1', '0', '1', '7', 0x313134);
INSERT INTO `t_postreplies` VALUES ('81', '15', '0', '1', '22', 0xE59388E59388E59388E59388E59388F09F9884);
INSERT INTO `t_postreplies` VALUES ('82', '15', '0', '1', '22', 0xE5AE9DE5AE9DE68891E4B99FE788B1E4BDA0);
INSERT INTO `t_postreplies` VALUES ('83', '1', '0', '1', '3', 0x6767);
INSERT INTO `t_postreplies` VALUES ('84', '17', '0', '1', '23', 0x6D6F6E6579);
INSERT INTO `t_postreplies` VALUES ('85', '0', '30', '23', '23', 0xE595A6E595A6E595A6);
INSERT INTO `t_postreplies` VALUES ('86', '4', '0', '2', '23', 0x313131313131313131313131);
INSERT INTO `t_postreplies` VALUES ('87', '0', '30', '23', '1', 0xE985B7);
INSERT INTO `t_postreplies` VALUES ('88', '0', '30', '23', '23', 0xE593A6E5939F);
INSERT INTO `t_postreplies` VALUES ('89', '0', '29', '1', '1', 0xE59388E59388);
INSERT INTO `t_postreplies` VALUES ('90', '17', '0', '1', '24', 0xE4BB80E4B988E68385E586B5);
INSERT INTO `t_postreplies` VALUES ('91', '15', '0', '1', '7', 0x666572774746455741);
INSERT INTO `t_postreplies` VALUES ('92', '13', '0', '7', '7', 0x46645157);
INSERT INTO `t_postreplies` VALUES ('93', '13', '0', '7', '7', 0x4146736466);
INSERT INTO `t_postreplies` VALUES ('94', '20', '0', '7', '7', 0xE585ABE782B9);
INSERT INTO `t_postreplies` VALUES ('95', '20', '0', '7', '26', 0xE6B58BE8AF95E4B88B7E);
INSERT INTO `t_postreplies` VALUES ('96', '17', '0', '1', '27', 0xE59084E8BF87E59084E8BF87E59084E8BF87E59084E8BF87E59084E8BF87E590840A);
INSERT INTO `t_postreplies` VALUES ('97', '20', '0', '7', '27', 0x0A0A0A0A0A0A0A0A);
INSERT INTO `t_postreplies` VALUES ('98', '20', '0', '7', '27', 0xE5889AE5889A);
INSERT INTO `t_postreplies` VALUES ('99', '26', '0', '33', '30', 0x6873);
INSERT INTO `t_postreplies` VALUES ('100', '30', '0', '30', '30', 0x6275E99499);
INSERT INTO `t_postreplies` VALUES ('101', '31', '0', '35', '30', 0xE58F91E4B8AAE5B08FE59C88E5AD90E8AF95E8AF95);
INSERT INTO `t_postreplies` VALUES ('102', '0', '38', '30', '35', 0xE59B9EE5A48DE38082);
INSERT INTO `t_postreplies` VALUES ('103', '30', '0', '30', '35', 0xE4B88DE38082);
INSERT INTO `t_postreplies` VALUES ('104', '35', '0', '36', '37', 0x28E298865FE2988629E4B8ADE997B4E79A84E5A6B9E7BAB8E5A5BDE69C89E788B1EFBC8CE5BCB1E5BCB1E79A84E997AEE4B88B2C313639E79A84E58FAFE4BBA5E88083E89991E4B88D);
INSERT INTO `t_postreplies` VALUES ('105', '0', '47', '38', '36', 0xE9BC8EE991ABE5958A);
INSERT INTO `t_postreplies` VALUES ('106', '35', '0', '36', '38', 0xE698AFE59180);
INSERT INTO `t_postreplies` VALUES ('107', '36', '0', '38', '39', 0xE693A6);
INSERT INTO `t_postreplies` VALUES ('108', '0', '48', '39', '38', 0xE693A6E7A59EE9A9AC);

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(10) NOT NULL auto_increment,
  `roleName` varchar(50) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '犀犀管理员');

-- ----------------------------
-- Table structure for `t_root`
-- ----------------------------
DROP TABLE IF EXISTS `t_root`;
CREATE TABLE `t_root` (
  `id` int(10) NOT NULL auto_increment,
  `roleID` int(10) NOT NULL,
  `menuID` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_root
-- ----------------------------
INSERT INTO `t_root` VALUES ('35', '1', '1');
INSERT INTO `t_root` VALUES ('36', '1', '2');
INSERT INTO `t_root` VALUES ('37', '1', '3');
INSERT INTO `t_root` VALUES ('38', '1', '4');
INSERT INTO `t_root` VALUES ('39', '1', '5');
INSERT INTO `t_root` VALUES ('40', '1', '6');
INSERT INTO `t_root` VALUES ('41', '1', '7');
INSERT INTO `t_root` VALUES ('42', '1', '8');
INSERT INTO `t_root` VALUES ('43', '1', '9');
INSERT INTO `t_root` VALUES ('44', '1', '10');
INSERT INTO `t_root` VALUES ('45', '1', '11');
INSERT INTO `t_root` VALUES ('46', '1', '12');
INSERT INTO `t_root` VALUES ('47', '1', '13');
INSERT INTO `t_root` VALUES ('48', '1', '14');

-- ----------------------------
-- Table structure for `t_sm`
-- ----------------------------
DROP TABLE IF EXISTS `t_sm`;
CREATE TABLE `t_sm` (
  `id` int(11) NOT NULL auto_increment,
  `content` longtext collate utf8_bin,
  `publishTime` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_sm
-- ----------------------------
INSERT INTO `t_sm` VALUES ('2', 0xE78A80E78A80E8AEBAE59D9BE6ACA2E8BF8EE682A8E79A84E58AA0E585A5, '2015-05-13 11:11:11');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(50) collate utf8_bin NOT NULL,
  `password` varchar(50) collate utf8_bin NOT NULL,
  `realname` varchar(50) collate utf8_bin default NULL,
  `email` varchar(50) collate utf8_bin default NULL,
  `tel` varchar(50) collate utf8_bin default NULL,
  `roleID` int(10) default NULL,
  `SA` tinyint(4) default NULL,
  `status` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '123', '系统管理员', null, null, null, '1', '0');
INSERT INTO `t_user` VALUES ('2', 'user', '123', '李', '499137774@qq.com', '15555555555', '1', '0', '0');
INSERT INTO `t_user` VALUES ('3', 'user1', '123', '张四', '555555555@qq.com', '18888888888', '1', '0', '0');

-- ----------------------------
-- Table structure for `t_xqz`
-- ----------------------------
DROP TABLE IF EXISTS `t_xqz`;
CREATE TABLE `t_xqz` (
  `id` int(10) NOT NULL auto_increment,
  `content` mediumblob,
  `publishTime` varchar(100) collate utf8_bin default NULL,
  `likeCount` int(10) default NULL,
  `dislikeCount` int(10) default NULL,
  `likeIds` longtext collate utf8_bin,
  `dislikeIds` longtext collate utf8_bin,
  `publisherID` int(10) default NULL,
  `repliesCount` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_xqz
-- ----------------------------
INSERT INTO `t_xqz` VALUES ('1', 0xE8BF99E698AFE68891E7ACACE4B880E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:04:49', '4', '2', 0x312C31352C372C3233, 0x372C3233, '2', '2');
INSERT INTO `t_xqz` VALUES ('2', 0xE8BF99E698AFE68891E7ACACE4BA8CE6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:19', '2', '3', 0x312C37, 0x312C322C37, '2', '1');
INSERT INTO `t_xqz` VALUES ('3', 0xE8BF99E698AFE68891E7ACAC33E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:22', '1', '1', 0x37, 0x37, '2', '1');
INSERT INTO `t_xqz` VALUES ('4', 0xE8BF99E698AFE68891E7ACAC33E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:24', '2', '1', 0x372C3135, 0x37, '2', null);
INSERT INTO `t_xqz` VALUES ('5', 0xE8BF99E698AFE68891E7ACAC34E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:30', '2', '1', 0x372C37, 0x37, '2', null);
INSERT INTO `t_xqz` VALUES ('6', 0xE8BF99E698AFE68891E7ACAC35E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:34', '4', '2', 0x372C372C372C37, 0x372C37, '2', '1');
INSERT INTO `t_xqz` VALUES ('7', 0xE8BF99E698AFE68891E7ACAC36E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:37', '1', '2', 0x3135, 0x372C37, '2', '4');
INSERT INTO `t_xqz` VALUES ('8', 0xE8BF99E698AFE68891E7ACAC37E6ACA1E58F91E5B08FE59C88E5AD90EFBC8CE591B5E591B5E591B5E591B5E591B5, '2015-04-18 16:05:39', '9', '2', 0x372C372C372C372C372C372C372C372C3135, 0x372C37, '2', null);
INSERT INTO `t_xqz` VALUES ('9', 0xE5B08FE59C88E5AD90E6B58BE8AF95, '2015-05-07 15:24:11', '3', '2', 0x372C372C37, 0x372C37, '7', '5');
INSERT INTO `t_xqz` VALUES ('10', 0xE5A5BDE4B8AAE592AFE595A6E592AFE4BA86, '2015-05-07 15:27:47', '4', '3', 0x372C372C31352C33, 0x372C372C33, '7', '16');
INSERT INTO `t_xqz` VALUES ('11', 0xE5B08FE5958AE5B08F, '2015-05-11 12:29:07', '1', '1', 0x37, 0x31, '7', '3');
INSERT INTO `t_xqz` VALUES ('12', 0xE68B89E79A84E58AA8, '2015-05-11 14:43:19', '1', '1', 0x3233, 0x3233, '15', '11');
INSERT INTO `t_xqz` VALUES ('13', 0xE5A5BDE4B8AAE592AFE595A6E592AFE4BA86, '2015-05-11 16:10:03', '3', '3', 0x312C372C3232, 0x372C32322C3233, '7', '19');
INSERT INTO `t_xqz` VALUES ('14', 0x676C6565E593A6E593A6, '2015-05-12 12:12:12', '1', '2', 0x37, 0x372C3233, '7', '31');
INSERT INTO `t_xqz` VALUES ('15', 0xE59388E59388, '2015-05-13 10:40:37', '2', '2', 0x32322C31, 0x312C3233, '22', '2');
INSERT INTO `t_xqz` VALUES ('16', 0xE4BB96E69DA5E592AFE691B8E691B8, '2015-05-13 14:24:10', '1', '0', 0x3233, '', '23', '2');
INSERT INTO `t_xqz` VALUES ('17', 0x616461646664616661647366407C7265736F757263652F696D6755706C6F61642F32303135303531332F696D616765737869616F7175716E7A693130333234392E6A7067, '2015-05-13 16:53:16', null, null, null, null, '7', null);
INSERT INTO `t_xqz` VALUES ('18', 0x6166647361666166407C7265736F757263652F696D6755706C6F61642F32303135303531332F696D616765737869616F7175716E7A693939333335332E6A7067, '2015-05-13 16:54:39', '1', '1', 0x37, 0x37, '7', null);
INSERT INTO `t_xqz` VALUES ('19', 0x3536713335773534367977407C7265736F757263652F696D6755706C6F61642F32303135303531332F696D616765737869616F7175716E7A693936343334322E6A7067, '2015-05-13 16:55:32', '1', '1', 0x37, 0x37, '7', '1');
INSERT INTO `t_xqz` VALUES ('20', 0x77616566776165676672, '2015-05-13 16:55:50', '1', '2', 0x37, 0x312C37, '7', '1');
INSERT INTO `t_xqz` VALUES ('21', 0xE7AD89E788B1407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693437303033352E6A7067, '2015-05-14 07:26:28', null, null, null, null, '25', null);
INSERT INTO `t_xqz` VALUES ('22', 0x6163636F6D6D6F64617465, '2015-05-14 09:56:59', '1', '1', 0x37, 0x37, '7', null);
INSERT INTO `t_xqz` VALUES ('23', 0xE58F91E696B0E58685E5AEB9407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693337353631372E6A7067, '2015-05-14 11:25:03', '2', '1', 0x372C33, 0x33, '3', '1');
INSERT INTO `t_xqz` VALUES ('24', 0xE7BE8EE699AFE593887E407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693237353934362E6A7067, '2015-05-14 12:45:22', '1', '2', 0x3236, 0x32362C3332, '26', null);
INSERT INTO `t_xqz` VALUES ('25', 0x74657374E6B58BE8AF95407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693335323636382E6A7067, '2015-05-14 13:04:12', '2', '2', 0x33382C3335, 0x33322C3338, '30', '2');
INSERT INTO `t_xqz` VALUES ('26', 0xE68891E69DA5E4BA86407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693137303934302E6A7067, '2015-05-14 13:25:47', '1', '1', 0x3333, 0x3333, '28', '1');
INSERT INTO `t_xqz` VALUES ('27', 0xE6B58BE8AF95E4B88B407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693930333033322E6A7067, '2015-05-14 13:58:01', null, null, null, null, '31', null);
INSERT INTO `t_xqz` VALUES ('28', 0xE5A4A7E99BA8E5958AE5A4A7E99BA831407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693431303831322E6A7067, '2015-05-14 14:18:00', '1', '1', 0x3338, 0x3332, '32', null);
INSERT INTO `t_xqz` VALUES ('29', 0xE88097E5AD90E5958A407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693136333839382E6A7067, '2015-05-14 14:26:46', null, null, null, null, '33', null);
INSERT INTO `t_xqz` VALUES ('30', 0xE8AF95E4B880E8AF95, '2015-05-14 14:27:37', null, null, null, null, '33', null);
INSERT INTO `t_xqz` VALUES ('31', 0xE59388E59388407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693638353732332E6A7067, '2015-05-14 14:34:34', '0', '1', '', 0x37, '1', null);
INSERT INTO `t_xqz` VALUES ('32', 0x6D6F6D656E7473407C7265736F757263652F696D6755706C6F61642F32303135303531342F696D616765737869616F7175716E7A693531353332382E6A7067, '2015-05-14 19:27:58', '1', '1', 0x3330, 0x3330, '35', '3');
INSERT INTO `t_xqz` VALUES ('34', 0xE595A6E595A6E595A6407C7265736F757263652F696D6755706C6F61642F32303135303531352F696D616765737869616F7175716E7A693330313032312E6A7067, '2015-05-15 17:09:15', '2', '2', 0x33362C3339, 0x33362C3339, '37', '3');
INSERT INTO `t_xqz` VALUES ('36', 0xE681ADE5969CE883A1E593B2E7ABA5E99E8BE68890E58A9FE689BEE588B0E6B189E5AD90EFBC81EFBC81EFBC81E6B182E59083E88AB1E794B2, '2015-05-16 20:53:27', '1', null, 0x3335, null, '38', '1');
INSERT INTO `t_xqz` VALUES ('37', 0xE883A1E593B2E4BA8CE8B4A7EFBC8CE594A7E594A7E6ADAAE6ADAAF09F9882F09F9882F09F9882, '2015-05-19 11:55:10', null, null, null, null, '41', null);
INSERT INTO `t_xqz` VALUES ('38', 0xE995BFE5BE97E8B79FE883A1E593B2E4B880E6A0B7407C7265736F757263652F696D6755706C6F61642F32303135303531392F696D616765737869616F7175716E7A693838373837392E6A7067, '2015-05-19 11:55:40', null, null, null, null, '41', null);
INSERT INTO `t_xqz` VALUES ('39', 0xE59388E59388407C7265736F757263652F696D6755706C6F61642F32303135303531392F696D616765737869616F7175716E7A693937333937362E6A7067, '2015-05-19 12:12:11', '1', '1', 0x3432, 0x3432, '42', null);

-- ----------------------------
-- Table structure for `t_xqzreplies`
-- ----------------------------
DROP TABLE IF EXISTS `t_xqzreplies`;
CREATE TABLE `t_xqzreplies` (
  `id` int(10) NOT NULL auto_increment,
  `xqzID` int(10) default NULL,
  `parentReplierID` int(10) default NULL,
  `replierID` int(10) default NULL,
  `content` mediumblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_xqzreplies
-- ----------------------------
INSERT INTO `t_xqzreplies` VALUES ('1', '1', '1', '2', 0xE68891E59CA8E4BDA0E79A84E5B08FE59C88E5AD90E59B9EE5A48DE4BA86EFBC8CE59388E59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('2', '1', '1', '2', 0xE68891E59CA8E4BDA0E79A84E5B08FE59C88E5AD90E59B9EE5A48DE4BA86EFBC8CE59388E59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('3', '10', '7', '7', '');
INSERT INTO `t_xqzreplies` VALUES ('4', '10', '7', '7', '');
INSERT INTO `t_xqzreplies` VALUES ('5', '10', '7', '7', 0xE6B682E58DA1);
INSERT INTO `t_xqzreplies` VALUES ('6', '10', '7', '7', 0xE79C8BE79C8BE592AF);
INSERT INTO `t_xqzreplies` VALUES ('7', '10', '7', '7', 0x74776FE593A6E593A6E593A64B5456);
INSERT INTO `t_xqzreplies` VALUES ('8', '10', '7', '7', 0xE592AFE58594E58594E5B0B1E698AF);
INSERT INTO `t_xqzreplies` VALUES ('9', '10', '7', '7', 0xE5BFABE68891E69C89E88BB1E8AFADE68A95E8AF89);
INSERT INTO `t_xqzreplies` VALUES ('10', '10', '7', '7', 0xE5BFABE68891E69C89E88BB1E8AFADE68A95E8AF89);
INSERT INTO `t_xqzreplies` VALUES ('11', '10', '7', '7', 0xE58FAFE7A7AFE69E81E7A7AFE69E81);
INSERT INTO `t_xqzreplies` VALUES ('12', '10', '7', '7', 0xE69DA5E592AFE5BC84);
INSERT INTO `t_xqzreplies` VALUES ('13', '10', '7', '7', 0xE59687E58FADE88AB1);
INSERT INTO `t_xqzreplies` VALUES ('14', '10', '7', '7', 0xE8AF95E59BBE);
INSERT INTO `t_xqzreplies` VALUES ('15', '10', '7', '7', 0x3135353535383838E5A4A9);
INSERT INTO `t_xqzreplies` VALUES ('16', '10', '7', '7', 0xE58EBBE592AFE593A6E593A6E593A66B6E6F776EE4BA94);
INSERT INTO `t_xqzreplies` VALUES ('17', '10', '7', '7', 0xE8BDB0E99A86E99A86);
INSERT INTO `t_xqzreplies` VALUES ('18', '2', '2', '7', 0xE699B4E7BAB6);
INSERT INTO `t_xqzreplies` VALUES ('19', '12', '15', '15', 0xE9998CE9998C);
INSERT INTO `t_xqzreplies` VALUES ('20', '12', '15', '15', 0x6461666473);
INSERT INTO `t_xqzreplies` VALUES ('21', '12', '15', '15', 0x6461666473);
INSERT INTO `t_xqzreplies` VALUES ('22', '12', '15', '15', 0xE595A6E5958A);
INSERT INTO `t_xqzreplies` VALUES ('23', '11', '7', '7', 0xE58FA4E5B7A8E59FBA);
INSERT INTO `t_xqzreplies` VALUES ('24', '12', '15', '7', 0xE58FA4E5B7A8E59FBA);
INSERT INTO `t_xqzreplies` VALUES ('25', '11', '7', '7', 0xE595A6);
INSERT INTO `t_xqzreplies` VALUES ('26', '11', '7', '7', 0xE7A9BA);
INSERT INTO `t_xqzreplies` VALUES ('27', '9', '7', '7', 0xE691B8);
INSERT INTO `t_xqzreplies` VALUES ('28', '9', '7', '7', 0xE68EA7);
INSERT INTO `t_xqzreplies` VALUES ('29', '9', '7', '7', 0xE68EA7);
INSERT INTO `t_xqzreplies` VALUES ('30', '13', '7', '7', 0xE595A6E595A6E595A6);
INSERT INTO `t_xqzreplies` VALUES ('31', '13', '7', '7', 0xE595A6E595A6E595A6);
INSERT INTO `t_xqzreplies` VALUES ('32', '13', '7', '7', 0xE88083E89991E88083E89991);
INSERT INTO `t_xqzreplies` VALUES ('33', '13', '7', '7', 0xE88083E89991E88083E89991);
INSERT INTO `t_xqzreplies` VALUES ('34', '13', '7', '7', 0xE68B96E68B89E69CBA);
INSERT INTO `t_xqzreplies` VALUES ('35', '13', '7', '7', 0xE79C8BE79C8BE592AF);
INSERT INTO `t_xqzreplies` VALUES ('36', '12', '15', '7', 0xE8ADA6E5918A);
INSERT INTO `t_xqzreplies` VALUES ('37', '12', '15', '7', 0xE68B89E587A0E4B8AA);
INSERT INTO `t_xqzreplies` VALUES ('38', '13', '7', '7', 0xE9998CE9998C);
INSERT INTO `t_xqzreplies` VALUES ('39', '13', '7', '7', 0xE9998CE9998C);
INSERT INTO `t_xqzreplies` VALUES ('40', '13', '7', '7', 0xE59997E280A6E280A6E280A6);
INSERT INTO `t_xqzreplies` VALUES ('41', '13', '7', '7', '');
INSERT INTO `t_xqzreplies` VALUES ('42', '13', '7', '7', 0xE59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('43', '13', '7', '7', 0xE5A4A9E4B88BE68891E69C89E6B581E9878FE4BA86);
INSERT INTO `t_xqzreplies` VALUES ('44', '13', '7', '7', 0xE79C8BE79C8B);
INSERT INTO `t_xqzreplies` VALUES ('45', '13', '7', '7', 0x68736A646A64);
INSERT INTO `t_xqzreplies` VALUES ('46', '13', '7', '7', 0x757375736864);
INSERT INTO `t_xqzreplies` VALUES ('47', '13', '7', '7', 0x70707070707070);
INSERT INTO `t_xqzreplies` VALUES ('48', '13', '7', '7', 0x63636363636363);
INSERT INTO `t_xqzreplies` VALUES ('49', '14', '7', '7', 0xE5A682E4BB8A);
INSERT INTO `t_xqzreplies` VALUES ('50', '14', '7', '7', 0xE586B2);
INSERT INTO `t_xqzreplies` VALUES ('51', '14', '7', '7', 0xE5A597E5BC84);
INSERT INTO `t_xqzreplies` VALUES ('52', '14', '7', '7', 0xE592AFE5BC84);
INSERT INTO `t_xqzreplies` VALUES ('53', '14', '7', '7', 0xE5AEB6E9878C);
INSERT INTO `t_xqzreplies` VALUES ('54', '14', '7', '7', 0xE595A6E592AFE595A6E592AFE595A6E592AF);
INSERT INTO `t_xqzreplies` VALUES ('55', '14', '7', '7', 0xE592AFE593A6E593A6);
INSERT INTO `t_xqzreplies` VALUES ('56', '14', '7', '7', 0xE595A6E595A6E595A6);
INSERT INTO `t_xqzreplies` VALUES ('57', '14', '7', '7', 0xE5BC80E68C82);
INSERT INTO `t_xqzreplies` VALUES ('58', '14', '7', '7', 0xE6AF95E7AB9FE4BDA0);
INSERT INTO `t_xqzreplies` VALUES ('59', '14', '7', '7', 0xE595A6E595A6E595A6E595A6);
INSERT INTO `t_xqzreplies` VALUES ('60', '14', '7', '7', 0xE4BA86E69DA5E592AFE593A6E593A6E58AAAE58A9BE592AFE88083E89991E59BBEE58594E58594E59BBEE59BBEE593A6);
INSERT INTO `t_xqzreplies` VALUES ('61', '12', '15', '7', 0xE5BC84E5B9B2);
INSERT INTO `t_xqzreplies` VALUES ('62', '12', '15', '7', 0xE59388E59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('63', '12', '15', '7', 0xE79A84);
INSERT INTO `t_xqzreplies` VALUES ('64', '10', '7', '7', 0xE59388E59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('65', '14', '7', '7', 0xE595A6E5958A);
INSERT INTO `t_xqzreplies` VALUES ('66', '14', '7', '7', 0xE595A6E5958A);
INSERT INTO `t_xqzreplies` VALUES ('67', '14', '7', '7', 0xE58FAFE7A7AFE69E81E7A7AFE69E81);
INSERT INTO `t_xqzreplies` VALUES ('68', '14', '7', '7', 0xE69DA5E8AEB2);
INSERT INTO `t_xqzreplies` VALUES ('69', '14', '7', '7', 0xE69E97E4BF8AE69DB0);
INSERT INTO `t_xqzreplies` VALUES ('70', '14', '7', '7', 0xE5A4AAE7B4AFE4BA86);
INSERT INTO `t_xqzreplies` VALUES ('71', '14', '7', '7', 0xE595A6E595A6E595A6);
INSERT INTO `t_xqzreplies` VALUES ('72', '14', '7', '7', 0xE58FAFE7A7AFE69E81E7A7AFE69E81);
INSERT INTO `t_xqzreplies` VALUES ('73', '14', '7', '7', 0xE585ABE9878CE6B29F);
INSERT INTO `t_xqzreplies` VALUES ('74', '7', '2', '7', 0xE59388E59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('75', '7', '2', '7', 0xE59388E59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('76', '6', '2', '7', 0xE5A0AA);
INSERT INTO `t_xqzreplies` VALUES ('77', '3', '2', '7', 0xE4B8AAE592AFE595A6E592AFE595A6E592AF);
INSERT INTO `t_xqzreplies` VALUES ('78', '14', '7', '7', 0xE8B596);
INSERT INTO `t_xqzreplies` VALUES ('79', '14', '7', '7', 0xE59090E4BA86E592AF);
INSERT INTO `t_xqzreplies` VALUES ('80', '14', '7', '7', 0xE58D8EE698A5);
INSERT INTO `t_xqzreplies` VALUES ('81', '14', '7', '7', 0xE585ABE782B9);
INSERT INTO `t_xqzreplies` VALUES ('82', '14', '7', '7', 0x38693675386B387235366B);
INSERT INTO `t_xqzreplies` VALUES ('83', '14', '7', '7', 0x69796F75696F);
INSERT INTO `t_xqzreplies` VALUES ('84', '14', '7', '7', 0x79666F697567746F7075);
INSERT INTO `t_xqzreplies` VALUES ('85', '13', '7', '7', 0x656579737279);
INSERT INTO `t_xqzreplies` VALUES ('86', '7', '2', '7', 0x647964797564747975);
INSERT INTO `t_xqzreplies` VALUES ('87', '7', '2', '7', 0x7273726766736467);
INSERT INTO `t_xqzreplies` VALUES ('88', '14', '7', '7', 0xE4B8AAE592AFE595A6E592AFE595A6E592AF);
INSERT INTO `t_xqzreplies` VALUES ('89', '9', '7', '7', 0xE593A6E593A6E593A6);
INSERT INTO `t_xqzreplies` VALUES ('90', '14', '7', '22', 0xE58E89E5AEB3);
INSERT INTO `t_xqzreplies` VALUES ('91', '14', '7', '22', 0xE59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('92', '15', '22', '1', 0xE59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('93', '13', '7', '1', 0xE59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('94', '15', '1', '23', 0xE698AFE59097);
INSERT INTO `t_xqzreplies` VALUES ('95', '9', '7', '23', 0x6B6D);
INSERT INTO `t_xqzreplies` VALUES ('96', '16', '23', '23', 0xE5868C);
INSERT INTO `t_xqzreplies` VALUES ('97', '16', '23', '23', 0xE59B9EE69DA5);
INSERT INTO `t_xqzreplies` VALUES ('98', '26', '28', '33', 0xE4B88DE99499E5958A);
INSERT INTO `t_xqzreplies` VALUES ('99', '25', '30', '35', 0xE8BF99E4B8AAE59BBEE698AFE9BB98E8AEA4E79A84E4B988EFBC9F);
INSERT INTO `t_xqzreplies` VALUES ('100', '25', '35', '30', 0xE8BF99E4B8AAE698AFE69C89E782B9E997AEE9A298E79A84);
INSERT INTO `t_xqzreplies` VALUES ('101', '32', '35', '30', 0xE79C8BE588B0E4BA867EE4B880E58FAAE5A4A7E99B81);
INSERT INTO `t_xqzreplies` VALUES ('102', '32', '30', '35', 0xE597AFEFBC8CE5A4A7E99B81E79A84E59BBEE698AFE68891E58F91E79A84E38082);
INSERT INTO `t_xqzreplies` VALUES ('103', '32', '35', '30', 0x6F6B);
INSERT INTO `t_xqzreplies` VALUES ('104', '12', '15', '7', 0xE4BDA0E5A6B9E5958A);
INSERT INTO `t_xqzreplies` VALUES ('105', '34', '37', '36', 0xE4B88DE99499E5958A7E);
INSERT INTO `t_xqzreplies` VALUES ('106', '35', '36', '37', 0xE58FAFE4BBA55E6F5E);
INSERT INTO `t_xqzreplies` VALUES ('107', '35', '37', '36', 0xE5A5BD);
INSERT INTO `t_xqzreplies` VALUES ('108', '35', '36', '39', 0x68616861);
INSERT INTO `t_xqzreplies` VALUES ('109', '36', '38', '38', 0xE681ADE5969CE883A1E593B2E68890E58A9FE689BEE588B0E6B189E5AD90);
INSERT INTO `t_xqzreplies` VALUES ('110', '34', '37', '39', 0xE59388);
INSERT INTO `t_xqzreplies` VALUES ('111', '34', '39', '36', 0x68616873);
INSERT INTO `t_xqzreplies` VALUES ('112', '19', '7', '7', 0x6664647367647367777361);
INSERT INTO `t_xqzreplies` VALUES ('113', '23', '3', '3', 0xE59388E59388);
INSERT INTO `t_xqzreplies` VALUES ('114', '20', '7', '7', 0x73637361);
