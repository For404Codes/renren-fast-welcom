
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for colleges
-- ----------------------------
DROP TABLE IF EXISTS `colleges`;
CREATE TABLE `colleges`  (
  `college_id` int(11) NOT NULL COMMENT '学院ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院名',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院简介',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`college_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for user_attributes
-- ----------------------------
DROP TABLE IF EXISTS `user_attributes`;
CREATE TABLE `user_attributes`  (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性表ID',
  `strength` int(11) NULL DEFAULT 0 COMMENT '力量属性',
  `agility` int(11) NULL DEFAULT 0 COMMENT '敏捷属性',
  `intelligence` int(11) NULL DEFAULT 0 COMMENT '智力属性',
  `emp` int(11) NULL DEFAULT 0 COMMENT '经验值',
  `grade` int(11) NULL DEFAULT 1 COMMENT '等级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`attribute_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID号',
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `attribute_id` int(11) NULL DEFAULT NULL COMMENT '对应属性表ID',
  `student_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `source` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生源地',
  `id_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `college_id` int(11) NULL DEFAULT NULL COMMENT '学院ID',
  `preferences` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键字设置',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_user` int(11) NULL DEFAULT NULL COMMENT '创建者用户ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_user` int(11) NULL DEFAULT NULL COMMENT '更新者用户ID',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除（1是，0否）',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `college_id`(`college_id`) USING BTREE,
  INDEX `attribute_id`(`attribute_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
