/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.88.11
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.88.11:3306
 Source Schema         : dyf_user

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 06/11/2023 21:05:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` bigint(20) NOT NULL COMMENT 'ID',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像图片路径',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态 1 正常 0 无效',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '0 男            1 女            2 未知',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_fan
-- ----------------------------
DROP TABLE IF EXISTS `user_fan`;
CREATE TABLE `user_fan`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `fans_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '粉丝ID',
  `fans_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '粉丝昵称',
  `level` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '粉丝忠实度\r\n            0 正常\r\n            1 潜力股\r\n            2 勇士\r\n            3 铁杆\r\n            4 老铁',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `is_display` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否可见我动态',
  `is_shield_comment` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否屏蔽评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'APP用户粉丝信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS `user_follow`;
CREATE TABLE `user_follow`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `follow_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '关注作者ID',
  `follow_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '粉丝昵称',
  `level` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '关注度\r\n            0 偶尔感兴趣\r\n            1 一般\r\n            2 经常\r\n            3 高度',
  `is_notice` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否动态通知',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'APP用户关注信息表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
