/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : 1604s
Target Host     : localhost:3306
Target Database : 1604s
Date: 2018-11-02 20:55:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` varchar(255) NOT NULL DEFAULT '' COMMENT '购物车ID',
  `allGoods` varchar(255) DEFAULT NULL COMMENT '所有商品，JSON格式',
  `uid` varchar(20) DEFAULT NULL COMMENT '联关用户Id',
  `isPay` bit(1) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of card
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `num` bigint(20) DEFAULT NULL COMMENT '品商数量',
  `sid` varchar(20) DEFAULT NULL COMMENT '联关卖家',
  `isUp` bit(1) DEFAULT NULL COMMENT '否是上架',
  `tid` bigint(20) DEFAULT NULL COMMENT '联关类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '品商类型id',
  `parentiId` bigint(20) DEFAULT NULL COMMENT '商品父类类型ID',
  `name` varchar(255) DEFAULT NULL COMMENT '品商名称',
  `gid` varchar(255) DEFAULT NULL COMMENT '关联商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '家卖账号',
  `pwd` varchar(255) DEFAULT NULL COMMENT '卖家密码',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `changePwdTime` datetime DEFAULT NULL COMMENT '上次更改密码时间',
  `lastLoginTime` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `realName` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `phoneNum` bigint(20) DEFAULT NULL COMMENT '手机号',
  `status` bit(1) DEFAULT NULL COMMENT '审核是否通过',
  `isTeam` bit(1) DEFAULT NULL COMMENT '团队还是个人',
  `idCard` bigint(20) DEFAULT NULL COMMENT '份证身号码',
  `bandCard` bigint(20) DEFAULT NULL COMMENT '银行卡号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of seller
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `realName` varchar(255) DEFAULT NULL COMMENT '用户真实姓名',
  `telephone` varchar(255) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `isexist` bit(1) DEFAULT NULL COMMENT '用户是否注销',
  `createtime` date DEFAULT NULL COMMENT '用户创建时间',
  `changepwdtime` datetime DEFAULT NULL COMMENT '用户上次更改密码时间',
  `last_login` datetime DEFAULT NULL COMMENT '用户上次登陆时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
