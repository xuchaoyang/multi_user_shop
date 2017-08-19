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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
