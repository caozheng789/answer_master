/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : answer_system

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 12/10/2020 18:13:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `aid` int(11) NOT NULL COMMENT '编号',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `pdid` int(11) DEFAULT NULL COMMENT '试卷详细编号',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分值',
  `checked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选择的答案',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '答题表（answer）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物理路径',
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('30a3891f3a554fc83eee57a159ab8012', 'image/jpeg', 455779, 'e:/files/2020/10/10/30a3891f3a554fc83eee57a159ab8012.jpg', '/2020/10/10/30a3891f3a554fc83eee57a159ab8012.jpg', 1, '2020-10-10 16:09:33', '2020-10-10 16:09:33');
INSERT INTO `file_info` VALUES ('71de3f0f33711dedddf835b2f8ecbd9c', 'image/png', 4667, 'e:/files/2020/10/10/71de3f0f33711dedddf835b2f8ecbd9c.png', '/2020/10/10/71de3f0f33711dedddf835b2f8ecbd9c.png', 1, '2020-10-10 15:49:28', '2020-10-10 15:49:28');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int(11) NOT NULL COMMENT '试卷编号',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷表（paper）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, '垃圾分类');

-- ----------------------------
-- Table structure for paperdetail
-- ----------------------------
DROP TABLE IF EXISTS `paperdetail`;
CREATE TABLE `paperdetail`  (
  `pdid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(11) DEFAULT NULL COMMENT '试卷编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目内容',
  `typeA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项A',
  `typeB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项B',
  `typeC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项C',
  `typeD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项D',
  `p_right` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '正确答案',
  `p_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目类型',
  `p_value` int(2) DEFAULT NULL COMMENT '分值',
  PRIMARY KEY (`pdid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷详细表（paperdetail）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paperdetail
