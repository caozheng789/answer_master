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

 Date: 26/10/2020 18:06:09
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
-- Table structure for background
-- ----------------------------
DROP TABLE IF EXISTS `background`;
CREATE TABLE `background`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bg_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '背景图',
  `bg_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '背景描述',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of background
-- ----------------------------
INSERT INTO `background` VALUES (2, '/2020/10/13/d3816a5ba1b05cfac8183febde428220.jpg', 'test', '2020-10-19 14:28:25');
INSERT INTO `background` VALUES (4, '/2020/10/19/87b616f50463c9f46a4d76ddcb7c8467.jpg', 'test', '2020-10-19 15:01:18');

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
INSERT INTO `file_info` VALUES ('131520c834984f8076b73142f6ff1642', 'image/jpeg', 32890, 'e:/files/2020/10/13/131520c834984f8076b73142f6ff1642.jpg', '/2020/10/13/131520c834984f8076b73142f6ff1642.jpg', 1, '2020-10-13 17:19:04', '2020-10-15 09:50:27');
INSERT INTO `file_info` VALUES ('30a3891f3a554fc83eee57a159ab8012', 'image/jpeg', 455779, 'e:/files/2020/10/10/30a3891f3a554fc83eee57a159ab8012.jpg', '/2020/10/10/30a3891f3a554fc83eee57a159ab8012.jpg', 1, '2020-10-10 16:09:33', '2020-10-14 16:46:50');
INSERT INTO `file_info` VALUES ('36de9b807bc3abc055a60f346b3d6c06', 'image/jpeg', 100290, 'e:/files/2020/10/13/36de9b807bc3abc055a60f346b3d6c06.jpg', '/2020/10/13/36de9b807bc3abc055a60f346b3d6c06.jpg', 1, '2020-10-13 15:40:49', '2020-10-13 17:13:24');
INSERT INTO `file_info` VALUES ('3bce9088f2db66071f4c85cf5b3c6ea7', 'image/jpeg', 4813, 'e:/files/2020/10/13/3bce9088f2db66071f4c85cf5b3c6ea7.jpg', '/2020/10/13/3bce9088f2db66071f4c85cf5b3c6ea7.jpg', 1, '2020-10-13 15:48:25', '2020-10-13 15:48:25');
INSERT INTO `file_info` VALUES ('56b1920b6e268f7c10260e4dc5e4e8f8', 'image/jpeg', 73400, '/home/images/2020/10/19/56b1920b6e268f7c10260e4dc5e4e8f8.jpg', '/2020/10/19/56b1920b6e268f7c10260e4dc5e4e8f8.jpg', 1, '2020-10-19 14:38:20', '2020-10-19 14:46:10');
INSERT INTO `file_info` VALUES ('5a785ffd6d3208005dcc5348145f36ee', 'image/png', 599177, '/home/images/2020/10/19/5a785ffd6d3208005dcc5348145f36ee.png', '/2020/10/19/5a785ffd6d3208005dcc5348145f36ee.png', 1, '2020-10-19 14:40:55', '2020-10-19 14:40:55');
INSERT INTO `file_info` VALUES ('5d8c8a501af6f138ace2c3ee665293cf', 'image/jpeg', 16130, 'e:/files/2020/10/13/5d8c8a501af6f138ace2c3ee665293cf.jpg', '/2020/10/13/5d8c8a501af6f138ace2c3ee665293cf.jpg', 1, '2020-10-13 15:50:46', '2020-10-13 17:16:24');
INSERT INTO `file_info` VALUES ('6c74f9496d692c2abf3afc9b6cc1d9b7', 'image/jpeg', 66718, 'e:/files/2020/10/13/6c74f9496d692c2abf3afc9b6cc1d9b7.jpg', '/2020/10/13/6c74f9496d692c2abf3afc9b6cc1d9b7.jpg', 1, '2020-10-13 17:42:31', '2020-10-15 09:55:02');
INSERT INTO `file_info` VALUES ('6d3bed9269a10ee24925112f286eeb31', 'image/jpeg', 62167, 'e:/files/2020/10/13/6d3bed9269a10ee24925112f286eeb31.jpg', '/2020/10/13/6d3bed9269a10ee24925112f286eeb31.jpg', 1, '2020-10-13 17:18:25', '2020-10-15 09:52:35');
INSERT INTO `file_info` VALUES ('71de3f0f33711dedddf835b2f8ecbd9c', 'image/png', 4667, 'e:/files/2020/10/10/71de3f0f33711dedddf835b2f8ecbd9c.png', '/2020/10/10/71de3f0f33711dedddf835b2f8ecbd9c.png', 1, '2020-10-10 15:49:28', '2020-10-13 16:06:52');
INSERT INTO `file_info` VALUES ('87b616f50463c9f46a4d76ddcb7c8467', 'image/jpeg', 1029770, '/home/images/2020/10/19/87b616f50463c9f46a4d76ddcb7c8467.jpg', '/2020/10/19/87b616f50463c9f46a4d76ddcb7c8467.jpg', 1, '2020-10-19 14:50:52', '2020-10-19 15:01:16');
INSERT INTO `file_info` VALUES ('9e99bd0223097c5f67a9ee98a2822d3b', 'image/jpeg', 62681, 'e:/files/2020/10/13/9e99bd0223097c5f67a9ee98a2822d3b.jpg', '/2020/10/13/9e99bd0223097c5f67a9ee98a2822d3b.jpg', 1, '2020-10-13 17:17:00', '2020-10-13 17:17:00');
INSERT INTO `file_info` VALUES ('c64f54bc5faf3e1b4a6fa9a6e4e797e6', 'image/jpeg', 538060, '/home/images/2020/10/19/c64f54bc5faf3e1b4a6fa9a6e4e797e6.jpg', '/2020/10/19/c64f54bc5faf3e1b4a6fa9a6e4e797e6.jpg', 1, '2020-10-19 14:48:00', '2020-10-19 14:49:02');
INSERT INTO `file_info` VALUES ('d3816a5ba1b05cfac8183febde428220', 'image/jpeg', 56596, 'e:/files/2020/10/13/d3816a5ba1b05cfac8183febde428220.jpg', '/2020/10/13/d3816a5ba1b05cfac8183febde428220.jpg', 1, '2020-10-13 17:21:41', '2020-10-13 17:21:41');
INSERT INTO `file_info` VALUES ('f5cc13a8e398020680bb6f016d29898d', 'image/png', 1601, 'e:/files/2020/10/13/f5cc13a8e398020680bb6f016d29898d.png', '/2020/10/13/f5cc13a8e398020680bb6f016d29898d.png', 1, '2020-10-13 15:40:45', '2020-10-13 15:40:45');
INSERT INTO `file_info` VALUES ('f750489ce6ab31a359018f5933684b90', 'image/jpeg', 77974, 'e:/files/2020/10/13/f750489ce6ab31a359018f5933684b90.jpg', '/2020/10/13/f750489ce6ab31a359018f5933684b90.jpg', 1, '2020-10-13 17:19:38', '2020-10-13 17:19:38');

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
  `p_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片路径',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '详情科普',
  PRIMARY KEY (`pdid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试卷详细表（paperdetail）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paperdetail
-- ----------------------------
INSERT INTO `paperdetail` VALUES (1, 1, '茶叶', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '可回收物', '其他垃圾', 1, '/2020/10/13/d3816a5ba1b05cfac8183febde428220.jpg', '“喝过的茶叶属于湿垃圾。喝过的茶叶属于易腐败物质，也就是厨余垃圾，要及时处理。茶叶冲泡过后剩余的茶叶渣属于湿垃圾，这类垃圾因为有水分，时间一长就会发酵，所以要投入湿垃圾一类中。冲泡过后的茶叶难免会有一些废茶水的存在，在投放的时候应该将里面的水沥干。如果是小袋包装密封的茶叶，塑料包装应该放在干垃圾中，茶”');
INSERT INTO `paperdetail` VALUES (2, 1, '棒棒糖', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '厨房垃圾', '其他垃圾', 123, '', '1');
INSERT INTO `paperdetail` VALUES (25, 1, '西瓜皮', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '厨房垃圾', '厨余垃圾', 123, '', '12');
INSERT INTO `paperdetail` VALUES (26, 1, '西瓜子', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 1, '/2020/10/10/71de3f0f33711dedddf835b2f8ecbd9c.png', NULL);
INSERT INTO `paperdetail` VALUES (50, 13123, '南瓜皮', '1', '13', '123', '1', '可回收物', '其他垃圾', 1, '/2020/10/13/6c74f9496d692c2abf3afc9b6cc1d9b7.jpg', '2313');
INSERT INTO `paperdetail` VALUES (51, 1, '土豆', '可回收物', '厨余垃圾', '有害垃圾', '其他垃圾', '其他垃圾', '其他垃圾', 123, '/2020/10/13/6c74f9496d692c2abf3afc9b6cc1d9b7.jpg', '猪能吃的就是湿垃圾');

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
INSERT INTO `qrtz_scheduler_state` VALUES ('adminQuartzScheduler', 'DESKTOP-GVTJOSM1603706612049', 1603706699485, 15000);

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
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `pid` int(11) DEFAULT NULL COMMENT '试卷编号',
  `mark` int(11) DEFAULT NULL COMMENT '成绩',
  `create_time` datetime(0) DEFAULT NULL,
  `share_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生成图片路径',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成绩表（score）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (3, 1, NULL, NULL, '2020-10-14 17:25:52', '/98d4e20022f14d2d97f6501bbacbdb7c.png');
INSERT INTO `score` VALUES (4, 1, NULL, NULL, '2020-10-19 17:25:52', '/98d4e20022f14d2d97f6501bbacbdb7c.png');
INSERT INTO `score` VALUES (5, 1, NULL, NULL, '2020-10-19 18:25:52', '/98d4e20022f14d2d97f6501bbacbdb7c.png');
INSERT INTO `score` VALUES (6, 1, NULL, NULL, '2020-10-14 20:25:52', '/98d4e20022f14d2d97f6501bbacbdb7c.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2179 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_logs` VALUES (50, 1, '登陆', 1, NULL, '2020-10-13 15:05:51');
INSERT INTO `sys_logs` VALUES (51, 1, '文件上传', 1, NULL, '2020-10-13 15:40:39');
INSERT INTO `sys_logs` VALUES (52, 1, '文件上传', 1, NULL, '2020-10-13 15:40:45');
INSERT INTO `sys_logs` VALUES (53, 1, '文件上传', 1, NULL, '2020-10-13 15:40:49');
INSERT INTO `sys_logs` VALUES (54, 1, '文件上传', 1, NULL, '2020-10-13 15:40:52');
INSERT INTO `sys_logs` VALUES (55, 1, '文件上传', 1, NULL, '2020-10-13 15:40:57');
INSERT INTO `sys_logs` VALUES (56, 1, '文件上传', 1, NULL, '2020-10-13 15:48:25');
INSERT INTO `sys_logs` VALUES (57, 1, '文件上传', 1, NULL, '2020-10-13 15:50:46');
INSERT INTO `sys_logs` VALUES (58, 1, '文件上传', 1, NULL, '2020-10-13 15:57:12');
INSERT INTO `sys_logs` VALUES (59, 1, '文件上传', 1, NULL, '2020-10-13 15:58:20');
INSERT INTO `sys_logs` VALUES (60, 1, '文件上传', 1, NULL, '2020-10-13 15:58:23');
INSERT INTO `sys_logs` VALUES (61, 1, '文件上传', 1, NULL, '2020-10-13 16:04:05');
INSERT INTO `sys_logs` VALUES (62, 1, '文件上传', 1, NULL, '2020-10-13 16:06:52');
INSERT INTO `sys_logs` VALUES (63, 1, '文件上传', 1, NULL, '2020-10-13 16:07:27');
INSERT INTO `sys_logs` VALUES (64, 1, '文件上传', 1, NULL, '2020-10-13 16:09:57');
INSERT INTO `sys_logs` VALUES (65, 1, '文件上传', 1, NULL, '2020-10-13 16:12:29');
INSERT INTO `sys_logs` VALUES (66, 1, '文件上传', 1, NULL, '2020-10-13 16:37:01');
INSERT INTO `sys_logs` VALUES (67, 1, '文件上传', 1, NULL, '2020-10-13 16:39:02');
INSERT INTO `sys_logs` VALUES (68, 1, '文件上传', 1, NULL, '2020-10-13 17:13:24');
INSERT INTO `sys_logs` VALUES (69, 1, '文件上传', 1, NULL, '2020-10-13 17:16:24');
INSERT INTO `sys_logs` VALUES (70, 1, '文件上传', 1, NULL, '2020-10-13 17:17:00');
INSERT INTO `sys_logs` VALUES (71, 1, '文件上传', 1, NULL, '2020-10-13 17:18:25');
INSERT INTO `sys_logs` VALUES (72, 1, '文件上传', 1, NULL, '2020-10-13 17:19:04');
INSERT INTO `sys_logs` VALUES (73, 1, '文件上传', 1, NULL, '2020-10-13 17:19:38');
INSERT INTO `sys_logs` VALUES (74, 1, '文件上传', 1, NULL, '2020-10-13 17:21:41');
INSERT INTO `sys_logs` VALUES (75, 1, '文件上传', 1, NULL, '2020-10-13 17:42:31');
INSERT INTO `sys_logs` VALUES (76, 1, '登陆', 1, NULL, '2020-10-14 17:20:30');
INSERT INTO `sys_logs` VALUES (77, 1, '登陆', 1, NULL, '2020-10-15 09:43:03');
INSERT INTO `sys_logs` VALUES (78, 1, '文件上传', 1, NULL, '2020-10-15 09:50:27');
INSERT INTO `sys_logs` VALUES (79, 1, '文件上传', 1, NULL, '2020-10-15 09:50:53');
INSERT INTO `sys_logs` VALUES (80, 1, '文件上传', 1, NULL, '2020-10-15 09:52:35');
INSERT INTO `sys_logs` VALUES (81, 1, '文件上传', 1, NULL, '2020-10-15 09:55:02');
INSERT INTO `sys_logs` VALUES (82, 1, '登陆', 1, NULL, '2020-10-19 11:38:50');
INSERT INTO `sys_logs` VALUES (83, 1, '生成代码', 1, NULL, '2020-10-19 11:39:20');
INSERT INTO `sys_logs` VALUES (84, 1, '保存菜单', 1, NULL, '2020-10-19 11:42:11');
INSERT INTO `sys_logs` VALUES (85, 1, '保存角色', 1, NULL, '2020-10-19 11:42:20');
INSERT INTO `sys_logs` VALUES (86, 1, '退出', 1, NULL, '2020-10-19 11:43:18');
INSERT INTO `sys_logs` VALUES (87, 1, '登陆', 1, NULL, '2020-10-19 11:43:22');
INSERT INTO `sys_logs` VALUES (88, 1, '登陆', 1, NULL, '2020-10-19 14:27:30');
INSERT INTO `sys_logs` VALUES (89, 1, '文件上传', 1, NULL, '2020-10-19 14:38:20');
INSERT INTO `sys_logs` VALUES (90, 1, '文件上传', 1, NULL, '2020-10-19 14:40:55');
INSERT INTO `sys_logs` VALUES (91, 1, '文件上传', 1, NULL, '2020-10-19 14:46:10');
INSERT INTO `sys_logs` VALUES (92, 1, '文件上传', 1, NULL, '2020-10-19 14:48:00');
INSERT INTO `sys_logs` VALUES (93, 1, '文件上传', 1, NULL, '2020-10-19 14:48:19');
INSERT INTO `sys_logs` VALUES (94, 1, '文件上传', 1, NULL, '2020-10-19 14:49:02');
INSERT INTO `sys_logs` VALUES (95, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (96, 1, '文件上传', 0, '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\r\n### The error may involve com.boot.security.server.dao.FileInfoDao.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(?, ?, ?, ?, ?, ?, now(), now())\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\n; ]; Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'', '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (97, 1, '文件上传', 0, '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\r\n### The error may involve com.boot.security.server.dao.FileInfoDao.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(?, ?, ?, ?, ?, ?, now(), now())\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\n; ]; Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'', '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (98, 1, '文件上传', 0, '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\r\n### The error may involve com.boot.security.server.dao.FileInfoDao.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(?, ?, ?, ?, ?, ?, now(), now())\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\n; ]; Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'', '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (99, 1, '文件上传', 0, '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\r\n### The error may involve com.boot.security.server.dao.FileInfoDao.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(?, ?, ?, ?, ?, ?, now(), now())\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\n; ]; Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'', '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (100, 1, '文件上传', 0, '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\r\n### The error may involve com.boot.security.server.dao.FileInfoDao.save-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(?, ?, ?, ?, ?, ?, now(), now())\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'\n; ]; Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry \'87b616f50463c9f46a4d76ddcb7c8467\' for key \'PRIMARY\'', '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (101, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (102, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (103, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (104, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (105, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (106, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (107, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (108, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (109, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (110, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (111, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (112, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (113, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (114, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (115, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (116, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (117, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (118, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (119, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (120, 1, '文件上传', 1, NULL, '2020-10-19 14:50:52');
INSERT INTO `sys_logs` VALUES (121, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (122, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (123, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (124, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (125, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (126, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (127, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (128, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (129, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (130, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (131, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (132, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (133, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (134, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (135, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (136, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (137, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (138, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (139, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (140, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (141, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (142, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (143, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (144, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (145, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (146, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (147, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (148, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (149, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (150, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (151, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (152, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (153, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (154, 1, '文件上传', 1, NULL, '2020-10-19 14:50:53');
INSERT INTO `sys_logs` VALUES (155, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (156, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (157, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (158, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (159, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (160, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (161, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (162, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (163, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (164, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (165, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (166, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (167, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (168, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (169, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (170, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (171, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (172, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (173, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (174, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (175, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (176, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (177, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (178, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (179, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (180, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (181, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (182, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (183, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (184, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (185, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (186, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (187, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (188, 1, '文件上传', 1, NULL, '2020-10-19 14:50:54');
INSERT INTO `sys_logs` VALUES (189, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (190, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (191, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (192, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (193, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (194, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (195, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (196, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (197, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (198, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (199, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (200, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (201, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (202, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (203, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (204, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (205, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (206, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (207, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (208, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (209, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (210, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (211, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (212, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (213, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (214, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (215, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (216, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (217, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (218, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (219, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (220, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (221, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (222, 1, '文件上传', 1, NULL, '2020-10-19 14:50:55');
INSERT INTO `sys_logs` VALUES (223, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (224, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (225, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (226, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (227, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (228, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (229, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (230, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (231, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (232, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (233, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (234, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (235, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (236, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (237, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (238, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (239, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (240, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (241, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (242, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (243, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (244, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (245, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (246, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (247, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (248, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (249, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (250, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (251, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (252, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (253, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (254, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (255, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (256, 1, '文件上传', 1, NULL, '2020-10-19 14:50:56');
INSERT INTO `sys_logs` VALUES (257, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (258, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (259, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (260, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (261, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (262, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (263, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (264, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (265, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (266, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (267, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (268, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (269, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (270, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (271, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (272, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (273, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (274, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (275, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (276, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (277, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (278, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (279, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (280, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (281, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (282, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (283, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (284, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (285, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (286, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (287, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (288, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (289, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (290, 1, '文件上传', 1, NULL, '2020-10-19 14:50:57');
INSERT INTO `sys_logs` VALUES (291, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (292, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (293, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (294, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (295, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (296, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (297, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (298, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (299, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (300, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (301, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (302, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (303, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (304, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (305, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (306, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (307, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (308, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (309, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (310, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (311, 1, '文件上传', 1, NULL, '2020-10-19 14:50:58');
INSERT INTO `sys_logs` VALUES (312, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (313, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (314, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (315, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (316, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (317, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (318, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (319, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (320, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (321, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (322, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (323, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (324, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (325, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (326, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (327, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (328, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (329, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (330, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (331, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (332, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (333, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (334, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (335, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (336, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (337, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (338, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (339, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (340, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (341, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (342, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (343, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (344, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (345, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (346, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (347, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (348, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (349, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (350, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (351, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (352, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (353, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (354, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (355, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (356, 1, '文件上传', 1, NULL, '2020-10-19 14:50:59');
INSERT INTO `sys_logs` VALUES (357, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (358, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (359, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (360, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (361, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (362, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (363, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (364, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (365, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (366, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (367, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (368, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (369, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (370, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (371, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (372, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (373, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (374, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (375, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (376, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (377, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (378, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (379, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (380, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (381, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (382, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (383, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (384, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (385, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (386, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (387, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (388, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (389, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (390, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (391, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (392, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (393, 1, '文件上传', 1, NULL, '2020-10-19 14:51:00');
INSERT INTO `sys_logs` VALUES (394, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (395, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (396, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (397, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (398, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (399, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (400, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (401, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (402, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (403, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (404, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (405, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (406, 1, '文件上传', 1, NULL, '2020-10-19 14:51:01');
INSERT INTO `sys_logs` VALUES (407, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (408, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (409, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (410, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (411, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (412, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (413, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (414, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (415, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (416, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (417, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (418, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (419, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (420, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (421, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (422, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (423, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (424, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (425, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (426, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (427, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (428, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (429, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (430, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (431, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (432, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (433, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (434, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (435, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (436, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (437, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (438, 1, '文件上传', 1, NULL, '2020-10-19 14:51:02');
INSERT INTO `sys_logs` VALUES (439, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (440, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (441, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (442, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (443, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (444, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (445, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (446, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (447, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (448, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (449, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (450, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (451, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (452, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (453, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (454, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (455, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (456, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (457, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (458, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (459, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (460, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (461, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (462, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (463, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (464, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (465, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (466, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (467, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (468, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (469, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (470, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (471, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (472, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (473, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (474, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (475, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (476, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (477, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (478, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (479, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (480, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (481, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (482, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (483, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (484, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (485, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (486, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (487, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (488, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (489, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (490, 1, '文件上传', 1, NULL, '2020-10-19 14:51:03');
INSERT INTO `sys_logs` VALUES (491, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (492, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (493, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (494, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (495, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (496, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (497, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (498, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (499, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (500, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (501, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (502, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (503, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (504, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (505, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (506, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (507, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (508, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (509, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (510, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (511, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (512, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (513, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (514, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (515, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (516, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (517, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (518, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (519, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (520, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (521, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (522, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (523, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (524, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (525, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (526, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (527, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (528, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (529, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (530, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (531, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (532, 1, '文件上传', 1, NULL, '2020-10-19 14:51:04');
INSERT INTO `sys_logs` VALUES (533, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (534, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (535, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (536, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (537, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (538, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (539, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (540, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (541, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (542, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (543, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (544, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (545, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (546, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (547, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (548, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (549, 1, '文件上传', 1, NULL, '2020-10-19 14:51:05');
INSERT INTO `sys_logs` VALUES (550, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (551, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (552, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (553, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (554, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (555, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (556, 1, '文件上传', 1, NULL, '2020-10-19 14:51:06');
INSERT INTO `sys_logs` VALUES (557, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (558, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (559, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (560, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (561, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (562, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (563, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (564, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (565, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (566, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (567, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (568, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (569, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (570, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (571, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (572, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (573, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (574, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (575, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (576, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (577, 1, '文件上传', 1, NULL, '2020-10-19 14:51:07');
INSERT INTO `sys_logs` VALUES (578, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (579, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (580, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (581, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (582, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (583, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (584, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (585, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (586, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (587, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (588, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (589, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (590, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (591, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (592, 1, '文件上传', 1, NULL, '2020-10-19 14:51:08');
INSERT INTO `sys_logs` VALUES (593, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (594, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (595, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (596, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (597, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (598, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (599, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (600, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (601, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (602, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (603, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (604, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (605, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (606, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (607, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (608, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (609, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (610, 1, '文件上传', 1, NULL, '2020-10-19 14:51:09');
INSERT INTO `sys_logs` VALUES (611, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (612, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (613, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (614, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (615, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (616, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (617, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (618, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (619, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (620, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (621, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (622, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (623, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (624, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (625, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (626, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (627, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (628, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (629, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (630, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (631, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (632, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (633, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (634, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (635, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (636, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (637, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (638, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (639, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (640, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (641, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (642, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (643, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (644, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (645, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (646, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (647, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (648, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (649, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (650, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (651, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (652, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (653, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (654, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (655, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (656, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (657, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (658, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (659, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (660, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (661, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (662, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (663, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (664, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (665, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (666, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (667, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (668, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (669, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (670, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (671, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (672, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (673, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (674, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (675, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (676, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (677, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (678, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (679, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (680, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (681, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (682, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (683, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (684, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (685, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (686, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (687, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (688, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (689, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (690, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (691, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (692, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (693, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (694, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (695, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (696, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (697, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (698, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (699, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (700, 1, '文件上传', 1, NULL, '2020-10-19 14:51:10');
INSERT INTO `sys_logs` VALUES (701, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (702, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (703, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (704, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (705, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (706, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (707, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (708, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (709, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (710, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (711, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (712, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (713, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (714, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (715, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (716, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (717, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (718, 1, '文件上传', 1, NULL, '2020-10-19 14:51:11');
INSERT INTO `sys_logs` VALUES (719, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (720, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (721, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (722, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (723, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (724, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (725, 1, '文件上传', 1, NULL, '2020-10-19 14:51:12');
INSERT INTO `sys_logs` VALUES (726, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (727, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (728, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (729, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (730, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (731, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (732, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (733, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (734, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (735, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (736, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (737, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (738, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (739, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (740, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (741, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (742, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (743, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (744, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (745, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (746, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (747, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (748, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (749, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (750, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (751, 1, '文件上传', 1, NULL, '2020-10-19 14:53:10');
INSERT INTO `sys_logs` VALUES (752, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (753, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (754, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (755, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (756, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (757, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (758, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (759, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (760, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (761, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (762, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (763, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (764, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (765, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (766, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (767, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (768, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (769, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (770, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (771, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (772, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (773, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (774, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (775, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (776, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (777, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (778, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (779, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (780, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (781, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (782, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (783, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (784, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (785, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (786, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (787, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (788, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (789, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (790, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (791, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (792, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (793, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (794, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (795, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (796, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (797, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (798, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (799, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (800, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (801, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (802, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (803, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (804, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (805, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (806, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (807, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (808, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (809, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (810, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (811, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (812, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (813, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (814, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (815, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (816, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (817, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (818, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (819, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (820, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (821, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (822, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (823, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (824, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (825, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (826, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (827, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (828, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (829, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (830, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (831, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (832, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (833, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (834, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (835, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (836, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (837, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (838, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (839, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (840, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (841, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (842, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (843, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (844, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (845, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (846, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (847, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (848, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (849, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (850, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (851, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (852, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (853, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (854, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (855, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (856, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (857, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (858, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (859, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (860, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (861, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (862, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (863, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (864, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (865, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (866, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (867, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (868, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (869, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (870, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (871, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (872, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (873, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (874, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (875, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (876, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (877, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (878, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (879, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (880, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (881, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (882, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (883, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (884, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (885, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (886, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (887, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (888, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (889, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (890, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (891, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (892, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (893, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (894, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (895, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (896, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (897, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (898, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (899, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (900, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (901, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (902, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (903, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (904, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (905, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (906, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (907, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (908, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (909, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (910, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (911, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (912, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (913, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (914, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (915, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (916, 1, '文件上传', 1, NULL, '2020-10-19 14:53:11');
INSERT INTO `sys_logs` VALUES (917, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (918, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (919, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (920, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (921, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (922, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (923, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (924, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (925, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (926, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (927, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (928, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (929, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (930, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (931, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (932, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (933, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (934, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (935, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (936, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (937, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (938, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (939, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (940, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (941, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (942, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (943, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (944, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (945, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (946, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (947, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (948, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (949, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (950, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (951, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (952, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (953, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (954, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (955, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (956, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (957, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (958, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (959, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (960, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (961, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (962, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (963, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (964, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (965, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (966, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (967, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (968, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (969, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (970, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (971, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (972, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (973, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (974, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (975, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (976, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (977, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (978, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (979, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (980, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (981, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (982, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (983, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (984, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (985, 1, '文件上传', 1, NULL, '2020-10-19 14:53:12');
INSERT INTO `sys_logs` VALUES (986, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (987, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (988, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (989, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (990, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (991, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (992, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (993, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (994, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (995, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (996, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (997, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (998, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (999, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1000, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1001, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1002, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1003, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1004, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1005, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1006, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1007, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1008, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1009, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1010, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1011, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1012, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1013, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1014, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1015, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1016, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1017, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1018, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1019, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1020, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1021, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1022, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1023, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1024, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1025, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1026, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1027, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1028, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1029, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1030, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1031, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1032, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1033, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1034, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1035, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1036, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1037, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1038, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1039, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1040, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1041, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1042, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1043, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1044, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1045, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1046, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1047, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1048, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1049, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1050, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1051, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1052, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1053, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1054, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1055, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1056, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1057, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1058, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1059, 1, '文件上传', 1, NULL, '2020-10-19 14:53:13');
INSERT INTO `sys_logs` VALUES (1060, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1061, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1062, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1063, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1064, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1065, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1066, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1067, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1068, 1, '文件上传', 1, NULL, '2020-10-19 14:53:14');
INSERT INTO `sys_logs` VALUES (1069, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1070, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1071, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1072, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1073, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1074, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1075, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1076, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1077, 1, '文件上传', 1, NULL, '2020-10-19 14:53:15');
INSERT INTO `sys_logs` VALUES (1078, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1079, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1080, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1081, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1082, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1083, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1084, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1085, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1086, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1087, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1088, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1089, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1090, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1091, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1092, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1093, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1094, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1095, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1096, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1097, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1098, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1099, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1100, 1, '文件上传', 1, NULL, '2020-10-19 14:53:16');
INSERT INTO `sys_logs` VALUES (1101, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1102, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1103, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1104, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1105, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1106, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1107, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1108, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1109, 1, '文件上传', 1, NULL, '2020-10-19 14:53:17');
INSERT INTO `sys_logs` VALUES (1110, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1111, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1112, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1113, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1114, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1115, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1116, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1117, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1118, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1119, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1120, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1121, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1122, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1123, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1124, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1125, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1126, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1127, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1128, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1129, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1130, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1131, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1132, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1133, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1134, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1135, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1136, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1137, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1138, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1139, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1140, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1141, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1142, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1143, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1144, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1145, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1146, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1147, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1148, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1149, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1150, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1151, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1152, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1153, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1154, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1155, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1156, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1157, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1158, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1159, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1160, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1161, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1162, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1163, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1164, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1165, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1166, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1167, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1168, 1, '文件上传', 1, NULL, '2020-10-19 14:53:18');
INSERT INTO `sys_logs` VALUES (1169, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1170, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1171, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1172, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1173, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1174, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1175, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1176, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1177, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1178, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1179, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1180, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1181, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1182, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1183, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1184, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1185, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1186, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1187, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1188, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1189, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1190, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1191, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1192, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1193, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1194, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1195, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1196, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1197, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1198, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1199, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1200, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1201, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1202, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1203, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1204, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1205, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1206, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1207, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1208, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1209, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1210, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1211, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1212, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1213, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1214, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1215, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1216, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1217, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1218, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1219, 1, '文件上传', 1, NULL, '2020-10-19 14:53:19');
INSERT INTO `sys_logs` VALUES (1220, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1221, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1222, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1223, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1224, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1225, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1226, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1227, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1228, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1229, 1, '文件上传', 1, NULL, '2020-10-19 14:53:20');
INSERT INTO `sys_logs` VALUES (1230, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1231, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1232, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1233, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1234, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1235, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1236, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1237, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1238, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1239, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1240, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1241, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1242, 1, '文件上传', 1, NULL, '2020-10-19 14:53:21');
INSERT INTO `sys_logs` VALUES (1243, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1244, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1245, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1246, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1247, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1248, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1249, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1250, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1251, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1252, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1253, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1254, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1255, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1256, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1257, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1258, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1259, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1260, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1261, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1262, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1263, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1264, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1265, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1266, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1267, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1268, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1269, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1270, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1271, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1272, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1273, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1274, 1, '文件上传', 1, NULL, '2020-10-19 14:53:22');
INSERT INTO `sys_logs` VALUES (1275, 1, '文件上传', 1, NULL, '2020-10-19 14:53:23');
INSERT INTO `sys_logs` VALUES (1276, 1, '文件上传', 1, NULL, '2020-10-19 14:53:23');
INSERT INTO `sys_logs` VALUES (1277, 1, '文件上传', 1, NULL, '2020-10-19 14:53:23');
INSERT INTO `sys_logs` VALUES (1278, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1279, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1280, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1281, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1282, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1283, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1284, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1285, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1286, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1287, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1288, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1289, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1290, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1291, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1292, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1293, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1294, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1295, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1296, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1297, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1298, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1299, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1300, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1301, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1302, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1303, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1304, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1305, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1306, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1307, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1308, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1309, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1310, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1311, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1312, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1313, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1314, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1315, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1316, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1317, 1, '文件上传', 1, NULL, '2020-10-19 14:53:24');
INSERT INTO `sys_logs` VALUES (1318, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1319, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1320, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1321, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1322, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1323, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1324, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1325, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1326, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1327, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1328, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1329, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1330, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1331, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1332, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1333, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1334, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1335, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1336, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1337, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1338, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1339, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1340, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1341, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1342, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1343, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1344, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1345, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1346, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1347, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1348, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1349, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1350, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1351, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1352, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1353, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1354, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1355, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1356, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1357, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1358, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1359, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1360, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1361, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1362, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1363, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1364, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1365, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1366, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1367, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1368, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1369, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1370, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1371, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1372, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1373, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1374, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1375, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1376, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1377, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1378, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1379, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1380, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1381, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1382, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1383, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1384, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1385, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1386, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1387, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1388, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1389, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1390, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1391, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1392, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1393, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1394, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1395, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1396, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1397, 1, '文件上传', 1, NULL, '2020-10-19 14:53:25');
INSERT INTO `sys_logs` VALUES (1398, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1399, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1400, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1401, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1402, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1403, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1404, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1405, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1406, 1, '文件上传', 1, NULL, '2020-10-19 14:53:26');
INSERT INTO `sys_logs` VALUES (1407, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1408, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1409, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1410, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1411, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1412, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1413, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1414, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1415, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1416, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1417, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1418, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1419, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1420, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1421, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1422, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1423, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1424, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1425, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1426, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1427, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1428, 1, '文件上传', 1, NULL, '2020-10-19 14:53:27');
INSERT INTO `sys_logs` VALUES (1429, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1430, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1431, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1432, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1433, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1434, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1435, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1436, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1437, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1438, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1439, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1440, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1441, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1442, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1443, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1444, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1445, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1446, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1447, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1448, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1449, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1450, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1451, 1, '文件上传', 1, NULL, '2020-10-19 14:53:28');
INSERT INTO `sys_logs` VALUES (1452, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1453, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1454, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1455, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1456, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1457, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1458, 1, '文件上传', 1, NULL, '2020-10-19 14:53:29');
INSERT INTO `sys_logs` VALUES (1459, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1460, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1461, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1462, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1463, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1464, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1465, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1466, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1467, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1468, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1469, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1470, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1471, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1472, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1473, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1474, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1475, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1476, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1477, 1, '文件上传', 1, NULL, '2020-10-19 14:53:30');
INSERT INTO `sys_logs` VALUES (1478, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1479, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1480, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1481, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1482, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1483, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1484, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1485, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1486, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1487, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1488, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1489, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1490, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1491, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1492, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1493, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1494, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1495, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1496, 1, '文件上传', 1, NULL, '2020-10-19 14:53:31');
INSERT INTO `sys_logs` VALUES (1497, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1498, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1499, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1500, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1501, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1502, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1503, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1504, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1505, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1506, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1507, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1508, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1509, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1510, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1511, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1512, 1, '文件上传', 1, NULL, '2020-10-19 14:53:32');
INSERT INTO `sys_logs` VALUES (1513, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1514, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1515, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1516, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1517, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1518, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1519, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1520, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1521, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1522, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1523, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1524, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1525, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1526, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1527, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1528, 1, '文件上传', 1, NULL, '2020-10-19 14:53:33');
INSERT INTO `sys_logs` VALUES (1529, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1530, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1531, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1532, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1533, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1534, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1535, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1536, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1537, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1538, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1539, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1540, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1541, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1542, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1543, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1544, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1545, 1, '文件上传', 1, NULL, '2020-10-19 14:53:45');
INSERT INTO `sys_logs` VALUES (1546, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1547, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1548, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1549, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1550, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1551, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1552, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1553, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1554, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1555, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1556, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1557, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1558, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1559, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1560, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1561, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1562, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1563, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1564, 1, '文件上传', 1, NULL, '2020-10-19 14:53:46');
INSERT INTO `sys_logs` VALUES (1565, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1566, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1567, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1568, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1569, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1570, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1571, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1572, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1573, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1574, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1575, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1576, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1577, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1578, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1579, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1580, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1581, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1582, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1583, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1584, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1585, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1586, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1587, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1588, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1589, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1590, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1591, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1592, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1593, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1594, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1595, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1596, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1597, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1598, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1599, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1600, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1601, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1602, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1603, 1, '文件上传', 1, NULL, '2020-10-19 14:53:47');
INSERT INTO `sys_logs` VALUES (1604, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1605, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1606, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1607, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1608, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1609, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1610, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1611, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1612, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1613, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1614, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1615, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1616, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1617, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1618, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1619, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1620, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1621, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1622, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1623, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1624, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1625, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1626, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1627, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1628, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1629, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1630, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1631, 1, '文件上传', 1, NULL, '2020-10-19 14:53:48');
INSERT INTO `sys_logs` VALUES (1632, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1633, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1634, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1635, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1636, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1637, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1638, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1639, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1640, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1641, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1642, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1643, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1644, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1645, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1646, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1647, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1648, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1649, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1650, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1651, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1652, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1653, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1654, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1655, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1656, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1657, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1658, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1659, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1660, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1661, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1662, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1663, 1, '文件上传', 1, NULL, '2020-10-19 14:53:49');
INSERT INTO `sys_logs` VALUES (1664, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1665, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1666, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1667, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1668, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1669, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1670, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1671, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1672, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1673, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1674, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1675, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1676, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1677, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1678, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1679, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1680, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1681, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1682, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1683, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1684, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1685, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1686, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1687, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1688, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1689, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1690, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1691, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1692, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1693, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1694, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1695, 1, '文件上传', 1, NULL, '2020-10-19 14:53:50');
INSERT INTO `sys_logs` VALUES (1696, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1697, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1698, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1699, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1700, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1701, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1702, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1703, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1704, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1705, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1706, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1707, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1708, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1709, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1710, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1711, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1712, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1713, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1714, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1715, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1716, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1717, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1718, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1719, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1720, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1721, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1722, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1723, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1724, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1725, 1, '文件上传', 1, NULL, '2020-10-19 14:53:51');
INSERT INTO `sys_logs` VALUES (1726, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1727, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1728, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1729, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1730, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1731, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1732, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1733, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1734, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1735, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1736, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1737, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1738, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1739, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1740, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1741, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1742, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1743, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1744, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1745, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1746, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1747, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1748, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1749, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1750, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1751, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1752, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1753, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1754, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1755, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1756, 1, '文件上传', 1, NULL, '2020-10-19 14:53:52');
INSERT INTO `sys_logs` VALUES (1757, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1758, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1759, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1760, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1761, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1762, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1763, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1764, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1765, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1766, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1767, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1768, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1769, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1770, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1771, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1772, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1773, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1774, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1775, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1776, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1777, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1778, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1779, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1780, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1781, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1782, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1783, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1784, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1785, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1786, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1787, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1788, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1789, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1790, 1, '文件上传', 1, NULL, '2020-10-19 14:53:53');
INSERT INTO `sys_logs` VALUES (1791, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1792, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1793, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1794, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1795, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1796, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1797, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1798, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1799, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1800, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1801, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1802, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1803, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1804, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1805, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1806, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1807, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1808, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1809, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1810, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1811, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1812, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1813, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1814, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1815, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1816, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1817, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1818, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1819, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1820, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1821, 1, '文件上传', 1, NULL, '2020-10-19 14:53:54');
INSERT INTO `sys_logs` VALUES (1822, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1823, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1824, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1825, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1826, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1827, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1828, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1829, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1830, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1831, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1832, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1833, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1834, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1835, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1836, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1837, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1838, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1839, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1840, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1841, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1842, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1843, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1844, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1845, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1846, 1, '文件上传', 1, NULL, '2020-10-19 14:53:55');
INSERT INTO `sys_logs` VALUES (1847, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1848, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1849, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1850, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1851, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1852, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1853, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1854, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1855, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1856, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1857, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1858, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1859, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1860, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1861, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1862, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1863, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1864, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1865, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1866, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1867, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1868, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1869, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1870, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1871, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1872, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1873, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1874, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1875, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1876, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1877, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1878, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1879, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1880, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1881, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1882, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1883, 1, '文件上传', 1, NULL, '2020-10-19 14:53:56');
INSERT INTO `sys_logs` VALUES (1884, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1885, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1886, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1887, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1888, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1889, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1890, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1891, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1892, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1893, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1894, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1895, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1896, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1897, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1898, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1899, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1900, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1901, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1902, 1, '文件上传', 1, NULL, '2020-10-19 14:53:57');
INSERT INTO `sys_logs` VALUES (1903, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1904, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1905, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1906, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1907, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1908, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1909, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1910, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1911, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1912, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1913, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1914, 1, '文件上传', 1, NULL, '2020-10-19 14:53:58');
INSERT INTO `sys_logs` VALUES (1915, 1, '文件上传', 1, NULL, '2020-10-19 14:53:59');
INSERT INTO `sys_logs` VALUES (1916, 1, '文件上传', 1, NULL, '2020-10-19 14:53:59');
INSERT INTO `sys_logs` VALUES (1917, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1918, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1919, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1920, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1921, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1922, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1923, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1924, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1925, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1926, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1927, 1, '文件上传', 1, NULL, '2020-10-19 14:54:00');
INSERT INTO `sys_logs` VALUES (1928, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1929, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1930, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1931, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1932, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1933, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1934, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1935, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1936, 1, '文件上传', 1, NULL, '2020-10-19 14:54:01');
INSERT INTO `sys_logs` VALUES (1937, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1938, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1939, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1940, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1941, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1942, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1943, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1944, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1945, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1946, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1947, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1948, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1949, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1950, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1951, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1952, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1953, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1954, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1955, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1956, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1957, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1958, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1959, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1960, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1961, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1962, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1963, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1964, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1965, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1966, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1967, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1968, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1969, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1970, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1971, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1972, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1973, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1974, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1975, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1976, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1977, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1978, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1979, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1980, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1981, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1982, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1983, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1984, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1985, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1986, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1987, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1988, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1989, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1990, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1991, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1992, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1993, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1994, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1995, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1996, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1997, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1998, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (1999, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2000, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2001, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2002, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2003, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2004, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2005, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2006, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2007, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2008, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2009, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2010, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2011, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2012, 1, '文件上传', 1, NULL, '2020-10-19 14:54:02');
INSERT INTO `sys_logs` VALUES (2013, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2014, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2015, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2016, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2017, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2018, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2019, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2020, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2021, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2022, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2023, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2024, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2025, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2026, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2027, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2028, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2029, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2030, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2031, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2032, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2033, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2034, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2035, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2036, 1, '文件上传', 1, NULL, '2020-10-19 14:54:03');
INSERT INTO `sys_logs` VALUES (2037, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2038, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2039, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2040, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2041, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2042, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2043, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2044, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2045, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2046, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2047, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2048, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2049, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2050, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2051, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2052, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2053, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2054, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2055, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2056, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2057, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2058, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2059, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2060, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2061, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2062, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2063, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2064, 1, '文件上传', 1, NULL, '2020-10-19 14:54:04');
INSERT INTO `sys_logs` VALUES (2065, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2066, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2067, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2068, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2069, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2070, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2071, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2072, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2073, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2074, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2075, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2076, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2077, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2078, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2079, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2080, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2081, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2082, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2083, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2084, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2085, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2086, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2087, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2088, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2089, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2090, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2091, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2092, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2093, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2094, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2095, 1, '文件上传', 1, NULL, '2020-10-19 14:54:05');
INSERT INTO `sys_logs` VALUES (2096, 1, '文件上传', 1, NULL, '2020-10-19 14:54:06');
INSERT INTO `sys_logs` VALUES (2097, 1, '文件上传', 1, NULL, '2020-10-19 14:54:06');
INSERT INTO `sys_logs` VALUES (2098, 1, '文件上传', 1, NULL, '2020-10-19 14:54:06');
INSERT INTO `sys_logs` VALUES (2099, 1, '文件上传', 1, NULL, '2020-10-19 14:54:06');
INSERT INTO `sys_logs` VALUES (2100, 1, '文件上传', 1, NULL, '2020-10-19 14:54:06');
INSERT INTO `sys_logs` VALUES (2101, 1, '文件上传', 1, NULL, '2020-10-19 14:54:06');
INSERT INTO `sys_logs` VALUES (2102, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2103, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2104, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2105, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2106, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2107, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2108, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2109, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2110, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2111, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2112, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2113, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2114, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2115, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2116, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2117, 1, '文件上传', 1, NULL, '2020-10-19 14:54:07');
INSERT INTO `sys_logs` VALUES (2118, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2119, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2120, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2121, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2122, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2123, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2124, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2125, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2126, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2127, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2128, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2129, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2130, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2131, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2132, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2133, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2134, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2135, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2136, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2137, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2138, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2139, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2140, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2141, 1, '文件上传', 1, NULL, '2020-10-19 14:54:08');
INSERT INTO `sys_logs` VALUES (2142, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2143, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2144, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2145, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2146, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2147, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2148, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2149, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2150, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2151, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2152, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2153, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2154, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2155, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2156, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2157, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2158, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2159, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2160, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2161, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2162, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2163, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2164, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2165, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2166, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2167, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2168, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2169, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2170, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2171, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2172, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2173, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2174, 1, '文件上传', 1, NULL, '2020-10-19 14:54:09');
INSERT INTO `sys_logs` VALUES (2175, 1, '文件上传', 1, NULL, '2020-10-19 14:57:39');
INSERT INTO `sys_logs` VALUES (2176, 1, '文件上传', 1, NULL, '2020-10-19 14:59:06');
INSERT INTO `sys_logs` VALUES (2177, 1, '文件上传', 1, NULL, '2020-10-19 15:01:16');
INSERT INTO `sys_logs` VALUES (2178, 1, '登陆', 1, NULL, '2020-10-26 16:45:40');

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
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_permission` VALUES (47, 0, '大屏背景管理', 'fa-cloud', 'pages/background/backgroundList.html', 1, '', 100);

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
INSERT INTO `sys_role` VALUES (1, 'ADMIN', '管理员', '2017-05-01 13:25:39', '2020-10-19 11:42:20');
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
INSERT INTO `sys_role_permission` VALUES (1, 47);
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `t_token` VALUES ('03c8b3cb-b8dc-427e-b228-97d7982f071a', '{\"createTime\":1603683686680,\"expireTime\":1603690886685,\"id\":8,\"loginTime\":1603683686685,\"token\":\"03c8b3cb-b8dc-427e-b228-97d7982f071a\",\"updateTime\":1603683686680}', '2020-10-26 13:41:27', '2020-10-26 11:41:27', '2020-10-26 11:41:27');
INSERT INTO `t_token` VALUES ('066ed6f1-0eb3-4650-bf1a-35fe23986ab6', '{\"createTime\":1603683901587,\"expireTime\":1603691101599,\"id\":11,\"loginTime\":1603683901599,\"token\":\"066ed6f1-0eb3-4650-bf1a-35fe23986ab6\",\"updateTime\":1603683901587}', '2020-10-26 13:45:02', '2020-10-26 11:45:02', '2020-10-26 11:45:02');
INSERT INTO `t_token` VALUES ('0c392a65-b36d-4960-b0b9-5f78477f63a3', '{\"createTime\":1603683658715,\"expireTime\":1603690858720,\"id\":7,\"loginTime\":1603683658720,\"token\":\"0c392a65-b36d-4960-b0b9-5f78477f63a3\",\"updateTime\":1603683658715}', '2020-10-26 13:40:59', '2020-10-26 11:40:59', '2020-10-26 11:40:59');
INSERT INTO `t_token` VALUES ('0e118e62-9697-4914-b1a9-8679be2c050b', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683324298,\"expireTime\":1603690524304,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683324304,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"0e118e62-9697-4914-b1a9-8679be2c050b\",\"updateTime\":1603683324298}', '2020-10-26 13:35:24', '2020-10-26 11:35:24', '2020-10-26 11:35:24');
INSERT INTO `t_token` VALUES ('0fe54e12-3260-43aa-ad6f-b6dd6dff9395', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683854391,\"expireTime\":1603691054445,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683854445,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"0fe54e12-3260-43aa-ad6f-b6dd6dff9395\",\"updateTime\":1603683854391}', '2020-10-26 13:44:14', '2020-10-26 11:44:14', '2020-10-26 11:44:14');
INSERT INTO `t_token` VALUES ('176b4db7-37ee-4d07-8c90-fff77aa4893c', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"job:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"dict:add\"},{\"authority\":\"notice:query\"},{\"authority\":\"dict:query\"},{\"authority\":\"excel:show:datas\"},{\"authority\":\"dict:del\"},{\"authority\":\"sys:log:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"job:add\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:role:del\"},{\"authority\":\"notice:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"excel:down\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"mail:all:query\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"job:del\"},{\"authority\":\"notice:add\"},{\"authority\":\"mail:send\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1601983940261,\"id\":1,\"loginTime\":1601976740261,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1601976740194,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-eye\",\"href\":\"druid/index.html\",\"id\":19,\"name\":\"数据源监控\",\"parentId\":0,\"permission\":\"\",\"sort\":9,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-file-pdf-o\",\"href\":\"swagger-ui.html\",\"id\":20,\"name\":\"接口swagger\",\"parentId\":0,\"permission\":\"\",\"sort\":10,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-book\",\"href\":\"pages/notice/noticeList.html\",\"id\":22,\"name\":\"公告管理\",\"parentId\":0,\"permission\":\"\",\"sort\":12,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-reorder\",\"href\":\"pages/log/logList.html\",\"id\":26,\"name\":\"日志查询\",\"parentId\":0,\"permission\":\"sys:log:query\",\"sort\":13,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-envelope\",\"href\":\"pages/mail/mailList.html\",\"id\":27,\"name\":\"邮件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":14,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-tasks\",\"href\":\"pages/job/jobList.html\",\"id\":30,\"name\":\"定时任务管理\",\"parentId\":0,\"permission\":\"\",\"sort\":15,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-arrow-circle-down\",\"href\":\"pages/excel/sql.html\",\"id\":34,\"name\":\"excel导出\",\"parentId\":0,\"permission\":\"\",\"sort\":16,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-reddit\",\"href\":\"pages/dict/dictList.html\",\"id\":37,\"name\":\"字典管理\",\"parentId\":0,\"permission\":\"\",\"sort\":17,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":39,\"name\":\"新增\",\"parentId\":37,\"permission\":\"dict:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":29,\"name\":\"查询\",\"parentId\":27,\"permission\":\"mail:all:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":24,\"name\":\"添加\",\"parentId\":22,\"permission\":\"notice:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":28,\"name\":\"发送邮件\",\"parentId\":27,\"permission\":\"mail:send\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":38,\"name\":\"查询\",\"parentId\":37,\"permission\":\"dict:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":33,\"name\":\"删除\",\"parentId\":30,\"permission\":\"job:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":23,\"name\":\"查询\",\"parentId\":22,\"permission\":\"notice:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":32,\"name\":\"新增\",\"parentId\":30,\"permission\":\"job:add\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":36,\"name\":\"页面显示数据\",\"parentId\":34,\"permission\":\"excel:show:datas\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":31,\"name\":\"查询\",\"parentId\":30,\"permission\":\"job:query\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":40,\"name\":\"删除\",\"parentId\":37,\"permission\":\"dict:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":25,\"name\":\"删除\",\"parentId\":22,\"permission\":\"notice:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194},{\"createTime\":1601976740194,\"css\":\"\",\"href\":\"\",\"id\":35,\"name\":\"导出\",\"parentId\":34,\"permission\":\"excel:down\",\"sort\":100,\"type\":2,\"updateTime\":1601976740194}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"176b4db7-37ee-4d07-8c90-fff77aa4893c\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-06 19:32:20', '2020-10-06 17:32:20', '2020-10-06 17:32:20');
INSERT INTO `t_token` VALUES ('17c4592d-2e12-4ba4-a55b-05000429e554', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1603096050742,\"id\":1,\"loginTime\":1603088850742,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1603088850669,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850669,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850669,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850669,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850669,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850669,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850669,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1603088850669},{\"createTime\":1603088850670,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"fa-cloud\",\"href\":\"pages/background/backgroundList.html\",\"id\":47,\"name\":\"大屏背景管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603088850670},{\"createTime\":1603088850670,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603088850670},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671},{\"createTime\":1603088850671,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1603088850671}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"17c4592d-2e12-4ba4-a55b-05000429e554\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-19 16:27:31', '2020-10-19 14:27:31', '2020-10-19 14:27:31');
INSERT INTO `t_token` VALUES ('1c1bcf1a-6870-4802-95ba-bc4d3b92504d', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602674430629,\"id\":1,\"loginTime\":1602667230629,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602667230556,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602667230556},{\"createTime\":1602667230557,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230557,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230557,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230557,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230557,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230557,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230557,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602667230557},{\"createTime\":1602667230558,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602667230558},{\"createTime\":1602667230558,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602667230558},{\"createTime\":1602667230559,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602667230559},{\"createTime\":1602667230559,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602667230559},{\"createTime\":1602667230559,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602667230559},{\"createTime\":1602667230559,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602667230559},{\"createTime\":1602667230560,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602667230560},{\"createTime\":1602667230560,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602667230560},{\"createTime\":1602667230560,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602667230560},{\"createTime\":1602667230560,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602667230560}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"1c1bcf1a-6870-4802-95ba-bc4d3b92504d\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-14 19:20:31', '2020-10-14 17:20:31', '2020-10-14 17:20:31');
INSERT INTO `t_token` VALUES ('2424681e-b1cb-476c-b56f-83befa1a0721', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603693692680,\"expireTime\":1603700892710,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603693692710,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"2424681e-b1cb-476c-b56f-83befa1a0721\",\"updateTime\":1603693692680}', '2020-10-26 16:28:13', '2020-10-26 14:28:13', '2020-10-26 14:28:13');
INSERT INTO `t_token` VALUES ('442e9de8-49df-4c53-a156-fe60202b7094', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603684010003,\"expireTime\":1603691210033,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603684010033,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"442e9de8-49df-4c53-a156-fe60202b7094\",\"updateTime\":1603684010003}', '2020-10-26 13:46:50', '2020-10-26 11:46:50', '2020-10-26 11:46:50');
INSERT INTO `t_token` VALUES ('4635f5d4-735c-4555-a836-2572b90cacbf', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683686280,\"expireTime\":1603690886283,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683686283,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"4635f5d4-735c-4555-a836-2572b90cacbf\",\"updateTime\":1603683686280}', '2020-10-26 13:41:26', '2020-10-26 11:41:26', '2020-10-26 11:41:26');
INSERT INTO `t_token` VALUES ('4e32d882-c159-493e-91f7-9bb1a90aa924', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603684029202,\"expireTime\":1603691229205,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603684029205,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"4e32d882-c159-493e-91f7-9bb1a90aa924\",\"updateTime\":1603684029202}', '2020-10-26 13:47:09', '2020-10-26 11:47:09', '2020-10-26 11:47:09');
INSERT INTO `t_token` VALUES ('4e7983a6-b7ba-4b88-93c4-c57fc8735b49', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602325831578,\"id\":1,\"loginTime\":1602318631578,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602318631509,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509},{\"createTime\":1602318631509,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602318631509}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"4e7983a6-b7ba-4b88-93c4-c57fc8735b49\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-10 18:30:32', '2020-10-10 16:30:32', '2020-10-10 16:30:32');
INSERT INTO `t_token` VALUES ('5081805a-ba54-49c4-b80e-74de047444f9', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603693314885,\"expireTime\":1603700514888,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603693314888,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"5081805a-ba54-49c4-b80e-74de047444f9\",\"updateTime\":1603693314885}', '2020-10-26 16:21:55', '2020-10-26 14:21:55', '2020-10-26 14:21:55');
INSERT INTO `t_token` VALUES ('52bd899d-54db-4513-97c7-0c0d655d3d4a', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603682932391,\"expireTime\":1603690132422,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603682932422,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"52bd899d-54db-4513-97c7-0c0d655d3d4a\",\"updateTime\":1603682932391}', '2020-10-26 13:28:52', '2020-10-26 11:28:52', '2020-10-26 11:28:52');
INSERT INTO `t_token` VALUES ('5662c179-0dc9-469a-ada4-96ae6e3b1913', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603693364998,\"expireTime\":1603700565000,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603693365000,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"5662c179-0dc9-469a-ada4-96ae6e3b1913\",\"updateTime\":1603693364998}', '2020-10-26 16:22:45', '2020-10-26 14:22:45', '2020-10-26 14:22:45');
INSERT INTO `t_token` VALUES ('62f5de92-ad78-4e63-8a7b-9e00561bd546', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683897333,\"expireTime\":1603691097343,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683897343,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"62f5de92-ad78-4e63-8a7b-9e00561bd546\",\"updateTime\":1603683897333}', '2020-10-26 13:44:57', '2020-10-26 11:44:57', '2020-10-26 11:44:57');
INSERT INTO `t_token` VALUES ('65e1263d-639e-4d6a-8dfd-6c7a078e6be3', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603698062279,\"expireTime\":1603705262282,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603698062282,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"65e1263d-639e-4d6a-8dfd-6c7a078e6be3\",\"updateTime\":1603698062279}', '2020-10-26 17:41:02', '2020-10-26 15:41:02', '2020-10-26 15:41:02');
INSERT INTO `t_token` VALUES ('76cdfc6f-5f1d-4f1d-b85f-fbdd32d51334', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603693718589,\"expireTime\":1603700918592,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603693718592,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"76cdfc6f-5f1d-4f1d-b85f-fbdd32d51334\",\"updateTime\":1603693718589}', '2020-10-26 16:28:39', '2020-10-26 14:28:39', '2020-10-26 14:28:39');
INSERT INTO `t_token` VALUES ('78ed8739-4821-407c-909b-42216dd34124', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603681756302,\"expireTime\":1603688956331,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603681756331,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"78ed8739-4821-407c-909b-42216dd34124\",\"updateTime\":1603681756302}', '2020-10-26 13:09:16', '2020-10-26 11:09:16', '2020-10-26 11:09:16');
INSERT INTO `t_token` VALUES ('7e361fcb-cab2-40e0-b70e-74ad930ce3b7', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602733383811,\"id\":1,\"loginTime\":1602726183811,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602726183738,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602726183738},{\"createTime\":1602726183739,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602726183739},{\"createTime\":1602726183739,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602726183739},{\"createTime\":1602726183739,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602726183739},{\"createTime\":1602726183739,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602726183739},{\"createTime\":1602726183739,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602726183739},{\"createTime\":1602726183739,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602726183739},{\"createTime\":1602726183740,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602726183740},{\"createTime\":1602726183740,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602726183740},{\"createTime\":1602726183741,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602726183741},{\"createTime\":1602726183741,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602726183741},{\"createTime\":1602726183742,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602726183742},{\"createTime\":1602726183742,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602726183742},{\"createTime\":1602726183742,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602726183742},{\"createTime\":1602726183742,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602726183742},{\"createTime\":1602726183742,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602726183742},{\"createTime\":1602726183742,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602726183742},{\"createTime\":1602726183742,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602726183742}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"7e361fcb-cab2-40e0-b70e-74ad930ce3b7\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-15 11:43:04', '2020-10-15 09:43:04', '2020-10-15 09:43:04');
INSERT INTO `t_token` VALUES ('7ef94ff7-b130-41b6-bceb-96a990cdf283', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602492234212,\"id\":1,\"loginTime\":1602485034212,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602485034138,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602485034138},{\"createTime\":1602485034139,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034139,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034139},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034140,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034140},{\"createTime\":1602485034141,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602485034141},{\"createTime\":1602485034141,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034141},{\"createTime\":1602485034142,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602485034142},{\"createTime\":1602485034142,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602485034142},{\"createTime\":1602485034142,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602485034142}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"7ef94ff7-b130-41b6-bceb-96a990cdf283\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-12 16:43:54', '2020-10-12 14:43:54', '2020-10-12 14:43:54');
INSERT INTO `t_token` VALUES ('86bb460e-7246-411a-ae09-710a2042727b', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603682980939,\"expireTime\":1603690180950,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603682980950,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"86bb460e-7246-411a-ae09-710a2042727b\",\"updateTime\":1603682980939}', '2020-10-26 13:29:41', '2020-10-26 11:29:41', '2020-10-26 11:29:41');
INSERT INTO `t_token` VALUES ('8c0e53a9-d106-4636-893f-99b1eeb77103', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603697599188,\"expireTime\":1603704799193,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603697599193,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"8c0e53a9-d106-4636-893f-99b1eeb77103\",\"updateTime\":1603697599188}', '2020-10-26 17:33:19', '2020-10-26 15:33:19', '2020-10-26 15:33:19');
INSERT INTO `t_token` VALUES ('9b5f1e6a-803d-4918-bab1-d9f54c5a4da8', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"job:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"dict:add\"},{\"authority\":\"notice:query\"},{\"authority\":\"dict:del\"},{\"authority\":\"dict:query\"},{\"authority\":\"excel:show:datas\"},{\"authority\":\"sys:log:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"job:add\"},{\"authority\":\"sys:role:add\"},{\"authority\":\"sys:role:del\"},{\"authority\":\"notice:del\"},{\"authority\":\"excel:down\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"mail:all:query\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"job:del\"},{\"authority\":\"notice:add\"},{\"authority\":\"mail:send\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602245162849,\"id\":1,\"loginTime\":1602237962849,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602237962774,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962774,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602237962774},{\"createTime\":1602237962775,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-eye\",\"href\":\"druid/index.html\",\"id\":19,\"name\":\"数据源监控\",\"parentId\":0,\"permission\":\"\",\"sort\":9,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-file-pdf-o\",\"href\":\"swagger-ui.html\",\"id\":20,\"name\":\"接口swagger\",\"parentId\":0,\"permission\":\"\",\"sort\":10,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-book\",\"href\":\"pages/notice/noticeList.html\",\"id\":22,\"name\":\"公告管理\",\"parentId\":0,\"permission\":\"\",\"sort\":12,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-reorder\",\"href\":\"pages/log/logList.html\",\"id\":26,\"name\":\"日志查询\",\"parentId\":0,\"permission\":\"sys:log:query\",\"sort\":13,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-envelope\",\"href\":\"pages/mail/mailList.html\",\"id\":27,\"name\":\"邮件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":14,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962775,\"css\":\"fa-tasks\",\"href\":\"pages/job/jobList.html\",\"id\":30,\"name\":\"定时任务管理\",\"parentId\":0,\"permission\":\"\",\"sort\":15,\"type\":1,\"updateTime\":1602237962775},{\"createTime\":1602237962776,\"css\":\"fa-arrow-circle-down\",\"href\":\"pages/excel/sql.html\",\"id\":34,\"name\":\"excel导出\",\"parentId\":0,\"permission\":\"\",\"sort\":16,\"type\":1,\"updateTime\":1602237962776},{\"createTime\":1602237962776,\"css\":\"fa-reddit\",\"href\":\"pages/dict/dictList.html\",\"id\":37,\"name\":\"字典管理\",\"parentId\":0,\"permission\":\"\",\"sort\":17,\"type\":1,\"updateTime\":1602237962776},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":40,\"name\":\"删除\",\"parentId\":37,\"permission\":\"dict:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":35,\"name\":\"导出\",\"parentId\":34,\"permission\":\"excel:down\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":25,\"name\":\"删除\",\"parentId\":22,\"permission\":\"notice:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":29,\"name\":\"查询\",\"parentId\":27,\"permission\":\"mail:all:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":39,\"name\":\"新增\",\"parentId\":37,\"permission\":\"dict:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":24,\"name\":\"添加\",\"parentId\":22,\"permission\":\"notice:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":28,\"name\":\"发送邮件\",\"parentId\":27,\"permission\":\"mail:send\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":38,\"name\":\"查询\",\"parentId\":37,\"permission\":\"dict:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962777,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962777},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":33,\"name\":\"删除\",\"parentId\":30,\"permission\":\"job:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":23,\"name\":\"查询\",\"parentId\":22,\"permission\":\"notice:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":32,\"name\":\"新增\",\"parentId\":30,\"permission\":\"job:add\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":36,\"name\":\"页面显示数据\",\"parentId\":34,\"permission\":\"excel:show:datas\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":31,\"name\":\"查询\",\"parentId\":30,\"permission\":\"job:query\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778},{\"createTime\":1602237962778,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602237962778}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"9b5f1e6a-803d-4918-bab1-d9f54c5a4da8\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-09 20:06:03', '2020-10-09 18:06:03', '2020-10-09 18:06:03');
INSERT INTO `t_token` VALUES ('9b833983-3da1-4131-991f-fb9535b1afc1', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603681619362,\"expireTime\":1603688819395,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603681619395,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"9b833983-3da1-4131-991f-fb9535b1afc1\",\"updateTime\":1603681619362}', '2020-10-26 13:06:59', '2020-10-26 11:06:59', '2020-10-26 11:06:59');
INSERT INTO `t_token` VALUES ('a18f95bf-6931-481b-b038-468bd3396a1e', '{\"createTime\":1603683866793,\"expireTime\":1603691066799,\"id\":10,\"loginTime\":1603683866799,\"token\":\"a18f95bf-6931-481b-b038-468bd3396a1e\",\"updateTime\":1603683866793}', '2020-10-26 13:44:27', '2020-10-26 11:44:27', '2020-10-26 11:44:27');
INSERT INTO `t_token` VALUES ('abfa02e4-8346-4be5-bebb-abe178bcd203', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602328337373,\"id\":1,\"loginTime\":1602321137373,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602321137299,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602321137299},{\"createTime\":1602321137300,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137300,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602321137300},{\"createTime\":1602321137301,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137301,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321137301},{\"createTime\":1602321137302,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137302},{\"createTime\":1602321137302,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602321137302},{\"createTime\":1602321137302,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137302},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303},{\"createTime\":1602321137303,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602321137303}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"abfa02e4-8346-4be5-bebb-abe178bcd203\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-10 19:12:17', '2020-10-10 17:12:17', '2020-10-10 17:12:17');
INSERT INTO `t_token` VALUES ('aeb68d30-8fbc-4b16-8483-12189024b0e8', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1602586635889,\"id\":1,\"loginTime\":1602579435889,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1602579435886,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1602579435886},{\"createTime\":1602579435886,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1602579435886},{\"createTime\":1602579435888,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1602579435888},{\"createTime\":1602579435888,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1602579435888}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"aeb68d30-8fbc-4b16-8483-12189024b0e8\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-13 18:57:16', '2020-10-13 15:05:52', '2020-10-13 16:57:16');
INSERT INTO `t_token` VALUES ('b0516ecb-3f2c-4ded-9e24-5b6533e2a7d5', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683783077,\"expireTime\":1603690983105,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683783105,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"b0516ecb-3f2c-4ded-9e24-5b6533e2a7d5\",\"updateTime\":1603683783077}', '2020-10-26 13:43:03', '2020-10-26 11:43:03', '2020-10-26 11:43:03');
INSERT INTO `t_token` VALUES ('b4fce875-16bc-4c33-bce7-da811c4faa9d', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603706620610,\"expireTime\":1603713820661,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603706620661,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"b4fce875-16bc-4c33-bce7-da811c4faa9d\",\"updateTime\":1603706620610}', '2020-10-26 20:03:41', '2020-10-26 18:03:41', '2020-10-26 18:03:41');
INSERT INTO `t_token` VALUES ('c2042757-1c52-4bf4-a5d6-349bcd39c84d', '{\"createTime\":1603683326140,\"expireTime\":1603690526149,\"id\":4,\"loginTime\":1603683326149,\"token\":\"c2042757-1c52-4bf4-a5d6-349bcd39c84d\",\"updateTime\":1603683326140}', '2020-10-26 13:35:26', '2020-10-26 11:35:26', '2020-10-26 11:35:26');
INSERT INTO `t_token` VALUES ('c530ea69-38db-47b6-945b-e508bb7b4a5f', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683866482,\"expireTime\":1603691066488,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683866488,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"c530ea69-38db-47b6-945b-e508bb7b4a5f\",\"updateTime\":1603683866482}', '2020-10-26 13:44:26', '2020-10-26 11:44:26', '2020-10-26 11:44:26');
INSERT INTO `t_token` VALUES ('c8351827-c98d-4631-98c0-efa40e079301', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683658128,\"expireTime\":1603690858131,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683658131,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"c8351827-c98d-4631-98c0-efa40e079301\",\"updateTime\":1603683658128}', '2020-10-26 13:40:58', '2020-10-26 11:40:58', '2020-10-26 11:40:58');
INSERT INTO `t_token` VALUES ('cbfacb80-233e-4a5a-9d8e-230ec3c95706', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603698010111,\"expireTime\":1603705210141,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603698010141,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"cbfacb80-233e-4a5a-9d8e-230ec3c95706\",\"updateTime\":1603698010111}', '2020-10-26 17:40:10', '2020-10-26 15:40:10', '2020-10-26 15:40:10');
INSERT INTO `t_token` VALUES ('d350fda7-752b-4e1d-9b2f-f9fe2955f19f', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1603709140255,\"id\":1,\"loginTime\":1603701940255,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1603701940183,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1603701940183},{\"createTime\":1603701940183,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1603701940183},{\"createTime\":1603701940183,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1603701940183},{\"createTime\":1603701940183,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1603701940183},{\"createTime\":1603701940184,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-cloud\",\"href\":\"pages/background/backgroundList.html\",\"id\":47,\"name\":\"大屏背景管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1603701940184},{\"createTime\":1603701940184,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1603701940184},{\"createTime\":1603701940185,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185},{\"createTime\":1603701940185,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1603701940185}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"d350fda7-752b-4e1d-9b2f-f9fe2955f19f\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-26 18:45:40', '2020-10-26 16:45:40', '2020-10-26 16:45:40');
INSERT INTO `t_token` VALUES ('d4c481ce-c627-4429-8124-25af0f8e19e0', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683563451,\"expireTime\":1603690763454,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683563454,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"d4c481ce-c627-4429-8124-25af0f8e19e0\",\"updateTime\":1603683563451}', '2020-10-26 13:39:23', '2020-10-26 11:39:23', '2020-10-26 11:39:23');
INSERT INTO `t_token` VALUES ('dbe324de-6ccc-41c2-a4dd-f207b93e54a0', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603683606704,\"expireTime\":1603690806708,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603683606708,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"dbe324de-6ccc-41c2-a4dd-f207b93e54a0\",\"updateTime\":1603683606704}', '2020-10-26 13:40:07', '2020-10-26 11:40:07', '2020-10-26 11:40:07');
INSERT INTO `t_token` VALUES ('e3e9eb7f-0cd4-4833-85a9-f2af9cc008cd', '{\"createTime\":1603683607037,\"expireTime\":1603690807043,\"id\":6,\"loginTime\":1603683607043,\"token\":\"e3e9eb7f-0cd4-4833-85a9-f2af9cc008cd\",\"updateTime\":1603683607037}', '2020-10-26 13:40:07', '2020-10-26 11:40:07', '2020-10-26 11:40:07');
INSERT INTO `t_token` VALUES ('e97c48ad-b961-4140-9001-4ba7ea70d0f9', '{\"createTime\":1603683563798,\"expireTime\":1603690763809,\"id\":5,\"loginTime\":1603683563809,\"token\":\"e97c48ad-b961-4140-9001-4ba7ea70d0f9\",\"updateTime\":1603683563798}', '2020-10-26 13:39:24', '2020-10-26 11:39:24', '2020-10-26 11:39:24');
INSERT INTO `t_token` VALUES ('ed92c633-840f-4796-acf6-4e35cef5dd55', '{\"accountNonExpired\":true,\"accountNonLocked\":true,\"authorities\":[{\"authority\":\"sys:role:del\"},{\"authority\":\"sys:menu:del\"},{\"authority\":\"sys:user:password\"},{\"authority\":\"sys:user:query\"},{\"authority\":\"sys:menu:add\"},{\"authority\":\"sys:user:add\"},{\"authority\":\"sys:file:query\"},{\"authority\":\"generate:edit\"},{\"authority\":\"sys:menu:query\"},{\"authority\":\"paperdetails:query\"},{\"authority\":\"sys:role:query\"},{\"authority\":\"sys:file:del\"},{\"authority\":\"sys:role:add\"}],\"birthday\":899222400000,\"createTime\":1491808898000,\"credentialsNonExpired\":true,\"email\":\"\",\"enabled\":true,\"expireTime\":1603086202924,\"id\":1,\"loginTime\":1603079002924,\"nickname\":\"管理员\",\"password\":\"$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK\",\"permissions\":[{\"createTime\":1603079002853,\"css\":\"fa-users\",\"href\":\"\",\"id\":1,\"name\":\"用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":1,\"type\":1,\"updateTime\":1603079002853},{\"createTime\":1603079002854,\"css\":\"fa-user\",\"href\":\"pages/user/userList.html\",\"id\":2,\"name\":\"用户查询\",\"parentId\":1,\"permission\":\"\",\"sort\":2,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-pencil-square-o\",\"href\":\"pages/user/changePassword.html\",\"id\":6,\"name\":\"修改密码\",\"parentId\":0,\"permission\":\"sys:user:password\",\"sort\":4,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-gears\",\"href\":\"\",\"id\":7,\"name\":\"系统设置\",\"parentId\":0,\"permission\":\"\",\"sort\":5,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-cog\",\"href\":\"pages/menu/menuList.html\",\"id\":8,\"name\":\"菜单\",\"parentId\":7,\"permission\":\"\",\"sort\":6,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-user-secret\",\"href\":\"pages/role/roleList.html\",\"id\":12,\"name\":\"角色\",\"parentId\":7,\"permission\":\"\",\"sort\":7,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-folder-open\",\"href\":\"pages/file/fileList.html\",\"id\":16,\"name\":\"文件管理\",\"parentId\":0,\"permission\":\"\",\"sort\":8,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-wrench\",\"href\":\"pages/generate/edit.html\",\"id\":21,\"name\":\"代码生成\",\"parentId\":0,\"permission\":\"generate:edit\",\"sort\":11,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"\",\"href\":\"\",\"id\":15,\"name\":\"删除\",\"parentId\":12,\"permission\":\"sys:role:del\",\"sort\":100,\"type\":2,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-behance-square\",\"href\":\"pages/score/scoreList.html\",\"id\":46,\"name\":\"答题记录\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"\",\"href\":\"\",\"id\":10,\"name\":\"新增\",\"parentId\":8,\"permission\":\"sys:menu:add\",\"sort\":100,\"type\":2,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-trello\",\"href\":\"\",\"id\":41,\"name\":\"答题管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"\",\"href\":\"\",\"id\":4,\"name\":\"新增\",\"parentId\":2,\"permission\":\"sys:user:add\",\"sort\":100,\"type\":2,\"updateTime\":1603079002854},{\"createTime\":1603079002854,\"css\":\"fa-bomb\",\"href\":\"pages/wxbullet/wxBulletList.html\",\"id\":45,\"name\":\"弹幕管理\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603079002854},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":14,\"name\":\"新增\",\"parentId\":12,\"permission\":\"sys:role:add\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":9,\"name\":\"查询\",\"parentId\":8,\"permission\":\"sys:menu:query\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":3,\"name\":\"查询\",\"parentId\":2,\"permission\":\"sys:user:query\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"fa-qq\",\"href\":\"pages/wxuser/wxUserList.html\",\"id\":44,\"name\":\"微信用户管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":13,\"name\":\"查询\",\"parentId\":12,\"permission\":\"sys:role:query\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":18,\"name\":\"删除\",\"parentId\":16,\"permission\":\"sys:file:del\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"fa-behance-square\",\"href\":\"\",\"id\":43,\"name\":\"查询\",\"parentId\":42,\"permission\":\"paperdetails:query\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":17,\"name\":\"查询\",\"parentId\":16,\"permission\":\"sys:file:query\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"fa-cloud\",\"href\":\"pages/background/backgroundList.html\",\"id\":47,\"name\":\"大屏背景管理\",\"parentId\":0,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"\",\"href\":\"\",\"id\":11,\"name\":\"删除\",\"parentId\":8,\"permission\":\"sys:menu:del\",\"sort\":100,\"type\":2,\"updateTime\":1603079002855},{\"createTime\":1603079002855,\"css\":\"fa-cubes\",\"href\":\"pages/answer/paperdetailList.html\",\"id\":42,\"name\":\"试卷详细表\",\"parentId\":41,\"permission\":\"\",\"sort\":100,\"type\":1,\"updateTime\":1603079002855}],\"phone\":\"\",\"sex\":0,\"status\":1,\"telephone\":\"\",\"token\":\"ed92c633-840f-4796-acf6-4e35cef5dd55\",\"updateTime\":1499304019000,\"username\":\"admin\"}', '2020-10-19 13:43:23', '2020-10-19 11:43:23', '2020-10-19 11:43:23');
INSERT INTO `t_token` VALUES ('ee92d2eb-d29e-4bbb-810f-f8617af5867f', '{\"createTime\":1603683854794,\"expireTime\":1603691054801,\"id\":9,\"loginTime\":1603683854801,\"token\":\"ee92d2eb-d29e-4bbb-810f-f8617af5867f\",\"updateTime\":1603683854794}', '2020-10-26 13:44:15', '2020-10-26 11:44:15', '2020-10-26 11:44:15');
INSERT INTO `t_token` VALUES ('f813a254-dd15-4145-9040-69bd2971107d', '{\"city\":\"苏州\",\"country\":\"中国\",\"createTime\":1603698022066,\"expireTime\":1603705222070,\"headimgurl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132\",\"language\":\"zh_CN\",\"loginTime\":1603698022070,\"nickname\":\"我认真的\",\"openid\":\"oFBoj6nRQujMblPX47T--tek19KE\",\"privilege\":\"[]\",\"province\":\"江苏\",\"sex\":1,\"token\":\"f813a254-dd15-4145-9040-69bd2971107d\",\"updateTime\":1603698022066}', '2020-10-26 17:40:22', '2020-10-26 15:40:22', '2020-10-26 15:40:22');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '弹幕' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_bullet
-- ----------------------------
INSERT INTO `wx_bullet` VALUES (2, 1, '我爱黎明', '2020-10-14 10:14:36');
INSERT INTO `wx_bullet` VALUES (3, 2, '13232123', '2020-10-14 10:39:48');
INSERT INTO `wx_bullet` VALUES (4, 3, '4546546', '2020-10-14 10:39:51');
INSERT INTO `wx_bullet` VALUES (5, 2, '123213211', '2020-10-15 15:08:36');
INSERT INTO `wx_bullet` VALUES (6, NULL, NULL, '2020-10-19 11:08:18');

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
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_user
-- ----------------------------
INSERT INTO `wx_user` VALUES (1, '我认真的', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLvWr2sooB99D0a3G2yOO3k2SNZ1BPgKIhCT6Ax7gD0Sg7gpU3hz9sfIN9cmpPTz0Y2ic82TC35tzQ/132', 'zh_CN', '[]', 1, 'oFBoj6nRQujMblPX47T--tek19KE', '苏州', '江苏', '中国', NULL, NULL);
INSERT INTO `wx_user` VALUES (2, '雷哥', 'https://thirdwx.qlogo.cn/mmopen/vi_32/HMQoQAZ1IibXQD9P9bwicc6F8Vz55icSVXgRwbFrxYvzXLXJVBZ9yJjWOh9RwVWcsMxFPYPxKlO2BRW4mP2w61stg/132', '', '[]', 0, 'oFBoj6oHQBDpr3lfWy2w6eFsN8_0', '', '', '', NULL, NULL);
INSERT INTO `wx_user` VALUES (3, '笑哈哈', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJvVusaGiaHqNcL0hATPRJjJZXOSsBAMibvgRbXNlCZsPz2YEalR1ZlnssIcKyVOYhNk2H1o3KaZICw/132', 'zh_CN', '[]', 1, 'oFBoj6qPxtTcyva4W2floSrm2wFA', '海淀', '北京', '中国', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
