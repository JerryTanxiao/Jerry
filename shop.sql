/*
Navicat MySQL Data Transfer

Source Server         : owen
Source Server Version : 50717
Source Host           : 192.168.0.237:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-21 17:37:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_level` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `admin_username` varchar(255) DEFAULT NULL,
  `admin_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `t_adminlog`
-- ----------------------------
DROP TABLE IF EXISTS `t_adminlog`;
CREATE TABLE `t_adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `operation` varchar(2048) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adminlog
-- ----------------------------
INSERT INTO `t_adminlog` VALUES ('1', 'tom', '2018-06-26 15:51:47', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('2', 'tom', '2018-06-26 15:52:45', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('3', 'tom', '2018-06-26 15:53:11', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('4', 'tom', '2018-06-26 15:53:42', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('5', 'tom', '2018-06-26 15:54:19', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('6', 'tom', '2018-06-26 15:54:39', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('7', 'tom', '2018-06-26 15:55:49', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('8', 'tom', '2018-06-26 15:56:47', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('9', 'tom', '2018-06-26 15:57:10', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('10', 'tom', '2018-06-26 15:58:24', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('11', 'tom', '2018-06-26 15:59:26', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('12', 'tom', '2018-06-26 15:59:35', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('13', 'tom', '2018-06-26 15:59:36', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('14', 'tom', '2018-06-26 15:59:48', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('15', 'tom', '2018-06-26 16:00:44', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('16', 'tom', '2018-06-26 16:03:51', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('17', 'tom', '2018-06-26 16:04:37', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('18', 'tom', '2018-06-26 16:06:30', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('19', 'tom', '2018-06-26 16:07:47', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('20', 'tom', '2018-06-26 16:08:51', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('21', 'tom', '2018-06-26 16:09:59', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('22', 'tom', '2018-06-26 16:10:28', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('23', 'tom', '2018-06-26 16:10:48', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('24', 'tom', '2018-06-26 16:13:46', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('25', 'tom', '2018-06-26 16:14:26', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('26', 'tom', '2018-06-26 16:15:35', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('27', 'tom', '2018-06-26 16:19:35', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('28', 'tom', '2018-06-26 16:19:59', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('29', 'tom', '2018-06-26 16:21:45', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('30', 'tom', '2018-06-26 16:21:57', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('31', 'tom', '2018-06-26 16:22:18', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('32', 'tom', '2018-06-26 16:23:22', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('33', 'tom', '2018-06-26 16:23:31', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('34', 'tom', '2018-06-26 16:31:14', '192.168.8.127', '通过com.Shop.service.IGoodsService.getpagegoods()方法执行了查询操作，方法返回类型class com.Shop.util.PageResult', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('35', 'tom', '2018-06-26 16:31:14', '192.168.8.127', '通过com.Shop.service.IGoodsService.getpagegoods()方法执行了查询操作，方法返回类型class com.Shop.util.PageResult', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('36', 'tom', '2018-06-26 16:32:04', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('37', 'tom', '2018-06-26 16:32:11', '192.168.8.127', '通过com.Shop.service.IGoodsService.getpagegoods()方法执行了查询操作，方法返回类型class com.Shop.util.PageResult', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('38', 'tom', '2018-06-26 16:32:14', '192.168.8.127', '通过com.Shop.service.IGoodsService.getgoodsbyid()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('39', 'tom', '2018-06-26 16:32:21', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('40', 'tom', '2018-06-26 16:42:47', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('41', 'tom', '2018-06-26 16:51:36', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('42', 'tom', '2018-06-26 16:51:47', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('43', 'tom', '2018-06-26 16:52:31', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('44', 'tom', '2018-06-26 16:52:51', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('45', 'tom', '2018-06-26 16:53:19', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('46', 'tom', '2018-06-26 16:55:31', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('47', 'tom', '2018-06-26 16:57:49', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('48', 'tom', '2018-06-26 16:58:18', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('49', 'tom', '2018-06-26 16:59:09', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('50', 'tom', '2018-06-26 17:06:01', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('51', 'tom', '2018-06-26 17:06:31', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('52', 'tom', '2018-06-26 17:06:45', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('53', 'tom', '2018-06-26 17:07:53', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('54', 'tom', '2018-06-26 17:09:15', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('55', 'tom', '2018-06-26 17:09:58', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('56', 'tom', '2018-06-26 17:10:20', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('57', 'tom', '2018-06-26 17:47:17', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('58', 'tom', '2018-06-26 17:49:59', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('59', 'tom', '2018-06-26 17:50:31', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('60', 'tom', '2018-06-26 17:50:56', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('61', 'tom', '2018-06-26 17:51:16', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('62', 'tom', '2018-06-26 17:51:34', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('63', 'tom', '2018-06-26 17:52:42', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('64', 'tom', '2018-06-26 17:52:47', '192.168.8.137', '通过com.Shop.service.IGoodsService.getgoodsbyid()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('65', 'tom', '2018-06-26 17:52:49', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('66', 'tom', '2018-06-26 17:54:41', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('67', 'tom', '2018-06-26 17:57:21', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('68', 'tom', '2018-06-26 17:59:21', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('69', 'tom', '2018-06-26 18:00:05', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('70', 'tom', '2018-06-26 18:01:11', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('71', 'tom', '2018-06-26 18:02:22', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('72', 'tom', '2018-06-26 18:03:59', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('73', 'tom', '2018-06-26 18:08:14', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('74', 'tom', '2018-06-26 18:08:50', '192.168.8.127', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('75', 'tom', '2018-06-27 10:36:02', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('76', 'tom', '2018-06-27 10:36:10', '192.168.8.137', '通过com.Shop.service.IGoodsService.getgoodsbyid()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('77', 'tom', '2018-06-27 10:36:13', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('78', 'tom', '2018-06-27 10:36:27', '192.168.8.137', '通过com.Shop.service.IGoodsService.getgoodsbyid()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('79', 'tom', '2018-06-27 10:36:29', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('80', 'tom', '2018-06-27 10:36:57', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('81', 'tom', '2018-06-27 10:37:12', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('82', 'tom', '2018-06-27 10:37:20', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('83', 'tom', '2018-06-27 10:37:26', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('84', 'tom', '2018-06-27 10:37:36', '192.168.8.137', '通过com.Shop.service.IGoodsService.getListgoodsService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('85', 'tom', '2018-06-27 15:00:15', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('86', 'tom', '2018-06-28 09:48:02', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('87', 'tom', '2018-06-28 09:51:11', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('88', 'tom', '2018-06-28 09:51:42', '192.168.8.130', '通过com.Shop.service.IAdminService.saveAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'insert');
INSERT INTO `t_adminlog` VALUES ('89', 'tom', '2018-06-28 09:51:42', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('90', 'tom', '2018-06-28 09:52:38', '192.168.8.130', '通过com.Shop.service.IAdminService.saveAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'insert');
INSERT INTO `t_adminlog` VALUES ('91', 'tom', '2018-06-28 09:52:38', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('92', 'tom', '2018-06-28 09:52:44', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('93', 'tom', '2018-06-28 09:52:45', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('94', 'tom', '2018-06-28 09:53:51', '192.168.8.130', '通过com.Shop.service.IAdminService.saveAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'insert');
INSERT INTO `t_adminlog` VALUES ('95', 'tom', '2018-06-28 09:53:51', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('96', 'tom', '2018-06-28 09:54:20', '192.168.8.130', '通过com.Shop.service.IAdminService.saveAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'insert');
INSERT INTO `t_adminlog` VALUES ('97', 'tom', '2018-06-28 09:54:20', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('98', 'tom', '2018-06-28 14:52:09', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('99', 'tom', '2018-06-28 14:52:20', '192.168.8.130', '通过com.Shop.service.IAdminService.saveAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'insert');
INSERT INTO `t_adminlog` VALUES ('100', 'tom', '2018-06-28 14:52:20', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('101', 'tom', '2018-06-28 14:52:30', '192.168.8.130', '通过com.Shop.service.IAdminService.deleteAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'delete');
INSERT INTO `t_adminlog` VALUES ('102', 'tom', '2018-06-28 14:52:30', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('103', 'tom', '2018-06-28 14:52:42', '192.168.8.130', '通过com.Shop.service.IAdminService.updateAdminService()方法执行了查询操作，方法返回类型class java.lang.Boolean', 'success', 'update');
INSERT INTO `t_adminlog` VALUES ('104', 'tom', '2018-06-28 14:52:42', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('105', 'tom', '2018-06-28 14:52:45', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('106', 'tom', '2018-06-28 14:53:20', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('107', 'tom', '2018-06-28 14:54:02', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('108', 'tom', '2018-06-28 14:54:10', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('109', 'tom', '2018-06-28 14:54:58', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('110', 'tom', '2018-06-28 15:02:37', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('111', 'tom', '2018-06-28 15:25:40', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('112', 'tom', '2018-06-28 15:26:52', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('113', 'tom', '2018-06-28 15:45:34', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');
INSERT INTO `t_adminlog` VALUES ('114', 'tom', '2018-06-28 15:53:59', '192.168.8.130', '通过com.Shop.service.IAdminService.getAllAdminService()方法执行了查询操作，方法返回类型class java.util.ArrayList', 'success', 'select');

-- ----------------------------
-- Table structure for `t_city`
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `provincesid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfxj9o2bpljumeqv7qhe470cwg` (`provincesid`),
  CONSTRAINT `FKfxj9o2bpljumeqv7qhe470cwg` FOREIGN KEY (`provincesid`) REFERENCES `t_province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('1', '成都市', '1');
INSERT INTO `t_city` VALUES ('2', '泸州市', '1');
INSERT INTO `t_city` VALUES ('3', '绵阳市', '1');
INSERT INTO `t_city` VALUES ('4', '达州市', '1');
INSERT INTO `t_city` VALUES ('5', '市辖区', '2');
INSERT INTO `t_city` VALUES ('6', '县', '2');
INSERT INTO `t_city` VALUES ('7', '市', '2');
INSERT INTO `t_city` VALUES ('8', '广州市', '3');
INSERT INTO `t_city` VALUES ('9', '深圳市', '3');
INSERT INTO `t_city` VALUES ('10', '湛江市', '3');

-- ----------------------------
-- Table structure for `t_company`
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_about` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_bus` varchar(255) DEFAULT NULL,
  `company_culture` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_fax` varchar(255) DEFAULT NULL,
  `company_image` varchar(255) DEFAULT NULL,
  `company_map` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_place` varchar(255) DEFAULT NULL,
  `company_postalcode` varchar(255) DEFAULT NULL,
  `company_publicNum` varchar(255) DEFAULT NULL,
  `company_weChat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '2006年8月，良品铺子第一家店在武汉广场对面开业总部落户于湖北省武汉市。是一家专门以研发、定制、推广全国各地好吃的零食的品牌企业。截止到2015年，拥有在线门店数1400多家，拥有1500多种美食，源产地来自世界11个国家和地区.历经9年发展，门店已经覆盖了湖北、江西、四川、湖南、河南5个省份..源产地来自世界11个国家和地区.历经9年发展，门店已经覆盖了湖北、江西、四川、湖南、河南5个省份....', '成都市锦江区大业路39号同瑞大厦16楼', '1路，8路，21路，45路，61路，221路', '我总在牛a与牛c之间徘徊。', 'liangpinpuzi@liangpinpuzi.cn', '（86）027-82329181', 'pic_2.png', 'map.html', '良品铺子', '028-812345688', '锦江区同瑞大厦', '610000', '良品铺子', 'liangpinpuzi');
INSERT INTO `t_company` VALUES ('6', '1231', 'dasdas', 'fdsfs', 'dsadas', '19933200000@qq.com', '1231231', 'rfssdf', 'fdsfsdfsd', 'sssss', 'frsfrwesrfw32', '56ytry', 'fsdfsx', 'gfgf', 'fdfff');

-- ----------------------------
-- Table structure for `t_companyhistory`
-- ----------------------------
DROP TABLE IF EXISTS `t_companyhistory`;
CREATE TABLE `t_companyhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyhistoryimage` varchar(255) DEFAULT NULL,
  `historycontent` varchar(255) DEFAULT NULL,
  `historyname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_companyhistory
-- ----------------------------
INSERT INTO `t_companyhistory` VALUES ('1', 'pic_11.png', '民国初年，湖北武昌，昙华林老街巷口，丈夫杨子林决定把祖传的蜜饯凉果秘方好好继承。勤快的两口子，将古法精心制作的果脯蜜饯及各色干果细细分类陈列，在临街门前开起了专卖零食的铺子。美味很快传遍街头巷尾，但两口子没有文化，铺子也一直迟迟没有名字。<span></span>直到这一年小年夜：一位打扮简素的妈妈带着儿子来到铺子，小男孩天真可爱，一进铺子就巴巴望着诱人的蜜饯，口水都快流出来了。妈妈小心翼翼从手帕取出一个铜板买了两粒梅子。儿子细细吮着梅果得意地说：“先生今天教给我两个字，他说那是做人的道理...', '缘起');
INSERT INTO `t_companyhistory` VALUES ('2', 'pic_11.png', '后来，ppt来了...', '缘起');
INSERT INTO `t_companyhistory` VALUES ('3', 'pic_11.png', '然后，醉了...', '中期');

-- ----------------------------
-- Table structure for `t_county`
-- ----------------------------
DROP TABLE IF EXISTS `t_county`;
CREATE TABLE `t_county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `county` varchar(255) DEFAULT NULL,
  `shoplocationimage` varchar(255) DEFAULT NULL,
  `citiesid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKggrphxj1loinfg783ar1oqnw6` (`citiesid`),
  CONSTRAINT `FKggrphxj1loinfg783ar1oqnw6` FOREIGN KEY (`citiesid`) REFERENCES `t_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_county
-- ----------------------------
INSERT INTO `t_county` VALUES ('1', '成华区', '####', '1');
INSERT INTO `t_county` VALUES ('2', '锦江区', '####', '1');
INSERT INTO `t_county` VALUES ('3', '金牛区', '####', '1');
INSERT INTO `t_county` VALUES ('4', '青羊区', '####', '1');
INSERT INTO `t_county` VALUES ('5', '龙泉驿', '####', '1');
INSERT INTO `t_county` VALUES ('6', '双流区', '####', '1');
INSERT INTO `t_county` VALUES ('7', '龙马潭区', '####', '2');
INSERT INTO `t_county` VALUES ('8', '江阳区', '####', '2');
INSERT INTO `t_county` VALUES ('9', '纳溪区', '####', '2');
INSERT INTO `t_county` VALUES ('10', '泸县', '####', '2');
INSERT INTO `t_county` VALUES ('11', '合江县', '####', '2');
INSERT INTO `t_county` VALUES ('14', '涪城区', '####', '3');
INSERT INTO `t_county` VALUES ('15', '游仙区', '####', '3');
INSERT INTO `t_county` VALUES ('16', '三台县', '####', '3');
INSERT INTO `t_county` VALUES ('17', '盐亭县', '####', '3');
INSERT INTO `t_county` VALUES ('18', '梓潼县', '####', '3');
INSERT INTO `t_county` VALUES ('19', '通川区', '####', '4');
INSERT INTO `t_county` VALUES ('20', '游仙区', '####', '4');
INSERT INTO `t_county` VALUES ('21', '三台县', '####', '4');
INSERT INTO `t_county` VALUES ('22', '盐亭县', '####', '4');
INSERT INTO `t_county` VALUES ('23', '梓潼县', '####', '4');
INSERT INTO `t_county` VALUES ('24', '江北区', '####', '5');
INSERT INTO `t_county` VALUES ('25', '万州区', '####', '5');
INSERT INTO `t_county` VALUES ('26', '九龙坡区', '####', '5');
INSERT INTO `t_county` VALUES ('27', '渝中区', '####', '5');
INSERT INTO `t_county` VALUES ('28', '沙坪坝区', '####', '5');
INSERT INTO `t_county` VALUES ('29', '江北区', '####', '5');
INSERT INTO `t_county` VALUES ('30', '铜梁县', '####', '6');
INSERT INTO `t_county` VALUES ('31', '大足县', '####', '6');
INSERT INTO `t_county` VALUES ('32', '荣昌县', '####', '6');
INSERT INTO `t_county` VALUES ('33', '璧山县', '####', '6');
INSERT INTO `t_county` VALUES ('34', '云阳县', '####', '6');
INSERT INTO `t_county` VALUES ('35', '江津市', '####', '7');
INSERT INTO `t_county` VALUES ('36', '合川市', '####', '7');
INSERT INTO `t_county` VALUES ('37', '永川市', '####', '7');
INSERT INTO `t_county` VALUES ('38', '南川市', '####', '7');
INSERT INTO `t_county` VALUES ('39', '东山区', '####', '8');
INSERT INTO `t_county` VALUES ('40', '珠海区', '####', '8');
INSERT INTO `t_county` VALUES ('41', '番禺区', '####', '8');
INSERT INTO `t_county` VALUES ('42', '黄埔区', '####', '8');
INSERT INTO `t_county` VALUES ('43', '白云区', '####', '8');
INSERT INTO `t_county` VALUES ('44', '罗湖区', '####', '9');
INSERT INTO `t_county` VALUES ('45', '福田区', '####', '9');
INSERT INTO `t_county` VALUES ('46', '南山区', '####', '9');
INSERT INTO `t_county` VALUES ('47', '宝安区', '####', '9');
INSERT INTO `t_county` VALUES ('48', '盐田区', '####', '9');
INSERT INTO `t_county` VALUES ('49', '赤坎区', '####', '10');
INSERT INTO `t_county` VALUES ('50', '麻章区', '####', '10');
INSERT INTO `t_county` VALUES ('51', '徐闻区', '####', '10');
INSERT INTO `t_county` VALUES ('52', '霞山区', '####', '10');
INSERT INTO `t_county` VALUES ('53', '遂溪区', '####', '10');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsimage` varchar(255) DEFAULT NULL,
  `goodsname` varchar(255) DEFAULT NULL,
  `goodsnumbersales` int(255) DEFAULT NULL,
  `goodsprice` varchar(255) DEFAULT NULL,
  `goodstime` varchar(255) DEFAULT NULL,
  `goodstypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqd5uthxrqxapuo5ks8149qdd6` (`goodstypeid`),
  CONSTRAINT `FKqd5uthxrqxapuo5ks8149qdd6` FOREIGN KEY (`goodstypeid`) REFERENCES `t_goodstype` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', 'pic_23.jpg', '开心果', '2', '49', '2018年06月11日 06:03:58', '1');
INSERT INTO `t_goods` VALUES ('2', 'pic_23.jpg', '碧根果', '12', '43', '2018年06月11日 06:06:49', '1');
INSERT INTO `t_goods` VALUES ('3', 'pic_23.jpg', '核桃', '3', '38', '2018年06月11日 06:07:30', '1');
INSERT INTO `t_goods` VALUES ('4', 'pic_23.jpg', '腰果', '20', '41', '2018年06月11日 06:08:01', '1');
INSERT INTO `t_goods` VALUES ('5', '1.jpg', '桃仁', '22', '31', '2018-07-01 06:08:20', '1');
INSERT INTO `t_goods` VALUES ('6', 'pic_23.jpg', '夏威夷果', '85', '66', '2018年06月11日 06:08:44', '1');
INSERT INTO `t_goods` VALUES ('7', 'pic_25.jpg', '对对虾', '12', '30', '2018年06月12日 09:58:31', '2');
INSERT INTO `t_goods` VALUES ('8', 'pic_25.jpg', '鱿鱼丝', '30', '28', '2018年06月12日 09:58:31', '2');
INSERT INTO `t_goods` VALUES ('9', 'pic_25.jpg', '麻辣小龙虾', '8', '30', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('10', 'pic_25.jpg', '香辣小黄鱼', '10', '28', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('11', 'pic_25.jpg', '鱿鱼丝', '5', '28', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('12', 'pic_25.jpg', '小鱼仔', '9', '28', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('13', 'pic_25.jpg', '虾夷扇贝', '10', '28', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('14', 'pic_25.jpg', '灯影牛肉', '3', '28', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('15', 'pic_25.jpg', '香辣鸭舌', '20', '28', '2018年06月12日 10:04:17', '2');
INSERT INTO `t_goods` VALUES ('16', 'pic_25.jpg', '牛肉粒', '33', '30', '2018年06月12日 10:06:36', '2');
INSERT INTO `t_goods` VALUES ('17', 'pic_25.jpg', '鸭脖', '34', '28', '2018年06月12日 10:06:36', '2');
INSERT INTO `t_goods` VALUES ('18', 'pic_25.jpg', '排骨', '52', '28', '2018年06月12日 10:06:36', '2');
INSERT INTO `t_goods` VALUES ('19', 'pic_25.jpg', '盐焗鸡翅', '9', '28', '2018年06月12日 10:06:36', '2');
INSERT INTO `t_goods` VALUES ('20', 'pic_25.jpg', '猪肉粒', '15', '28', '2018年06月12日 10:06:36', '2');
INSERT INTO `t_goods` VALUES ('21', 'pic_22.jpg', '蜂蜜味樱桃', '35', '30', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('22', 'pic_22.jpg', '草莓干', '15', '28', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('23', 'pic_22.jpg', '葡萄干', '15', '28', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('24', 'pic_22.jpg', '白桃果干', '30', '28', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('25', 'pic_22.jpg', '芒果干', '25', '28', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('26', 'pic_22.jpg', '菠萝片', '19', '28', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('27', 'pic_22.jpg', '紫薯仔', '20', '28', '2018年06月12日 10:14:24', '3');
INSERT INTO `t_goods` VALUES ('28', 'pic_22.jpg', '猫爪棉花糖', '22', '30', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('29', 'pic_22.jpg', '日式果味果冻', '27', '28', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('30', 'pic_22.jpg', '玫瑰香体糖', '17', '28', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('31', 'pic_22.jpg', '夹心巧克力', '20', '28', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('32', 'pic_22.jpg', '提子豆奶', '25', '28', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('33', 'pic_22.jpg', '手工棒棒糖', '3', '28', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('34', 'pic_22.jpg', '橡皮糖', '2', '28', '2018年06月12日 10:16:49', '4');
INSERT INTO `t_goods` VALUES ('35', 'pic_26.jpg', '香辣海带结', '1', '30', '2018年06月12日 10:19:00', '5');
INSERT INTO `t_goods` VALUES ('36', 'pic_26.jpg', '金针菇', '1', '28', '2018年06月12日 10:19:00', '5');
INSERT INTO `t_goods` VALUES ('37', 'pic_26.jpg', '萝卜干', '8', '28', '2018年06月12日 10:19:00', '5');
INSERT INTO `t_goods` VALUES ('38', 'pic_26.jpg', '竹笋', '6', '28', '2018年06月12日 10:19:00', '5');
INSERT INTO `t_goods` VALUES ('39', 'pic_26.jpg', '鱼豆腐', '7', '28', '2018年06月12日 10:19:00', '5');
INSERT INTO `t_goods` VALUES ('40', 'pic_26.jpg', '藕丁', '7', '28', '2018年06月12日 10:19:01', '5');
INSERT INTO `t_goods` VALUES ('41', 'pic_26.jpg', '薄皮豆干', '0', '28', '2018年06月12日 10:19:01', '5');
INSERT INTO `t_goods` VALUES ('42', 'pic_26.jpg', '卡布奇诺', '0', '30', '2018年06月12日 10:21:26', '6');
INSERT INTO `t_goods` VALUES ('43', 'pic_26.jpg', '英式伯爵红茶', '0', '28', '2018年06月12日 10:21:26', '6');
INSERT INTO `t_goods` VALUES ('44', 'pic_26.jpg', '凤梨鲜橙汁', '0', '28', '2018年06月12日 10:21:26', '6');
INSERT INTO `t_goods` VALUES ('45', 'pic_26.jpg', '牛油果梨汁', '0', '28', '2018年06月12日 10:21:26', '6');
INSERT INTO `t_goods` VALUES ('46', 'pic_26.jpg', '进口零食', '0', '30', '2018年06月12日 10:22:54', '7');
INSERT INTO `t_goods` VALUES ('47', 'pic_26.jpg', '进口小吃', '0', '28', '2018年06月12日 10:22:54', '7');
INSERT INTO `t_goods` VALUES ('48', 'pic_26.jpg', '进口果干', '0', '28', '2018年06月12日 10:22:54', '7');
INSERT INTO `t_goods` VALUES ('49', 'pic_26.jpg', '进口混合', '0', '28', '2018年06月12日 10:22:54', '7');
INSERT INTO `t_goods` VALUES ('50', 'pic_26.jpg', '坚果时代', '0', '100', '2018年06月12日 10:51:10', '8');
INSERT INTO `t_goods` VALUES ('51', 'pic_26.jpg', '礼遇', '0', '100', '2018年06月12日 10:51:10', '8');
INSERT INTO `t_goods` VALUES ('52', 'pic_26.jpg', '尝尝有赞', '0', '100', '2018年06月12日 10:51:10', '8');
INSERT INTO `t_goods` VALUES ('53', 'pic_26.jpg', '阖家欢', '0', '100', '2018年06月12日 10:51:10', '8');
INSERT INTO `t_goods` VALUES ('54', 'pic_26.jpg', '食食有爱', '0', '100', '2018年06月12日 10:51:10', '8');
INSERT INTO `t_goods` VALUES ('55', 'pic_26.jpg', '追剧零食陪伴盒', '0', '100', '2018-06-29 10:51:10', '8');
INSERT INTO `t_goods` VALUES ('56', '1.jpg', '1', '10', '1', '2018-06-29 13:39:26', '1');

-- ----------------------------
-- Table structure for `t_goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `t_goodstype`;
CREATE TABLE `t_goodstype` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goodstype
-- ----------------------------
INSERT INTO `t_goodstype` VALUES ('1', 'pic_3.png', '坚果炒货');
INSERT INTO `t_goodstype` VALUES ('2', 'pic_4.png', '肉脯鱼干');
INSERT INTO `t_goodstype` VALUES ('3', 'pic_5.png', '果干果脯');
INSERT INTO `t_goodstype` VALUES ('4', 'pic_6.png', '糕点糖果');
INSERT INTO `t_goodstype` VALUES ('5', 'pic7_.png', '素食山珍');
INSERT INTO `t_goodstype` VALUES ('6', 'pic8_.png', '花茶饮品');
INSERT INTO `t_goodstype` VALUES ('7', 'pic9_.png', '进口食品');
INSERT INTO `t_goodstype` VALUES ('8', 'pic10_.png', '精选礼盒');

-- ----------------------------
-- Table structure for `t_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `t_jobs`;
CREATE TABLE `t_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daptinfo` varchar(255) DEFAULT NULL,
  `jobsimage` varchar(255) DEFAULT NULL,
  `jobslocation` varchar(255) DEFAULT NULL,
  `jobsrequirements` varchar(255) DEFAULT NULL,
  `jobstheme` varchar(255) DEFAULT NULL,
  `jobstime` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `recruitid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqk9y2xve7kjrrdprung188a0v` (`recruitid`),
  CONSTRAINT `FKqk9y2xve7kjrrdprung188a0v` FOREIGN KEY (`recruitid`) REFERENCES `t_recruit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jobs
-- ----------------------------
INSERT INTO `t_jobs` VALUES ('1', '岗位要求：本科或研究生学历(全日制统招道类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '质量管理:', '2016年周黑鸭校园招聘宣讲会', '发布时间：2015/10/13', '15', '1');
INSERT INTO `t_jobs` VALUES ('3', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '公共资源管理 :', '', '', '12', '1');
INSERT INTO `t_jobs` VALUES ('4', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '财务管理 :', '', '', '8', '1');
INSERT INTO `t_jobs` VALUES ('5', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '食品研发 :', '', '', '10', '1');
INSERT INTO `t_jobs` VALUES ('6', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '行政管理 :', '', '', '9', '1');
INSERT INTO `t_jobs` VALUES ('7', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '市场营销管理 :', '', '', '8', '1');
INSERT INTO `t_jobs` VALUES ('8', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '电子商务管理 :', '', '', '11', '1');
INSERT INTO `t_jobs` VALUES ('9', '岗位要求：本科或研究生学历(全日制统招类别),食品类等 相关专业。提供食宿。', null, '工作地点：武汉市东西湖区走马岭汇通大8-1号', '供应链管理 :', '', '', '5', '1');

-- ----------------------------
-- Table structure for `t_join`
-- ----------------------------
DROP TABLE IF EXISTS `t_join`;
CREATE TABLE `t_join` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joincontent` varchar(255) DEFAULT NULL,
  `joinimage` varchar(255) DEFAULT NULL,
  `jointheme` varchar(255) DEFAULT NULL,
  `jointime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_join
-- ----------------------------
INSERT INTO `t_join` VALUES ('1', '招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期， 有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招 商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］', 'pic_28.jpg', '良品铺子湖北 全线开放加盟了', '2015-12-31');
INSERT INTO `t_join` VALUES ('2', '招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期， 有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招 商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］', 'pic_29.jpg', '惊喜：海螺姑娘', '2015-12-31');
INSERT INTO `t_join` VALUES ('3', '招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期， 有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招 商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］', 'pic_30.jpg', '惊喜：良品铺子湖北 全线开放加盟了', '2015-12-31');
INSERT INTO `t_join` VALUES ('4', '招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期， 有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招 商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］', 'pic_31.jpg', '惊喜：良品铺子湖北 全线开放加盟了', '2015-12-31');
INSERT INTO `t_join` VALUES ('5', '从那天起，海螺姑娘就成了小伙子的妻子，每天小伙子在田里耕种，海螺姑娘就做好饭等着小伙子归来，他们成了村里最让人羡慕的一对。转眼间，三年过去了。这天晚上小伙子吃过饭后发现海螺姑娘在哭泣，小伙子很奇怪，三年间，他们夫妻恩爱，海螺姑娘从未哭过，难道今天她有什么伤心事吗？在小伙子的再三追问下，海螺姑娘终于道出了原因，原来，三年前因为他不忍心拒绝小伙子答应嫁给他，可他们只能在一起三年。现在三年时间到了，她也该走了。小伙子听完后很是后悔，也很是伤心，他恳求海螺姑娘不要离开他', 'pic_31.jpg', '故事会：海螺姑娘', '2018-69');

-- ----------------------------
-- Table structure for `t_pagefoot`
-- ----------------------------
DROP TABLE IF EXISTS `t_pagefoot`;
CREATE TABLE `t_pagefoot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `footimage` varchar(255) DEFAULT NULL,
  `foottitle` varchar(255) DEFAULT NULL,
  `number` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pagefoot
-- ----------------------------

-- ----------------------------
-- Table structure for `t_password`
-- ----------------------------
DROP TABLE IF EXISTS `t_password`;
CREATE TABLE `t_password` (
  `pwdId` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pwdId`),
  KEY `FKo1xdqwrn6breyc2fp1ud1fxn8` (`user_id`),
  CONSTRAINT `FKo1xdqwrn6breyc2fp1ud1fxn8` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_password
-- ----------------------------
INSERT INTO `t_password` VALUES ('1', 'tom123', '1');
INSERT INTO `t_password` VALUES ('5', '123456', '3');
INSERT INTO `t_password` VALUES ('6', '123456', '18');
INSERT INTO `t_password` VALUES ('7', '123456', '19');
INSERT INTO `t_password` VALUES ('8', '123456', '21');
INSERT INTO `t_password` VALUES ('9', '猫猫吧', '22');
INSERT INTO `t_password` VALUES ('10', '行政村中心', '23');
INSERT INTO `t_password` VALUES ('11', '谭杰', '24');
INSERT INTO `t_password` VALUES ('12', '123456', '25');
INSERT INTO `t_password` VALUES ('13', '123456', '26');
INSERT INTO `t_password` VALUES ('14', '123', '27');

-- ----------------------------
-- Table structure for `t_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `permissionDescribe` varchar(255) DEFAULT NULL,
  `permissionName` varchar(255) DEFAULT NULL,
  `permissionSpace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '用户', '用户管理', 'user');
INSERT INTO `t_permission` VALUES ('2', '角色', '角色管理', 'role');
INSERT INTO `t_permission` VALUES ('3', '权限', '权限设置', 'power');
INSERT INTO `t_permission` VALUES ('5', '日志', '系统日志', 'log');
INSERT INTO `t_permission` VALUES ('7', '商品分裂爸爸爱爸爸', '商城管理', 'goods');

-- ----------------------------
-- Table structure for `t_production`
-- ----------------------------
DROP TABLE IF EXISTS `t_production`;
CREATE TABLE `t_production` (
  `production_id` int(11) NOT NULL AUTO_INCREMENT,
  `production_company` varchar(255) DEFAULT NULL,
  `production_date` varchar(255) DEFAULT NULL,
  `production_involved` varchar(255) DEFAULT NULL,
  `production_photoname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`production_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_production
-- ----------------------------

-- ----------------------------
-- Table structure for `t_province`
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES ('1', '四川省');
INSERT INTO `t_province` VALUES ('2', '重庆市');
INSERT INTO `t_province` VALUES ('3', '广东省');

-- ----------------------------
-- Table structure for `t_recruit`
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit`;
CREATE TABLE `t_recruit` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recruit
-- ----------------------------
INSERT INTO `t_recruit` VALUES ('1', '校园招聘');
INSERT INTO `t_recruit` VALUES ('2', '企业招聘');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleDescribe` varchar(255) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '无敌是多么寂寞。', '超级管理员');
INSERT INTO `t_role` VALUES ('2', '管理员工', '员工管理员');
INSERT INTO `t_role` VALUES ('3', '管理ppt', '商城管理员');
INSERT INTO `t_role` VALUES ('15', '偷窥狂', '魔法师');
INSERT INTO `t_role` VALUES ('16', '吴国王八蛋', '王八管理员');
INSERT INTO `t_role` VALUES ('17', '唉唉唉唉', '单调的管理员');
INSERT INTO `t_role` VALUES ('18', '失败', '失败');

-- ----------------------------
-- Table structure for `t_roleandpermission`
-- ----------------------------
DROP TABLE IF EXISTS `t_roleandpermission`;
CREATE TABLE `t_roleandpermission` (
  `rap_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rap_id`),
  KEY `FKf44avxvg2gnprvgw0riiiyo4u` (`permission_id`),
  KEY `FKelv2by39g8l6ta3jflv8xuoj4` (`role_id`),
  CONSTRAINT `FKelv2by39g8l6ta3jflv8xuoj4` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`roleId`),
  CONSTRAINT `FKf44avxvg2gnprvgw0riiiyo4u` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_roleandpermission
-- ----------------------------
INSERT INTO `t_roleandpermission` VALUES ('1', '3', '1');
INSERT INTO `t_roleandpermission` VALUES ('2', '2', '1');
INSERT INTO `t_roleandpermission` VALUES ('3', '7', '1');
INSERT INTO `t_roleandpermission` VALUES ('14', '1', '1');
INSERT INTO `t_roleandpermission` VALUES ('15', '7', '15');
INSERT INTO `t_roleandpermission` VALUES ('16', '1', '16');
INSERT INTO `t_roleandpermission` VALUES ('17', '2', '16');
INSERT INTO `t_roleandpermission` VALUES ('18', '7', '16');
INSERT INTO `t_roleandpermission` VALUES ('19', '7', '17');
INSERT INTO `t_roleandpermission` VALUES ('20', '5', '1');
INSERT INTO `t_roleandpermission` VALUES ('21', '3', '17');
INSERT INTO `t_roleandpermission` VALUES ('32', '1', '18');
INSERT INTO `t_roleandpermission` VALUES ('33', '2', '18');
INSERT INTO `t_roleandpermission` VALUES ('34', '3', '18');

-- ----------------------------
-- Table structure for `t_shop`
-- ----------------------------
DROP TABLE IF EXISTS `t_shop`;
CREATE TABLE `t_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shophistory` varchar(255) DEFAULT NULL,
  `shopimage` varchar(255) DEFAULT NULL,
  `shoplocation` varchar(255) DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shop
-- ----------------------------
INSERT INTO `t_shop` VALUES ('1', '2006年8月，良品铺子第一家店在武汉广场对面开业，总部落户于湖北省武汉市。是一家以研发、定制、推广全球各地好吃的零食为企业目标，历经9年发展，门店已经覆盖湖北、江西、四川、河南5个省份，2014公司销售25亿元，跻身全国休闲食品业第一方阵。目标是2018年企业销售额破百亿。', 'pic_14.jpg', null, 'FROFILE');
INSERT INTO `t_shop` VALUES ('2', null, 'pic_15.jpg', null, '一代店');
INSERT INTO `t_shop` VALUES ('3', null, 'pic_16.jpg', null, '二代店');
INSERT INTO `t_shop` VALUES ('4', null, 'pic_17.jpg', null, '三代店');
INSERT INTO `t_shop` VALUES ('5', null, 'pic_18.jpg', null, '四代店');
INSERT INTO `t_shop` VALUES ('6', '长期以来，良品铺子始终坚守“统一采购、统一生产、统一配送、统一销售、统一核算、统一形象”的“六统一”连锁经营管理模式和“质量第一，信誉至上，保持特色，持续发展”的经营理念。良品铺子品牌始终坚持自主经营和发展，数百家直营门店遍布北京、上海、天津、重庆及武汉、广州、深圳、长沙、杭州、郑州、南京、南昌等省会城市。同时分别在华中、华南、华北、及西南地区分别建设并规划大型现代化生产中心，服务华东、华南、华北、华中等地区。', 'pic_19.jpg', null, 'WORKING');
INSERT INTO `t_shop` VALUES ('7', '2006年8月,良品铺子第一家店在武汉广场对面开业,总部落户于湖北省武汉市。是一家以研发、定制、推广全球各地好吃的零食为企业目标, 历经9年发展，门店已经覆盖湖北、江西、四川、河南5个省份，2014公司销售25亿元，跻身全国休闲食品业第一方阵。目标是2018年企业销售额破百亿。', 'pic_20.jpg', null, 'REPUTATION');
INSERT INTO `t_shop` VALUES ('8', '2006年8月,良品铺子第一家店在武汉广场对面开业,总部落户于湖北省武汉市。是一家以研发、定制、推广全球各地好吃的零食为企业目标, 历经9年发展，门店已经覆盖湖北、江西、四川、河南5个省份，2014公司销售25亿元，跻身全国休闲食品业第一方阵。目标是2018年企业销售额破百亿。', 'pic_21.jpg', null, 'DREAM');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime DEFAULT NULL,
  `del` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '2018-06-28 18:32:33', '0', 'tom@163.com', '2018-06-28 18:32:46', '123000', 'tom');
INSERT INTO `t_user` VALUES ('2', '2018-07-01 13:48:00', '0', '21312312', '2018-07-01 13:48:30', 'sdsdfsd', 'andy');
INSERT INTO `t_user` VALUES ('3', '2018-07-01 13:48:03', '0', 'weqwewad', '2018-07-01 13:48:32', 'fsddasda', 'jerry');
INSERT INTO `t_user` VALUES ('4', '2018-07-01 13:48:06', '0', 'sadsad', '2018-07-01 13:48:35', '1231d', 'alick');
INSERT INTO `t_user` VALUES ('5', '2018-07-01 13:48:08', '1', 'zxccsdfsad', '2018-07-01 13:48:37', 'sd123e12e3', 'alice');
INSERT INTO `t_user` VALUES ('6', '2018-07-01 13:48:11', '1', '444444sd', '2018-07-01 13:48:40', '12345', 'owen');
INSERT INTO `t_user` VALUES ('7', '2018-07-01 13:48:14', '1', '入多福多寿地方', '2018-07-01 13:48:42', '123124123', 'bob');
INSERT INTO `t_user` VALUES ('8', '2018-07-01 13:48:16', '1', '31231231', '2018-07-01 13:48:45', '231123', 'karter');
INSERT INTO `t_user` VALUES ('9', '2018-07-01 13:48:18', '1', '00000000', '2018-07-01 13:48:47', '000000000000', 'wellr');
INSERT INTO `t_user` VALUES ('10', '2018-07-01 13:48:21', '1', '3dsds', '2018-07-04 13:48:50', '33212', 'bake');
INSERT INTO `t_user` VALUES ('11', '2018-07-01 13:48:23', '1', '1010', '2018-07-01 13:48:55', '234dsa', 'wang');
INSERT INTO `t_user` VALUES ('12', '2018-07-01 13:48:26', '1', '232323124141', '2018-07-01 13:48:58', '123124', 'avier');
INSERT INTO `t_user` VALUES ('13', '2018-07-01 13:55:57', '1', '按时打算打算', '2018-08-14 13:56:02', '213131231', 'vivo');
INSERT INTO `t_user` VALUES ('14', '2018-07-01 13:58:00', '1', 'sadas', '2018-07-01 13:57:56', 'dsa', 'sb');
INSERT INTO `t_user` VALUES ('15', '2018-07-25 13:58:03', '1', '大声大声道', '2018-07-17 13:57:52', '多岁的', 'wul');
INSERT INTO `t_user` VALUES ('16', null, '1', '0987654321', null, '1234567890', '王八蛋');
INSERT INTO `t_user` VALUES ('17', null, '1', 'dsd', null, 'sd', 'sdsd');
INSERT INTO `t_user` VALUES ('18', null, '1', 'dasda', null, 'dasd', 'dasda');
INSERT INTO `t_user` VALUES ('19', null, '1', 'ssssss', null, 'sssssss', 'ssssss');
INSERT INTO `t_user` VALUES ('21', null, '1', '撒打算', null, '的萨达d', '打算打算');
INSERT INTO `t_user` VALUES ('22', null, '1', '12314112@144.com', null, '12345678908', '猫猫吧');
INSERT INTO `t_user` VALUES ('23', null, '1', '调查中学生', null, '程序支持', '行政村中心');
INSERT INTO `t_user` VALUES ('24', null, '1', '11111', null, '12345', '哈哈');
INSERT INTO `t_user` VALUES ('25', null, '1', '7654321', null, '1234567', 'PPT');
INSERT INTO `t_user` VALUES ('26', '2018-07-04 18:43:08', '0', '321', '2018-07-04 18:43:08', '123', 'asd');
INSERT INTO `t_user` VALUES ('27', '2018-07-07 11:33:36', '1', '1223124132542', '2018-07-07 11:33:58', '34235r', 'aaa');

-- ----------------------------
-- Table structure for `t_userandrole`
-- ----------------------------
DROP TABLE IF EXISTS `t_userandrole`;
CREATE TABLE `t_userandrole` (
  `uar_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uar_id`),
  KEY `FKtpwuuvq6vm6sru84xpxl9ckvh` (`role_id`),
  KEY `FKhcw83bb1ss5do80v2do55o1wx` (`user_id`),
  CONSTRAINT `FKhcw83bb1ss5do80v2do55o1wx` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKtpwuuvq6vm6sru84xpxl9ckvh` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userandrole
-- ----------------------------
INSERT INTO `t_userandrole` VALUES ('1', '1', '1');
INSERT INTO `t_userandrole` VALUES ('2', '1', '25');
INSERT INTO `t_userandrole` VALUES ('3', '15', '26');
INSERT INTO `t_userandrole` VALUES ('4', '17', '27');