-- ----------------------------
INSERT INTO `paperdetail` VALUES (1, 1, '茶叶', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (2, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (3, 1, '猪排', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '厨余垃圾', '厨余垃圾', 1);
INSERT INTO `paperdetail` VALUES (4, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (5, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (6, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (7, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (8, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (9, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (10, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (11, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (12, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (13, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (14, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (15, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (16, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (17, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (18, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (19, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (20, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (21, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (22, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (23, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (24, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (25, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);
INSERT INTO `paperdetail` VALUES (26, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('adminQuartzScheduler', 'DESKTOP-GVTJOSM1602484951611', 1602497580829, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `sid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `pid` int(11) DEFAULT NULL COMMENT '试卷编号',
  `mark` int(11) DEFAULT NULL COMMENT '成绩',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成绩表（score）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (123123, 13123, 13123, 123123, NULL);

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT 1 COMMENT '成功失败',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `createTime`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES (1, 1, '登陆', 1, NULL, '2020-10-06 17:18:48');
INSERT INTO `sys_logs` VALUES (2, 1, '生成代码', 1, NULL, '2020-10-06 17:21:15');
INSERT INTO `sys_logs` VALUES (3, 1, '生成代码', 1, NULL, '2020-10-06 17:22:12');
INSERT INTO `sys_logs` VALUES (4, 1, '保存菜单', 1, NULL, '2020-10-06 17:26:11');
INSERT INTO `sys_logs` VALUES (5, 1, '保存角色', 1, NULL, '2020-10-06 17:26:21');
INSERT INTO `sys_logs` VALUES (6, 1, '修改菜单', 1, NULL, '2020-10-06 17:27:02');
INSERT INTO `sys_logs` VALUES (7, 1, '退出', 1, NULL, '2020-10-06 17:27:10');
INSERT INTO `sys_logs` VALUES (8, 1, '登陆', 1, NULL, '2020-10-06 17:27:35');
INSERT INTO `sys_logs` VALUES (9, 1, '保存菜单', 1, NULL, '2020-10-06 17:29:13');
INSERT INTO `sys_logs` VALUES (10, 1, '修改菜单', 1, NULL, '2020-10-06 17:29:47');
INSERT INTO `sys_logs` VALUES (11, 1, '修改菜单', 1, NULL, '2020-10-06 17:29:59');
INSERT INTO `sys_logs` VALUES (12, 1, '修改菜单', 1, NULL, '2020-10-06 17:31:23');
INSERT INTO `sys_logs` VALUES (13, 1, '退出', 1, NULL, '2020-10-06 17:31:30');
INSERT INTO `sys_logs` VALUES (14, 1, '登陆', 1, NULL, '2020-10-06 17:31:31');
INSERT INTO `sys_logs` VALUES (15, 1, '保存角色', 1, NULL, '2020-10-06 17:32:13');
INSERT INTO `sys_logs` VALUES (16, 1, '退出', 1, NULL, '2020-10-06 17:32:19');
INSERT INTO `sys_logs` VALUES (17, 1, '登陆', 1, NULL, '2020-10-06 17:32:20');
INSERT INTO `sys_logs` VALUES (18, 1, '保存菜单', 1, NULL, '2020-10-06 17:36:39');
INSERT INTO `sys_logs` VALUES (19, 1, '修改菜单', 1, NULL, '2020-10-06 17:37:00');
INSERT INTO `sys_logs` VALUES (20, 1, '登陆', 1, NULL, '2020-10-09 18:06:03');
INSERT INTO `sys_logs` VALUES (21, 1, '登陆', 1, NULL, '2020-10-10 14:34:34');
INSERT INTO `sys_logs` VALUES (22, 1, '保存菜单', 1, NULL, '2020-10-10 14:35:09');
INSERT INTO `sys_logs` VALUES (23, 1, '生成代码', 1, NULL, '2020-10-10 14:38:02');
INSERT INTO `sys_logs` VALUES (24, 1, '生成代码', 1, NULL, '2020-10-10 14:38:39');
INSERT INTO `sys_logs` VALUES (25, 1, '修改菜单', 1, NULL, '2020-10-10 14:39:54');
INSERT INTO `sys_logs` VALUES (26, 1, '保存角色', 1, NULL, '2020-10-10 14:40:02');
INSERT INTO `sys_logs` VALUES (27, 1, '退出', 1, NULL, '2020-10-10 14:40:06');
INSERT INTO `sys_logs` VALUES (28, 1, '登陆', 1, NULL, '2020-10-10 14:40:08');
INSERT INTO `sys_logs` VALUES (29, 1, '修改菜单', 1, NULL, '2020-10-10 15:00:03');
INSERT INTO `sys_logs` VALUES (30, 1, '退出', 1, NULL, '2020-10-10 15:02:24');
INSERT INTO `sys_logs` VALUES (31, 1, '登陆', 1, NULL, '2020-10-10 15:02:25');
INSERT INTO `sys_logs` VALUES (32, 1, '文件上传', 1, NULL, '2020-10-10 15:41:58');
INSERT INTO `sys_logs` VALUES (33, 1, '保存角色', 1, NULL, '2020-10-10 15:45:27');
INSERT INTO `sys_logs` VALUES (34, 1, '退出', 1, NULL, '2020-10-10 15:45:31');
INSERT INTO `sys_logs` VALUES (35, 1, '登陆', 1, NULL, '2020-10-10 15:45:32');
INSERT INTO `sys_logs` VALUES (36, 1, '文件上传', 1, NULL, '2020-10-10 15:49:28');
INSERT INTO `sys_logs` VALUES (37, 1, '文件删除', 1, NULL, '2020-10-10 15:51:09');
INSERT INTO `sys_logs` VALUES (38, 1, '生成代码', 1, NULL, '2020-10-10 16:15:36');
INSERT INTO `sys_logs` VALUES (39, 1, '保存菜单', 1, NULL, '2020-10-10 16:28:21');
INSERT INTO `sys_logs` VALUES (40, 1, '保存角色', 1, NULL, '2020-10-10 16:30:26');
INSERT INTO `sys_logs` VALUES (41, 1, '退出', 1, NULL, '2020-10-10 16:30:30');
INSERT INTO `sys_logs` VALUES (42, 1, '登陆', 1, NULL, '2020-10-10 16:30:31');
INSERT INTO `sys_logs` VALUES (43, 1, '登陆', 1, NULL, '2020-10-10 16:49:20');
INSERT INTO `sys_logs` VALUES (44, 1, '保存菜单', 1, NULL, '2020-10-10 17:11:17');
INSERT INTO `sys_logs` VALUES (45, 1, '保存角色', 1, NULL, '2020-10-10 17:11:32');
INSERT INTO `sys_logs` VALUES (46, 1, '退出', 1, NULL, '2020-10-10 17:12:13');
INSERT INTO `sys_logs` VALUES (47, 1, '登陆', 1, NULL, '2020-10-10 17:12:17');
INSERT INTO `sys_logs` VALUES (48, 1, '登陆', 1, NULL, '2020-10-10 17:25:27');
INSERT INTO `sys_logs` VALUES (49, 1, '登陆', 1, NULL, '2020-10-12 14:43:54');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `css` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `href` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 0, '用户管理', 'fa-users', '', 1, '', 1);
INSERT INTO `sys_permission` VALUES (2, 1, '用户查询', 'fa-user', 'pages/user/userList.html', 1, '', 2);
INSERT INTO `sys_permission` VALUES (3, 2, '查询', '', '', 2, 'sys:user:query', 100);
INSERT INTO `sys_permission` VALUES (4, 2, '新增', '', '', 2, 'sys:user:add', 100);
INSERT INTO `sys_permission` VALUES (6, 0, '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', 1, 'sys:user:password', 4);
INSERT INTO `sys_permission` VALUES (7, 0, '系统设置', 'fa-gears', '', 1, '', 5);
INSERT INTO `sys_permission` VALUES (8, 7, '菜单', 'fa-cog', 'pages/menu/menuList.html', 1, '', 6);
INSERT INTO `sys_permission` VALUES (9, 8, '查询', '', '', 2, 'sys:menu:query', 100);
INSERT INTO `sys_permission` VALUES (10, 8, '新增', '', '', 2, 'sys:menu:add', 100);
INSERT INTO `sys_permission` VALUES (11, 8, '删除', '', '', 2, 'sys:menu:del', 100);
INSERT INTO `sys_permission` VALUES (12, 7, '角色', 'fa-user-secret', 'pages/role/roleList.html', 1, '', 7);
INSERT INTO `sys_permission` VALUES (13, 12, '查询', '', '', 2, 'sys:role:query', 100);
INSERT INTO `sys_permission` VALUES (14, 12, '新增', '', '', 2, 'sys:role:add', 100);
INSERT INTO `sys_permission` VALUES (15, 12, '删除', '', '', 2, 'sys:role:del', 100);
INSERT INTO `sys_permission` VALUES (16, 0, '文件管理', 'fa-folder-open', 'pages/file/fileList.html', 1, '', 8);
INSERT INTO `sys_permission` VALUES (17, 16, '查询', '', '', 2, 'sys:file:query', 100);
INSERT INTO `sys_permission` VALUES (18, 16, '删除', '', '', 2, 'sys:file:del', 100);
INSERT INTO `sys_permission` VALUES (19, 0, '数据源监控', 'fa-eye', 'druid/index.html', 1, '', 9);
INSERT INTO `sys_permission` VALUES (20, 0, '接口swagger', 'fa-file-pdf-o', 'swagger-ui.html', 1, '', 10);
INSERT INTO `sys_permission` VALUES (21, 0, '代码生成', 'fa-wrench', 'pages/generate/edit.html', 1, 'generate:edit', 11);
INSERT INTO `sys_permission` VALUES (22, 0, '公告管理', 'fa-book', 'pages/notice/noticeList.html', 1, '', 12);
INSERT INTO `sys_permission` VALUES (23, 22, '查询', '', '', 2, 'notice:query', 100);
INSERT INTO `sys_permission` VALUES (24, 22, '添加', '', '', 2, 'notice:add', 100);
INSERT INTO `sys_permission` VALUES (25, 22, '删除', '', '', 2, 'notice:del', 100);
INSERT INTO `sys_permission` VALUES (26, 0, '日志查询', 'fa-reorder', 'pages/log/logList.html', 1, 'sys:log:query', 13);
INSERT INTO `sys_permission` VALUES (27, 0, '邮件管理', 'fa-envelope', 'pages/mail/mailList.html', 1, '', 14);
INSERT INTO `sys_permission` VALUES (28, 27, '发送邮件', '', '', 2, 'mail:send', 100);
INSERT INTO `sys_permission` VALUES (29, 27, '查询', '', '', 2, 'mail:all:query', 100);
INSERT INTO `sys_permission` VALUES (30, 0, '定时任务管理', 'fa-tasks', 'pages/job/jobList.html', 1, '', 15);
INSERT INTO `sys_permission` VALUES (31, 30, '查询', '', '', 2, 'job:query', 100);
INSERT INTO `sys_permission` VALUES (32, 30, '新增', '', '', 2, 'job:add', 100);
INSERT INTO `sys_permission` VALUES (33, 30, '删除', '', '', 2, 'job:del', 100);
INSERT INTO `sys_permission` VALUES (34, 0, 'excel导出', 'fa-arrow-circle-down', 'pages/excel/sql.html', 1, '', 16);
INSERT INTO `sys_permission` VALUES (35, 34, '导出', '', '', 2, 'excel:down', 100);
INSERT INTO `sys_permission` VALUES (36, 34, '页面显示数据', '', '', 2, 'excel:show:datas', 100);
INSERT INTO `sys_permission` VALUES (37, 0, '字典管理', 'fa-reddit', 'pages/dict/dictList.html', 1, '', 17);
INSERT INTO `sys_permission` VALUES (38, 37, '查询', '', '', 2, 'dict:query', 100);
INSERT INTO `sys_permission` VALUES (39, 37, '新增', '', '', 2, 'dict:add', 100);
INSERT INTO `sys_permission` VALUES (40, 37, '删除', '', '', 2, 'dict:del', 100);
INSERT INTO `sys_permission` VALUES (41, 0, '答题管理', 'fa-trello', '', 1, '', 100);
INSERT INTO `sys_permission` VALUES (42, 41, '试卷详细表', 'fa-cubes', 'pages/answer/paperdetailList.html', 1, '', 100);
INSERT INTO `sys_permission` VALUES (43, 42, '查询', 'fa-behance-square', '', 2, 'paperdetails:query', 100);
INSERT INTO `sys_permission` VALUES (44, 0, '微信用户管理', 'fa-qq', 'pages/wxuser/wxUserList.html', 1, '', 100);
INSERT INTO `sys_permission` VALUES (45, 41, '弹幕管理', 'fa-bomb', 'pages/wxbullet/wxBulletList.html', 1, '', 100);
INSERT INTO `sys_permission` VALUES (46, 41, '答题记录', 'fa-behance-square', 'pages/score/scoreList.html', 1, '', 100);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ADMIN', '管理员', '2017-05-01 13:25:39', '2020-10-10 17:11:32');
INSERT INTO `sys_role` VALUES (2, 'USER', '', '2017-08-01 21:47:31', '2017-10-05 21:59:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`, `permissionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (1, 2);
INSERT INTO `sys_role_permission` VALUES (1, 3);
INSERT INTO `sys_role_permission` VALUES (1, 4);
INSERT INTO `sys_role_permission` VALUES (1, 6);
INSERT INTO `sys_role_permission` VALUES (1, 7);
INSERT INTO `sys_role_permission` VALUES (1, 8);
INSERT INTO `sys_role_permission` VALUES (1, 9);
INSERT INTO `sys_role_permission` VALUES (1, 10);
INSERT INTO `sys_role_permission` VALUES (1, 11);
INSERT INTO `sys_role_permission` VALUES (1, 12);
INSERT INTO `sys_role_permission` VALUES (1, 13);
INSERT INTO `sys_role_permission` VALUES (1, 14);
INSERT INTO `sys_role_permission` VALUES (1, 15);
INSERT INTO `sys_role_permission` VALUES (1, 16);
INSERT INTO `sys_role_permission` VALUES (1, 17);
INSERT INTO `sys_role_permission` VALUES (1, 18);
INSERT INTO `sys_role_permission` VALUES (1, 21);
INSERT INTO `sys_role_permission` VALUES (1, 41);
INSERT INTO `sys_role_permission` VALUES (1, 42);
INSERT INTO `sys_role_permission` VALUES (1, 43);
INSERT INTO `sys_role_permission` VALUES (1, 44);
INSERT INTO `sys_role_permission` VALUES (1, 45);
INSERT INTO `sys_role_permission` VALUES (1, 46);
INSERT INTO `sys_role_permission` VALUES (2, 1);
INSERT INTO `sys_role_permission` VALUES (2, 2);
INSERT INTO `sys_role_permission` VALUES (2, 3);
INSERT INTO `sys_role_permission` VALUES (2, 4);
INSERT INTO `sys_role_permission` VALUES (2, 6);
INSERT INTO `sys_role_permission` VALUES (2, 7);
INSERT INTO `sys_role_permission` VALUES (2, 8);
INSERT INTO `sys_role_permission` VALUES (2, 9);
INSERT INTO `sys_role_permission` VALUES (2, 10);
INSERT INTO `sys_role_permission` VALUES (2, 11);
INSERT INTO `sys_role_permission` VALUES (2, 12);
INSERT INTO `sys_role_permission` VALUES (2, 13);
INSERT INTO `sys_role_permission` VALUES (2, 14);
INSERT INTO `sys_role_permission` VALUES (2, 15);
INSERT INTO `sys_role_permission` VALUES (2, 16);
INSERT INTO `sys_role_permission` VALUES (2, 17);
INSERT INTO `sys_role_permission` VALUES (2, 18);
INSERT INTO `sys_role_permission` VALUES (2, 19);
INSERT INTO `sys_role_permission` VALUES (2, 20);
INSERT INTO `sys_role_permission` VALUES (2, 21);
INSERT INTO `sys_role_permission` VALUES (2, 22);
INSERT INTO `sys_role_permission` VALUES (2, 23);
INSERT INTO `sys_role_permission` VALUES (2, 24);
INSERT INTO `sys_role_permission` VALUES (2, 25);
INSERT INTO `sys_role_permission` VALUES (2, 30);
INSERT INTO `sys_role_permission` VALUES (2, 31);
INSERT INTO `sys_role_permission` VALUES (2, 34);
INSERT INTO `sys_role_permission` VALUES (2, 36);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`, `roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 1);
INSERT INTO `sys_role_user` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `headImgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telephone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK', '管理员', NULL, '', '', '', '1998-07-01', 0, 1, '2017-04-10 15:21:38', '2017-07-06 09:20:19');
INSERT INTO `sys_user` VALUES (2, 'user', '$2a$10$ooGb4wjT7Hg3zgU2RhZp6eVu3jvG29i/U4L6VRwiZZ4.DZ0OOEAHu', '用户', NULL, '', '', '', NULL, 1, 1, '2017-08-01 21:47:18', '2017-08-01 21:47:18');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `k` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `val` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`, `k`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES (1, 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05');
INSERT INTO `t_dict` VALUES (2, 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46');
INSERT INTO `t_dict` VALUES (3, 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (4, 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (5, 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (6, 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (7, 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (8, 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (9, 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cron` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `springBeanName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jobName`(`jobName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mail
-- ----------------------------
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '正文',
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mail_to
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_to`;
CREATE TABLE `t_mail_to`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1成功，0失败',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read`  (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`noticeId`, `userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_token
-- ----------------------------
DROP TABLE IF EXISTS `t_token`;
CREATE TABLE `t_token`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'token',
  `val` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'LoginUser的json串',
  `expireTime` datetime(0) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_token
-- ----------------------------
INSERT INTO `t_token` VALUES ('004f7385-495f-48cb-b7dc-a7c6a4ba38fe', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602329127955,\"id\":1,\"loginTime\":1602321927955,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602321927887,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602321927887},{\"createTime\":1602321927888,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321927888},{\"createTime\":1602321927888,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321927888}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"004f7385-495f-48cb-b7dc-a7c6a4ba38fe\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-10 19:25:28', '2020-10-10 17:25:28', '2020-10-10 17:25:28');
INSERT INTO `t_token` VALUES ('176b4db7-37ee-4d07-8c90-fff77aa4893c', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"job:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"dict:add\"},{\"authority\":\"notice:query\"},{\"authority\":\"dict:query\"},{\"authority\":\"excel:show:datas\"},{\"authority\":\"dict:del\"},{\"authority\":\"sys:log:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"job:add\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:role:del\"},{\"authority\":\"notice:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"excel:down\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"mail:all:query\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"job:del\"},{\"authority\":\"notice:add\"},{\"authority\":\"mail:send\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1601983940261,\"id\":1,\"loginTime\":1601976740261,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1601976740194,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-eye\",\"href\":\"druid/index.html\",\"id\":19,\"name\":\"数据源监控\",\"parentId\":0,\"permission\":\"\",\"sort\":9,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-file-pdf-o\",\"href\":\"swagger-ui.html\",\"id\":20,\"name\":\"接口swagger\",\"parentId\":0,\"permission\":\"\",\"sort\":10,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-book\",\"href\":\"pages/notice/noticeList.html\",\"id\":22,\"name\":\"公告管理\",\"parentId\":0,\"permission\":\"\",\"sort\":12,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-reorder\",\"href\":\"pages/log/logList.html\",\"id\":26,\"name\":\"日志查询\",\"parentId\":0,\"permission\":\"sys:log:query\",\"sort\":13,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-envelope\",\"href\":\"pages/mail/mailList.html\",\"id\":27,\"name\":\"邮件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":14,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-tasks\",\"href\":\"pages/job/jobList.html\",\"id\":30,\"name\":\"定时任务管理\",\"parentId\":0,\"permission\":\"\",\"sort\":15,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-arrow-circle-down\",\"href\":\"pages/excel/sql.html\",\"id\":34,\"name\":\"excel导出\",\"parentId\":0,\"permission\":\"\",\"sort\":16,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-reddit\",\"href\":\"pages/dict/dictList.html\",\"id\":37,\"name\":\"字典管理\",\"parentId\":0,\"permission\":\"\",\"sort\":17,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":39,\"name\":\"新增\",\"parentId\":37,\"permission\":\"dict:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":29,\"name\":\"查询\",\"parentId\":27,\"permission\":\"mail:all:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":24,\"name\":\"添加\",\"parentId\":22,\"permission\":\"notice:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":28,\"name\":\"发送邮件\",\"parentId\":27,\"permission\":\"mail:send\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":38,\"name\":\"查询\",\"parentId\":37,\"permission\":\"dict:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":33,\"name\":\"删除\",\"parentId\":30,\"permission\":\"job:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":23,\"name\":\"查询\",\"parentId\":22,\"permission\":\"notice:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":32,\"name\":\"新增\",\"parentId\":30,\"permission\":\"job:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":36,\"name\":\"页面显示数据\",\"parentId\":34,\"permission\":\"excel:show:datas\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":31,\"name\":\"查询\",\"parentId\":30,\"permission\":\"job:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":40,\"name\":\"删除\",\"parentId\":37,\"permission\":\"dict:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":25,\"name\":\"删除\",\"parentId\":22,\"permission\":\"notice:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":35,\"name\":\"导出\",\"parentId\":34,\"permission\":\"excel:down\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"176b4db7-37ee-4d07-8c90-fff77aa4893c\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-06 19:32:20', '2020-10-06 17:32:20', '2020-10-06 17:32:20');
INSERT INTO `t_token` VALUES ('4e7983a6-b7ba-4b88-93c4-c57fc8735b49', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602325831578,\"id\":1,\"loginTime\":1602318631578,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602318631509,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"4e7983a6-b7ba-4b88-93c4-c57fc8735b49\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-10 18:30:32', '2020-10-10 16:30:32', '2020-10-10 16:30:32');
INSERT INTO `t_token` VALUES ('7ef94ff7-b130-41b6-bceb-96a990cdf283', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602492234212,\"id\":1,\"loginTime\":1602485034212,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602485034138,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602485034138},{\"createTime\":1602485034139,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034141,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034141},{\"createTime\":1602485034142,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034142},{\"createTime\":1602485034142,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602485034142},{\"createTime\":1602485034142,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602485034142}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"7ef94ff7-b130-41b6-bceb-96a990cdf283\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-12 16:43:54', '2020-10-12 14:43:54', '2020-10-12 14:43:54');
INSERT INTO `t_token` VALUES ('9b5f1e6a-803d-4918-bab1-d9f54c5a4da8', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"job:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"dict:add\"},{\"authority\":\"notice:query\"},{\"authority\":\"dict:del\"},{\"authority\":\"dict:query\"},{\"authority\":\"excel:show:datas\"},{\"authority\":\"sys:log:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"job:add\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:role:del\"},{\"authority\":\"notice:del\"},{\"authority\":\"excel:down\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"mail:all:query\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"job:del\"},{\"authority\":\"notice:add\"},{\"authority\":\"mail:send\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602245162849,\"id\":1,\"loginTime\":1602237962849,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602237962774,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962775,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-eye\",\"href\":\"druid/index.html\",\"id\":19,\"name\":\"数据源监控\",\"parentId\":0,\"permission\":\"\",\"sort\":9,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-file-pdf-o\",\"href\":\"swagger-ui.html\",\"id\":20,\"name\":\"接口swagger\",\"parentId\":0,\"permission\":\"\",\"sort\":10,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-book\",\"href\":\"pages/notice/noticeList.html\",\"id\":22,\"name\":\"公告管理\",\"parentId\":0,\"permission\":\"\",\"sort\":12,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-reorder\",\"href\":\"pages/log/logList.html\",\"id\":26,\"name\":\"日志查询\",\"parentId\":0,\"permission\":\"sys:log:query\",\"sort\":13,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-envelope\",\"href\":\"pages/mail/mailList.html\",\"id\":27,\"name\":\"邮件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":14,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-tasks\",\"href\":\"pages/job/jobList.html\",\"id\":30,\"name\":\"定时任务管理\",\"parentId\":0,\"permission\":\"\",\"sort\":15,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962776,\"css\":\"fa-arrow-circle-down\",\"href\":\"pages/excel/sql.html\",\"id\":34,\"name\":\"excel导出\",\"parentId\":0,\"permission\":\"\",\"sort\":16,\"type\":1,\"updateTime\":1602237962776},{\"createTime\":1602237962776,\"css\":\"fa-reddit\",\"href\":\"pages/dict/dictList.html\",\"id\":37,\"name\":\"字典管理\",\"parentId\":0,\"permission\":\"\",\"sort\":17,\"type\":1,\"updateTime\":1602237962776},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":40,\"name\":\"删除\",\"parentId\":37,\"permission\":\"dict:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":35,\"name\":\"导出\",\"parentId\":34,\"permission\":\"excel:down\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":25,\"name\":\"删除\",\"parentId\":22,\"permission\":\"notice:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":29,\"name\":\"查询\",\"parentId\":27,\"permission\":\"mail:all:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":39,\"name\":\"新增\",\"parentId\":37,\"permission\":\"dict:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":24,\"name\":\"添加\",\"parentId\":22,\"permission\":\"notice:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":28,\"name\":\"发送邮件\",\"parentId\":27,\"permission\":\"mail:send\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":38,\"name\":\"查询\",\"parentId\":37,\"permission\":\"dict:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":33,\"name\":\"删除\",\"parentId\":30,\"permission\":\"job:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":23,\"name\":\"查询\",\"parentId\":22,\"permission\":\"notice:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":32,\"name\":\"新增\",\"parentId\":30,\"permission\":\"job:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":36,\"name\":\"页面显示数据\",\"parentId\":34,\"permission\":\"excel:show:datas\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":31,\"name\":\"查询\",\"parentId\":30,\"permission\":\"job:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"9b5f1e6a-803d-4918-bab1-d9f54c5a4da8\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-09 20:06:03', '2020-10-09 18:06:03', '2020-10-09 18:06:03');
INSERT INTO `t_token` VALUES ('abfa02e4-8346-4be5-bebb-abe178bcd203', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602328337373,\"id\":1,\"loginTime\":1602321137373,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602321137299,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602321137299},{\"createTime\":1602321137300,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137301,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137302,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137302},{\"createTime\":1602321137302,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137302},{\"createTime\":1602321137302,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137302},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"abfa02e4-8346-4be5-bebb-abe178bcd203\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-10 19:12:17', '2020-10-10 17:12:17', '2020-10-10 17:12:17');

-- ----------------------------
-- Table structure for wx_bullet
-- ----------------------------
DROP TABLE IF EXISTS `wx_bullet`;
CREATE TABLE `wx_bullet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `create_time` datetime(0) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '弹幕' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_user
-- ----------------------------
DROP TABLE IF EXISTS `wx_user`;
CREATE TABLE `wx_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `privilege` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` tinyint(255) DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES (1, '我认真的', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132', 'zh_CN', '[]', 1, 'oFBoj6nRQujMblPX47T--tek19KE', '苏州', '江苏', '中国');
INSERT INTO `wx_user` VALUES (2, '雷哥', 'https://thirdwx.qlogo.cn/mmopen/vi_32/HMQoQAZ1IibXQD9P9bwicc6F8Vz55icSVXgRwbFrxYvzXLXJVBZ9yJjWOh9RwVWcsMxFPYPxKlO2BRW4mP2w61stg/132', '', '[]', 0, 'oFBoj6oHQBDpr3lfWy2w6eFsN8_0', '', '', '');
INSERT INTO `wx_user` VALUES (3, '笑哈哈', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJvVusaGiaHqNcL0hATPRJjJZXOSsBAMibvgRbXNlCZsPz2YEalR1ZlnssIcKyVOYhNk2H1o3KaZICw/132', 'zh_CN', '[]', 1, 'oFBoj6qPxtTcyva4W2floSrm2wFA', '海淀', '北京', '中国');

SET FOREIGN_KEY_CHECKS = 1;
