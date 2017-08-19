/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.53-log : Database - multishop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`multishop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `multishop`;

/*Table structure for table `admin_menu` */

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `parent_menu_id` int(11) NOT NULL COMMENT '父级菜单ID',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `operate_flag` varchar(32) NOT NULL COMMENT '操作标记（用于判断权限)',
  `menu_url` varchar(128) NOT NULL DEFAULT '' COMMENT '菜单链接',
  `icons` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单表现图标（Font Awesome）',
  `display_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '增加时间',
  `add_ip` char(15) NOT NULL DEFAULT '' COMMENT '增加菜单的IP地址',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '菜单修改时间',
  `update_ip` char(15) NOT NULL DEFAULT '' COMMENT '修改菜单的IP地址',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='管理后台菜单表';

/*Data for the table `admin_menu` */

insert  into `admin_menu`(`menu_id`,`parent_menu_id`,`menu_name`,`operate_flag`,`menu_url`,`icons`,`display_order`,`add_time`,`add_ip`,`update_time`,`update_ip`) values 
(30,12,'管理员列表','system-administrators','administrators','',0,1492566640,'127.0.0.1',1492567442,'127.0.0.1'),
(39,26,'直推关系图','member-tree','member/tree','',2,1492570125,'127.0.0.1',0,''),
(12,0,'系统设置','system','','fa-cog',5,0,'',1492654029,'127.0.0.1'),
(41,37,'充值记录','caiwu-recharge','recharge','',1,1492583123,'127.0.0.1',1492583493,'127.0.0.1'),
(25,12,'角色管理','system-role','role','',0,1491536987,'127.0.0.1',1491550035,'127.0.0.1'),
(26,0,'会员管理','member','','fa-user',1,1491537171,'127.0.0.1',1492588065,'127.0.0.1'),
(31,12,'系统参数','system-settings','settings','',0,1492502623,'127.0.0.1',1492505268,'127.0.0.1'),
(24,12,'菜单管理','system-menu','menu','',0,1491536414,'127.0.0.1',1491550008,'127.0.0.1'),
(38,26,'全部会员','member-memberlist','member','',1,1492570054,'127.0.0.1',0,''),
(40,26,'网络拓扑图','member-tree2','member/tree2','',3,1492570159,'127.0.0.1',0,''),
(37,0,'财务管理','caiwu','','fa-cny',5,0,'',0,''),
(43,26,'会员菜单','admin-membermenu','membermenu','',5,1492592401,'127.0.0.1',1492592502,'127.0.0.1'),
(46,0,'新闻管理','news','','fa-newspaper-o',3,1492654201,'127.0.0.1',0,''),
(47,46,'新闻分类','news-typelist','news/typelist','fa-newspaper-o',3,1492654247,'127.0.0.1',1493198622,'127.0.0.1'),
(48,46,'新闻列表','news-list','news/','',1,1492654283,'127.0.0.1',1492654320,'127.0.0.1'),
(53,37,'提现管理','caiwu-withdrawals','withdrawals','',2,1493705632,'127.0.0.1',1493705656,'127.0.0.1'),
(54,26,'代理中心申请','member-business','business','',6,1493781638,'127.0.0.1',1493781658,'127.0.0.1'),
(55,37,'奖金明细','caiwu-bonus','bonus','',3,1494379490,'127.0.0.1',1494471065,'127.0.0.1'),
(56,0,'活动管理','activity','','fa-flag',2,1494379490,'127.0.0.1',1494471065,'127.0.0.1'),
(57,56,'奖项列表','activity-setprize','prizeset','fa-flag',2,1494379490,'127.0.0.1',1494471065,'127.0.0.1'),
(58,56,'中奖信息','activity-prizeinfo','prizeinfo','fa-flag',3,1494379490,'127.0.0.1',1494471065,'127.0.0.1'),
(59,56,'添加奖项','activity-inventory','prizeset/add','fa-flag',1,1494379490,'127.0.0.1',1494471065,'127.0.0.1');

/*Table structure for table `admin_role` */

DROP TABLE IF EXISTS `admin_role`;

