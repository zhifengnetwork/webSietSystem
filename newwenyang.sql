/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : newwenyang

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-18 11:20:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bangju_access
-- ----------------------------
DROP TABLE IF EXISTS `bangju_access`;
CREATE TABLE `bangju_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL DEFAULT '',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_access
-- ----------------------------
INSERT INTO `bangju_access` VALUES ('2', '1', '1', '0', '');
INSERT INTO `bangju_access` VALUES ('2', '2', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '3', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '4', '3', '3', '');
INSERT INTO `bangju_access` VALUES ('2', '5', '3', '3', '');
INSERT INTO `bangju_access` VALUES ('2', '7', '3', '3', '');
INSERT INTO `bangju_access` VALUES ('2', '11', '3', '2', '');
INSERT INTO `bangju_access` VALUES ('2', '12', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '13', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '14', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '15', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '16', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '17', '3', '3', '');
INSERT INTO `bangju_access` VALUES ('2', '18', '3', '3', '');
INSERT INTO `bangju_access` VALUES ('2', '21', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '22', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '23', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '24', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '25', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '26', '3', '2', '');
INSERT INTO `bangju_access` VALUES ('2', '27', '3', '2', '');
INSERT INTO `bangju_access` VALUES ('2', '28', '3', '2', '');
INSERT INTO `bangju_access` VALUES ('2', '30', '3', '2', '');
INSERT INTO `bangju_access` VALUES ('2', '55', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '107', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '110', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '129', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '139', '3', '12', '');
INSERT INTO `bangju_access` VALUES ('2', '145', '3', '129', '');
INSERT INTO `bangju_access` VALUES ('2', '146', '3', '129', '');
INSERT INTO `bangju_access` VALUES ('2', '147', '3', '129', '');
INSERT INTO `bangju_access` VALUES ('2', '148', '3', '129', '');
INSERT INTO `bangju_access` VALUES ('2', '149', '3', '129', '');
INSERT INTO `bangju_access` VALUES ('2', '150', '3', '129', '');
INSERT INTO `bangju_access` VALUES ('2', '151', '2', '1', '');
INSERT INTO `bangju_access` VALUES ('2', '152', '3', '151', '');
INSERT INTO `bangju_access` VALUES ('2', '153', '3', '151', '');
INSERT INTO `bangju_access` VALUES ('2', '154', '3', '151', '');
INSERT INTO `bangju_access` VALUES ('2', '155', '3', '151', '');
INSERT INTO `bangju_access` VALUES ('2', '156', '3', '151', '');
INSERT INTO `bangju_access` VALUES ('2', '157', '3', '3', '');

-- ----------------------------
-- Table structure for bangju_article
-- ----------------------------
DROP TABLE IF EXISTS `bangju_article`;
CREATE TABLE `bangju_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(80) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `readgroup` varchar(255) NOT NULL DEFAULT '',
  `readpoint` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `lang` (`id`,`lang`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_article
-- ----------------------------
INSERT INTO `bangju_article` VALUES ('28', '75', '1', 'bangju', '16161', '', '465454', '', '0', '7777777777777777777777777', '<p>\r\n	asefasdfsffffffffffff<img src=\"/Uploads/201704/590298b0edea6.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	fqerfqwefqwef\r\n</p>', 'show', '/Uploads/201704/590298b0edea6.jpg', '0', '1', '1', '', '0', '0', '/News_28.html', '53', '1493274584', '1493342400', '', '0');

-- ----------------------------
-- Table structure for bangju_attachment
-- ----------------------------
DROP TABLE IF EXISTS `bangju_attachment`;
CREATE TABLE `bangju_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` varchar(80) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_attachment
-- ----------------------------
INSERT INTO `bangju_attachment` VALUES ('3', '230', '2', '3', 'newUp.png', '/Uploads/201512/567fc608ede1c.png', '1991', 'png', '1', '0', '1', '1451214344', '127.0.0.1', '1');
INSERT INTO `bangju_attachment` VALUES ('47', '6', '2', '0', 'section-banner.jpg', '/Uploads/201609/57d77651b1e91.jpg', '115208', 'jpg', '1', '0', '1', '1473738321', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('49', '1', '20', '0', '111.jpg', '/Uploads/201609/57d7aca38e5b2.jpg', '263261', 'jpg', '1', '0', '1', '1473752227', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('50', '1', '1', '0', '111.jpg', '/Uploads/201609/57d7acb5403bd.jpg', '263261', 'jpg', '1', '0', '1', '1473752245', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('51', '1', '1', '0', '100.jpg', '/Uploads/201609/57d7ad6b8feda.jpg', '125034', 'jpg', '1', '0', '1', '1473752427', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('52', '1', '21', '21', '111.jpg', '/Uploads/201609/57d7adc076422.jpg', '124810', 'jpg', '1', '0', '1', '1473752512', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('53', '1', '21', '21', '112.jpg', '/Uploads/201609/57d7adf17a5c5.jpg', '67987', 'jpg', '1', '0', '1', '1473752561', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('54', '1', '21', '21', '113.jpg', '/Uploads/201609/57d7ae1725ae7.jpg', '91141', 'jpg', '1', '0', '1', '1473752599', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('55', '1', '22', '22', '112.png', '/Uploads/201609/57d7af4e1a660.png', '3417', 'png', '1', '0', '1', '1473752910', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('56', '1', '22', '22', '113.png', '/Uploads/201609/57d7af79e8d24.png', '3857', 'png', '1', '0', '1', '1473752953', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('57', '1', '22', '22', '114.png', '/Uploads/201609/57d7afd9163c6.png', '4951', 'png', '1', '0', '1', '1473753049', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('58', '1', '22', '22', '114.png', '/Uploads/201609/57d7aff417586.png', '4951', 'png', '1', '0', '1', '1473753076', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('59', '1', '25', '25', '100.jpg', '/Uploads/201609/57d7bd53a3317.jpg', '106191', 'jpg', '1', '1', '1', '1473756499', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('60', '1', '25', '0', '100.jpg', '/Uploads/201609/57d7bd7d8a634.jpg', '106191', 'jpg', '1', '0', '1', '1473756541', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('61', '1', '27', '0', '123.png', '/Uploads/201609/57d7bdcc5b647.png', '486625', 'png', '1', '0', '1', '1473756620', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('62', '1', '29', '0', '111.jpg', '/Uploads/201609/57d7c3e5ccfe6.jpg', '99280', 'jpg', '1', '0', '1', '1473758181', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('63', '1', '30', '0', '100.jpg', '/Uploads/201609/57d7d1a94bba9.jpg', '106191', 'jpg', '1', '0', '1', '1473761705', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('64', '1', '20', '20', 'gf.jpg', '/Uploads/201609/57e227e5e4e00.jpg', '387475', 'jpg', '1', '0', '1', '1474439141', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('65', '1', '22', '22', 'Business-license-.jpg', '/Uploads/201609/57e229a0970b3.jpg', '192521', 'jpg', '1', '0', '1', '1474439584', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('66', '1', '22', '22', 'Guizhou-peak-API-certificate-.jpg', '/Uploads/201609/57e229a1ae022.jpg', '160635', 'jpg', '1', '0', '1', '1474439585', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('67', '1', '22', '22', 'ISO9001.jpg', '/Uploads/201609/57e229a2d1e9b.jpg', '194187', 'jpg', '1', '0', '1', '1474439586', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('68', '1', '22', '22', 'ISO-Ts29001.jpg', '/Uploads/201609/57e229a3ee013.jpg', '197449', 'jpg', '1', '0', '1', '1474439587', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('69', '1', '22', '22', 'NS-1-0129.jpg', '/Uploads/201609/57e229a507cb7.jpg', '227557', 'jpg', '1', '0', '1', '1474439589', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('70', '1', '22', '22', 'Safety-production-standardization-of-three-enterpr', '/Uploads/201609/57e229a620396.jpg', '82650', 'jpg', '1', '0', '1', '1474439590', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('71', '1', '22', '22', 'Guizhou-peak-API-specification-Q1-certificate--249', '/Uploads/201609/57e229a763de7.jpg', '30152', 'jpg', '1', '0', '1', '1474439591', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('110', '230', '1', '7', 'banner02.jpg', '/Uploads/201610/57ff29b63dbfc.jpg', '75669', 'jpg', '1', '0', '1', '1476340150', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('111', '2', '1', '0', '摄图网-在阳光下的新闻.jpg', '/Uploads/201701/58732d7db355b.jpg', '130953', 'jpg', '1', '0', '1', '1483943293', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('112', '6', '2', '0', '摄图网-晚餐海鲜盛宴.jpg', '/Uploads/201701/58732fa5dda84.jpg', '161039', 'jpg', '1', '0', '1', '1483943845', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('119', '7', '25', '0', '摄图网-商务客服形象.jpg', '/Uploads/201701/587339e9ed827.jpg', '53864', 'jpg', '1', '0', '1', '1483946473', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('121', '4', '30', '0', '摄图网-海边美丽的世界.jpg', '/Uploads/201701/587344c52a3f1.jpg', '119628', 'jpg', '1', '0', '1', '1483949253', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('129', '2', '0', '0', 'lgz2_meitu_1_j9hc_meitu_1_ci9g.jpg', '/Uploads/201701/58734b7abe5fa.jpg', '189728', 'jpg', '1', '0', '1', '1483950970', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('148', '6', '2', '0', 'IMG_4506.jpg', '/Uploads/201703/58b6351e3ad5c.jpg', '76070', 'jpg', '1', '0', '1', '1488336158', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('154', '2', '1', '0', '图层-2.jpg', '/Uploads/201703/58b63ba1ee9e1.jpg', '98171', 'jpg', '1', '0', '1', '1488337825', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('155', '2', '45', '0', '摄图网-商务人士讨论开会-(1).jpg', '/Uploads/201703/58b640c09b5b6.jpg', '151904', 'jpg', '1', '0', '1', '1488339136', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('156', '1', '25', '0', '摄图网-智能生活.jpg', '/Uploads/201703/58b6686b1d939.jpg', '37351', 'jpg', '1', '0', '1', '1488349291', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('157', '2', '0', '0', 'banner-assort1.jpg', '/Uploads/201704/58e6ec915b58f.jpg', '202610', 'jpg', '1', '0', '1', '1491528849', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('158', '4', '2', '0', '图层-3.jpg', '/Uploads/201704/58e7613f8df35.jpg', '106702', 'jpg', '1', '0', '1', '1491558719', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('159', '1', '30', '0', '图层-1.jpg', '/Uploads/201704/58e884f98d444.jpg', '37406', 'jpg', '1', '0', '1', '1491633401', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('205', '6', '95', '58', 'GFC-555.png', '/Uploads/201705/59099a5c08437.png', '28426', 'png', '1', '1', '1', '1493801564', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('204', '6', '95', '57', 'GFC-333.png', '/Uploads/201705/59099a3f60591.png', '35438', 'png', '1', '1', '1', '1493801535', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('203', '6', '95', '58', 'FC-555.png', '/Uploads/201705/59099a2c0c876.png', '25128', 'png', '1', '1', '1', '1493801516', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('202', '6', '95', '59', 'FC-888.png', '/Uploads/201705/59099a1a3184e.png', '31128', 'png', '1', '1', '1', '1493801498', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('201', '6', '96', '60', 'A-986.png', '/Uploads/201705/59099a0072208.png', '39439', 'png', '1', '1', '1', '1493801472', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('200', '6', '96', '61', 'A-987.png', '/Uploads/201705/590995d015f44.png', '33252', 'png', '1', '1', '1', '1493800400', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('199', '6', '96', '62', 'A-994.png', '/Uploads/201705/590995b104895.png', '39313', 'png', '1', '1', '1', '1493800369', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('197', '6', '73', '54', '28.jpg', '/Uploads/201704/5901badcf24f6.jpg', '10877', 'jpg', '1', '1', '1', '1493285596', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('198', '2', '75', '28', 'abbg.jpg', '/Uploads/201704/590298b0edea6.jpg', '52000', 'jpg', '1', '0', '1', '1493342384', '0.0.0.0', '1');
INSERT INTO `bangju_attachment` VALUES ('206', '6', '95', '59', 'GFC-888.png', '/Uploads/201705/59099a717520e.png', '29887', 'png', '1', '1', '1', '1493801585', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('207', '6', '95', '58', 'GFC-555.png', '/Uploads/201705/59099a7f8145d.png', '28426', 'png', '1', '1', '1', '1493801599', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('208', '6', '94', '56', 'FC-555.png', '/Uploads/201705/59099a90b7c25.png', '25128', 'png', '1', '1', '1', '1493801616', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('209', '6', '94', '55', 'FC-301.png', '/Uploads/201705/59099aa421464.png', '25851', 'png', '1', '1', '1', '1493801636', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('210', '6', '94', '54', 'FC-888.png', '/Uploads/201705/59099ab54d905.png', '31128', 'png', '1', '1', '1', '1493801653', '116.22.133.219', '1');
INSERT INTO `bangju_attachment` VALUES ('211', '6', '96', '62', 'c_pic_06.png', '/Uploads/201705/590a957d6b0bd.png', '66113', 'png', '1', '0', '1', '1493865853', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('212', '6', '96', '62', 'c_pic_08.png', '/Uploads/201705/590a95824b528.png', '62116', 'png', '1', '0', '1', '1493865858', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('213', '6', '96', '62', 'c_pic_10.png', '/Uploads/201705/590a958573600.png', '69113', 'png', '1', '0', '1', '1493865861', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('214', '6', '96', '62', 'A-994A.jpg', '/Uploads/201705/590aad5028a7c.jpg', '19248', 'jpg', '1', '0', '1', '1493871952', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('215', '6', '96', '62', 'A-994B.jpg', '/Uploads/201705/590aad521212b.jpg', '11434', 'jpg', '1', '0', '1', '1493871954', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('216', '6', '96', '62', 'A-994C.jpg', '/Uploads/201705/590aad543e2fc.jpg', '16377', 'jpg', '1', '0', '1', '1493871956', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('217', '6', '96', '62', 'A-994D.jpg', '/Uploads/201705/590aad54ef4a0.jpg', '10520', 'jpg', '1', '0', '1', '1493871956', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('218', '1', '77', '77', 'GFC-888B.jpg', '/Uploads/201705/590bdd4db1cc9.jpg', '13640', 'jpg', '1', '0', '1', '1493949773', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('219', '1', '77', '77', 'GFC-888a.png', '/Uploads/201705/590bdd5f00ee9.png', '15201', 'png', '1', '0', '1', '1493949791', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('220', '1', '77', '77', 'GFC-888c.png', '/Uploads/201705/590bdd6018587.png', '7378', 'png', '1', '0', '1', '1493949792', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('221', '1', '77', '77', 'GFC-888f.png', '/Uploads/201705/590bdd6062453.png', '6315', 'png', '1', '0', '1', '1493949792', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('222', '1', '77', '77', 'GFC-888A-1.png', '/Uploads/201705/590be5d6c608c.png', '118805', 'png', '1', '0', '1', '1493951958', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('223', '1', '77', '77', '未标题-2.jpg', '/Uploads/201705/590be5e96a5d1.jpg', '18787', 'jpg', '1', '0', '1', '1493951977', '119.129.74.157', '1');
INSERT INTO `bangju_attachment` VALUES ('224', '230', '1', '7', 'banner01.jpg', '/Uploads/201705/59101012d93da.jpg', '103808', 'jpg', '1', '0', '1', '1494224914', '119.129.75.206', '1');
INSERT INTO `bangju_attachment` VALUES ('225', '230', '1', '8', 'banner02.jpg', '/Uploads/201705/5910102f82bc9.jpg', '166487', 'jpg', '1', '0', '1', '1494224943', '119.129.75.206', '1');
INSERT INTO `bangju_attachment` VALUES ('226', '230', '1', '9', 'banner03.jpg', '/Uploads/201705/591010546e2f4.jpg', '216005', 'jpg', '1', '0', '1', '1494224980', '119.129.75.206', '1');
INSERT INTO `bangju_attachment` VALUES ('228', '230', '1', '9', 'banner03（最终）_看图王.jpg', '/Uploads/201705/5913ca49a7841.jpg', '170369', 'jpg', '1', '0', '1', '1494469193', '119.129.75.224', '1');
INSERT INTO `bangju_attachment` VALUES ('229', '6', '96', '61', 'A-987A.jpg', '/Uploads/201705/59194ca465855.jpg', '15223', 'jpg', '1', '0', '1', '1494830244', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('230', '6', '96', '61', 'A-987B.jpg', '/Uploads/201705/59194ca522695.jpg', '10244', 'jpg', '1', '0', '1', '1494830245', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('231', '6', '96', '60', 'A-986A.jpg', '/Uploads/201705/59194ccf324ef.jpg', '14081', 'jpg', '1', '0', '1', '1494830287', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('232', '6', '96', '60', 'A-986B.jpg', '/Uploads/201705/59194cd27dcf0.jpg', '9266', 'jpg', '1', '0', '1', '1494830290', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('233', '6', '96', '60', 'A-986C.jpg', '/Uploads/201705/59194cd51feef.jpg', '16585', 'jpg', '1', '0', '1', '1494830293', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('234', '6', '95', '59', 'GFC-888A.jpg', '/Uploads/201705/59194d0f888aa.jpg', '21365', 'jpg', '1', '0', '1', '1494830351', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('235', '6', '95', '59', 'GFC-888B.jpg', '/Uploads/201705/59194d1241b43.jpg', '13640', 'jpg', '1', '0', '1', '1494830354', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('236', '6', '95', '59', 'GFC-888C.jpg', '/Uploads/201705/59194d12f2bf8.jpg', '16413', 'jpg', '1', '0', '1', '1494830354', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('237', '6', '95', '59', 'GFC-888E.jpg', '/Uploads/201705/59194d160a748.jpg', '11239', 'jpg', '1', '0', '1', '1494830358', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('238', '6', '95', '59', 'GFC-888F.jpg', '/Uploads/201705/59194d16a21bf.jpg', '11513', 'jpg', '1', '0', '1', '1494830358', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('239', '6', '95', '58', 'GFC-555A.jpg', '/Uploads/201705/59194da5d7d76.jpg', '13062', 'jpg', '1', '0', '1', '1494830501', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('240', '6', '95', '58', 'GFC-555B.jpg', '/Uploads/201705/59194da793979.jpg', '10181', 'jpg', '1', '0', '1', '1494830503', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('241', '6', '95', '58', 'GFC-555C.jpg', '/Uploads/201705/59194dab4f0ba.jpg', '13791', 'jpg', '1', '0', '1', '1494830507', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('242', '6', '95', '58', 'GFC-555D.jpg', '/Uploads/201705/59194dafbc6d5.jpg', '13005', 'jpg', '1', '0', '1', '1494830511', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('243', '6', '95', '58', 'GFC-555E.jpg', '/Uploads/201705/59194db19fa84.jpg', '11556', 'jpg', '1', '0', '1', '1494830513', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('244', '6', '95', '57', 'GFC-333A.jpg', '/Uploads/201705/59194dd600ceb.jpg', '15554', 'jpg', '1', '0', '1', '1494830550', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('245', '6', '95', '57', 'GFC-333B.jpg', '/Uploads/201705/59194dd7a2a21.jpg', '15546', 'jpg', '1', '0', '1', '1494830551', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('246', '6', '95', '57', 'GFC-333C.jpg', '/Uploads/201705/59194dd85a6c6.jpg', '17155', 'jpg', '1', '0', '1', '1494830552', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('247', '6', '94', '56', 'FC-555A.jpg', '/Uploads/201705/59194df01739a.jpg', '15952', 'jpg', '1', '0', '1', '1494830576', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('248', '6', '94', '56', 'FC-555B.jpg', '/Uploads/201705/59194df577f40.jpg', '27332', 'jpg', '1', '0', '1', '1494830581', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('249', '6', '94', '56', 'FC-555C.jpg', '/Uploads/201705/59194e00aae5e.jpg', '19393', 'jpg', '1', '0', '1', '1494830592', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('250', '6', '94', '56', 'FC-555D.jpg', '/Uploads/201705/59194e03ed4bf.jpg', '15048', 'jpg', '1', '0', '1', '1494830595', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('251', '6', '94', '56', 'FC-555E.jpg', '/Uploads/201705/59194e076eabb.jpg', '25066', 'jpg', '1', '0', '1', '1494830599', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('252', '6', '94', '55', 'FC-301A.jpg', '/Uploads/201705/5919529d0c471.jpg', '12123', 'jpg', '1', '0', '1', '1494831773', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('253', '6', '94', '55', 'FC-301B.jpg', '/Uploads/201705/591952a052ae1.jpg', '14306', 'jpg', '1', '0', '1', '1494831776', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('254', '6', '94', '55', 'FC-301C.jpg', '/Uploads/201705/591952a299637.jpg', '17583', 'jpg', '1', '0', '1', '1494831778', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('255', '6', '94', '55', 'FC-301D.jpg', '/Uploads/201705/591952a553fbf.jpg', '36431', 'jpg', '1', '0', '1', '1494831781', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('256', '6', '94', '54', 'FC-888A.jpg', '/Uploads/201705/59195a8cc83f7.jpg', '18904', 'jpg', '1', '0', '1', '1494833804', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('257', '6', '94', '54', 'FC-888B.jpg', '/Uploads/201705/59195a8e39b46.jpg', '24466', 'jpg', '1', '0', '1', '1494833806', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('258', '6', '94', '54', 'FC-888C.jpg', '/Uploads/201705/59195a9106852.jpg', '13666', 'jpg', '1', '0', '1', '1494833809', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('259', '6', '94', '54', 'FC-888E.jpg', '/Uploads/201705/59195a944469a.jpg', '16327', 'jpg', '1', '0', '1', '1494833812', '116.22.133.100', '1');
INSERT INTO `bangju_attachment` VALUES ('331', '6', '104', '67', 'WY-88 with planner- MAGNETIC WHITEBOARD (1).jpg', '/Uploads/201705/5927bf86aa4e1.jpg', '75208', 'jpg', '1', '0', '1', '1495777158', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('266', '6', '95', '59', 'GFC-888A-3 mobile glass board (1).jpg', '/Uploads/201705/5924f2711b1e6.jpg', '27930', 'jpg', '1', '0', '1', '1495593585', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('267', '6', '95', '59', 'GFC-888A-3 mobile glass board (2).jpg', '/Uploads/201705/5924f27187b39.jpg', '22670', 'jpg', '1', '0', '1', '1495593585', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('268', '6', '95', '59', 'GFC-888A-3 mobile glass board (3).jpg', '/Uploads/201705/5924f271bc0fe.jpg', '18254', 'jpg', '1', '0', '1', '1495593585', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('269', '6', '95', '59', 'GFC-888A-3 mobile glass board (4).jpg', '/Uploads/201705/5924f272e415e.jpg', '18345', 'jpg', '1', '0', '1', '1495593586', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('270', '6', '95', '59', 'GFC-888A-3 mobile glass board (5).jpg', '/Uploads/201705/5924f2743fe29.jpg', '20324', 'jpg', '1', '0', '1', '1495593588', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('271', '6', '102', '63', 'CAB142 notice board (1).jpg', '/Uploads/201705/5924f5e1b95b0.jpg', '42519', 'jpg', '1', '0', '1', '1495594465', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('272', '6', '102', '63', 'CAB142 notice board (2).jpg', '/Uploads/201705/5924f5e25590b.jpg', '32153', 'jpg', '1', '0', '1', '1495594466', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('273', '6', '102', '63', 'CAB142 notice board (3).jpg', '/Uploads/201705/5924f5e2928de.jpg', '32835', 'jpg', '1', '0', '1', '1495594466', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('274', '6', '102', '63', 'CAB142 notice board (4).jpg', '/Uploads/201705/5924f5e32f4ed.jpg', '30782', 'jpg', '1', '0', '1', '1495594467', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('275', '6', '102', '64', 'CB-85notice board (1).jpg', '/Uploads/201705/5924f745486e7.jpg', '31015', 'jpg', '1', '1', '1', '1495594821', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('276', '6', '102', '64', 'CB-85notice board (1).jpg', '/Uploads/201705/5924f7a4a884d.jpg', '31015', 'jpg', '1', '0', '1', '1495594916', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('277', '6', '102', '64', 'CB-85notice board (2).jpg', '/Uploads/201705/5924f7a4e860e.jpg', '20471', 'jpg', '1', '0', '1', '1495594916', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('278', '6', '96', '62', 'A-994 mobile whiteboard (2).jpg', '/Uploads/201705/5924fcfa1b42c.jpg', '25424', 'jpg', '1', '1', '1', '1495596282', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('332', '6', '104', '67', 'WY-88 with planner- MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927bf87855e8.jpg', '111653', 'jpg', '1', '0', '1', '1495777159', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('280', '6', '96', '62', 'A-994 mobile whiteboard (2).jpg', '/Uploads/201705/5924fdc224000.jpg', '25424', 'jpg', '1', '0', '1', '1495596482', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('281', '6', '96', '62', 'A-994 mobile whiteboard (1).jpg', '/Uploads/201705/5924fdc28a62a.jpg', '22859', 'jpg', '1', '0', '1', '1495596482', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('282', '6', '96', '62', 'A-994 mobile whiteboard (3).jpg', '/Uploads/201705/5924fdc2c467c.jpg', '17767', 'jpg', '1', '0', '1', '1495596482', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('283', '6', '96', '62', 'A-994 mobile whiteboard (4).jpg', '/Uploads/201705/5924fdc310b23.jpg', '17224', 'jpg', '1', '0', '1', '1495596483', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('284', '6', '96', '62', 'A-994 mobile whiteboard (2).jpg', '/Uploads/201705/5924fdf9a5396.jpg', '25424', 'jpg', '1', '1', '1', '1495596537', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('285', '6', '96', '61', 'A-987 mobile whiteboard  (1).jpg', '/Uploads/201705/592500d09e6dd.jpg', '21862', 'jpg', '1', '0', '1', '1495597264', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('286', '6', '96', '61', 'A-987 mobile whiteboard  (2).jpg', '/Uploads/201705/592500d1349ea.jpg', '16778', 'jpg', '1', '0', '1', '1495597265', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('287', '6', '96', '60', 'A-986 mobile whiteboard (1).jpg', '/Uploads/201705/59250190a9c45.jpg', '20497', 'jpg', '1', '0', '1', '1495597456', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('288', '6', '96', '60', 'A-986 mobile whiteboard (2).jpg', '/Uploads/201705/5925019145920.jpg', '15775', 'jpg', '1', '0', '1', '1495597457', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('289', '6', '96', '60', 'A-986 mobile whiteboard (3).jpg', '/Uploads/201705/5925019182925.jpg', '23017', 'jpg', '1', '0', '1', '1495597457', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('352', '230', '2', '3', 'm-indexBanner_01.jpg', '/Uploads/201708/59a3b141a079d.jpg', '157819', 'jpg', '1', '0', '3', '1503899969', '192.168.1.50', '1');
INSERT INTO `bangju_attachment` VALUES ('295', '6', '94', '54', 'FC888 MOBILE FLIP CHART EASEL (1).jpg', '/Uploads/201705/59252dd7e2652.jpg', '25447', 'jpg', '1', '0', '1', '1495608791', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('296', '6', '94', '54', 'FC888 MOBILE FLIP CHART EASEL (2).jpg', '/Uploads/201705/59252dd9ebab3.jpg', '30830', 'jpg', '1', '0', '1', '1495608793', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('297', '6', '94', '54', 'FC888 MOBILE FLIP CHART EASEL (3).jpg', '/Uploads/201705/59252dda3a0b7.jpg', '19912', 'jpg', '1', '0', '1', '1495608794', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('298', '6', '94', '54', 'FC888 MOBILE FLIP CHART EASEL (4).jpg', '/Uploads/201705/59252dda9d22e.jpg', '23373', 'jpg', '1', '0', '1', '1495608794', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('299', '6', '94', '55', 'FC301 MOBILE FLIP CHART EASEL (2).jpg', '/Uploads/201705/592530bf235b5.jpg', '21122', 'jpg', '1', '0', '1', '1495609535', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('300', '6', '94', '55', 'FC301 MOBILE FLIP CHART EASEL (3).jpg', '/Uploads/201705/592530bfa5dc5.jpg', '24389', 'jpg', '1', '0', '1', '1495609535', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('301', '6', '94', '55', 'FC301 MOBILE FLIP CHART EASEL (4).jpg', '/Uploads/201705/592530c034cf4.jpg', '19193', 'jpg', '1', '0', '1', '1495609536', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('302', '6', '94', '55', 'FC301 MOBILE FLIP CHART EASEL (5).jpg', '/Uploads/201705/592530c09febb.jpg', '42622', 'jpg', '1', '0', '1', '1495609536', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('303', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (1).jpg', '/Uploads/201705/592531e9dad2b.jpg', '22357', 'jpg', '1', '0', '1', '1495609833', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('304', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (2).jpg', '/Uploads/201705/592531ea8700a.jpg', '25942', 'jpg', '1', '0', '1', '1495609834', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('305', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (3).jpg', '/Uploads/201705/592531eac4615.jpg', '21753', 'jpg', '1', '0', '1', '1495609834', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('306', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (4).jpg', '/Uploads/201705/592531eb1bbea.jpg', '31739', 'jpg', '1', '0', '1', '1495609835', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('307', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (5).jpg', '/Uploads/201705/592531eb79fab.jpg', '33527', 'jpg', '1', '0', '1', '1495609835', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('308', '6', '95', '58', 'GFC-555 mobile glass whiteboard  (1).jpg', '/Uploads/201705/5925355903927.jpg', '19714', 'jpg', '1', '0', '1', '1495610713', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('309', '6', '95', '58', 'GFC-555 mobile glass whiteboard  (2).jpg', '/Uploads/201705/5925355999fa6.jpg', '16897', 'jpg', '1', '0', '1', '1495610713', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('310', '6', '95', '58', 'GFC-555 mobile glass whiteboard  (3).jpg', '/Uploads/201705/59253559dfcd8.jpg', '19984', 'jpg', '1', '0', '1', '1495610713', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('311', '6', '95', '58', 'GFC-555 mobile glass whiteboard  (4).jpg', '/Uploads/201705/5925355a38466.jpg', '19363', 'jpg', '1', '0', '1', '1495610714', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('312', '6', '95', '58', 'GFC-555 mobile glass whiteboard  (5).jpg', '/Uploads/201705/5925355aa0e66.jpg', '18305', 'jpg', '1', '0', '1', '1495610714', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('313', '6', '95', '57', 'GFC-333 mobile glass whiteboard  (1).jpg', '/Uploads/201705/592536d8ca169.jpg', '22969', 'jpg', '1', '0', '1', '1495611096', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('314', '6', '95', '57', 'GFC-333 mobile glass whiteboard  (2).jpg', '/Uploads/201705/592536d961c5d.jpg', '22920', 'jpg', '1', '0', '1', '1495611097', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('315', '6', '95', '57', 'GFC-333 mobile glass whiteboard  (3).jpg', '/Uploads/201705/592536d9a21b4.jpg', '24686', 'jpg', '1', '0', '1', '1495611097', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('316', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (1).jpg', '/Uploads/201705/59253e05a312b.jpg', '22357', 'jpg', '1', '0', '1', '1495612933', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('317', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (2).jpg', '/Uploads/201705/59253e06450a9.jpg', '25942', 'jpg', '1', '0', '1', '1495612934', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('318', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (3).jpg', '/Uploads/201705/59253e0682fe9.jpg', '21753', 'jpg', '1', '0', '1', '1495612934', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('319', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (4).jpg', '/Uploads/201705/59253e06d1d42.jpg', '31739', 'jpg', '1', '0', '1', '1495612934', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('320', '6', '94', '56', 'FC555 MOBILE FLIP CHART EASEL   (5).jpg', '/Uploads/201705/59253e0721aed.jpg', '33527', 'jpg', '1', '0', '1', '1495612935', '113.70.134.82', '1');
INSERT INTO `bangju_attachment` VALUES ('321', '1', '74', '74', 'wenyoung whiteboard production line.jpg', '/Uploads/201705/5926796e10f5a.jpg', '144687', 'jpg', '1', '0', '1', '1495693678', '192.154.105.114', '1');
INSERT INTO `bangju_attachment` VALUES ('322', '6', '104', '65', 'FO-97 magnetic whiteboard (1).jpg', '/Uploads/201705/5927a8ba4d019.jpg', '45454', 'jpg', '1', '0', '1', '1495771322', '113.70.215.251', '1');
INSERT INTO `bangju_attachment` VALUES ('323', '6', '104', '65', 'FO-97 magnetic whiteboard (3).jpg', '/Uploads/201705/5927a8bb2ba85.jpg', '80220', 'jpg', '1', '0', '1', '1495771323', '113.70.215.251', '1');
INSERT INTO `bangju_attachment` VALUES ('324', '6', '104', '65', 'FO-97 magnetic whiteboard (2).jpg', '/Uploads/201705/5927a8bb942dc.jpg', '34027', 'jpg', '1', '0', '1', '1495771323', '113.70.215.251', '1');
INSERT INTO `bangju_attachment` VALUES ('330', '6', '104', '66', 'WY-81 with  gliding- magnetic whiteboard  (2).jpg', '/Uploads/201705/5927bdf9a0511.jpg', '56555', 'jpg', '1', '1', '1', '1495776761', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('329', '6', '0', '0', 'WY-81 with  gliding- magnetic whiteboard  (2).jpg', '/Uploads/201705/5927bdd30d8f4.jpg', '56555', 'jpg', '1', '1', '1', '1495776723', '113.70.215.251', '0');
INSERT INTO `bangju_attachment` VALUES ('328', '6', '0', '0', 'WY-81 with  gliding- magnetic whiteboard  (1).jpg', '/Uploads/201705/5927bdc98cfe9.jpg', '65250', 'jpg', '1', '1', '1', '1495776713', '113.70.215.251', '0');
INSERT INTO `bangju_attachment` VALUES ('333', '6', '104', '67', 'WY-88 with planner- MAGNETIC WHITEBOARD (3).jpg', '/Uploads/201705/5927bf8911fe0.jpg', '54071', 'jpg', '1', '0', '1', '1495777161', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('334', '6', '104', '67', 'WY-88 with planner- MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927bf9b6dfa5.jpg', '111653', 'jpg', '1', '1', '1', '1495777179', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('335', '6', '104', '68', 'WY-95 MAGNETIC WHITEBOARD  (1).jpg', '/Uploads/201705/5927c13d21041.jpg', '38202', 'jpg', '1', '0', '1', '1495777597', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('336', '6', '104', '68', 'WY-95 MAGNETIC WHITEBOARD  (2).jpg', '/Uploads/201705/5927c13e91602.jpg', '48941', 'jpg', '1', '0', '1', '1495777598', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('337', '6', '104', '68', 'WY-95 MAGNETIC WHITEBOARD  (2).jpg', '/Uploads/201705/5927c14ed0f96.jpg', '48941', 'jpg', '1', '1', '1', '1495777614', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('338', '6', '104', '69', 'WY-99 porcelain MAGNETIC WHITEBOARD (1).jpg', '/Uploads/201705/5927c22ab5a7b.jpg', '99630', 'jpg', '1', '0', '1', '1495777834', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('339', '6', '104', '69', 'WY-99 porcelain MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927c22b74df0.jpg', '60758', 'jpg', '1', '0', '1', '1495777835', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('340', '6', '104', '69', 'WY-99 porcelain MAGNETIC WHITEBOARD (3).jpg', '/Uploads/201705/5927c22ce0e96.jpg', '45421', 'jpg', '1', '0', '1', '1495777836', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('341', '6', '104', '69', 'WY-99 porcelain MAGNETIC WHITEBOARD (4).jpg', '/Uploads/201705/5927c22e158b1.jpg', '75094', 'jpg', '1', '0', '1', '1495777838', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('342', '6', '0', '0', 'WY-99 porcelain MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927c23d419a8.jpg', '60758', 'jpg', '1', '1', '1', '1495777853', '83.217.10.126', '0');
INSERT INTO `bangju_attachment` VALUES ('343', '6', '104', '69', 'WY-99 porcelain MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927c245efc8c.jpg', '60758', 'jpg', '1', '1', '1', '1495777861', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('344', '6', '104', '70', 'WY-97 MAGNETIC WHITEBOARD (1).jpg', '/Uploads/201705/5927c3fe77ca5.jpg', '36243', 'jpg', '1', '0', '1', '1495778302', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('345', '6', '104', '70', 'WY-97 MAGNETIC WHITEBOARD (2).jpg', '/Uploads/201705/5927c3ff3e716.jpg', '51034', 'jpg', '1', '0', '1', '1495778303', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('346', '6', '104', '70', 'WY-97 MAGNETIC WHITEBOARD (3).jpg', '/Uploads/201705/5927c400e4e21.jpg', '89725', 'jpg', '1', '0', '1', '1495778304', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('347', '6', '104', '70', 'WY-97 with planner MAGNETIC WHITEBOARD.jpg', '/Uploads/201705/5927c401e3000.jpg', '87072', 'jpg', '1', '0', '1', '1495778305', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('348', '6', '104', '70', 'WY-97 with planner MAGNETIC WHITEBOARD.jpg', '/Uploads/201705/5927c411d0604.jpg', '87072', 'jpg', '1', '1', '1', '1495778321', '83.217.10.126', '1');
INSERT INTO `bangju_attachment` VALUES ('349', '1', '74', '74', 'introduction of wenyoung stationery2.jpg', '/Uploads/201705/5928f0030778e.jpg', '127536', 'jpg', '1', '0', '1', '1495855107', '113.70.215.251', '1');
INSERT INTO `bangju_attachment` VALUES ('350', '1', '0', '0', 'wenyang showroom.jpg', '/Uploads/201706/593faea04b0da.jpg', '142339', 'jpg', '1', '0', '1', '1497345696', '116.20.230.213', '0');
INSERT INTO `bangju_attachment` VALUES ('351', '1', '74', '74', 'wenyang showroom.jpg', '/Uploads/201706/593faec12ff48.jpg', '142339', 'jpg', '1', '0', '1', '1497345729', '116.20.230.213', '1');

-- ----------------------------
-- Table structure for bangju_block
-- ----------------------------
DROP TABLE IF EXISTS `bangju_block`;
CREATE TABLE `bangju_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pos` char(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_block
-- ----------------------------
INSERT INTO `bangju_block` VALUES ('1', 'inf', 'Company information', '0', '', 'Sichuan Huida through mechanical equipment manufacturing Co., Ltd. is a professional engaged in kitchen equipment, kitchen lampblack purification processing and large-scale commercial kitchen equipment R &amp; D and production enterprises');
INSERT INTO `bangju_block` VALUES ('2', 'code', 'code', '0', '', '');

-- ----------------------------
-- Table structure for bangju_case
-- ----------------------------
DROP TABLE IF EXISTS `bangju_case`;
CREATE TABLE `bangju_case` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` mediumtext NOT NULL,
  `Price` varchar(80) NOT NULL DEFAULT '',
  `document` varchar(80) NOT NULL DEFAULT '',
  `msga` text NOT NULL,
  `msgb` text NOT NULL,
  `msgc` mediumtext NOT NULL,
  `msgd` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_case
-- ----------------------------

-- ----------------------------
-- Table structure for bangju_category
-- ----------------------------
DROP TABLE IF EXISTS `bangju_category`;
CREATE TABLE `bangju_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlruleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `presentpoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chargepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repeatchargedays` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_category
-- ----------------------------
INSERT INTO `bangju_category` VALUES ('73', 'PRODUCTS', 'product', '', '0', '6', 'Product', '0', '73,94,95,96,102,104', '0', '', '', '', '1', '0', '0', '0', '', '1', '/product.html', 'list', 'show', '9', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('74', 'ABOUT US', 'about', '', '0', '1', 'Page', '0', '74', '0', ' Wenyang Stationery Manufacturing Co., Ltd profile', 'weyoung whiteboard', 'Wenyang Stationery Manufacturing Co., Ltd profile', '2', '0', '0', '0', '', '0', '/about.html', 'AboutUs', 'AboutUs', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('77', 'HIGHLIGHTS', 'Highlight', '', '0', '1', 'Page', '0', '77', '0', '', '', '', '3', '0', '0', '0', '', '0', '/Highlight.html', 'Highlight', '', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('78', 'CONTACT US', 'contact', '', '0', '1', 'Page', '0', '78', '0', '', '', '', '5', '0', '0', '0', '', '0', '/contact.html', 'contact', 'contact', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('94', 'Flip Chart Easel', 'Mobileflipcharteasel', 'product/', '73', '6', 'Product', '0,73', '94', '0', 'MOBILE FLIP CHART EASEL SERIES', 'MOBILE FLIP CHART EASEL', 'WEYOUNG MOBILE FLIP CHART EASEL PRODUCTS SERIES', '0', '0', '0', '0', '', '0', '/Mobileflipcharteasel.html', 'list', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('95', 'Glass Whiteboard', 'Mobileglassboard', 'product/', '73', '6', 'Product', '0,73', '95', '0', 'GLASS WHITEBOARD SERIES', 'MOBILE GLASS WHITEBOARD', 'WEYOUNG MOBILE GLASS WHITEBOARD SERIES', '0', '0', '0', '0', '', '0', '/Mobileglassboard.html', 'list', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('96', 'Mobile Whiteboard', 'Mobilewhiteboard', 'product/', '73', '6', 'Product', '0,73', '96', '0', 'MOBILE WHITEBOARD SERIES', 'MOBILE WHITEBOARD', 'WEYOUNG MOBILE WHITEBOARD PRODUCTS SERIES', '0', '0', '0', '0', '', '0', '/Mobilewhiteboard.html', '', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('103', 'Thanks', 'thanks', '', '0', '1', 'Page', '0', '103', '0', '', '', '', '100', '0', '0', '0', '', '0', '/thanks.html', 'thank', 'thank', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('102', 'Notice   Board', 'BulletinBoard', 'product/', '73', '6', 'Product', '0,73', '102', '0', '', '', '', '0', '0', '0', '0', '', '0', '/BulletinBoard.html', 'list', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `bangju_category` VALUES ('104', 'Magnetic Whiteboard', 'Magneticwhiteboard', 'product/', '73', '6', 'Product', '0,73', '104', '0', '', '', '', '0', '0', '0', '0', '', '0', '/Magneticwhiteboard.html', 'list', 'show', '0', '', '0', '0', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for bangju_config
-- ----------------------------
DROP TABLE IF EXISTS `bangju_config`;
CREATE TABLE `bangju_config` (
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_config
-- ----------------------------
INSERT INTO `bangju_config` VALUES ('site_name', '网站名称', '2', 'Whiteboard Manufacturer -Wenyang Stationery Manufacturing Co., Ltd.', '1');
INSERT INTO `bangju_config` VALUES ('site_url', '网站网址', '2', 'http://www.wenyangwhiteboard.com/', '1');
INSERT INTO `bangju_config` VALUES ('site_email', '站点邮箱', '2', '', '1');
INSERT INTO `bangju_config` VALUES ('seo_keywords', '关键词', '2', 'magnetic whiteboard,glass whiteboard, flip chart,notice board,bulletin board,mobile whiteboard', '1');
INSERT INTO `bangju_config` VALUES ('seo_description', '网站简介', '2', 'The biggest whiteboard manufacturer in Southern China-Wenyang stationery manufacturing Co.,Ltd.Specializing in designing and manufacturing various magnetic whiteboard,glass whiteboard, flip chart,notice board，mobile whiteboard and bulletin board. Welcome to contact our company.', '1');
INSERT INTO `bangju_config` VALUES ('mail_type', '邮件发送模式', '4', '1', '0');
INSERT INTO `bangju_config` VALUES ('mail_server', '邮件服务器', '4', '198.154.203.71', '0');
INSERT INTO `bangju_config` VALUES ('mail_port', '邮件发送端口', '4', '25', '0');
INSERT INTO `bangju_config` VALUES ('mail_from', '发件人地址', '4', 'sender@cosmoing.com', '0');
INSERT INTO `bangju_config` VALUES ('mail_auth', 'AUTH LOGIN验证', '4', '1', '0');
INSERT INTO `bangju_config` VALUES ('mail_user', '验证用户名', '4', 'sender@cosmoing.com', '0');
INSERT INTO `bangju_config` VALUES ('mail_password', '验证密码', '4', 'p-SP5CesuHuf', '0');
INSERT INTO `bangju_config` VALUES ('attach_maxsize', '允许上传附件大小', '5', '5200000', '0');
INSERT INTO `bangju_config` VALUES ('attach_allowext', '允许上传附件类型', '5', 'jpg,jpeg,gif,png,doc,docx,rar,zip,swf', '0');
INSERT INTO `bangju_config` VALUES ('watermark_enable', '是否开启图片水印', '5', '0', '0');
INSERT INTO `bangju_config` VALUES ('watemard_text', '水印文字内容', '5', '', '0');
INSERT INTO `bangju_config` VALUES ('watemard_text_size', '文字大小', '5', '18', '0');
INSERT INTO `bangju_config` VALUES ('watemard_text_color', 'watemard_text_color', '5', '#FFFFFF', '0');
INSERT INTO `bangju_config` VALUES ('watemard_text_face', '字体', '5', 'elephant.ttf', '0');
INSERT INTO `bangju_config` VALUES ('watermark_minwidth', '图片最小宽度', '5', '300', '0');
INSERT INTO `bangju_config` VALUES ('watermark_minheight', '水印最小高度', '5', '300', '0');
INSERT INTO `bangju_config` VALUES ('watermark_img', '水印图片名称', '5', 'mark.png', '0');
INSERT INTO `bangju_config` VALUES ('watermark_pct', '水印透明度', '5', '80', '0');
INSERT INTO `bangju_config` VALUES ('watermark_quality', 'JPEG 水印质量', '5', '100', '0');
INSERT INTO `bangju_config` VALUES ('watermark_pospadding', '水印边距', '5', '10', '0');
INSERT INTO `bangju_config` VALUES ('watermark_pos', '水印位置', '5', '9', '0');
INSERT INTO `bangju_config` VALUES ('PAGE_LISTROWS', '列表分页数', '6', '15', '0');
INSERT INTO `bangju_config` VALUES ('URL_MODEL', 'URL访问模式', '6', '2', '0');
INSERT INTO `bangju_config` VALUES ('URL_PATHINFO_DEPR', '参数分割符', '6', '/', '0');
INSERT INTO `bangju_config` VALUES ('URL_HTML_SUFFIX', 'URL伪静态后缀', '6', '.html', '0');
INSERT INTO `bangju_config` VALUES ('TOKEN_ON', '令牌验证', '6', '0', '0');
INSERT INTO `bangju_config` VALUES ('TOKEN_NAME', '令牌表单字段', '6', '__hash__', '0');
INSERT INTO `bangju_config` VALUES ('TMPL_CACHE_ON', '模板编译缓存', '6', '0', '0');
INSERT INTO `bangju_config` VALUES ('TMPL_CACHE_TIME', '模板缓存有效期', '6', '-1', '0');
INSERT INTO `bangju_config` VALUES ('HTML_CACHE_ON', '静态缓存', '6', '0', '0');
INSERT INTO `bangju_config` VALUES ('HTML_CACHE_TIME', '缓存有效期', '6', '60', '0');
INSERT INTO `bangju_config` VALUES ('HTML_READ_TYPE', '缓存读取方式', '6', '0', '0');
INSERT INTO `bangju_config` VALUES ('HTML_FILE_SUFFIX', '静态文件后缀', '6', '.html', '0');
INSERT INTO `bangju_config` VALUES ('ADMIN_ACCESS', 'ADMIN_ACCESS', '6', '5e2fa5274ed57f6a4b17f3d5c474c1e2', '0');
INSERT INTO `bangju_config` VALUES ('DEFAULT_THEME', '默认模板', '6', 'Default', '0');
INSERT INTO `bangju_config` VALUES ('HOME_ISHTML', '首页生成html', '6', '0', '0');
INSERT INTO `bangju_config` VALUES ('URL_URLRULE', 'URL', '6', '{$catdir}_{$id}.html|{$catdir}_{$id}-{$page}.html:::{$catdir}.html|{$catdir}-{$page}.html', '0');
INSERT INTO `bangju_config` VALUES ('DEFAULT_LANG', '默认语言', '6', 'cn', '0');
INSERT INTO `bangju_config` VALUES ('member_register', '允许新会员注册', '3', '0', '1');
INSERT INTO `bangju_config` VALUES ('member_emailcheck', '新会员注册需要邮件验证', '3', '0', '1');
INSERT INTO `bangju_config` VALUES ('member_registecheck', '新会员注册需要审核', '3', '1', '1');
INSERT INTO `bangju_config` VALUES ('member_login_verify', '注册登陆开启验证码', '3', '1', '1');
INSERT INTO `bangju_config` VALUES ('member_emailchecktpl', '邮件认证模板', '3', ' 欢迎您注册成为ainaphp用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}', '1');
INSERT INTO `bangju_config` VALUES ('member_getpwdemaitpl', '密码找回邮件内容', '3', '尊敬的用户{username}，请点击进入<a href=\"{url}\">重置密码</a>,或者将网址复制到浏览器：{url}（链接3天内有效）。<br>感谢您对本站的支持。<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　{sitename}<br>此邮件为系统自动邮件，无需回复。', '1');
INSERT INTO `bangju_config` VALUES ('LAYOUT_ON', '布局模板', '6', '1', '0');
INSERT INTO `bangju_config` VALUES ('ADMIN_VERIFY', '后台登陆验证码', '6', '1', '0');
INSERT INTO `bangju_config` VALUES ('name', '公司名称', '1', 'WENYANG STATIONERY MANUFACTURING CO., LTD', '0');
INSERT INTO `bangju_config` VALUES ('address', '公司地址', '1', 'PANCUN INDUSTRIAL PARK, WEST NANGUO ROAD, LELIU, SHUNDE, FOSHAN, GUANGDONG, CHINA', '0');
INSERT INTO `bangju_config` VALUES ('phone', '电话', '1', '0757-25666499', '0');
INSERT INTO `bangju_config` VALUES ('email', '邮箱', '1', 'adwords@cnwenyang.com', '0');
INSERT INTO `bangju_config` VALUES ('cop', '版权', '1', 'Copyright © 2017 Wenyang Stationery Manufacturing Co., Ltd. All Right Reserved', '0');
INSERT INTO `bangju_config` VALUES ('baidumap', '百度地图API', '1', '114.051616,22.61607', '0');
INSERT INTO `bangju_config` VALUES ('domestic_fax', 'domestic_fax', '1', '0757-25666399', '0');
INSERT INTO `bangju_config` VALUES ('international_market', 'international_market', '1', '86-757-25521899', '0');
INSERT INTO `bangju_config` VALUES ('international_fax', 'international_fax', '1', '86-757-25520283', '0');
INSERT INTO `bangju_config` VALUES ('domestic_market', 'Domesticmarket', '1', '0757-25666499', '0');
INSERT INTO `bangju_config` VALUES ('contact_qq', 'contact_qq', '1', '707309751/1179138714', '0');
INSERT INTO `bangju_config` VALUES ('contact_skype', 'contact_skype', '1', 'skyuwang', '0');

-- ----------------------------
-- Table structure for bangju_dbsource
-- ----------------------------
DROP TABLE IF EXISTS `bangju_dbsource`;
CREATE TABLE `bangju_dbsource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(20) NOT NULL DEFAULT '',
  `port` int(5) unsigned NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `dbtablepre` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_dbsource
-- ----------------------------

-- ----------------------------
-- Table structure for bangju_field
-- ----------------------------
DROP TABLE IF EXISTS `bangju_field`;
CREATE TABLE `bangju_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_field
-- ----------------------------
INSERT INTO `bangju_field` VALUES ('1', '1', 'title', '标题', '', '1', '3', '80', '', '标题必填3-80个字', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'0\',\n  \'size\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('2', '1', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('3', '1', 'description', 'SEO简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'56\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('4', '1', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'jpg,jpeg,gif,doc,rar,zip,xls\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('5', '2', 'catid', '栏目', '', '1', '1', '6', 'digits', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('6', '2', 'title', '标题', '', '1', '0', '0', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('7', '2', 'keywords', '关键词', '', '0', '0', '0', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('8', '2', 'description', 'SEO简介', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'56\',\n  \'default\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('9', '2', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'show_add_description\' => \'1\',\n  \'show_auto_thumb\' => \'1\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('10', '2', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('11', '2', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '3,4', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('12', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('13', '2', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('14', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'\',\n)', '1', '', '0', '0', '0');
INSERT INTO `bangju_field` VALUES ('15', '3', 'name', '网站名称', '', '1', '2', '50', '', '', '', 'text', 'array (\n  \'size\' => \'40\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '1', '1', '0');
INSERT INTO `bangju_field` VALUES ('16', '3', 'logo', '网站LOGO', '', '0', '0', '0', '', '', '', 'image', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'upload_maxsize\' => \'\',\n  \'upload_allowext\' => \'jpg,jpeg,gif,png\',\n  \'watermark\' => \'0\',\n  \'more\' => \'0\',\n)', '1', '', '2', '1', '0');
INSERT INTO `bangju_field` VALUES ('17', '3', 'siteurl', '网站地址', '', '1', '10', '150', 'url', '', '', 'text', 'array (\n  \'size\' => \'50\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '0');
INSERT INTO `bangju_field` VALUES ('18', '3', 'typeid', '友情链接分类', '', '0', '0', '0', '', '', '', 'typeid', 'array (\n  \'inputtype\' => \'select\',\n  \'fieldtype\' => \'smallint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('19', '3', 'linktype', '链接类型', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'文字链接|1\r\nLOGO链接|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'1\',\n)', '1', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('20', '3', 'siteinfo', '站点简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'3\',\n  \'cols\' => \'60\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '0');
INSERT INTO `bangju_field` VALUES ('21', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('22', '4', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('23', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `bangju_field` VALUES ('24', '4', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `bangju_field` VALUES ('25', '4', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `bangju_field` VALUES ('26', '4', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `bangju_field` VALUES ('27', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `bangju_field` VALUES ('28', '4', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `bangju_field` VALUES ('29', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `bangju_field` VALUES ('30', '4', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `bangju_field` VALUES ('31', '5', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('32', '5', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('33', '5', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `bangju_field` VALUES ('34', '5', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `bangju_field` VALUES ('35', '5', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '10', '1', '1');
INSERT INTO `bangju_field` VALUES ('36', '5', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `bangju_field` VALUES ('37', '5', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `bangju_field` VALUES ('38', '5', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `bangju_field` VALUES ('39', '5', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `bangju_field` VALUES ('40', '5', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `bangju_field` VALUES ('41', '4', 'pic', '多图', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxnum\\\' => \\\'20\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',\n  \\\'watermark\\\' => \\\'0\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '9', '1', '0');
INSERT INTO `bangju_field` VALUES ('42', '6', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('43', '6', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '0', '1', '1');
INSERT INTO `bangju_field` VALUES ('44', '6', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '2', '1', '1');
INSERT INTO `bangju_field` VALUES ('45', '6', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '3', '1', '1');
INSERT INTO `bangju_field` VALUES ('46', '6', 'content', '内容', '', '0', '0', '0', '', '', '', 'editor', 'array (\n  \'toolbar\' => \'full\',\n  \'default\' => \'\',\n  \'height\' => \'\',\n  \'showpage\' => \'1\',\n  \'enablekeylink\' => \'0\',\n  \'replacenum\' => \'\',\n  \'enablesaveimage\' => \'0\',\n  \'flashupload\' => \'1\',\n  \'alowuploadexts\' => \'\',\n)', '1', '', '5', '1', '1');
INSERT INTO `bangju_field` VALUES ('47', '6', 'createtime', '发布时间', '', '0', '0', '0', '', '', '', 'datetime', '', '1', '3,4', '93', '1', '1');
INSERT INTO `bangju_field` VALUES ('48', '6', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '3,4', '93', '0', '0');
INSERT INTO `bangju_field` VALUES ('49', '6', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '97', '1', '1');
INSERT INTO `bangju_field` VALUES ('50', '6', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '3,4', '98', '1', '1');
INSERT INTO `bangju_field` VALUES ('51', '6', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '3,4', '99', '1', '1');
INSERT INTO `bangju_field` VALUES ('54', '6', 'pic', '多图', '', '0', '0', '0', '0', '', '', 'images', 'array (\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxnum\\\' => \\\'20\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'jpg,jpeg,gif,png\\\',\n  \\\'watermark\\\' => \\\'0\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '11', '1', '0');
INSERT INTO `bangju_field` VALUES ('55', '6', 'Price', '价格文件下载', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '12', '1', '0');
INSERT INTO `bangju_field` VALUES ('56', '6', 'document', '相关技术信息和下载PDF文档', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '13', '1', '0');
INSERT INTO `bangju_field` VALUES ('57', '4', 'Price', '价格文件下载', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '11', '1', '0');
INSERT INTO `bangju_field` VALUES ('58', '4', 'document', '相关技术信息和下载PDF文档', '', '0', '0', '0', '0', '', '', 'file', 'array (\n  \\\'size\\\' => \\\'30\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'upload_maxsize\\\' => \\\'20\\\',\n  \\\'upload_allowext\\\' => \\\'zip,rar,doc,ppt\\\',\n  \\\'more\\\' => \\\'0\\\',\n)', '0', '', '12', '1', '0');
INSERT INTO `bangju_field` VALUES ('59', '7', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `bangju_field` VALUES ('60', '7', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `bangju_field` VALUES ('61', '7', 'name', 'Name', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('62', '7', 'com', 'Company', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '0', '0');
INSERT INTO `bangju_field` VALUES ('63', '7', 'phone', 'Phone', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('64', '7', 'email', 'Email', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \'size\' => \'30\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('67', '7', 'message', 'message', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'mediumtext\\\',\n  \\\'rows\\\' => \\\'10\\\',\n  \\\'cols\\\' => \\\'150\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('71', '5', 'address', 'address', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('72', '5', 'phone', 'phone', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('73', '5', 'fax', 'fax', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('74', '5', 'email', 'email', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('92', '6', 'available_two', 'AVAILABLE2', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'kindeditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'0\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '7', '1', '0');
INSERT INTO `bangju_field` VALUES ('81', '4', 'msga', '介绍1-msga', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'text\\\',\n  \\\'rows\\\' => \\\'\\\',\n  \\\'cols\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('82', '4', 'msgb', '介绍2-msgb', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'text\\\',\n  \\\'rows\\\' => \\\'\\\',\n  \\\'cols\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('83', '4', 'msgc', '介绍3-msgc', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'mediumtext\\\',\n  \\\'rows\\\' => \\\'\\\',\n  \\\'cols\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('84', '4', 'msgd', '介绍4-msgd', '', '0', '0', '0', '0', '', '', 'textarea', 'array (\n  \\\'fieldtype\\\' => \\\'text\\\',\n  \\\'rows\\\' => \\\'\\\',\n  \\\'cols\\\' => \\\'\\\',\n  \\\'default\\\' => \\\'\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('91', '6', 'available_one', 'AVAILABLE1', '', '0', '0', '0', '0', '', '', 'editor', 'array (\n  \\\'edittype\\\' => \\\'kindeditor\\\',\n  \\\'toolbar\\\' => \\\'full\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'height\\\' => \\\'\\\',\n  \\\'show_add_description\\\' => \\\'0\\\',\n  \\\'show_auto_thumb\\\' => \\\'0\\\',\n  \\\'showpage\\\' => \\\'0\\\',\n  \\\'enablekeylink\\\' => \\\'0\\\',\n  \\\'replacenum\\\' => \\\'\\\',\n  \\\'enablesaveimage\\\' => \\\'0\\\',\n  \\\'flashupload\\\' => \\\'0\\\',\n  \\\'alowuploadexts\\\' => \\\'\\\',\n  \\\'alowuploadlimit\\\' => \\\'\\\',\n)', '0', '', '6', '1', '0');
INSERT INTO `bangju_field` VALUES ('93', '7', 'title', '主题', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('94', '8', 'createtime', '发布时间', '', '1', '0', '0', '', '', '', 'datetime', '', '0', '3,4', '93', '1', '1');
INSERT INTO `bangju_field` VALUES ('95', '8', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'已审核|1\r\n未审核|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '3,4', '99', '1', '1');
INSERT INTO `bangju_field` VALUES ('96', '8', 'title', '推送邮箱', '', '1', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');
INSERT INTO `bangju_field` VALUES ('97', '8', 'remark', '备注', '', '0', '0', '0', '0', '', '', 'text', 'array (\n  \\\'size\\\' => \\\'55\\\',\n  \\\'default\\\' => \\\'\\\',\n  \\\'ispassword\\\' => \\\'0\\\',\n  \\\'fieldtype\\\' => \\\'varchar\\\',\n)', '0', '', '0', '1', '0');

-- ----------------------------
-- Table structure for bangju_jobs
-- ----------------------------
DROP TABLE IF EXISTS `bangju_jobs`;
CREATE TABLE `bangju_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for bangju_lang
-- ----------------------------
DROP TABLE IF EXISTS `bangju_lang`;
CREATE TABLE `bangju_lang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `path` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_lang
-- ----------------------------
INSERT INTO `bangju_lang` VALUES ('1', '中文', 'cn', 'cn.gif', '1', '', '', '1');

-- ----------------------------
-- Table structure for bangju_link
-- ----------------------------
DROP TABLE IF EXISTS `bangju_link`;
CREATE TABLE `bangju_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `siteurl` varchar(150) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `siteinfo` mediumtext NOT NULL,
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_link
-- ----------------------------

-- ----------------------------
-- Table structure for bangju_log
-- ----------------------------
DROP TABLE IF EXISTS `bangju_log`;
CREATE TABLE `bangju_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_log
-- ----------------------------
INSERT INTO `bangju_log` VALUES ('1', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450701192');
INSERT INTO `bangju_log` VALUES ('2', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450705466');
INSERT INTO `bangju_log` VALUES ('3', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450749004');
INSERT INTO `bangju_log` VALUES ('4', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450750665');
INSERT INTO `bangju_log` VALUES ('5', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450767830');
INSERT INTO `bangju_log` VALUES ('6', '1', '0', 'sadf', '密码错误:fasdf', '127.0.0.1', '1450773790');
INSERT INTO `bangju_log` VALUES ('7', '1', '0', '234', '密码错误:234', '127.0.0.1', '1450773867');
INSERT INTO `bangju_log` VALUES ('8', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450773874');
INSERT INTO `bangju_log` VALUES ('9', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450854552');
INSERT INTO `bangju_log` VALUES ('10', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1450865717');
INSERT INTO `bangju_log` VALUES ('11', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451007941');
INSERT INTO `bangju_log` VALUES ('12', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451212241');
INSERT INTO `bangju_log` VALUES ('13', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451356792');
INSERT INTO `bangju_log` VALUES ('14', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451382086');
INSERT INTO `bangju_log` VALUES ('15', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451384195');
INSERT INTO `bangju_log` VALUES ('16', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451384399');
INSERT INTO `bangju_log` VALUES ('17', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451909513');
INSERT INTO `bangju_log` VALUES ('18', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451961806');
INSERT INTO `bangju_log` VALUES ('19', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1451981779');
INSERT INTO `bangju_log` VALUES ('20', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452262503');
INSERT INTO `bangju_log` VALUES ('21', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452275566');
INSERT INTO `bangju_log` VALUES ('22', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452275824');
INSERT INTO `bangju_log` VALUES ('23', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452341998');
INSERT INTO `bangju_log` VALUES ('24', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452507485');
INSERT INTO `bangju_log` VALUES ('25', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452601733');
INSERT INTO `bangju_log` VALUES ('26', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1452827734');
INSERT INTO `bangju_log` VALUES ('27', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1453090503');
INSERT INTO `bangju_log` VALUES ('28', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1453110123');
INSERT INTO `bangju_log` VALUES ('29', '0', '0', 'bangju', '登录成功', '127.0.0.1', '1462342323');
INSERT INTO `bangju_log` VALUES ('30', '0', '0', 'bangju', '登录成功', '14.145.146.253', '1462368000');
INSERT INTO `bangju_log` VALUES ('31', '1', '0', 'bangju', '密码错误:bangu', '14.145.146.2', '1462442517');
INSERT INTO `bangju_log` VALUES ('32', '0', '0', 'bangju', '登录成功', '14.145.146.2', '1462442521');
INSERT INTO `bangju_log` VALUES ('33', '0', '0', 'bangju', '登录成功', '14.145.146.2', '1462444159');
INSERT INTO `bangju_log` VALUES ('34', '0', '0', 'bangju', '登录成功', '14.145.134.40', '1462530642');
INSERT INTO `bangju_log` VALUES ('35', '0', '0', 'bangju', '登录成功', '14.145.134.40', '1462531157');
INSERT INTO `bangju_log` VALUES ('36', '0', '0', 'bangju', '登录成功', '183.234.61.148', '1465262839');
INSERT INTO `bangju_log` VALUES ('37', '0', '0', 'bangju', '登录成功', '183.234.61.148', '1465715738');
INSERT INTO `bangju_log` VALUES ('38', '0', '0', 'bangju', '登录成功', '119.131.153.7', '1465744788');
INSERT INTO `bangju_log` VALUES ('39', '0', '0', 'bangju', '登录成功', '119.131.152.203', '1467823865');
INSERT INTO `bangju_log` VALUES ('40', '1', '0', 'bangju', '密码错误:bagnju', '59.41.65.93', '1467863975');
INSERT INTO `bangju_log` VALUES ('41', '0', '0', 'bangju', '登录成功', '59.41.65.93', '1467863982');
INSERT INTO `bangju_log` VALUES ('42', '0', '0', 'bangju', '登录成功', '59.41.65.93', '1467881934');
INSERT INTO `bangju_log` VALUES ('43', '1', '0', 'bangju', '密码错误:bagnju', '59.41.65.93', '1467887297');
INSERT INTO `bangju_log` VALUES ('44', '0', '0', 'bangju', '登录成功', '59.41.65.93', '1467887300');
INSERT INTO `bangju_log` VALUES ('45', '0', '0', 'bangju', '登录成功', '119.131.152.171', '1468207787');
INSERT INTO `bangju_log` VALUES ('46', '0', '0', 'bangju', '登录成功', '183.234.61.148', '1468297089');
INSERT INTO `bangju_log` VALUES ('47', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1473737291');
INSERT INTO `bangju_log` VALUES ('48', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1473751685');
INSERT INTO `bangju_log` VALUES ('49', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1473758329');
INSERT INTO `bangju_log` VALUES ('50', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1473816339');
INSERT INTO `bangju_log` VALUES ('51', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1474436181');
INSERT INTO `bangju_log` VALUES ('52', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1474506282');
INSERT INTO `bangju_log` VALUES ('53', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1476326979');
INSERT INTO `bangju_log` VALUES ('54', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1476328524');
INSERT INTO `bangju_log` VALUES ('55', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1476344836');
INSERT INTO `bangju_log` VALUES ('56', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1488421856');
INSERT INTO `bangju_log` VALUES ('57', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1491528164');
INSERT INTO `bangju_log` VALUES ('58', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1491619217');
INSERT INTO `bangju_log` VALUES ('59', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1491786581');
INSERT INTO `bangju_log` VALUES ('60', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1491873748');
INSERT INTO `bangju_log` VALUES ('61', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1491985284');
INSERT INTO `bangju_log` VALUES ('62', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1492493342');
INSERT INTO `bangju_log` VALUES ('63', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1492565687');
INSERT INTO `bangju_log` VALUES ('64', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1493004516');
INSERT INTO `bangju_log` VALUES ('65', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1493004547');
INSERT INTO `bangju_log` VALUES ('66', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1493084286');
INSERT INTO `bangju_log` VALUES ('67', '0', '0', 'bangju', '登录成功', '0.0.0.0', '1493115985');
INSERT INTO `bangju_log` VALUES ('68', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493690625');
INSERT INTO `bangju_log` VALUES ('69', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493691504');
INSERT INTO `bangju_log` VALUES ('70', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493691549');
INSERT INTO `bangju_log` VALUES ('71', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493693457');
INSERT INTO `bangju_log` VALUES ('72', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493705183');
INSERT INTO `bangju_log` VALUES ('73', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493707150');
INSERT INTO `bangju_log` VALUES ('74', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493720537');
INSERT INTO `bangju_log` VALUES ('75', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493778385');
INSERT INTO `bangju_log` VALUES ('76', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493779362');
INSERT INTO `bangju_log` VALUES ('77', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493785110');
INSERT INTO `bangju_log` VALUES ('78', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493791998');
INSERT INTO `bangju_log` VALUES ('79', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493792986');
INSERT INTO `bangju_log` VALUES ('80', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493800092');
INSERT INTO `bangju_log` VALUES ('81', '0', '0', 'bangju', '登录成功', '116.22.133.219', '1493800546');
INSERT INTO `bangju_log` VALUES ('82', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493860489');
INSERT INTO `bangju_log` VALUES ('83', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493868853');
INSERT INTO `bangju_log` VALUES ('84', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493881713');
INSERT INTO `bangju_log` VALUES ('85', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493886780');
INSERT INTO `bangju_log` VALUES ('86', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493893088');
INSERT INTO `bangju_log` VALUES ('87', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493947273');
INSERT INTO `bangju_log` VALUES ('88', '0', '0', 'bangju', '登录成功', '119.129.74.157', '1493969546');
INSERT INTO `bangju_log` VALUES ('89', '0', '0', 'bangju', '登录成功', '119.129.75.206', '1494224497');
INSERT INTO `bangju_log` VALUES ('90', '0', '0', 'bangju', '登录成功', '119.129.75.206', '1494224601');
INSERT INTO `bangju_log` VALUES ('91', '0', '0', 'bangju', '登录成功', '119.129.75.206', '1494225466');
INSERT INTO `bangju_log` VALUES ('92', '0', '0', 'bangju', '登录成功', '119.129.75.206', '1494229288');
INSERT INTO `bangju_log` VALUES ('93', '0', '0', 'bangju', '登录成功', '119.129.75.206', '1494312031');
INSERT INTO `bangju_log` VALUES ('94', '0', '0', 'bangju', '登录成功', '119.129.75.206', '1494326296');
INSERT INTO `bangju_log` VALUES ('95', '0', '0', 'bangju', '登录成功', '119.129.75.224', '1494469150');
INSERT INTO `bangju_log` VALUES ('96', '0', '0', 'bangju', '登录成功', '119.129.75.224', '1494475809');
INSERT INTO `bangju_log` VALUES ('97', '0', '0', 'bangju', '登录成功', '119.129.75.224', '1494476786');
INSERT INTO `bangju_log` VALUES ('98', '0', '0', 'bangju', '登录成功', '119.129.75.224', '1494485659');
INSERT INTO `bangju_log` VALUES ('99', '0', '0', 'bangju', '登录成功', '119.129.75.224', '1494486045');
INSERT INTO `bangju_log` VALUES ('100', '0', '0', 'bangju', '登录成功', '118.248.238.169', '1494553860');
INSERT INTO `bangju_log` VALUES ('101', '0', '0', 'bangju', '登录成功', '118.248.238.169', '1494553867');
INSERT INTO `bangju_log` VALUES ('102', '0', '0', 'bangju', '登录成功', '118.248.238.169', '1494553884');
INSERT INTO `bangju_log` VALUES ('103', '0', '0', 'bangju', '登录成功', '118.248.238.169', '1494554246');
INSERT INTO `bangju_log` VALUES ('104', '0', '0', 'bangju', '登录成功', '118.248.238.169', '1494554438');
INSERT INTO `bangju_log` VALUES ('105', '0', '0', 'bangju', '登录成功', '119.129.75.35', '1494554733');
INSERT INTO `bangju_log` VALUES ('106', '0', '0', 'bangju', '登录成功', '116.22.133.100', '1494822067');
INSERT INTO `bangju_log` VALUES ('107', '0', '0', 'bangju', '登录成功', '116.22.133.100', '1494828367');
INSERT INTO `bangju_log` VALUES ('108', '0', '0', 'bangju', '登录成功', '116.22.133.100', '1494829164');
INSERT INTO `bangju_log` VALUES ('109', '0', '0', 'bangju', '登录成功', '116.22.133.89', '1494904984');
INSERT INTO `bangju_log` VALUES ('110', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495432763');
INSERT INTO `bangju_log` VALUES ('111', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495440958');
INSERT INTO `bangju_log` VALUES ('112', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495441624');
INSERT INTO `bangju_log` VALUES ('113', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495441628');
INSERT INTO `bangju_log` VALUES ('114', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495441898');
INSERT INTO `bangju_log` VALUES ('115', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495442295');
INSERT INTO `bangju_log` VALUES ('116', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495448668');
INSERT INTO `bangju_log` VALUES ('117', '0', '0', 'bangju', '登录成功', '113.70.133.184', '1495510860');
INSERT INTO `bangju_log` VALUES ('118', '1', '0', 'bangju', '密码错误:banmgju', '67.229.156.42', '1495511290');
INSERT INTO `bangju_log` VALUES ('119', '1', '0', 'bangju', '密码错误:banmgju', '67.229.156.42', '1495511297');
INSERT INTO `bangju_log` VALUES ('120', '0', '0', 'bangju', '登录成功', '67.229.156.42', '1495511306');
INSERT INTO `bangju_log` VALUES ('121', '0', '0', 'bangju', '登录成功', '113.70.133.166', '1495536628');
INSERT INTO `bangju_log` VALUES ('122', '0', '0', 'bangju', '登录成功', '113.70.133.166', '1495537592');
INSERT INTO `bangju_log` VALUES ('123', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495589396');
INSERT INTO `bangju_log` VALUES ('124', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495591767');
INSERT INTO `bangju_log` VALUES ('125', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495596727');
INSERT INTO `bangju_log` VALUES ('126', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495604410');
INSERT INTO `bangju_log` VALUES ('127', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495607109');
INSERT INTO `bangju_log` VALUES ('128', '1', '0', 'bangju', '密码错误:bangjuy', '113.70.134.82', '1495607727');
INSERT INTO `bangju_log` VALUES ('129', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495607733');
INSERT INTO `bangju_log` VALUES ('130', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495609759');
INSERT INTO `bangju_log` VALUES ('131', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495611274');
INSERT INTO `bangju_log` VALUES ('132', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495611718');
INSERT INTO `bangju_log` VALUES ('133', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495617722');
INSERT INTO `bangju_log` VALUES ('134', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495618235');
INSERT INTO `bangju_log` VALUES ('135', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495618318');
INSERT INTO `bangju_log` VALUES ('136', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495618459');
INSERT INTO `bangju_log` VALUES ('137', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495619366');
INSERT INTO `bangju_log` VALUES ('138', '1', '0', 'bangju', '密码错误:vbangju', '113.70.134.82', '1495619737');
INSERT INTO `bangju_log` VALUES ('139', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495619744');
INSERT INTO `bangju_log` VALUES ('140', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495681210');
INSERT INTO `bangju_log` VALUES ('141', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495681508');
INSERT INTO `bangju_log` VALUES ('142', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495681849');
INSERT INTO `bangju_log` VALUES ('143', '0', '0', 'bangju', '登录成功', '113.70.134.82', '1495682568');
INSERT INTO `bangju_log` VALUES ('144', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495692420');
INSERT INTO `bangju_log` VALUES ('145', '0', '0', 'bangju', '登录成功', '192.154.105.114', '1495693559');
INSERT INTO `bangju_log` VALUES ('146', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495770178');
INSERT INTO `bangju_log` VALUES ('147', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495791581');
INSERT INTO `bangju_log` VALUES ('148', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495791898');
INSERT INTO `bangju_log` VALUES ('149', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495794962');
INSERT INTO `bangju_log` VALUES ('150', '1', '0', 'bangju16', '密码错误:bangju', '116.21.121.57', '1495810181');
INSERT INTO `bangju_log` VALUES ('151', '0', '0', 'bangju', '登录成功', '116.21.121.57', '1495810186');
INSERT INTO `bangju_log` VALUES ('152', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495847726');
INSERT INTO `bangju_log` VALUES ('153', '0', '0', 'bangju', '登录成功', '113.70.215.251', '1495855058');
INSERT INTO `bangju_log` VALUES ('154', '0', '0', 'bangju', '登录成功', '113.70.215.173', '1496303333');
INSERT INTO `bangju_log` VALUES ('155', '0', '0', 'bangju', '登录成功', '113.65.130.93', '1496914934');
INSERT INTO `bangju_log` VALUES ('156', '0', '0', 'bangju', '登录成功', '172.80.118.52', '1496915423');
INSERT INTO `bangju_log` VALUES ('157', '0', '0', 'bangju', '登录成功', '172.80.118.52', '1496915423');
INSERT INTO `bangju_log` VALUES ('158', '0', '0', 'bangju', '登录成功', '172.80.118.52', '1496915424');
INSERT INTO `bangju_log` VALUES ('159', '0', '0', 'bangju', '登录成功', '116.20.228.177', '1496975207');
INSERT INTO `bangju_log` VALUES ('160', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497337626');
INSERT INTO `bangju_log` VALUES ('161', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497340157');
INSERT INTO `bangju_log` VALUES ('162', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497340953');
INSERT INTO `bangju_log` VALUES ('163', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497345339');
INSERT INTO `bangju_log` VALUES ('164', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497417685');
INSERT INTO `bangju_log` VALUES ('165', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497492720');
INSERT INTO `bangju_log` VALUES ('166', '0', '0', 'bangju', '登录成功', '116.20.230.213', '1497493128');
INSERT INTO `bangju_log` VALUES ('167', '0', '0', 'bangju', '登录成功', '58.62.93.76', '1497788951');
INSERT INTO `bangju_log` VALUES ('168', '0', '0', 'bangju', '登录成功', '59.41.118.42', '1497852295');
INSERT INTO `bangju_log` VALUES ('169', '0', '0', 'bangju', '登录成功', '116.20.230.6', '1497919927');
INSERT INTO `bangju_log` VALUES ('170', '0', '0', 'bangju', '登录成功', '116.20.228.45', '1499307266');
INSERT INTO `bangju_log` VALUES ('171', '0', '0', 'bangju', '登录成功', '58.62.93.125', '1500470003');
INSERT INTO `bangju_log` VALUES ('172', '1', '0', 'admin', '密码错误:admin', '113.105.10.41', '1500826939');
INSERT INTO `bangju_log` VALUES ('173', '0', '0', 'bangju', '登录成功', '218.19.113.167', '1501041245');
INSERT INTO `bangju_log` VALUES ('174', '0', '0', 'bangju', '登录成功', '113.70.213.22', '1502675162');
INSERT INTO `bangju_log` VALUES ('175', '0', '0', 'bangju', '登录成功', '113.70.213.22', '1502676507');
INSERT INTO `bangju_log` VALUES ('176', '1', '0', 'admin', '密码错误:admin123!@#', '218.19.113.128', '1502861959');
INSERT INTO `bangju_log` VALUES ('177', '1', '0', 'admin', '密码错误:admin', '218.19.113.128', '1502861965');
INSERT INTO `bangju_log` VALUES ('178', '1', '0', 'admin', '密码错误:admin123！@#', '218.19.113.128', '1502861981');
INSERT INTO `bangju_log` VALUES ('179', '1', '0', 'admin', '密码错误:admin123！@#', '218.19.113.128', '1502861982');
INSERT INTO `bangju_log` VALUES ('180', '1', '0', 'admin', '密码错误:admin123！@#', '218.19.113.128', '1502861989');
INSERT INTO `bangju_log` VALUES ('181', '1', '0', 'admin', '密码错误:admin', '14.30.131.57', '1502868640');
INSERT INTO `bangju_log` VALUES ('182', '1', '0', 'admin', '密码错误:admin123!@3', '122.97.176.27', '1502869758');
INSERT INTO `bangju_log` VALUES ('183', '1', '0', 'admin', '密码错误:admin123!@#', '122.97.176.27', '1502869770');
INSERT INTO `bangju_log` VALUES ('184', '1', '0', 'admin', '密码错误:admin', '122.97.176.27', '1502869776');
INSERT INTO `bangju_log` VALUES ('185', '0', '0', 'bangju', '登录成功', '122.97.176.27', '1502869785');
INSERT INTO `bangju_log` VALUES ('186', '0', '0', 'admin', '登录成功', '58.62.92.7', '1503154331');
INSERT INTO `bangju_log` VALUES ('187', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.197', '1503651757');
INSERT INTO `bangju_log` VALUES ('188', '1', '0', 'bangju', '密码错误:bangju', '192.168.1.50', '1503652867');
INSERT INTO `bangju_log` VALUES ('189', '1', '0', 'wenyu_admin', '密码错误:admin123!@#', '192.168.1.50', '1503652894');
INSERT INTO `bangju_log` VALUES ('190', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.50', '1503656805');
INSERT INTO `bangju_log` VALUES ('191', '0', '0', 'admin', '登录成功', '192.168.1.50', '1503658127');
INSERT INTO `bangju_log` VALUES ('192', '0', '0', 'admin', '登录成功', '192.168.1.50', '1503658638');
INSERT INTO `bangju_log` VALUES ('193', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.50', '1503711645');
INSERT INTO `bangju_log` VALUES ('194', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.50', '1503728124');
INSERT INTO `bangju_log` VALUES ('195', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.50', '1503738981');
INSERT INTO `bangju_log` VALUES ('196', '1', '0', 'admin', '密码错误:admin', '192.168.1.130', '1503898505');
INSERT INTO `bangju_log` VALUES ('197', '1', '0', 'admin', '密码错误:admin', '192.168.1.130', '1503898516');
INSERT INTO `bangju_log` VALUES ('198', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.50', '1503899921');
INSERT INTO `bangju_log` VALUES ('199', '1', '0', 'wenyang_amin', '密码错误:admin123!@#', '192.168.1.50', '1503900932');
INSERT INTO `bangju_log` VALUES ('200', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.50', '1503900945');
INSERT INTO `bangju_log` VALUES ('201', '0', '0', 'wenyang_admin', '登录成功', '192.168.1.1', '1503972800');
INSERT INTO `bangju_log` VALUES ('202', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1520513254');
INSERT INTO `bangju_log` VALUES ('203', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1520513291');
INSERT INTO `bangju_log` VALUES ('204', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1520513298');
INSERT INTO `bangju_log` VALUES ('205', '1', '0', 'admin', '密码错误:admin', '127.0.0.1', '1520513766');
INSERT INTO `bangju_log` VALUES ('206', '0', '0', 'admin', '登录成功', '127.0.0.1', '1520513925');
INSERT INTO `bangju_log` VALUES ('207', '0', '0', 'admin', '登录成功', '127.0.0.1', '1521336947');
INSERT INTO `bangju_log` VALUES ('208', '0', '0', 'admin', '登录成功', '127.0.0.1', '1555556299');

-- ----------------------------
-- Table structure for bangju_mailbox
-- ----------------------------
DROP TABLE IF EXISTS `bangju_mailbox`;
CREATE TABLE `bangju_mailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_mailbox
-- ----------------------------
INSERT INTO `bangju_mailbox` VALUES ('6', '0', '2', 'admin', '/_6.html', '0', '1503154588', '1503658188', '0', 'inquiry@cosmoing.com', '');
INSERT INTO `bangju_mailbox` VALUES ('3', '0', '1', 'bangju', '/_3.html', '0', '1499307832', '1503658194', '0', 'adwords@cnwenyang.com', 'wenyang');
INSERT INTO `bangju_mailbox` VALUES ('7', '1', '2', 'admin', '/_7.html', '0', '1503658222', '1503658222', '0', 'rason.shen@adwordsfs.com', 'rason');

-- ----------------------------
-- Table structure for bangju_menu
-- ----------------------------
DROP TABLE IF EXISTS `bangju_menu`;
CREATE TABLE `bangju_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_menu
-- ----------------------------
INSERT INTO `bangju_menu` VALUES ('1', '0', 'Index', 'main', 'menuid=42', '1', '1', '0', '快捷入口', '', '0');
INSERT INTO `bangju_menu` VALUES ('2', '0', 'Config', '', 'menuid=50', '1', '1', '0', '系统设置', '系统设置', '2');
INSERT INTO `bangju_menu` VALUES ('3', '0', 'Category', '', 'menuid=17', '1', '1', '0', '内容管理', '模型管理', '1');
INSERT INTO `bangju_menu` VALUES ('5', '0', 'User', '', 'menuid=9', '1', '1', '0', '会员管理', '', '90');
INSERT INTO `bangju_menu` VALUES ('7', '0', 'Template', 'index', 'menuid=60', '1', '1', '0', '界面管理', '', '99');
INSERT INTO `bangju_menu` VALUES ('8', '50', 'Config', 'sys', '', '1', '1', '0', '系统参数', '', '0');
INSERT INTO `bangju_menu` VALUES ('9', '5', 'User', '', '', '1', '1', '0', '会员资料管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('10', '9', 'User', 'add', '', '1', '1', '0', '添加会员', '', '0');
INSERT INTO `bangju_menu` VALUES ('11', '5', 'Role', '', '', '1', '1', '0', '会员组管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('12', '11', 'Role', 'add', '', '1', '1', '0', '添加会员组', '', '0');
INSERT INTO `bangju_menu` VALUES ('13', '5', 'Node', '', '', '1', '1', '0', '权限节点管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('14', '13', 'Node', 'add', '', '1', '1', '0', '添加权限节点', '', '0');
INSERT INTO `bangju_menu` VALUES ('15', '39', 'Menu', 'add', '', '1', '1', '0', '添加菜单', '', '0');
INSERT INTO `bangju_menu` VALUES ('16', '3', 'Module', '', '', '1', '1', '0', '模型管理', '', '99');
INSERT INTO `bangju_menu` VALUES ('17', '3', 'Category', '', '', '1', '1', '0', '栏目管理', '栏目管理', '1');
INSERT INTO `bangju_menu` VALUES ('18', '16', 'Module', 'add', '', '1', '1', '0', '添加模型', '', '0');
INSERT INTO `bangju_menu` VALUES ('19', '17', 'Category', 'add', '', '1', '1', '0', '添加栏目', '', '0');
INSERT INTO `bangju_menu` VALUES ('20', '3', 'Article', '', '', '1', '1', '0', '文章模型', '', '2');
INSERT INTO `bangju_menu` VALUES ('21', '20', 'Article', 'add', '', '1', '1', '0', '添加文章', '', '0');
INSERT INTO `bangju_menu` VALUES ('23', '2', 'Posid', '', '', '1', '1', '0', '推荐位管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('24', '23', 'Posid', 'add', '', '1', '1', '0', '添加推荐位', '', '0');
INSERT INTO `bangju_menu` VALUES ('28', '2', 'Type', '', '', '1', '1', '0', '类别管理', '', '6');
INSERT INTO `bangju_menu` VALUES ('29', '50', 'Config', 'mail', '', '1', '1', '0', '系统邮箱', '', '0');
INSERT INTO `bangju_menu` VALUES ('30', '50', 'Config', 'attach', '', '1', '1', '0', '附件配置', '', '0');
INSERT INTO `bangju_menu` VALUES ('31', '17', 'Category', 'repair_cache', '', '1', '0', '0', '恢复栏目数据', '', '0');
INSERT INTO `bangju_menu` VALUES ('39', '2', 'Menu', '', '', '1', '1', '0', '后台管理菜单', '后台管理菜单', '11');
INSERT INTO `bangju_menu` VALUES ('40', '2', 'Index', 'password', '', '1', '1', '0', '修改密码', '', '2');
INSERT INTO `bangju_menu` VALUES ('41', '2', 'Index', 'profile', '', '1', '1', '0', '个人资料', '', '3');
INSERT INTO `bangju_menu` VALUES ('42', '1', 'Index', 'main', '', '1', '1', '0', '后台首页', '', '1');
INSERT INTO `bangju_menu` VALUES ('43', '17', 'Category', 'add', '&type=1', '1', '1', '0', '添加外部链接', '', '0');
INSERT INTO `bangju_menu` VALUES ('44', '2', 'Database', '', '', '1', '0', '0', '数据库管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('45', '44', 'Database', 'query', '', '1', '1', '0', '执行SQL语句', '', '0');
INSERT INTO `bangju_menu` VALUES ('46', '44', 'Database', 'recover', '', '1', '1', '0', '恢复数据库', '', '0');
INSERT INTO `bangju_menu` VALUES ('47', '1', 'Index', 'cache', 'menuid=47', '1', '0', '0', '更新缓存', '', '5');
INSERT INTO `bangju_menu` VALUES ('48', '51', 'Module', 'add', 'type=2', '1', '1', '0', '创建模块', '', '0');
INSERT INTO `bangju_menu` VALUES ('50', '2', 'Config', '', '', '1', '1', '0', '站点配置', '', '0');
INSERT INTO `bangju_menu` VALUES ('52', '28', 'Type', 'add', '', '1', '1', '0', '添加类别', '', '0');
INSERT INTO `bangju_menu` VALUES ('53', '1', 'Link', 'index', '', '1', '1', '0', '友情链接', '', '10');
INSERT INTO `bangju_menu` VALUES ('54', '53', 'Link', 'add', '', '1', '1', '0', '添加链接', '', '0');
INSERT INTO `bangju_menu` VALUES ('59', '50', 'Config', 'add', '', '1', '1', '0', '添加系统变量', '', '99');
INSERT INTO `bangju_menu` VALUES ('60', '7', 'Template', 'index', '', '1', '1', '0', '界面管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('62', '60', 'Template', 'index', 'type=css', '1', '1', '0', 'CSS管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('63', '60', 'Template', 'index', 'type=js', '1', '1', '0', 'JS管理', '', '0');
INSERT INTO `bangju_menu` VALUES ('67', '2', 'Urlrule', 'index', '', '1', '0', '0', 'URL规则', '', '0');
INSERT INTO `bangju_menu` VALUES ('68', '67', 'Urlrule', 'add', '', '1', '1', '0', '添加规则', '', '0');
INSERT INTO `bangju_menu` VALUES ('69', '2', 'Dbsource', 'index', '', '1', '0', '0', 'DB数据源', '', '0');
INSERT INTO `bangju_menu` VALUES ('70', '69', 'Dbsource', 'add', '', '1', '1', '0', '添加数据源', '', '0');
INSERT INTO `bangju_menu` VALUES ('71', '2', 'Lang', 'index', '', '1', '1', '0', '多语言管理', '语言管理', '0');
INSERT INTO `bangju_menu` VALUES ('72', '71', 'Lang', 'add', '', '1', '1', '0', '添加语言', '', '0');
INSERT INTO `bangju_menu` VALUES ('73', '71', 'Lang', 'param', '', '1', '1', '0', '设置语言包', '', '0');
INSERT INTO `bangju_menu` VALUES ('74', '1', 'Block', 'index', '', '1', '1', '0', '碎片管理', '', '3');
INSERT INTO `bangju_menu` VALUES ('75', '74', 'Block', 'add', '', '1', '1', '0', '添加碎片', '', '0');
INSERT INTO `bangju_menu` VALUES ('77', '1', 'Slide', 'index', '', '1', '1', '0', '幻灯片管理', '', '4');
INSERT INTO `bangju_menu` VALUES ('78', '77', 'Slide', 'add', '', '1', '1', '0', '添加幻灯片', '', '0');
INSERT INTO `bangju_menu` VALUES ('83', '1', 'Log', 'index', '', '1', '1', '0', '后台登陆日志', '', '83');
INSERT INTO `bangju_menu` VALUES ('84', '1', 'Config', '', '', '1', '1', '0', '站点配置', '', '2');
INSERT INTO `bangju_menu` VALUES ('85', '3', 'Case', 'index', '', '1', '1', '0', '案例模型', '', '9');
INSERT INTO `bangju_menu` VALUES ('86', '85', 'Case', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `bangju_menu` VALUES ('87', '3', 'Jobs', 'index', '', '1', '1', '0', '招聘模型', '', '9');
INSERT INTO `bangju_menu` VALUES ('88', '87', 'Jobs', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `bangju_menu` VALUES ('89', '3', 'Product', 'index', '', '1', '1', '0', '产品模型', '', '9');
INSERT INTO `bangju_menu` VALUES ('90', '89', 'Product', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `bangju_menu` VALUES ('91', '3', 'Message', 'index', '', '1', '1', '0', '留言模型', '', '9');
INSERT INTO `bangju_menu` VALUES ('92', '91', 'Message', 'add', '', '1', '1', '0', '添加信息', '', '9');
INSERT INTO `bangju_menu` VALUES ('93', '3', 'Mailbox', 'index', '', '1', '1', '0', '邮箱管理', '', '9');
INSERT INTO `bangju_menu` VALUES ('94', '93', 'Mailbox', 'add', '', '1', '1', '0', '添加信息', '', '9');

-- ----------------------------
-- Table structure for bangju_message
-- ----------------------------
DROP TABLE IF EXISTS `bangju_message`;
CREATE TABLE `bangju_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `url` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `com` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `dep` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_message
-- ----------------------------
INSERT INTO `bangju_message` VALUES ('4', '1', '0', '', '', '0', '1495589346', '1495589346', '1', 'wenyu', '', '1123456', '123@qq.com', '', '', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '');
INSERT INTO `bangju_message` VALUES ('5', '1', '0', '', '', '0', '1495590223', '1495590223', '1', 'wenyu', '', '123456789', '123@qq.com', '', '', 'wenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyuwenyu', '');
INSERT INTO `bangju_message` VALUES ('6', '1', '0', '', '', '0', '1495592840', '1495592840', '1', '吻雨', '', '13763061320', '123@qq.com', '', '', 'wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试wenyu在测试', '');
INSERT INTO `bangju_message` VALUES ('7', '1', '0', '', '', '0', '1495597236', '1495597236', '1', '吻雨', '', '13763061320', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('8', '1', '0', '', '', '0', '1495597431', '1495597431', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('9', '1', '0', '', '', '0', '1495597637', '1495597637', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('10', '1', '0', '', '', '0', '1495597666', '1495597666', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('11', '1', '0', '', '', '0', '1495597762', '1495597762', '1', 'josie', '', '13535531532', '13535531532@163.com', '', '', 'want to get more info about whiteboard', '');
INSERT INTO `bangju_message` VALUES ('12', '1', '0', '', '', '0', '1495597928', '1495597928', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('13', '1', '0', '', '', '0', '1495598434', '1495598434', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('14', '1', '0', '', '', '0', '1495604730', '1495604730', '1', '1', '', '2111111111111111', '1@', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('15', '1', '0', '', '', '0', '1495606133', '1495606133', '1', 'jimmy', '', '16833', 'jimmy@q63.com', '', '', 'test again', '');
INSERT INTO `bangju_message` VALUES ('16', '1', '0', '', '', '0', '1495606136', '1495606136', '1', 'jimmy', '', '16833', 'jimmy@q63.com', '', '', 'test again', '');
INSERT INTO `bangju_message` VALUES ('17', '1', '0', '', '', '0', '1495606442', '1495606442', '1', '111', '', '1223689', '1223@139.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('18', '1', '0', '', '', '0', '1495606667', '1495606667', '1', 'hhfkaj', '', '215265555', 'llak@155.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('19', '1', '0', '', '', '0', '1495607228', '1495607228', '1', 'skfjkg', '', '111111122222', 'sg@139.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('20', '1', '0', '', '', '0', '1495607554', '1495607554', '1', 'josie', '', '13535531532', '13535531532@163.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('21', '1', '0', '', '', '0', '1495607557', '1495607557', '1', 'josie', '', '13535531532', '13535531532@163.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('22', '1', '0', '', '', '0', '1495607605', '1495607605', '1', 'aaaaa', '', '11111111111111', 'a-m.1@163.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('23', '1', '0', '', '', '0', '1495607625', '1495607625', '1', 'suge', '', '86-545667778', 'asdf@163.com', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('24', '1', '0', '', '', '0', '1495607920', '1495607920', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('25', '1', '0', '', '', '0', '1495607922', '1495607922', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('26', '1', '0', '', '', '0', '1495607925', '1495607925', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('27', '1', '0', '', '', '0', '1495607928', '1495607928', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('28', '1', '0', '', '', '0', '1495607931', '1495607931', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('29', '1', '0', '', '', '0', '1495607934', '1495607934', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('30', '1', '0', '', '', '0', '1495607936', '1495607936', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('31', '1', '0', '', '', '0', '1495607938', '1495607938', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('32', '1', '0', '', '', '0', '1495607941', '1495607941', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('33', '1', '0', '', '', '0', '1495607943', '1495607943', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('34', '1', '0', '', '', '0', '1495607946', '1495607946', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('35', '1', '0', '', '', '0', '1495607951', '1495607951', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('36', '1', '0', '', '', '0', '1495607962', '1495607962', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('37', '1', '0', '', '', '0', '1495607980', '1495607980', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('38', '1', '0', '', '', '0', '1495609429', '1495609429', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('39', '1', '0', '', '', '0', '1495609444', '1495609444', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('40', '1', '0', '', '', '0', '1495609488', '1495609488', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('41', '1', '0', '', '', '0', '1495609513', '1495609513', '1', '1', '', '1111111111111', '!@', '', '', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('42', '1', '0', '', '', '0', '1495609674', '1495609674', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('43', '1', '0', '', '', '0', '1495610777', '1495610777', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('44', '1', '0', '', '', '0', '1495610780', '1495610780', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('45', '1', '0', '', '', '0', '1495610783', '1495610783', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('46', '1', '0', '', '', '0', '1495612295', '1495612295', '1', 'su', '', '86-678123123', 'jimmy@163.com', '', '', 'zxvcsdf<br />\r\nhow are you?asdf<br />\r\nasfdasdfasd', '');
INSERT INTO `bangju_message` VALUES ('47', '1', '0', '', '', '0', '1495618557', '1495618557', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('48', '1', '0', '', '', '0', '1495618561', '1495618561', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('49', '1', '0', '', '', '0', '1495618564', '1495618564', '1', '', '', '', '', '', '', '', '');
INSERT INTO `bangju_message` VALUES ('50', '1', '0', '', '', '0', '1495619468', '1495619468', '1', '11111', '', '11111111111', '1@', '', '', '!!!!!!!11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('51', '1', '0', '', '', '0', '1495619885', '1495619885', '1', '1111111', '', '1111111111', '1@', '', '', '11111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('52', '1', '0', '', '', '0', '1495619891', '1495619891', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'esrgsdgsdfgdgsdfggsdfgsdsdfgfgdfg', '');
INSERT INTO `bangju_message` VALUES ('53', '1', '0', '', '', '0', '1495619895', '1495619895', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'esrgsdgsdfgdgsdfggsdfgsdsdfgfgdfg', '');
INSERT INTO `bangju_message` VALUES ('54', '1', '0', '', '', '0', '1495619898', '1495619898', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'esrgsdgsdfgdgsdfggsdfgsdsdfgfgdfg', '');
INSERT INTO `bangju_message` VALUES ('55', '1', '0', '', '', '0', '1495619936', '1495619936', '1', 'jhkld', '', '215265555', '122@126.com', '', '', 'jkfvshim ods404 r54hcvv  v vc v vc vc vc vc', '');
INSERT INTO `bangju_message` VALUES ('56', '1', '0', '', '', '0', '1495619966', '1495619966', '1', 'asfdadf', '', '86-545667778', 'jimmy@q63.com', '', '', 'sadfasdf', '');
INSERT INTO `bangju_message` VALUES ('57', '1', '0', '', '', '0', '1495619990', '1495619990', '1', '111111111', '', '111111111111', '11@', '', '', '1111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('58', '1', '0', '', '', '0', '1495620020', '1495620020', '1', '445555', '', '45545655665', '4552@126.com', '', '', '515s4bgikiiikyrwpjhfdf  sthdjnhjkhlkkljfgdggghhhh', '');
INSERT INTO `bangju_message` VALUES ('59', '1', '0', '', '', '0', '1495620075', '1495620075', '1', '1111111111', '', '11111111111111', '1@', '', '', '11111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('60', '1', '0', '', '', '0', '1495620125', '1495620125', '1', 'jimmy', '', '86-545667778', 'asdf@163.com', '', '', 'sadfsd asdfas  asdfasdf sadf asdf', '');
INSERT INTO `bangju_message` VALUES ('61', '1', '0', '', '', '0', '1495620198', '1495620198', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'could you send me the price list', '');
INSERT INTO `bangju_message` VALUES ('62', '1', '0', '', '', '0', '1495620201', '1495620201', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'could you send me the price list', '');
INSERT INTO `bangju_message` VALUES ('63', '1', '0', '', '', '0', '1495620204', '1495620204', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'could you send me the price list', '');
INSERT INTO `bangju_message` VALUES ('64', '1', '0', '', '', '0', '1495620206', '1495620206', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'could you send me the price list', '');
INSERT INTO `bangju_message` VALUES ('65', '1', '0', '', '', '0', '1495620209', '1495620209', '1', 'jimmy', '', '86-545667778', 'jimmy@q63.com', '', '', 'could you send me the price list', '');
INSERT INTO `bangju_message` VALUES ('66', '1', '0', '', '', '0', '1495621082', '1495621082', '1', 'asdf', '', '86-545667778', 'jimmy@q63.com', '', '', 'asdf asdfasdfasdf asdfas xcvcxv', '');
INSERT INTO `bangju_message` VALUES ('67', '1', '0', '', '', '0', '1495621085', '1495621085', '1', 'asdf', '', '86-545667778', 'jimmy@q63.com', '', '', 'asdf asdfasdfasdf asdfas xcvcxv', '');
INSERT INTO `bangju_message` VALUES ('68', '1', '0', '', '', '0', '1495679385', '1495679385', '1', 'jimmy su', '', '123456', 'jimmy@163.com', '', '', 'test mail test mail test mail test mail', '');
INSERT INTO `bangju_message` VALUES ('69', '1', '0', '', '', '0', '1495679389', '1495679389', '1', 'jimmy su', '', '123456', 'jimmy@163.com', '', '', 'test mail test mail test mail test mail', '');
INSERT INTO `bangju_message` VALUES ('70', '1', '0', '', '', '0', '1495679391', '1495679391', '1', 'jimmy su', '', '123456', 'jimmy@163.com', '', '', 'test mail test mail test mail test mail', '');
INSERT INTO `bangju_message` VALUES ('71', '1', '0', '', '', '0', '1495679439', '1495679439', '1', 'jimmy su', '', '09876543', 'jimmy@163.com', '', '', 'mail test mail test mail test mail test', '');
INSERT INTO `bangju_message` VALUES ('72', '1', '0', '', '', '0', '1495768869', '1495768869', '1', 'jimmy', '', '123456', 'jimmy@163.com', '', '', 'test test test test test test test', '');
INSERT INTO `bangju_message` VALUES ('73', '1', '0', '', '', '0', '1495768872', '1495768872', '1', 'jimmy', '', '123456', 'jimmy@163.com', '', '', 'test test test test test test test', '');
INSERT INTO `bangju_message` VALUES ('74', '1', '0', '', '', '0', '1495768875', '1495768875', '1', 'jimmy', '', '123456', 'jimmy@163.com', '', '', 'test test test test test test test', '');
INSERT INTO `bangju_message` VALUES ('75', '1', '0', '', '', '0', '1495789609', '1495789609', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('76', '1', '0', '', '', '0', '1495789612', '1495789612', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('77', '1', '0', '', '', '0', '1495789615', '1495789615', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('78', '1', '0', '', '', '0', '1495789617', '1495789617', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('79', '1', '0', '', '', '0', '1495789620', '1495789620', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('80', '1', '0', '', '', '0', '1495789622', '1495789622', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('81', '1', '0', '', '', '0', '1495789625', '1495789625', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('82', '1', '0', '', '', '0', '1495789627', '1495789627', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('83', '1', '0', '', '', '0', '1495789629', '1495789629', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('84', '1', '0', '', '', '0', '1495789632', '1495789632', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('85', '1', '0', '', '', '0', '1495789634', '1495789634', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('86', '1', '0', '', '', '0', '1495789636', '1495789636', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('87', '1', '0', '', '', '0', '1495789639', '1495789639', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('88', '1', '0', '', '', '0', '1495789642', '1495789642', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('89', '1', '0', '', '', '0', '1495789644', '1495789644', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('90', '1', '0', '', '', '0', '1495789646', '1495789646', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('91', '1', '0', '', '', '0', '1495789649', '1495789649', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('92', '1', '0', '', '', '0', '1495789651', '1495789651', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('93', '1', '0', '', '', '0', '1495789654', '1495789654', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('94', '1', '0', '', '', '0', '1495789656', '1495789656', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('95', '1', '0', '', '', '0', '1495789659', '1495789659', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('96', '1', '0', '', '', '0', '1495789661', '1495789661', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('97', '1', '0', '', '', '0', '1495789663', '1495789663', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('98', '1', '0', '', '', '0', '1495789666', '1495789666', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('99', '1', '0', '', '', '0', '1495789669', '1495789669', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('100', '1', '0', '', '', '0', '1495789671', '1495789671', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('101', '1', '0', '', '', '0', '1495789676', '1495789676', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('102', '1', '0', '', '', '0', '1495789678', '1495789678', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('103', '1', '0', '', '', '0', '1495789681', '1495789681', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('104', '1', '0', '', '', '0', '1495789683', '1495789683', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('105', '1', '0', '', '', '0', '1495789686', '1495789686', '1', 'Jitesh', '', '9819306589', 'Gurukulacademy2004@gmail.com', '', '', 'White ceramic board required<br />\r\n40pcs<br />\r\nSize: 4*6', '');
INSERT INTO `bangju_message` VALUES ('106', '1', '0', '', '', '0', '1495792706', '1495792706', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('107', '1', '0', '', '', '0', '1495793716', '1495793716', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('108', '1', '0', '', '', '0', '1495793720', '1495793720', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('109', '1', '0', '', '', '0', '1495793723', '1495793723', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('110', '1', '0', '', '', '0', '1495793726', '1495793726', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('111', '1', '0', '', '', '0', '1495793734', '1495793734', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('112', '1', '0', '', '', '0', '1495793737', '1495793737', '1', 'wenyu', '', '123456789', '123456@qq.com', '', '', '这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！这是在测试，请谅解！谢谢！', '');
INSERT INTO `bangju_message` VALUES ('113', '1', '0', '', '', '0', '1495810574', '1495810574', '1', 'du', '', '111111', '1@', '', '', '1111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('114', '1', '0', '', '', '0', '1495810746', '1495810746', '1', '11111111', '', '11111111111', '1@', '', '', '1111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('115', '1', '0', '', '', '0', '1495847160', '1495847160', '1', 'du', '', '111111111111', '1@', '', '', 'test1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('116', '1', '0', '', '', '0', '1495847205', '1495847205', '1', 'du', '', '111111111111', '1@', '', '', 'test1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('117', '1', '0', '', '', '0', '1495847440', '1495847440', '1', 'du', '', '111111111111', '1@', '', '', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('118', '1', '0', '', '', '0', '1495847443', '1495847443', '1', 'du', '', '111111111111', '1@', '', '', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '');
INSERT INTO `bangju_message` VALUES ('119', '1', '0', '', '', '0', '1495881252', '1495881252', '1', 'Ramswaroop', '', '9636319607', 'ramskr90@gmail.com', '', '', 'I wanna to purchase white board in delhi for many many size', '');
INSERT INTO `bangju_message` VALUES ('120', '1', '0', '', '', '0', '1496201521', '1496201521', '1', 'manju.dg', '', '9741107713', 'manjudgdadaga@mail.com', '', '', 'Manjudg.T dasarahalli. Driver.    9 Years experience. .', '');
INSERT INTO `bangju_message` VALUES ('121', '1', '0', '', '', '0', '1496201565', '1496201565', '1', 'manju.dg', '', '9741107713', 'manjudgdadaga@mail.com', '', '', 'Manjudg.T dasarahalli. Driver.    9 Years experience. .', '');
INSERT INTO `bangju_message` VALUES ('122', '1', '0', '', '', '0', '1496419720', '1496419720', '1', 'beruk', '', '00971552176522', 'mulattiku@gmail.com', '', '', 'we are looking white board 120*150 and green board 120*300 each 200 pce if can provide us you can contact me please', '');
INSERT INTO `bangju_message` VALUES ('123', '1', '0', '', '', '0', '1496419853', '1496419853', '1', 'beruk', '', '00971552176522', 'mulattiku@gmail.com', '', '', 'we are looking the thing for Ethiopia please give us the price as soon as', '');
INSERT INTO `bangju_message` VALUES ('124', '1', '0', '', '', '0', '1496996207', '1496996207', '1', 'Lebogang', '', '27845834896', 'lebogang@redpencilgroup.co.za', '', '', 'Good Day<br />\r\nI would like to find out how a whiteboard would cost?', '');
INSERT INTO `bangju_message` VALUES ('125', '1', '0', '', '', '0', '1497162107', '1497162107', '1', 'KH Lee', '', '0060163321899', 'lkh9881@gmail.com', '', '', 'I am interested on your company products especially whiteboard. Pls email your catalogue to me . Thank you', '');
INSERT INTO `bangju_message` VALUES ('126', '1', '0', '', '', '0', '1497194228', '1497194228', '1', 'Yusuf Abbas', '', '08033584588', 'rambasone@gmail.com', '', '', 'Enquiry on Customized whiteboard, Eraser and Maker', '');
INSERT INTO `bangju_message` VALUES ('127', '1', '0', '', '', '0', '1497194811', '1497194811', '1', 'Yusuf Abbas', '', '+2348033584588', 'rambasone@gmail.com', '', '', 'Need a customised magnetic whiteboard of 1.2m by 2.4m (4*8feet) with a customized maker and Eraser as accessories of between 5000-10000pcs please send a quote and a pictorial sample of the items to me through my mail.', '');
INSERT INTO `bangju_message` VALUES ('128', '1', '0', '', '', '0', '1497595967', '1497595967', '1', 'Joe Raucci', '', '0405 646 586', 'joe@aluminiumsupply.com.au', '', '', 'Hello i would like to have someone contact me via e-mail in regards to a plastic corner stake for a whiteboard please.', '');
INSERT INTO `bangju_message` VALUES ('129', '1', '0', '', '', '0', '1497878721', '1497878721', '1', 'Leon Leon', '', '93279708', 'abptrr@gmail.com', '', '', 'Please quote the price. Able to delivery oversea?', 'Please quote the price. Able to delivery oversea?');
INSERT INTO `bangju_message` VALUES ('130', '1', '0', '', '', '0', '1497943402', '1497943402', '1', 'Pansare Dilip', '', '9657112222', 'pansaredilip1987@gmail.com', '', '', 'Call plz', 'Call plz');
INSERT INTO `bangju_message` VALUES ('131', '1', '0', '', '', '0', '1498682202', '1498682202', '1', 'Sinqotholo tradingsinqotholo', '', '0736521195', 'sinqotholotrading@gmail.com', '', '', 'Quotation notice board sliding glass', 'Quotation notice board sliding glass');
INSERT INTO `bangju_message` VALUES ('132', '1', '0', '', '', '0', '1498920563', '1498920563', '1', 'Regina', '', '01067962398', 'Reginajohnson1106@gmail.com', '', '', 'A-986 what is the price and do you deliver?', 'A-986 what is the price and do you deliver?');
INSERT INTO `bangju_message` VALUES ('133', '1', '0', '', '', '0', '1502123742', '1502123742', '1', 'Elaine Crews', '', '(877) 228-1545', 'elainegcrews@gmail.com', '', '', 'Hi,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\nWhen I was looking at your site, though, I noticed a mistake that you\'ve made re: search engine optimization. It\'s a relatively important fix. Would you like me to write it up so that you can share it with your web team? If this is a priority, I can also get on a call.\r\n\r\nRegards,\r\nElaine Crews\r\nDigital Marketing Manager\r\n(877) 228-1545\r\nSmarter Tactics', 'Hi,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\nWhen I was looking at your site, though,');
INSERT INTO `bangju_message` VALUES ('134', '1', '0', '', '', '0', '1503658288', '1503658288', '1', '吻雨', '', '12345+79', '1223@qq.com', '', '', 'Surface material choice: cork sheet or felt(color: blue,gray,red,gree', '[未分配或者内网IP]Surface material choice: cork sheet or felt(color: blue,gray,red,gree');
INSERT INTO `bangju_message` VALUES ('135', '1', '0', '', '', '0', '1503719129', '1503719129', '1', '吻雨', '', '+86-951-1370958361', '123@', '', '', 'Message has been sent, please donot repeat!', '[未分配或者内网IP]Message has been sent, please donot repeat!');
INSERT INTO `bangju_message` VALUES ('136', '1', '0', '', '', '0', '1503719503', '1503719503', '1', 'www', '', '+++--()1231231', '123@', '', '', 'Message has been sent, please donot repeat!', '[未分配或者内网IP]Message has been sent, please donot repeat!');
INSERT INTO `bangju_message` VALUES ('137', '0', '0', '', '', '0', '1503901104', '1503901104', '1', 'wenyu', '', '123456458', '12333@', '', '', 'square meters. As one of the biggest whiteboard manufacturers', '[未分配或者内网IP]square meters. As one of the biggest whiteboard manufacturers');

-- ----------------------------
-- Table structure for bangju_module
-- ----------------------------
DROP TABLE IF EXISTS `bangju_module`;
CREATE TABLE `bangju_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postgroup` varchar(100) NOT NULL DEFAULT '',
  `ispost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_module
-- ----------------------------
INSERT INTO `bangju_module` VALUES ('1', '单页模型', 'Page', '单页模型', '1', '1', '0', '*', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('2', '文章模型', 'Article', '新闻文章', '1', '1', '1', 'id,catid,url,title,username,hits,keywords,description,thumb,createtime,status,listorder', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('3', '友情链接', 'Link', '友情链接', '2', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('4', '案例模型', 'Case', '案例模型', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('5', '招聘模型', 'Jobs', '招聘模型', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('6', '产品模型', 'Product', '产品模型', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('7', '留言模型', 'Message', '留言模型', '1', '0', '0', '*', '', '0', '1', '', '0');
INSERT INTO `bangju_module` VALUES ('8', '邮箱管理', 'Mailbox', '邮箱管理', '1', '0', '0', '*', '', '0', '1', '', '1');

-- ----------------------------
-- Table structure for bangju_node
-- ----------------------------
DROP TABLE IF EXISTS `bangju_node`;
CREATE TABLE `bangju_node` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_node
-- ----------------------------
INSERT INTO `bangju_node` VALUES ('1', 'Admin', '后台管理', '1', '后台项目', '0', '0', '1', '0');
INSERT INTO `bangju_node` VALUES ('2', 'Index', '后台默认', '1', '', '0', '1', '2', '1');
INSERT INTO `bangju_node` VALUES ('3', 'Config', '站点配置', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('4', 'index', '站点配置', '1', '', '0', '3', '3', '2');
INSERT INTO `bangju_node` VALUES ('5', 'sys', '系统参数', '1', '', '0', '3', '3', '2');
INSERT INTO `bangju_node` VALUES ('7', 'add', '添加变量', '1', '', '0', '3', '3', '2');
INSERT INTO `bangju_node` VALUES ('8', 'Menu', '菜单管理', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('11', 'index', '默认动作', '1', '', '0', '2', '3', '1');
INSERT INTO `bangju_node` VALUES ('12', 'Public', '全局操作', '1', '', '0', '1', '2', '0');
INSERT INTO `bangju_node` VALUES ('13', 'index', '默认', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('14', 'add', '添加', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('15', 'edit', '编辑', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('16', 'insert', '插入', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('17', 'attach', '附件设置', '1', '', '0', '3', '3', '2');
INSERT INTO `bangju_node` VALUES ('18', 'mail', '系统邮箱', '1', '', '0', '3', '3', '2');
INSERT INTO `bangju_node` VALUES ('19', 'Posid', '推荐位', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('21', 'update', '更新', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('22', 'status', '状态', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('23', 'deleteall', '批量删除', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('24', 'delete', '删除', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('25', 'listorder', '排序', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('26', 'password', '修改密码', '1', '', '0', '2', '3', '1');
INSERT INTO `bangju_node` VALUES ('27', 'profile', '个人资料', '1', '', '0', '2', '3', '1');
INSERT INTO `bangju_node` VALUES ('28', 'cache', '更新缓存', '1', '', '0', '2', '3', '1');
INSERT INTO `bangju_node` VALUES ('30', 'main', '系统信息', '1', '', '0', '2', '3', '1');
INSERT INTO `bangju_node` VALUES ('40', 'Urlrule', 'URL规则', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('48', 'Dbsource', 'DB数据源', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('55', 'Type', '类别管理', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('65', 'Lang', '多语言管理', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('75', 'Database', '数据库管理', '1', '', '0', '1', '2', '2');
INSERT INTO `bangju_node` VALUES ('76', 'docommand', '优化操作', '1', '', '0', '75', '3', '2');
INSERT INTO `bangju_node` VALUES ('77', 'backup', '备份', '1', '', '0', '75', '3', '2');
INSERT INTO `bangju_node` VALUES ('78', 'recover', '恢复', '1', '', '0', '75', '3', '2');
INSERT INTO `bangju_node` VALUES ('79', 'query', 'sql查询', '1', '', '0', '75', '3', '2');
INSERT INTO `bangju_node` VALUES ('80', 'doquery', '运行sql', '1', '', '0', '75', '3', '2');
INSERT INTO `bangju_node` VALUES ('81', 'Category', '栏目管理', '1', '', '0', '1', '2', '3');
INSERT INTO `bangju_node` VALUES ('88', 'repair_cache', '修复栏目数据', '1', '', '0', '81', '3', '3');
INSERT INTO `bangju_node` VALUES ('90', 'Module', '模型管理', '1', '', '0', '1', '2', '3');
INSERT INTO `bangju_node` VALUES ('98', 'Field', '模型字段', '1', '', '0', '1', '2', '3');
INSERT INTO `bangju_node` VALUES ('107', 'Page', '单页模型', '1', '', '0', '1', '2', '3');
INSERT INTO `bangju_node` VALUES ('110', 'Article', '文章模型', '1', '', '0', '1', '2', '3');
INSERT INTO `bangju_node` VALUES ('116', 'Link', '友情链接', '1', '', '0', '1', '2', '4');
INSERT INTO `bangju_node` VALUES ('121', 'User', '会员管理', '1', '', '0', '1', '2', '5');
INSERT INTO `bangju_node` VALUES ('122', 'Role', '会员组管理', '1', '', '0', '1', '2', '5');
INSERT INTO `bangju_node` VALUES ('123', 'Node', '节点管理', '1', '', '0', '1', '2', '5');
INSERT INTO `bangju_node` VALUES ('124', 'Access', '授权查询', '1', '', '0', '1', '2', '5');
INSERT INTO `bangju_node` VALUES ('126', 'Template', '界面管理', '1', '', '0', '1', '2', '7');
INSERT INTO `bangju_node` VALUES ('127', 'Theme', '界面管理', '1', '', '0', '1', '2', '7');
INSERT INTO `bangju_node` VALUES ('128', 'Block', '碎片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `bangju_node` VALUES ('129', 'Slide', '幻灯片管理', '1', '', '0', '1', '2', '7');
INSERT INTO `bangju_node` VALUES ('139', 'statusallok', '批量审核', '1', '', '0', '12', '3', '0');
INSERT INTO `bangju_node` VALUES ('140', 'images', '媒体文件', '1', '', '0', '126', '3', '7');
INSERT INTO `bangju_node` VALUES ('142', 'index', '列表', '1', '', '0', '127', '3', '7');
INSERT INTO `bangju_node` VALUES ('145', 'picmanage', '图片管理', '1', '', '0', '129', '3', '7');
INSERT INTO `bangju_node` VALUES ('146', 'addpic', '添加图片', '1', '', '0', '129', '3', '7');
INSERT INTO `bangju_node` VALUES ('147', 'editpic', '编辑图片', '1', '', '0', '129', '3', '7');
INSERT INTO `bangju_node` VALUES ('148', 'insertpic', '插入图片', '1', '', '0', '129', '3', '7');
INSERT INTO `bangju_node` VALUES ('149', 'updatepic', '更新图片', '1', '', '0', '129', '3', '7');
INSERT INTO `bangju_node` VALUES ('150', 'listorder', '图片排序', '1', '', '0', '129', '3', '7');
INSERT INTO `bangju_node` VALUES ('151', 'Attachment', '附件管理', '1', '', '0', '1', '2', '0');
INSERT INTO `bangju_node` VALUES ('152', 'index', '默认操作', '1', '', '0', '151', '3', '0');
INSERT INTO `bangju_node` VALUES ('153', 'upload', '上传文件', '1', '', '0', '151', '3', '0');
INSERT INTO `bangju_node` VALUES ('154', 'filelist', '浏览文件', '1', '', '0', '151', '3', '0');
INSERT INTO `bangju_node` VALUES ('155', 'delfile', '删除文件', '1', '', '0', '151', '3', '0');
INSERT INTO `bangju_node` VALUES ('156', 'cleanfile', '清理文件', '1', '', '0', '151', '3', '0');
INSERT INTO `bangju_node` VALUES ('157', 'dosite', '保存配置', '1', '', '0', '3', '3', '2');
INSERT INTO `bangju_node` VALUES ('158', 'testmail', '邮件测试', '1', '', '0', '3', '3', '2');

-- ----------------------------
-- Table structure for bangju_online
-- ----------------------------
DROP TABLE IF EXISTS `bangju_online`;
CREATE TABLE `bangju_online` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL,
  `lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_online
-- ----------------------------
INSERT INTO `bangju_online` VALUES ('a189016b70cf539a2b15712b0c6b9637', '0', '', '127.0.0.1', '1555556290', '4');

-- ----------------------------
-- Table structure for bangju_page
-- ----------------------------
DROP TABLE IF EXISTS `bangju_page`;
CREATE TABLE `bangju_page` (
  `id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(250) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_page
-- ----------------------------
INSERT INTO `bangju_page` VALUES ('1', '关于我们', '', '', '', '<p>\r\n	<span style=\"line-height:2;\">&nbsp; &nbsp;Sichuan Hui Da Tong (Phedaton) Mechanical Equipment Manufacturing Co., Ltd Is located at Chongzhou Industrial port in&nbsp;T EDA, an industrial concentration development area in Sichuan. Established in the year of 2012 with a registered capital of 11 million&nbsp;yuan, Now we’ve reached an annual turnover of $ 90 million, at the same time, we have obtained the import &amp; export certificates issued by the Ministry of Foreign Trade and Economic Cooperation and General Administration of Customs of PRC.</span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">&nbsp;&nbsp;We are mainly engaged in research, production and sales of dish-washing machine. With an innovation-driven culture, we’ve been dedicating in laser cutter, Automatic welding machine as well as Highland field kitchen car. Our major products have been widely used for cleaning.</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">Featured with advanced technology, reliable performance and high durability, our Phedaton products earn good reputation. We&nbsp;have 2 in-house manufacturing plants and 2 exhibition centers and over 100 staffs around Chengdu, China.&nbsp;Honored as “High-Tech Enterprise”, we have acquired more than 15 National patents,&nbsp;among which two patents are Municipal Science and Technology Progress Award.</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">&nbsp;&nbsp;Apart from the 2 manufacturing plants, we have a robotics lab, a heavy equipment production base (built by a joint effort with Sichuan Xihe Mechanical and Electrical Equipment Manufacturing Co.,Ltd), and an automation equipment lab (built by a joint effort with Sichuan Agricultural University).Based on a disciplined and professional R&amp;D and production team, we produce and deliver quality products as well as projects, receiving strongly positive feedbacks from clients.</span> \r\n</p>', '', '0');
INSERT INTO `bangju_page` VALUES ('2', '新闻中心', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('3', '案例中心', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('4', '联系我们', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('5', '关于茅台510', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('6', '关于茅台510', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('14', 'product', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('24', 'Video', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('25', 'Micro Hi-Fi', '/Uploads/201609/57d7bd53a3317.jpg', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('27', 'MCB1533', '', '', '', '', '', '0');
INSERT INTO `bangju_page` VALUES ('39', '联系我们', '', '', '', '<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	如有咨询事项，请联系技术客服QQ&nbsp;：3341822209<br />\r\n公司：贵州高峰石油机械股份有限公司<br />\r\n地址：贵州省贵阳市观山湖区长岭南路22号<br />\r\n邮编：550081\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	<p style=\"padding:0px;margin-top:0px;margin-bottom:10px;\">\r\n		<span style=\"padding:0px;margin:0px;font-weight:700;\">国内</span><br />\r\n电话：86-851-84668339<br />\r\n86-851-84810952<br />\r\n传真：86-851-84668503<br />\r\n86-851-84810845<br />\r\n邮箱：xsb1@gaofeng-petro.com\r\n	</p>\r\n	<p style=\"padding:0px;margin-top:0px;margin-bottom:10px;\">\r\n		&nbsp;\r\n	</p>\r\n</div>\r\n<div style=\"padding:0px;margin:0px;color:#8F969F;font-family:Arial, Helvetica, Arial, Verdana, sans-serif;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"padding:0px;margin:0px;font-weight:700;\">国际</span><br />\r\n电话：86-851-87995502<br />\r\n传真：86-851-87995503<br />\r\n邮箱：sales@gaofeng-petro.com<br />\r\n网址：<a href=\"http://www.gaofeng-petro.com/\" style=\"padding:0px;margin:0px;color:#006FA8;\">www.gaofeng-petro.com</a>\r\n</div>', '', '0');
INSERT INTO `bangju_page` VALUES ('77', 'Highlight', '', '', '', '<p>\r\n	<table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#FFFFFF\">\r\n		<tbody>\r\n			<tr>\r\n				<td rowspan=\"3\">\r\n					<p>\r\n						<img src=\"/Uploads/201705/590be5d6c608c.png\" style=\"line-height:1.5;\" /> \r\n					</p>\r\n				</td>\r\n				<td style=\"vertical-align:bottom;\">\r\n					<p>\r\n						<img src=\"/Uploads/201705/590be5e96a5d1.jpg\" style=\"line-height:1.5;\" /> \r\n					</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"height:50%;\">\r\n					<h3 style=\"box-sizing:border-box;margin:20px 0px 1rem;padding:0.8rem 0px 1.5rem;font-family:Arial;font-weight:500;line-height:1.1;color:#4EB136;font-size:24px;border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#4EB136;white-space:normal;background-color:#FFFFFF;\">\r\n						<span style=\"line-height:3;\">Mobile Flipchart Easel</span> \r\n					</h3>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Board Size:70x100cm(28\"x40\")</span></strong><strong><span style=\"font-size:16px;\"></span></strong> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;\"></span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">Max Height:195cm(78\")</span></strong> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><strong><span style=\"font-size:16px;\"><img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;max-width:100%;\" /><span style=\"line-height:1.5;\">Board: H</span></span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">igh quality lacquered steel sheet surface with magnetic, aluminum frame, ABS corner;</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong style=\"color:#333333;font-family:Arial;line-height:20px;white-space:normal;background-color:#FFFFFF;\"><span style=\"font-size:16px;line-height:1.5;\">S</span></strong><span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><strong><span style=\"font-size:16px;\"></span><span style=\"font-size:16px;line-height:1.5;\">tand: Steel tube,five star let,dia 5cm castor with brake,height adjustable.Round base dia 68cm(26.7\");</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:16px;line-height:1.5;\"><strong>Accessories: 1 pcs magnetic eraser,3 pcs magnets;</strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<span class=\"Advantage\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-size:0.7rem;\"><img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;max-width:100%;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Extra Choice: Extention bar.</span></strong></span> \r\n					</p>\r\n					<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n						<img src=\"http://wenyang.networkgrand.com/images/2.png\" style=\"font-size:14px;box-sizing:border-box;margin:0px 5px 0px 0px;padding:0px;vertical-align:middle;\" /><strong><span style=\"font-size:16px;line-height:1.5;\">Packing:1set/ctn,0.096cbm/pcs,&nbsp;</span></strong><strong><span style=\"font-size:16px;line-height:1.5;\">G.W.:15.7kgs/set;</span></strong> \r\n					</p>\r\n<br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>', '', '0');
INSERT INTO `bangju_page` VALUES ('78', 'Contact', '', 'whiteboard inquiry', 'get a quote for the whiteboard products series', '', '', '0');
INSERT INTO `bangju_page` VALUES ('74', 'AboutUs', '', 'China whiteboard,glass whiteboard,flip chart ,whiteboard manufacturer', 'WeYoung -China whiteboard,glass whiteboard,flip chart manufacturer', '<p style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201705/5928f0030778e.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:16px;line-height:26.6667px;white-space:normal;\">Established\r\n in Foshan in 1993, one of the most famous industrial cities in China, \r\nWenyang Stationery Manufacturing Co., Ltd. is a manufacturer and \r\nexporter specializing in whiteboards, notice boards, chalk boards, \r\nflip chart easels, whiteboard stands, print racks, magazine stands, \r\nnewspaper stands. Our factory covers an area of 25,000 square meters. As\r\n one of the biggest whiteboard manufacturers and whiteboard standards \r\nsetters in China, we are one of the best producers with the highest \r\nquality standards,and got the certificate of ISO9001:2008,BV CERT,TUV \r\nCERT,SGS CERT.</span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201705/5926796e10f5a.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">So far, the products have been exported to\r\n50 countries including USA, Germany, Japan, Australia, UAE, etc. We have\r\nestablished good business relationships with many of the world’s multinational\r\ncompanies such as 3M, Comix,and be a supplier of 2012 LONDON OLYMPIC GAMES and\r\n2016 RIO OLYMPIC GAMES.</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/Uploads/201706/593faec12ff48.jpg\" alt=\"\" /> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">During the past 24 years, our company has\r\nadhered to the management concept of trust and cooperation, superior product\r\nquality and corporate cultural development for our personnel. Our corporate\r\nvision attracts a group of highly skilled technicians and professional\r\nmanagement staff that are eager and ready to serve our customers.&nbsp; As a result, our product quality meets\r\nworld-class standards. We also offer OEM and custom made services wherein we\r\ntailor the product according to the specifications and design of our clients. </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:16px;font-family:Arial;line-height:2;\">Honesty as the foundation, credit standing\r\nas rule, quality and quantity assured, development together. We sincerely would\r\nlike to cooperate with you on the basis of mutual benefit. You are warmly\r\nwelcome to visit us.</span> \r\n</p>\r\n<br />', '', '0');
INSERT INTO `bangju_page` VALUES ('103', 'Thanks', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for bangju_posid
-- ----------------------------
DROP TABLE IF EXISTS `bangju_posid`;
CREATE TABLE `bangju_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_posid
-- ----------------------------
INSERT INTO `bangju_posid` VALUES ('1', '首页', '0');

-- ----------------------------
-- Table structure for bangju_product
-- ----------------------------
DROP TABLE IF EXISTS `bangju_product`;
CREATE TABLE `bangju_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(40) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(60) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` mediumtext NOT NULL,
  `Price` varchar(80) NOT NULL DEFAULT '',
  `document` varchar(80) NOT NULL DEFAULT '',
  `msga` varchar(255) NOT NULL DEFAULT '',
  `msgb` varchar(255) NOT NULL DEFAULT '',
  `msgc` varchar(255) NOT NULL DEFAULT '',
  `msgd` varchar(255) NOT NULL DEFAULT '',
  `msge` varchar(255) NOT NULL DEFAULT '',
  `msgf` varchar(255) NOT NULL DEFAULT '',
  `msgg` mediumtext NOT NULL,
  `msgh` mediumtext NOT NULL,
  `msgi` mediumtext NOT NULL,
  `available_one` mediumtext NOT NULL,
  `available_two` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_product
-- ----------------------------
INSERT INTO `bangju_product` VALUES ('62', '96', '1', 'bangju', 'A-994', '', '/Uploads/201705/590995b104895.png', 'mobile Whiteboard', 'Yeyoung  mobile whiteboard- powerder coated steel tuble,Telescopic,adjustable in angle or 360 degree rotated', '<p>\r\n	<span style=\"line-height:2;font-size:16px;\"><strong><strong style=\"font-size:14px;line-height:28px;white-space:normal;\">&nbsp;A-994 mobile whiteboard :</strong><br />\r\n</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:16px;\"><strong>Stand:</strong>steel tube thickness 1.2mm,castor with brake dia 5cm,length is adjustable and hand bracket is adjustable to fit for the sigle side whiteboard size from 90x120cm to 120x240cm(36\"x48\"-48\"x76\").</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '/Mobilewhiteboard_62.html', '0', '1', '1', '1', '411', '1493720777', '1495597895', '0', '/Uploads/201705/5924fdc224000.jpg|A-994 mobile whiteboard (2).jpg:::/Uploads/201705/5924fdc28a62a.jpg|A-994 mobile whiteboard (1).jpg:::/Uploads/201705/5924fdc2c467c.jpg|A-994 mobile whiteboard (3).jpg:::/Uploads/201705/5924fdc310b23.jpg|A-994 mobile whiteboard (4).jpg', '', '', '1', '2', '3', '4', '5', '6', '7', '8', '9', '<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:16px;\"><strong><span style=\"font-size:14px;\">Board:</span></strong><span style=\"font-size:14px;\">high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:16px;\"><strong><span style=\"font-size:14px;\">Max height:</span></strong><span style=\"font-size:14px;\">193cm(75.98\");</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Packing:</strong></span><br />\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\">1 stand/ctn,0.003cbm/pcs;</span><br />\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\">1 board/ctn,0.005cbm/pcs;</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('61', '96', '1', 'bangju', 'A-987', '', '/Uploads/201705/590995d015f44.png', 'Magnetic Mobile Whiteboard', 'Weyoung A-987 mobile whiteboard series', '<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>&nbsp;A-987 magnetic&nbsp;mobile whiteboard :<br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Stand:&nbsp;</strong>steel tube thickness 1.2mm,castor with brake dia 5cm,length is adjustable and hand bracket is adjustable to fit for double sides whiteboard. Whiteboard can be 360 degrees rotated;</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Board:&nbsp;</strong>high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner;</span> \r\n</p>', '/Mobilewhiteboard_61.html', '0', '0', '1', '2', '99', '1493720770', '1495611289', '0', '/Uploads/201705/592500d09e6dd.jpg|A-987 mobile whiteboard  (1).jpg:::/Uploads/201705/592500d1349ea.jpg|A-987 mobile whiteboard  (2).jpg', '', '', '', '', '', '', '', '', '', '', '', '<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Size:&nbsp;</strong>90x120cm(36\"x48\"), 120x150cm(48\"x59\"), 120x180cm(48\"x70.86\"), 120x200cm(48\"x78.74\"), 120x240cm(48\"x94.48\").</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Max Height:&nbsp;</strong>195cm(76.77\");</span> \r\n</p>\r\n<p>\r\n	<strong style=\"font-size:14px;line-height:2;\">Packing:</strong> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\">1 stand/ctn,0.003cbm/pcs;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\">1 board/ctn,0.005cbm/pcs;</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><br />\r\n</span> \r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('60', '96', '1', 'bangju', 'A-986', '', '/Uploads/201705/59099a0072208.png', 'mobile whiteboard', 'Weyoung A-986 mobile whiteboard series', '<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>&nbsp;A-986 mobile whiteboard :<br />\r\n</strong></span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Stand:&nbsp;</strong>steel tube thickness 1.2mm,castor with brake dia 5cm,length is adjustable and hand bracket is adjustable to fit for double sides whiteboard. Whiteboard can be 360 degrees rotated;</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Board:&nbsp;</strong>high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner; &nbsp;</span> \r\n</p>\r\n<span style=\"white-space:normal;\"></span>', '/Mobilewhiteboard_60.html', '0', '0', '1', '3', '88', '1493720760', '1495597747', '0', '/Uploads/201705/59250190a9c45.jpg|A-986 mobile whiteboard (1).jpg:::/Uploads/201705/5925019145920.jpg|A-986 mobile whiteboard (2).jpg:::/Uploads/201705/5925019182925.jpg|A-986 mobile whiteboard (3).jpg', '', '', '', '', '', '', '', '', '', '', '', '<p>\r\n	<strong></strong> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<strong><span style=\"line-height:2;font-size:14px;\"><strong></strong></span></strong> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<br />\r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"font-size:14px;line-height:28px;\"><b> </b></span>\r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\">Size:&nbsp;90x120cm(36\"x48\"), 120x150cm(48\"x59\"), 120x180cm(48\"x70.86\"), 120x200cm(48\"x78.74\"), 120x240cm(48\"x94.48\").</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\">Max Height:&nbsp;195cm(76.77\");</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	Packing:\r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\">1 stand/ctn,0.003cbm/pcs;</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"font-size:14px;line-height:2;\">1 board/ctn,0.005cbm/pcs;</span> \r\n</p>\r\n<div>\r\n</div>\r\n<b><br />\r\n<div>\r\n	<br />\r\n</div>\r\n</b> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<strong><span style=\"line-height:2;font-size:14px;\"><strong></strong></span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong></strong> \r\n</p>\r\n<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n	<strong><span style=\"box-sizing:border-box;margin:0px;padding:0px;line-height:2;\"></span></strong> \r\n</p>\r\n<p style=\"box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:Arial;font-size:14px;line-height:20px;white-space:normal;background-color:#FFFFFF;\">\r\n	<strong><span style=\"box-sizing:border-box;margin:0px;padding:0px;line-height:2;\"></span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('59', '95', '1', 'bangju', 'GFC-888', '', '/Uploads/201705/59099a717520e.png', 'Mobile  Glass Whiteboard', 'WeYoung Mobile Glass Whiteboard-the beauty of simplicity,the Beauty of color.', '<span style=\"line-height:2;font-size:14px;\"><strong>Board:&nbsp;</strong>high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner;</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>Stand:</strong> steel tube,five star base dia 65cm(25.6\"),castor with brake dia 5cm,height adjustable;steel tube,five star let,dia 5cm castor with brake,height adjustable.Round base dia 68cm(26.7\");</span><br />\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Accessories:&nbsp;</strong>1 pcs magnetic eraser,3 pcs magnets;</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Extra Choice:</strong>extention bar.<br />\r\n</span> \r\n</p>', '/Mobileglassboard_59.html', '0', '1', '1', '4', '194', '1493720750', '1495593653', '0', '/Uploads/201705/5924f2711b1e6.jpg|GFC-888A-3 mobile glass board (1).jpg:::/Uploads/201705/5924f27187b39.jpg|GFC-888A-3 mobile glass board (2).jpg:::/Uploads/201705/5924f271bc0fe.jpg|GFC-888A-3 mobile glass board (3).jpg:::/Uploads/201705/5924f272e415e.jpg|GFC-888A-3 mobile glass board (4).jpg:::/Uploads/201705/5924f2743fe29.jpg|GFC-888A-3 mobile glass board (5).jpg', '', '', '', '', '', '', '', '', '', '', '', '<span style=\"line-height:2;font-size:14px;\"><strong>Board Size:</strong> 70x100cm(28\"x40\")</span><br />\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Max Height: </strong>195cm(78\")</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Packing: </strong>1set/ctn,0.096cbm/pcs,</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>G.W.: </strong>15.7kgs/set</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"></span> \r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('58', '95', '1', 'bangju', 'GFC-555', '', '/Uploads/201705/59099a7f8145d.png', 'mobile glass whiteboard', 'GFC-555 mobile glass whiteboard series', '<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>GFC-555 mobile whiteglass board&nbsp;<br />\r\n</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Board:&nbsp;</strong>4mm tempered glass whiteboard with magnetic;</span>\r\n</p>\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Stand:</strong>&nbsp;steel tube,five star base dia 65cm(25.6\"),castor with brake dia 5cm,height adjustable;</span><br />\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Accessories:&nbsp;</strong>1 pcs magnetic eraser.</span><br />', '/Mobileglassboard_58.html', '0', '0', '1', '5', '84', '1493720741', '1495610735', '0', '/Uploads/201705/5925355903927.jpg|GFC-555 mobile glass whiteboard  (1).jpg:::/Uploads/201705/5925355999fa6.jpg|GFC-555 mobile glass whiteboard  (2).jpg:::/Uploads/201705/59253559dfcd8.jpg|GFC-555 mobile glass whiteboard  (3).jpg:::/Uploads/201705/5925355a38466.jpg|GFC-555 mobile glass whiteboard  (4).jpg:::/Uploads/201705/5925355aa0e66.jpg|GFC-555 mobile glass whiteboard  (5).jpg', '', '', '', '', '', '', '', '', '', '', '', '<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Board Size:</strong>&nbsp;70x100cm(28\"x40\")</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Max Height:&nbsp;</strong>195cm(78\")</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Packing:&nbsp;</strong>1set/ctn,0.117cbm/pcs,</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>G.W.:&nbsp;</strong>16.9kgs/set</span> \r\n</p>\r\n<br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong></strong></span> \r\n<p>\r\n	<br />\r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('57', '95', '1', 'bangju', 'GFC-333', '', '/Uploads/201705/59099a3f60591.png', 'mobile glass whiteboard', 'GFC-333 mobile glass whiteboard products series', '<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>GFC-333 mobile glass whiteboard:<br />\r\n</strong></span>\r\n</p>\r\n<p>\r\n	<strong style=\"font-size:14px;line-height:2;\">Board:&nbsp;</strong><span style=\"font-size:14px;line-height:2;\">4mm tempered glass whiteboard with magnetic;</span>\r\n</p>\r\n<span style=\"line-height:2;font-size:14px;\"><strong>Stand:&nbsp;</strong>steel tube thickness 1.0mm,height adjustable;</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>Accessories:&nbsp;</strong>1 pcs magnetic eraser.</span><br />', '/Mobileglassboard_57.html', '0', '0', '1', '6', '166', '1493720733', '1495611100', '0', '/Uploads/201705/592536d8ca169.jpg|GFC-333 mobile glass whiteboard  (1).jpg:::/Uploads/201705/592536d961c5d.jpg|GFC-333 mobile glass whiteboard  (2).jpg:::/Uploads/201705/592536d9a21b4.jpg|GFC-333 mobile glass whiteboard  (3).jpg', '', '', '', '', '', '', '', '', '', '', '', '<span style=\"line-height:2;font-size:14px;\"><strong>Board Size:</strong> 60x90cm(24\"x36\")</span><br />\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Max Height:</strong> 165cm(64.96\")</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Packing:</strong> 1set/ctn,0.05cbm/pcs,</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>G.W.:</strong> 7.7kgs/set</span> \r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('56', '94', '1', 'bangju', 'FC-555', '', '/Uploads/201705/59099a90b7c25.png', 'Mobile Flip chart Easel', 'FC555 MOBILE FLIP CHART EASEL PRODUCTS SERIES', '<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>FC555 MOBILE FLIP CHART EASEL:<br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Board:</strong>high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner;</span> \r\n</p>\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Stand:</strong>steel tube,five star base dia 65cm(25.6\"),castor with brake dia 5cm,height adjustable;</span><br />\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Accessories:</strong>1 pcs magnetic eraser,3 pcs magnets;</span><br />\r\n<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Extra Choice:</strong>extention bar.</span>', '/Mobileflipcharteasel_56.html', '0', '1', '1', '7', '182', '1493720672', '1495612942', '0', '/Uploads/201705/59253e05a312b.jpg|FC555 MOBILE FLIP CHART EASEL   (1).jpg:::/Uploads/201705/59253e06450a9.jpg|FC555 MOBILE FLIP CHART EASEL   (2).jpg:::/Uploads/201705/59253e0682fe9.jpg|FC555 MOBILE FLIP CHART EASEL   (3).jpg:::/Uploads/201705/59253e06d1d42.jpg|FC555 MOBILE FLIP CHART EASEL   (4).jpg:::/Uploads/201705/59253e0721aed.jpg|FC555 MOBILE FLIP CHART EASEL   (5).jpg', '', '', '', '', '', '', '', '', '', '', '', '<span style=\"white-space:normal;line-height:2;font-size:14px;\"><strong>Board Size:</strong>70x100cm(28\"x40\")</span><br />\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Max Height:</strong>195cm(78\")</span> \r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<span style=\"line-height:2;font-size:14px;\"><strong></strong></span><span style=\"line-height:2;font-size:14px;\"><strong>Packing:</strong>1set/ctn,0.11cbm/pcs,</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>G.W.:</strong>11.5kgs/set</span> \r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('55', '94', '1', 'bangju', 'FC-301', '', '/Uploads/201705/59099aa421464.png', 'MOBILE FLIP CHAR', 'FC301 MOBILE FLIP CHART EASEL PRODUCTS SERIES', '<p>\r\n	<strong><span style=\"line-height:2;font-size:14px;\">FC301 MOBILE FLIP CHART EASEL:<br />\r\n</span></strong>\r\n</p>\r\n<p>\r\n	<strong><span style=\"line-height:2;font-size:14px;\">Board:</span></strong><span style=\"line-height:2;font-size:14px;\">high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner;</span> \r\n</p>\r\n<p>\r\n	<strong><span style=\"line-height:2;font-size:14px;\">Stand:</span></strong><span style=\"line-height:2;font-size:14px;\">steel tube thickness 1.0mm,height adjustable;</span> \r\n</p>\r\n<span style=\"line-height:2;\"><strong><span style=\"font-size:14px;\">Accessories:</span></strong><span style=\"font-size:14px;\">1 pcs magnetic eraser,3 pcs magnets.</span></span><br />\r\n<span style=\"font-size:14px;\"></span><br />', '/Mobileflipcharteasel_55.html', '0', '0', '1', '8', '81', '1493720649', '1495609543', '0', '/Uploads/201705/592530bf235b5.jpg|FC301 MOBILE FLIP CHART EASEL (2).jpg:::/Uploads/201705/592530bfa5dc5.jpg|FC301 MOBILE FLIP CHART EASEL (3).jpg:::/Uploads/201705/592530c034cf4.jpg|FC301 MOBILE FLIP CHART EASEL (4).jpg:::/Uploads/201705/592530c09febb.jpg|FC301 MOBILE FLIP CHART EASEL (5).jpg', '', '', 'Tripod flipchart easel', 'high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner', 'steel tube thickness 1.0mm,height adjustable', '1 pcs magnetic eraser,3 pcs magnets.', '', '', '', '', '1 pcs magnetic eraser,3 pcs magnets.', '<span style=\"line-height:2;font-size:14px;\"><strong>Board Size:</strong>60x90cm(24\"x36\")</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>Max Height:</strong>160cm(63\")</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>Packing:</strong>1set/ctn,0.057cbm/pcs,</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"><strong>G.W.:</strong>7.7kgs/set</span><br />', '<span style=\"line-height:2;font-size:14px;\"><strong>Board Size:</strong>70x100cm(28\"x40\")</span><br />\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Max Height:</strong>170cm(66.93\")</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>Packing:</strong>1set/ctn,0.07cbm/pcs,</span><span style=\"line-height:2;font-size:14px;\">G.W.:9.7kgs/set</span> \r\n</p>');
INSERT INTO `bangju_product` VALUES ('54', '94', '1', 'bangju', 'FC-888', '', '/Uploads/201705/59099ab54d905.png', 'Mobile Flip chart Easel', 'Weyoung Mobile Flip chart Easel products series', '<p>\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>FC888 MOBILE FLIP CHART EASEL&nbsp;<br />\r\n</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;line-height:2;\"><strong>Board:&nbsp;</strong>high quality lacquered steel sheet surface with magnetic,aluminum frame,ABS corner;</span>\r\n</p>\r\n<span style=\"font-size:14px;line-height:2;\"><strong>Stand:&nbsp;</strong>steel tube,five star let,dia 5cm castor with brake,height adjustable.Round base dia 68cm(26.7\");</span><br />\r\n<span style=\"font-size:14px;line-height:2;\"><strong>Accessories:&nbsp;</strong>1 pcs magnetic eraser,3 pcs magnets;</span><br />\r\n<span style=\"font-size:14px;line-height:2;\"><strong>Extra Choice:&nbsp;</strong>extention bar.</span><br />', '/Mobileflipcharteasel_54.html', '0', '0', '1', '9', '114', '1493285599', '1495608813', '0', '/Uploads/201705/59252dd7e2652.jpg|FC888 MOBILE FLIP CHART EASEL (1).jpg:::/Uploads/201705/59252dd9ebab3.jpg|FC888 MOBILE FLIP CHART EASEL (2).jpg:::/Uploads/201705/59252dda3a0b7.jpg|FC888 MOBILE FLIP CHART EASEL (3).jpg:::/Uploads/201705/59252dda9d22e.jpg|FC888 MOBILE FLIP CHART EASEL (4).jpg', '', '', 'zzg', '', '', '', '', '', '', '', '', '<strong><span style=\"line-height:2;font-size:14px;\">Board Size:</span></strong><span style=\"line-height:2;font-size:14px;\">70x100cm(28\"x40\")</span><br />\r\n<p>\r\n	<strong><span style=\"line-height:2;font-size:14px;\">Max Height:</span></strong><span style=\"line-height:2;font-size:14px;\">195cm(78\")</span> \r\n</p>\r\n<p>\r\n	<strong><span style=\"line-height:2;font-size:14px;\">Packing:</span></strong><span style=\"line-height:2;font-size:14px;\">1set/ctn,0.096cbm/pcs,&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:14px;\"><strong>G.W.:&nbsp;</strong>15.7kgs/set</span><br />\r\n<span style=\"line-height:2;font-size:14px;\"></span> \r\n</p>', '');
INSERT INTO `bangju_product` VALUES ('63', '102', '1', 'bangju', 'CAB142', '', '/Uploads/201705/5924f5e32f4ed.jpg', 'notice board', 'weyoung notice board series', '<p>\r\n	<span style=\"font-size:14px;\"><strong>&nbsp;</strong></span><span style=\"line-height:1.5;font-size:14px;\"><strong>CAB142 notice board with door:</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span>\r\n</p>\r\n<p>\r\n	Option:open doors or sliding doors;<br />\r\nFrame:Aluminum thickness 1.2mm,frame thickness 50mm;<br />\r\nWall-mount:by 4pcs hooks;<br />\r\nDoor come with lock,each lock comes with 2 keys;<br />\r\nPacking:1pcs/ctn.<br />\r\n</p>', '/BulletinBoard_63.html', '0', '0', '1', '0', '45', '1495594472', '1495773101', '0', '/Uploads/201705/5924f5e1b95b0.jpg|CAB142 notice board (1).jpg:::/Uploads/201705/5924f5e25590b.jpg|CAB142 notice board (2).jpg:::/Uploads/201705/5924f5e2928de.jpg|CAB142 notice board (3).jpg:::/Uploads/201705/5924f5e32f4ed.jpg|CAB142 notice board (4).jpg', '', '', '', '', '', '', '', '', '', '', '', '<p>\r\n	<span style=\"font-size:14px;\"><strong>Available size:&nbsp;</strong></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	60x90cm(23.62\"35.43\"),&nbsp;<span style=\"line-height:1.5;\">70x100cm(27.55\"x39.37\"), 0x120cm(35.43\"x47.24\"),&nbsp;</span>\r\n</p>\r\n<p>\r\n	120x150cm(47.24\"x59.05\"), 120x180cm(47.24\"x70.86\")\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '');
INSERT INTO `bangju_product` VALUES ('64', '102', '1', 'bangju', 'CB-85', '', '/Uploads/201705/5924f745486e7.jpg', 'notice board', 'weyoung notice board series', '<br />\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong>CB-85&nbsp;</strong></span><span style=\"font-size:14px;\"><strong></strong></span><span style=\"font-size:14px;\"><strong>notice board series</strong></span><span style=\"font-size:14px;\"><strong>:</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong><br />\r\n</strong></span> \r\n</p>\r\nWY-85 NOTICE BOARD<br />\r\nSurface material choice: cork sheet or felt(color: blue,gray,red,green);&nbsp;<br />\r\nCore:corrugated cardboard;<br />', '/BulletinBoard_64.html', '0', '1', '1', '0', '41', '1495594920', '1503658792', '0', '/Uploads/201705/5924f7a4a884d.jpg|CB-85notice board (1).jpg:::/Uploads/201705/5924f7a4e860e.jpg|CB-85notice board (2).jpg', '', '', '', '', '', '', '', '', '', '', '', 'Frame:Aluminum thickness 0.9mm,frame thickness 15mm;<br />\r\nWall-mount:by 2-4pcs movable and invisible hooks;<br />\r\nPacking:1pcs/ctn.<br />\r\nAvailable size:30x45-120x240cm(11.81\"x17.71\"-47.24\"x94.48\")<br />\r\n<div>\r\n	<br />\r\n</div>', '');
INSERT INTO `bangju_product` VALUES ('66', '104', '1', 'bangju', 'WY-81', '', '/Uploads/201705/5927bdf9a0511.jpg', 'magnetic whiteboard', 'WY-81 with  gliding- magnetic whiteboard series', '<p>\r\n	<span style=\"font-size:14px;\"><strong>WY-81 Magnetic whiteboard:</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong><br />\r\n</strong></span>\r\n</p>\r\nSurface material choice:lacquered steel sheet or enamel steel sheet;<br />\r\nCore:corrugated cardboard,foam board or MDF;<br />\r\nBack:galvanized steel sheet,<br />\r\nFrame:Aluminum thickness 0.9mm,frame thickness 24mm;<br />\r\nWall-mount:by 2-4pcs movable and invisible hooks;or wall-mount by 4 ABS corner;<br />\r\nTray:aluminum tray,width 55mm;<br />\r\nPacking:1pcs/ctn.<br />', '/Magneticwhiteboard_66.html', '0', '0', '1', '0', '32', '1495776766', '1495776766', '0', '/Uploads/201705/5927bda1d6ee8.jpg|WY-81 with  gliding- magnetic whiteboard  (1).jpg:::/Uploads/201705/5927bda2b6ad0.jpg|WY-81 with  gliding- magnetic whiteboard  (2).jpg:::/Uploads/201705/5927bda39a3df.jpg|WY-81 with  gliding- magnetic whiteboard  (3).jpg', '', '', '', '', '', '', '', '', '', '', '', 'Available size:45x60-120x400cm(17.71\"x23.62\"-47.24\"x157.48\")<br />\r\n<div>\r\n	<br />\r\n</div>', '');
INSERT INTO `bangju_product` VALUES ('65', '104', '1', 'bangju', 'FO-97', '', '/Uploads/201705/5927a8ba4d019.jpg', 'magnetic whiteboard', 'FO-97 magnetic whiteboard products series ', '<p>\r\n	<strong><span style=\"font-size:14px;\">FO-97 magnetic whiteboard :</span></strong>\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:14px;\"><br />\r\n</span></strong>\r\n</p>\r\n<p>\r\n	WY-97 Magnetic whiteboard\r\n</p>\r\nSurface material choice:lacquered steel sheet or enamel steel sheet;<br />\r\nCore:corrugated cardboard,foam board or MDF;<br />\r\nBack:galvanized steel sheet,<br />\r\nFrame:Aluminum thickness 0.5mm,frame thickness 20mm;<br />\r\n<br />\r\n<div>\r\n	<br />\r\n</div>', '/Magneticwhiteboard_65.html', '0', '0', '1', '0', '42', '1495771354', '1495771354', '0', '/Uploads/201705/5927a8ba4d019.jpg|FO-97 magnetic whiteboard (1).jpg:::/Uploads/201705/5927a8bb2ba85.jpg|FO-97 magnetic whiteboard (3).jpg:::/Uploads/201705/5927a8bb942dc.jpg|FO-97 magnetic whiteboard (2).jpg', '', '', '', '', '', '', '', '', '', '', '', '<span style=\"white-space:normal;\">ABS plastic corner;</span><br />\r\n<span style=\"white-space:normal;\">Wall-mount:by 2-4pcs movable and invisible hooks;</span><br />\r\n<span style=\"white-space:normal;\">Tray:aluminum tray,width 55mm;</span><br />\r\n<span style=\"white-space:normal;\">Packing:1pcs/ctn.</span><br />\r\n<span style=\"white-space:normal;\">Available size:45x60-120x2400cm(17.71\"x23.62\"-47.24\"x94.48\")</span>', '');
INSERT INTO `bangju_product` VALUES ('67', '104', '1', 'bangju', 'WY-88', '', '/Uploads/201705/5927bf9b6dfa5.jpg', 'MAGNETIC WHITEBOARD', 'WY-88 with planner- MAGNETIC WHITEBOARD (1)', '<p>\r\n	<strong><span style=\"font-size:14px;\">WY-88 Magnetic whiteboard：</span></strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\nSurface material choice: lacquered steel sheet or enamel steel sheet;<br />\r\nCore:corrugated cardboard;<br />\r\nBack:galvanized steel sheet,<br />\r\nFrame:Aluminum thickness 0.9mm,frame thickness 12mm;<br />\r\nWall-mount:by 2-4pcs movable and invisible hooks;<br />\r\nTray:aluminum tray,width 55mm;<br />\r\nPacking:1pcs/ctn.<br />', '/Magneticwhiteboard_67.html', '0', '0', '1', '0', '32', '1495777185', '1495777185', '0', '/Uploads/201705/5927bf86aa4e1.jpg|WY-88 with planner- MAGNETIC WHITEBOARD (1).jpg:::/Uploads/201705/5927bf87855e8.jpg|WY-88 with planner- MAGNETIC WHITEBOARD (2).jpg:::/Uploads/201705/5927bf8911fe0.jpg|WY-88 with planner- MAGNETIC WHITEBOARD (3).jpg', '', '', '', '', '', '', '', '', '', '', '', 'Available size:30x45-120x180cm(11.81\"x17.71\"-47.24\"x70.86\")<br />\r\n<div>\r\n	<br />\r\n</div>', '');
INSERT INTO `bangju_product` VALUES ('68', '104', '1', 'bangju', 'WY-95', '', '/Uploads/201705/5927c14ed0f96.jpg', 'MAGNETIC WHITEBOARD', 'WY-95 MAGNETIC WHITEBOARD series\r\n', '<p>\r\n	<span style=\"font-size:14px;\"><strong>WY-95 NOTICE BOARD：</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><br />\r\n</span>\r\n</p>\r\nSurface material choice: cork sheet or felt(color: blue,gray,red,green);&nbsp;<br />\r\nCore:corrugated cardboard;<br />\r\n<br />\r\nFrame:Aluminum thickness 0.9mm,frame thickness 17mm;<br />\r\nWall-mount:by 2-4pcs movable and invisible hooks;<br />\r\nPacking:1pcs/ctn.<br />', '/Magneticwhiteboard_68.html', '0', '0', '1', '0', '36', '1495777633', '1495777633', '0', '/Uploads/201705/5927c13d21041.jpg|WY-95 MAGNETIC WHITEBOARD  (1).jpg:::/Uploads/201705/5927c13e91602.jpg|WY-95 MAGNETIC WHITEBOARD  (2).jpg', '', '', '', '', '', '', '', '', '', '', '', 'Available size:30x45-120x240cm(11.81\"x17.71\"-47.24\"x94.48\")<br />\r\n<div>\r\n	<br />\r\n</div>', '');
INSERT INTO `bangju_product` VALUES ('69', '104', '1', 'bangju', 'WY-99', '', '/Uploads/201705/5927c245efc8c.jpg', 'MAGNETIC WHITEBOARD', 'WY-99 porcelain MAGNETIC WHITEBOARD (1)', '<p>\r\n	<span style=\"font-size:14px;\"><strong>WY-99 Magnetic whiteboard：</strong></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\nSurface material choice: lacquered steel sheet or enamel steel sheet;<br />\r\nCore:corrugated cardboard,foam board or MDF;<br />\r\nBack:galvanized steel sheet,<br />\r\nFrame:Aluminum thickness 0.9mm,frame thickness 20mm;<br />\r\nABS plastic corner;<br />\r\nWall-mount:by 2-4pcs movable and invisible hooks;<br />\r\nTray:aluminum tray,width 55mm;<br />\r\nPacking:1pcs/ctn.<br />', '/Magneticwhiteboard_69.html', '0', '1', '1', '0', '51', '1495777868', '1503658815', '0', '/Uploads/201705/5927c22ab5a7b.jpg|WY-99 porcelain MAGNETIC WHITEBOARD (1).jpg:::/Uploads/201705/5927c22b74df0.jpg|WY-99 porcelain MAGNETIC WHITEBOARD (2).jpg:::/Uploads/201705/5927c22ce0e96.jpg|WY-99 porcelain MAGNETIC WHITEBOARD (3).jpg:::/Uploads/201705/5927c22e158b1.jpg|WY-99 porcelain MAGNETIC WHITEBOARD (4).jpg', '', '', '', '', '', '', '', '', '', '', '', 'Available size:45x60-120x300cm(17.71\"x23.62\"-47.24\"x118.11\")<br />\r\n<div>\r\n	<br />\r\n</div>', '');
INSERT INTO `bangju_product` VALUES ('70', '104', '1', 'bangju', 'WY-97', '', '/Uploads/201705/5927c411d0604.jpg', 'MAGNETIC WHITEBOARD', 'WY-97 MAGNETIC WHITEBOARD series', '<p>\r\n	<span style=\"font-size:14px;\"><strong>WY-97 </strong></span><span style=\"font-size:14px;\"><strong>&nbsp;MAGNETIC WHITEBOARD：</strong></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\nSurface material choice: cork sheet or felt(color: blue,gray,red,green);&nbsp;<br />\r\nCore:corrugated cardboard;<br />\r\n<br />\r\n<br />\r\nFrame:Aluminum thickness 0.9mm,frame thickness 20mm;<br />\r\nWall-mount:by 2-4pcs movable and invisible hooks;<br />\r\nPacking:1pcs/ctn.<br />', '/Magneticwhiteboard_70.html', '0', '0', '1', '0', '43', '1495778327', '1495778327', '0', '/Uploads/201705/5927c3fe77ca5.jpg|WY-97 MAGNETIC WHITEBOARD (1).jpg:::/Uploads/201705/5927c3ff3e716.jpg|WY-97 MAGNETIC WHITEBOARD (2).jpg:::/Uploads/201705/5927c400e4e21.jpg|WY-97 MAGNETIC WHITEBOARD (3).jpg:::/Uploads/201705/5927c401e3000.jpg|WY-97 with planner MAGNETIC WHITEBOARD.jpg', '', '', '', '', '', '', '', '', '', '', '', 'Available size:30x45-120x240cm(11.81\"x17.71\"-47.24\"x94.48\")<br />\r\n<div>\r\n	<br />\r\n</div>', '');

-- ----------------------------
-- Table structure for bangju_role
-- ----------------------------
DROP TABLE IF EXISTS `bangju_role`;
CREATE TABLE `bangju_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxmessagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_role
-- ----------------------------
INSERT INTO `bangju_role` VALUES ('1', '超级管理员', '1', '超级管理员', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `bangju_role` VALUES ('2', '管理员', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for bangju_role_user
-- ----------------------------
DROP TABLE IF EXISTS `bangju_role_user`;
CREATE TABLE `bangju_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_role_user
-- ----------------------------
INSERT INTO `bangju_role_user` VALUES ('1', '2');
INSERT INTO `bangju_role_user` VALUES ('1', '3');

-- ----------------------------
-- Table structure for bangju_slide
-- ----------------------------
DROP TABLE IF EXISTS `bangju_slide`;
CREATE TABLE `bangju_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `flashfile` varchar(150) NOT NULL DEFAULT '',
  `xmlfile` varchar(150) NOT NULL DEFAULT '',
  `tpl` varchar(30) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_slide
-- ----------------------------
INSERT INTO `bangju_slide` VALUES ('1', '首页banner', '', '', '1', '220', '220', '5', '1', '0');
INSERT INTO `bangju_slide` VALUES ('2', '手机版banner', '', '', '1', '22', '22', '5', '1', '0');

-- ----------------------------
-- Table structure for bangju_slide_data
-- ----------------------------
DROP TABLE IF EXISTS `bangju_slide_data`;
CREATE TABLE `bangju_slide_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` tinyint(3) unsigned DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `pic` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_slide_data
-- ----------------------------
INSERT INTO `bangju_slide_data` VALUES ('3', '2', '01', '/Uploads/201708/59a3b141a079d.jpg', '', '0', '1', '0');
INSERT INTO `bangju_slide_data` VALUES ('7', '1', 'banner1', '/Uploads/201705/59101012d93da.jpg', '/Mobileglassboard_57.html', '0', '1', '0');
INSERT INTO `bangju_slide_data` VALUES ('8', '1', 'banner2', '/Uploads/201705/5910102f82bc9.jpg', '/Mobilewhiteboard_62.html', '0', '1', '0');
INSERT INTO `bangju_slide_data` VALUES ('9', '1', 'banner3', '/Uploads/201705/5913ca49a7841.jpg', '', '0', '1', '0');

-- ----------------------------
-- Table structure for bangju_type
-- ----------------------------
DROP TABLE IF EXISTS `bangju_type`;
CREATE TABLE `bangju_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_type
-- ----------------------------
INSERT INTO `bangju_type` VALUES ('1', '友情链接', '0', '友情链接分类', '1', '0', '1');

-- ----------------------------
-- Table structure for bangju_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `bangju_urlrule`;
CREATE TABLE `bangju_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showurlrule` varchar(255) NOT NULL DEFAULT '',
  `showexample` varchar(255) NOT NULL DEFAULT '',
  `listurlrule` varchar(255) NOT NULL DEFAULT '',
  `listexample` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_urlrule
-- ----------------------------
INSERT INTO `bangju_urlrule` VALUES ('1', '0', '{$catdir}_{$id}.html|{$catdir}_{$id}-{$page}.html', 'news_1.html|news_1-1.html', '{$catdir}.html|{$catdir}-{$page}.html', 'news.html|news-1.html', '0');

-- ----------------------------
-- Table structure for bangju_user
-- ----------------------------
DROP TABLE IF EXISTS `bangju_user`;
CREATE TABLE `bangju_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(50) NOT NULL DEFAULT '',
  `answer` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `web_url` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `last_logintime` int(11) unsigned NOT NULL DEFAULT '0',
  `reg_ip` char(15) NOT NULL DEFAULT '',
  `last_ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bangju_user
-- ----------------------------
INSERT INTO `bangju_user` VALUES ('3', '1', 'wenyang_admin', '747af20e3076b32d4299709a3a6546a0d160d346', 'donna.lin@cosmoing.com', '', '', '', '1', '', '', '', '', '', '8', '1503154775', '0', '1503972800', '58.62.92.7', '192.168.1.1', '1', '0.00', '0', '');
INSERT INTO `bangju_user` VALUES ('2', '1', 'admin', '226595277b7a3022cfd79827debc22c3a8e22d4f', '812991033@qq.com', 'admin', '', '', '1', '', '', '', '', '', '6', '1502869825', '0', '1555556299', '122.97.176.27', '127.0.0.1', '1', '0.00', '0', '');
