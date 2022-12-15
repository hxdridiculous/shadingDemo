/*
 Navicat Premium Data Transfer

 Source Server         : locl
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : local

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 15/12/2022 16:51:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for prd_product_introduction_0
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_0`;
CREATE TABLE `prd_product_introduction_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_0
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_0` VALUES (1, 'P11212400', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 11:58:10', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (2, 'P32', 0, 0, 'P32', 'P32', '2022-12-15 13:47:51', '2022-12-15 13:47:51', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (3, 'P0', 0, 0, 'P0', 'P0', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (4, 'P16', 0, 0, 'P16', 'P16', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (5, 'P32', 0, 0, 'P32', 'P32', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (6, 'P48', 0, 0, 'P48', 'P48', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (7, 'P64', 0, 0, 'P64', 'P64', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (8, 'P80', 0, 0, 'P80', 'P80', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (9, 'P96', 0, 0, 'P96', 'P96', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (10, 'P112', 0, 0, 'P112', 'P112', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (11, 'P128', 0, 0, 'P128', 'P128', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (12, 'P144', 0, 0, 'P144', 'P144', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (13, 'P160', 0, 0, 'P160', 'P160', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (14, 'P176', 0, 0, 'P176', 'P176', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (15, 'P192', 0, 0, 'P192', 'P192', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_0` VALUES (16, 'P208', 0, 0, 'P208', 'P208', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_1
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_1`;
CREATE TABLE `prd_product_introduction_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_1
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_1` VALUES (1, 'P11212401', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 11:58:20', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (2, 'P1', 0, 0, 'P1', 'P1', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (3, 'P17', 0, 0, 'P17', 'P17', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (4, 'P33', 0, 0, 'P33', 'P33', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (5, 'P49', 0, 0, 'P49', 'P49', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (6, 'P65', 0, 0, 'P65', 'P65', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (7, 'P81', 0, 0, 'P81', 'P81', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (8, 'P97', 0, 0, 'P97', 'P97', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (9, 'P113', 0, 0, 'P113', 'P113', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (10, 'P129', 0, 0, 'P129', 'P129', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (11, 'P145', 0, 0, 'P145', 'P145', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (12, 'P161', 0, 0, 'P161', 'P161', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (13, 'P177', 0, 0, 'P177', 'P177', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (14, 'P193', 0, 0, 'P193', 'P193', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_1` VALUES (15, 'P209', 0, 0, 'P209', 'P209', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_10
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_10`;
CREATE TABLE `prd_product_introduction_10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_10
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_10` VALUES (1, 'P11212410', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 11:58:29', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (2, 'P10', 0, 0, 'P10', 'P10', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (3, 'P26', 0, 0, 'P26', 'P26', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (4, 'P42', 0, 0, 'P42', 'P42', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (5, 'P58', 0, 0, 'P58', 'P58', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (6, 'P74', 0, 0, 'P74', 'P74', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (7, 'P90', 0, 0, 'P90', 'P90', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (8, 'P106', 0, 0, 'P106', 'P106', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (9, 'P122', 0, 0, 'P122', 'P122', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (10, 'P138', 0, 0, 'P138', 'P138', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (11, 'P154', 0, 0, 'P154', 'P154', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (12, 'P170', 0, 0, 'P170', 'P170', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (13, 'P186', 0, 0, 'P186', 'P186', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (14, 'P202', 0, 0, 'P202', 'P202', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_10` VALUES (15, 'P218', 0, 0, 'P218', 'P218', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_11
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_11`;
CREATE TABLE `prd_product_introduction_11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_11
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_11` VALUES (1, 'P11212411', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:09:32', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (2, 'P11', 0, 0, 'P11', 'P11', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (3, 'P27', 0, 0, 'P27', 'P27', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (4, 'P43', 0, 0, 'P43', 'P43', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (5, 'P59', 0, 0, 'P59', 'P59', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (6, 'P75', 0, 0, 'P75', 'P75', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (7, 'P91', 0, 0, 'P91', 'P91', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (8, 'P107', 0, 0, 'P107', 'P107', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (9, 'P123', 0, 0, 'P123', 'P123', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (10, 'P139', 0, 0, 'P139', 'P139', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (11, 'P155', 0, 0, 'P155', 'P155', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (12, 'P171', 0, 0, 'P171', 'P171', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (13, 'P187', 0, 0, 'P187', 'P187', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (14, 'P203', 0, 0, 'P203', 'P203', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_11` VALUES (15, 'P219', 0, 0, 'P219', 'P219', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_12
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_12`;
CREATE TABLE `prd_product_introduction_12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_12
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_12` VALUES (1, 'P11212412', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:09:29', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (2, 'P12', 0, 0, 'P12', 'P12', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (3, 'P28', 0, 0, 'P28', 'P28', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (4, 'P44', 0, 0, 'P44', 'P44', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (5, 'P60', 0, 0, 'P60', 'P60', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (6, 'P76', 0, 0, 'P76', 'P76', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (7, 'P92', 0, 0, 'P92', 'P92', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (8, 'P108', 0, 0, 'P108', 'P108', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (9, 'P124', 0, 0, 'P124', 'P124', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (10, 'P140', 0, 0, 'P140', 'P140', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (11, 'P156', 0, 0, 'P156', 'P156', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (12, 'P172', 0, 0, 'P172', 'P172', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (13, 'P188', 0, 0, 'P188', 'P188', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_12` VALUES (14, 'P204', 0, 0, 'P204', 'P204', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_13
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_13`;
CREATE TABLE `prd_product_introduction_13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_13
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_13` VALUES (1, 'P11212413', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:09:40', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (2, 'P13', 0, 0, 'P13', 'P13', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (3, 'P29', 0, 0, 'P29', 'P29', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (4, 'P45', 0, 0, 'P45', 'P45', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (5, 'P61', 0, 0, 'P61', 'P61', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (6, 'P77', 0, 0, 'P77', 'P77', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (7, 'P93', 0, 0, 'P93', 'P93', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (8, 'P109', 0, 0, 'P109', 'P109', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (9, 'P125', 0, 0, 'P125', 'P125', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (10, 'P141', 0, 0, 'P141', 'P141', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (11, 'P157', 0, 0, 'P157', 'P157', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (12, 'P173', 0, 0, 'P173', 'P173', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (13, 'P189', 0, 0, 'P189', 'P189', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_13` VALUES (14, 'P205', 0, 0, 'P205', 'P205', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_14
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_14`;
CREATE TABLE `prd_product_introduction_14` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_14
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_14` VALUES (1, 'P11212414', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:09:47', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (2, 'P14', 0, 0, 'P14', 'P14', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (3, 'P30', 0, 0, 'P30', 'P30', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (4, 'P46', 0, 0, 'P46', 'P46', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (5, 'P62', 0, 0, 'P62', 'P62', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (6, 'P78', 0, 0, 'P78', 'P78', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (7, 'P94', 0, 0, 'P94', 'P94', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (8, 'P110', 0, 0, 'P110', 'P110', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (9, 'P126', 0, 0, 'P126', 'P126', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (10, 'P142', 0, 0, 'P142', 'P142', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (11, 'P158', 0, 0, 'P158', 'P158', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (12, 'P174', 0, 0, 'P174', 'P174', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (13, 'P190', 0, 0, 'P190', 'P190', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_14` VALUES (14, 'P206', 0, 0, 'P206', 'P206', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_15
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_15`;
CREATE TABLE `prd_product_introduction_15` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11212429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_15
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_15` VALUES (1, 'P11212415', 0, 0, '213123', '15', '2022-12-15 09:24:46', '2022-12-15 12:10:08', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (213123, 'P11212431', 0, 0, '213123', '15', '2022-12-15 09:24:46', '2022-12-15 12:14:44', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212415, 'P11212415', 0, 0, '213123', '15', '2022-12-15 09:24:46', '2022-12-15 12:09:55', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212416, 'P15', 0, 0, 'P15', 'P15', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212417, 'P31', 0, 0, 'P31', 'P31', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212418, 'P47', 0, 0, 'P47', 'P47', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212419, 'P63', 0, 0, 'P63', 'P63', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212420, 'P79', 0, 0, 'P79', 'P79', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212421, 'P95', 0, 0, 'P95', 'P95', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212422, 'P111', 0, 0, 'P111', 'P111', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212423, 'P127', 0, 0, 'P127', 'P127', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212424, 'P143', 0, 0, 'P143', 'P143', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212425, 'P159', 0, 0, 'P159', 'P159', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212426, 'P175', 0, 0, 'P175', 'P175', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212427, 'P191', 0, 0, 'P191', 'P191', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_15` VALUES (11212428, 'P207', 0, 0, 'P207', 'P207', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_2
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_2`;
CREATE TABLE `prd_product_introduction_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_2
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_2` VALUES (1, 'P11212402', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:15', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (2, 'P2', 0, 0, 'P2', 'P2', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (3, 'P18', 0, 0, 'P18', 'P18', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (4, 'P34', 0, 0, 'P34', 'P34', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (5, 'P50', 0, 0, 'P50', 'P50', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (6, 'P66', 0, 0, 'P66', 'P66', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (7, 'P82', 0, 0, 'P82', 'P82', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (8, 'P98', 0, 0, 'P98', 'P98', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (9, 'P114', 0, 0, 'P114', 'P114', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (10, 'P130', 0, 0, 'P130', 'P130', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (11, 'P146', 0, 0, 'P146', 'P146', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (12, 'P162', 0, 0, 'P162', 'P162', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (13, 'P178', 0, 0, 'P178', 'P178', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (14, 'P194', 0, 0, 'P194', 'P194', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_2` VALUES (15, 'P210', 0, 0, 'P210', 'P210', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_3
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_3`;
CREATE TABLE `prd_product_introduction_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_3
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_3` VALUES (1, 'P11212403', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:22', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (2, 'P3', 0, 0, 'P3', 'P3', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (3, 'P19', 0, 0, 'P19', 'P19', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (4, 'P35', 0, 0, 'P35', 'P35', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (5, 'P51', 0, 0, 'P51', 'P51', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (6, 'P67', 0, 0, 'P67', 'P67', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (7, 'P83', 0, 0, 'P83', 'P83', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (8, 'P99', 0, 0, 'P99', 'P99', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (9, 'P115', 0, 0, 'P115', 'P115', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (10, 'P131', 0, 0, 'P131', 'P131', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (11, 'P147', 0, 0, 'P147', 'P147', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (12, 'P163', 0, 0, 'P163', 'P163', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (13, 'P179', 0, 0, 'P179', 'P179', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (14, 'P195', 0, 0, 'P195', 'P195', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_3` VALUES (15, 'P211', 0, 0, 'P211', 'P211', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_4
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_4`;
CREATE TABLE `prd_product_introduction_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_4
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_4` VALUES (1, 'P11212404', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:28', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (2, 'P4', 0, 0, 'P4', 'P4', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (3, 'P20', 0, 0, 'P20', 'P20', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (4, 'P36', 0, 0, 'P36', 'P36', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (5, 'P52', 0, 0, 'P52', 'P52', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (6, 'P68', 0, 0, 'P68', 'P68', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (7, 'P84', 0, 0, 'P84', 'P84', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (8, 'P100', 0, 0, 'P100', 'P100', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (9, 'P116', 0, 0, 'P116', 'P116', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (10, 'P132', 0, 0, 'P132', 'P132', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (11, 'P148', 0, 0, 'P148', 'P148', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (12, 'P164', 0, 0, 'P164', 'P164', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (13, 'P180', 0, 0, 'P180', 'P180', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (14, 'P196', 0, 0, 'P196', 'P196', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_4` VALUES (15, 'P212', 0, 0, 'P212', 'P212', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_5
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_5`;
CREATE TABLE `prd_product_introduction_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_5
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_5` VALUES (1, 'P11212405', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:33', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (2, 'P5', 0, 0, 'P5', 'P5', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (3, 'P21', 0, 0, 'P21', 'P21', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (4, 'P37', 0, 0, 'P37', 'P37', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (5, 'P53', 0, 0, 'P53', 'P53', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (6, 'P69', 0, 0, 'P69', 'P69', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (7, 'P85', 0, 0, 'P85', 'P85', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (8, 'P101', 0, 0, 'P101', 'P101', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (9, 'P117', 0, 0, 'P117', 'P117', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (10, 'P133', 0, 0, 'P133', 'P133', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (11, 'P149', 0, 0, 'P149', 'P149', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (12, 'P165', 0, 0, 'P165', 'P165', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (13, 'P181', 0, 0, 'P181', 'P181', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (14, 'P197', 0, 0, 'P197', 'P197', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_5` VALUES (15, 'P213', 0, 0, 'P213', 'P213', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_6
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_6`;
CREATE TABLE `prd_product_introduction_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_6
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_6` VALUES (1, 'P11212406', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:39', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (2, 'P6', 0, 0, 'P6', 'P6', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (3, 'P22', 0, 0, 'P22', 'P22', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (4, 'P38', 0, 0, 'P38', 'P38', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (5, 'P54', 0, 0, 'P54', 'P54', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (6, 'P70', 0, 0, 'P70', 'P70', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (7, 'P86', 0, 0, 'P86', 'P86', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (8, 'P102', 0, 0, 'P102', 'P102', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (9, 'P118', 0, 0, 'P118', 'P118', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (10, 'P134', 0, 0, 'P134', 'P134', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (11, 'P150', 0, 0, 'P150', 'P150', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (12, 'P166', 0, 0, 'P166', 'P166', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (13, 'P182', 0, 0, 'P182', 'P182', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (14, 'P198', 0, 0, 'P198', 'P198', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_6` VALUES (15, 'P214', 0, 0, 'P214', 'P214', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_7
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_7`;
CREATE TABLE `prd_product_introduction_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_7
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_7` VALUES (1, 'P11212407', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:46', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (2, 'P7', 0, 0, 'P7', 'P7', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (3, 'P23', 0, 0, 'P23', 'P23', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (4, 'P39', 0, 0, 'P39', 'P39', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (5, 'P55', 0, 0, 'P55', 'P55', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (6, 'P71', 0, 0, 'P71', 'P71', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (7, 'P87', 0, 0, 'P87', 'P87', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (8, 'P103', 0, 0, 'P103', 'P103', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (9, 'P119', 0, 0, 'P119', 'P119', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (10, 'P135', 0, 0, 'P135', 'P135', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (11, 'P151', 0, 0, 'P151', 'P151', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (12, 'P167', 0, 0, 'P167', 'P167', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (13, 'P183', 0, 0, 'P183', 'P183', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (14, 'P199', 0, 0, 'P199', 'P199', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_7` VALUES (15, 'P215', 0, 0, 'P215', 'P215', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_8
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_8`;
CREATE TABLE `prd_product_introduction_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_8
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_8` VALUES (1, 'P11212408', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:52', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (2, 'P8', 0, 0, 'P8', 'P8', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (3, 'P24', 0, 0, 'P24', 'P24', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (4, 'P40', 0, 0, 'P40', 'P40', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (5, 'P56', 0, 0, 'P56', 'P56', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (6, 'P72', 0, 0, 'P72', 'P72', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (7, 'P88', 0, 0, 'P88', 'P88', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (8, 'P104', 0, 0, 'P104', 'P104', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (9, 'P120', 0, 0, 'P120', 'P120', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (10, 'P136', 0, 0, 'P136', 'P136', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (11, 'P152', 0, 0, 'P152', 'P152', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (12, 'P168', 0, 0, 'P168', 'P168', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (13, 'P184', 0, 0, 'P184', 'P184', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (14, 'P200', 0, 0, 'P200', 'P200', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_8` VALUES (15, 'P216', 0, 0, 'P216', 'P216', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for prd_product_introduction_9
-- ----------------------------
DROP TABLE IF EXISTS `prd_product_introduction_9`;
CREATE TABLE `prd_product_introduction_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '产品ID',
  `has_pc_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有PC详情图，0=没有；1=有',
  `has_mobile_img` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有移动端详情图，0=没有；1=有',
  `mobile_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） 移动版',
  `pc_html` text COLLATE utf8mb4_unicode_ci COMMENT '产品介绍内容（HTML） PC版',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品详情介绍，分表策略：表后缀idx = (product_id / 16)取余';

-- ----------------------------
-- Records of prd_product_introduction_9
-- ----------------------------
BEGIN;
INSERT INTO `prd_product_introduction_9` VALUES (1, 'P11212409', 0, 0, '213123', '3123123', '2022-12-15 09:24:46', '2022-12-15 12:10:58', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (2, 'P9', 0, 0, 'P9', 'P9', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (3, 'P25', 0, 0, 'P25', 'P25', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (4, 'P41', 0, 0, 'P41', 'P41', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (5, 'P57', 0, 0, 'P57', 'P57', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (6, 'P73', 0, 0, 'P73', 'P73', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (7, 'P89', 0, 0, 'P89', 'P89', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (8, 'P105', 0, 0, 'P105', 'P105', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (9, 'P121', 0, 0, 'P121', 'P121', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (10, 'P137', 0, 0, 'P137', 'P137', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (11, 'P153', 0, 0, 'P153', 'P153', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (12, 'P169', 0, 0, 'P169', 'P169', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (13, 'P185', 0, 0, 'P185', 'P185', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (14, 'P201', 0, 0, 'P201', 'P201', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
INSERT INTO `prd_product_introduction_9` VALUES (15, 'P217', 0, 0, 'P217', 'P217', '2022-12-15 13:52:05', '2022-12-15 13:52:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '1', 'P1');
INSERT INTO `user` VALUES (2, '1', 'P2');
INSERT INTO `user` VALUES (3, '4', 'P3');
INSERT INTO `user` VALUES (4, '4', 'P4');
INSERT INTO `user` VALUES (5, '5', 'P5');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
