/*
Navicat MySQL Data Transfer

Source Server         : zhangw
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : boot_security

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-10-15 21:38:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '物理路径',
  `url` varchar(1024) NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of file_info
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '0', '用户管理', 'fa-users', '', '1', '', '1');
INSERT INTO `sys_permission` VALUES ('2', '1', '用户查询', 'fa-user', 'pages/user/userList.html', '1', '', '2');
INSERT INTO `sys_permission` VALUES ('3', '2', '查询', '', '', '2', 'sys:user:query', '100');
INSERT INTO `sys_permission` VALUES ('4', '2', '新增', '', '', '2', 'sys:user:add', '100');
INSERT INTO `sys_permission` VALUES ('6', '0', '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', '1', 'sys:user:password', '4');
INSERT INTO `sys_permission` VALUES ('7', '0', '系统设置', 'fa-gears', '', '1', '', '5');
INSERT INTO `sys_permission` VALUES ('8', '7', '菜单', 'fa-cog', 'pages/menu/menuList.html', '1', '', '6');
INSERT INTO `sys_permission` VALUES ('9', '8', '查询', '', '', '2', 'sys:menu:query', '100');
INSERT INTO `sys_permission` VALUES ('10', '8', '新增', '', '', '2', 'sys:menu:add', '100');
INSERT INTO `sys_permission` VALUES ('11', '8', '删除', '', '', '2', 'sys:menu:del', '100');
INSERT INTO `sys_permission` VALUES ('12', '7', '角色', 'fa-user-secret', 'pages/role/roleList.html', '1', '', '7');
INSERT INTO `sys_permission` VALUES ('13', '12', '查询', '', '', '2', 'sys:role:query', '100');
INSERT INTO `sys_permission` VALUES ('14', '12', '新增', '', '', '2', 'sys:role:add', '100');
INSERT INTO `sys_permission` VALUES ('15', '12', '删除', '', '', '2', 'sys:role:del', '100');
INSERT INTO `sys_permission` VALUES ('16', '0', '文件管理', 'fa-folder-open', 'pages/file/fileList.html', '1', '', '8');
INSERT INTO `sys_permission` VALUES ('17', '16', '查询', '', '', '2', 'sys:file:query', '100');
INSERT INTO `sys_permission` VALUES ('18', '16', '删除', '', '', '2', 'sys:file:del', '100');
INSERT INTO `sys_permission` VALUES ('19', '0', '数据源监控', 'fa-eye', 'druid/index.html', '1', '', '9');
INSERT INTO `sys_permission` VALUES ('20', '0', '接口swagger', 'fa-file-pdf-o', 'swagger-ui.html', '1', '', '10');
INSERT INTO `sys_permission` VALUES ('21', '0', '代码生成', 'fa-wrench', 'pages/generate/edit.html', '1', 'generate:edit', '11');
INSERT INTO `sys_permission` VALUES ('22', '0', '公告管理', 'fa-book', 'pages/notice/noticeList.html', '1', '', '12');
INSERT INTO `sys_permission` VALUES ('23', '22', '查询', '', '', '2', 'notice:query', '100');
INSERT INTO `sys_permission` VALUES ('24', '22', '添加', '', '', '2', 'notice:add', '100');
INSERT INTO `sys_permission` VALUES ('25', '22', '删除', '', '', '2', 'notice:del', '100');
INSERT INTO `sys_permission` VALUES ('26', '0', '日志查询', 'fa-reorder', 'pages/log/logList.html', '1', 'sys:log:query', '13');
INSERT INTO `sys_permission` VALUES ('27', '0', '邮件管理', 'fa-envelope', 'pages/mail/mailList.html', '1', '', '14');
INSERT INTO `sys_permission` VALUES ('28', '27', '发送邮件', '', '', '2', 'mail:send', '100');
INSERT INTO `sys_permission` VALUES ('29', '27', '查询', '', '', '2', 'mail:all:query', '100');
INSERT INTO `sys_permission` VALUES ('30', '0', '定时任务管理', 'fa-tasks', 'pages/job/jobList.html', '1', '', '15');
INSERT INTO `sys_permission` VALUES ('31', '30', '查询', '', '', '2', 'job:query', '100');
INSERT INTO `sys_permission` VALUES ('32', '30', '新增', '', '', '2', 'job:add', '100');
INSERT INTO `sys_permission` VALUES ('33', '30', '删除', '', '', '2', 'job:del', '100');
INSERT INTO `sys_permission` VALUES ('34', '0', 'excel导出', 'fa-arrow-circle-down', 'pages/excel/sql.html', '1', '', '16');
INSERT INTO `sys_permission` VALUES ('35', '34', '导出', '', '', '2', 'excel:down', '100');
INSERT INTO `sys_permission` VALUES ('36', '34', '页面显示数据', '', '', '2', 'excel:show:datas', '100');
INSERT INTO `sys_permission` VALUES ('37', '0', '字典管理', 'fa-reddit', 'pages/dict/dictList.html', '1', '', '17');
INSERT INTO `sys_permission` VALUES ('38', '37', '查询', '', '', '2', 'dict:query', '100');
INSERT INTO `sys_permission` VALUES ('39', '37', '新增', '', '', '2', 'dict:add', '100');
INSERT INTO `sys_permission` VALUES ('40', '37', '删除', '', '', '2', 'dict:del', '100');
-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'ADMIN', '管理员', '2017-05-01 13:25:39', '2017-10-05 21:59:18');
INSERT INTO `sys_role` VALUES ('2', 'USER', '', '2017-08-01 21:47:31', '2017-10-05 21:59:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '3');
INSERT INTO `sys_role_permission` VALUES ('1', '4');
INSERT INTO `sys_role_permission` VALUES ('1', '6');
INSERT INTO `sys_role_permission` VALUES ('1', '7');
INSERT INTO `sys_role_permission` VALUES ('1', '8');
INSERT INTO `sys_role_permission` VALUES ('1', '9');
INSERT INTO `sys_role_permission` VALUES ('1', '10');
INSERT INTO `sys_role_permission` VALUES ('1', '11');
INSERT INTO `sys_role_permission` VALUES ('1', '12');
INSERT INTO `sys_role_permission` VALUES ('1', '13');
INSERT INTO `sys_role_permission` VALUES ('1', '14');
INSERT INTO `sys_role_permission` VALUES ('1', '15');
INSERT INTO `sys_role_permission` VALUES ('1', '16');
INSERT INTO `sys_role_permission` VALUES ('1', '17');
INSERT INTO `sys_role_permission` VALUES ('1', '18');
INSERT INTO `sys_role_permission` VALUES ('1', '19');
INSERT INTO `sys_role_permission` VALUES ('1', '20');
INSERT INTO `sys_role_permission` VALUES ('1', '21');
INSERT INTO `sys_role_permission` VALUES ('1', '22');
INSERT INTO `sys_role_permission` VALUES ('1', '23');
INSERT INTO `sys_role_permission` VALUES ('1', '24');
INSERT INTO `sys_role_permission` VALUES ('1', '25');
INSERT INTO `sys_role_permission` VALUES ('1', '26');
INSERT INTO `sys_role_permission` VALUES ('1', '27');
INSERT INTO `sys_role_permission` VALUES ('1', '28');
INSERT INTO `sys_role_permission` VALUES ('1', '29');
INSERT INTO `sys_role_permission` VALUES ('1', '30');
INSERT INTO `sys_role_permission` VALUES ('1', '31');
INSERT INTO `sys_role_permission` VALUES ('1', '32');
INSERT INTO `sys_role_permission` VALUES ('1', '33');
INSERT INTO `sys_role_permission` VALUES ('1', '34');
INSERT INTO `sys_role_permission` VALUES ('1', '35');
INSERT INTO `sys_role_permission` VALUES ('1', '36');
INSERT INTO `sys_role_permission` VALUES ('1', '37');
INSERT INTO `sys_role_permission` VALUES ('1', '38');
INSERT INTO `sys_role_permission` VALUES ('1', '39');
INSERT INTO `sys_role_permission` VALUES ('1', '40');
INSERT INTO `sys_role_permission` VALUES ('2', '1');
INSERT INTO `sys_role_permission` VALUES ('2', '2');
INSERT INTO `sys_role_permission` VALUES ('2', '3');
INSERT INTO `sys_role_permission` VALUES ('2', '4');
INSERT INTO `sys_role_permission` VALUES ('2', '6');
INSERT INTO `sys_role_permission` VALUES ('2', '7');
INSERT INTO `sys_role_permission` VALUES ('2', '8');
INSERT INTO `sys_role_permission` VALUES ('2', '9');
INSERT INTO `sys_role_permission` VALUES ('2', '10');
INSERT INTO `sys_role_permission` VALUES ('2', '11');
INSERT INTO `sys_role_permission` VALUES ('2', '12');
INSERT INTO `sys_role_permission` VALUES ('2', '13');
INSERT INTO `sys_role_permission` VALUES ('2', '14');
INSERT INTO `sys_role_permission` VALUES ('2', '15');
INSERT INTO `sys_role_permission` VALUES ('2', '16');
INSERT INTO `sys_role_permission` VALUES ('2', '17');
INSERT INTO `sys_role_permission` VALUES ('2', '18');
INSERT INTO `sys_role_permission` VALUES ('2', '19');
INSERT INTO `sys_role_permission` VALUES ('2', '20');
INSERT INTO `sys_role_permission` VALUES ('2', '21');
INSERT INTO `sys_role_permission` VALUES ('2', '22');
INSERT INTO `sys_role_permission` VALUES ('2', '23');
INSERT INTO `sys_role_permission` VALUES ('2', '24');
INSERT INTO `sys_role_permission` VALUES ('2', '25');
INSERT INTO `sys_role_permission` VALUES ('2', '30');
INSERT INTO `sys_role_permission` VALUES ('2', '31');
INSERT INTO `sys_role_permission` VALUES ('2', '34');
INSERT INTO `sys_role_permission` VALUES ('2', '36');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('1', '1');
INSERT INTO `sys_role_user` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK', '管理员', null, '', '', '', '1998-07-01', '0', '1', '2017-04-10 15:21:38', '2017-07-06 09:20:19');
INSERT INTO `sys_user` VALUES ('2', 'user', '$2a$10$ooGb4wjT7Hg3zgU2RhZp6eVu3jvG29i/U4L6VRwiZZ4.DZ0OOEAHu', '用户', null, '', '', '', null, '1', '1', '2017-08-01 21:47:18', '2017-08-01 21:47:18');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05');
INSERT INTO `t_dict` VALUES ('2', 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46');
INSERT INTO `t_dict` VALUES ('3', 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('4', 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('5', 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('6', 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('7', 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('8', 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES ('9', 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cron` varchar(64) NOT NULL,
  `springBeanName` varchar(64) NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobName` (`jobName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail
-- ----------------------------
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '正文',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_mail
-- ----------------------------

-- ----------------------------
-- Table structure for t_mail_to
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_to`;
CREATE TABLE `t_mail_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1成功，0失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_mail_to
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`noticeId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_notice_read
-- ----------------------------
-- ----------------------------
-- Table structure for t_token
-- ----------------------------
DROP TABLE IF EXISTS `t_token`;
CREATE TABLE `t_token` (
  `id` varchar(36) NOT NULL COMMENT 'token',
  `val` text NOT NULL COMMENT 'LoginUser的json串',
  `expireTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Table structure for xz_account_log
-- ----------------------------
DROP TABLE IF EXISTS `xz_account_log`;
CREATE TABLE `xz_account_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_money` varchar(255) DEFAULT NULL COMMENT '用户金额',
  `frozen_money` varchar(255) DEFAULT NULL COMMENT '冻结金额',
  `pay_points` varchar(255) DEFAULT NULL COMMENT '支付积分',
  `doge_money` varchar(255) DEFAULT NULL COMMENT 'DOGE',
  `stc_currency` varchar(255) DEFAULT NULL COMMENT 'STC',
  `contract_revenue` varchar(255) DEFAULT NULL COMMENT '智能合约收益',
  `change_time` datetime DEFAULT NULL COMMENT '变动时间',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `order_sn` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `status` varchar(255) DEFAULT NULL COMMENT '1:购买,2:转赠(福分记录),3:充值(福分记录),4:预约/领养(福分记录),5:抢购(福分记录),6:注册(福分记录),7:未抢购成功退回(福分记录),8:智能合约收益(收益财分),9:出售财分,10:管理员操作,11:后台充值,12:团队奖,13推荐奖,15提现pig币,16提现BTC币,17后台充值财分,18后台充值福分,19后台充值doge币,20后台充值pig币,21增加智能合约收益,22增加doge币,23增加pig币',
  `goods_id` int(11) DEFAULT NULL COMMENT '星座商品id',
  `laststatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流水日志表';
-- ----------------------------
-- Table structure for xz_goods
-- ----------------------------
DROP TABLE IF EXISTS `xz_goods`;
CREATE TABLE `xz_goods` (
  `id` int(11) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL COMMENT '星座名称',
  `small_price` varchar(10) DEFAULT NULL COMMENT '最小价值',
  `large_price` varchar(10) DEFAULT NULL COMMENT '最大价值',
  `start_time` datetime DEFAULT NULL COMMENT '领养开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '领养结束时间',
  `reservation` varchar(255) DEFAULT NULL COMMENT '预约数量',
  `adoptive_energy` varchar(255) DEFAULT NULL COMMENT '领养（抢）能量',
  `contract_days` varchar(255) DEFAULT NULL COMMENT '合约收益天数',
  `income_ratio` varchar(255) DEFAULT NULL COMMENT '合约收益比例',
  `pig_currency` varchar(255) DEFAULT NULL COMMENT '可挖STC数量',
  `doge_money` varchar(255) DEFAULT NULL COMMENT '可挖DOGE数量',
  `images` varchar(255) DEFAULT NULL COMMENT '图片',
  `today_is_open` varchar(255) DEFAULT NULL COMMENT '0未开奖1已开奖',
  `is_display` varchar(255) DEFAULT NULL COMMENT '是否上架，0默认为不上架，1为上架',
  `is_lock` varchar(255) DEFAULT NULL COMMENT '决不能实时开奖的处理  今天是否锁场次 1锁0开',
  `reset_time` datetime DEFAULT NULL COMMENT '重置时间',
  `game_reset_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='星座表';
-- ----------------------------
-- Table structure for xz_goods_reservation
-- ----------------------------
DROP TABLE IF EXISTS `xz_goods_reservation`;
CREATE TABLE `xz_goods_reservation` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '星座商品编号',
  `reservation_time` datetime DEFAULT NULL COMMENT '预约时间',
  `reservation_status` varchar(255) DEFAULT NULL COMMENT '预约状态0未抢到1已抢到',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `pay_points` varchar(255) DEFAULT NULL COMMENT '预约消耗能量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='星座预约记录表';
-- ----------------------------
-- Table structure for xz_order
-- ----------------------------
DROP TABLE IF EXISTS `xz_order`;
CREATE TABLE `xz_order` (
  `id` int(11) NOT NULL,
  `establish_time` datetime DEFAULT NULL COMMENT '生成订单时间',
  `pig_order_sn` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `pay_status` varchar(255) DEFAULT NULL COMMENT '交易状态,0为冻结，1为交易中，2交易完成',
  `sell_user_id` int(11) DEFAULT NULL COMMENT '出售人',
  `purchase_user_id` int(11) DEFAULT NULL COMMENT '购买人',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '星座名称',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '星座价格',
  `goods_id` int(11) DEFAULT NULL COMMENT '星座编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `appeal_time` datetime DEFAULT NULL COMMENT '申诉时间',
  `img_url` varchar(255) DEFAULT NULL COMMENT '支付凭证',
  `end_time` datetime DEFAULT NULL COMMENT '订单结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='星座订单表';
-- ----------------------------
-- Table structure for xz_order_appeal
-- ----------------------------
DROP TABLE IF EXISTS `xz_order_appeal`;
CREATE TABLE `xz_order_appeal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '申诉人id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `remark` varchar(255) DEFAULT NULL COMMENT '申诉原因',
  `add_time` datetime DEFAULT NULL COMMENT '订单时间',
  `status` varchar(255) DEFAULT NULL COMMENT '1未审核;2申诉通过;3申诉不通过',
  `update_time` datetime DEFAULT NULL COMMENT '审核时间',
  `complainant` varchar(255) DEFAULT NULL COMMENT '申诉人;1:买家;2卖家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户订单申诉表';
-- ----------------------------
-- Table structure for xz_sms_log
-- ----------------------------
DROP TABLE IF EXISTS `xz_sms_log`;
CREATE TABLE `xz_sms_log` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户表id',
  `add_time` datetime DEFAULT NULL COMMENT '发送时间',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `status` varchar(255) DEFAULT NULL COMMENT '发送状态,1:成功,0:失败',
  `msg` varchar(255) DEFAULT NULL COMMENT '短信内容',
  `scene` varchar(255) DEFAULT NULL COMMENT '发送场景,1:用户注册,2:找回密码,3:客户下单,4:客户支付,5:商家发货,6:身份验证',
  `error_msg` varchar(255) DEFAULT NULL COMMENT '发送短信异常内容',
  `is_check` varchar(255) DEFAULT NULL COMMENT '是否已验证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信日志记录表';
-- ----------------------------
-- Table structure for xz_user
-- ----------------------------
DROP TABLE IF EXISTS `xz_user`;
CREATE TABLE `xz_user` (
  `user_id` int(11) NOT NULL COMMENT 'id',
  `user_level` varchar(255) DEFAULT NULL COMMENT '会员等级',
  `first_leader` int(255) DEFAULT NULL COMMENT '第一上级，存id',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `paypwd` varchar(255) DEFAULT NULL COMMENT '二级密码',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `mobile_validated` varchar(255) DEFAULT NULL,
  `user_money` varchar(255) DEFAULT NULL COMMENT '用户金额',
  `pay_points` varchar(255) DEFAULT NULL COMMENT '用户积分',
  `distribut_money` varchar(255) DEFAULT NULL COMMENT '佣金金额',
  `frozen_money` varchar(255) DEFAULT NULL COMMENT '冻结金额',
  `second_leader` int(255) DEFAULT NULL COMMENT '第二个上级，存id',
  `third_leader` int(255) DEFAULT NULL COMMENT '第三个上级',
  `underling_number` varchar(255) DEFAULT NULL COMMENT '用户下线数量',
  `reg_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(255) DEFAULT NULL,
  `is_lock` varchar(255) DEFAULT NULL COMMENT '是否锁定',
  `id_car` varchar(255) DEFAULT NULL COMMENT '身份证',
  `real_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `rule_sort` varchar(255) DEFAULT NULL COMMENT '排单权重',
  `doge_money` varchar(255) DEFAULT NULL COMMENT 'DOGE币',
  `pig_currency` varchar(255) DEFAULT NULL COMMENT 'STC币',
  `accumulated_income` varchar(255) DEFAULT NULL COMMENT '累计收益',
  `usermoneysalt` varchar(255) DEFAULT NULL COMMENT '给财分加盐',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家用户表';
-- ----------------------------
-- Table structure for xz_user_goods_exclusive
-- ----------------------------
DROP TABLE IF EXISTS `xz_user_goods_exclusive`;
CREATE TABLE `xz_user_goods_exclusive` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '星座id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '星座名称',
  `is_able_sale` varchar(255) DEFAULT NULL COMMENT '是否可出售,默认0不可出售，1可出售',
  `price` varchar(10) DEFAULT NULL COMMENT '金额',
  `from_user_id` int(11) DEFAULT NULL COMMENT '收购人ID',
  `appoint_user_id` int(11) DEFAULT NULL COMMENT '指定用户ID',
  `buy_time` datetime DEFAULT NULL COMMENT '买入时间',
  `end_time` datetime DEFAULT NULL,
  `pig_salt` varchar(255) DEFAULT NULL,
  `buy_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户拥有的星座关系表';
-- ----------------------------
-- Table structure for xz_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `xz_user_identity`;
CREATE TABLE `xz_user_identity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `identity_car` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `status` varchar(255) DEFAULT NULL COMMENT '0待审核1审核通过-1审核不通过',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户实名认证信息表';
-- ----------------------------
-- Table structure for xz_user_level
-- ----------------------------
DROP TABLE IF EXISTS `xz_user_level`;
CREATE TABLE `xz_user_level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL COMMENT '级别',
  `name` varchar(255) DEFAULT NULL COMMENT '级别名称',
  `reward` varchar(255) DEFAULT NULL COMMENT '奖励规则',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员级别表';
-- ----------------------------
-- Table structure for xz_user_payment
-- ----------------------------
DROP TABLE IF EXISTS `xz_user_payment`;
CREATE TABLE `xz_user_payment` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '1:支付宝，2:微信，3:银行卡',
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `name` varchar(255) DEFAULT NULL COMMENT '收款人',
  `qrcode_url` varchar(255) DEFAULT NULL COMMENT '二维url',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户银行',
  `bank_address` varchar(255) DEFAULT NULL COMMENT '开户行地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `paysalt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家收款账户表';
-- ----------------------------
-- Table structure for xz_user_recharge
-- ----------------------------
DROP TABLE IF EXISTS `xz_user_recharge`;
CREATE TABLE `xz_user_recharge` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(255) DEFAULT NULL COMMENT '会员昵称',
  `order_sn` varchar(255) DEFAULT NULL COMMENT '充值单号',
  `account` varchar(255) DEFAULT NULL COMMENT '充值金额',
  `add_time` datetime DEFAULT NULL COMMENT '支付时间',
  `pay_status` varchar(255) DEFAULT NULL COMMENT '充值状态0:待支付 1:充值成功 2:交易关闭',
  `img_url` varchar(255) DEFAULT NULL COMMENT '上传支付凭证',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `verifier_time` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户充值记录表';
-- ----------------------------
-- Table structure for xz_user_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `xz_user_withdrawal`;
CREATE TABLE `xz_user_withdrawal` (
  `id` int(11) NOT NULL,
  `withdrawal_type` varchar(255) DEFAULT NULL COMMENT '提现类型，DOGE币、STC币、能量、收益等；',
  `create_date` datetime DEFAULT NULL COMMENT '提现时间',
  `money` varchar(255) DEFAULT NULL COMMENT '提现金额',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `user_id` int(11) DEFAULT NULL COMMENT '提现用户',
  `status` varchar(255) DEFAULT NULL COMMENT '提现状态，1、待审核；2、审核通过；3、审核不通过',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户提现记录表';
