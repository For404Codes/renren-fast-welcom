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

 Date: 02/03/2024 15:10:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;



-- ----------------------------
-- Table structure for points
-- ----------------------------
DROP TABLE IF EXISTS `points`;
CREATE TABLE `points`  (
  `record_id` int(11) NOT NULL COMMENT '记录ID',
  `student_id` int(11) NULL DEFAULT NULL COMMENT '学生ID',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务ID',
  `completion_status` int(11) NULL DEFAULT NULL COMMENT '完成状态',
  `points_earned` int(11) NULL DEFAULT NULL COMMENT '获得的积分',
  `record_time` datetime(0) NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `created_user`(`created_user`) USING BTREE,
  INDEX `updated_user`(`updated_user`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student_tasks
-- ----------------------------
DROP TABLE IF EXISTS `student_tasks`;
CREATE TABLE `student_tasks`  (
  `record_id` int(11) NOT NULL COMMENT '记录ID',
  `student_id` int(11) NULL DEFAULT NULL COMMENT '学生ID',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务ID',
  `completion_status` int(11) NULL DEFAULT NULL COMMENT '完成状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `created_user`(`created_user`) USING BTREE,
  INDEX `updated_user`(`updated_user`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生任务关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sub_tasks
-- ----------------------------
DROP TABLE IF EXISTS `sub_tasks`;
CREATE TABLE `sub_tasks`  (
  `sub_task_id` int(11) NOT NULL COMMENT '子任务ID',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '父任务ID',
  `sub_task_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子任务名称',
  `sub_task_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '子任务描述',
  `sub_task_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子任务类型',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `level` int(11) NULL DEFAULT NULL COMMENT '任务等级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`sub_task_id`) USING BTREE,
  INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `created_user`(`created_user`) USING BTREE,
  INDEX `updated_user`(`updated_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '子任务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`  (
  `task_id` int(11) NOT NULL COMMENT '任务ID',
  `task_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `task_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任务描述',
  `task_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类型',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`task_id`) USING BTREE,
  INDEX `created_user`(`created_user`) USING BTREE,
  INDEX `updated_user`(`updated_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务表' ROW_FORMAT = Dynamic;