CREATE TABLE `admin_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  `operate_flags` mediumtext NOT NULL COMMENT '拥有的操作权限',
  `add_time` int(11) NOT NULL,
  `add_ip` char(15) NOT NULL,
  `update_time` int(11) NOT NULL,
  `update_ip` char(15) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理用户角色表';

/*Data for the table `admin_role` */

insert  into `admin_role`(`role_id`,`role_name`,`operate_flags`,`add_time`,`add_ip`,`update_time`,`update_ip`) values 
(1,'超级管理员','member,member-memberlist,member-tree,member-tree2,admin-membermenu,member-business,caiwu,caiwu-recharge,caiwu-withdrawals,caiwu-bonus,system,system-role,system-settings,system-menu,news,news-list,news-typelist,activity,activity-setprize,activity-prizeinfo,activity-inventroy',0,'',1494820754,'127.0.0.1'),
(2,'客服','member,member-memberlist,member-tree,member-tree2,admin-membermenu,member-business,caiwu,caiwu-recharge,caiwu-withdrawals',1491552392,'127.0.0.1',1494826778,'127.0.0.1'),
(3,'财务管理员','member,member-memberlist,member-business,caiwu,caiwu-recharge,caiwu-withdrawals,caiwu-bonus',1494914957,'183.160.106.143',1496139766,'112.28.149.204');

/*Table structure for table `admin_user` */

DROP TABLE IF EXISTS `admin_user`;

CREATE TABLE `admin_user` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ADMIN_ID',
  `username` varchar(32) NOT NULL COMMENT '管理用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `reg_ip` char(15) NOT NULL,
  `reg_time` int(11) NOT NULL,
  `update_ip` char(15) NOT NULL,
  `update_time` int(11) NOT NULL,
  `login_time` int(11) NOT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `adminusername` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='管理用户表';

/*Data for the table `admin_user` */

insert  into `admin_user`(`adminid`,`username`,`password`,`role_id`,`reg_ip`,`reg_time`,`update_ip`,`update_time`,`login_time`) values 
(1,'admin3','78f02ac05f47659a338935ab759935b6',1,'',0,'127.0.0.1',1492482848,1502787004),
(6,'adminvip2','d75af698da2d1f1e335d99e09145f58b',3,'183.160.106.143',1494915050,'112.28.149.204',1496139777,0),
(8,'admin1','78f02ac05f47659a338935ab759935b6',1,'',0,'127.0.0.1',1492482848,1500808904),
(9,'adminvip','e10adc3949ba59abbe56e057f20f883e',3,'183.160.106.143',1494915050,'112.28.149.204',1496139777,1502792031),
(10,'admin','e10adc3949ba59abbe56e057f20f883e',1,'',0,'127.0.0.1',1492482848,1503133439),
(11,'kehu','e10adc3949ba59abbe56e057f20f883e',2,'183.160.106.143',1494915050,'112.28.149.204',1496139777,1502792294);

/*Table structure for table `member_child` */

DROP TABLE IF EXISTS `member_child`;

CREATE TABLE `member_child` (
  `member_child_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '子账户ID',
  `member_id` int(11) NOT NULL COMMENT '主账户ID',
  `invest_availabal` float(10,2) NOT NULL COMMENT '子账户可用 投资奖励',
  `invest_unavailable` float(10,2) NOT NULL COMMENT '子账户 不可用 投资奖励',
  `register_time` int(11) NOT NULL COMMENT '子账户注册时间',
  `times` int(3) NOT NULL COMMENT '收益次数',
  PRIMARY KEY (`member_child_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `member_child` */

/*Table structure for table `member_dynamic_bonus` */

DROP TABLE IF EXISTS `member_dynamic_bonus`;

CREATE TABLE `member_dynamic_bonus` (
  `bonus_id` int(15) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态奖励ID',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `bonus_time` int(11) NOT NULL COMMENT '奖励发放时间',
  `bonus_type` tinyint(1) NOT NULL COMMENT '奖励类型：直推奖励，等级奖励',
  `bonus_ratio` int(3) NOT NULL COMMENT '奖励比率',
  `bonus_money` float(10,2) NOT NULL COMMENT '奖励金额',
  `bonus_reason` text NOT NULL COMMENT '奖励理由',
  PRIMARY KEY (`bonus_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `member_dynamic_bonus` */

/*Table structure for table `member_info` */

DROP TABLE IF EXISTS `member_info`;

CREATE TABLE `member_info` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` varchar(32) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `password2` varchar(32) NOT NULL DEFAULT '' COMMENT '二次服务密码',
  `role` int(2) NOT NULL DEFAULT '0' COMMENT '会员角色：0普通会员 1 代理 2 联盟',
  `idcard` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '会员状态 -2 完成出局 -1 封号 0 待激活 1 已激活 ',
  `money` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '现金钱包',
  `invest_available` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '可用投资奖励',
  `invest_unavailable` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '不可用投资奖励',
  `dynamic_bonus` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '动态奖励  金额',
  `profit_time` int(3) NOT NULL DEFAULT '0' COMMENT '投资收益次数',
  `child_num` int(3) NOT NULL DEFAULT '0' COMMENT '子账户数量',
  `dailino` varchar(8) NOT NULL DEFAULT '' COMMENT '代理中心编号',
  `tjr_username` varchar(32) NOT NULL COMMENT '推荐人用户名',
  `tjr_tree` mediumtext NOT NULL COMMENT '直推人队列',
  `pre_username` varchar(32) NOT NULL DEFAULT '' COMMENT '节点人用户名',
  `pre_tree` mediumtext NOT NULL COMMENT '上级队列',
  `daili` varchar(32) NOT NULL DEFAULT '' COMMENT '所属代理中心',
  `daili_tree` mediumtext NOT NULL COMMENT '代理中心队列',
  `position` tinyint(2) NOT NULL DEFAULT '0' COMMENT '位置：1,2,3',
  `level` tinyint(2) NOT NULL COMMENT '会员等级：0 普通会员 1代理中心 2总代',
  `tj_nums` int(11) NOT NULL DEFAULT '0' COMMENT '直推人数',
  `nums_1` int(11) NOT NULL DEFAULT '0' COMMENT '区域1人数',
  `nums_2` int(11) NOT NULL DEFAULT '0' COMMENT '区域2人数',
  `nums_3` int(11) NOT NULL DEFAULT '0' COMMENT '区域3人数',
  `telphone` varchar(20) NOT NULL DEFAULT '' COMMENT '联系号码',
  `bank` varchar(20) NOT NULL DEFAULT '' COMMENT '开户行',
  `cardno` varchar(20) NOT NULL DEFAULT '' COMMENT '卡号',
  `account_name` varchar(20) NOT NULL DEFAULT '' COMMENT '银行开户名',
  `reg_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` char(15) NOT NULL DEFAULT '' COMMENT '注册IP',
  `update_time` int(11) NOT NULL,
  `update_ip` char(15) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货地址',
  `telphone2` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人联系方式',
  `linkman` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `taocan` varchar(20) NOT NULL DEFAULT '' COMMENT '套餐选择',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `pre_username+position` (`pre_username`,`position`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COMMENT='会员表';

/*Data for the table `member_info` */

insert  into `member_info`(`uid`,`username`,`realname`,`nickname`,`password`,`password2`,`role`,`idcard`,`state`,`money`,`invest_available`,`invest_unavailable`,`dynamic_bonus`,`profit_time`,`child_num`,`dailino`,`tjr_username`,`tjr_tree`,`pre_username`,`pre_tree`,`daili`,`daili_tree`,`position`,`level`,`tj_nums`,`nums_1`,`nums_2`,`nums_3`,`telphone`,`bank`,`cardno`,`account_name`,`reg_time`,`reg_ip`,`update_time`,`update_ip`,`address`,`telphone2`,`linkman`,`taocan`) values 
(1,'system','会员系统','会员系统','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,4799.45,200.00,589.90,0.00,0,0,'0001','','','','','','',0,2,3,52,1,1,'6546','中国工商银行','6546556','51665654',0,'',1494402879,'192.168.1.108','','','',''),
(94,'1234567','天亮','天亮','21b95a0f90138767b0fd324e6be3457b','198810',0,'431102198810033871',1,1760.32,15251.00,1544.28,0.00,0,0,'999','system','[{\"username\":\"system\"}]','system','[{\"username\":\"system\",\"position\":\"1\"}]','0001','[{\"username\":\"0001\"}]',1,2,35,28,23,0,'123456789','中国农业银行','123456789','123456789',1495375645,'112.28.175.36',1499074677,'220.202.152.65','123456','123456','123456','套餐A'),
(95,'0000001','曾百龙','曾百龙','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','system','[{\"username\":\"system\"}]','system','[{\"username\":\"system\",\"position\":\"2\"}]','999','',2,0,0,0,0,0,'0000001','中国银行','0000001','0000001',1496069495,'112.28.175.170',1496236984,'112.28.172.87','0000001','0000001','0000001','套餐A'),
(96,'0000002','李智远','李智远','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','system','[{\"username\":\"system\"}]','system','[{\"username\":\"system\",\"position\":\"3\"}]','999','',3,0,0,0,0,0,'123456789','中国银行','123456789','123456789',1496069570,'112.28.175.170',1496236956,'112.28.172.87','123456789','123456789','123456789','套餐A'),
(97,'13950939333','付彩凤','付彩凤','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','1234567','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"}]','999','[{\"username\":\"999\"}]',2,0,0,22,0,0,'13950939333','中国银行','12345679','付彩凤',1496134780,'112.28.149.204',0,'','福建','13950939333','付彩凤','套餐A'),
(98,'13704787979','关红玉','关红玉','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,42.46,0.00,5.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13950939333','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,1,21,0,0,'13704787979','中国银行','123456','关红玉',1496135294,'112.28.149.204',0,'','内蒙古','13704787979','关红玉','套餐A'),
(99,'18551551519','汪荣昌','汪荣昌','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,1457.28,0.00,180.00,0.00,0,0,'666','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','1234567','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,1,3,26,1,0,'18551551519','中国银行','123456','汪荣昌',1496135508,'112.28.149.204',1498029530,'112.28.149.56','江苏','18551551519','汪荣昌','套餐A'),
(100,'15051341118','顾伟伟','顾伟伟','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18551551519','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,24,1,0,'15051341118','中国农业银行','6228481981450076211','顾伟伟',1496135948,'112.28.149.204',0,'','江苏','15051341118','顾伟伟','套餐A'),
(101,'15961946308','黄加新','黄加新','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','18551551519','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18551551519\"}]','15051341118','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,23,0,0,'15961946308','中国建设银行','6217001320002972193','黄加新',1496136644,'112.28.149.204',0,'','江苏','15961946308','黄加新','套餐A'),
(102,'13401789358','王春云','王春云','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','18551551519','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18551551519\"}]','15051341118','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"2\"}]','999','[{\"username\":\"999\"}]',2,0,0,0,0,0,'13401789358','中国工商银行','6222021109006614232','王春云',1496136829,'112.28.149.204',0,'','江苏','13401789358','王春云','套餐A'),
(103,'15022271666','孙树青','孙树青','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','18551551519','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18551551519\"}]','18551551519','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"2\"}]','999','[{\"username\":\"999\"}]',2,0,0,0,0,0,'15022271666','中国农业银行','6228480028259815471','孙树青',1496137009,'112.28.149.204',0,'','江苏','15022271666','孙树青','套餐A'),
(104,'01118957687','刘家宏','刘家宏','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.88,0.00,16.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15961946308','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,2,20,2,0,'601118957687','中国银行','6217770007995941','刘家宏',1496137425,'112.28.149.204',0,'','南京','601118957687','刘家宏','套餐A'),
(105,'123119577','何美霞','何美霞','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,39.96,0.00,5.00,0.00,0,0,'','01118957687','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"01118957687\"}]','01118957687','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,1,19,0,0,'123119577','中国银行','123456','何美霞',1496137596,'112.28.149.204',0,'','南京','123119577','何美霞','套餐A'),
(106,'123123123','王有菊','王有菊','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,39.96,0.00,5.00,0.00,0,0,'','01118957687','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"01118957687\"}]','01118957687','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"2\"}]','999','[{\"username\":\"999\"}]',2,0,1,1,0,0,'123123123','中国工商银行','6222081901003180663','王有菊',1496137868,'112.28.149.204',0,'','湖南','123123123','王有菊','套餐A'),
(107,'128896099','李宋娜','李宋娜','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','123123123','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"01118957687\"},{\"username\":\"123123123\"}]','123123123','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"2\"},{\"username\":\"123123123\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,0,0,0,'128896099','中国银行','123456','李宋娜',1496138054,'112.28.149.204',0,'','南京','128896099','李宋娜','套餐A'),
(108,'1000008','陈勇杰','陈勇杰','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','123119577','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"01118957687\"},{\"username\":\"123119577\"}]','123119577','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,18,0,0,'123456','中国银行','123456','陈勇杰',1496138318,'112.28.149.204',0,'','南京','123456','陈勇杰','套餐A'),
(109,'18790109876','谌小琴','谌小琴','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','1000008','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,17,0,0,'18790109876','中国银行','123456','谌小琴',1496138566,'112.28.149.204',0,'','河南','18790109876','谌小琴','套餐A'),
(110,'13889677228','李娜','李娜','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18790109876','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"}]','999','',1,0,0,16,0,0,'13889677228','中国银行','123456','李娜',1496138817,'112.28.149.204',0,'','辽宁','13889677228','李娜','套餐A'),
(111,'15677365066','温苑植','温苑植','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13889677228','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,15,0,0,'15677365066','中国银行','123456','温苑植',1496138965,'112.28.149.204',0,'','桂林','15677365066','温苑植','套餐A'),
(112,'15994814194','温江涛','温江涛','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15677365066','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,14,0,0,'15994814194','中国银行','123456','温江涛',1496139085,'112.28.149.204',0,'','桂林','15994814194','温江涛','套餐A'),
(113,'18278327650','黄梅','黄梅','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'111','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15994814194','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,1,0,13,0,0,'15779715605','支付宝','15779715605','黄梅',1496139193,'112.28.149.204',1498887765,'119.39.248.102','桂林','18278327650','吴兴瑞','套餐A'),
(114,'18078378500','杨勤','杨勤','2ed150a9d58784e6ecbc97f5335b2e12','720313',0,'430525197403132523',1,65.56,0.00,96.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18278327650','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,6,6,6,0,'13873108538','中国银行','6217857500014696972','杨勤',1496139316,'112.28.149.204',1500273796,'113.246.164.65','桂林','18078378500','陈杰','套餐A'),
(115,'18073155866','曹毅','曹毅','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18078378500','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,5,0,0,'18073155866','中国银行','123465','曹毅',1496139420,'112.28.149.204',0,'','湖南','18073155866','曹毅','套餐A'),
(116,'15111106778','罗蒙','罗蒙','21b95a0f90138767b0fd324e6be3457b','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13704787979','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,20,0,0,'15616124181','中国农业银行','123456','罗蒙',1496144419,'112.28.149.204',1498721080,'175.10.239.44','湖南','15111106778','石昌威','套餐A'),
(118,'18670495961','李丽','李丽','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15111106778','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,19,0,0,'18670495961','中国银行','123456','李丽',1496150736,'112.28.149.204',1498576386,'112.28.150.139','湖南','18670495961','吉训弟','套餐A'),
(119,'18382433209','刘红','刘红','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18670495961','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,18,0,0,'18382433209','中国银行','123456','刘红',1496206227,'183.160.107.54',0,'','四川','18382433209','刘红','套餐A'),
(121,'15185527895','张春雨','张春雨','042883f7db3467ca869c104c9bf70541','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18382433209','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,17,0,0,'15185527895','中国银行','15185527895','张春雨',1496765665,'175.10.236.54',1496981362,'221.13.63.110','湖南','15185527895','张春雨','套餐A'),
(122,'18942577169','胡继亮','胡继亮','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15185527895','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,16,0,0,'18942577169','中国建设银行','6236682920005232705','胡继亮',1496765956,'175.10.236.54',0,'','湖南','18942577169','胡继亮','套餐A'),
(123,'18114177774','刘豪','刘豪','4e39060ecf8d60393ec11a97f8ef6960','7758521BU886123',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18942577169','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,15,0,0,'18114177774','中国银行','12456789','刘豪',1496766119,'175.10.236.54',0,'','江苏省常州市武进区湖塘镇人民东路常州东港内','18114177774','刘豪','套餐A'),
(124,'18620065510','郭凤莲','郭凤莲','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18114177774','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,14,0,0,'18620065510','中国农业银行','6222023602072499254','郭凤莲',1496766334,'175.10.236.54',0,'','东莞清溪镇三中村三中路百佳妇科医院','18620065510','郭凤莲','套餐A'),
(125,'15883750517','刘洪佐','刘洪佐','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18620065510','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,13,0,0,'15883750517','中国工商银行','6212264402019825474','刘洪佐',1496766541,'175.10.236.54',0,'','四川省绵阳市平武县政府家属院','15883750517','刘洪佐','套餐A'),
(126,'18684868060','陈伟','陈伟','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15883750517','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,12,0,0,'18684868060','中国银行','123456','陈伟',1497196683,'112.28.151.203',0,'','湖南长沙','18684868060','陈伟','套餐A'),
(127,'18601068859','季晓京','季晓京','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18684868060','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,11,0,0,'18601068859','中国银行','123456','季晓京',1497232720,'183.160.110.189',0,'','湖南','18601068859','季晓京','套餐A'),
(128,'13366118888','叶涛','叶涛','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18601068859','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,10,0,0,'13366118888','中国银行','123456789','叶涛',1497233169,'183.160.110.189',0,'','北京','13366118888','叶涛','套餐A'),
(129,'13121388533','刘雅','刘雅','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13366118888','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,9,0,0,'13121388533','中国银行','123456789','刘雅',1497233510,'183.160.110.189',0,'','湖北襄阳','13121388533','刘雅','套餐A'),
(130,'13302697832','龙茂珠','龙茂珠','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18073155866','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"1\"},{\"username\":\"18073155866\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,4,0,0,'13302697832','中国银行','12345679','龙茂珠',1497322758,'112.28.151.203',0,'','贵州','13302697832','龙茂珠','套餐A'),
(131,'9231522','张文媛','张文媛','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','13704787979','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"13704787979\"}]','13121388533','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,8,0,0,'9231522','中国银行','9231522','张文媛',1497424197,'183.160.109.203',0,'','内蒙古','9231522','张文媛','套餐A'),
(132,'18728818318','胡明芳','胡明芳','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,39.96,0.00,5.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','9231522','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,1,7,0,0,'18728818318','中国建设银行','6227003653690121625','胡明芳',1497449477,'112.28.172.61',0,'',' 重庆','18728818318','胡明芳','套餐A'),
(133,'15099339777','杨亮','杨亮','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','18728818318','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,6,0,0,'15099339777','中国银行','1234567489','杨亮',1497542746,'112.28.174.146',0,'','乌鲁木齐','15099339777','杨亮','套餐A'),
(134,'18709947295','张宏博','张宏博','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15099339777','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"},{\"username\":\"15099339777\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,5,0,0,'18709947295','中国银行','12345678','张宏博',1497542851,'112.28.174.146',0,'','乌鲁木齐','18709947295','张宏博','套餐A'),
(135,'13079992089','刘丽娟','刘丽娟','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13302697832','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"1\"},{\"username\":\"18073155866\",\"position\":\"1\"},{\"username\":\"13302697832\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,3,0,0,'13079992089','中国银行','123456789','刘丽娟',1497543032,'112.28.174.146',0,'','乌鲁木齐','13079992089','刘丽娟','套餐A'),
(137,'13974835941','刘英姿','刘英姿','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','18728818318','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18728818318\"}]','18709947295','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"},{\"username\":\"15099339777\",\"position\":\"1\"},{\"username\":\"18709947295\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,4,0,0,'13974835941','中国银行','12345679','刘英姿',1497543259,'112.28.174.146',0,'','湖南长沙','13974835941','刘英姿','套餐A'),
(138,'13571509835','石英','石英','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13974835941','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"},{\"username\":\"15099339777\",\"position\":\"1\"},{\"username\":\"18709947295\",\"position\":\"1\"},{\"username\":\"13974835941\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,3,0,0,'13571509835','中国银行','13245679','石英',1497925501,'112.28.150.204',0,'','西安','13571509835','石英','套餐A'),
(139,'15616124181','罗蒙','罗蒙','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,100.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13079992089','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"1\"},{\"username\":\"18073155866\",\"position\":\"1\"},{\"username\":\"13302697832\",\"position\":\"1\"},{\"username\":\"13079992089\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,2,0,0,'15616124181','中国银行','1234567898','罗蒙',1498147112,'112.28.149.112',0,'','湖南','15616124181','罗蒙','套餐A'),
(140,'5181321','谭丽仪','谭丽仪','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,39.96,0.00,5.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','15616124181','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"1\"},{\"username\":\"18073155866\",\"position\":\"1\"},{\"username\":\"13302697832\",\"position\":\"1\"},{\"username\":\"13079992089\",\"position\":\"1\"},{\"username\":\"15616124181\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,1,1,0,0,'15820968563','中国建设银行','6227003230570056799','谭丽仪',1498838000,'119.39.248.64',0,'','广州','15820968563','谭丽仪','套餐A'),
(141,'13662828323','钟艳霞','钟艳霞','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','5181321','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"5181321\"}]','5181321','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"1\"},{\"username\":\"18073155866\",\"position\":\"1\"},{\"username\":\"13302697832\",\"position\":\"1\"},{\"username\":\"13079992089\",\"position\":\"1\"},{\"username\":\"15616124181\",\"position\":\"1\"},{\"username\":\"5181321\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,0,0,0,'13662828323','中国农业银行','6228480601046625914','钟艳霞',1498838140,'119.39.248.64',0,'','广州','13662828323','钟艳霞','套餐A'),
(142,'0224042','鲍竹林','鲍竹林','53c5c4482a3839858a443cb42e508557','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','13571509835','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"},{\"username\":\"15099339777\",\"position\":\"1\"},{\"username\":\"18709947295\",\"position\":\"1\"},{\"username\":\"13974835941\",\"position\":\"1\"},{\"username\":\"13571509835\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,2,0,0,'18359051351','中国建设银行','623668187000104O852 ','鲍竹林',1498838488,'119.39.248.64',0,'','上海','18359051351','鲍竹林','套餐A'),
(143,'1000010','陈凤仙','123456789','e10adc3949ba59abbe56e057f20f883e','123456',0,'12345678900',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','0224042','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"},{\"username\":\"15099339777\",\"position\":\"1\"},{\"username\":\"18709947295\",\"position\":\"1\"},{\"username\":\"13974835941\",\"position\":\"1\"},{\"username\":\"13571509835\",\"position\":\"1\"},{\"username\":\"0224042\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,1,0,0,'123456789','中国银行','123456789','陈凤仙',1499845039,'119.39.90.104',0,'','福建','123456798','陈凤仙','套餐A'),
(144,'1000011','郭凤莲','郭凤莲','e10adc3949ba59abbe56e057f20f883e','123456',0,'612301195311260426',1,0.00,0.00,0.00,0.00,0,0,'','1234567','[{\"username\":\"system\"},{\"username\":\"1234567\"}]','1000010','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"2\"},{\"username\":\"13950939333\",\"position\":\"1\"},{\"username\":\"13704787979\",\"position\":\"1\"},{\"username\":\"15111106778\",\"position\":\"1\"},{\"username\":\"18670495961\",\"position\":\"1\"},{\"username\":\"18382433209\",\"position\":\"1\"},{\"username\":\"15185527895\",\"position\":\"1\"},{\"username\":\"18942577169\",\"position\":\"1\"},{\"username\":\"18114177774\",\"position\":\"1\"},{\"username\":\"18620065510\",\"position\":\"1\"},{\"username\":\"15883750517\",\"position\":\"1\"},{\"username\":\"18684868060\",\"position\":\"1\"},{\"username\":\"18601068859\",\"position\":\"1\"},{\"username\":\"13366118888\",\"position\":\"1\"},{\"username\":\"13121388533\",\"position\":\"1\"},{\"username\":\"9231522\",\"position\":\"1\"},{\"username\":\"18728818318\",\"position\":\"1\"},{\"username\":\"15099339777\",\"position\":\"1\"},{\"username\":\"18709947295\",\"position\":\"1\"},{\"username\":\"13974835941\",\"position\":\"1\"},{\"username\":\"13571509835\",\"position\":\"1\"},{\"username\":\"0224042\",\"position\":\"1\"},{\"username\":\"1000010\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,0,0,0,'18620065510','中国建设银行','612301195311260426','郭凤莲',1499845339,'119.39.90.104',0,'','广州市','18620065510','郭凤莲','套餐A'),
(145,'15873131211','杨红','杨红','e10adc3949ba59abbe56e057f20f883e','123456',0,'430122197001166244',1,0.00,0.00,0.00,0.00,0,0,'','18078378500','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18078378500\"}]','18078378500','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"2\"}]','999','[{\"username\":\"999\"}]',2,0,0,5,0,0,'15873131211','中国银行','123456798','杨红',1500281314,'110.53.253.191',0,'','长沙芙蓉区，东二环二段233号，长沙东协盛医院急诊科','15873131211','杨红','套餐A'),
(146,'黎志旭','黎志旭','黎志旭','e10adc3949ba59abbe56e057f20f883e','123456',0,'430122199811056011',1,0.00,0.00,0.00,0.00,0,0,'','18078378500','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18078378500\"}]','15873131211','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"2\"},{\"username\":\"15873131211\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,4,0,0,'15873131211','中国银行','123456789','黎志旭',1500281490,'110.53.253.191',0,'','长沙市岳麓区英才园小区2片10栋207房','15873131211','黎志旭','套餐A'),
(148,'8042848','黎依茗','黎依茗','e10adc3949ba59abbe56e057f20f883e','123456',0,'430111199908042848',1,0.00,0.00,0.00,0.00,0,0,'','18078378500','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18078378500\"}]','黎志旭','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"2\"},{\"username\":\"15873131211\",\"position\":\"1\"},{\"username\":\"\\u9ece\\u5fd7\\u65ed\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,3,0,0,'15873131211','中国银行','15873131211','黎依茗',1500281794,'110.53.253.191',0,'','长沙市雨花区狮子山一片41栋103房','15873131211','黎依茗','套餐A'),
(149,'13975809181','杨子墨','杨子墨','e10adc3949ba59abbe56e057f20f883e','123456',0,'430211200706074025',1,0.00,0.00,0.00,0.00,0,0,'','18078378500','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18078378500\"}]','8042848','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"2\"},{\"username\":\"15873131211\",\"position\":\"1\"},{\"username\":\"\\u9ece\\u5fd7\\u65ed\",\"position\":\"1\"},{\"username\":\"8042848\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,2,0,0,'13975809181','中国银行','123456789','杨子墨',1500306657,'110.53.253.191',0,'','长沙市望城区金星大道北209号新地东方明珠小区二期9栋','13975809181','杨子墨','套餐A'),
(150,'15973129260','梁晓兰','','e10adc3949ba59abbe56e057f20f883e','123456',0,'',1,0.00,0.00,0.00,0.00,0,0,'','18078378500','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18078378500\"}]','13975809181','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"2\"},{\"username\":\"15873131211\",\"position\":\"1\"},{\"username\":\"\\u9ece\\u5fd7\\u65ed\",\"position\":\"1\"},{\"username\":\"8042848\",\"position\":\"1\"},{\"username\":\"13975809181\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,1,0,0,'15973129260','中国建设银行','6236682920001165578','梁晓兰',1500342937,'175.11.86.41',0,'','','长沙市望城区金星大道北新地东方明珠小区一','梁晓兰','套餐A'),
(151,'王嫣芝','王嫣芝','','e10adc3949ba59abbe56e057f20f883e','123456',0,'430104200305073022',1,0.00,0.00,0.00,0.00,0,0,'','18078378500','[{\"username\":\"system\"},{\"username\":\"1234567\"},{\"username\":\"18078378500\"}]','15973129260','[{\"username\":\"system\",\"position\":\"1\"},{\"username\":\"1234567\",\"position\":\"1\"},{\"username\":\"18551551519\",\"position\":\"1\"},{\"username\":\"15051341118\",\"position\":\"1\"},{\"username\":\"15961946308\",\"position\":\"1\"},{\"username\":\"01118957687\",\"position\":\"1\"},{\"username\":\"123119577\",\"position\":\"1\"},{\"username\":\"1000008\",\"position\":\"1\"},{\"username\":\"18790109876\",\"position\":\"1\"},{\"username\":\"13889677228\",\"position\":\"1\"},{\"username\":\"15677365066\",\"position\":\"1\"},{\"username\":\"15994814194\",\"position\":\"1\"},{\"username\":\"18278327650\",\"position\":\"1\"},{\"username\":\"18078378500\",\"position\":\"2\"},{\"username\":\"15873131211\",\"position\":\"1\"},{\"username\":\"\\u9ece\\u5fd7\\u65ed\",\"position\":\"1\"},{\"username\":\"8042848\",\"position\":\"1\"},{\"username\":\"13975809181\",\"position\":\"1\"},{\"username\":\"15973129260\",\"position\":\"1\"}]','999','[{\"username\":\"999\"}]',1,0,0,0,0,0,'13873108538','中国银行','6217857500014696972','杨勤',1500382719,'113.246.164.248',1500414067,'113.246.164.248','长沙市望城区金星大道北209号新地东方明珠小区二期','13873108538','杨勤','套餐A');

/*Table structure for table `member_menu` */

DROP TABLE IF EXISTS `member_menu`;

CREATE TABLE `member_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `parent_menu_id` int(11) NOT NULL COMMENT '父级菜单ID',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `operate_flag` varchar(32) NOT NULL COMMENT '操作标记（用于判断权限)',
  `menu_url` varchar(128) NOT NULL DEFAULT '' COMMENT '菜单链接',
  `icons` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单表现图标（Font Awesome）',
  `display_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '增加时间',
  `add_ip` char(15) NOT NULL DEFAULT '' COMMENT '增加菜单的IP地址',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '菜单修改时间',
  `update_ip` char(15) NOT NULL DEFAULT '' COMMENT '修改菜单的IP地址',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='管理后台菜单表';

/*Data for the table `member_menu` */

insert  into `member_menu`(`menu_id`,`parent_menu_id`,`menu_name`,`operate_flag`,`menu_url`,`icons`,`display_order`,`add_time`,`add_ip`,`update_time`,`update_ip`) values 
(43,0,'会员资料','data','','fa-book',2,1492594698,'127.0.0.1',1492595297,'127.0.0.1'),
(44,43,'基本资料','data-base','data/base','',1,1492594786,'127.0.0.1',0,''),
(70,0,'首页','member-main','main','fa-home',1,1495084320,'183.160.111.112',1495086333,'183.160.111.112'),
(52,0,'安全管理','security','','fa-bell',3,1493198609,'127.0.0.1',0,''),
(47,0,'财务管理','finance','','fa-cny',5,1492595275,'127.0.0.1',1492595284,'127.0.0.1'),
(49,47,'奖金明细','finance-bonus','finance/bonus','',2,1492595765,'127.0.0.1',1492595777,'127.0.0.1'),
(50,47,'提现管理','finance-withdrawals','finance/withdrawals','',3,1492595923,'127.0.0.1',0,''),
(65,60,'报单币对冲','business-duichong','business/duichong','',3,1493258346,'127.0.0.1',1493258400,'127.0.0.1'),
(53,52,'登录密码','security-password','security/password','',1,1493198680,'127.0.0.1',1493198836,'127.0.0.1'),
(54,52,'服务密码','security-password2','security/password2','',2,1493198955,'127.0.0.1',0,''),
(56,0,'团队管理','team','','fa-user',4,1493199415,'127.0.0.1',0,''),
(57,56,'直推关系图','team-tree','team/tree','',4,1493199606,'127.0.0.1',1493281101,'127.0.0.1'),
(58,56,'安置网络图','team-tree2','team','',3,1493199668,'127.0.0.1',1493281088,'127.0.0.1'),
(66,56,'注册会员','team-member-add','team/add','',1,1493281199,'127.0.0.1',1493687865,'127.0.0.1'),
(60,0,'代理中心','business','','fa-bank',6,1493199954,'127.0.0.1',1493863939,'127.0.0.1'),
(61,60,'会员列表','business-memberlist','business/memberlist','',2,1493200163,'127.0.0.1',1493863908,'127.0.0.1'),
(62,60,'申请商务中心','business-add','business','',1,1493200357,'127.0.0.1',1494207270,'127.0.0.1'),
(63,0,'新闻管理','news','','fa-newspaper-o',7,1493200525,'127.0.0.1',0,''),
(64,63,'新闻列表','news-list','news','',1,1493200573,'127.0.0.1',1493879837,'127.0.0.1'),
(67,47,'内部转账','finance-transfer','finance/transfer','',5,1494208744,'127.0.0.1',1494208767,'127.0.0.1'),
(68,60,'入账记录','business-transfer','business/transfer','',4,1494827717,'127.0.0.1',1494827827,'127.0.0.1'),
(69,56,'推广二维码','team-qrcode','team/ciqrcode','',5,1494910807,'183.160.106.143',1494993945,'183.160.111.112'),
(71,0,'活动管理','activity','','fa-cog',5,1502794328,'127.0.0.1',1502794746,'127.0.0.1'),
(72,71,'奖项设置管理','activity-setprize','prizeset','fa-cog',1,1502794609,'127.0.0.1',0,'');

/*Table structure for table `member_shareholder` */

DROP TABLE IF EXISTS `member_shareholder`;

CREATE TABLE `member_shareholder` (
  `sh_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '联盟会员ID',
  `member_id` int(11) NOT NULL COMMENT '普通会员ID',
  `day_profit` float(10,2) NOT NULL COMMENT '日收益',
  PRIMARY KEY (`sh_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `member_shareholder` */

/*Table structure for table `member_sign_history` */

DROP TABLE IF EXISTS `member_sign_history`;

CREATE TABLE `member_sign_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '签到id',
  `member_name` varchar(32) NOT NULL COMMENT '会员姓名',
  `member_id` varchar(11) NOT NULL COMMENT '会员ID',
  `sign_time` int(11) NOT NULL COMMENT '签到时间',
  `month_times` int(2) NOT NULL COMMENT '本月签到次数',
  `detail_info` text COMMENT '具体签到日期信息（具体那些天签到了）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `member_sign_history` */

/*Table structure for table `shop_goods` */

DROP TABLE IF EXISTS `shop_goods`;

CREATE TABLE `shop_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cat_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `extend_cat_id` int(11) DEFAULT '0' COMMENT '扩展分类id',
  `goods_sn` varchar(60) NOT NULL DEFAULT '' COMMENT '商品编号',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '商品名称',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `store_count` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '库存数量',
  `comment_count` smallint(5) DEFAULT '0' COMMENT '商品评论数',
  `weight` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品重量克为单位',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '本店价',
  `cost_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品成本价',
  `price_ladder` text COMMENT '价格阶梯',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `goods_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简单描述',
  `goods_content` text COMMENT '商品详细描述',
  `original_img` varchar(255) NOT NULL DEFAULT '' COMMENT '商品上传原始图',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为实物',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否上架',
  `is_free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮0否1是',
  `on_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品上架时间',
  `sort` smallint(4) unsigned NOT NULL DEFAULT '50' COMMENT '商品排序',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否热卖',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品所属类型id，取值表goods_type的cat_id',
  `spec_type` smallint(5) DEFAULT '0' COMMENT '商品规格类型，取值表goods_type的cat_id',
  `give_integral` mediumint(8) DEFAULT '0' COMMENT '购买商品赠送积分',
  `exchange_integral` int(10) NOT NULL DEFAULT '0' COMMENT '积分兑换：0不参与积分兑换，积分和现金的兑换比例见后台配置',
  `suppliers_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '供货商ID',
  `sales_sum` int(11) DEFAULT '0' COMMENT '商品销量',
  `prom_type` tinyint(1) DEFAULT '0' COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠,4预售',
  `prom_id` int(11) DEFAULT '0' COMMENT '优惠活动id',
  `commission` decimal(10,2) DEFAULT '0.00' COMMENT '佣金用于分销分成',
  `spu` varchar(128) DEFAULT '' COMMENT 'SPU',
  `sku` varchar(128) DEFAULT '' COMMENT 'SKU',
  `shipping_area_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '配送物流shipping_area_id,以逗号分隔',
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_number` (`store_count`),
  KEY `goods_weight` (`weight`),
  KEY `sort_order` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

/*Data for the table `shop_goods` */

insert  into `shop_goods`(`goods_id`,`cat_id`,`extend_cat_id`,`goods_sn`,`goods_name`,`click_count`,`brand_id`,`store_count`,`comment_count`,`weight`,`market_price`,`shop_price`,`cost_price`,`price_ladder`,`keywords`,`goods_remark`,`goods_content`,`original_img`,`is_real`,`is_on_sale`,`is_free_shipping`,`on_time`,`sort`,`is_recommend`,`is_new`,`is_hot`,`last_update`,`goods_type`,`spec_type`,`give_integral`,`exchange_integral`,`suppliers_id`,`sales_sum`,`prom_type`,`prom_id`,`commission`,`spu`,`sku`,`shipping_area_ids`) values 
(1,12,0,'0000','Apple iPhone 6s Plus 16G 玫瑰金 移动联通电信4G手机',463,11,299,5,150,6107.00,6007.00,0.00,NULL,'LG 3g 876 支持 双模 2008年04月 灰色 GSM,850,900,1800,1900','选择【联通合约机0元购机】，购机款仅需4066\r\n选择【移动合约机】，锯惠5588，不换号，购机入网返高额话费~\r\n选【电信合约机】，买手机送话费！激活到账100元，实付低至29元/月，月享4GB大流量','&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/public/upload/goods/2016/03-09/56e01a6586cd0.jpg&quot; title=&quot;4.jpg&quot;/&gt;&lt;/p&gt;','/public/upload/goods/2016/03-09/56e01a4088d3b.jpg',1,1,0,1477121173,54,1,1,1,1269589545,4,4,0,100,0,0,0,0,0.00,'','',''),
(39,191,0,'0039','华为（HUAWEI） M2 10.0 平板电脑 WiFi 月光银',40,15,1000,3,1000,2388.00,2288.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695b35c538bb.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1452218607027.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695b35c65802.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1452218609169.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695b35c7b577.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1452218613383.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695b2f14616a.jpg',1,1,0,0,50,1,0,1,0,15,15,0,100,0,0,0,0,0.00,'','',''),
(40,191,0,'0040','荣耀X2 标准版 双卡双待双通 移动/联通双4G 16GB ROM（月光银）',41,15,1000,3,1000,2099.00,1999.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695bd6ddd3f5.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1443086923441.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695bd6deed8b.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1443086925858.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695bd6e11704.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1443086930218.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695bd0ba3d1d.jpg',1,1,0,0,50,1,0,1,0,15,15,0,0,0,0,0,0,0.00,'','',''),
(41,191,0,'0041','华为（HUAWEI） M2 8英寸平板电脑（1920×1200 IPS屏 海思麒麟930 16GB WiFi）香槟金',39,0,1000,3,1000,1688.00,1588.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695bf965a51e.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695bf966fdaf.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1436778773358.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695bf968425d.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1436778776369.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695bf6426994.jpg',1,1,0,0,50,1,0,1,0,15,15,0,0,0,0,0,0,0.00,'','',''),
(42,191,0,'0042','Teclast/台电 X80 Plus WIFI 32GB Win10平板电脑双系统8英寸',35,0,1000,3,750,599.00,499.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0c0affa4.jpg&quot; style=&quot;float:none;&quot; title=&quot;4.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0c0c7e7e.jpg&quot; style=&quot;float:none;&quot; title=&quot;5.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0c0e2137.jpg&quot; style=&quot;float:none;&quot; title=&quot;6.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0c108396.jpg&quot; style=&quot;float:none;&quot; title=&quot;7.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695c0873d865.png',1,1,0,0,50,1,0,1,0,15,0,0,0,0,0,0,0,0.00,'','',''),
(43,191,0,'0043','荣耀畅玩平板note 9.6英寸平板电脑 移动/联通双4G LTE版',21,0,1000,3,1000,1599.00,1499.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0ec14e50.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_4.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0ec28ef9.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1437719553507.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0ec3b6e7.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1437719557462.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c0ec4e2fe.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1437719559949.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695c0d15fc5f.jpg',1,1,0,0,50,1,0,1,0,15,15,0,0,0,0,0,0,0.00,'','',''),
(44,191,0,'0044','荣耀平板 8.0英寸平板电脑（Wi-Fi版 四核1.2GHz处理器 1GB内存 8GB存储）',23,0,1000,3,1000,899.00,799.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c1ee3c7e3.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_11.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c1ee516fa.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1408413425624.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c1ee61ac7.jpg&quot; style=&quot;float:none;&quot; title=&quot;800_800_11.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695c1ee7cb38.jpg&quot; style=&quot;float:none;&quot; title=&quot;800_800_1408413425624.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695c1e0549fc.jpg',1,1,0,0,50,1,0,1,0,15,15,0,0,0,0,0,0,0.00,'','',''),
(45,123,0,'0045','华为 HUAWEI C199S 麦芒3S 电信4G智能手机FDD-LTE /TD-LTE/CDMA2000/GSM（麦芒金）',87,0,299,4,800,2099.00,1999.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695e9288f339.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_124.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695e928a3fa9.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1422345288169.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695e928b965b.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1422345291577.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695e928ca243.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1422345293232.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695e913ed253.jpg',1,1,0,0,50,1,0,1,0,4,4,0,100,0,0,0,0,0.00,'','',''),
(46,123,0,'0046','【北京移动老用户专享 话费六折】荣耀畅玩5X 双卡双待 移动版 智能手机（破晓银）',35,0,1000,4,800,1099.00,999.00,0.00,NULL,'','今日起商城搞活动,注册立马送30元代金券,全场满69全国包邮,全场满299送20元优惠券,全场满399送电影票,满999送美国旅游景点门票1张','&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695ef50b1557.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_0.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695ef50c39b1.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1449800297199.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695ef50d775a.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1449800299159.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/upload/goods/2016/01-13/5695ef50ec8b7.jpg&quot; style=&quot;float:none;&quot; title=&quot;428_428_1449800301030.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','/public/upload/goods/2016/01-13/5695ef4114f2b.jpg',1,1,0,0,50,1,0,1,0,4,4,0,0,0,0,0,0,0.00,'','','');

/*Table structure for table `shop_goods_category` */

DROP TABLE IF EXISTS `shop_goods_category`;

CREATE TABLE `shop_goods_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `name` varchar(90) NOT NULL DEFAULT '' COMMENT '商品分类名称',
  `mobile_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '手机端显示的商品分类名',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `parent_id_path` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '家族图谱',
  `level` tinyint(1) DEFAULT '0' COMMENT '等级',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50' COMMENT '顺序排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `image` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '分类图片',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否推荐为热门分类',
  `cat_group` tinyint(1) DEFAULT '0' COMMENT '分类分组默认0',
  `commission_rate` tinyint(1) DEFAULT '0' COMMENT '分佣比例',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;

/*Data for the table `shop_goods_category` */

insert  into `shop_goods_category`(`id`,`name`,`mobile_name`,`parent_id`,`parent_id_path`,`level`,`sort_order`,`is_show`,`image`,`is_hot`,`cat_group`,`commission_rate`) values 
(1,'手机 、 数码 、 通信','数码产品',0,'0_1',1,50,1,'/Public/upload/category/2016/04-02/56ffa1252fb1b.jpg',1,0,0),
(2,'家用电器','家用电器',0,'0_2',1,50,1,'/Public/upload/category/2016/04-22/5719c3c5bc052.jpg',1,0,0),
(3,'电脑、办公','电脑',0,'0_3',1,50,1,'/Public/upload/category/2016/04-22/5719c40f21341.jpg',1,0,0),
(4,'家居、家具、家装、厨具','家具',0,'0_4',1,50,1,'/Public/upload/category/2016/04-22/5719c41e70959.jpg',0,0,0),
(5,'男装、女装、童装、内衣','服装',0,'0_5',1,50,1,'/Public/upload/category/2016/04-22/5719c432da41e.jpg',0,0,0),
(6,'个人化妆','个人化妆',0,'0_6',1,52,1,'/Public/upload/category/2016/04-22/5719c4a1e3447.jpg',0,0,0),
(7,'鞋、箱包、珠宝、手表','箱包',0,'0_7',1,50,1,'/Public/upload/category/2016/04-22/5719c445a02ba.jpg',0,0,0),
(8,'运动户外','运动户外',0,'0_8',1,50,0,'/Public/upload/category/2016/04-22/5719c45078f06.jpg',0,0,0),
(9,'汽车用品','汽车用品',0,'0_9',1,50,0,'/Public/upload/category/2016/04-22/5719c460687ec.jpg',0,0,0),
(10,'母婴用品、儿童玩具','母婴用品、儿童玩具',0,'0_10',1,50,0,'/Public/upload/category/2016/04-22/5719c46c0c5ee.jpg',0,0,0),
(11,'图书、音像、电子书','图书、音像、电子书',0,'0_11',1,51,0,'/Public/upload/category/2016/04-22/5719c49369854.jpg',0,0,0),
(12,'手机配件','手机配件',1,'0_1_12',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(13,'摄影摄像','摄影摄像',1,'0_1_13',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(14,'运营商','运营商',1,'0_1_14',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(15,'数码配件','数码配件',1,'0_1_15',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(16,'娱乐影视','娱乐影视',1,'0_1_16',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(17,'电子教育','电子教育',1,'0_1_17',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(18,'手机通讯','手机通讯',1,'0_1_18',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(19,'生活电器','生活电器',2,'0_2_19',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(20,'大家电','大家电',2,'0_2_20',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(21,'厨房电器','厨房电器',2,'0_2_21',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(22,'个护健康','个护健康',2,'0_2_22',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(23,'五金交电','五金交电',2,'0_2_23',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(24,'网络产品','网络产品',3,'0_3_24',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(25,'办公设备','办公设备',3,'0_3_25',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(26,'文具耗材','文具耗材',3,'0_3_26',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(27,'电脑整机','电脑整机',3,'0_3_27',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(28,'电脑配件','电脑配件',3,'0_3_28',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(29,'外设产品','外设产品',3,'0_3_29',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(30,'游戏设备','游戏设备',3,'0_3_30',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(31,'生活日用','生活日用',4,'0_4_31',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(32,'家装软饰','家装软饰',4,'0_4_32',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(33,'宠物生活','宠物生活',4,'0_4_33',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(34,'厨具','厨具',4,'0_4_34',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(35,'家装建材','家装建材',4,'0_4_35',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(36,'家纺','家纺',4,'0_4_36',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(37,'家具','家具',4,'0_4_37',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(38,'灯具','灯具',4,'0_4_38',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(39,'女装','女装',5,'0_5_39',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(40,'男装','男装',5,'0_5_40',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(41,'内衣','内衣',5,'0_5_41',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(42,'身体护肤','身体护肤',6,'0_6_42',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(43,'口腔护理','口腔护理',6,'0_6_43',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(44,'女性护理','女性护理',6,'0_6_44',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(45,'香水彩妆','香水彩妆',6,'0_6_45',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(46,'清洁用品','清洁用品',6,'0_6_46',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(47,'面部护肤','面部护肤',6,'0_6_47',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(48,'洗发护发','洗发护发',6,'0_6_48',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(49,'精品男包','精品男包',7,'0_7_49',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(50,'功能箱包','功能箱包',7,'0_7_50',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(51,'珠宝','珠宝',7,'0_7_51',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(52,'钟表','钟表',7,'0_7_52',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(53,'时尚女鞋','时尚女鞋',7,'0_7_53',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(54,'流行男鞋','流行男鞋',7,'0_7_54',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(55,'潮流女包','潮流女包',7,'0_7_55',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(56,'体育用品','体育用品',8,'0_8_56',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(57,'户外鞋服','户外鞋服',8,'0_8_57',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(58,'户外装备','户外装备',8,'0_8_58',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(59,'垂钓用品','垂钓用品',8,'0_8_59',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(60,'运动鞋包','运动鞋包',8,'0_8_60',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(61,'游泳用品','游泳用品',8,'0_8_61',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(62,'运动服饰','运动服饰',8,'0_8_62',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(63,'健身训练','健身训练',8,'0_8_63',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(64,'骑行运动','骑行运动',8,'0_8_64',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(65,'车载电器','车载电器',9,'0_9_65',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(66,'美容清洗','美容清洗',9,'0_9_66',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(67,'汽车装饰','汽车装饰',9,'0_9_67',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(68,'安全自驾','安全自驾',9,'0_9_68',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(69,'线下服务','线下服务',9,'0_9_69',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(70,'汽车车型','汽车车型',9,'0_9_70',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(71,'汽车品牌','汽车品牌',9,'0_9_71',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(72,'维修保养','维修保养',9,'0_9_72',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(73,'洗护用品','洗护用品',10,'0_10_73',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(74,'喂养用品','喂养用品',10,'0_10_74',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(75,'童车童床','童车童床',10,'0_10_75',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(76,'安全座椅','安全座椅',10,'0_10_76',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(77,'寝居服饰','寝居服饰',10,'0_10_77',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(78,'奶粉','奶粉',10,'0_10_78',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(79,'妈妈专区','妈妈专区',10,'0_10_79',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(80,'营养辅食','营养辅食',10,'0_10_80',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(81,'童装童鞋','童装童鞋',10,'0_10_81',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(82,'尿裤湿巾','尿裤湿巾',10,'0_10_82',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(83,'玩具乐器','玩具乐器',10,'0_10_83',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(84,'音像','音像',11,'0_11_84',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(85,'刊/原版','刊/原版',11,'0_11_85',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(86,'少儿','少儿',11,'0_11_86',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(87,'电子书','电子书',11,'0_11_87',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(88,'教育','教育',11,'0_11_88',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(89,'数字音乐','数字音乐',11,'0_11_89',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(90,'文艺','文艺',11,'0_11_90',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(91,'经管励志','经管励志',11,'0_11_91',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(92,'人文社科','人文社科',11,'0_11_92',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(93,'生活','生活',11,'0_11_93',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(94,'科技','科技',11,'0_11_94',2,50,1,'/Public/upload/category/2016/04-02/56ffa28b12f4f.jpg',0,0,0),
(95,'纸品湿巾','纸品湿巾',46,'0_6_46_95',3,50,1,'',0,0,0),
(96,'衣物清洁','衣物清洁',46,'0_6_46_96',3,50,1,'',0,0,0),
(97,'家庭清洁','家庭清洁',46,'0_6_46_97',3,50,1,'',0,0,0),
(98,'一次性用品','一次性用品',46,'0_6_46_98',3,50,1,'',0,0,0),
(99,'驱虫用品','驱虫用品',46,'0_6_46_99',3,50,1,'',0,0,0),
(100,'电池 电源 充电器','电池 电源 充电器',12,'0_1_12_100',3,50,1,'',0,0,0),
(101,'数据线,耳机','数据线,耳机',12,'0_1_12_101',3,50,0,'',0,0,0),
(102,'贴膜,保护套','贴膜,保护套',12,'0_1_12_102',3,50,1,'',0,0,0),
(103,'数码相机','数码相机',13,'0_1_13_103',3,50,1,'',0,0,0),
(104,'单反相机','单反相机',13,'0_1_13_104',3,50,1,'',0,0,0),
(105,'摄像机','摄像机',13,'0_1_13_105',3,50,1,'',0,0,0),
(106,'镜头','镜头',13,'0_1_13_106',3,50,1,'',0,0,0),
(107,'数码相框','数码相框',13,'0_1_13_107',3,50,1,'',0,0,0),
(108,'选号码','选号码',14,'0_1_14_108',3,50,1,'',0,0,0),
(109,'办套餐','办套餐',14,'0_1_14_109',3,50,1,'',0,0,0),
(110,'合约机','合约机',14,'0_1_14_110',3,50,1,'',0,0,0),
(111,'中国移动','中国移动',14,'0_1_14_111',3,50,1,'',0,0,0),
(112,'充值卡','充值卡',15,'0_1_15_112',3,50,1,'',0,0,0),
(113,'读卡器','读卡器',15,'0_1_15_113',3,50,1,'',0,0,0),
(114,'支架','支架',15,'0_1_15_114',3,50,1,'',0,0,0),
(115,'滤镜','滤镜',15,'0_1_15_115',3,50,1,'',0,0,0),
(116,'音响麦克风','音响麦克风',16,'0_1_16_116',3,50,1,'',0,0,0),
(117,'耳机/耳麦','耳机/耳麦',16,'0_1_16_117',3,50,1,'',0,0,0),
(118,'学生平板','学生平板',17,'0_1_17_118',3,50,1,'',0,0,0),
(119,'点读机','点读机',17,'0_1_17_119',3,50,1,'',0,0,0),
(120,'电纸书','电纸书',17,'0_1_17_120',3,50,1,'',0,0,0),
(121,'电子词典','电子词典',17,'0_1_17_121',3,50,1,'',0,0,0),
(122,'复读机','复读机',17,'0_1_17_122',3,50,1,'',0,0,0),
(123,'手机','手机',1,'0_1_123',2,50,1,'',0,0,0),
(124,'对讲机','对讲机',18,'0_1_18_124',3,50,1,'',0,0,0),
(125,'录音机','录音机',19,'0_2_19_125',3,50,1,'',0,0,0),
(126,'饮水机','饮水机',19,'0_2_19_126',3,50,1,'',0,0,0),
(127,'烫衣机','烫衣机',19,'0_2_19_127',3,50,1,'',0,0,0),
(128,'电风扇','电风扇',19,'0_2_19_128',3,50,1,'',0,0,0),
(129,'电话机','电话机',19,'0_2_19_129',3,50,1,'',0,0,0),
(130,'电视','电视',20,'0_2_20_130',3,50,1,'',0,0,0),
(131,'冰箱','冰箱',20,'0_2_20_131',3,50,1,'',0,0,0),
(132,'空调','空调',20,'0_2_20_132',3,50,1,'',0,0,0),
(133,'洗衣机','洗衣机',20,'0_2_20_133',3,50,1,'',0,0,0),
(134,'热水器','热水器',20,'0_2_20_134',3,50,1,'',0,0,0),
(135,'料理/榨汁机','料理/榨汁机',21,'0_2_21_135',3,50,1,'',0,0,0),
(136,'电饭锅','电饭锅',21,'0_2_21_136',3,50,1,'',0,0,0),
(137,'微波炉','微波炉',21,'0_2_21_137',3,50,1,'',0,0,0),
(138,'豆浆机','豆浆机',21,'0_2_21_138',3,50,1,'',0,0,0),
(139,'剃须刀','剃须刀',22,'0_2_22_139',3,50,1,'',0,0,0),
(140,'吹风机','吹风机',22,'0_2_22_140',3,50,1,'',0,0,0),
(141,'按摩器','按摩器',22,'0_2_22_141',3,50,1,'',0,0,0),
(142,'足浴盆','足浴盆',22,'0_2_22_142',3,50,1,'',0,0,0),
(143,'血压计','血压计',22,'0_2_22_143',3,50,1,'',0,0,0),
(144,'厨卫五金','厨卫五金',23,'0_2_23_144',3,50,1,'',0,0,0),
(145,'门铃门锁','门铃门锁',23,'0_2_23_145',3,50,1,'',0,0,0),
(146,'开关插座','开关插座',23,'0_2_23_146',3,50,1,'',0,0,0),
(147,'电动工具','电动工具',23,'0_2_23_147',3,50,1,'',0,0,0),
(148,'监控安防','监控安防',23,'0_2_23_148',3,50,1,'',0,0,0),
(149,'仪表仪器','仪表仪器',23,'0_2_23_149',3,50,1,'',0,0,0),
(150,'电线线缆','电线线缆',23,'0_2_23_150',3,50,1,'',0,0,0),
(151,'浴霸/排气扇','浴霸/排气扇',23,'0_2_23_151',3,50,1,'',0,0,0),
(152,'灯具','灯具',23,'0_2_23_152',3,50,1,'',0,0,0),
(153,'水龙头','水龙头',23,'0_2_23_153',3,50,1,'',0,0,0),
(154,'网络配件','网络配件',24,'0_3_24_154',3,50,1,'',0,0,0),
(155,'路由器','路由器',24,'0_3_24_155',3,50,1,'',0,0,0),
(156,'网卡','网卡',24,'0_3_24_156',3,50,1,'',0,0,0),
(157,'交换机','交换机',24,'0_3_24_157',3,50,1,'',0,0,0),
(158,'网络存储','网络存储',24,'0_3_24_158',3,50,1,'',0,0,0),
(159,'3G/4G/5G上网','3G/4G/5G上网',24,'0_3_24_159',3,50,1,'',0,0,0),
(160,'网络盒子','网络盒子',24,'0_3_24_160',3,50,1,'',0,0,0),
(161,'复合机','复合机',25,'0_3_25_161',3,50,1,'',0,0,0),
(162,'办公家具','办公家具',25,'0_3_25_162',3,50,1,'',0,0,0),
(163,'摄影机','摄影机',25,'0_3_25_163',3,50,1,'',0,0,0),
(164,'碎纸机','碎纸机',25,'0_3_25_164',3,50,1,'',0,0,0),
(165,'白板','白板',25,'0_3_25_165',3,50,1,'',0,0,0),
(166,'投影配件','投影配件',25,'0_3_25_166',3,50,1,'',0,0,0),
(167,'考勤机','考勤机',25,'0_3_25_167',3,50,1,'',0,0,0),
(168,'多功能一体机','多功能一体机',25,'0_3_25_168',3,50,1,'',0,0,0),
(169,'收款/POS机','收款/POS机',25,'0_3_25_169',3,50,1,'',0,0,0),
(170,'打印机','打印机',25,'0_3_25_170',3,50,1,'',0,0,0),
(171,'会员视频音频','会员视频音频',25,'0_3_25_171',3,50,1,'',0,0,0),
(172,'传真设备','传真设备',25,'0_3_25_172',3,50,1,'',0,0,0),
(173,'保险柜','保险柜',25,'0_3_25_173',3,50,1,'',0,0,0),
(174,'验钞/点钞机','验钞/点钞机',25,'0_3_25_174',3,50,1,'',0,0,0),
(175,'装订/封装机','装订/封装机',25,'0_3_25_175',3,50,1,'',0,0,0),
(176,'扫描设备','扫描设备',25,'0_3_25_176',3,50,1,'',0,0,0),
(177,'安防监控','安防监控',25,'0_3_25_177',3,50,1,'',0,0,0),
(178,'文具管理','文具管理',26,'0_3_26_178',3,50,1,'',0,0,0),
(179,'本册便签','本册便签',26,'0_3_26_179',3,50,1,'',0,0,0),
(180,'硒鼓/墨粉','硒鼓/墨粉',26,'0_3_26_180',3,50,1,'',0,0,0),
(181,'计算器','计算器',26,'0_3_26_181',3,50,1,'',0,0,0),
(182,'墨盒','墨盒',26,'0_3_26_182',3,50,1,'',0,0,0),
(183,'笔类','笔类',26,'0_3_26_183',3,50,1,'',0,0,0),
(184,'色带','色带',26,'0_3_26_184',3,50,1,'',0,0,0),
(185,'画具画材','画具画材',26,'0_3_26_185',3,50,1,'',0,0,0),
(186,'纸类','纸类',26,'0_3_26_186',3,50,1,'',0,0,0),
(187,'财会用品','财会用品',26,'0_3_26_187',3,50,1,'',0,0,0),
(188,'办公文具','办公文具',26,'0_3_26_188',3,50,1,'',0,0,0),
(189,'刻录碟片','刻录碟片',26,'0_3_26_189',3,50,1,'',0,0,0),
(190,'学生文具','学生文具',26,'0_3_26_190',3,50,1,'',0,0,0),
(191,'平板电脑','平板电脑',27,'0_3_27_191',3,50,1,'',0,0,0),
(192,'台式机','台式机',27,'0_3_27_192',3,50,1,'',0,0,0),
(193,'一体机','一体机',27,'0_3_27_193',3,50,1,'',0,0,0),
(194,'笔记本','笔记本',27,'0_3_27_194',3,50,1,'',0,0,0),
(195,'超极本','超极本',27,'0_3_27_195',3,50,1,'',0,0,0),
(196,'内存','内存',28,'0_3_28_196',3,50,1,'',0,0,0),
(197,'组装电脑','组装电脑',28,'0_3_28_197',3,50,1,'',0,0,0),
(198,'机箱','机箱',28,'0_3_28_198',3,50,1,'',0,0,0),
(199,'电源','电源',28,'0_3_28_199',3,50,1,'',0,0,0),
(200,'CPU','CPU',28,'0_3_28_200',3,50,1,'',0,0,0),
(201,'显示器','显示器',28,'0_3_28_201',3,50,1,'',0,0,0),
(202,'主板','主板',28,'0_3_28_202',3,50,1,'',0,0,0),
(203,'刻录机/光驱','刻录机/光驱',28,'0_3_28_203',3,50,1,'',0,0,0),
(204,'显卡','显卡',28,'0_3_28_204',3,50,1,'',0,0,0),
(205,'声卡/扩展卡','声卡/扩展卡',28,'0_3_28_205',3,50,1,'',0,0,0),
(206,'硬盘','硬盘',28,'0_3_28_206',3,50,1,'',0,0,0),
(207,'散热器','散热器',28,'0_3_28_207',3,50,1,'',0,0,0),
(208,'固态硬盘','固态硬盘',28,'0_3_28_208',3,50,1,'',0,0,0),
(209,'装机配件','装机配件',28,'0_3_28_209',3,50,1,'',0,0,0),
(210,'线缆','线缆',29,'0_3_29_210',3,50,1,'',0,0,0),
(211,'鼠标','鼠标',29,'0_3_29_211',3,50,1,'',0,0,0),
(212,'手写板','手写板',29,'0_3_29_212',3,50,1,'',0,0,0),
(213,'键盘','键盘',29,'0_3_29_213',3,50,1,'',0,0,0),
(214,'电脑工具','电脑工具',29,'0_3_29_214',3,50,1,'',0,0,0),
(215,'网络仪表仪器','网络仪表仪器',29,'0_3_29_215',3,50,1,'',0,0,0),
(216,'UPS','UPS',29,'0_3_29_216',3,50,1,'',0,0,0),
(217,'U盘','U盘',29,'0_3_29_217',3,50,1,'',0,0,0),
(218,'插座','插座',29,'0_3_29_218',3,50,1,'',0,0,0),
(219,'移动硬盘','移动硬盘',29,'0_3_29_219',3,50,1,'',0,0,0),
(220,'鼠标垫','鼠标垫',29,'0_3_29_220',3,50,1,'',0,0,0),
(221,'摄像头','摄像头',29,'0_3_29_221',3,50,1,'',0,0,0),
(222,'游戏软件','游戏软件',30,'0_3_30_222',3,50,1,'',0,0,0),
(223,'游戏周边','游戏周边',30,'0_3_30_223',3,50,1,'',0,0,0),
(224,'游戏机','游戏机',30,'0_3_30_224',3,50,1,'',0,0,0),
(225,'游戏耳机','游戏耳机',30,'0_3_30_225',3,50,1,'',0,0,0),
(226,'手柄方向盘','手柄方向盘',30,'0_3_30_226',3,50,1,'',0,0,0),
(227,'清洁工具','清洁工具',31,'0_4_31_227',3,50,1,'',0,0,0),
(228,'收纳用品','收纳用品',31,'0_4_31_228',3,50,1,'',0,0,0),
(229,'雨伞雨具','雨伞雨具',31,'0_4_31_229',3,50,1,'',0,0,0),
(230,'浴室用品','浴室用品',31,'0_4_31_230',3,50,1,'',0,0,0),
(231,'缝纫/针织用品','缝纫/针织用品',31,'0_4_31_231',3,50,1,'',0,0,0),
(232,'洗晒/熨烫','洗晒/熨烫',31,'0_4_31_232',3,50,1,'',0,0,0),
(233,'净化除味','净化除味',31,'0_4_31_233',3,50,1,'',0,0,0),
(234,'节庆饰品','节庆饰品',32,'0_4_32_234',3,50,1,'',0,0,0),
(235,'手工/十字绣','手工/十字绣',32,'0_4_32_235',3,50,1,'',0,0,0),
(236,'桌布/罩件','桌布/罩件',32,'0_4_32_236',3,50,1,'',0,0,0),
(237,'钟饰','钟饰',32,'0_4_32_237',3,50,1,'',0,0,0),
(238,'地毯地垫','地毯地垫',32,'0_4_32_238',3,50,1,'',0,0,0),
(239,'装饰摆件','装饰摆件',32,'0_4_32_239',3,50,1,'',0,0,0),
(240,'沙发垫套/椅垫','沙发垫套/椅垫',32,'0_4_32_240',3,50,1,'',0,0,0),
(241,'花瓶花艺','花瓶花艺',32,'0_4_32_241',3,50,1,'',0,0,0),
(242,'帘艺隔断','帘艺隔断',32,'0_4_32_242',3,50,1,'',0,0,0),
(243,'创意家居','创意家居',32,'0_4_32_243',3,50,1,'',0,0,0),
(244,'相框/照片墙','相框/照片墙',32,'0_4_32_244',3,50,1,'',0,0,0),
(245,'保暖防护','保暖防护',32,'0_4_32_245',3,50,1,'',0,0,0),
(246,'装饰字画','装饰字画',32,'0_4_32_246',3,50,1,'',0,0,0),
(247,'香薰蜡烛','香薰蜡烛',32,'0_4_32_247',3,50,1,'',0,0,0),
(248,'墙贴/装饰贴','墙贴/装饰贴',32,'0_4_32_248',3,50,1,'',0,0,0),
(249,'水族用品','水族用品',33,'0_4_33_249',3,50,1,'',0,0,0),
(250,'宠物玩具','宠物玩具',33,'0_4_33_250',3,50,1,'',0,0,0),
(251,'宠物主粮','宠物主粮',33,'0_4_33_251',3,50,1,'',0,0,0),
(252,'宠物牵引','宠物牵引',33,'0_4_33_252',3,50,1,'',0,0,0),
(253,'宠物零食','宠物零食',33,'0_4_33_253',3,50,1,'',0,0,0),
(254,'宠物驱虫','宠物驱虫',33,'0_4_33_254',3,50,1,'',0,0,0),
(255,'猫砂/尿布','猫砂/尿布',33,'0_4_33_255',3,50,1,'',0,0,0),
(256,'洗护美容','洗护美容',33,'0_4_33_256',3,50,1,'',0,0,0),
(257,'家居日用','家居日用',33,'0_4_33_257',3,50,1,'',0,0,0),
(258,'医疗保健','医疗保健',33,'0_4_33_258',3,50,1,'',0,0,0),
(259,'出行装备','出行装备',33,'0_4_33_259',3,50,1,'',0,0,0),
(260,'剪刀菜饭','剪刀菜饭',34,'0_4_34_260',3,50,1,'',0,0,0),
(261,'厨房配件','厨房配件',34,'0_4_34_261',3,50,1,'',0,0,0),
(262,'水具酒具','水具酒具',34,'0_4_34_262',3,50,1,'',0,0,0),
(263,'餐具','餐具',34,'0_4_34_263',3,50,1,'',0,0,0),
(264,'茶具/咖啡具','茶具/咖啡具',34,'0_4_34_264',3,50,1,'',0,0,0),
(265,'烹饪锅具','烹饪锅具',34,'0_4_34_265',3,50,1,'',0,0,0),
(266,'电工电料','电工电料',35,'0_4_35_266',3,50,1,'',0,0,0),
(267,'墙地材料','墙地材料',35,'0_4_35_267',3,50,1,'',0,0,0),
(268,'装饰材料','装饰材料',35,'0_4_35_268',3,50,1,'',0,0,0),
(269,'装修服务','装修服务',35,'0_4_35_269',3,50,1,'',0,0,0),
(270,'沐浴花洒','沐浴花洒',35,'0_4_35_270',3,50,1,'',0,0,0),
(271,'灯饰照明','灯饰照明',35,'0_4_35_271',3,50,1,'',0,0,0),
(272,'开关插座','开关插座',35,'0_4_35_272',3,50,1,'',0,0,0),
(273,'厨房卫浴','厨房卫浴',35,'0_4_35_273',3,50,1,'',0,0,0),
(274,'油漆涂料','油漆涂料',35,'0_4_35_274',3,50,1,'',0,0,0),
(275,'五金工具','五金工具',35,'0_4_35_275',3,50,1,'',0,0,0),
(276,'龙头','龙头',35,'0_4_35_276',3,50,1,'',0,0,0),
(277,'床品套件','床品套件',36,'0_4_36_277',3,50,1,'',0,0,0),
(278,'抱枕靠垫','抱枕靠垫',36,'0_4_36_278',3,50,1,'',0,0,0),
(279,'被子','被子',36,'0_4_36_279',3,50,1,'',0,0,0),
(280,'布艺软饰','布艺软饰',36,'0_4_36_280',3,50,1,'',0,0,0),
(281,'被芯','被芯',36,'0_4_36_281',3,50,1,'',0,0,0),
(282,'窗帘窗纱','窗帘窗纱',36,'0_4_36_282',3,50,1,'',0,0,0),
(283,'床单被罩','床单被罩',36,'0_4_36_283',3,50,1,'',0,0,0),
(284,'蚊帐','蚊帐',36,'0_4_36_284',3,50,1,'',0,0,0),
(285,'床垫床褥','床垫床褥',36,'0_4_36_285',3,50,1,'',0,0,0),
(286,'凉席','凉席',36,'0_4_36_286',3,50,1,'',0,0,0),
(287,'电地毯','电地毯',36,'0_4_36_287',3,50,1,'',0,0,0),
(288,'毯子','毯子',36,'0_4_36_288',3,50,1,'',0,0,0),
(289,'毛巾浴巾','毛巾浴巾',36,'0_4_36_289',3,50,1,'',0,0,0),
(290,'餐厅家具','餐厅家具',37,'0_4_37_290',3,50,1,'',0,0,0),
(291,'电脑椅','电脑椅',37,'0_4_37_291',3,50,1,'',0,0,0),
(292,'书房家具','书房家具',37,'0_4_37_292',3,50,1,'',0,0,0),
(293,'衣柜','衣柜',37,'0_4_37_293',3,50,1,'',0,0,0),
(294,'储物家具','储物家具',37,'0_4_37_294',3,50,1,'',0,0,0),
(295,'茶几','茶几',37,'0_4_37_295',3,50,1,'',0,0,0),
(296,'阳台/户外','阳台/户外',37,'0_4_37_296',3,50,1,'',0,0,0),
(297,'电视柜','电视柜',37,'0_4_37_297',3,50,1,'',0,0,0),
(298,'商业办公','商业办公',37,'0_4_37_298',3,50,1,'',0,0,0),
(299,'餐桌','餐桌',37,'0_4_37_299',3,50,1,'',0,0,0),
(300,'卧室家具','卧室家具',37,'0_4_37_300',3,50,1,'',0,0,0),
(301,'床','床',37,'0_4_37_301',3,50,1,'',0,0,0),
(302,'电脑桌','电脑桌',37,'0_4_37_302',3,50,1,'',0,0,0),
(303,'客厅家具','客厅家具',37,'0_4_37_303',3,50,1,'',0,0,0),
(304,'床垫','床垫',37,'0_4_37_304',3,50,1,'',0,0,0),
(305,'鞋架/衣帽架','鞋架/衣帽架',37,'0_4_37_305',3,50,1,'',0,0,0),
(306,'客厅家具','客厅家具',37,'0_4_37_306',3,50,1,'',0,0,0),
(307,'沙发','沙发',37,'0_4_37_307',3,50,1,'',0,0,0),
(308,'吸顶灯','吸顶灯',38,'0_4_38_308',3,50,1,'',0,0,0),
(309,'吊灯','吊灯',38,'0_4_38_309',3,50,1,'',0,0,0),
(310,'筒灯射灯','筒灯射灯',38,'0_4_38_310',3,50,1,'',0,0,0),
(311,'氛围照明','氛围照明',38,'0_4_38_311',3,50,1,'',0,0,0),
(312,'LED灯','LED灯',38,'0_4_38_312',3,50,1,'',0,0,0),
(313,'节能灯','节能灯',38,'0_4_38_313',3,50,1,'',0,0,0),
(314,'落地灯','落地灯',38,'0_4_38_314',3,50,1,'',0,0,0),
(315,'五金电器','五金电器',38,'0_4_38_315',3,50,1,'',0,0,0),
(316,'应急灯/手电','应急灯/手电',38,'0_4_38_316',3,50,1,'',0,0,0),
(317,'台灯','台灯',38,'0_4_38_317',3,50,1,'',0,0,0),
(318,'装饰灯','装饰灯',38,'0_4_38_318',3,50,1,'',0,0,0),
(319,'短外套','短外套',39,'0_5_39_319',3,50,1,'',0,0,0),
(320,'羊毛衫','羊毛衫',39,'0_5_39_320',3,50,1,'',0,0,0),
(321,'雪纺衫','雪纺衫',39,'0_5_39_321',3,50,1,'',0,0,0),
(322,'礼服','礼服',39,'0_5_39_322',3,50,1,'',0,0,0),
(323,'风衣','风衣',39,'0_5_39_323',3,50,1,'',0,0,0),
(324,'羊绒衫','羊绒衫',39,'0_5_39_324',3,50,1,'',0,0,0),
(325,'牛仔裤','牛仔裤',39,'0_5_39_325',3,50,1,'',0,0,0),
(326,'马甲','马甲',39,'0_5_39_326',3,50,1,'',0,0,0),
(327,'衬衫','衬衫',39,'0_5_39_327',3,50,1,'',0,0,0),
(328,'半身裙','半身裙',39,'0_5_39_328',3,50,1,'',0,0,0),
(329,'休闲裤','休闲裤',39,'0_5_39_329',3,50,1,'',0,0,0),
(330,'吊带/背心','吊带/背心',39,'0_5_39_330',3,50,1,'',0,0,0),
(331,'羽绒服','羽绒服',39,'0_5_39_331',3,50,1,'',0,0,0),
(332,'T恤','T恤',39,'0_5_39_332',3,50,1,'',0,0,0),
(333,'大码女装','大码女装',39,'0_5_39_333',3,50,1,'',0,0,0),
(334,'正装裤','正装裤',39,'0_5_39_334',3,50,1,'',0,0,0),
(335,'设计师/潮牌','设计师/潮牌',39,'0_5_39_335',3,50,1,'',0,0,0),
(336,'毛呢大衣','毛呢大衣',39,'0_5_39_336',3,50,1,'',0,0,0),
(337,'小西装','小西装',39,'0_5_39_337',3,50,1,'',0,0,0),
(338,'中老年女装','中老年女装',39,'0_5_39_338',3,50,1,'',0,0,0),
(339,'加绒裤','加绒裤',39,'0_5_39_339',3,50,1,'',0,0,0),
(340,'棉服','棉服',39,'0_5_39_340',3,50,1,'',0,0,0),
(341,'打底衫','打底衫',39,'0_5_39_341',3,50,1,'',0,0,0),
(342,'皮草','皮草',39,'0_5_39_342',3,50,1,'',0,0,0),
(343,'短裤','短裤',39,'0_5_39_343',3,50,1,'',0,0,0),
(344,'连衣裙','连衣裙',39,'0_5_39_344',3,50,1,'',0,0,0),
(345,'打底裤','打底裤',39,'0_5_39_345',3,50,1,'',0,0,0),
(346,'真皮皮衣','真皮皮衣',39,'0_5_39_346',3,50,1,'',0,0,0),
(347,'婚纱','婚纱',39,'0_5_39_347',3,50,1,'',0,0,0),
(348,'卫衣','卫衣',39,'0_5_39_348',3,50,1,'',0,0,0),
(349,'针织衫','针织衫',39,'0_5_39_349',3,50,1,'',0,0,0),
(350,'仿皮皮衣','仿皮皮衣',39,'0_5_39_350',3,50,1,'',0,0,0),
(351,'旗袍/唐装','旗袍/唐装',39,'0_5_39_351',3,50,1,'',0,0,0),
(352,'羊毛衫','羊毛衫',40,'0_5_40_352',3,50,1,'',0,0,0),
(353,'休闲裤','休闲裤',40,'0_5_40_353',3,50,1,'',0,0,0),
(354,'POLO衫','POLO衫',40,'0_5_40_354',3,50,1,'',0,0,0),
(355,'加绒裤','加绒裤',40,'0_5_40_355',3,50,1,'',0,0,0),
(356,'衬衫','衬衫',40,'0_5_40_356',3,50,1,'',0,0,0),
(357,'短裤','短裤',40,'0_5_40_357',3,50,1,'',0,0,0),
(358,'真皮皮衣','真皮皮衣',40,'0_5_40_358',3,50,1,'',0,0,0),
(359,'毛呢大衣','毛呢大衣',40,'0_5_40_359',3,50,1,'',0,0,0),
(360,'中老年男装','中老年男装',40,'0_5_40_360',3,50,1,'',0,0,0),
(361,'卫衣','卫衣',40,'0_5_40_361',3,50,1,'',0,0,0),
(362,'风衣','风衣',40,'0_5_40_362',3,50,1,'',0,0,0),
(363,'大码男装','大码男装',40,'0_5_40_363',3,50,1,'',0,0,0),
(364,'羽绒服','羽绒服',40,'0_5_40_364',3,50,1,'',0,0,0),
(365,'T恤','T恤',40,'0_5_40_365',3,50,1,'',0,0,0),
(366,'仿皮皮衣','仿皮皮衣',40,'0_5_40_366',3,50,1,'',0,0,0),
(367,'羊绒衫','羊绒衫',40,'0_5_40_367',3,50,1,'',0,0,0),
(368,'棉服','棉服',40,'0_5_40_368',3,50,1,'',0,0,0),
(369,'马甲/背心','马甲/背心',40,'0_5_40_369',3,50,1,'',0,0,0),
(370,'西服','西服',40,'0_5_40_370',3,50,1,'',0,0,0),
(371,'设计师/潮牌','设计师/潮牌',40,'0_5_40_371',3,50,1,'',0,0,0),
(372,'针织衫','针织衫',40,'0_5_40_372',3,50,1,'',0,0,0),
(373,'西服套装','西服套装',40,'0_5_40_373',3,50,1,'',0,0,0),
(374,'西裤','西裤',40,'0_5_40_374',3,50,1,'',0,0,0),
(375,'工装','工装',40,'0_5_40_375',3,50,1,'',0,0,0),
(376,'夹克','夹克',40,'0_5_40_376',3,50,1,'',0,0,0),
(377,'牛仔裤','牛仔裤',40,'0_5_40_377',3,50,1,'',0,0,0),
(378,'卫裤/运动裤','卫裤/运动裤',40,'0_5_40_378',3,50,1,'',0,0,0),
(379,'唐装/中山装','唐装/中山装',40,'0_5_40_379',3,50,1,'',0,0,0),
(380,'保暖内衣','保暖内衣',41,'0_5_41_380',3,50,1,'',0,0,0),
(381,'大码内衣','大码内衣',41,'0_5_41_381',3,50,1,'',0,0,0),
(382,'吊带/背心','吊带/背心',41,'0_5_41_382',3,50,1,'',0,0,0),
(383,'秋衣秋裤','秋衣秋裤',41,'0_5_41_383',3,50,1,'',0,0,0),
(384,'文胸','文胸',41,'0_5_41_384',3,50,1,'',0,0,0),
(385,'内衣配件','内衣配件',41,'0_5_41_385',3,50,1,'',0,0,0),
(386,'睡衣/家居服','睡衣/家居服',41,'0_5_41_386',3,50,1,'',0,0,0),
(387,'男式内裤','男式内裤',41,'0_5_41_387',3,50,1,'',0,0,0),
(388,'泳衣','泳衣',41,'0_5_41_388',3,50,1,'',0,0,0),
(389,'打底裤袜','打底裤袜',41,'0_5_41_389',3,50,1,'',0,0,0),
(390,'女式内裤','女式内裤',41,'0_5_41_390',3,50,1,'',0,0,0),
(391,'塑身美体','塑身美体',41,'0_5_41_391',3,50,1,'',0,0,0),
(392,'休闲棉袜','休闲棉袜',41,'0_5_41_392',3,50,1,'',0,0,0),
(393,'连裤袜/丝袜','连裤袜/丝袜',41,'0_5_41_393',3,50,1,'',0,0,0),
(394,'美腿袜','美腿袜',41,'0_5_41_394',3,50,1,'',0,0,0),
(395,'商务男袜','商务男袜',41,'0_5_41_395',3,50,1,'',0,0,0),
(396,'打底衫','打底衫',41,'0_5_41_396',3,50,1,'',0,0,0),
(397,'情趣内衣','情趣内衣',41,'0_5_41_397',3,50,1,'',0,0,0),
(398,'情侣睡衣','情侣睡衣',41,'0_5_41_398',3,50,1,'',0,0,0),
(399,'少女文胸','少女文胸',41,'0_5_41_399',3,50,1,'',0,0,0),
(400,'文胸套装','文胸套装',41,'0_5_41_400',3,50,1,'',0,0,0),
(401,'抹胸','抹胸',41,'0_5_41_401',3,50,1,'',0,0,0),
(402,'沐浴','沐浴',42,'0_6_42_402',3,50,1,'',0,0,0),
(403,'润肤','润肤',42,'0_6_42_403',3,50,1,'',0,0,0),
(404,'颈部','颈部',42,'0_6_42_404',3,50,1,'',0,0,0),
(405,'手足','手足',42,'0_6_42_405',3,50,1,'',0,0,0),
(406,'纤体塑形','纤体塑形',42,'0_6_42_406',3,50,1,'',0,0,0),
(407,'美胸','美胸',42,'0_6_42_407',3,50,1,'',0,0,0),
(408,'套装','套装',42,'0_6_42_408',3,50,1,'',0,0,0),
(409,'牙膏/牙粉','牙膏/牙粉',43,'0_6_43_409',3,50,1,'',0,0,0),
(410,'牙刷/牙线','牙刷/牙线',43,'0_6_43_410',3,50,1,'',0,0,0),
(411,'漱口水','漱口水',43,'0_6_43_411',3,50,1,'',0,0,0),
(412,'套装','套装',43,'0_6_43_412',3,50,1,'',0,0,0),
(413,'卫生巾','卫生巾',44,'0_6_44_413',3,50,1,'',0,0,0),
(414,'卫生护垫','卫生护垫',44,'0_6_44_414',3,50,1,'',0,0,0),
(415,'私密护理','私密护理',44,'0_6_44_415',3,50,1,'',0,0,0),
(416,'脱毛膏','脱毛膏',44,'0_6_44_416',3,50,1,'',0,0,0),
(417,'唇部','唇部',45,'0_6_45_417',3,50,1,'',0,0,0),
(418,'美甲','美甲',45,'0_6_45_418',3,50,1,'',0,0,0),
(419,'美容工具','美容工具',45,'0_6_45_419',3,50,1,'',0,0,0),
(420,'套装','套装',45,'0_6_45_420',3,50,1,'',0,0,0),
(421,'香水','香水',45,'0_6_45_421',3,50,1,'',0,0,0),
(422,'底妆','底妆',45,'0_6_45_422',3,50,1,'',0,0,0),
(423,'腮红','腮红',45,'0_6_45_423',3,50,1,'',0,0,0),
(424,'眼部','眼部',45,'0_6_45_424',3,50,1,'',0,0,0),
(425,'面膜','面膜',47,'0_6_47_425',3,50,1,'',0,0,0),
(426,'剃须','剃须',47,'0_6_47_426',3,50,1,'',0,0,0),
(427,'套装','套装',47,'0_6_47_427',3,50,1,'',0,0,0),
(428,'清洁','清洁',47,'0_6_47_428',3,50,1,'',0,0,0),
(429,'护肤','护肤',47,'0_6_47_429',3,50,1,'',0,0,0),
(430,'套装','套装',48,'0_6_48_430',3,50,1,'',0,0,0),
(431,'洗发','洗发',48,'0_6_48_431',3,50,1,'',0,0,0),
(432,'护发','护发',48,'0_6_48_432',3,50,1,'',0,0,0),
(433,'染发','染发',48,'0_6_48_433',3,50,1,'',0,0,0),
(434,'造型','造型',48,'0_6_48_434',3,50,1,'',0,0,0),
(435,'假发','假发',48,'0_6_48_435',3,50,1,'',0,0,0),
(436,'商务公文包','商务公文包',49,'0_7_49_436',3,50,1,'',0,0,0),
(437,'单肩/斜挎包','单肩/斜挎包',49,'0_7_49_437',3,50,1,'',0,0,0),
(438,'男士手包','男士手包',49,'0_7_49_438',3,50,1,'',0,0,0),
(439,'双肩包','双肩包',49,'0_7_49_439',3,50,1,'',0,0,0),
(440,'钱包/卡包','钱包/卡包',49,'0_7_49_440',3,50,1,'',0,0,0),
(441,'钥匙包','钥匙包',49,'0_7_49_441',3,50,1,'',0,0,0),
(442,'旅行包','旅行包',50,'0_7_50_442',3,50,1,'',0,0,0),
(443,'妈咪包','妈咪包',50,'0_7_50_443',3,50,1,'',0,0,0),
(444,'电脑包','电脑包',50,'0_7_50_444',3,50,1,'',0,0,0),
(445,'休闲运动包','休闲运动包',50,'0_7_50_445',3,50,1,'',0,0,0),
(446,'相机包','相机包',50,'0_7_50_446',3,50,1,'',0,0,0),
(447,'腰包/胸包','腰包/胸包',50,'0_7_50_447',3,50,1,'',0,0,0),
(448,'登山包','登山包',50,'0_7_50_448',3,50,1,'',0,0,0),
(449,'旅行配件','旅行配件',50,'0_7_50_449',3,50,1,'',0,0,0),
(450,'拉杆箱/拉杆包','拉杆箱/拉杆包',50,'0_7_50_450',3,50,1,'',0,0,0),
(451,'书包','书包',50,'0_7_50_451',3,50,1,'',0,0,0),
(452,'彩宝','彩宝',51,'0_7_51_452',3,50,1,'',0,0,0),
(453,'时尚饰品','时尚饰品',51,'0_7_51_453',3,50,1,'',0,0,0),
(454,'铂金','铂金',51,'0_7_51_454',3,50,1,'',0,0,0),
(455,'钻石','钻石',51,'0_7_51_455',3,50,1,'',0,0,0),
(456,'天然木饰','天然木饰',51,'0_7_51_456',3,50,1,'',0,0,0),
(457,'翡翠玉石','翡翠玉石',51,'0_7_51_457',3,50,1,'',0,0,0),
(458,'珍珠','珍珠',51,'0_7_51_458',3,50,1,'',0,0,0),
(459,'纯金K金饰品','纯金K金饰品',51,'0_7_51_459',3,50,1,'',0,0,0),
(460,'金银投资','金银投资',51,'0_7_51_460',3,50,1,'',0,0,0),
(461,'银饰','银饰',51,'0_7_51_461',3,50,1,'',0,0,0),
(462,'水晶玛瑙','水晶玛瑙',51,'0_7_51_462',3,50,1,'',0,0,0),
(463,'座钟挂钟','座钟挂钟',52,'0_7_52_463',3,50,1,'',0,0,0),
(464,'男表','男表',52,'0_7_52_464',3,50,1,'',0,0,0),
(465,'女表','女表',52,'0_7_52_465',3,50,1,'',0,0,0),
(466,'儿童表','儿童表',52,'0_7_52_466',3,50,1,'',0,0,0),
(467,'智能手表','智能手表',52,'0_7_52_467',3,50,1,'',0,0,0),
(468,'女靴','女靴',53,'0_7_53_468',3,50,1,'',0,0,0),
(469,'布鞋/绣花鞋','布鞋/绣花鞋',53,'0_7_53_469',3,50,1,'',0,0,0),
(470,'鱼嘴鞋','鱼嘴鞋',53,'0_7_53_470',3,50,1,'',0,0,0),
(471,'雪地靴','雪地靴',53,'0_7_53_471',3,50,1,'',0,0,0),
(472,'凉鞋','凉鞋',53,'0_7_53_472',3,50,1,'',0,0,0),
(473,'雨鞋/雨靴','雨鞋/雨靴',53,'0_7_53_473',3,50,1,'',0,0,0),
(474,'单鞋','单鞋',53,'0_7_53_474',3,50,1,'',0,0,0),
(475,'拖鞋/人字拖','拖鞋/人字拖',53,'0_7_53_475',3,50,1,'',0,0,0),
(476,'鞋配件','鞋配件',53,'0_7_53_476',3,50,1,'',0,0,0),
(477,'高跟鞋','高跟鞋',53,'0_7_53_477',3,50,1,'',0,0,0),
(478,'马丁靴','马丁靴',53,'0_7_53_478',3,50,1,'',0,0,0),
(479,'帆布鞋','帆布鞋',53,'0_7_53_479',3,50,1,'',0,0,0),
(480,'休闲鞋','休闲鞋',53,'0_7_53_480',3,50,1,'',0,0,0),
(481,'妈妈鞋','妈妈鞋',53,'0_7_53_481',3,50,1,'',0,0,0),
(482,'踝靴','踝靴',53,'0_7_53_482',3,50,1,'',0,0,0),
(483,'防水台','防水台',53,'0_7_53_483',3,50,1,'',0,0,0),
(484,'内增高','内增高',53,'0_7_53_484',3,50,1,'',0,0,0),
(485,'松糕鞋','松糕鞋',53,'0_7_53_485',3,50,1,'',0,0,0),
(486,'坡跟鞋','坡跟鞋',53,'0_7_53_486',3,50,1,'',0,0,0),
(487,'增高鞋','增高鞋',54,'0_7_54_487',3,50,1,'',0,0,0),
(488,'鞋配件','鞋配件',54,'0_7_54_488',3,50,1,'',0,0,0),
(489,'拖鞋/人字拖','拖鞋/人字拖',54,'0_7_54_489',3,50,1,'',0,0,0),
(490,'凉鞋/沙滩鞋','凉鞋/沙滩鞋',54,'0_7_54_490',3,50,1,'',0,0,0),
(491,'休闲鞋','休闲鞋',54,'0_7_54_491',3,50,1,'',0,0,0),
(492,'雨鞋/雨靴','雨鞋/雨靴',54,'0_7_54_492',3,50,1,'',0,0,0),
(493,'商务休闲鞋','商务休闲鞋',54,'0_7_54_493',3,50,1,'',0,0,0),
(494,'定制鞋','定制鞋',54,'0_7_54_494',3,50,1,'',0,0,0),
(495,'正装鞋','正装鞋',54,'0_7_54_495',3,50,1,'',0,0,0),
(496,'男靴','男靴',54,'0_7_54_496',3,50,1,'',0,0,0),
(497,'帆布鞋','帆布鞋',54,'0_7_54_497',3,50,1,'',0,0,0),
(498,'传统布鞋','传统布鞋',54,'0_7_54_498',3,50,1,'',0,0,0),
(499,'工装鞋','工装鞋',54,'0_7_54_499',3,50,1,'',0,0,0),
(500,'功能鞋','功能鞋',54,'0_7_54_500',3,50,1,'',0,0,0),
(501,'钥匙包','钥匙包',55,'0_7_55_501',3,50,1,'',0,0,0),
(502,'单肩包','单肩包',55,'0_7_55_502',3,50,1,'',0,0,0),
(503,'手提包','手提包',55,'0_7_55_503',3,50,1,'',0,0,0),
(504,'斜挎包','斜挎包',55,'0_7_55_504',3,50,1,'',0,0,0),
(505,'双肩包','双肩包',55,'0_7_55_505',3,50,1,'',0,0,0),
(506,'钱包','钱包',55,'0_7_55_506',3,50,1,'',0,0,0),
(507,'手拿包/晚宴包','手拿包/晚宴包',55,'0_7_55_507',3,50,1,'',0,0,0),
(508,'卡包/零钱包','卡包/零钱包',55,'0_7_55_508',3,50,1,'',0,0,0),
(509,'轮滑滑板','轮滑滑板',56,'0_8_56_509',3,50,1,'',0,0,0),
(510,'网球','网球',56,'0_8_56_510',3,50,1,'',0,0,0),
(511,'高尔夫','高尔夫',56,'0_8_56_511',3,50,1,'',0,0,0),
(512,'台球','台球',56,'0_8_56_512',3,50,1,'',0,0,0),
(513,'乒乓球','乒乓球',56,'0_8_56_513',3,50,1,'',0,0,0),
(514,'排球','排球',56,'0_8_56_514',3,50,1,'',0,0,0),
(515,'羽毛球','羽毛球',56,'0_8_56_515',3,50,1,'',0,0,0),
(516,'棋牌麻将','棋牌麻将',56,'0_8_56_516',3,50,1,'',0,0,0),
(517,'篮球','篮球',56,'0_8_56_517',3,50,1,'',0,0,0),
(518,'其它','其它',56,'0_8_56_518',3,50,1,'',0,0,0),
(519,'足球','足球',56,'0_8_56_519',3,50,1,'',0,0,0),
(520,'速干衣裤','速干衣裤',57,'0_8_57_520',3,50,1,'',0,0,0),
(521,'功能内衣','功能内衣',57,'0_8_57_521',3,50,1,'',0,0,0),
(522,'溯溪鞋','溯溪鞋',57,'0_8_57_522',3,50,1,'',0,0,0),
(523,'滑雪服','滑雪服',57,'0_8_57_523',3,50,1,'',0,0,0),
(524,'军迷服饰','军迷服饰',57,'0_8_57_524',3,50,1,'',0,0,0),
(525,'沙滩/凉拖','沙滩/凉拖',57,'0_8_57_525',3,50,1,'',0,0,0),
(526,'羽绒服/棉服','羽绒服/棉服',57,'0_8_57_526',3,50,1,'',0,0,0),
(527,'登山鞋','登山鞋',57,'0_8_57_527',3,50,1,'',0,0,0),
(528,'户外袜','户外袜',57,'0_8_57_528',3,50,1,'',0,0,0),
(529,'休闲衣裤','休闲衣裤',57,'0_8_57_529',3,50,1,'',0,0,0),
(530,'徒步鞋','徒步鞋',57,'0_8_57_530',3,50,1,'',0,0,0),
(531,'抓绒衣裤','抓绒衣裤',57,'0_8_57_531',3,50,1,'',0,0,0),
(532,'越野跑鞋','越野跑鞋',57,'0_8_57_532',3,50,1,'',0,0,0),
(533,'软壳衣裤','软壳衣裤',57,'0_8_57_533',3,50,1,'',0,0,0),
(534,'休闲鞋','休闲鞋',57,'0_8_57_534',3,50,1,'',0,0,0),
(535,'T恤','T恤',57,'0_8_57_535',3,50,1,'',0,0,0),
(536,'雪地靴','雪地靴',57,'0_8_57_536',3,50,1,'',0,0,0),
(537,'冲锋衣裤','冲锋衣裤',57,'0_8_57_537',3,50,1,'',0,0,0),
(538,'户外风衣','户外风衣',57,'0_8_57_538',3,50,1,'',0,0,0),
(539,'工装鞋','工装鞋',57,'0_8_57_539',3,50,1,'',0,0,0),
(540,'野餐烧烤','野餐烧烤',58,'0_8_58_540',3,50,1,'',0,0,0),
(541,'滑雪装备','滑雪装备',58,'0_8_58_541',3,50,1,'',0,0,0),
(542,'便携桌椅床','便携桌椅床',58,'0_8_58_542',3,50,1,'',0,0,0),
(543,'极限户外','极限户外',58,'0_8_58_543',3,50,1,'',0,0,0),
(544,'户外工具','户外工具',58,'0_8_58_544',3,50,1,'',0,0,0),
(545,'冲浪潜水','冲浪潜水',58,'0_8_58_545',3,50,1,'',0,0,0),
(546,'背包','背包',58,'0_8_58_546',3,50,1,'',0,0,0),
(547,'望远镜','望远镜',58,'0_8_58_547',3,50,1,'',0,0,0),
(548,'户外配饰','户外配饰',58,'0_8_58_548',3,50,1,'',0,0,0),
(549,'帐篷/垫子','帐篷/垫子',58,'0_8_58_549',3,50,1,'',0,0,0),
(550,'户外仪表','户外仪表',58,'0_8_58_550',3,50,1,'',0,0,0),
(551,'睡袋/吊床','睡袋/吊床',58,'0_8_58_551',3,50,1,'',0,0,0),
(552,'旅游用品','旅游用品',58,'0_8_58_552',3,50,1,'',0,0,0),
(553,'登山攀岩','登山攀岩',58,'0_8_58_553',3,50,1,'',0,0,0),
(554,'军迷用品','军迷用品',58,'0_8_58_554',3,50,1,'',0,0,0),
(555,'户外照明','户外照明',58,'0_8_58_555',3,50,1,'',0,0,0),
(556,'救援装备','救援装备',58,'0_8_58_556',3,50,1,'',0,0,0),
(557,'钓箱鱼包','钓箱鱼包',59,'0_8_59_557',3,50,1,'',0,0,0),
(558,'其它','其它',59,'0_8_59_558',3,50,1,'',0,0,0),
(559,'鱼竿鱼线','鱼竿鱼线',59,'0_8_59_559',3,50,1,'',0,0,0),
(560,'浮漂鱼饵','浮漂鱼饵',59,'0_8_59_560',3,50,1,'',0,0,0),
(561,'钓鱼桌椅','钓鱼桌椅',59,'0_8_59_561',3,50,1,'',0,0,0),
(562,'钓鱼配件','钓鱼配件',59,'0_8_59_562',3,50,1,'',0,0,0),
(563,'帆布鞋','帆布鞋',60,'0_8_60_563',3,50,1,'',0,0,0),
(564,'乒羽网鞋','乒羽网鞋',60,'0_8_60_564',3,50,1,'',0,0,0),
(565,'跑步鞋','跑步鞋',60,'0_8_60_565',3,50,1,'',0,0,0),
(566,'训练鞋','训练鞋',60,'0_8_60_566',3,50,1,'',0,0,0),
(567,'休闲鞋','休闲鞋',60,'0_8_60_567',3,50,1,'',0,0,0),
(568,'专项运动鞋','专项运动鞋',60,'0_8_60_568',3,50,1,'',0,0,0),
(569,'篮球鞋','篮球鞋',60,'0_8_60_569',3,50,1,'',0,0,0),
(570,'拖鞋','拖鞋',60,'0_8_60_570',3,50,1,'',0,0,0),
(571,'板鞋','板鞋',60,'0_8_60_571',3,50,1,'',0,0,0),
(572,'运动包','运动包',60,'0_8_60_572',3,50,1,'',0,0,0),
(573,'足球鞋','足球鞋',60,'0_8_60_573',3,50,1,'',0,0,0),
(574,'其它','其它',61,'0_8_61_574',3,50,1,'',0,0,0),
(575,'泳镜','泳镜',61,'0_8_61_575',3,50,1,'',0,0,0),
(576,'泳帽','泳帽',61,'0_8_61_576',3,50,1,'',0,0,0),
(577,'游泳包防水包','游泳包防水包',61,'0_8_61_577',3,50,1,'',0,0,0),
(578,'男士泳衣','男士泳衣',61,'0_8_61_578',3,50,1,'',0,0,0),
(579,'女士泳衣','女士泳衣',61,'0_8_61_579',3,50,1,'',0,0,0),
(580,'比基尼','比基尼',61,'0_8_61_580',3,50,1,'',0,0,0),
(581,'T恤','T恤',62,'0_8_62_581',3,50,1,'',0,0,0),
(582,'棉服','棉服',62,'0_8_62_582',3,50,1,'',0,0,0),
(583,'运动裤','运动裤',62,'0_8_62_583',3,50,1,'',0,0,0),
(584,'夹克/风衣','夹克/风衣',62,'0_8_62_584',3,50,1,'',0,0,0),
(585,'运动配饰','运动配饰',62,'0_8_62_585',3,50,1,'',0,0,0),
(586,'运动背心','运动背心',62,'0_8_62_586',3,50,1,'',0,0,0),
(587,'乒羽网服','乒羽网服',62,'0_8_62_587',3,50,1,'',0,0,0),
(588,'运动套装','运动套装',62,'0_8_62_588',3,50,1,'',0,0,0),
(589,'训练服','训练服',62,'0_8_62_589',3,50,1,'',0,0,0),
(590,'羽绒服','羽绒服',62,'0_8_62_590',3,50,1,'',0,0,0),
(591,'毛衫/线衫','毛衫/线衫',62,'0_8_62_591',3,50,1,'',0,0,0),
(592,'卫衣/套头衫','卫衣/套头衫',62,'0_8_62_592',3,50,1,'',0,0,0),
(593,'瑜伽舞蹈','瑜伽舞蹈',63,'0_8_63_593',3,50,1,'',0,0,0),
(594,'跑步机','跑步机',63,'0_8_63_594',3,50,1,'',0,0,0),
(595,'武术搏击','武术搏击',63,'0_8_63_595',3,50,1,'',0,0,0),
(596,'健身车/动感单车','健身车/动感单车',63,'0_8_63_596',3,50,1,'',0,0,0),
(597,'综合训练器','综合训练器',63,'0_8_63_597',3,50,1,'',0,0,0),
(598,'哑铃','哑铃',63,'0_8_63_598',3,50,1,'',0,0,0),
(599,'其他大型器械','其他大型器械',63,'0_8_63_599',3,50,1,'',0,0,0),
(600,'仰卧板/收腹机','仰卧板/收腹机',63,'0_8_63_600',3,50,1,'',0,0,0),
(601,'其他中小型器材','其他中小型器材',63,'0_8_63_601',3,50,1,'',0,0,0),
(602,'甩脂机','甩脂机',63,'0_8_63_602',3,50,1,'',0,0,0),
(603,'踏步机','踏步机',63,'0_8_63_603',3,50,1,'',0,0,0),
(604,'运动护具','运动护具',63,'0_8_63_604',3,50,1,'',0,0,0),
(605,'平衡车','平衡车',64,'0_8_64_605',3,50,1,'',0,0,0),
(606,'其他整车','其他整车',64,'0_8_64_606',3,50,1,'',0,0,0),
(607,'骑行装备','骑行装备',64,'0_8_64_607',3,50,1,'',0,0,0),
(608,'骑行服','骑行服',64,'0_8_64_608',3,50,1,'',0,0,0),
(609,'山地车/公路车','山地车/公路车',64,'0_8_64_609',3,50,1,'',0,0,0),
(610,'折叠车','折叠车',64,'0_8_64_610',3,50,1,'',0,0,0),
(611,'电动车','电动车',64,'0_8_64_611',3,50,1,'',0,0,0),
(612,'电源','电源',65,'0_9_65_612',3,50,1,'',0,0,0),
(613,'导航仪','导航仪',65,'0_9_65_613',3,50,1,'',0,0,0),
(614,'智能驾驶','智能驾驶',65,'0_9_65_614',3,50,1,'',0,0,0),
(615,'安全预警仪','安全预警仪',65,'0_9_65_615',3,50,1,'',0,0,0),
(616,'车载电台','车载电台',65,'0_9_65_616',3,50,1,'',0,0,0),
(617,'行车记录仪','行车记录仪',65,'0_9_65_617',3,50,1,'',0,0,0),
(618,'吸尘器','吸尘器',65,'0_9_65_618',3,50,1,'',0,0,0),
(619,'倒车雷达','倒车雷达',65,'0_9_65_619',3,50,1,'',0,0,0),
(620,'冰箱','冰箱',65,'0_9_65_620',3,50,1,'',0,0,0),
(621,'蓝牙设备','蓝牙设备',65,'0_9_65_621',3,50,1,'',0,0,0),
(622,'时尚影音','时尚影音',65,'0_9_65_622',3,50,1,'',0,0,0),
(623,'净化器','净化器',65,'0_9_65_623',3,50,1,'',0,0,0),
(624,'清洁剂','清洁剂',66,'0_9_66_624',3,50,1,'',0,0,0),
(625,'洗车工具','洗车工具',66,'0_9_66_625',3,50,1,'',0,0,0),
(626,'洗车配件','洗车配件',66,'0_9_66_626',3,50,1,'',0,0,0),
(627,'车蜡','车蜡',66,'0_9_66_627',3,50,1,'',0,0,0),
(628,'补漆笔','补漆笔',66,'0_9_66_628',3,50,1,'',0,0,0),
(629,'玻璃水','玻璃水',66,'0_9_66_629',3,50,1,'',0,0,0),
(630,'香水','香水',67,'0_9_67_630',3,50,1,'',0,0,0),
(631,'空气净化','空气净化',67,'0_9_67_631',3,50,1,'',0,0,0),
(632,'车内饰品','车内饰品',67,'0_9_67_632',3,50,1,'',0,0,0),
(633,'脚垫','脚垫',67,'0_9_67_633',3,50,1,'',0,0,0),
(634,'功能小件','功能小件',67,'0_9_67_634',3,50,1,'',0,0,0),
(635,'座垫','座垫',67,'0_9_67_635',3,50,1,'',0,0,0),
(636,'车身装饰件','车身装饰件',67,'0_9_67_636',3,50,1,'',0,0,0),
(637,'座套','座套',67,'0_9_67_637',3,50,1,'',0,0,0),
(638,'车衣','车衣',67,'0_9_67_638',3,50,1,'',0,0,0),
(639,'后备箱垫','后备箱垫',67,'0_9_67_639',3,50,1,'',0,0,0),
(640,'头枕腰靠','头枕腰靠',67,'0_9_67_640',3,50,1,'',0,0,0),
(641,'充气泵','充气泵',68,'0_9_68_641',3,50,1,'',0,0,0),
(642,'防盗设备','防盗设备',68,'0_9_68_642',3,50,1,'',0,0,0),
(643,'应急救援','应急救援',68,'0_9_68_643',3,50,1,'',0,0,0),
(644,'保温箱','保温箱',68,'0_9_68_644',3,50,1,'',0,0,0),
(645,'储物箱','储物箱',68,'0_9_68_645',3,50,1,'',0,0,0),
(646,'自驾野营','自驾野营',68,'0_9_68_646',3,50,1,'',0,0,0),
(647,'安全座椅','安全座椅',68,'0_9_68_647',3,50,1,'',0,0,0),
(648,'摩托车装备','摩托车装备',68,'0_9_68_648',3,50,1,'',0,0,0),
(649,'胎压监测','胎压监测',68,'0_9_68_649',3,50,1,'',0,0,0),
(650,'功能升级服务','功能升级服务',69,'0_9_69_650',3,50,1,'',0,0,0),
(651,'保养维修服务','保养维修服务',69,'0_9_69_651',3,50,1,'',0,0,0),
(652,'清洗美容服务','清洗美容服务',69,'0_9_69_652',3,50,1,'',0,0,0),
(653,'跑车','跑车',70,'0_9_70_653',3,50,1,'',0,0,0),
(654,'微型车','微型车',70,'0_9_70_654',3,50,1,'',0,0,0),
(655,'小型车','小型车',70,'0_9_70_655',3,50,1,'',0,0,0),
(656,'紧凑型车','紧凑型车',70,'0_9_70_656',3,50,1,'',0,0,0),
(657,'中型车','中型车',70,'0_9_70_657',3,50,1,'',0,0,0),
(658,'中大型车','中大型车',70,'0_9_70_658',3,50,1,'',0,0,0),
(659,'豪华车','豪华车',70,'0_9_70_659',3,50,1,'',0,0,0),
(660,'MPV','MPV',70,'0_9_70_660',3,50,1,'',0,0,0),
(661,'SUV','SUV',70,'0_9_70_661',3,50,1,'',0,0,0),
(662,'上海大众','上海大众',71,'0_9_71_662',3,50,1,'',0,0,0),
(663,'斯柯达','斯柯达',71,'0_9_71_663',3,50,1,'',0,0,0),
(664,'东风雪铁龙','东风雪铁龙',71,'0_9_71_664',3,50,1,'',0,0,0),
(665,'一汽奔腾','一汽奔腾',71,'0_9_71_665',3,50,1,'',0,0,0),
(666,'北汽新能源','北汽新能源',71,'0_9_71_666',3,50,1,'',0,0,0),
(667,'陆风','陆风',71,'0_9_71_667',3,50,1,'',0,0,0),
(668,'海马','海马',71,'0_9_71_668',3,50,1,'',0,0,0),
(669,'润滑油','润滑油',72,'0_9_72_669',3,50,1,'',0,0,0),
(670,'轮胎','轮胎',72,'0_9_72_670',3,50,1,'',0,0,0),
(671,'改装配件','改装配件',72,'0_9_72_671',3,50,1,'',0,0,0),
(672,'添加剂','添加剂',72,'0_9_72_672',3,50,1,'',0,0,0),
(673,'轮毂','轮毂',72,'0_9_72_673',3,50,1,'',0,0,0),
(674,'防冻液','防冻液',72,'0_9_72_674',3,50,1,'',0,0,0),
(675,'刹车片/盘','刹车片/盘',72,'0_9_72_675',3,50,1,'',0,0,0),
(676,'滤清器','滤清器',72,'0_9_72_676',3,50,1,'',0,0,0),
(677,'维修配件','维修配件',72,'0_9_72_677',3,50,1,'',0,0,0),
(678,'火花塞','火花塞',72,'0_9_72_678',3,50,1,'',0,0,0),
(679,'蓄电池','蓄电池',72,'0_9_72_679',3,50,1,'',0,0,0),
(680,'雨刷','雨刷',72,'0_9_72_680',3,50,1,'',0,0,0),
(681,'底盘装甲/护板','底盘装甲/护板',72,'0_9_72_681',3,50,1,'',0,0,0),
(682,'车灯','车灯',72,'0_9_72_682',3,50,1,'',0,0,0),
(683,'贴膜','贴膜',72,'0_9_72_683',3,50,1,'',0,0,0),
(684,'后视镜','后视镜',72,'0_9_72_684',3,50,1,'',0,0,0),
(685,'汽修工具','汽修工具',72,'0_9_72_685',3,50,1,'',0,0,0),
(686,'宝宝护肤','宝宝护肤',73,'0_10_73_686',3,50,1,'',0,0,0),
(687,'宝宝洗浴','宝宝洗浴',73,'0_10_73_687',3,50,1,'',0,0,0),
(688,'理发器','理发器',73,'0_10_73_688',3,50,1,'',0,0,0),
(689,'洗衣液/皂','洗衣液/皂',73,'0_10_73_689',3,50,1,'',0,0,0),
(690,'奶瓶清洗','奶瓶清洗',73,'0_10_73_690',3,50,1,'',0,0,0),
(691,'日常护理','日常护理',73,'0_10_73_691',3,50,1,'',0,0,0),
(692,'座便器','座便器',73,'0_10_73_692',3,50,1,'',0,0,0),
(693,'驱蚊防蚊','驱蚊防蚊',73,'0_10_73_693',3,50,1,'',0,0,0),
(694,'奶瓶奶嘴','奶瓶奶嘴',74,'0_10_74_694',3,50,1,'',0,0,0),
(695,'吸奶器','吸奶器',74,'0_10_74_695',3,50,1,'',0,0,0),
(696,'牙胶安抚','牙胶安抚',74,'0_10_74_696',3,50,1,'',0,0,0),
(697,'暖奶消毒','暖奶消毒',74,'0_10_74_697',3,50,1,'',0,0,0),
(698,'辅食料理机','辅食料理机',74,'0_10_74_698',3,50,1,'',0,0,0),
(699,'碗盘叉勺','碗盘叉勺',74,'0_10_74_699',3,50,1,'',0,0,0),
(700,'水壶/水杯','水壶/水杯',74,'0_10_74_700',3,50,1,'',0,0,0),
(701,'婴儿推车','婴儿推车',75,'0_10_75_701',3,50,1,'',0,0,0),
(702,'餐椅摇椅','餐椅摇椅',75,'0_10_75_702',3,50,1,'',0,0,0),
(703,'学步车','学步车',75,'0_10_75_703',3,50,1,'',0,0,0),
(704,'三轮车','三轮车',75,'0_10_75_704',3,50,1,'',0,0,0),
(705,'自行车','自行车',75,'0_10_75_705',3,50,1,'',0,0,0),
(706,'扭扭车','扭扭车',75,'0_10_75_706',3,50,1,'',0,0,0),
(707,'滑板车','滑板车',75,'0_10_75_707',3,50,1,'',0,0,0),
(708,'婴儿床','婴儿床',75,'0_10_75_708',3,50,1,'',0,0,0),
(709,'电动车','电动车',75,'0_10_75_709',3,50,1,'',0,0,0),
(710,'提篮式','提篮式',76,'0_10_76_710',3,50,1,'',0,0,0),
(711,'安全座椅','安全座椅',76,'0_10_76_711',3,50,1,'',0,0,0),
(712,'增高垫','增高垫',76,'0_10_76_712',3,50,1,'',0,0,0),
(713,'安全防护','安全防护',77,'0_10_77_713',3,50,1,'',0,0,0),
(714,'婴儿外出服','婴儿外出服',77,'0_10_77_714',3,50,1,'',0,0,0),
(715,'婴儿内衣','婴儿内衣',77,'0_10_77_715',3,50,1,'',0,0,0),
(716,'婴儿礼盒','婴儿礼盒',77,'0_10_77_716',3,50,1,'',0,0,0),
(717,'婴儿鞋帽袜','婴儿鞋帽袜',77,'0_10_77_717',3,50,1,'',0,0,0),
(718,'家居床品','家居床品',77,'0_10_77_718',3,50,1,'',0,0,0),
(719,'婴幼奶粉','婴幼奶粉',78,'0_10_78_719',3,50,1,'',0,0,0),
(720,'成人奶粉','成人奶粉',78,'0_10_78_720',3,50,1,'',0,0,0),
(721,'待产/新生','待产/新生',79,'0_10_79_721',3,50,1,'',0,0,0),
(722,'孕妇装','孕妇装',79,'0_10_79_722',3,50,1,'',0,0,0),
(723,'孕期营养','孕期营养',79,'0_10_79_723',3,50,1,'',0,0,0),
(724,'防辐射服','防辐射服',79,'0_10_79_724',3,50,1,'',0,0,0),
(725,'妈咪包/背婴带','妈咪包/背婴带',79,'0_10_79_725',3,50,1,'',0,0,0),
(726,'产后塑身','产后塑身',79,'0_10_79_726',3,50,1,'',0,0,0),
(727,'孕妈美容','孕妈美容',79,'0_10_79_727',3,50,1,'',0,0,0),
(728,'文胸/内裤','文胸/内裤',79,'0_10_79_728',3,50,1,'',0,0,0),
(729,'月子装','月子装',79,'0_10_79_729',3,50,1,'',0,0,0),
(730,'米粉/菜粉','米粉/菜粉',80,'0_10_80_730',3,50,1,'',0,0,0),
(731,'果泥/果汁','果泥/果汁',80,'0_10_80_731',3,50,1,'',0,0,0),
(732,'面条/粥','面条/粥',80,'0_10_80_732',3,50,1,'',0,0,0),
(733,'宝宝零食','宝宝零食',80,'0_10_80_733',3,50,1,'',0,0,0),
(734,'DHA','DHA',80,'0_10_80_734',3,50,1,'',0,0,0),
(735,'钙铁锌/维生素','钙铁锌/维生素',80,'0_10_80_735',3,50,1,'',0,0,0),
(736,'益生菌/初乳','益生菌/初乳',80,'0_10_80_736',3,50,1,'',0,0,0),
(737,'清火/开胃','清火/开胃',80,'0_10_80_737',3,50,1,'',0,0,0),
(738,'配饰','配饰',81,'0_10_81_738',3,50,1,'',0,0,0),
(739,'亲子装','亲子装',81,'0_10_81_739',3,50,1,'',0,0,0),
(740,'羽绒服/棉服','羽绒服/棉服',81,'0_10_81_740',3,50,1,'',0,0,0),
(741,'套装','套装',81,'0_10_81_741',3,50,1,'',0,0,0),
(742,'运动服','运动服',81,'0_10_81_742',3,50,1,'',0,0,0),
(743,'上衣','上衣',81,'0_10_81_743',3,50,1,'',0,0,0),
(744,'靴子','靴子',81,'0_10_81_744',3,50,1,'',0,0,0),
(745,'运动鞋','运动鞋',81,'0_10_81_745',3,50,1,'',0,0,0),
(746,'演出服','演出服',81,'0_10_81_746',3,50,1,'',0,0,0),
(747,'裙子','裙子',81,'0_10_81_747',3,50,1,'',0,0,0),
(748,'裤子','裤子',81,'0_10_81_748',3,50,1,'',0,0,0),
(749,'功能鞋','功能鞋',81,'0_10_81_749',3,50,1,'',0,0,0),
(750,'内衣','内衣',81,'0_10_81_750',3,50,1,'',0,0,0),
(751,'凉鞋','凉鞋',81,'0_10_81_751',3,50,1,'',0,0,0),
(752,'皮鞋/帆布鞋','皮鞋/帆布鞋',81,'0_10_81_752',3,50,1,'',0,0,0),
(753,'婴儿尿裤','婴儿尿裤',82,'0_10_82_753',3,50,1,'',0,0,0),
(754,'拉拉裤','拉拉裤',82,'0_10_82_754',3,50,1,'',0,0,0),
(755,'成人尿裤','成人尿裤',82,'0_10_82_755',3,50,1,'',0,0,0),
(756,'湿巾','湿巾',82,'0_10_82_756',3,50,1,'',0,0,0),
(757,'健身玩具','健身玩具',83,'0_10_83_757',3,50,1,'',0,0,0),
(758,'适用年龄','适用年龄',83,'0_10_83_758',3,50,1,'',0,0,0),
(759,'娃娃玩具','娃娃玩具',83,'0_10_83_759',3,50,1,'',0,0,0),
(760,'遥控/电动','遥控/电动',83,'0_10_83_760',3,50,1,'',0,0,0),
(761,'DIY玩具','DIY玩具',83,'0_10_83_761',3,50,1,'',0,0,0),
(762,'益智玩具','益智玩具',83,'0_10_83_762',3,50,1,'',0,0,0),
(763,'创意减压','创意减压',83,'0_10_83_763',3,50,1,'',0,0,0),
(764,'积木拼插','积木拼插',83,'0_10_83_764',3,50,1,'',0,0,0),
(765,'乐器相关','乐器相关',83,'0_10_83_765',3,50,1,'',0,0,0),
(766,'动漫玩具','动漫玩具',83,'0_10_83_766',3,50,1,'',0,0,0),
(767,'毛绒布艺','毛绒布艺',83,'0_10_83_767',3,50,1,'',0,0,0),
(768,'模型玩具','模型玩具',83,'0_10_83_768',3,50,1,'',0,0,0),
(769,'游戏','游戏',84,'0_11_84_769',3,50,1,'',0,0,0),
(770,'影视/动漫周边','影视/动漫周边',84,'0_11_84_770',3,50,1,'',0,0,0),
(771,'音乐','音乐',84,'0_11_84_771',3,50,1,'',0,0,0),
(772,'影视','影视',84,'0_11_84_772',3,50,1,'',0,0,0),
(773,'教育音像','教育音像',84,'0_11_84_773',3,50,1,'',0,0,0),
(774,'港台图书','港台图书',85,'0_11_85_774',3,50,1,'',0,0,0),
(775,'杂志/期刊','杂志/期刊',85,'0_11_85_775',3,50,1,'',0,0,0),
(776,'英文原版书','英文原版书',85,'0_11_85_776',3,50,1,'',0,0,0),
(777,'科普','科普',86,'0_11_86_777',3,50,1,'',0,0,0),
(778,'幼儿启蒙','幼儿启蒙',86,'0_11_86_778',3,50,1,'',0,0,0),
(779,'0-2岁','0-2岁',86,'0_11_86_779',3,50,1,'',0,0,0),
(780,'手工游戏','手工游戏',86,'0_11_86_780',3,50,1,'',0,0,0),
(781,'3-6岁','3-6岁',86,'0_11_86_781',3,50,1,'',0,0,0),
(782,'智力开发','智力开发',86,'0_11_86_782',3,50,1,'',0,0,0),
(783,'7-10岁','7-10岁',86,'0_11_86_783',3,50,1,'',0,0,0),
(784,'11-14岁','11-14岁',86,'0_11_86_784',3,50,1,'',0,0,0),
(785,'儿童文学','儿童文学',86,'0_11_86_785',3,50,1,'',0,0,0),
(786,'绘本','绘本',86,'0_11_86_786',3,50,1,'',0,0,0),
(787,'外文原版','外文原版',87,'0_11_87_787',3,50,1,'',0,0,0),
(788,'畅读VIP','畅读VIP',87,'0_11_87_788',3,50,1,'',0,0,0),
(789,'免费','免费',87,'0_11_87_789',3,50,1,'',0,0,0),
(790,'小说','小说',87,'0_11_87_790',3,50,1,'',0,0,0),
(791,'励志与成功','励志与成功',87,'0_11_87_791',3,50,1,'',0,0,0),
(792,'经济金融','经济金融',87,'0_11_87_792',3,50,1,'',0,0,0),
(793,'文学','文学',87,'0_11_87_793',3,50,1,'',0,0,0),
(794,'社科','社科',87,'0_11_87_794',3,50,1,'',0,0,0),
(795,'婚恋两性','婚恋两性',87,'0_11_87_795',3,50,1,'',0,0,0),
(796,'字典词典','字典词典',88,'0_11_88_796',3,50,1,'',0,0,0),
(797,'教材','教材',88,'0_11_88_797',3,50,1,'',0,0,0),
(798,'中小学教辅','中小学教辅',88,'0_11_88_798',3,50,1,'',0,0,0),
(799,'考试','考试',88,'0_11_88_799',3,50,1,'',0,0,0),
(800,'外语学习','外语学习',88,'0_11_88_800',3,50,1,'',0,0,0),
(801,'通俗流行','通俗流行',89,'0_11_89_801',3,50,1,'',0,0,0),
(802,'古典音乐','古典音乐',89,'0_11_89_802',3,50,1,'',0,0,0),
(803,'摇滚说唱','摇滚说唱',89,'0_11_89_803',3,50,1,'',0,0,0),
(804,'爵士蓝调','爵士蓝调',89,'0_11_89_804',3,50,1,'',0,0,0),
(805,'乡村民谣','乡村民谣',89,'0_11_89_805',3,50,1,'',0,0,0),
(806,'有声读物','有声读物',89,'0_11_89_806',3,50,1,'',0,0,0),
(807,'小说','小说',90,'0_11_90_807',3,50,1,'',0,0,0),
(808,'文学','文学',90,'0_11_90_808',3,50,1,'',0,0,0),
(809,'青春文学','青春文学',90,'0_11_90_809',3,50,1,'',0,0,0),
(810,'传记','传记',90,'0_11_90_810',3,50,1,'',0,0,0),
(811,'动漫','动漫',90,'0_11_90_811',3,50,1,'',0,0,0),
(812,'艺术','艺术',90,'0_11_90_812',3,50,1,'',0,0,0),
(813,'摄影','摄影',90,'0_11_90_813',3,50,1,'',0,0,0),
(814,'管理','管理',91,'0_11_91_814',3,50,1,'',0,0,0),
(815,'金融与投资','金融与投资',91,'0_11_91_815',3,50,1,'',0,0,0),
(816,'经济','经济',91,'0_11_91_816',3,50,1,'',0,0,0),
(817,'励志与成功','励志与成功',91,'0_11_91_817',3,50,1,'',0,0,0),
(818,'哲学/宗教','哲学/宗教',92,'0_11_92_818',3,50,1,'',0,0,0),
(819,'社会科学','社会科学',92,'0_11_92_819',3,50,1,'',0,0,0),
(820,'法律','法律',92,'0_11_92_820',3,50,1,'',0,0,0),
(821,'文化','文化',92,'0_11_92_821',3,50,1,'',0,0,0),
(822,'历史','历史',92,'0_11_92_822',3,50,1,'',0,0,0),
(823,'心理学','心理学',92,'0_11_92_823',3,50,1,'',0,0,0),
(824,'政治/军事','政治/军事',92,'0_11_92_824',3,50,1,'',0,0,0),
(825,'国学/古籍','国学/古籍',92,'0_11_92_825',3,50,1,'',0,0,0),
(826,'美食','美食',93,'0_11_93_826',3,50,1,'',0,0,0),
(827,'时尚美妆','时尚美妆',93,'0_11_93_827',3,50,1,'',0,0,0),
(828,'家居','家居',93,'0_11_93_828',3,50,1,'',0,0,0),
(829,'手工DIY','手工DIY',93,'0_11_93_829',3,50,1,'',0,0,0),
(830,'家教与育儿','家教与育儿',93,'0_11_93_830',3,50,1,'',0,0,0),
(831,'两性','两性',93,'0_11_93_831',3,50,1,'',0,0,0),
(832,'孕产','孕产',93,'0_11_93_832',3,50,1,'',0,0,0),
(833,'体育','体育',93,'0_11_93_833',3,50,1,'',0,0,0),
(834,'健身保健','健身保健',93,'0_11_93_834',3,50,1,'',0,0,0),
(835,'旅游/地图','旅游/地图',93,'0_11_93_835',3,50,1,'',0,0,0),
(836,'建筑','建筑',94,'0_11_94_836',3,50,1,'',0,0,0),
(837,'工业技术','工业技术',94,'0_11_94_837',3,50,1,'',0,0,0),
(838,'电子/通信','电子/通信',94,'0_11_94_838',3,50,1,'',0,0,0),
(839,'医学','医学',94,'0_11_94_839',3,50,1,'',0,0,0),
(840,'科学与自然','科学与自然',94,'0_11_94_840',3,50,1,'',0,0,0),
(841,'农林','农林',94,'0_11_94_841',3,50,1,'',0,0,0),
(842,'计算机与互联网','计算机与互联网',94,'0_11_94_842',3,50,1,'',0,0,0),
(843,'科普','科普',94,'0_11_94_843',3,50,1,'',0,0,0);

/*Table structure for table `shop_order` */

DROP TABLE IF EXISTS `shop_order`;

CREATE TABLE `shop_order` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(20) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发货状态',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人',
  `country` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '国家',
  `province` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `district` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '县区',
  `twon` int(11) DEFAULT '0' COMMENT '乡镇',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(60) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `shipping_code` varchar(32) NOT NULL DEFAULT '' COMMENT '物流code',
  `shipping_name` varchar(120) NOT NULL DEFAULT '' COMMENT '物流名称',
  `pay_code` varchar(32) NOT NULL DEFAULT '' COMMENT '支付code',
  `pay_name` varchar(120) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `invoice_title` varchar(256) DEFAULT '' COMMENT '发票抬头',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `shipping_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用余额',
  `coupon_price` decimal(10,2) DEFAULT '0.00' COMMENT '优惠券抵扣',
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用积分',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用积分抵多少钱',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付款金额',
  `total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '订单总价',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `shipping_time` int(11) DEFAULT '0' COMMENT '最后新发货时间',
  `confirm_time` int(10) DEFAULT '0' COMMENT '收货确认时间',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `order_prom_type` tinyint(4) DEFAULT '0' COMMENT '0默认1抢购2团购3优惠4预售5虚拟',
  `order_prom_id` smallint(6) NOT NULL DEFAULT '0' COMMENT '活动id',
  `order_prom_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '活动优惠金额',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格调整',
  `user_note` varchar(255) NOT NULL DEFAULT '' COMMENT '用户备注',
  `admin_note` varchar(255) DEFAULT '' COMMENT '管理员备注',
  `parent_sn` varchar(100) DEFAULT NULL COMMENT '父单单号',
  `is_distribut` tinyint(1) DEFAULT '0' COMMENT '是否已分成0未分成1已分成',
  `paid_money` decimal(10,2) DEFAULT '0.00' COMMENT '订金',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8;

/*Data for the table `shop_order` */

insert  into `shop_order`(`order_id`,`order_sn`,`user_id`,`order_status`,`shipping_status`,`pay_status`,`consignee`,`country`,`province`,`city`,`district`,`twon`,`address`,`zipcode`,`mobile`,`email`,`shipping_code`,`shipping_name`,`pay_code`,`pay_name`,`invoice_title`,`goods_price`,`shipping_price`,`user_money`,`coupon_price`,`integral`,`integral_money`,`order_amount`,`total_amount`,`add_time`,`shipping_time`,`confirm_time`,`pay_time`,`order_prom_type`,`order_prom_id`,`order_prom_amount`,`discount`,`user_note`,`admin_note`,`parent_sn`,`is_distribut`,`paid_money`) values 
(80,'201601231454088299',1,0,0,0,'刘先生',0,3,39,416,0,'海兴大厦','asas','13986765412','tpshop@tpshop.com','shunfeng','顺丰物流','','','',1700.01,0.00,0.00,0.00,0,0.00,1700.01,0.00,1453532048,0,0,0,0,0,0.00,0.00,'','','0',0,0.00),
(81,'201601231528394823',1,0,0,0,'刘先生',0,3,39,416,0,'海兴大厦','asas','13986765412','tpshop@tpshop.com','shunfeng','顺丰物流','','','',1000.00,0.00,0.00,0.00,0,0.00,1000.00,0.00,1453534119,0,0,0,0,0,0.00,0.00,'','','0',0,0.00),
(82,'201601231530321839',1,0,0,0,'刘先生',0,3,39,416,0,'海兴大厦','asas','13986765412','tpshop@tpshop.com','shunfeng','顺丰物流','','','',1400.00,0.00,0.00,0.00,0,0.00,1400.00,0.00,1453534232,0,0,0,0,0,0.00,0.00,'','','0',0,0.00),
(83,'201601231616165211',1,0,0,0,'刘先生',0,3,39,416,0,'海兴大厦','asas','13986765412','tpshop@tpshop.com','shunfeng','顺丰物流','','','',2000.00,0.00,0.00,0.00,0,0.00,2000.00,0.00,1453536976,0,0,0,0,0,0.00,0.00,'','','0',0,0.00),
(84,'201601250843024354',1,0,0,0,'刘先生',0,3,39,416,0,'海兴大厦','asas','13986765412','tpshop@tpshop.com','shunfeng','顺丰物流','','','',2400.00,0.00,0.00,0.00,0,0.00,2400.00,0.00,1453682582,0,0,0,0,0,0.00,0.00,'','','0',0,0.00);

/*Table structure for table `shop_order_goods` */

DROP TABLE IF EXISTS `shop_order_goods`;

CREATE TABLE `shop_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id自增',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(120) NOT NULL DEFAULT '' COMMENT '视频名称',
  `goods_sn` varchar(60) NOT NULL DEFAULT '' COMMENT '商品货号',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买数量',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本店价',
  `cost_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品成本价',
  `member_goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '会员折扣价',
  `give_integral` mediumint(8) DEFAULT '0' COMMENT '购买商品赠送积分',
  `spec_key` varchar(128) NOT NULL DEFAULT '' COMMENT '商品规格key',
  `spec_key_name` varchar(128) NOT NULL DEFAULT '' COMMENT '规格对应的中文名字',
  `bar_code` varchar(64) NOT NULL DEFAULT '' COMMENT '条码',
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '是否评价',
  `prom_type` tinyint(1) DEFAULT '0' COMMENT '0 普通订单,1 限时抢购, 2 团购 , 3 促销优惠,4预售',
  `prom_id` int(11) DEFAULT '0' COMMENT '活动id',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0未发货，1已发货，2已换货，3已退货',
  `delivery_id` int(11) DEFAULT '0' COMMENT '发货单ID',
  `sku` varchar(128) DEFAULT '' COMMENT 'sku',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1762 DEFAULT CHARSET=utf8;

/*Data for the table `shop_order_goods` */

insert  into `shop_order_goods`(`rec_id`,`order_id`,`goods_id`,`goods_name`,`goods_sn`,`goods_num`,`market_price`,`goods_price`,`cost_price`,`member_goods_price`,`give_integral`,`spec_key`,`spec_key_name`,`bar_code`,`is_comment`,`prom_type`,`prom_id`,`is_send`,`delivery_id`,`sku`) values 
(1061,938,141,'三星 Galaxy A9高配版 (A9100) 精灵黑 全网通4G手机 双卡双待','TP0000141',1,3599.00,3400.00,0.00,3400.00,0,'55','颜色:黑色','',0,1,2,0,0,''),
(1062,939,76,'韩文2015冬装新款女装红色双排扣配腰带毛呢大衣.','TP0000076',1,389.00,0.01,0.00,0.01,0,'77','尺码:S','',0,0,0,0,0,''),
(1063,940,141,'三星 Galaxy A9高配版 (A9100) 精灵黑 全网通4G手机 双卡双待','TP0000141',1,3599.00,3400.00,0.00,3400.00,0,'55','颜色:黑色','',0,1,2,0,0,'');

/*Table structure for table `transaction _history` */

DROP TABLE IF EXISTS `transaction _history`;

CREATE TABLE `transaction _history` (
  `trans_id` int(12) unsigned NOT NULL AUTO_INCREMENT COMMENT '提现，充值，转账交易ID',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `type` tinyint(1) NOT NULL COMMENT '交易类型',
  `money` float(10,2) NOT NULL COMMENT '交易金额',
  `time` int(11) NOT NULL COMMENT '交易时间',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `trans_account` varchar(20) NOT NULL COMMENT '账户账号',
  PRIMARY KEY (`trans_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `transaction _history` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
