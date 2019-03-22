/*
 Navicat Premium Data Transfer

 Source Server         : cspt
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : cspt

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 22/03/2019 21:49:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_info_company
-- ----------------------------
DROP TABLE IF EXISTS `base_info_company`;
CREATE TABLE `base_info_company`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `company_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `identifier` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统一社会信用代码',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `business_scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '经营范围',
  `contact_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通讯地址',
  `economic_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '经营业户经济类型',
  `reg_capital` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '注册资本',
  `legal_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表姓名',
  `legal_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表身份证号',
  `legal_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表电话',
  `legal_photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表身份证扫描件文件编号',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车平台公司基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_company
-- ----------------------------
INSERT INTO `base_info_company` VALUES ('1', '吉林市xx1出租车公司', '10086', 220202, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('10', '吉林市xx10出租车公司', '10086', 220282, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('11', '吉林市xx11出租车公司', '10086', 220282, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('12', '吉林市xx12出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('13', '吉林市xx13出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('14', '吉林市xx14出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('15', '吉林市xx15出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('16', '吉林市xx16出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('17', '吉林市xx17出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('2', '吉林市xx2出租车公司', '10086', 220203, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('3', '吉林市xx3出租车公司', '10086', 220204, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('4', '吉林市xx4出租车公司', '10086', 220211, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('5', '吉林市xx5出租车公司', '10086', 220221, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('6', '吉林市xx6出租车公司', '10086', 220281, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('7', '吉林市xx7出租车公司', '10086', 220284, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('8', '吉林市xx8出租车公司', '10086', 220283, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');
INSERT INTO `base_info_company` VALUES ('9', '吉林市xx9出租车公司', '10086', 220283, '经营范围', '通讯地址', '经营业户经济类型', '注册资本', '法人代表姓名', '法人代表身份证号', '法人代表电话', '法人代表身份证扫描件文件编号', 1, 1, 20180117101010, NULL, '2018-01-28', '1');

-- ----------------------------
-- Table structure for base_info_company_fare
-- ----------------------------
DROP TABLE IF EXISTS `base_info_company_fare`;
CREATE TABLE `base_info_company_fare`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '行政区划代码',
  `fare_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运价类型编码',
  `fare_type_note` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运价类型说明',
  `fare_valid_on` bigint(14) NOT NULL COMMENT '运价有效期起',
  `fare_valid_off` bigint(14) NULL DEFAULT NULL COMMENT '运价有效期止',
  `start_fare` decimal(8, 2) NOT NULL COMMENT '起步价',
  `start_mile` decimal(8, 2) NOT NULL COMMENT '起步里程',
  `unit_price_per_mile` decimal(8, 2) NOT NULL COMMENT '计程单价',
  `unit_price_per_minute` decimal(8, 2) NOT NULL COMMENT '计时单价',
  `up_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '单程加价单价',
  `up_price_start_mile` decimal(8, 2) NULL DEFAULT NULL COMMENT '单程加价公里',
  `morning_peak_time_on` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运营早高峰时间起',
  `morning_peak_time_off` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运营早高峰时间止',
  `evening_peak_time_on` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运营晚高峰时间起',
  `evening_peak_time_off` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运营晚高峰时间止',
  `other_peak_time_on` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他运营高峰时间起',
  `other_peak_time_off` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他运营高峰时间止',
  `peak_unit_price` decimal(8, 2) NOT NULL COMMENT '高峰时间单程加价单价',
  `peak_price_start_mile` decimal(8, 2) NOT NULL COMMENT '高峰时间单程加价公里',
  `low_speed_price_per_minute` decimal(8, 2) NULL DEFAULT NULL COMMENT '低速计时加价',
  `night_price_per_mile` decimal(8, 2) NULL DEFAULT NULL COMMENT '夜间费公里',
  `night_price_per_minute` decimal(8, 2) NULL DEFAULT NULL COMMENT '夜间费分钟',
  `other_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '其它加价金额',
  `state` int(1) NOT NULL COMMENT '状态',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车平台公司运价信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_info_company_pay
-- ----------------------------
DROP TABLE IF EXISTS `base_info_company_pay`;
CREATE TABLE `base_info_company_pay`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `pay_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '银行或者非银行支付机构名称',
  `pay_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '非银行支付机构支付业务许可证编号',
  `pay_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付业务类型',
  `pay_scope` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务覆盖范围',
  `prepare_bank` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备付金存管银行',
  `count_date` int(10) NOT NULL COMMENT '结算周期',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车平台公司支付信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_company_pay
-- ----------------------------
INSERT INTO `base_info_company_pay` VALUES ('4001', '1', '2', '3', '4', '5', 6, 1, 1, 1, '1', '2018-02-23', NULL);

-- ----------------------------
-- Table structure for base_info_company_permit
-- ----------------------------
DROP TABLE IF EXISTS `base_info_company_permit`;
CREATE TABLE `base_info_company_permit`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '许可地行政区划代码',
  `certificate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网络预约出租汽车经营许可证号',
  `operation_area` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '经营区域',
  `owner_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `organization` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发证机构名称',
  `start_date` bigint(8) NOT NULL COMMENT '有效期起',
  `stop_date` bigint(8) NOT NULL COMMENT '有效期止',
  `certify_date` bigint(8) NOT NULL COMMENT '初次发证日期',
  `state` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '证照状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车平台公司经营许可' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_company_permit
-- ----------------------------
INSERT INTO `base_info_company_permit` VALUES ('1', 1, '2', '2', '3', '4', 5, 6, 7, '7', 8, 1, '1', '2018-02-23', '1', 0);

-- ----------------------------
-- Table structure for base_info_company_service
-- ----------------------------
DROP TABLE IF EXISTS `base_info_company_service`;
CREATE TABLE `base_info_company_service`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '行政区划代码',
  `service_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务机构名称',
  `service_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务机构代码',
  `detail_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务机构地址',
  `responsible_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务机构负责人姓名',
  `responsible_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人联系电话',
  `manager_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务机构管理人姓名',
  `manager_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理人联系电话',
  `contact_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务机构紧急联系电话',
  `mail_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '行政文书送达邮寄地址',
  `create_date` bigint(8) NOT NULL COMMENT '服务机构设立日期',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车平台公司服务机构' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_company_service
-- ----------------------------
INSERT INTO `base_info_company_service` VALUES ('4001', 1, '2', '3', '4', '5', '6', '7', '8', '9', '10', 1, 1, 1, 1, NULL, '2018-02-23', '1');

-- ----------------------------
-- Table structure for base_info_company_stat
-- ----------------------------
DROP TABLE IF EXISTS `base_info_company_stat`;
CREATE TABLE `base_info_company_stat`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `vehicle_num` int(64) NOT NULL COMMENT '平台注册网约车辆数',
  `driver_num` int(64) NOT NULL COMMENT '平台注册驾驶员数',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车平台公司营运规模信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_company_stat
-- ----------------------------
INSERT INTO `base_info_company_stat` VALUES ('1', 2, 3, 4, 5, '6', '2018-02-23', '1');

-- ----------------------------
-- Table structure for base_info_driver
-- ----------------------------
DROP TABLE IF EXISTS `base_info_driver`;
CREATE TABLE `base_info_driver`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `driver_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机动车驾驶员姓名',
  `driver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员手机号',
  `driver_gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员性别',
  `driver_birthday` bigint(8) NOT NULL COMMENT '出生日期',
  `driver_nationality` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国籍',
  `driver_nation` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员民族',
  `driver_marital_status` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾驶员婚姻状况',
  `driver_language_level` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾驶员外语能力',
  `driver_education` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾驶员学历',
  `driver_census` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户口登记机关名称',
  `driver_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户口住址或长住住址',
  `driver_contact_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员通信地址',
  `photo_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾驶员照片文件编号',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `license_photo_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机动车驾驶证扫描件文件编号',
  `driver_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '准驾车型',
  `get_driver_license_date` bigint(8) NOT NULL COMMENT '初次领取驾驶证日期',
  `driver_license_on` bigint(8) NOT NULL COMMENT '驾驶证有效期限起',
  `driver_license_off` bigint(8) NOT NULL COMMENT '驾驶证有效期限止',
  `taxi_driver` int(1) NOT NULL COMMENT '是否巡游出租汽车驾驶员',
  `certificate_no` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网络预约出租汽车驾驶员资格证号',
  `network_car_issue_organization` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网约预约出租汽车驾驶员证发证机构',
  `network_car_issue_date` bigint(8) NOT NULL COMMENT '资格证发证日期',
  `get_network_car_proof_date` bigint(8) NOT NULL COMMENT '初次领取资格证日期',
  `network_car_proof_on` bigint(8) NOT NULL COMMENT '资格证有效起始日期',
  `network_car_proof_off` bigint(8) NOT NULL COMMENT '资格证有效截止日期',
  `register_date` bigint(8) NOT NULL COMMENT '报备日期',
  `full_time_driver` int(1) NULL DEFAULT NULL COMMENT '是否专职驾驶员',
  `in_driver_blacklist` int(1) NULL DEFAULT NULL COMMENT '是否在驾驶员黑名单内',
  `commercial_type` int(1) NOT NULL COMMENT '服务类型',
  `contract_company` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员合同签署公司',
  `contract_on` bigint(8) NOT NULL COMMENT '合同开始时间',
  `contract_off` bigint(8) NOT NULL COMMENT '合同到期时间',
  `emergency_contact` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急情况联系人',
  `emergency_contact_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急情况联系人电话',
  `emergency_contact_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '紧急情况联系人通信地址',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驾驶员基本信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_driver
-- ----------------------------
INSERT INTO `base_info_driver` VALUES ('1', 130000, '李四', '13111111111', '1', 2, '3', '4', '5', '6', '8', '9', '12', '11', '111', '11', '111', '321', 123, 123, 123, 13, '12', '123', 123, 1, 1, 1, 1, 1, 1, 2, '2', 3, 4, '5', '6', '7', 7, 8, 12, '123', '2019-03-18', '123');

-- ----------------------------
-- Table structure for base_info_driver_app
-- ----------------------------
DROP TABLE IF EXISTS `base_info_driver_app`;
CREATE TABLE `base_info_driver_app`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `driver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员手机号',
  `net_type` int(1) NOT NULL COMMENT '手机运营商',
  `app_version` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '使用APP版本号',
  `map_type` int(1) NOT NULL COMMENT '使用地图类型',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驾驶员移动终端信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_driver_app
-- ----------------------------
INSERT INTO `base_info_driver_app` VALUES ('4001', 1, '5', '9', 9, '9', 9, 9, 9, 9, '9', '2018-02-24', '9');

-- ----------------------------
-- Table structure for base_info_driver_educate
-- ----------------------------
DROP TABLE IF EXISTS `base_info_driver_educate`;
CREATE TABLE `base_info_driver_educate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员培训课程名称',
  `course_date` bigint(8) NOT NULL COMMENT '培训课程日期',
  `start_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '培训开始时间',
  `stop_time` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '培训结束时间',
  `duration` int(10) NOT NULL COMMENT '培训时长',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `course_date`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车驾驶员培训信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_driver_educate
-- ----------------------------
INSERT INTO `base_info_driver_educate` VALUES (1, '4001', 1, '5', '1', 1, '1', '1', 1, 1, 1, '1', '2018-03-21', NULL);

-- ----------------------------
-- Table structure for base_info_driver_stat
-- ----------------------------
DROP TABLE IF EXISTS `base_info_driver_stat`;
CREATE TABLE `base_info_driver_stat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证编号',
  `cycle` bigint(6) NOT NULL COMMENT '统计周期',
  `order_count` int(10) NOT NULL COMMENT '完成订单次数',
  `traffic_violation_count` int(32) NOT NULL COMMENT '交通违章次数',
  `complained_count` int(32) NOT NULL COMMENT '被投诉次数',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `cycle`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驾驶员统计信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_info_passenger
-- ----------------------------
DROP TABLE IF EXISTS `base_info_passenger`;
CREATE TABLE `base_info_passenger`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `register_date` bigint(8) NOT NULL COMMENT '注册日期',
  `passenger_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '乘客手机号',
  `passenger_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乘客称谓',
  `passenger_gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乘客性别',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`passenger_phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '乘客基本信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_info_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `base_info_vehicle`;
CREATE TABLE `base_info_vehicle`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '车辆所在城市',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `plate_color` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车牌颜色',
  `seats` int(10) NOT NULL COMMENT '核定载客位',
  `brand` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆厂牌',
  `model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆型号',
  `vehicle_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型',
  `owner_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆所有人',
  `vehicle_color` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车身颜色',
  `engine_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发动机号',
  `vin` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆VIN码',
  `certify_date_a` bigint(8) NOT NULL COMMENT '车辆注册日期',
  `fuel_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆燃料类型',
  `engine_displace` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发动机排量',
  `photo_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆照片文件编号',
  `certificate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运输证字号',
  `trans_agency` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆运输证发证机构',
  `trans_area` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆经营区域',
  `trans_date_start` bigint(8) NOT NULL COMMENT '车辆运输证有效期起',
  `trans_date_stop` bigint(8) NOT NULL COMMENT '车辆运输证有效期止',
  `certify_date_b` bigint(8) NOT NULL COMMENT '车辆初次登记日期',
  `fix_state` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆检修状态',
  `next_fix_date` bigint(8) NULL DEFAULT NULL COMMENT '车辆下次年检时间',
  `check_state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆年度审验状态',
  `fee_print_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发票打印设备序列号',
  `gpsbrand` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卫星定位装置品牌',
  `gpsmodel` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卫星定位装置型号',
  `gpsimei` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卫星定位装置IMEI号',
  `gpsinstall_date` bigint(8) NOT NULL COMMENT '卫星定位设备安装日期',
  `register_date` bigint(8) NOT NULL COMMENT '报备日期',
  `commercial_type` int(1) NOT NULL COMMENT '服务类型',
  `fare_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运价类型编码',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`, `vehicle_no`) USING BTREE,
  INDEX `FK9coitp85r20totttajjbtv8ay`(`address`) USING BTREE,
  CONSTRAINT `FKjalblef7rc8uutkjf9tve0ydu` FOREIGN KEY (`company_id`) REFERENCES `base_info_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_vehicle
-- ----------------------------
INSERT INTO `base_info_vehicle` VALUES ('1', 220282, '吉B88881', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220282, '吉B88882', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B88883', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B88884', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B88885', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B88886', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B88887', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220202, '吉B88888', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B8888A', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220203, '吉B8888B', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220204, '吉B8888C', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220211, '吉B8888D', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);
INSERT INTO `base_info_vehicle` VALUES ('1', 220221, '吉B8888E', '黑色', 1, '2', '3', '4', '5', '6', '7', '8', 9, '0', '11', '12', '13', '14', '15', 16, 17, 18, '19', 20, '21', '22', '23', '24', '25', 26, 27, 28, '29', 30, 31, 32, '33', '2019-03-18', NULL);

-- ----------------------------
-- Table structure for base_info_vehicle_insurance
-- ----------------------------
DROP TABLE IF EXISTS `base_info_vehicle_insurance`;
CREATE TABLE `base_info_vehicle_insurance`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `insur_com` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保险公司名称',
  `insur_num` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保险号',
  `insur_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保险类型',
  `insur_count` decimal(8, 2) NOT NULL COMMENT '保险金额',
  `insur_eff` bigint(8) NOT NULL COMMENT '保险生效时间',
  `insur_exp` bigint(8) NOT NULL COMMENT '保险到期时间',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`vehicle_no`, `insur_num`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆保险信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_vehicle_insurance
-- ----------------------------
INSERT INTO `base_info_vehicle_insurance` VALUES (123, '1', '1', 'a', 'b', 'c', 0.00, 1, 2, 3, 4, 'i', '2019-03-16', 'k');

-- ----------------------------
-- Table structure for base_info_vehicle_total_mile
-- ----------------------------
DROP TABLE IF EXISTS `base_info_vehicle_total_mile`;
CREATE TABLE `base_info_vehicle_total_mile`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `total_mile` decimal(62, 2) NOT NULL COMMENT '行驶总里程',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(156) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`vehicle_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网约车车辆里程信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_info_vehicle_total_mile
-- ----------------------------
INSERT INTO `base_info_vehicle_total_mile` VALUES ('1', 123, '1', 9999.00, 1, 1, '1', '2019-03-08', '1');

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL,
  `refresh_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO `oauth_access_token` VALUES ('7ef9e74fede607817257672278ccad26', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000169A785FA1F787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002464343963356231642D383263382D343766362D626231382D6232636566383263653963647371007E000977080000016A1EC79B7978737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000027400047265616474000577726974657874000662656172657274002433373839653963382D646436332D346437312D623563662D336538626162373939623962, 'c946268535eb8317f6cc48a8ea483909', 'user', 'client_cspt_web', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B7870740004555345527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000F636C69656E745F637370745F776562737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000374000A6772616E745F7479706574000870617373776F7264740009636C69656E745F696474000F636C69656E745F637370745F776562740008757365726E616D657400047573657278737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E0025770C000000103F400000000000017371007E000D74000455534552787371007E001A3F40000000000000770800000010000000007870707371007E0025770C000000103F40000000000000787371007E0025770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0032737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000474000D636C69656E745F73656372657474000950407373773072642E71007E001C71007E001D71007E001E71007E001F71007E002071007E002178007073720019636F6D2E6361722E61646D696E2E656E746974792E55736572B2C2BCECE1AA716702000D5A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0005656D61696C71007E000E4C00126772616E746564417574686F72697469657371007E00044C000269647400104C6A6176612F6C616E672F4C6F6E673B4C00066D6F62696C6571007E000E4C00046E616D6571007E000E4C000870617373776F726471007E000E4C00067374617475737400114C6A6176612F6C616E672F53686F72743B4C0008757365726E616D6571007E000E787000000000737200126A6176612E73716C2E54696D657374616D702618D5C80153BF650200014900056E616E6F737872000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001693E8A3DA8780000000074000531323331337371007E000B0000000177040000000173720026636F6D2E6361722E61646D696E2E656E746974792E494772616E746564417574686F72697479852D6707A66FB8520200014C0009617574686F7269747971007E000E787071007E0010787372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000731323331333133740006E5BCA0E4B88974003C24326124313024646F6A745A6E6C3777622F306F787036424D784A457541354F4F703355655463417A30504255664F467270614346574652545070757372000F6A6176612E6C616E672E53686F7274684D37133460DA5202000153000576616C75657871007E0044000074000475736572, '3565c0370dd23f4c7a619f6326d47f25');

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resource_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorized_grant_types` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorities` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_token_validity` int(11) NULL DEFAULT NULL,
  `refresh_token_validity` int(11) NULL DEFAULT NULL,
  `additional_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `autoapprove` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('client_cspt_web', '', '$2a$10$pg9u9C44.hFWeMtpghJsN.wQ8KxfpyvgDOGApZLe4Ufsv2.cdE75q', 'read,write', 'refresh_token,password', NULL, 'USER', 2592000, 50000, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
INSERT INTO `oauth_refresh_token` VALUES ('3565c0370dd23f4c7a619f6326d47f25', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002464343963356231642D383263382D343766362D626231382D6232636566383263653963647372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016A1EC79B7978, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B7870740004555345527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000F636C69656E745F637370745F776562737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000374000A6772616E745F7479706574000870617373776F7264740009636C69656E745F696474000F636C69656E745F637370745F776562740008757365726E616D657400047573657278737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E0025770C000000103F400000000000017371007E000D74000455534552787371007E001A3F40000000000000770800000010000000007870707371007E0025770C000000103F40000000000000787371007E0025770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0032737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000474000D636C69656E745F73656372657474000950407373773072642E71007E001C71007E001D71007E001E71007E001F71007E002071007E002178007073720019636F6D2E6361722E61646D696E2E656E746974792E55736572B2C2BCECE1AA716702000D5A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0005656D61696C71007E000E4C00126772616E746564417574686F72697469657371007E00044C000269647400104C6A6176612F6C616E672F4C6F6E673B4C00066D6F62696C6571007E000E4C00046E616D6571007E000E4C000870617373776F726471007E000E4C00067374617475737400114C6A6176612F6C616E672F53686F72743B4C0008757365726E616D6571007E000E787000000000737200126A6176612E73716C2E54696D657374616D702618D5C80153BF650200014900056E616E6F737872000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001693E8A3DA8780000000074000531323331337371007E000B0000000177040000000173720026636F6D2E6361722E61646D696E2E656E746974792E494772616E746564417574686F72697479852D6707A66FB8520200014C0009617574686F7269747971007E000E787071007E0010787372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000731323331333133740006E5BCA0E4B88974003C24326124313024646F6A745A6E6C3777622F306F787036424D784A457541354F4F703355655463417A30504255664F467270614346574652545070757372000F6A6176612E6C616E672E53686F7274684D37133460DA5202000153000576616C75657871007E0044000074000475736572);

-- ----------------------------
-- Table structure for operate_arrive
-- ----------------------------
DROP TABLE IF EXISTS `operate_arrive`;
CREATE TABLE `operate_arrive`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `dest_longitude` bigint(10) NOT NULL COMMENT '车辆到达经度',
  `dest_latitude` bigint(10) NOT NULL COMMENT '车辆到达纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `dest_time` bigint(14) NOT NULL COMMENT '下车时间',
  `drive_mile` decimal(8, 2) NOT NULL COMMENT '载客里程',
  `drive_time` int(10) NOT NULL COMMENT '载客时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '经营到达接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operate_depart
-- ----------------------------
DROP TABLE IF EXISTS `operate_depart`;
CREATE TABLE `operate_depart`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `fare_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运价类型编码',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `dep_longitude` bigint(10) NOT NULL COMMENT '车辆出发经度',
  `dep_latitude` bigint(10) NOT NULL COMMENT '车辆出发纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `dep_time` bigint(14) NOT NULL COMMENT '上车时间',
  `wait_mile` decimal(8, 2) NULL DEFAULT NULL COMMENT '空驶里程',
  `wait_time` int(10) NULL DEFAULT NULL COMMENT '等待时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '经营出发接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operate_login
-- ----------------------------
DROP TABLE IF EXISTS `operate_login`;
CREATE TABLE `operate_login`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `login_time` bigint(14) NOT NULL COMMENT '车辆经营上线时间',
  `longitude` bigint(10) NULL DEFAULT NULL COMMENT '上线经度',
  `latitude` bigint(10) NULL DEFAULT NULL COMMENT '上线纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `vehicle_no`, `login_time`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆经营上线接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operate_logout
-- ----------------------------
DROP TABLE IF EXISTS `operate_logout`;
CREATE TABLE `operate_logout`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `logout_time` bigint(14) NOT NULL COMMENT '车辆经营下线时间',
  `longitude` bigint(10) NOT NULL COMMENT '下线经度',
  `latitude` bigint(10) NULL DEFAULT NULL COMMENT '下线纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `vehicle_no`, `logout_time`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆经营下线接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operate_pay
-- ----------------------------
DROP TABLE IF EXISTS `operate_pay`;
CREATE TABLE `operate_pay`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网约车公司标识',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `on_area` int(6) NOT NULL COMMENT '上车位置行政区划编号',
  `driver_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机动车驾驶员姓名',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `fare_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运价类型编码',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `book_dep_time` bigint(14) NOT NULL COMMENT '预计上车时间',
  `wait_time` int(10) NULL DEFAULT NULL COMMENT '等待时间',
  `dep_longitude` bigint(10) NOT NULL COMMENT '车辆出发经度',
  `dep_latitude` bigint(10) NOT NULL COMMENT '车辆出发纬度',
  `dep_area` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上车地点',
  `dep_time` bigint(14) NOT NULL COMMENT '上车时间',
  `dest_longitude` bigint(10) NOT NULL COMMENT '车辆到达经度',
  `dest_latitude` bigint(10) NOT NULL COMMENT '车辆到达纬度',
  `dest_area` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下车地点',
  `dest_time` bigint(14) NOT NULL COMMENT '下车时间',
  `book_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预定车型',
  `model` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实际使用车型',
  `drive_mile` decimal(8, 2) NOT NULL COMMENT '载客里程',
  `drive_time` int(10) NOT NULL COMMENT '载客时间',
  `wait_mile` decimal(8, 2) NULL DEFAULT NULL COMMENT '空驶里程',
  `fact_price` decimal(8, 2) NOT NULL COMMENT '实收金额',
  `price` decimal(8, 2) NULL DEFAULT NULL COMMENT '应收金额',
  `cash_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '现金支付金额',
  `line_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子支付机构',
  `line_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '电子支付金额',
  `pos_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'POS机支付机构',
  `pos_price` decimal(8, 2) NULL DEFAULT NULL COMMENT 'POS机支付金额',
  `benfit_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `book_tip` decimal(8, 2) NULL DEFAULT NULL COMMENT '预约服务费',
  `passenger_tip` decimal(8, 2) NULL DEFAULT NULL COMMENT '附加费',
  `peak_up_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '高峰时段时间加价金额',
  `night_up_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '夜间时段里程加价金额',
  `far_up_price` decimal(8, 2) NOT NULL COMMENT '远途加价金额',
  `other_up_price` decimal(8, 2) NOT NULL COMMENT '其他加价金额',
  `pay_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结算状态',
  `pay_time` bigint(14) NULL DEFAULT NULL COMMENT '乘客结算时间',
  `order_match_time` bigint(14) NULL DEFAULT NULL COMMENT '订单完成时间',
  `invoice_status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发票状态',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '经营支付接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_cancel
-- ----------------------------
DROP TABLE IF EXISTS `order_cancel`;
CREATE TABLE `order_cancel`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '上车地点行政区划代码',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `order_time` bigint(14) NULL DEFAULT NULL COMMENT '订单时间',
  `cancel_time` bigint(14) NOT NULL COMMENT '订单撤销时间',
  `operator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '撤销发起方',
  `cancel_type_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '撤销类型代码',
  `cancel_reason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '撤销或违约原因',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单撤销接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_create
-- ----------------------------
DROP TABLE IF EXISTS `order_create`;
CREATE TABLE `order_create`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '发起地行政区划代码',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `depart_time` bigint(14) NOT NULL COMMENT '预计用车时间',
  `order_time` bigint(14) NOT NULL COMMENT '订单发起时间',
  `passenger_note` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乘客备注',
  `departure` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预计出发地点详细地址',
  `dep_longitude` bigint(10) NOT NULL COMMENT '预计出发地点经度',
  `dep_latitude` bigint(10) NOT NULL COMMENT '预计出发地点纬度',
  `destination` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预计目的地',
  `dest_longitude` bigint(10) NOT NULL COMMENT '预计目的地经度',
  `dest_latitude` bigint(10) NOT NULL COMMENT '预计目的地纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `fare_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运价类型编码',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单发起接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_create
-- ----------------------------
INSERT INTO `order_create` VALUES ('1', 220121, '111', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220122, '112', 123, 20190121, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220123, '113', 123, 20190101, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '114', 123, 20190118, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '115', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '116', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '117', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '118', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220211, '119', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220211, '120', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220211, '121', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '122', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');
INSERT INTO `order_create` VALUES ('1', 220100, '123', 123, 20190111, '123', '123', 123, 123, '123', 123, 123, 123, '123', '123', '2019-03-12', '123');

-- ----------------------------
-- Table structure for order_match
-- ----------------------------
DROP TABLE IF EXISTS `order_match`;
CREATE TABLE `order_match`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NOT NULL COMMENT '发起地行政区划代码',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `longitude` bigint(10) NOT NULL COMMENT '车辆经度',
  `latitude` bigint(10) NULL DEFAULT NULL COMMENT '车辆纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证编号',
  `driver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员手机号',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `distribute_time` bigint(14) NOT NULL COMMENT '派单成功时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FKlext87mqxxjhbdoe0ccdy3paq`(`company_id`) USING BTREE,
  CONSTRAINT `FKbnh1vl18y6b0c4a3fu8pyukmw` FOREIGN KEY (`order_id`) REFERENCES `order_create` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKlext87mqxxjhbdoe0ccdy3paq` FOREIGN KEY (`company_id`) REFERENCES `base_info_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单成功接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_match
-- ----------------------------
INSERT INTO `order_match` VALUES ('1', 123, '111', 123, 123, 123, '123', '123', '123', 123, '123', '2019-03-12', '123');

-- ----------------------------
-- Table structure for position_driver
-- ----------------------------
DROP TABLE IF EXISTS `position_driver`;
CREATE TABLE `position_driver`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `driver_region_code` int(6) NOT NULL COMMENT '行政区划代码',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `position_time` bigint(14) NOT NULL COMMENT '定位时间',
  `longitude` bigint(10) NOT NULL COMMENT '经度',
  `latitude` bigint(10) NOT NULL COMMENT '纬度',
  `encrypt` int(10) NULL DEFAULT NULL COMMENT '坐标加密标识',
  `direction` int(10) NULL DEFAULT NULL COMMENT '方位角',
  `elevation` int(10) NULL DEFAULT NULL COMMENT '海拔高度',
  `speed` int(10) NULL DEFAULT NULL COMMENT '瞬时速度',
  `biz_status` int(10) NULL DEFAULT NULL COMMENT '营运状态',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `position_time`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驾驶员定位信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for position_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `position_vehicle`;
CREATE TABLE `position_vehicle`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `vehicle_region_code` int(6) NOT NULL COMMENT '行政区划代码',
  `position_time` bigint(14) NOT NULL COMMENT '定位时间',
  `longitude` bigint(10) NOT NULL COMMENT '经度',
  `latitude` bigint(10) NOT NULL COMMENT '纬度',
  `speed` int(10) NULL DEFAULT NULL COMMENT '瞬时速度',
  `direction` int(10) NULL DEFAULT NULL COMMENT '方向角',
  `elevation` int(10) NULL DEFAULT NULL COMMENT '海拔高度',
  `mileage` decimal(8, 2) NULL DEFAULT NULL COMMENT '行驶里程',
  `encrypt` int(10) NULL DEFAULT NULL COMMENT '坐标加密标识',
  `warn_status` int(10) NULL DEFAULT NULL COMMENT '预警状态',
  `veh_status` int(10) NULL DEFAULT NULL COMMENT '车辆状态',
  `biz_status` int(10) NULL DEFAULT NULL COMMENT '营运状态',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`vehicle_no`, `position_time`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆定位信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rated_driver
-- ----------------------------
DROP TABLE IF EXISTS `rated_driver`;
CREATE TABLE `rated_driver`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证编号',
  `level` int(10) NOT NULL COMMENT '服务质量信誉等级',
  `test_date` bigint(8) NOT NULL COMMENT '服务质量信誉考核日期',
  `test_department` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务质量信誉考核机构',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `test_date`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驾驶员信誉信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rated_driver_punish
-- ----------------------------
DROP TABLE IF EXISTS `rated_driver_punish`;
CREATE TABLE `rated_driver_punish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证编号',
  `punish_time` bigint(14) NOT NULL COMMENT '处罚时间',
  `punish_reason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处罚原因',
  `punish_result` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '处罚结果',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`license_id`, `punish_time`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驾驶员处罚信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rated_passenger
-- ----------------------------
DROP TABLE IF EXISTS `rated_passenger`;
CREATE TABLE `rated_passenger`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `evaluate_time` bigint(14) NOT NULL COMMENT '评价时间',
  `service_score` int(10) NOT NULL COMMENT '服务满意度',
  `driver_score` int(10) NULL DEFAULT NULL COMMENT '驾驶员满意度',
  `vehicle_score` int(10) NULL DEFAULT NULL COMMENT '车辆满意度',
  `detail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价内容',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '乘客评价信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rated_passenger
-- ----------------------------
INSERT INTO `rated_passenger` VALUES ('1', '1', 2, 2, 3, 4, '5', '6', '2018-03-17', '1');

-- ----------------------------
-- Table structure for rated_passenger_complaint
-- ----------------------------
DROP TABLE IF EXISTS `rated_passenger_complaint`;
CREATE TABLE `rated_passenger_complaint`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `complaint_time` bigint(14) NOT NULL COMMENT '投诉时间',
  `detail` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '投诉内容',
  `result` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理结果',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '乘客投诉信息接口' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for share_company
-- ----------------------------
DROP TABLE IF EXISTS `share_company`;
CREATE TABLE `share_company`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `company_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `identifier` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统一社会信用代码',
  `address` int(6) NOT NULL COMMENT '注册地行政区划代码',
  `contact_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通信地址',
  `economic_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '经营业户经济类型',
  `legal_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表姓名',
  `legal_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人代表电话',
  `state` int(1) NOT NULL COMMENT '状态',
  `flag` int(1) NOT NULL COMMENT '操作标识',
  `update_time` bigint(14) NOT NULL COMMENT '更新时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '私人小客车基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for share_order
-- ----------------------------
DROP TABLE IF EXISTS `share_order`;
CREATE TABLE `share_order`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NULL DEFAULT NULL COMMENT '行政区划代码',
  `route_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员发起行程编号',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '乘客合乘订单号',
  `book_depart_time` bigint(14) NOT NULL COMMENT '预计上车时间',
  `departure` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预计上车地点',
  `dep_longitude` bigint(10) NOT NULL COMMENT '预计上车地点经度',
  `dep_latitude` bigint(10) NOT NULL COMMENT '预计上车地点纬度',
  `destination` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预计下车地点',
  `dest_longitude` bigint(10) NOT NULL COMMENT '预计下车地点经度',
  `dest_latitude` bigint(10) NOT NULL COMMENT '预计下车地点纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `order_ensure_time` bigint(14) NOT NULL COMMENT '订单确认时间',
  `passenger_num` int(10) NOT NULL COMMENT '乘客人数',
  `passenger_note` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乘客备注',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '私人小客车合乘订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for share_pay
-- ----------------------------
DROP TABLE IF EXISTS `share_pay`;
CREATE TABLE `share_pay`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NULL DEFAULT NULL COMMENT '行政区划代码',
  `route_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员发起行程编号',
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '乘客合乘订单号',
  `driver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员手机号',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `fare_type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运价类型编码',
  `book_depart_time` bigint(14) NOT NULL COMMENT '预计上车时间',
  `depart_time` bigint(14) NOT NULL COMMENT '实际上车时间',
  `departure` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上车地点',
  `dep_longitude` bigint(10) NOT NULL COMMENT '上车地点经度',
  `dep_latitude` bigint(10) NOT NULL COMMENT '上车地点纬度',
  `dest_time` bigint(14) NOT NULL COMMENT '下车时间',
  `destination` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '下车地点',
  `dest_longitude` bigint(10) NOT NULL COMMENT '下车地点经度',
  `dest_latitude` bigint(10) NOT NULL COMMENT '下车地点纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `drive_mile` decimal(8, 2) NOT NULL COMMENT '载客里程',
  `drive_time` int(10) NOT NULL COMMENT '载客时间',
  `fact_price` decimal(8, 2) NOT NULL COMMENT '实收金额',
  `price` decimal(8, 2) NOT NULL COMMENT '应收金额',
  `cash_price` decimal(8, 2) NOT NULL COMMENT '现金支付金额',
  `line_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子支付机构',
  `line_price` decimal(8, 2) NOT NULL COMMENT '电子支付金额',
  `benfit_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '优惠金额',
  `share_fuel_fee` decimal(8, 2) NULL DEFAULT NULL COMMENT '燃料成本分摊金额',
  `share_highway_toll` decimal(8, 2) NULL DEFAULT NULL COMMENT '路桥通行分摊金额',
  `passenger_tip` decimal(8, 2) NULL DEFAULT NULL COMMENT '附加费',
  `share_other` decimal(8, 2) NULL DEFAULT NULL COMMENT '其他费用分摊金额',
  `pay_state` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结算状态',
  `passenger_num` int(10) NOT NULL COMMENT '乘客人数',
  `pay_time` bigint(14) NULL DEFAULT NULL COMMENT '乘客结算时间',
  `order_match_time` bigint(14) NULL DEFAULT NULL COMMENT '订单完成时间',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '私人小客车合乘订单支付' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for share_route
-- ----------------------------
DROP TABLE IF EXISTS `share_route`;
CREATE TABLE `share_route`  (
  `company_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司标识',
  `address` int(6) NULL DEFAULT NULL COMMENT '行政区划代码',
  `route_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员发起行程编号',
  `driver_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员姓名',
  `driver_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '驾驶员手机号',
  `license_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机动车驾驶证号',
  `vehicle_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆号牌',
  `departure` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '行程出发地点',
  `dep_longitude` bigint(10) NOT NULL COMMENT '车辆出发经度',
  `dep_latitude` bigint(10) NOT NULL COMMENT '车辆出发纬度',
  `destination` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '行程达到地点',
  `dest_longitude` bigint(10) NOT NULL COMMENT '到达地经度',
  `dest_latitude` bigint(10) NOT NULL COMMENT '到达地纬度',
  `encrypt` int(1) NOT NULL COMMENT '坐标加密标识',
  `route_create_time` bigint(14) NOT NULL COMMENT '行程发布时间',
  `route_mile` decimal(8, 2) NULL DEFAULT NULL COMMENT '行程预计里程',
  `route_note` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行程备注',
  `reserved` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保留字段',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `data_source` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  PRIMARY KEY (`route_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '私人小客车合乘驾驶员行程发布' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b', '李四', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', 1, 1, '2016-11-11 11:11:11');
INSERT INTO `sys_user` VALUES (2, 'user', '$2a$10$dojtZnl7wb/0oxp6BMxJEuA5OOp3UeTcAz0PBUfOFrpaCFWFRTPpu', '张三', NULL, '12313', '1231313', 0, NULL, '2019-03-02 21:14:01');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for v_order_info
-- ----------------------------
DROP VIEW IF EXISTS `v_order_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_order_info` AS select `a`.`order_id` AS `order_id`,`x`.`company_name` AS `company_name`,`a`.`address` AS `address`,`a`.`order_time` AS `order_time`,`b`.`vehicle_no` AS `vehicle_no`,`b`.`license_id` AS `license_id`,`b`.`driver_phone` AS `driver_phone`,if((`d`.`pay_time` is not null),'完成',if((`c`.`cancel_time` is not null),'注销',if((`b`.`distribute_time` is not null),'运行','未派送'))) AS `order_state` from ((((`order_create` `a` join `base_info_company` `x` on((`a`.`company_id` = `x`.`company_id`))) left join `order_match` `b` on((`a`.`order_id` = `b`.`order_id`))) left join `order_cancel` `c` on((`a`.`order_id` = `c`.`order_id`))) left join `operate_pay` `d` on((`a`.`order_id` = `d`.`order_id`)));

SET FOREIGN_KEY_CHECKS = 1;
