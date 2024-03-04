/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : a16_welcome_platform

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 04/03/2024 15:39:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_charging_table
-- ----------------------------
DROP TABLE IF EXISTS `ad_charging_table`;
CREATE TABLE `ad_charging_table`  (
  `record_id` int(11) NOT NULL COMMENT '记录ID',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  `ad_id` int(11) NULL DEFAULT NULL COMMENT '广告ID',
  `impressions` int(11) NULL DEFAULT NULL COMMENT '推送次数',
  `clicks` int(11) NULL DEFAULT NULL COMMENT '点击次数',
  `price_per_impression` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价（每次推送）',
  `total_cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '总费用',
  `payment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `merchant_id`(`merchant_id`) USING BTREE,
  INDEX `ad_id`(`ad_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for advertisements
-- ----------------------------
DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE `advertisements`  (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告ID' ,
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '广告内容',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告类型',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`ad_id`) USING BTREE,
  INDEX `merchant_id`(`merchant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for merchants
-- ----------------------------
DROP TABLE IF EXISTS `merchants`;
CREATE TABLE `merchants`  (
  `merchant_id` int(11) NOT NULL COMMENT '商家ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for promotion_plans
-- ----------------------------
DROP TABLE IF EXISTS `promotion_plans`;
CREATE TABLE `promotion_plans`  (
  `plan_id` int(11) NOT NULL COMMENT '计划ID',
  `ad_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '广告类型',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '推广开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '推广结束时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for promotion_restrictions
-- ----------------------------
DROP TABLE IF EXISTS `promotion_restrictions`;
CREATE TABLE `promotion_restrictions`  (
  `restriction_id` int(11) NOT NULL COMMENT '限制ID',
  `college_id` int(11) NULL DEFAULT NULL COMMENT '学院ID',
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源地',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `plan_id` int(11) NULL DEFAULT NULL COMMENT '计划ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`restriction_id`) USING BTREE,
  INDEX `plan_id`(`plan_id`) USING BTREE,
  INDEX `college_id`(`college_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
