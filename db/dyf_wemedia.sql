/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.88.11
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.88.11:3306
 Source Schema         : dyf_wemedia

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 06/11/2023 21:05:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wm_news
-- ----------------------------
DROP TABLE IF EXISTS `wm_news`;
CREATE TABLE `wm_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '自媒体用户ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `submited_time` datetime NULL DEFAULT NULL COMMENT '提交时间',
  `status` tinyint(2) UNSIGNED NULL DEFAULT NULL COMMENT '当前状态\r\n            0 草稿\r\n            1 提交（待审核）\r\n            2 审核失败\r\n            3 人工审核\r\n            4 人工审核通过\r\n            8 审核通过（待发布）\r\n            9 已发布',
  `publish_time` datetime NULL DEFAULT NULL COMMENT '定时发布时间，不定时则为空',
  `reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '拒绝理由',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '视频链接',
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '封面',
  `enable` tinyint(1) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6244 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体图文内容信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for wm_news_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_statistics`;
CREATE TABLE `wm_news_statistics`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '主账号ID',
  `play_count` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '阅读量',
  `comment` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '评论量',
  `collection` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '收藏量',
  `forward` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '转发量',
  `likes` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '点赞量',
  `unlikes` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '不喜欢',
  `created_time` date NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_user_id_time`(`user_id`, `created_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '自媒体图文数据统计表' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
