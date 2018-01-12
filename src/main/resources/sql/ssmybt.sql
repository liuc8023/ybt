/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : ssmybt

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-12 15:46:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `countryname` varchar(255) DEFAULT NULL COMMENT '名称',
  `countrycode` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COMMENT='国家信息';

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'Angola', 'AO');
INSERT INTO `country` VALUES ('2', 'Afghanistan', 'AF');
INSERT INTO `country` VALUES ('3', 'Albania', 'AL');
INSERT INTO `country` VALUES ('4', 'Algeria', 'DZ');
INSERT INTO `country` VALUES ('5', 'Andorra', 'AD');
INSERT INTO `country` VALUES ('6', 'Anguilla', 'AI');
INSERT INTO `country` VALUES ('7', 'Antigua and Barbuda', 'AG');
INSERT INTO `country` VALUES ('8', 'Argentina', 'AR');
INSERT INTO `country` VALUES ('9', 'Armenia', 'AM');
INSERT INTO `country` VALUES ('10', 'Australia', 'AU');
INSERT INTO `country` VALUES ('11', 'Austria', 'AT');
INSERT INTO `country` VALUES ('12', 'Azerbaijan', 'AZ');
INSERT INTO `country` VALUES ('13', 'Bahamas', 'BS');
INSERT INTO `country` VALUES ('14', 'Bahrain', 'BH');
INSERT INTO `country` VALUES ('15', 'Bangladesh', 'BD');
INSERT INTO `country` VALUES ('16', 'Barbados', 'BB');
INSERT INTO `country` VALUES ('17', 'Belarus', 'BY');
INSERT INTO `country` VALUES ('18', 'Belgium', 'BE');
INSERT INTO `country` VALUES ('19', 'Belize', 'BZ');
INSERT INTO `country` VALUES ('20', 'Benin', 'BJ');
INSERT INTO `country` VALUES ('21', 'Bermuda Is.', 'BM');
INSERT INTO `country` VALUES ('22', 'Bolivia', 'BO');
INSERT INTO `country` VALUES ('23', 'Botswana', 'BW');
INSERT INTO `country` VALUES ('24', 'Brazil', 'BR');
INSERT INTO `country` VALUES ('25', 'Brunei', 'BN');
INSERT INTO `country` VALUES ('26', 'Bulgaria', 'BG');
INSERT INTO `country` VALUES ('27', 'Burkina-faso', 'BF');
INSERT INTO `country` VALUES ('28', 'Burma', 'MM');
INSERT INTO `country` VALUES ('29', 'Burundi', 'BI');
INSERT INTO `country` VALUES ('30', 'Cameroon', 'CM');
INSERT INTO `country` VALUES ('31', 'Canada', 'CA');
INSERT INTO `country` VALUES ('32', 'Central African Republic', 'CF');
INSERT INTO `country` VALUES ('33', 'Chad', 'TD');
INSERT INTO `country` VALUES ('34', 'Chile', 'CL');
INSERT INTO `country` VALUES ('35', 'China', 'CN');
INSERT INTO `country` VALUES ('36', 'Colombia', 'CO');
INSERT INTO `country` VALUES ('37', 'Congo', 'CG');
INSERT INTO `country` VALUES ('38', 'Cook Is.', 'CK');
INSERT INTO `country` VALUES ('39', 'Costa Rica', 'CR');
INSERT INTO `country` VALUES ('40', 'Cuba', 'CU');
INSERT INTO `country` VALUES ('41', 'Cyprus', 'CY');
INSERT INTO `country` VALUES ('42', 'Czech Republic', 'CZ');
INSERT INTO `country` VALUES ('43', 'Denmark', 'DK');
INSERT INTO `country` VALUES ('44', 'Djibouti', 'DJ');
INSERT INTO `country` VALUES ('45', 'Dominica Rep.', 'DO');
INSERT INTO `country` VALUES ('46', 'Ecuador', 'EC');
INSERT INTO `country` VALUES ('47', 'Egypt', 'EG');
INSERT INTO `country` VALUES ('48', 'EI Salvador', 'SV');
INSERT INTO `country` VALUES ('49', 'Estonia', 'EE');
INSERT INTO `country` VALUES ('50', 'Ethiopia', 'ET');
INSERT INTO `country` VALUES ('51', 'Fiji', 'FJ');
INSERT INTO `country` VALUES ('52', 'Finland', 'FI');
INSERT INTO `country` VALUES ('53', 'France', 'FR');
INSERT INTO `country` VALUES ('54', 'French Guiana', 'GF');
INSERT INTO `country` VALUES ('55', 'Gabon', 'GA');
INSERT INTO `country` VALUES ('56', 'Gambia', 'GM');
INSERT INTO `country` VALUES ('57', 'Georgia', 'GE');
INSERT INTO `country` VALUES ('58', 'Germany', 'DE');
INSERT INTO `country` VALUES ('59', 'Ghana', 'GH');
INSERT INTO `country` VALUES ('60', 'Gibraltar', 'GI');
INSERT INTO `country` VALUES ('61', 'Greece', 'GR');
INSERT INTO `country` VALUES ('62', 'Grenada', 'GD');
INSERT INTO `country` VALUES ('63', 'Guam', 'GU');
INSERT INTO `country` VALUES ('64', 'Guatemala', 'GT');
INSERT INTO `country` VALUES ('65', 'Guinea', 'GN');
INSERT INTO `country` VALUES ('66', 'Guyana', 'GY');
INSERT INTO `country` VALUES ('67', 'Haiti', 'HT');
INSERT INTO `country` VALUES ('68', 'Honduras', 'HN');
INSERT INTO `country` VALUES ('69', 'Hongkong', 'HK');
INSERT INTO `country` VALUES ('70', 'Hungary', 'HU');
INSERT INTO `country` VALUES ('71', 'Iceland', 'IS');
INSERT INTO `country` VALUES ('72', 'India', 'IN');
INSERT INTO `country` VALUES ('73', 'Indonesia', 'ID');
INSERT INTO `country` VALUES ('74', 'Iran', 'IR');
INSERT INTO `country` VALUES ('75', 'Iraq', 'IQ');
INSERT INTO `country` VALUES ('76', 'Ireland', 'IE');
INSERT INTO `country` VALUES ('77', 'Israel', 'IL');
INSERT INTO `country` VALUES ('78', 'Italy', 'IT');
INSERT INTO `country` VALUES ('79', 'Jamaica', 'JM');
INSERT INTO `country` VALUES ('80', 'Japan', 'JP');
INSERT INTO `country` VALUES ('81', 'Jordan', 'JO');
INSERT INTO `country` VALUES ('82', 'Kampuchea (Cambodia )', 'KH');
INSERT INTO `country` VALUES ('83', 'Kazakstan', 'KZ');
INSERT INTO `country` VALUES ('84', 'Kenya', 'KE');
INSERT INTO `country` VALUES ('85', 'Korea', 'KR');
INSERT INTO `country` VALUES ('86', 'Kuwait', 'KW');
INSERT INTO `country` VALUES ('87', 'Kyrgyzstan', 'KG');
INSERT INTO `country` VALUES ('88', 'Laos', 'LA');
INSERT INTO `country` VALUES ('89', 'Latvia', 'LV');
INSERT INTO `country` VALUES ('90', 'Lebanon', 'LB');
INSERT INTO `country` VALUES ('91', 'Lesotho', 'LS');
INSERT INTO `country` VALUES ('92', 'Liberia', 'LR');
INSERT INTO `country` VALUES ('93', 'Libya', 'LY');
INSERT INTO `country` VALUES ('94', 'Liechtenstein', 'LI');
INSERT INTO `country` VALUES ('95', 'Lithuania', 'LT');
INSERT INTO `country` VALUES ('96', 'Luxembourg', 'LU');
INSERT INTO `country` VALUES ('97', 'Macao', 'MO');
INSERT INTO `country` VALUES ('98', 'Madagascar', 'MG');
INSERT INTO `country` VALUES ('99', 'Malawi', 'MW');
INSERT INTO `country` VALUES ('100', 'Malaysia', 'MY');
INSERT INTO `country` VALUES ('101', 'Maldives', 'MV');
INSERT INTO `country` VALUES ('102', 'Mali', 'ML');
INSERT INTO `country` VALUES ('103', 'Malta', 'MT');
INSERT INTO `country` VALUES ('104', 'Mauritius', 'MU');
INSERT INTO `country` VALUES ('105', 'Mexico', 'MX');
INSERT INTO `country` VALUES ('106', 'Moldova, Republic of', 'MD');
INSERT INTO `country` VALUES ('107', 'Monaco', 'MC');
INSERT INTO `country` VALUES ('108', 'Mongolia', 'MN');
INSERT INTO `country` VALUES ('109', 'Montserrat Is', 'MS');
INSERT INTO `country` VALUES ('110', 'Morocco', 'MA');
INSERT INTO `country` VALUES ('111', 'Mozambique', 'MZ');
INSERT INTO `country` VALUES ('112', 'Namibia', 'NA');
INSERT INTO `country` VALUES ('113', 'Nauru', 'NR');
INSERT INTO `country` VALUES ('114', 'Nepal', 'NP');
INSERT INTO `country` VALUES ('115', 'Netherlands', 'NL');
INSERT INTO `country` VALUES ('116', 'New Zealand', 'NZ');
INSERT INTO `country` VALUES ('117', 'Nicaragua', 'NI');
INSERT INTO `country` VALUES ('118', 'Niger', 'NE');
INSERT INTO `country` VALUES ('119', 'Nigeria', 'NG');
INSERT INTO `country` VALUES ('120', 'North Korea', 'KP');
INSERT INTO `country` VALUES ('121', 'Norway', 'NO');
INSERT INTO `country` VALUES ('122', 'Oman', 'OM');
INSERT INTO `country` VALUES ('123', 'Pakistan', 'PK');
INSERT INTO `country` VALUES ('124', 'Panama', 'PA');
INSERT INTO `country` VALUES ('125', 'Papua New Cuinea', 'PG');
INSERT INTO `country` VALUES ('126', 'Paraguay', 'PY');
INSERT INTO `country` VALUES ('127', 'Peru', 'PE');
INSERT INTO `country` VALUES ('128', 'Philippines', 'PH');
INSERT INTO `country` VALUES ('129', 'Poland', 'PL');
INSERT INTO `country` VALUES ('130', 'French Polynesia', 'PF');
INSERT INTO `country` VALUES ('131', 'Portugal', 'PT');
INSERT INTO `country` VALUES ('132', 'Puerto Rico', 'PR');
INSERT INTO `country` VALUES ('133', 'Qatar', 'QA');
INSERT INTO `country` VALUES ('134', 'Romania', 'RO');
INSERT INTO `country` VALUES ('135', 'Russia', 'RU');
INSERT INTO `country` VALUES ('136', 'Saint Lueia', 'LC');
INSERT INTO `country` VALUES ('137', 'Saint Vincent', 'VC');
INSERT INTO `country` VALUES ('138', 'San Marino', 'SM');
INSERT INTO `country` VALUES ('139', 'Sao Tome and Principe', 'ST');
INSERT INTO `country` VALUES ('140', 'Saudi Arabia', 'SA');
INSERT INTO `country` VALUES ('141', 'Senegal', 'SN');
INSERT INTO `country` VALUES ('142', 'Seychelles', 'SC');
INSERT INTO `country` VALUES ('143', 'Sierra Leone', 'SL');
INSERT INTO `country` VALUES ('144', 'Singapore', 'SG');
INSERT INTO `country` VALUES ('145', 'Slovakia', 'SK');
INSERT INTO `country` VALUES ('146', 'Slovenia', 'SI');
INSERT INTO `country` VALUES ('147', 'Solomon Is', 'SB');
INSERT INTO `country` VALUES ('148', 'Somali', 'SO');
INSERT INTO `country` VALUES ('149', 'South Africa', 'ZA');
INSERT INTO `country` VALUES ('150', 'Spain', 'ES');
INSERT INTO `country` VALUES ('151', 'Sri Lanka', 'LK');
INSERT INTO `country` VALUES ('152', 'St.Lucia', 'LC');
INSERT INTO `country` VALUES ('153', 'St.Vincent', 'VC');
INSERT INTO `country` VALUES ('154', 'Sudan', 'SD');
INSERT INTO `country` VALUES ('155', 'Suriname', 'SR');
INSERT INTO `country` VALUES ('156', 'Swaziland', 'SZ');
INSERT INTO `country` VALUES ('157', 'Sweden', 'SE');
INSERT INTO `country` VALUES ('158', 'Switzerland', 'CH');
INSERT INTO `country` VALUES ('159', 'Syria', 'SY');
INSERT INTO `country` VALUES ('160', 'Taiwan', 'TW');
INSERT INTO `country` VALUES ('161', 'Tajikstan', 'TJ');
INSERT INTO `country` VALUES ('162', 'Tanzania', 'TZ');
INSERT INTO `country` VALUES ('163', 'Thailand', 'TH');
INSERT INTO `country` VALUES ('164', 'Togo', 'TG');
INSERT INTO `country` VALUES ('165', 'Tonga', 'TO');
INSERT INTO `country` VALUES ('166', 'Trinidad and Tobago', 'TT');
INSERT INTO `country` VALUES ('167', 'Tunisia', 'TN');
INSERT INTO `country` VALUES ('168', 'Turkey', 'TR');
INSERT INTO `country` VALUES ('169', 'Turkmenistan', 'TM');
INSERT INTO `country` VALUES ('170', 'Uganda', 'UG');
INSERT INTO `country` VALUES ('171', 'Ukraine', 'UA');
INSERT INTO `country` VALUES ('172', 'United Arab Emirates', 'AE');
INSERT INTO `country` VALUES ('173', 'United Kiongdom', 'GB');
INSERT INTO `country` VALUES ('174', 'United States of America', 'US');
INSERT INTO `country` VALUES ('175', 'Uruguay', 'UY');
INSERT INTO `country` VALUES ('176', 'Uzbekistan', 'UZ');
INSERT INTO `country` VALUES ('177', 'Venezuela', 'VE');
INSERT INTO `country` VALUES ('178', 'Vietnam', 'VN');
INSERT INTO `country` VALUES ('179', 'Yemen', 'YE');
INSERT INTO `country` VALUES ('180', 'Yugoslavia', 'YU');
INSERT INTO `country` VALUES ('181', 'Zimbabwe', 'ZW');
INSERT INTO `country` VALUES ('182', 'Zaire', 'ZR');
INSERT INTO `country` VALUES ('183', 'Zambia', 'ZM');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(36) NOT NULL COMMENT 'id',
  `create_date_time` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记(0启用，1禁用)',
  `update_date_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `code` varchar(200) DEFAULT NULL COMMENT '唯一编码',
  `levelCode` varchar(36) DEFAULT NULL COMMENT '层级编码',
  `name` varchar(200) DEFAULT NULL COMMENT '字典名称',
  `parent_id` varchar(200) DEFAULT NULL COMMENT '父级ID',
  `remark` longtext COMMENT '备注',
  `dictValue` varchar(200) DEFAULT NULL COMMENT '字典值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('402881ec54b7493f0154b7113e8f0008', null, '0', '2016-06-23 10:53:13', '1', 'INTENTION', '000029000002', '意向', '402881ec54b7493f0154b7545e8f0008', '', '');
INSERT INTO `sys_dict` VALUES ('402881ec54b7493f0154b7115e8f0008', null, '0', '2016-06-23 10:57:06', '1', 'FORMAL', '000029000003', '正式', '402881ec54b7493f0154b7545e8f0008', '', '');
INSERT INTO `sys_dict` VALUES ('402881ec54b7493f0154b7135e8f0008', null, '0', '2016-06-23 10:56:34', '1', 'CONSULTING', '000029000001', '咨询', '402881ec54b7493f0154b7545e8f0008', '', '');
INSERT INTO `sys_dict` VALUES ('402881ec54b7493f0154b75082770007', null, '0', null, '0', 'PPSITION', '000028', '职务', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881ec54b7493f0154b7514e8f0008', null, '0', null, '2', 'SELL', '000028000001', '销售', '402881ec54b7493f0154b75082770007', '', '');
INSERT INTO `sys_dict` VALUES ('402881ec54b7493f0154b7545e8f0008', null, '0', '2016-06-23 12:19:26', '4', 'STATES', '000029', '阶段', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881ef557b216701557b2f29cf0000', '2016-06-23 10:55:36', '0', '2016-06-23 10:55:36', '0', 'CLIENTLEVEL', '000080', '客户级别', null, null, null);
INSERT INTO `sys_dict` VALUES ('402881ef557b216701557b3111bc0001', '2016-06-23 10:57:41', '0', '2016-06-23 10:57:41', '0', 'CLIENTLEVEL_1', '000080000001', '战略客户', '402881ef557b216701557b2f29cf0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881ef557b216701557b31931a0002', '2016-06-23 10:58:14', '0', '2016-06-23 10:58:14', '0', 'CLIENTLEVEL_3', '000080000002', '一般客户', '402881ef557b216701557b2f29cf0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881ef557b216701557b31fca00003', '2016-06-23 10:58:41', '0', '2016-06-23 10:58:41', '0', 'CLIENTLEVEL_3', '000080000003', '重点客户', '402881ef557b216701557b2f29cf0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881ef557b216701557b45fca00003', null, '0', null, '0', 'POSITIONS', '000033', '职位', null, null, null);
INSERT INTO `sys_dict` VALUES ('402881ef557b216701565b45fca00003', null, '0', null, '0', 'MANAGER', '000033000001', '经理', '402881ef557b216701557b45fca00003', null, null);
INSERT INTO `sys_dict` VALUES ('402881ef557b216701675b45fca00003', null, '0', null, '0', 'CUSTOMER', '000033000002', '客服', '402881ef557b216701557b45fca00003', null, null);
INSERT INTO `sys_dict` VALUES ('402881f053b726080153b72893a60000', null, '0', '2016-08-24 20:54:20', '5', 'ACCOUNTCHECKTYPE', '000011', '对账类型', '', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053b726080153b7294a1d0001', null, '0', '2016-06-23 10:42:59', '4', 'MONTH_CHECK', '000011000001', '月结', '402881f053b726080153b72893a60000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053b726080153b72986f80002', null, '0', '2016-06-23 10:31:30', '3', 'HQ_CHECK', '000011000002', '票到', '402881f053b726080153b72893a60000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053b726080153b74586f80002', null, '0', '2016-06-23 10:42:48', '4', 'PRE_CHECK', '000011000003', '预付', '402881f053b726080153b72893a60000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd670d0153cd6d6be40000', null, '0', null, '2', 'EDUCATION', '000017', '学历', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd78bacf0000', null, '0', null, '0', 'EDUCATIONCOLLEGE', '000017000001', '本科', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd796ac90001', null, '0', null, '0', 'EDUCATIONHIGHSCHOOL', '000017000002', '高中', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd80b46c0002', null, '0', null, '0', 'EDUCATIONPRIMARY', '000017000003', '小学', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd8153450003', null, '0', null, '0', 'EDUCATIONJUNIOR', '000017000004', '初中', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd820b960004', null, '0', null, '0', 'EDUCATIONDOCTOR', '000017000005', '博士', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd82a79d0005', null, '0', null, '0', 'EDUCATIONMASTER', '000017000006', '硕士', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053cd72330153cd8384590006', null, '0', null, '0', 'EDUCATIONJUNIORCOLLEGE', '000017000007', '大专', '402881f053cd670d0153cd6d6be40000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4a845920001', null, '0', null, '0', 'TAXPAYERTYPE', '000019', '纳税人', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4a9d0f00002', null, '0', null, '0', 'GENERALTAXPAYER', '000019000001', '一般纳税人', '402881f053d4a5260153d4a845920001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4ab6b110003', null, '0', null, '0', 'SMALLSCALETAXPAYER', '000019000002', '小规模纳税人', '402881f053d4a5260153d4a845920001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4ab6b130003', null, '0', '2016-06-23 10:24:40', '1', 'GTAXPAYER', '000019000003', '个体工商户', '402881f053d4a5260153d4a845920001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4aceaf20004', null, '0', null, '0', 'CAPITALTYPE', '000020', '企业性质', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4ae22ee0005', null, '1', null, '1', 'OVERSEASFUNDED', '000020000001', '外资企业', '402881f053d4a5260153d4aceaf20004', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4aeadd20006', null, '0', null, '0', 'STATEOWNED', '000020000002', '国营企业', '402881f053d4a5260153d4aceaf20004', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4af6f1a0007', null, '0', null, '0', 'JOINTVENTURE', '000020000003', '合资企业', '402881f053d4a5260153d4aceaf20004', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4a5260153d4b0a80c0008', null, '0', null, '1', 'PRIVATE', '000020000004', '民营企业', '402881f053d4a5260153d4aceaf20004', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4eccd0153d5117aac0001', null, '0', '2016-06-21 10:33:20', '2', 'SETTLEMENTTYPE', '000021', '结算方式', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4eccd0153d512a8580002', null, '0', null, '1', 'HQ_SETTLE', '000021000001', '统一结算', '402881f053d4eccd0153d5117aac0001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053d4eccd0153d513a0260003', null, '0', null, '1', 'INDIVIDUAL_SETTLE', '000021000002', '独立结算', '402881f053d4eccd0153d5117aac0001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e570c0890001', null, '0', null, '0', 'NATION', '000023', '民族', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57116300002', null, '0', null, '0', 'NATION01', '000023000001', '汉族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5716e790003', null, '0', null, '0', 'NATION02', '000023000002', '蒙古族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e571c0f60004', null, '0', null, '0', 'NATION03', '000023000003', '回族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5723ada0005', null, '0', null, '0', 'NATION04', '000023000004', '藏族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57269ca0006', null, '0', null, '0', 'NATION05', '000023000005', '维吾尔族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57293c20007', null, '0', null, '0', 'NATION06', '000023000006', '苗族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e572e34c0008', null, '0', null, '0', 'NATION07', '000023000007', '彝族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5732caf0009', null, '0', null, '0', 'NATION08', '000023000008', '壮族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57366fb000a', null, '0', null, '0', 'NATION09', '000023000009', '布依族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5739474000b', null, '0', null, '0', 'NATION10', '000023000010', '朝鲜族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e573cc35000c', null, '0', null, '0', 'NATION11', '000023000011', '满族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5743c21000d', null, '0', null, '0', 'NATION12', '000023000012', '侗族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5747f53000e', null, '0', null, '0', 'NATION13', '000023000013', '瑶族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e574b560000f', null, '0', null, '0', 'NATION14', '000023000014', '白族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57575d20010', null, '0', null, '0', 'NATION15', '000023000015', '土家族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5759d8f0011', null, '0', null, '0', 'NATION16', '000023000016', '哈尼族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e575d9640012', null, '0', null, '0', 'NATION17', '000023000017', '哈萨克族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5761ee30013', null, '0', null, '0', 'NATION18', '000023000018', '傣族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5764cfb0014', null, '0', null, '0', 'NATION18', '000023000019', '黎族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5768eff0015', null, '0', null, '0', 'NATION20', '000023000020', '傈僳族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e576c05a0016', null, '0', null, '0', 'NATION21', '000023000021', '佤族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5771fb10017', null, '0', null, '0', 'NATION22', '000023000022', '畲族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e577754f0018', null, '0', null, '0', 'NATION23', '000023000023', '高山族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e577d8220019', null, '0', null, '0', 'NATION24', '000023000024', '拉祜族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57840d4001a', null, '0', null, '0', 'NATION25', '000023000025', '水族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e578beac001b', null, '0', null, '0', 'NATION26', '000023000026', '东乡族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e579cc50001c', null, '0', null, '0', 'NATION27', '000023000027', '纳西族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57a4b49001d', null, '0', null, '0', 'NATION28', '000023000028', '景颇族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57ab2ed001e', null, '0', null, '0', 'NATION29', '000023000029', '柯尔克孜族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57aeb4a001f', null, '0', null, '0', 'NATION30', '000023000030', '土族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57bb0c20020', null, '0', null, '0', 'NATION31', '000023000031', '达斡尔族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57c1cb50021', null, '0', null, '0', 'NATION32', '000023000032', '仫佬族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57c71630022', null, '0', null, '0', 'NATION33', '000023000033', '羌族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57cb5aa0023', null, '0', null, '0', 'NATION34', '000023000034', '布朗族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57d27c90024', null, '0', null, '0', '35', '000023000035', '撒拉族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57df9a10025', null, '0', null, '0', 'NATION36', '000023000036', '毛难族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57e48b80026', null, '0', null, '0', 'NATION37', '000023000037', '仡佬族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57e8b080027', null, '0', null, '0', 'NATION38', '000023000038', '锡伯族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57ebe990028', null, '0', null, '0', 'NATION', '000023000039', '阿昌族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57ef9f50029', null, '0', null, '0', 'NATION40', '000023000040', '普米族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57f6094002a', null, '0', null, '0', 'NATION41', '000023000041', '塔吉克族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57fbe0b002b', null, '0', null, '0', 'NATION42', '000023000042', '怒族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e57ffd10002c', null, '0', null, '0', 'NATION43', '000023000043', '乌兹别克', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5802506002d', null, '0', null, '0', 'NATION44', '000023000044', '俄罗斯族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e58066c6002e', null, '0', null, '0', 'NATION45', '000023000045', '鄂温克族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e580a981002f', null, '0', null, '0', 'NATION46', '000023000046', '崩龙族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e580e3540030', null, '0', null, '0', 'NATION47', '000023000047', '保安族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5813d0a0031', null, '0', null, '0', 'NATION48', '000023000048', '裕固族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e581adce0032', null, '0', null, '0', 'NATION49', '000023000049', '京族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e581eb050033', null, '0', null, '0', 'NATION50', '000023000050', '塔塔尔族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e582223b0034', null, '0', null, '0', 'NATION51', '000023000051', '独龙族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e58269950035', null, '0', null, '0', 'NATION52', '000023000052', '鄂伦春族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e582c7b80036', null, '0', null, '0', 'NATION53', '000023000053', '赫哲族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e58307aa0037', null, '0', null, '0', 'NATION54', '000023000054', '门巴族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e583596a0038', null, '0', null, '0', 'NATION55', '000023000055', '珞巴族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053e55e710153e5838d9c0039', null, '0', null, '0', 'NATION56', '000023000056', '基诺族', '402881f053e55e710153e570c0890001', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053f983b00153f98597fd0000', null, '0', null, '0', 'MESSAGETYPE', '000024', '站内信类型', null, '', '');
INSERT INTO `sys_dict` VALUES ('402881f053f983b00153f986e77c0001', null, '0', '2016-07-31 08:40:32', '2', 'MESSAGEPRODUCT', '000024000001', '生产', '402881f053f983b00153f98597fd0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053f983b00153f98822340002', null, '0', null, '0', 'MESSAGEMARKET', '000024000002', '销售', '402881f053f983b00153f98597fd0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053f983b00153f988e3190003', null, '0', null, '0', 'MESSAGEDELIVERY', '000024000003', '送货', '402881f053f983b00153f98597fd0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f053f983b00153f989be130004', null, '0', null, '0', 'MESSAGEPURCHASE', '000024000004', '采购', '402881f053f983b00153f98597fd0000', '', '');
INSERT INTO `sys_dict` VALUES ('402881f0540024cd0154003bae140006', null, '0', null, '0', 'INFORM', '000024000005', '通知', '402881f053f983b00153f98597fd0000', '', '');
INSERT INTO `sys_dict` VALUES ('402882f453c561fa0153c5647ce00003', null, '0', null, '0', 'CHANNELTYPE', '000013', '来源', null, '', '');
INSERT INTO `sys_dict` VALUES ('402882f453c561fa0153c56598ee0004', null, '0', '2016-08-27 23:55:23', '1', 'CHANNELTYPEACTIVITY', '000013000001', '推广活动', '402882f453c561fa0153c5647ce00003', '', '');
INSERT INTO `sys_dict` VALUES ('402882f453c561fa0153c565dd6b0005', null, '0', null, '1', 'CHANNELTYPETEL', '000013000002', '电话咨询', '402882f453c561fa0153c5647ce00003', '', '');
INSERT INTO `sys_dict` VALUES ('402882f453cf94730153cf96f8e40000', null, '0', null, '0', 'SUPPLIERLEVEL', '000018', '供应商级别', null, '', '');
INSERT INTO `sys_dict` VALUES ('402882f453cf94730153cf97dbc30001', null, '0', '2016-06-23 10:18:12', '2', 'SUPPLIERLEVELSILVER', '000018000001', '一般供应商', '402882f453cf94730153cf96f8e40000', '', '');
INSERT INTO `sys_dict` VALUES ('402882f453cf94730153cf9834bd0002', null, '0', '2016-06-23 10:18:00', '2', 'SUPPLIERLEVELGOLD', '000018000002', '重点供应商', '402882f453cf94730153cf96f8e40000', '', '');
INSERT INTO `sys_dict` VALUES ('402882f453cf94730153cf98f3fa0003', null, '0', '2016-06-23 10:17:32', '2', 'SUPPLIERLEVELDIAMOND', '000018000003', '战略供应商', '402882f453cf94730153cf96f8e40000', '', '');
INSERT INTO `sys_dict` VALUES ('8a2c43d853f918e30153f92417ab0004', null, '0', null, '0', 'CHANNELTYPEMEDIA', '000013000003', '媒体广告', '402882f453c561fa0153c5647ce00003', '', '');
INSERT INTO `sys_dict` VALUES ('8a2c43d853f918e30153f92589ad0005', null, '0', null, '0', 'CHANNELTYPEPEINTRO', '000013000004', '熟人推荐', '402882f453c561fa0153c5647ce00003', '', '');
INSERT INTO `sys_dict` VALUES ('8a2c43d853f918e30153f928e92e0006', null, '0', null, '0', 'CHANNELTYPEOTHERS', '000013000005', '其他', '402882f453c561fa0153c5647ce00003', '', '');
INSERT INTO `sys_dict` VALUES ('bc4d163c5880ab4901588b5582360001', '2016-11-22 17:19:46', '0', '2016-11-22 17:19:46', '0', 'TEXT', '000024000006', '短信', '402881f053f983b00153f98597fd0000', '', '');
INSERT INTO `sys_dict` VALUES ('bc4d163c5880ab4901588b5b49080002', '2016-11-22 17:26:05', '0', '2016-11-22 17:26:05', '0', 'HANZU', '000023000057', '汉族', '402881f053e55e710153e570c0890001', '', '');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` varchar(36) NOT NULL,
  `create_date_time` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `fileSize` bigint(20) DEFAULT NULL,
  `form_ID` varchar(255) DEFAULT NULL,
  `savedName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(36) NOT NULL COMMENT 'id',
  `description` varchar(255) DEFAULT NULL COMMENT '方法描述',
  `method` varchar(255) DEFAULT NULL COMMENT '执行方法',
  `type` varchar(2) DEFAULT NULL COMMENT '状态(0:正常 1:异常)',
  `requestip` varchar(60) DEFAULT NULL COMMENT '请求IP',
  `exceptioncode` varchar(255) DEFAULT NULL COMMENT '异常代码',
  `executetime` varchar(20) DEFAULT NULL COMMENT '执行时间',
  `params` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `operator` varchar(20) DEFAULT NULL COMMENT '操作人',
  `createDateTime` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('000cac09-e50d-4617-a37e-59072cb85cc3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:25:20');
INSERT INTO `sys_log` VALUES ('00202fb7-8b3e-4229-947f-7be1ef039478', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:07:58');
INSERT INTO `sys_log` VALUES ('0022442e-b47f-4667-841b-0dd3faaecdfd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:08:47');
INSERT INTO `sys_log` VALUES ('003adf21-a83b-4d8c-8d6d-56b3b3203db1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-03 14:17:09');
INSERT INTO `sys_log` VALUES ('00b38e91-5ec4-4cfa-825e-4bd3d9caaddc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 14:46:29');
INSERT INTO `sys_log` VALUES ('011ae10f-8fd1-4374-982b-f1e2d99de42d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:36:19');
INSERT INTO `sys_log` VALUES ('011d30f3-72ed-4e42-8518-d2479c4080d8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:53:58');
INSERT INTO `sys_log` VALUES ('0130d7dd-6765-4040-8fc6-b21b7ab06de0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:10:03');
INSERT INTO `sys_log` VALUES ('01586b15-00e9-4e21-b4b3-bd450a3a708b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 17:19:27');
INSERT INTO `sys_log` VALUES ('0178cd0b-b4d8-4169-8432-9325b6f605e7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:36');
INSERT INTO `sys_log` VALUES ('01b69112-d953-49db-aa74-b89dbf36eb66', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:49:19');
INSERT INTO `sys_log` VALUES ('02c49cd7-ff16-4685-9633-ea2716769952', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 11:18:54');
INSERT INTO `sys_log` VALUES ('02cccb96-a25c-4d13-9e67-856e78dfaa74', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:22:12');
INSERT INTO `sys_log` VALUES ('02de9294-5c21-449b-bd0e-4886bd3366a5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:48:50');
INSERT INTO `sys_log` VALUES ('02e5f4fd-6732-4454-89af-b01ebec96471', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗25ms', null, 'liuc', '2018-01-08 09:45:45');
INSERT INTO `sys_log` VALUES ('02ece3e3-8433-478f-b4c9-375a262e9036', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:34:57');
INSERT INTO `sys_log` VALUES ('0390a150-b31f-4690-a35d-33cf58481d3d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:53:59');
INSERT INTO `sys_log` VALUES ('042137c2-10b7-491a-8267-4f4687c068f2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:33:03');
INSERT INTO `sys_log` VALUES ('049a44d9-d1c2-4ffd-9f91-ed7dbbd34fa9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:38:14');
INSERT INTO `sys_log` VALUES ('04c31c07-9981-4b0f-bd4c-7cde11d4ccf7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 17:16:25');
INSERT INTO `sys_log` VALUES ('04d44988-5151-4927-9756-7970298a8af6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:19');
INSERT INTO `sys_log` VALUES ('04eca04c-407a-43a3-9db0-a3f868c3c3a9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:35:44');
INSERT INTO `sys_log` VALUES ('053225a8-7040-44ee-9202-c539736d2da8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-02 17:02:03');
INSERT INTO `sys_log` VALUES ('055ceffd-9fb8-49ff-a0b9-7d3afbf7cb85', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:56:25');
INSERT INTO `sys_log` VALUES ('05ce97f7-5111-4a75-824e-03c21fefac41', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:17:46');
INSERT INTO `sys_log` VALUES ('05f1ab44-7441-4a58-a6a3-5bed6836a093', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 15:59:51');
INSERT INTO `sys_log` VALUES ('070471a8-0c1a-4c96-bb6f-264ae4d84c54', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 17:31:13');
INSERT INTO `sys_log` VALUES ('0721a0e1-bac4-40d6-b336-6f9839ca8b32', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:49:47');
INSERT INTO `sys_log` VALUES ('0766110d-b8e7-40d3-ac6e-06d6daba82e3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:22:30');
INSERT INTO `sys_log` VALUES ('07e71ed1-8561-4e73-b8af-3c3fef8df760', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-09 09:21:40');
INSERT INTO `sys_log` VALUES ('07e83c3d-d6ea-4ed0-a21b-f3142e0f6bd7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:45:22');
INSERT INTO `sys_log` VALUES ('07efd206-722a-41a0-b722-9bc570cc74c2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:43:35');
INSERT INTO `sys_log` VALUES ('0868a120-3cda-40a1-b87c-329801d9705b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:07:56');
INSERT INTO `sys_log` VALUES ('092eca45-8279-43e2-9c50-201b1a52ac68', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:26:00');
INSERT INTO `sys_log` VALUES ('09616379-5458-4c5a-bbd2-44a0ff60854f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-11 15:56:43');
INSERT INTO `sys_log` VALUES ('0961d84c-2c83-4e2f-8a44-06237d285fe4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:06:57');
INSERT INTO `sys_log` VALUES ('09ddfa28-260d-4193-b3fa-7f1d852b2bb4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:30:51');
INSERT INTO `sys_log` VALUES ('0a2c5966-19c2-4bf3-8d4c-493d9df21594', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:49:17');
INSERT INTO `sys_log` VALUES ('0a4c4f46-d18c-4d4d-93e1-fd812626a87d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:14:08');
INSERT INTO `sys_log` VALUES ('0a614a9b-7053-46a8-bb42-6c34fdbe0b74', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:39:44');
INSERT INTO `sys_log` VALUES ('0a64a88f-2853-4a8b-887f-c2fb11dcf97a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 14:21:38');
INSERT INTO `sys_log` VALUES ('0a74a7e6-82b4-4308-9a73-0f48aba819db', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:13:46');
INSERT INTO `sys_log` VALUES ('0a8eccba-5892-4651-ac57-f6fe78618f19', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', null, null, '运行消耗6ms', null, 'liuc', '2017-12-29 14:08:14');
INSERT INTO `sys_log` VALUES ('0ab6a856-56de-419d-bd7f-9458c60131b1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-09 13:24:51');
INSERT INTO `sys_log` VALUES ('0ae9c18d-8214-478f-a86b-dfa510abafdd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2017-12-29 19:44:51');
INSERT INTO `sys_log` VALUES ('0aef8a7e-e6df-429d-9c55-f7ed92452df4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:44');
INSERT INTO `sys_log` VALUES ('0b3dddf7-0fb6-4974-8eb3-7bfc72181a86', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 21:25:14');
INSERT INTO `sys_log` VALUES ('0b4b92b6-d30e-457f-976e-f83e96b60e8d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-03 21:11:36');
INSERT INTO `sys_log` VALUES ('0bcbb974-5859-4a2c-92fc-4d49b7da7a5c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-02 14:50:52');
INSERT INTO `sys_log` VALUES ('0c33dc05-e09b-4a87-9c2c-d15cdb429f92', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-12 09:27:37');
INSERT INTO `sys_log` VALUES ('0c523be1-0db4-4cc3-b22d-da27834c2dc6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 11:12:30');
INSERT INTO `sys_log` VALUES ('0c8388af-0d74-40e7-bb82-2113dbcb6e62', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗25ms', null, 'liuc', '2018-01-08 14:57:03');
INSERT INTO `sys_log` VALUES ('0c92cc43-849b-44cc-85df-25e91444937d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗13ms', null, 'liuc', '2018-01-10 15:00:28');
INSERT INTO `sys_log` VALUES ('0cdb51c0-1e0b-4110-8346-197686800b93', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:33:50');
INSERT INTO `sys_log` VALUES ('0ce36388-0ee7-406c-bccd-852361668b66', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:27:00');
INSERT INTO `sys_log` VALUES ('0d5d3f33-c823-428e-9fc6-be1491943d94', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:24:13');
INSERT INTO `sys_log` VALUES ('0df3f0c8-e6ac-498b-aeda-9df49d961761', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 14:08:05');
INSERT INTO `sys_log` VALUES ('0e0d36f1-737a-43f4-86a1-423beb1648cd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 14:51:49');
INSERT INTO `sys_log` VALUES ('0e332882-faa8-4032-9491-54d53735775f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:45:15');
INSERT INTO `sys_log` VALUES ('0e689272-316a-4fe3-a537-0b5b7a44c353', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:54');
INSERT INTO `sys_log` VALUES ('0ead4ee1-1c70-4946-a6ad-1cf10d42a316', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:32:30');
INSERT INTO `sys_log` VALUES ('0ec53f18-a73c-4bad-8ca4-6d2fb992ccca', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:36:54');
INSERT INTO `sys_log` VALUES ('0f2c4414-f71e-4830-9887-40d64f9501d3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:30:35');
INSERT INTO `sys_log` VALUES ('0fb6e1e6-93e1-467d-9266-7c4962baaee7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:54:07');
INSERT INTO `sys_log` VALUES ('0feaf881-65c7-49ce-84db-a9ca0c55e22a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:29:50');
INSERT INTO `sys_log` VALUES ('102bbb56-fe28-4191-b871-2cead4fc3e1a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:06:43');
INSERT INTO `sys_log` VALUES ('107951df-4f5c-4ad8-b448-2402fd89cfdb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-06 17:40:34');
INSERT INTO `sys_log` VALUES ('10a37c18-3c64-4e59-9a4b-3f2ef1b3bff4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 16:50:56');
INSERT INTO `sys_log` VALUES ('10b99692-6803-4d7f-bb5c-af247d496a99', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-10 16:42:39');
INSERT INTO `sys_log` VALUES ('10cea940-8954-482e-9098-f2a8b1addec2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:03:06');
INSERT INTO `sys_log` VALUES ('10d3456a-14ef-4d2a-920d-15255f5e418d', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:28:53');
INSERT INTO `sys_log` VALUES ('10e47346-1ae6-4e8a-98c8-4ac1c2b0d95d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:56:07');
INSERT INTO `sys_log` VALUES ('112b2ca9-63e8-46bc-a6ee-140c39b543d5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-11 16:28:42');
INSERT INTO `sys_log` VALUES ('113caad7-c462-4a35-be9b-60e9257daa17', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗15ms', null, 'liuc', '2018-01-02 15:28:30');
INSERT INTO `sys_log` VALUES ('11ac2737-5af9-4406-add2-2bf7854dc92c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:13:22');
INSERT INTO `sys_log` VALUES ('1237ed07-93ba-4dce-9ba9-3d549f0f22e2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-10 11:55:06');
INSERT INTO `sys_log` VALUES ('1276d081-7b64-4de9-a395-c0268aacf060', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 15:34:50');
INSERT INTO `sys_log` VALUES ('127da3d7-9bdc-4f6b-85a2-ee1d13573efe', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:03:19');
INSERT INTO `sys_log` VALUES ('12d0989f-bd50-4af1-abf5-55906e488df1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗13ms', null, 'liuc', '2018-01-09 17:10:24');
INSERT INTO `sys_log` VALUES ('12e53838-4084-4dfb-9e1e-9b7a584e6381', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:41:21');
INSERT INTO `sys_log` VALUES ('134104b4-2dfb-4d62-8151-87e937393f73', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:27:23');
INSERT INTO `sys_log` VALUES ('1372f9e0-2624-4314-a8a8-939127dff205', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:36:41');
INSERT INTO `sys_log` VALUES ('13d54284-1a4a-4473-b602-44b080690274', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:00:17');
INSERT INTO `sys_log` VALUES ('13d8ad5e-dda1-4efa-b539-e10d89d4448f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:28');
INSERT INTO `sys_log` VALUES ('141a3787-511d-4e00-8beb-dd4d4d8a40ca', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:04:35');
INSERT INTO `sys_log` VALUES ('1430096e-975b-41bb-b28e-7f7920cbae67', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 11:13:58');
INSERT INTO `sys_log` VALUES ('148c5a56-17f8-4028-ba44-bf5fdd163998', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-02 16:17:10');
INSERT INTO `sys_log` VALUES ('14d306d1-2c0f-4f1f-a701-adc9a82c033a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2017-12-29 21:17:46');
INSERT INTO `sys_log` VALUES ('1505b9cc-7d8c-49e1-9606-450a0460b114', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:34:51');
INSERT INTO `sys_log` VALUES ('15b1d9bf-c882-4759-aea1-2cb8769bed11', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:13:19');
INSERT INTO `sys_log` VALUES ('15ed5411-dab9-469a-bb7b-c6930351a9d5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:44:14');
INSERT INTO `sys_log` VALUES ('15fe3c37-71e5-4b74-8ed8-6bf849bc7ec1', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:48:53');
INSERT INTO `sys_log` VALUES ('1624d075-8581-438b-a9b8-7c6b34535763', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-04 08:51:26');
INSERT INTO `sys_log` VALUES ('1629a9ce-7c45-41a1-9033-2932bf2057d6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:51:10');
INSERT INTO `sys_log` VALUES ('16340251-dbe1-48fc-a51e-845efc2266f3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:42:10');
INSERT INTO `sys_log` VALUES ('16341413-0c10-4d5b-9d95-baa994b1a585', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:01:26');
INSERT INTO `sys_log` VALUES ('166ba741-beea-4c11-bde9-e4e3825674a5', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:24:38');
INSERT INTO `sys_log` VALUES ('1712d04e-c3fd-4e50-9c2b-2b4759e52d87', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-02 15:02:02');
INSERT INTO `sys_log` VALUES ('17420de3-4a28-427a-b351-737971c1edc5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:06:35');
INSERT INTO `sys_log` VALUES ('18025c8a-e300-4846-bc2e-19570251ba18', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 21:14:52');
INSERT INTO `sys_log` VALUES ('180582af-faae-4417-94d4-603b37d6ed68', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:25:16');
INSERT INTO `sys_log` VALUES ('18862d75-dcbe-4259-b871-607106899d31', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:53:33');
INSERT INTO `sys_log` VALUES ('194b0b3e-b579-4f5c-bda6-2840459a008b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:04');
INSERT INTO `sys_log` VALUES ('195caa62-1631-4bcf-8db2-8569605c6682', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:52');
INSERT INTO `sys_log` VALUES ('1969ce12-0530-4b7c-9997-fdad176498cc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:46:59');
INSERT INTO `sys_log` VALUES ('19e8a4a0-db41-40d3-8045-cb2630b7c354', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:24:40');
INSERT INTO `sys_log` VALUES ('1a0bb750-8bf4-4c66-b32f-1e5077ca8b02', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-12 09:27:26');
INSERT INTO `sys_log` VALUES ('1a34b167-0929-47e7-a74f-4998dab0f823', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:40:11');
INSERT INTO `sys_log` VALUES ('1a3b246c-4e1a-4164-91f9-ce103566df2f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:16:43');
INSERT INTO `sys_log` VALUES ('1a442596-c1bc-487a-8bd4-202dac5d2034', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-30 01:07:14');
INSERT INTO `sys_log` VALUES ('1a69b836-6414-4f33-bd47-9d41b3102ab6', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:15:29');
INSERT INTO `sys_log` VALUES ('1a7f0bd0-687a-427a-a6de-e750de7f50fa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:34:46');
INSERT INTO `sys_log` VALUES ('1b46167d-2ff5-4939-adea-22735b2d5f95', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:49:49');
INSERT INTO `sys_log` VALUES ('1bb1be82-c603-4127-bf57-ee941eb4f98b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:49:48');
INSERT INTO `sys_log` VALUES ('1bd29588-2c9e-499a-a320-56a88114e2dd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 15:52:29');
INSERT INTO `sys_log` VALUES ('1bd7c48f-8bb0-4cad-9ab0-b5812928558c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:45:17');
INSERT INTO `sys_log` VALUES ('1c5565d5-82d9-4cdf-830a-24b6da6678d1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:31:58');
INSERT INTO `sys_log` VALUES ('1c965d31-b8a2-4451-b1c9-719db53fe6f3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 15:04:45');
INSERT INTO `sys_log` VALUES ('1d04d9ac-bee2-4441-8235-6540c6fdc022', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:14:58');
INSERT INTO `sys_log` VALUES ('1d29dc09-4312-4baf-92e0-4700f30a6634', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:42:29');
INSERT INTO `sys_log` VALUES ('1d4ca321-0a00-42bd-8e4c-665d28d321de', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-10 14:48:25');
INSERT INTO `sys_log` VALUES ('1d6e6289-85cb-439a-b172-ec9f7751eb1e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-30 01:03:42');
INSERT INTO `sys_log` VALUES ('1d77e67a-71af-4bde-b201-28bd81b9e79d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 11:18:53');
INSERT INTO `sys_log` VALUES ('1d841dd2-6263-4321-9688-758ef18d58d1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:17:53');
INSERT INTO `sys_log` VALUES ('1e4c1928-4aea-4dca-a9c5-b1668b9aa2e5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:39:48');
INSERT INTO `sys_log` VALUES ('1f037893-2c94-437e-b91f-e96245ecaf7d', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:39');
INSERT INTO `sys_log` VALUES ('1f4ff4db-0bb8-41f1-9e48-0c84fd1b9593', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 15:04:44');
INSERT INTO `sys_log` VALUES ('1f9a5a65-48c0-48bc-b7de-7a54fe8dc9e2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-09 17:31:07');
INSERT INTO `sys_log` VALUES ('1faf5d5c-1e00-4f63-aee6-77fa9a1fba55', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-11 09:23:47');
INSERT INTO `sys_log` VALUES ('1fb90af6-b790-41e3-bf18-4e2f79c05663', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 15:10:53');
INSERT INTO `sys_log` VALUES ('202255e3-c5b8-4807-9d9e-61c70b72f64b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:27');
INSERT INTO `sys_log` VALUES ('207d0dbe-9a57-43a2-8c0b-e6d1b17bac69', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-11 10:41:00');
INSERT INTO `sys_log` VALUES ('20a227e3-6d97-45df-9ddc-ac63505a0447', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:10');
INSERT INTO `sys_log` VALUES ('20d905a7-8c0c-4f5c-af89-2fbcfdc770b4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:51:19');
INSERT INTO `sys_log` VALUES ('215af08f-ad2f-4304-8620-f380e25d5510', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-11 16:33:03');
INSERT INTO `sys_log` VALUES ('218ca3ff-bc2d-46f1-8427-796fa864c687', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:22');
INSERT INTO `sys_log` VALUES ('2201b2be-b8bb-41d0-8633-5d33baae601a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:36:46');
INSERT INTO `sys_log` VALUES ('22211df0-f5e6-47d2-9f79-8b3949354d1a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:57:54');
INSERT INTO `sys_log` VALUES ('22441a89-d487-4f23-a346-0346d411cbf6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 15:35:38');
INSERT INTO `sys_log` VALUES ('2259fd84-bc44-4522-b844-32204abbb0f2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗15ms', null, 'liuc', '2018-01-10 09:14:25');
INSERT INTO `sys_log` VALUES ('22a458e1-8316-4c83-a0c9-7ec18fbe776e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 15:23:28');
INSERT INTO `sys_log` VALUES ('22d112de-d71a-4220-a441-a6afba2fba9d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 21:18:36');
INSERT INTO `sys_log` VALUES ('22d4939b-dcc3-4894-aa1b-9e59187e6625', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:32:25');
INSERT INTO `sys_log` VALUES ('22fac25b-948b-42ce-bf6d-ea270b7d8f6a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 13:54:52');
INSERT INTO `sys_log` VALUES ('234a7580-5637-4a44-8b32-4e346f4a4036', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:14:03');
INSERT INTO `sys_log` VALUES ('235d9982-e09b-49b0-bcb6-5e20ec6f0048', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:43:48');
INSERT INTO `sys_log` VALUES ('23dc1d62-8ca8-4ed0-a39d-6a0967c9dab9', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:10:31');
INSERT INTO `sys_log` VALUES ('245e0cdf-634a-4097-990c-64ce4b4a8455', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:20:13');
INSERT INTO `sys_log` VALUES ('247ceb5f-e64c-43a2-b7b6-d697b288bd5f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:13:17');
INSERT INTO `sys_log` VALUES ('24d80b81-e09e-4e3b-bb3c-658ee8cd8008', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 16:45:35');
INSERT INTO `sys_log` VALUES ('25450912-48ac-4304-98f6-5d0379756c68', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 13:13:04');
INSERT INTO `sys_log` VALUES ('254828c6-49a4-48a8-a61e-f3e32d83ac56', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:07:53');
INSERT INTO `sys_log` VALUES ('25615d68-c9f4-481e-b79b-70e634a0286f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:39:39');
INSERT INTO `sys_log` VALUES ('2595b065-a62e-4dcf-b402-aef12ad50e2c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 11:12:33');
INSERT INTO `sys_log` VALUES ('25c08add-f9ef-4d5c-8f01-8d8bcb920208', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:26:17');
INSERT INTO `sys_log` VALUES ('25f137c6-7925-4f32-b249-e84617eb7f17', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:22:09');
INSERT INTO `sys_log` VALUES ('2626438f-659e-4424-9c7d-b413d0af5041', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:39:55');
INSERT INTO `sys_log` VALUES ('26fac480-606c-4707-af3f-232cd8dee853', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 10:12:15');
INSERT INTO `sys_log` VALUES ('2780f90a-a83d-44b7-8233-aba986785454', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:50:10');
INSERT INTO `sys_log` VALUES ('279b783b-589b-4b4b-a8ac-001f14b96ab2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗21ms', null, 'liuc', '2018-01-12 14:39:40');
INSERT INTO `sys_log` VALUES ('27b0e789-2cc7-479e-afe5-7297ebf2af52', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 11:14:01');
INSERT INTO `sys_log` VALUES ('27bb028e-d648-413f-8256-cd31cf0e2f21', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-31 15:10:50');
INSERT INTO `sys_log` VALUES ('27be97ee-f319-4670-be5a-521aad7fea57', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2017-12-30 01:02:07');
INSERT INTO `sys_log` VALUES ('283f5d4c-9f90-4cbe-86a6-061ff23b5b53', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-11 10:28:51');
INSERT INTO `sys_log` VALUES ('286e9707-5bfc-469a-8923-a3a094db958a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:39:41');
INSERT INTO `sys_log` VALUES ('28e78157-162a-4ca7-9aa3-06fd42381b84', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 10:03:56');
INSERT INTO `sys_log` VALUES ('28f1ef97-3081-48ca-ac6c-781c18be97ac', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-09 17:19:23');
INSERT INTO `sys_log` VALUES ('290c41f3-5588-4a57-8099-6f862342bba5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-10 16:11:52');
INSERT INTO `sys_log` VALUES ('294ccd97-f4d2-49ce-99be-7c4ff32e1599', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 11:13:49');
INSERT INTO `sys_log` VALUES ('29d95042-626b-4a57-99c7-3d53dc669055', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:01:36');
INSERT INTO `sys_log` VALUES ('29e5298e-e61a-472f-bbf3-789be728249a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗14ms', null, 'liuc', '2017-12-29 14:55:33');
INSERT INTO `sys_log` VALUES ('2a2cb411-e35e-4716-a516-3af4f15820c8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:15:15');
INSERT INTO `sys_log` VALUES ('2a4ee8c8-6657-4eaf-b28f-40c4dada5785', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:35:17');
INSERT INTO `sys_log` VALUES ('2a577078-db48-4528-8724-1d130302e057', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 10:04:12');
INSERT INTO `sys_log` VALUES ('2b3e7aa9-ade9-4a6f-b500-aff1c28abe26', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:32:47');
INSERT INTO `sys_log` VALUES ('2b53c7e6-f798-4342-afd7-903c4331f20f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:33:40');
INSERT INTO `sys_log` VALUES ('2c742509-4ba3-43c2-b749-d437bdc75ec4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:34:31');
INSERT INTO `sys_log` VALUES ('2ccedcd5-601d-48da-b029-2a3e01072225', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:42:20');
INSERT INTO `sys_log` VALUES ('2d3a6945-b256-466b-bbff-288a2c6cf7dd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-09 10:02:24');
INSERT INTO `sys_log` VALUES ('2d480691-2cec-47a4-aa7b-d6e460ab16d4', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:57:33');
INSERT INTO `sys_log` VALUES ('2d6c8964-409c-47dc-8f34-28fe25f0d3bd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 12:12:23');
INSERT INTO `sys_log` VALUES ('2d8ef142-2e50-4664-81ad-b1aedcf2b4a4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-02 09:10:47');
INSERT INTO `sys_log` VALUES ('2de7ed32-3bd8-486e-914c-9b9bfb43743d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 15:54:16');
INSERT INTO `sys_log` VALUES ('2e299cde-82a2-4d03-8495-79a077c51793', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-08 14:07:16');
INSERT INTO `sys_log` VALUES ('2e36aa88-be20-4d00-b29f-793ee20e3ff7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:33:40');
INSERT INTO `sys_log` VALUES ('2e61a447-e1bc-4323-9c78-756412102cc6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:48:58');
INSERT INTO `sys_log` VALUES ('2e88bf79-547b-4468-88f7-6a942c528758', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:02:30');
INSERT INTO `sys_log` VALUES ('2ec28aa2-af7b-47d4-a9f3-b13e43486a19', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 16:10:34');
INSERT INTO `sys_log` VALUES ('2f024a63-fc04-452a-85a1-afe7448980cf', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:46:56');
INSERT INTO `sys_log` VALUES ('2f0b5a8e-460d-4e1d-a571-4fa243ca39b1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:52:31');
INSERT INTO `sys_log` VALUES ('2f426c12-bfa3-4fd8-a16d-3246e275e550', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-10 14:39:14');
INSERT INTO `sys_log` VALUES ('2f7cf366-405e-41ec-86b3-c11667c86c28', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 09:38:46');
INSERT INTO `sys_log` VALUES ('2fdd984c-3ec5-47d2-84f1-401ed3b675cd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 09:05:52');
INSERT INTO `sys_log` VALUES ('2ffc627a-0371-476a-8656-39fd8ea1b558', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 10:03:57');
INSERT INTO `sys_log` VALUES ('300e25a1-5f16-4f50-a9f0-79f7602d7e2f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 13:59:44');
INSERT INTO `sys_log` VALUES ('3096c139-8800-417b-9efc-81da47a75212', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:21:39');
INSERT INTO `sys_log` VALUES ('30a3b501-6753-4dbf-aa1c-72cee57dba43', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:42:55');
INSERT INTO `sys_log` VALUES ('30e2e5ec-4a77-4cde-93cf-6bad7cf1b8b2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:50:30');
INSERT INTO `sys_log` VALUES ('30ff9282-8856-464b-93e6-e45e6072282f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:24:38');
INSERT INTO `sys_log` VALUES ('3168f6fa-c3e4-4bfe-9917-a9a20f8bb3d3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:42:26');
INSERT INTO `sys_log` VALUES ('31aa4d2b-de75-4628-9f54-1007e2829925', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:54:30');
INSERT INTO `sys_log` VALUES ('31bfe8f0-eb22-4c93-b0de-b75257e8a0c1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:57:08');
INSERT INTO `sys_log` VALUES ('31d49efb-0f0e-4bfd-966c-6642fd900b84', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:47:44');
INSERT INTO `sys_log` VALUES ('323adda5-fad3-45dc-8b63-81f86df37f7e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 16:35:40');
INSERT INTO `sys_log` VALUES ('326107b1-f351-45e1-b97c-7dbe166e620f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:56:26');
INSERT INTO `sys_log` VALUES ('32ff6e4a-199b-43d8-8dc9-ac5db4f29a74', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:10');
INSERT INTO `sys_log` VALUES ('332bdc20-0a2f-4057-8f4a-dd2e4de99413', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:32:46');
INSERT INTO `sys_log` VALUES ('33a62586-a9ca-4b27-b29a-edb9f2c14612', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:37:43');
INSERT INTO `sys_log` VALUES ('33f8bd2a-a848-40e9-97ca-92a770165745', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:52:04');
INSERT INTO `sys_log` VALUES ('341ee9ae-c84c-4d28-894a-c0c417830e29', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:18:36');
INSERT INTO `sys_log` VALUES ('3453f7d8-3eee-4c50-b86f-b8b01ff65a34', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:47:04');
INSERT INTO `sys_log` VALUES ('34ee2dcc-950a-4d50-9deb-4a757d37bf8c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 09:55:38');
INSERT INTO `sys_log` VALUES ('34f785b0-9bb9-4e28-ad7f-10e81423e7f9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:08');
INSERT INTO `sys_log` VALUES ('352d65db-dbf2-45f3-a5c1-1919727c6a5d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-03 16:05:12');
INSERT INTO `sys_log` VALUES ('35304f41-b14c-4bb3-9b1b-895592fda133', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:18:35');
INSERT INTO `sys_log` VALUES ('3543461b-2dc1-47bd-a29b-078b07ddc834', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 10:02:21');
INSERT INTO `sys_log` VALUES ('35cd7804-9e73-462a-b906-d445ff7a818f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 11:58:48');
INSERT INTO `sys_log` VALUES ('362537b8-506a-406a-ac99-6a363240fd67', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-05 23:37:08');
INSERT INTO `sys_log` VALUES ('3674de55-856f-4012-9221-950fb42afa7e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:51:07');
INSERT INTO `sys_log` VALUES ('3694827d-725e-4e9c-9370-b0cbd10b1c79', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:14:32');
INSERT INTO `sys_log` VALUES ('36a6a41e-5aea-4ada-ac33-d5f81c6c5e41', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-02 16:17:16');
INSERT INTO `sys_log` VALUES ('3784f926-39a9-4b21-8302-9a786ea5b055', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:15:27');
INSERT INTO `sys_log` VALUES ('37a4da8b-9b97-494f-9469-aebd78aac33a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:40:33');
INSERT INTO `sys_log` VALUES ('37c24892-76d2-4c54-a837-cac050855e6c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:41:17');
INSERT INTO `sys_log` VALUES ('387657e7-ada1-48db-a3b6-cd09ecf9c1eb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 16:22:50');
INSERT INTO `sys_log` VALUES ('387b0efc-ddde-43f6-b146-db06f6460198', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:25:57');
INSERT INTO `sys_log` VALUES ('38b590fe-da2f-4aef-babb-6db3f3773d71', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:19:51');
INSERT INTO `sys_log` VALUES ('39238b31-7f35-4b88-b3d2-4bd8e6b09f5a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:23:14');
INSERT INTO `sys_log` VALUES ('396b8ef1-21a1-4895-bec9-c9a7c4ddd01e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:46:38');
INSERT INTO `sys_log` VALUES ('399711fd-9399-4a3f-abc3-4a652729a034', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:42:55');
INSERT INTO `sys_log` VALUES ('39c56984-a55d-4bb7-ba36-5fcfa9f6558f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:27:57');
INSERT INTO `sys_log` VALUES ('39cf380c-0c03-4cc3-ad9c-11f792e7c977', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 12:13:05');
INSERT INTO `sys_log` VALUES ('39f3b2c5-e475-4a60-95bc-e450ea067179', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:34:51');
INSERT INTO `sys_log` VALUES ('3a0aa1ac-093b-4dda-85cc-e3b682ad48fa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 09:50:31');
INSERT INTO `sys_log` VALUES ('3a0d75bf-0734-4552-86ec-233522cb2188', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-10 15:59:59');
INSERT INTO `sys_log` VALUES ('3a3d0f12-079a-4909-bcb4-10045fd8bac6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:28');
INSERT INTO `sys_log` VALUES ('3a467652-0554-490d-8f57-0b517bcb9916', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:28:30');
INSERT INTO `sys_log` VALUES ('3a5c12b7-88cb-4efe-b17f-9263017a6747', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:47:37');
INSERT INTO `sys_log` VALUES ('3a7e242f-e286-4b31-aa3c-8096fb687755', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:27:35');
INSERT INTO `sys_log` VALUES ('3aba398b-5c41-433c-9dbd-2f66219553c8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:04:58');
INSERT INTO `sys_log` VALUES ('3adebdea-054d-4af4-bfea-49ba7c838ed6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:13:26');
INSERT INTO `sys_log` VALUES ('3ae6e48d-946b-43ee-b98b-5fc3a3609808', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 19:45:03');
INSERT INTO `sys_log` VALUES ('3b774b58-47e9-4de5-8c68-a268af771e30', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:09:40');
INSERT INTO `sys_log` VALUES ('3bfe906f-0ce9-4756-bcb7-a9f9a7131719', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-04 15:39:42');
INSERT INTO `sys_log` VALUES ('3c4e0682-b2ef-4138-a052-828a84665380', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:50:17');
INSERT INTO `sys_log` VALUES ('3d047bcc-a1e6-408b-8e13-d74bb816f97b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:36:19');
INSERT INTO `sys_log` VALUES ('3d6e1ff7-430d-47eb-9127-b297423e3aba', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 16:17:49');
INSERT INTO `sys_log` VALUES ('3d7f2cf8-7b1a-45aa-9aaa-39a5099e143d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:28');
INSERT INTO `sys_log` VALUES ('3d8d1bc2-d3a1-419f-a528-52d11a74443d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-30 01:02:40');
INSERT INTO `sys_log` VALUES ('3d95b958-c561-4f6c-9f8c-8898d2b622b1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 15:29:44');
INSERT INTO `sys_log` VALUES ('3d97c39d-1fe5-4c62-a124-7ab1accd7518', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 17:01:09');
INSERT INTO `sys_log` VALUES ('3dc63acb-8d8c-415e-b438-9497b06f58ed', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:34:25');
INSERT INTO `sys_log` VALUES ('3ea373d9-eed2-47b6-b885-5323c192a8fa', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:14:21');
INSERT INTO `sys_log` VALUES ('3ecdd294-f9af-4220-8bee-a90a20aad851', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:14:11');
INSERT INTO `sys_log` VALUES ('3ed3b14d-28f0-48e2-ad2d-9a3e041f6e0a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:56');
INSERT INTO `sys_log` VALUES ('3ed6ac7a-9280-4154-a655-6baf5db91efc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-12 10:24:42');
INSERT INTO `sys_log` VALUES ('3f4d3494-faff-45a5-b26d-43471c29cc01', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:49:20');
INSERT INTO `sys_log` VALUES ('3fa645b6-9ade-4fd9-af64-a5b2310a9083', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:04:47');
INSERT INTO `sys_log` VALUES ('4001c227-b9fc-473a-8f01-bc492f6be24f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:37:58');
INSERT INTO `sys_log` VALUES ('40402d26-5199-42b6-a585-a5b8ad20d9d8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-05 17:17:14');
INSERT INTO `sys_log` VALUES ('405a5bba-d175-4e0b-92da-7015004f64b5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 09:47:36');
INSERT INTO `sys_log` VALUES ('40731ac1-c260-4463-973d-9265c6024885', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗17ms', null, 'liuc', '2018-01-10 15:56:28');
INSERT INTO `sys_log` VALUES ('40a637ea-cfcf-4b92-b750-17974c22a597', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:19:25');
INSERT INTO `sys_log` VALUES ('40d9eb96-5513-4d02-966b-36645b9e41d7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:44:16');
INSERT INTO `sys_log` VALUES ('41431548-1a35-49da-8229-856dd0502222', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:33');
INSERT INTO `sys_log` VALUES ('4155be04-c3c5-4525-88e8-9cbbfb0d33c2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:48:31');
INSERT INTO `sys_log` VALUES ('425308ac-1914-44a9-b844-c182d1209c67', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:54:31');
INSERT INTO `sys_log` VALUES ('42b6d932-8752-4ee8-af3a-e4ea56545944', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-05 13:14:40');
INSERT INTO `sys_log` VALUES ('4378b48d-9ed8-42f4-b671-87123a206ea2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:53');
INSERT INTO `sys_log` VALUES ('437a079b-e730-4fa5-9e5f-b00dc411a171', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:47:43');
INSERT INTO `sys_log` VALUES ('437b30e7-8640-4855-af4a-727d1b62adb1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:14:16');
INSERT INTO `sys_log` VALUES ('4391d11e-9aa4-4aa2-bcd0-34c07cc4c70c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 17:01:46');
INSERT INTO `sys_log` VALUES ('4396daa9-6845-4496-8de8-234154b6572f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 16:25:13');
INSERT INTO `sys_log` VALUES ('439befba-f4db-4a10-a986-1db0a3a33393', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:16:01');
INSERT INTO `sys_log` VALUES ('43a20074-75ed-4e08-8ed1-2f7885342539', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:35:33');
INSERT INTO `sys_log` VALUES ('43c37913-2a6d-48f9-a899-2fa914f61b27', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 17:17:29');
INSERT INTO `sys_log` VALUES ('443a44be-8c26-49f7-a375-fc8d6ebb7080', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:23:47');
INSERT INTO `sys_log` VALUES ('4458f31f-fe62-422a-94cc-460074064d49', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:53:28');
INSERT INTO `sys_log` VALUES ('44d90709-92e8-436e-aaf4-ac01bbc10696', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:11:38');
INSERT INTO `sys_log` VALUES ('44e9fb8b-e865-4f2c-a2df-c28b955d5993', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:51');
INSERT INTO `sys_log` VALUES ('4512eddd-c3a0-40b1-9ed7-d42f4f877e00', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:14:59');
INSERT INTO `sys_log` VALUES ('45248f91-6df1-4bed-bfb0-dd34de932275', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:03');
INSERT INTO `sys_log` VALUES ('453a6eb4-ffd0-47f1-8078-dd576953ba58', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:54:48');
INSERT INTO `sys_log` VALUES ('453fdc51-dba0-426e-a27d-33b5ddd77aee', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:12:38');
INSERT INTO `sys_log` VALUES ('45946c1a-0baa-4436-8884-c479b5abcf10', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:07:53');
INSERT INTO `sys_log` VALUES ('4610c86b-6dd2-4733-8cc6-9051661e0917', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:04');
INSERT INTO `sys_log` VALUES ('467bb04d-ec99-4e0c-b24b-3a68771e69c7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-08 09:37:47');
INSERT INTO `sys_log` VALUES ('46ab0603-6bae-4f83-8e20-1fd92b873b37', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:48:59');
INSERT INTO `sys_log` VALUES ('46deb735-dc82-4db2-9102-694eaef874b9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:19:32');
INSERT INTO `sys_log` VALUES ('46f08dcb-58c6-4786-bb1c-bab2d2acb532', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:56:03');
INSERT INTO `sys_log` VALUES ('472cbf4c-4498-449a-bad9-28a51f5a76a3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 17:22:12');
INSERT INTO `sys_log` VALUES ('473572d8-062e-48fd-be4e-8dc68b15abc8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-09 13:34:22');
INSERT INTO `sys_log` VALUES ('475be03c-9923-45b5-a8a1-e82efb7f61d2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 13:51:22');
INSERT INTO `sys_log` VALUES ('47c1d299-bd77-4449-a89b-6a304d7f210b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 14:20:53');
INSERT INTO `sys_log` VALUES ('480c5b8e-5966-4c47-9992-80a7ad1c4445', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 17:10:28');
INSERT INTO `sys_log` VALUES ('482beea6-e76d-4ee1-b920-87a5f53c0286', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 16:16:40');
INSERT INTO `sys_log` VALUES ('4874c07c-8efc-4b57-800f-eb44dab29a33', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:52:31');
INSERT INTO `sys_log` VALUES ('49a7a89e-70a5-479e-8cb6-7e83f5d8ff9b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 21:24:38');
INSERT INTO `sys_log` VALUES ('49c394d4-2b71-48e6-9707-2fc4f1d7020d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:49:18');
INSERT INTO `sys_log` VALUES ('4a49d46f-d4b4-4188-be7b-ee9a51712bc5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 14:48:56');
INSERT INTO `sys_log` VALUES ('4a8eb348-6b50-4f77-94e1-692e82be8bf9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 16:08:21');
INSERT INTO `sys_log` VALUES ('4ab6615e-7a5b-4c74-9c54-971ba39d342d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:10:30');
INSERT INTO `sys_log` VALUES ('4ab8bbb1-907e-4b25-9469-0924b9dce084', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:31:47');
INSERT INTO `sys_log` VALUES ('4b158ba9-52b8-4ffc-bd57-248decce0dac', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:33');
INSERT INTO `sys_log` VALUES ('4b2c6225-fb30-482a-b502-75bf2718bf0d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:53:23');
INSERT INTO `sys_log` VALUES ('4b2f374e-8c4c-4e18-b705-7999c539cb55', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2017-12-29 17:06:14');
INSERT INTO `sys_log` VALUES ('4b9551c5-fca9-4dbf-9eff-cc8d6a54dff3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:33:29');
INSERT INTO `sys_log` VALUES ('4b96d4bf-084c-48c1-bcbc-2e7e9704b507', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:00');
INSERT INTO `sys_log` VALUES ('4bad2fd5-ee45-4a48-86a7-6749a279aaa5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:17:11');
INSERT INTO `sys_log` VALUES ('4bf41376-986e-4697-b053-40ed49a320fb', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:14:57');
INSERT INTO `sys_log` VALUES ('4c27995c-a4ef-4fc8-8e07-e0046e791331', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:32:05');
INSERT INTO `sys_log` VALUES ('4c9ced6a-a3cd-477b-81ae-7a556d08fec0', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:24:35');
INSERT INTO `sys_log` VALUES ('4cc0b155-38c2-4331-a5ef-65d09fad1ee0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:23:13');
INSERT INTO `sys_log` VALUES ('4cc4f2d4-ef50-4652-baa8-22ab1be2e0e1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-12 10:24:33');
INSERT INTO `sys_log` VALUES ('4ccf7a89-0354-404b-898a-11fbcd448b5d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 11:14:41');
INSERT INTO `sys_log` VALUES ('4cdfe2e1-5f31-4c8d-93b1-95135992cc7a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 21:21:13');
INSERT INTO `sys_log` VALUES ('4d0930ce-461b-43f9-97b9-b9f306ea65cc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 09:43:12');
INSERT INTO `sys_log` VALUES ('4d1a22e9-8976-44fb-a886-91d5a8f63074', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:31:36');
INSERT INTO `sys_log` VALUES ('4ddd1248-4596-4ecb-b88e-0530b9c07887', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 09:50:13');
INSERT INTO `sys_log` VALUES ('4ddfc6fa-7359-471f-ab3b-2277c17811a8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-09 16:58:22');
INSERT INTO `sys_log` VALUES ('4dea300d-989b-44d8-b308-00b0a9eb0a65', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-08 15:17:28');
INSERT INTO `sys_log` VALUES ('4df434f5-9c0a-4331-8036-add0894d32fb', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 16:43:41');
INSERT INTO `sys_log` VALUES ('4eeebd80-7837-4b53-abce-0fa1f16446a6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-03 21:38:00');
INSERT INTO `sys_log` VALUES ('4f67d6b6-4599-440b-bf99-584b07f8258e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:37:13');
INSERT INTO `sys_log` VALUES ('504fa193-66d3-493a-b121-61f57c157bba', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:14:55');
INSERT INTO `sys_log` VALUES ('5092333d-61a7-49f9-ba6b-b7028da3b42d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:30:53');
INSERT INTO `sys_log` VALUES ('50b0626d-cfaa-45b7-b7e3-2c4bba1c1a3e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:56:18');
INSERT INTO `sys_log` VALUES ('5169c39c-9cc3-4c71-9e59-3e7b8f9d0ecc', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:26:05');
INSERT INTO `sys_log` VALUES ('518da8d1-d60b-41a5-bb15-833f0ecb201b', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:00:21');
INSERT INTO `sys_log` VALUES ('523e3990-6db0-4c5f-8d3e-30012c8c2e46', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:36:51');
INSERT INTO `sys_log` VALUES ('5262d692-344a-432a-9bee-7afd02338a7f', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:33:32');
INSERT INTO `sys_log` VALUES ('52a0b2e6-7a39-4ae9-be7c-7e26f4a23505', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 09:52:00');
INSERT INTO `sys_log` VALUES ('52a6f0f6-088c-41dd-a6e3-959eb542c5f8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:21:30');
INSERT INTO `sys_log` VALUES ('52f922a0-5e51-42d1-a78a-dc0224ae6137', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-03 16:09:03');
INSERT INTO `sys_log` VALUES ('5352034f-8bd2-4248-8c19-5c9148c152a1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:10:01');
INSERT INTO `sys_log` VALUES ('5356ad73-6bd7-4004-85be-6634f68ff1f6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:24:18');
INSERT INTO `sys_log` VALUES ('5382d92d-8957-46b4-b69d-a01a1291f388', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 16:14:09');
INSERT INTO `sys_log` VALUES ('543bb8c5-503f-4465-a537-fd0eea3f56c3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:51:10');
INSERT INTO `sys_log` VALUES ('54827744-682a-49c9-8c1a-876cae8061dd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:31:10');
INSERT INTO `sys_log` VALUES ('550abc62-0929-4b45-8dcf-a88b6248bd71', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:14:12');
INSERT INTO `sys_log` VALUES ('56d050a9-a5c2-4abe-a58c-0314559c7075', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:44:22');
INSERT INTO `sys_log` VALUES ('56d0a253-3c5c-47a5-b054-68ad03c3d42b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:46:32');
INSERT INTO `sys_log` VALUES ('5752e106-f7a1-464b-bdc9-a941d1a124e6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:17:30');
INSERT INTO `sys_log` VALUES ('575a9bc2-b492-42bd-adbb-fb67777f6fba', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:21');
INSERT INTO `sys_log` VALUES ('57b64a95-0b2f-4c3b-944d-4dd74323df87', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-08 09:07:09');
INSERT INTO `sys_log` VALUES ('58683ff5-2d7c-4a22-9755-1ef1708a23c1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:47:48');
INSERT INTO `sys_log` VALUES ('586f4cfc-b9c5-41f7-b1a8-4734820ee0f9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:29:10');
INSERT INTO `sys_log` VALUES ('5884d07d-4a4e-4773-8f6f-69ee51eba17a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 11:08:37');
INSERT INTO `sys_log` VALUES ('588b63f0-453d-4b81-82ab-b2f8c6d6e082', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 17:29:49');
INSERT INTO `sys_log` VALUES ('59140d5c-f8de-4e2a-8f4d-604179255701', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:35:19');
INSERT INTO `sys_log` VALUES ('5946ba6e-90c7-4669-a13d-47940dc28bbc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 15:20:04');
INSERT INTO `sys_log` VALUES ('59a4eb9e-c693-405f-a876-18a50806907d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-11 16:19:00');
INSERT INTO `sys_log` VALUES ('5a12dbe1-0f31-4b20-90c2-e36291fa677b', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:49:19');
INSERT INTO `sys_log` VALUES ('5a8f8459-caf5-4560-bda2-028ea4448cb1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:51:47');
INSERT INTO `sys_log` VALUES ('5aba0b72-8e1a-44af-8e09-6d7a7969d819', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:15:16');
INSERT INTO `sys_log` VALUES ('5af0d425-1164-4398-b0e6-58a5b575bc13', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗20ms', null, 'liuc', '2018-01-09 17:22:08');
INSERT INTO `sys_log` VALUES ('5b0a4d99-0382-4fa7-9630-a8fde0a7c45a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:01:53');
INSERT INTO `sys_log` VALUES ('5ba02273-8bcb-4911-bc9b-138d8be02c00', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:59:15');
INSERT INTO `sys_log` VALUES ('5c25b8f8-034f-4d11-bc2d-45e011d25958', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:36:13');
INSERT INTO `sys_log` VALUES ('5c37362b-1f74-4259-875e-e169d2ee8851', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:25:58');
INSERT INTO `sys_log` VALUES ('5c436053-7f0a-462c-8b0b-b30ed47f079b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:37:28');
INSERT INTO `sys_log` VALUES ('5c7c0df7-77c4-44ca-8cc1-c47aa54ef3e2', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:23:49');
INSERT INTO `sys_log` VALUES ('5d10fe0a-4c1c-4f98-a48c-04a104da0397', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-10 16:47:41');
INSERT INTO `sys_log` VALUES ('5d55bebc-b6f3-413d-91a7-7065e87ddf1a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-03 14:22:21');
INSERT INTO `sys_log` VALUES ('5d9547f1-91bb-4645-b939-7260f7d2d724', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:25:44');
INSERT INTO `sys_log` VALUES ('5e250ae7-fcbe-4134-af60-6f7b7b298a44', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 17:20:34');
INSERT INTO `sys_log` VALUES ('5e80d8d6-a7f8-4f9d-aa47-a27d651853f3', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-10 16:37:37');
INSERT INTO `sys_log` VALUES ('5e905aa8-e0e4-4415-a2c7-09c1997fe929', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:53:25');
INSERT INTO `sys_log` VALUES ('5e97a930-ad33-4a99-b981-03ec59dbbf4f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-09 17:25:06');
INSERT INTO `sys_log` VALUES ('5eaeadd1-e775-4780-bd3e-33f6718bf8da', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 14:45:34');
INSERT INTO `sys_log` VALUES ('5eb51e2d-f242-40c3-a712-dd21b80761f1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:24:45');
INSERT INTO `sys_log` VALUES ('5ebab7be-88c2-43cf-bc11-8ff45473abd0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:05:59');
INSERT INTO `sys_log` VALUES ('5ed2224c-c63b-4e13-98cf-878bc7232bc2', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:04:50');
INSERT INTO `sys_log` VALUES ('5ed834bf-66a3-446c-985b-fa37e2aa69ee', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:06:49');
INSERT INTO `sys_log` VALUES ('5f026081-88ad-42ec-9234-19911d74a580', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:55:10');
INSERT INTO `sys_log` VALUES ('5f10a1a3-175f-47f3-9e21-8181a0f8f815', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 14:22:35');
INSERT INTO `sys_log` VALUES ('5f198c3a-8efe-49cc-b01b-d021951da9ae', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 14:05:18');
INSERT INTO `sys_log` VALUES ('5f67464e-da01-43cd-bd00-bd63b23cb263', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:13:23');
INSERT INTO `sys_log` VALUES ('5f7845fa-d473-4567-a418-f44c8d86c25a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:45:13');
INSERT INTO `sys_log` VALUES ('6004339d-4e03-4151-8ed1-641144d5ad1e', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:34:32');
INSERT INTO `sys_log` VALUES ('6020ecb7-1711-4bca-8bca-f6d607158e5c', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:33:06');
INSERT INTO `sys_log` VALUES ('60293dce-180a-45a7-99a1-7a962ca13fb7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:01:33');
INSERT INTO `sys_log` VALUES ('603ee3ba-552e-475b-9fda-128d439b8e42', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:53:11');
INSERT INTO `sys_log` VALUES ('60777459-57fa-42a5-9e7f-4f4e3fdf3549', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:11:21');
INSERT INTO `sys_log` VALUES ('608a64ea-1e2e-4199-82ac-af4f28aae804', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:39:41');
INSERT INTO `sys_log` VALUES ('609091cb-afc8-41b4-8816-2af2bf54eef2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:08');
INSERT INTO `sys_log` VALUES ('60a7815c-5b8d-48f7-a83d-456578a99197', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:06:51');
INSERT INTO `sys_log` VALUES ('60c353c5-d15e-4dc5-8420-faae94d75327', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:46:57');
INSERT INTO `sys_log` VALUES ('60e36339-1e9a-4fe1-a2af-2d1008d0c496', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:11:06');
INSERT INTO `sys_log` VALUES ('611e0939-e482-44b7-93bb-20e6dbe0d294', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 16:08:22');
INSERT INTO `sys_log` VALUES ('61c485f2-4d4a-4412-a2a8-18abfe9bf0bc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2017-12-29 15:02:09');
INSERT INTO `sys_log` VALUES ('622be194-133c-4b5a-a2a2-91880d25faca', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:19:40');
INSERT INTO `sys_log` VALUES ('623f1c14-5b63-4a8e-92da-033acbc7d80e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 17:25:09');
INSERT INTO `sys_log` VALUES ('62802187-1a3f-448c-97a8-cb1dd701e379', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:57:01');
INSERT INTO `sys_log` VALUES ('62e43b1d-6221-4b9e-8672-1abeea843c10', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 10:06:34');
INSERT INTO `sys_log` VALUES ('62fb79cd-a45d-4cff-b32e-41f82ba90f5c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 15:21:12');
INSERT INTO `sys_log` VALUES ('6301de6a-b7a6-4dd6-b3fa-c55617fb95eb', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:48:55');
INSERT INTO `sys_log` VALUES ('6312e5e3-484f-4292-b15f-56cce3945b31', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:57:02');
INSERT INTO `sys_log` VALUES ('63137cf4-5afe-4abb-8999-1b7dfba7b6fb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2017-12-31 15:35:57');
INSERT INTO `sys_log` VALUES ('631b70e9-6cf5-4b4a-8d08-2f113ca54f59', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-05 23:20:15');
INSERT INTO `sys_log` VALUES ('634de3ae-73df-4545-bba9-029dd4ff9ac9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:23:38');
INSERT INTO `sys_log` VALUES ('63d02d4b-d07d-4366-b603-7894488dc6cf', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:00:01');
INSERT INTO `sys_log` VALUES ('6418935d-71a3-401d-bc44-fdddfc39a22a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:12');
INSERT INTO `sys_log` VALUES ('64d11876-f050-41f6-906c-8e35f65495d3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:05:00');
INSERT INTO `sys_log` VALUES ('6511f727-ce1d-49e7-88bf-93f8f3721be4', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:55:02');
INSERT INTO `sys_log` VALUES ('652dd07e-61b2-4bd8-939c-4bb87e31c15f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-12 13:11:28');
INSERT INTO `sys_log` VALUES ('6561afba-49b9-4ab1-90a5-c2459d135c87', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:01:16');
INSERT INTO `sys_log` VALUES ('65767227-3bd7-4d40-bf2a-d0a884e32c6c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-05 23:49:12');
INSERT INTO `sys_log` VALUES ('65aefb4d-5ce4-4679-990e-b2f4726a7db6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:37:00');
INSERT INTO `sys_log` VALUES ('65f3c56c-772c-4043-ab70-e036ecd661df', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:52:38');
INSERT INTO `sys_log` VALUES ('661649cf-29d2-4755-84f0-82f69254a2f7', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:23:41');
INSERT INTO `sys_log` VALUES ('663e4cca-4042-4d2e-8ee2-62af856f7645', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:46:43');
INSERT INTO `sys_log` VALUES ('66aaced9-04b3-4dfe-88ea-5ae4d51070cc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:13:28');
INSERT INTO `sys_log` VALUES ('66ce7fc0-8523-495f-8ba9-7f0e276d5172', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:47:55');
INSERT INTO `sys_log` VALUES ('67cfa634-1d00-4e38-b21c-9b73405957aa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:47:31');
INSERT INTO `sys_log` VALUES ('6829634d-0a46-468e-b87f-dfee727f0b83', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 14:03:33');
INSERT INTO `sys_log` VALUES ('6863bb1f-59e5-4b3b-b3fb-b3a79b6b03ff', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 16:10:53');
INSERT INTO `sys_log` VALUES ('68796b1f-ae97-4622-b4da-b7e3c973ee18', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:38:50');
INSERT INTO `sys_log` VALUES ('68819c29-d24a-4bb0-878e-47e610cdff00', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:11:49');
INSERT INTO `sys_log` VALUES ('689b5f71-180b-4847-8522-18cfe9f7d5f0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-09 16:43:15');
INSERT INTO `sys_log` VALUES ('689c1582-57ac-4b26-98b4-bdf053ec9f76', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:43:21');
INSERT INTO `sys_log` VALUES ('689e094d-c5ef-4a68-aa86-345584120466', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:49:49');
INSERT INTO `sys_log` VALUES ('68aff2fe-ded6-490c-b366-ff7220053e2a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:04:45');
INSERT INTO `sys_log` VALUES ('698a8761-3fd9-44d3-8ee6-a7b42a70cd42', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:17:18');
INSERT INTO `sys_log` VALUES ('69d0b80d-f7ca-4924-892e-6802b6dc90a2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:58');
INSERT INTO `sys_log` VALUES ('69d3d8ce-a056-479b-ba9c-893f3514098c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 09:54:14');
INSERT INTO `sys_log` VALUES ('6a421c74-7e39-45c4-a0a0-6027ef34a3fb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:48:24');
INSERT INTO `sys_log` VALUES ('6af7b924-bcba-4fbc-83de-6b4a6f0c4aa3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:50:47');
INSERT INTO `sys_log` VALUES ('6b3a074c-4e60-4fcd-ac1f-a54299141701', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:33:46');
INSERT INTO `sys_log` VALUES ('6b6d8911-42f5-436c-a64c-3eb90746f5dd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:35:15');
INSERT INTO `sys_log` VALUES ('6b8ba084-d354-4654-8b8b-042f01ba9a6d', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:26:28');
INSERT INTO `sys_log` VALUES ('6bad5071-6d37-4678-bbab-4cea4a0e2a39', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 15:50:02');
INSERT INTO `sys_log` VALUES ('6bc2e3f2-bfd0-48e2-bfda-bcc45d0290a8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-10 09:35:03');
INSERT INTO `sys_log` VALUES ('6bfc2a40-9f26-4aa5-aad7-387681695ed6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:51:50');
INSERT INTO `sys_log` VALUES ('6c2ea47d-faab-4673-b771-a177c4ffe319', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:42:19');
INSERT INTO `sys_log` VALUES ('6d0827bf-1b6f-48af-890f-d35c5cf574db', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-10 08:59:35');
INSERT INTO `sys_log` VALUES ('6d1390c0-0adc-4d58-a480-fc619ae83681', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:50:27');
INSERT INTO `sys_log` VALUES ('6d30415f-19f8-4dd3-b4c9-f819310ee36a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-02 15:07:59');
INSERT INTO `sys_log` VALUES ('6d8458f2-3ec7-4eca-9a1b-11c02fa09fd5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 16:35:32');
INSERT INTO `sys_log` VALUES ('6db3d0be-21cf-47d7-b937-e1c859742e74', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:46:13');
INSERT INTO `sys_log` VALUES ('6db6d85f-248d-40d5-b7c6-580b99e00f31', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 21:40:17');
INSERT INTO `sys_log` VALUES ('6dfd68fc-61d0-4322-84cf-3dc606c8c6dd', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:24:33');
INSERT INTO `sys_log` VALUES ('6e2c4162-0cb8-4d48-abfd-8e46c89dac0d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:23:29');
INSERT INTO `sys_log` VALUES ('6e83e971-522c-4c2b-bafc-154eef2cdfb7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2017-12-31 15:10:32');
INSERT INTO `sys_log` VALUES ('6ef06019-77f1-46e3-9e64-f58d5e5f8c88', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 15:31:01');
INSERT INTO `sys_log` VALUES ('6f450638-640c-4a07-875f-a576a352713d', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:50:40');
INSERT INTO `sys_log` VALUES ('6f69bf54-cf1f-4c73-b79f-c43e0919eda6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:40:34');
INSERT INTO `sys_log` VALUES ('70163446-d2b7-48d9-ada8-1ec2b89b2318', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:05');
INSERT INTO `sys_log` VALUES ('707babea-44f9-410f-95d3-af3630df23aa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:43:58');
INSERT INTO `sys_log` VALUES ('7086736e-c9d5-4ca4-8ab9-21f5b4374f21', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:10:00');
INSERT INTO `sys_log` VALUES ('711c754b-6089-4bed-a89e-d9cac079f826', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:14:04');
INSERT INTO `sys_log` VALUES ('714c05f4-2536-413a-91a4-5fff84e7bcbd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:43:51');
INSERT INTO `sys_log` VALUES ('7154891a-f1c2-4808-ae33-13c1c987d328', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-10 14:40:27');
INSERT INTO `sys_log` VALUES ('7169a923-f573-43b9-ba97-1d78dce22eea', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:35:32');
INSERT INTO `sys_log` VALUES ('718b68b6-f5ae-4829-84bb-4fa7ff8a1094', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2017-12-29 15:30:45');
INSERT INTO `sys_log` VALUES ('71be18ed-1da9-40c4-910b-969e10e4b782', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:24:28');
INSERT INTO `sys_log` VALUES ('71d9c423-f470-4505-a324-89e0e27f4ce0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:16:32');
INSERT INTO `sys_log` VALUES ('71f49737-562b-494f-9df5-29cd0fb106c2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:08:11');
INSERT INTO `sys_log` VALUES ('72690740-b198-47fb-9ff5-f7ceb8983105', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:12:23');
INSERT INTO `sys_log` VALUES ('7275a522-364a-4683-a880-d9bd621199af', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:00:38');
INSERT INTO `sys_log` VALUES ('7300a595-1dfb-4676-bf8a-8e41d5f96188', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-03 14:22:30');
INSERT INTO `sys_log` VALUES ('734c619f-52ef-4f12-aba3-91bf7652e3cd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗14ms', null, 'liuc', '2018-01-10 09:33:49');
INSERT INTO `sys_log` VALUES ('7395d104-bdb8-4e0c-afe7-7fa0bcfab186', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:23:51');
INSERT INTO `sys_log` VALUES ('73aae14d-41dd-44ac-b939-e1ac14799a4a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:59:21');
INSERT INTO `sys_log` VALUES ('73ac8f41-0984-4067-828b-6c8e0624a587', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 11:18:48');
INSERT INTO `sys_log` VALUES ('73dfb652-ea62-4d0b-96b4-ff575c99235d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 11:18:47');
INSERT INTO `sys_log` VALUES ('73f79de6-3f3d-41be-acff-bb29f916397b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:55:16');
INSERT INTO `sys_log` VALUES ('74539a91-f5da-46a2-ac40-9862c67967d2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:52:07');
INSERT INTO `sys_log` VALUES ('74579414-9495-4ea5-9b3e-ed281d2dae8f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-10 14:45:48');
INSERT INTO `sys_log` VALUES ('748deed0-9f11-4b83-a9d6-9e2f8e125a1d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:09:09');
INSERT INTO `sys_log` VALUES ('74c6c9d9-a4ae-4031-ba6e-abfca951a148', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:06:48');
INSERT INTO `sys_log` VALUES ('750bc667-dfc9-47cb-9f76-2e31f2c0e8a3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:53:20');
INSERT INTO `sys_log` VALUES ('754cd527-cee0-4514-9e03-99f35b585212', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 10:25:23');
INSERT INTO `sys_log` VALUES ('758652d3-e020-4269-a9bd-26dc6baff8c0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 21:18:28');
INSERT INTO `sys_log` VALUES ('758f9e24-dc8a-4827-b331-dd46404961b0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 10:36:17');
INSERT INTO `sys_log` VALUES ('76208828-0963-4b47-aff9-6ac8b6f31af4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:26:27');
INSERT INTO `sys_log` VALUES ('76f8d80d-eca9-4f95-8ab0-3dd6abbf228a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗14ms', null, 'liuc', '2018-01-10 13:24:45');
INSERT INTO `sys_log` VALUES ('776190f2-1b9a-4705-98e9-cedce8307905', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 09:32:10');
INSERT INTO `sys_log` VALUES ('77632032-8154-4b85-97a6-89803929b4e6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:09:09');
INSERT INTO `sys_log` VALUES ('778fdfda-a724-43b9-8dfe-afb64f3d8006', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-11 08:58:33');
INSERT INTO `sys_log` VALUES ('7790b1ce-a151-45b5-81ae-79723c94e6c1', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:35:04');
INSERT INTO `sys_log` VALUES ('77e107da-8c83-4b36-b299-b54c6f387ea5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:55:35');
INSERT INTO `sys_log` VALUES ('780e1b43-ca85-449c-8348-8ef7390a1739', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:41:37');
INSERT INTO `sys_log` VALUES ('782f386c-a623-4727-8708-145e1de981d0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:14:13');
INSERT INTO `sys_log` VALUES ('785755ea-2625-4fb4-86a3-380f3cfda839', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-02 08:53:47');
INSERT INTO `sys_log` VALUES ('78644f8c-f392-48cd-84d5-8efe53e0bfd1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2017-12-29 21:40:26');
INSERT INTO `sys_log` VALUES ('7865d811-329d-4d23-8638-3bb12fbf0fcc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:04:58');
INSERT INTO `sys_log` VALUES ('7894698e-c4f2-4110-8c47-b295d86420bc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 14:55:56');
INSERT INTO `sys_log` VALUES ('78b98767-0fe0-4db7-b8a8-632cf8850617', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:10:40');
INSERT INTO `sys_log` VALUES ('78bb8f9e-b19f-4aa3-9034-10f9a34f2000', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:25:02');
INSERT INTO `sys_log` VALUES ('791ae16e-7fcf-4aac-a61b-286c83644ff6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:32:10');
INSERT INTO `sys_log` VALUES ('792ccb4f-16de-4031-8700-170b12b3d02d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:10:49');
INSERT INTO `sys_log` VALUES ('797ed65f-91e4-49b7-83f2-544bb737a86f', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:10:02');
INSERT INTO `sys_log` VALUES ('7981b58d-2042-4e12-8768-13e1109557e7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 14:50:41');
INSERT INTO `sys_log` VALUES ('799e71ad-e76d-4cb9-a48f-b0914f6a04e7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:42:13');
INSERT INTO `sys_log` VALUES ('799f89c5-a1e0-4da6-b447-06236e683a4c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 21:12:43');
INSERT INTO `sys_log` VALUES ('79fdd064-f9c1-4739-a4a9-2812586f9b8d', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:25:03');
INSERT INTO `sys_log` VALUES ('7a01370c-2630-4392-bffc-1d9e524f3a26', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-09 10:25:20');
INSERT INTO `sys_log` VALUES ('7a17b5fa-b4f2-46da-acc0-33faf391eb1d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 15:17:48');
INSERT INTO `sys_log` VALUES ('7aa5dda7-25bb-4e46-95a4-5574ec06a98e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:51:45');
INSERT INTO `sys_log` VALUES ('7acc99cf-4a2b-422f-a10f-3b04aba0e0d5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 15:50:44');
INSERT INTO `sys_log` VALUES ('7ad1a0d6-4253-4824-9df1-f07c80d22f18', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 16:08:20');
INSERT INTO `sys_log` VALUES ('7ae48a48-c8b4-4243-8bc8-c30bf61506be', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:11:09');
INSERT INTO `sys_log` VALUES ('7ae4ba49-2d29-44d2-82dc-4801a16e2c15', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 15:49:54');
INSERT INTO `sys_log` VALUES ('7b0f2bf5-0ea1-4d16-b047-c4d8e8445309', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:49:44');
INSERT INTO `sys_log` VALUES ('7b5579b7-6226-4523-865d-d437c1711b3a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 10:53:20');
INSERT INTO `sys_log` VALUES ('7b5c79f5-5322-4519-9b90-a8da9d2e005a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 09:22:39');
INSERT INTO `sys_log` VALUES ('7c18167c-e3ff-4a5b-bcdb-babba28c7150', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:33:41');
INSERT INTO `sys_log` VALUES ('7c3a0dd9-c9a1-4237-a77c-4a6c03670a6e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:13:31');
INSERT INTO `sys_log` VALUES ('7c3a3ff5-0be6-452d-9bee-e8e53515177c', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:50');
INSERT INTO `sys_log` VALUES ('7c961be8-2957-482f-8430-09b84271d5c7', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:26:07');
INSERT INTO `sys_log` VALUES ('7ca870d6-baf3-461e-abfd-19dafadc11ae', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 11:18:29');
INSERT INTO `sys_log` VALUES ('7cba0f52-04f5-4eed-9585-3b793d98e247', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 10:54:42');
INSERT INTO `sys_log` VALUES ('7cc0a1f4-8831-44dd-9824-48cece14543d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:24:31');
INSERT INTO `sys_log` VALUES ('7d39a83b-699a-4dff-b681-9c7ea0bc2f53', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:34:11');
INSERT INTO `sys_log` VALUES ('7d74a0b4-ca9a-4e34-bc71-830563bd99a7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:53:49');
INSERT INTO `sys_log` VALUES ('7daf2109-228c-428b-9d08-818fcf06a829', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:01:11');
INSERT INTO `sys_log` VALUES ('7db66d0e-0aef-4af9-9698-bc5149225934', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 09:52:28');
INSERT INTO `sys_log` VALUES ('7e10d80c-4cc3-41e1-b658-875435b3b80f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:29:29');
INSERT INTO `sys_log` VALUES ('7e557952-303a-49c2-a5e2-87ecf2a03008', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:01:04');
INSERT INTO `sys_log` VALUES ('7ec05023-5774-4d8a-b832-4f05585c7f79', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:29');
INSERT INTO `sys_log` VALUES ('7ec27bf8-a5b6-4e95-8cd6-7a9f2f1c7659', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:13:45');
INSERT INTO `sys_log` VALUES ('7eff0b38-dfde-47de-b5cf-7c19941c795e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:37:00');
INSERT INTO `sys_log` VALUES ('7f80f20e-0323-4945-ae7e-5a93d372151c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:57:32');
INSERT INTO `sys_log` VALUES ('7f9a47d8-3224-4a5a-9778-1c1d9db772da', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 10:10:18');
INSERT INTO `sys_log` VALUES ('7fe01194-6824-4861-8eeb-bc3c99b96519', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:08:30');
INSERT INTO `sys_log` VALUES ('800c4728-3221-4492-ae95-33947ce6cbb4', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:22:13');
INSERT INTO `sys_log` VALUES ('80293f16-c14e-4f0c-8460-9cfb286107c1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:13:45');
INSERT INTO `sys_log` VALUES ('8037acba-5eb2-4c4b-aad3-62fd2002856c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 14:55:56');
INSERT INTO `sys_log` VALUES ('80988eba-3250-4ea8-a1a2-964eea584187', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-06 17:04:45');
INSERT INTO `sys_log` VALUES ('80daf28d-67d9-44a8-9f8b-0125ee4f78d1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 16:16:02');
INSERT INTO `sys_log` VALUES ('80e7d883-1361-4393-810c-790317bef53f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 14:22:32');
INSERT INTO `sys_log` VALUES ('80e8548b-f1db-46b9-9d19-42889612432f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:31:22');
INSERT INTO `sys_log` VALUES ('80ff1988-5544-4027-a782-61460a0c044e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:43:50');
INSERT INTO `sys_log` VALUES ('8105261b-4fe3-4f84-b242-e961f2c7d38f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 15:59:29');
INSERT INTO `sys_log` VALUES ('81213384-5eaa-46a3-b763-876198fa63bd', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:11:48');
INSERT INTO `sys_log` VALUES ('8136547b-a691-4499-9513-8f31e18b2a2c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:16:55');
INSERT INTO `sys_log` VALUES ('814580c4-ab2a-4d67-b01a-969c964a14f6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:41:05');
INSERT INTO `sys_log` VALUES ('81879900-5cd7-49f7-acec-debd80417ce5', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 15:03:47');
INSERT INTO `sys_log` VALUES ('81890b64-c09b-4971-8ed0-38dcbb3b7635', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 14:22:33');
INSERT INTO `sys_log` VALUES ('819b8501-2ba2-4895-aa4f-73a8a4a927e1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:40:29');
INSERT INTO `sys_log` VALUES ('81a5852a-cf62-4a76-9354-cb899bbdd5dd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 15:30:05');
INSERT INTO `sys_log` VALUES ('81b53275-e9e7-4063-9e6a-343b452009b5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:01:05');
INSERT INTO `sys_log` VALUES ('81daca30-fc8b-4fff-babf-1b9b0f7273a7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 10:05:21');
INSERT INTO `sys_log` VALUES ('81f7e164-8f5f-41a2-8f1d-035b103a3e63', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:00:10');
INSERT INTO `sys_log` VALUES ('822a45b8-1017-445c-aadb-b6861849a958', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-08 14:00:55');
INSERT INTO `sys_log` VALUES ('82b43061-52d5-4e3b-a9ae-de90507cabb7', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:24:37');
INSERT INTO `sys_log` VALUES ('82ba2178-b360-4d7f-9858-4a777040363a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:59:27');
INSERT INTO `sys_log` VALUES ('82ef14c8-db5a-45e5-96d3-36199ad0e392', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 09:51:57');
INSERT INTO `sys_log` VALUES ('8339cf56-cd6a-4f65-a805-b808ffe350db', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-02 11:19:24');
INSERT INTO `sys_log` VALUES ('834b5ee0-2ad3-4d36-9249-8d0145967077', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 13:05:54');
INSERT INTO `sys_log` VALUES ('8361a970-9ced-4427-95cb-5b57a3d34fc2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 11:17:26');
INSERT INTO `sys_log` VALUES ('839cd4c8-d777-47ef-bd28-657e4a3f0064', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2017-12-29 15:33:22');
INSERT INTO `sys_log` VALUES ('83c2e4f6-183f-461c-8b21-77a7933629d3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:46:38');
INSERT INTO `sys_log` VALUES ('83cc1d79-2eaa-4dc7-a772-0339766110c5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:05:15');
INSERT INTO `sys_log` VALUES ('83df1f32-5b84-48c1-b90b-e6c98d0df509', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-10 13:16:52');
INSERT INTO `sys_log` VALUES ('83ff984a-3d46-414c-9c17-734f50cd02dd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 09:14:37');
INSERT INTO `sys_log` VALUES ('8420af34-293e-497a-b8c2-6f209c9b868c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 10:53:17');
INSERT INTO `sys_log` VALUES ('846b2717-a8b1-41c3-8647-0a7ced97b9dc', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-11 17:25:23');
INSERT INTO `sys_log` VALUES ('84c3ae93-b927-4beb-9d85-5400aa651ed9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:46:11');
INSERT INTO `sys_log` VALUES ('852cba19-c8db-4da5-9442-b1c61afd99f3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:19:25');
INSERT INTO `sys_log` VALUES ('85516b7f-14a6-4de3-9c5b-b5ea25e153de', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:33:47');
INSERT INTO `sys_log` VALUES ('8573d6c6-e855-42d0-8c4e-ca0c969d6fdc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:42');
INSERT INTO `sys_log` VALUES ('85bc167d-74b7-4053-acab-c95a66f8388e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-10 09:32:06');
INSERT INTO `sys_log` VALUES ('85ce0e77-99df-456c-a6d2-e08ffda8d00a', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:42:42');
INSERT INTO `sys_log` VALUES ('85fd002a-b8a0-4d71-b299-6f520f585b41', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:12:52');
INSERT INTO `sys_log` VALUES ('85fe1b57-2582-41f3-a0c8-b7add112390e', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:26:36');
INSERT INTO `sys_log` VALUES ('8633625a-0a4a-4657-b8b1-c0f6c04beec2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:38:05');
INSERT INTO `sys_log` VALUES ('863c2a50-1561-43b8-997c-75dbb28b7168', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:01:53');
INSERT INTO `sys_log` VALUES ('864d3d5e-3516-489b-9a46-835fd406a87a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 17:39:11');
INSERT INTO `sys_log` VALUES ('86c0c17d-19a7-4c1e-aae0-5006e755c049', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:56:23');
INSERT INTO `sys_log` VALUES ('874073e4-80cb-4dc6-855c-e8bb25af38da', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:52:51');
INSERT INTO `sys_log` VALUES ('87a33dde-ae10-4738-9eec-b21fd55960a9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 11:10:17');
INSERT INTO `sys_log` VALUES ('87fd5056-600d-4591-9a7b-ebe7b8cbfada', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:54:00');
INSERT INTO `sys_log` VALUES ('88743e56-f572-4b80-9aeb-a878fc4a6391', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:59');
INSERT INTO `sys_log` VALUES ('8890b98a-d4b5-489a-8408-dabe549197b8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:39:13');
INSERT INTO `sys_log` VALUES ('88d489ae-5673-4d72-ac06-bfbaddbdd448', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:47:56');
INSERT INTO `sys_log` VALUES ('89077c9d-6376-4f1b-90e1-0d3223025cbb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:30');
INSERT INTO `sys_log` VALUES ('892dce06-4bb5-4d9f-a2dd-5251ff9a20bc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 13:19:28');
INSERT INTO `sys_log` VALUES ('894ecae4-1f8d-48f6-9075-1fe93434afe2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:33:57');
INSERT INTO `sys_log` VALUES ('89904f18-986f-424b-ac15-3ff82d180453', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 09:42:01');
INSERT INTO `sys_log` VALUES ('89f67408-4317-4a8e-a47b-becda05699a6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 10:05:19');
INSERT INTO `sys_log` VALUES ('8a29709f-2105-4660-8434-ea572705c95c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 09:49:27');
INSERT INTO `sys_log` VALUES ('8a3552d1-9a56-4fd3-b293-a184829298ae', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:42:58');
INSERT INTO `sys_log` VALUES ('8a40f79b-6ea5-46db-bdd0-89c1d1d7ac2e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:44:37');
INSERT INTO `sys_log` VALUES ('8a79bf99-c021-451e-8e02-ed8c98945fe8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-10 08:59:06');
INSERT INTO `sys_log` VALUES ('8a987055-7a80-47d6-9ad0-7384b88b6352', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-12 15:03:25');
INSERT INTO `sys_log` VALUES ('8ab4fe28-efa6-457c-bfca-d4887ab10e53', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:46:12');
INSERT INTO `sys_log` VALUES ('8adc123c-f477-402a-9f43-4515233f49f5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-05 21:06:32');
INSERT INTO `sys_log` VALUES ('8b79861f-97ac-4847-9a7b-c303df629ee3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 16:12:36');
INSERT INTO `sys_log` VALUES ('8b8808b8-0b08-4924-a7c8-48177e0a35f8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:45:51');
INSERT INTO `sys_log` VALUES ('8bb3804e-9fa4-4d5a-a21a-8e9c343fc501', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:27');
INSERT INTO `sys_log` VALUES ('8bdb79c7-3fe3-45ed-b2d7-0d3e90cc026f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-11 23:05:01');
INSERT INTO `sys_log` VALUES ('8c2bb0f4-2cb1-4752-a238-06d24889db9b', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-11 09:27:46');
INSERT INTO `sys_log` VALUES ('8c3ca862-a192-4b2f-b6f5-030c63399461', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:00:39');
INSERT INTO `sys_log` VALUES ('8dc0f8d7-17b2-408b-8a9e-5eca1d83cd98', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-02 17:04:24');
INSERT INTO `sys_log` VALUES ('8e975eea-b1cf-422a-8bba-bb496856a204', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 14:34:52');
INSERT INTO `sys_log` VALUES ('8ff58a30-150d-49d6-a6eb-7b0e82ac10e6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 15:49:16');
INSERT INTO `sys_log` VALUES ('90808015-26f5-40d0-a7ef-001ebd3836ed', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:17:33');
INSERT INTO `sys_log` VALUES ('9085cfb4-9066-465f-98bb-4a92a2630948', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 10:08:15');
INSERT INTO `sys_log` VALUES ('90fbdee5-1836-459f-837e-c80cbec29828', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-05 17:17:20');
INSERT INTO `sys_log` VALUES ('911611c1-576c-4ce3-b817-08be8c8ffe7c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:30:39');
INSERT INTO `sys_log` VALUES ('9118c89d-63d2-4001-bd3c-9984c61274f7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:01:49');
INSERT INTO `sys_log` VALUES ('911af70c-e547-4ea1-9fe6-ff8537ad2d7e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 21:31:41');
INSERT INTO `sys_log` VALUES ('913916e2-3448-4093-bf98-5907acd737c4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:40:15');
INSERT INTO `sys_log` VALUES ('915f6d0f-840d-4e3f-91ad-991cd17bff67', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:53:55');
INSERT INTO `sys_log` VALUES ('91a1b234-8a75-40cd-93e7-8806263896a3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:38:19');
INSERT INTO `sys_log` VALUES ('91a7149f-8060-42c6-bf6f-1ffe8a702459', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-09 16:45:31');
INSERT INTO `sys_log` VALUES ('91ec2ec1-586b-4967-a7f8-7c853f0d3e70', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:25:00');
INSERT INTO `sys_log` VALUES ('920b9558-1a87-4ada-967a-2065ed7e1461', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:45:10');
INSERT INTO `sys_log` VALUES ('926c5a88-7664-401d-91b6-99ca746b5655', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 09:49:57');
INSERT INTO `sys_log` VALUES ('928a5cfc-d032-42db-a771-79e029c11c3e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-10 13:58:25');
INSERT INTO `sys_log` VALUES ('92a91ddd-1812-48e6-9582-a8f41f01667a', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:24:40');
INSERT INTO `sys_log` VALUES ('92b7a3b7-b735-4b84-b802-6c1d8c9f1b3e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:21');
INSERT INTO `sys_log` VALUES ('92dafbce-b1db-45fc-98a1-89a37ced19fd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 14:50:42');
INSERT INTO `sys_log` VALUES ('938a0b3b-38d0-4e3e-ae50-395a7c747372', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:35:31');
INSERT INTO `sys_log` VALUES ('93a595f5-62ab-40a9-8fd0-5f5345b357ec', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 15:32:04');
INSERT INTO `sys_log` VALUES ('93ef3636-4452-4e7c-bf8c-be928584a1ba', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:09');
INSERT INTO `sys_log` VALUES ('943b809b-5846-4630-af59-3c8aae76dd40', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:11:17');
INSERT INTO `sys_log` VALUES ('943e9dd0-1b7b-4f40-99ac-5282edec9e8d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:43:05');
INSERT INTO `sys_log` VALUES ('944254a3-329f-4721-805f-b867f2b6fa26', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 15:57:29');
INSERT INTO `sys_log` VALUES ('9466342c-3d67-4f64-a42c-f42cbd49252b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-08 14:32:02');
INSERT INTO `sys_log` VALUES ('947be758-7a1f-444d-8a00-000446bbd3a4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:48:36');
INSERT INTO `sys_log` VALUES ('94863226-f340-4158-9183-2f2430444094', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:35:33');
INSERT INTO `sys_log` VALUES ('94f55e3e-91cf-4033-ac36-4555f5da1855', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:49:29');
INSERT INTO `sys_log` VALUES ('94fc1ec7-d9e5-4d2d-9ad0-32709edc235c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:13:52');
INSERT INTO `sys_log` VALUES ('9510f0dc-6392-4357-b84a-e6853993466b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:49:58');
INSERT INTO `sys_log` VALUES ('95184d84-8654-4347-ae84-e2b9f9d25c43', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:11:55');
INSERT INTO `sys_log` VALUES ('9522fc06-7a1c-4089-a3de-1bbbe63637c7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:37:34');
INSERT INTO `sys_log` VALUES ('9563321f-ea26-4d72-a525-d43889fa5e8b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-10 14:14:19');
INSERT INTO `sys_log` VALUES ('95c8643e-f9b8-417b-b815-5394bb638298', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:11:28');
INSERT INTO `sys_log` VALUES ('95fd5ecc-4276-46a6-9901-b8d73ac6814e', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:49:03');
INSERT INTO `sys_log` VALUES ('9627317f-f8fc-4ec2-8ec4-91053c59217a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 13:16:57');
INSERT INTO `sys_log` VALUES ('9636e6cf-87d5-48c8-99c9-b0feadf8fd6f', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:43:34');
INSERT INTO `sys_log` VALUES ('96abf318-b1eb-465d-bc1c-1a6d400f48e9', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:15');
INSERT INTO `sys_log` VALUES ('96d6a2c3-d2a4-4f96-89d3-32aa28b2fc58', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:01');
INSERT INTO `sys_log` VALUES ('96e34f05-dd39-49a7-b67a-e9bccb3af4a6', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗15ms', null, 'liuc', '2018-01-11 17:02:11');
INSERT INTO `sys_log` VALUES ('97239d18-8eb7-4c58-b1cf-478e64c78464', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-06 17:12:54');
INSERT INTO `sys_log` VALUES ('973eadcc-9f46-4f76-8656-444a74f076fc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:46:42');
INSERT INTO `sys_log` VALUES ('97887d7c-b04e-45ca-a1e0-9728aaae1ac2', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:32:12');
INSERT INTO `sys_log` VALUES ('97b81f35-86db-4566-be95-aa41df201f42', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 13:53:17');
INSERT INTO `sys_log` VALUES ('97d4bb3f-b50a-4a52-91c8-3f5b50f673c3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗19ms', null, 'liuc', '2018-01-10 15:02:57');
INSERT INTO `sys_log` VALUES ('98167800-6e5f-49ce-b9d5-bbb44115afcf', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗27ms', null, 'liuc', '2018-01-11 09:27:44');
INSERT INTO `sys_log` VALUES ('982c678a-59ae-4226-84d8-f3198986aec6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-08 16:49:29');
INSERT INTO `sys_log` VALUES ('98313436-bb16-4065-93d8-ddd52f18336b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:40:22');
INSERT INTO `sys_log` VALUES ('9880d29b-9ca7-4a7d-8be9-87da27eee411', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:35:49');
INSERT INTO `sys_log` VALUES ('98f4bcff-cf5b-4cdc-ade5-2c9c5a5b3f28', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-02 15:24:18');
INSERT INTO `sys_log` VALUES ('992e30b2-4b1b-489e-a976-99a5ec47408f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:55:32');
INSERT INTO `sys_log` VALUES ('9946cc86-43fb-49e7-ae8e-f1b650f30f55', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 15:04:43');
INSERT INTO `sys_log` VALUES ('9a496526-a5ad-4da7-8f32-953dee44bd98', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:43:40');
INSERT INTO `sys_log` VALUES ('9a5abb25-fe0a-4f93-b359-15d311b3a887', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 15:31:13');
INSERT INTO `sys_log` VALUES ('9ac7011d-1ef6-4a68-bacf-5316765098fc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:48:21');
INSERT INTO `sys_log` VALUES ('9af526f8-00fc-4dcd-aedf-aa40c194917e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 16:26:08');
INSERT INTO `sys_log` VALUES ('9afaf8f7-b832-4a5c-809d-f4550f0f7dd1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2017-12-31 15:19:59');
INSERT INTO `sys_log` VALUES ('9b2b58d1-21e7-420b-aed8-d211dec0e17d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:23:25');
INSERT INTO `sys_log` VALUES ('9b56a5e5-0148-4a58-b63c-9dd692acf43d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-03 16:33:07');
INSERT INTO `sys_log` VALUES ('9b93d31a-9e37-4b1f-99da-c32b50b699a9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:12:55');
INSERT INTO `sys_log` VALUES ('9bcf990b-a303-4ec1-9733-003529f703e1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:53:29');
INSERT INTO `sys_log` VALUES ('9be7cc8a-0c43-46c1-97e4-45497396e6e0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:11:50');
INSERT INTO `sys_log` VALUES ('9c22414b-bf7b-4116-8149-fbe693e6a5c0', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:49:51');
INSERT INTO `sys_log` VALUES ('9c8cae35-c319-4600-b254-091270df3f90', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-05 17:18:18');
INSERT INTO `sys_log` VALUES ('9cda6c74-918f-4f77-aa19-35e94a05f44e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:40:50');
INSERT INTO `sys_log` VALUES ('9d08a7da-8937-4dd8-a7c9-4fd991d0a055', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 17:02:04');
INSERT INTO `sys_log` VALUES ('9d5ef731-a7c7-4318-9669-b1fd623ff1e4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:48:56');
INSERT INTO `sys_log` VALUES ('9d68d703-8791-4095-ac8d-52e0086f7cf3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:10:54');
INSERT INTO `sys_log` VALUES ('9db363d5-062c-4ba7-8c43-a6dded8e783c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-05 16:05:35');
INSERT INTO `sys_log` VALUES ('9df8eaf7-16a0-4c92-b088-ec66633b4975', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-12 09:59:14');
INSERT INTO `sys_log` VALUES ('9e306bb2-6737-44e1-a253-63319ecc710a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:49:18');
INSERT INTO `sys_log` VALUES ('9e407212-d6b7-436e-8bb9-7b63cbeda650', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 21:12:55');
INSERT INTO `sys_log` VALUES ('9e6bf800-7d8d-414a-a806-4c7ce4d025dc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-05 17:25:32');
INSERT INTO `sys_log` VALUES ('9ecb1af3-ecc1-4359-8f70-55eb60371ff3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:10:46');
INSERT INTO `sys_log` VALUES ('9f154f9b-926a-48f9-952b-a4fc899c9d61', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:17:39');
INSERT INTO `sys_log` VALUES ('9f45a139-c8c1-49e4-9dfc-4c38207b5c04', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:29:24');
INSERT INTO `sys_log` VALUES ('9f5d29c3-f007-4bc6-bfe2-3290e576d7cd', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 09:35:08');
INSERT INTO `sys_log` VALUES ('9fc15907-f448-43fd-80a1-5bece2f9dbca', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:31');
INSERT INTO `sys_log` VALUES ('a020bffa-b0e1-4331-a3c8-e801b3db79e3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:41:27');
INSERT INTO `sys_log` VALUES ('a056de13-5b52-4003-9458-3cd36383ab37', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 21:06:46');
INSERT INTO `sys_log` VALUES ('a066751f-f013-4740-a55d-b89d9ed84bef', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:54');
INSERT INTO `sys_log` VALUES ('a0e357a2-77c2-4430-bd26-3342c46c861f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-09 17:27:17');
INSERT INTO `sys_log` VALUES ('a0e8dc19-1fc8-4be3-87a9-997559b89cce', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:40:17');
INSERT INTO `sys_log` VALUES ('a0ea856e-2418-45c8-b101-1775893e804b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 15:23:05');
INSERT INTO `sys_log` VALUES ('a109c94f-fa5f-4f55-acde-293ca15419f9', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:01:07');
INSERT INTO `sys_log` VALUES ('a11cbc3d-1039-4b6f-aff1-1b2de0de4292', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:43:18');
INSERT INTO `sys_log` VALUES ('a182cefa-c88f-4c30-aeea-7ae17afbe57b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:39:33');
INSERT INTO `sys_log` VALUES ('a1a94fc2-fd9a-438b-bed7-d8f4a85dd667', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 17:25:39');
INSERT INTO `sys_log` VALUES ('a25bcd87-f340-47de-bb96-cd904077a7ea', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 16:54:33');
INSERT INTO `sys_log` VALUES ('a3596347-ac4d-4bd1-a31d-4d0fde50843a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:16:00');
INSERT INTO `sys_log` VALUES ('a359b124-f337-48e6-8625-45d67e84d410', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:02:00');
INSERT INTO `sys_log` VALUES ('a371d8d7-e66e-4cf6-907b-44551b40af47', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 09:55:43');
INSERT INTO `sys_log` VALUES ('a39fad23-e0fc-4422-abfe-ed8d773a5c24', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:00:13');
INSERT INTO `sys_log` VALUES ('a4e0d163-f981-4660-b150-8df962fe24a8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 21:39:06');
INSERT INTO `sys_log` VALUES ('a4f26994-0cc8-4498-ac9c-8cf6d9e99528', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:38:20');
INSERT INTO `sys_log` VALUES ('a5178fc5-f736-4d20-a0d7-270cdb1526a5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-10 09:14:28');
INSERT INTO `sys_log` VALUES ('a553af16-b7b9-43af-86c2-3d4932acf27c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-02 09:29:08');
INSERT INTO `sys_log` VALUES ('a5db64a8-fb44-4ef9-a862-1b23a10da717', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:31:20');
INSERT INTO `sys_log` VALUES ('a6084916-e336-4047-9c41-f1ce15e49130', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 17:25:48');
INSERT INTO `sys_log` VALUES ('a63ab480-fda3-4d9f-8d7c-5db060e3921a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 11:16:39');
INSERT INTO `sys_log` VALUES ('a6ad7e28-84e9-49af-b046-5f23e8eb41f1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:44:57');
INSERT INTO `sys_log` VALUES ('a6b86d5a-384b-4c81-9c25-f1ddbbf66def', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 15:33:56');
INSERT INTO `sys_log` VALUES ('a6e7a914-afdf-4b9b-8f1c-bf73f67661d4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:22:38');
INSERT INTO `sys_log` VALUES ('a70c84d6-f169-4b62-a38c-f691430b4f85', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:36:52');
INSERT INTO `sys_log` VALUES ('a76d0991-f7b5-42b7-85f4-286db92c9f66', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 12:13:12');
INSERT INTO `sys_log` VALUES ('a7883825-e0f4-405a-8ad0-ddd23fa0d974', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:14:57');
INSERT INTO `sys_log` VALUES ('a7ba68b5-59de-41f6-a059-ba2d91215e75', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:47:51');
INSERT INTO `sys_log` VALUES ('a7ea186d-44b0-42e6-8dfb-e1d5ac31e24f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:04:08');
INSERT INTO `sys_log` VALUES ('a7ff44a1-bf96-45b3-8ab7-9f7c9ddddaaa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:45:01');
INSERT INTO `sys_log` VALUES ('a828f4c5-4a25-44f4-ae1d-48c90b1eb99f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:28:33');
INSERT INTO `sys_log` VALUES ('a8568370-6350-414c-a67c-11e095b7330a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:55:28');
INSERT INTO `sys_log` VALUES ('a859a85a-2b04-48de-9559-42407aeac2d2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:39:46');
INSERT INTO `sys_log` VALUES ('a8aa548a-8263-4345-a0e4-d46e0a57afde', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-12 10:38:37');
INSERT INTO `sys_log` VALUES ('a8da711c-62d0-4049-90aa-0ad9ecebc7b4', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:00:01');
INSERT INTO `sys_log` VALUES ('a8efb84f-d786-44bb-9f8d-648badd3c41e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 15:31:22');
INSERT INTO `sys_log` VALUES ('a91eaf81-c6c1-425d-b89a-ba2eea6998bc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-03 14:17:03');
INSERT INTO `sys_log` VALUES ('a95cfa8d-fb3b-4f8e-887c-f648979fc726', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:48:32');
INSERT INTO `sys_log` VALUES ('a98180c3-b616-4232-96ec-d12066f38ebc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:59:40');
INSERT INTO `sys_log` VALUES ('a9c09f9b-bb7d-464d-af96-fb5ba8b3d278', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:00:33');
INSERT INTO `sys_log` VALUES ('aa706d1c-0414-42e3-a189-b8f304dc215e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-11 14:50:37');
INSERT INTO `sys_log` VALUES ('aa81bb06-8d51-4941-8701-9717ecef69e5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:45:28');
INSERT INTO `sys_log` VALUES ('aa8d9a69-8f60-434d-9ed7-59bef15c05fb', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:08:38');
INSERT INTO `sys_log` VALUES ('aac61170-5938-4016-bd0f-294e287f2ef4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 15:32:51');
INSERT INTO `sys_log` VALUES ('aae03133-d337-4d9e-91c1-fc20472755a2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 16:16:06');
INSERT INTO `sys_log` VALUES ('aaeaaee5-69c0-4741-8ea9-f58bd80b4536', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:24:44');
INSERT INTO `sys_log` VALUES ('ab0eccd4-119d-4bca-8e63-3ee0c9743778', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:17:47');
INSERT INTO `sys_log` VALUES ('ab2fb658-5d8d-49b9-aee3-f8a3268b030f', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:05');
INSERT INTO `sys_log` VALUES ('ab4ed575-66e7-4ebb-bb6a-217379a1f60b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 15:54:15');
INSERT INTO `sys_log` VALUES ('ab70190a-c286-4714-afdf-8c9092ee82ed', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:44');
INSERT INTO `sys_log` VALUES ('ab79892c-d447-4005-8014-03b4ba39aa86', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:12');
INSERT INTO `sys_log` VALUES ('ab8db782-0aa6-4e31-82e5-45d2eed43936', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:54:52');
INSERT INTO `sys_log` VALUES ('aba1043a-ca51-4e67-832c-ab8a16278b2d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-11 10:43:33');
INSERT INTO `sys_log` VALUES ('abd4c822-fd5f-4048-8f7a-6cdf8cfac77f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 17:11:03');
INSERT INTO `sys_log` VALUES ('abe4f031-3c40-47bb-b943-1baab40f0004', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 10:05:41');
INSERT INTO `sys_log` VALUES ('ac475f3b-6ec9-4427-80b8-ebf67230c14f', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:31:25');
INSERT INTO `sys_log` VALUES ('ac86e548-5b93-4b4c-a0c2-44db06bfb71e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-02 17:04:19');
INSERT INTO `sys_log` VALUES ('ac9773f1-a9d1-4fae-b55d-8cbd42aa5959', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 16:09:56');
INSERT INTO `sys_log` VALUES ('ad648a4d-a857-4869-ae89-8c05ec0b65bc', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:32:09');
INSERT INTO `sys_log` VALUES ('ad748fec-2f05-4a90-a3d6-1a9dcb46c7d0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:42:52');
INSERT INTO `sys_log` VALUES ('ae3c61b9-75f4-4fb9-8f1b-a02d65962e5d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 12:12:20');
INSERT INTO `sys_log` VALUES ('ae46be75-056f-40db-af7a-3edc453e019a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:55');
INSERT INTO `sys_log` VALUES ('ae803213-a50b-40cd-8a5f-f541964bf467', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:16:28');
INSERT INTO `sys_log` VALUES ('ae906074-248a-4b21-ba75-6e4a5f18a7b6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:11:18');
INSERT INTO `sys_log` VALUES ('aec4de1d-bcda-4f2b-b721-f5e21a7fda28', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:11:40');
INSERT INTO `sys_log` VALUES ('af31a1f9-3820-41f1-acc7-e5e2cad55b81', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 16:50:50');
INSERT INTO `sys_log` VALUES ('af596932-a6ad-4c55-a240-1581a251cff6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:34:14');
INSERT INTO `sys_log` VALUES ('af636362-c7aa-4d09-bf87-935c2e910067', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', null, null, '运行消耗2ms', null, 'liuc', '2017-12-29 14:08:17');
INSERT INTO `sys_log` VALUES ('b02adfa6-dfaf-445a-b85f-48b26007fe18', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 14:50:39');
INSERT INTO `sys_log` VALUES ('b05d6c4d-d829-450c-b51b-e4ce994b03ce', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-11 16:15:44');
INSERT INTO `sys_log` VALUES ('b09b7160-7fe9-4d21-bd62-71474a97b1d7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:13:59');
INSERT INTO `sys_log` VALUES ('b0e2d8cf-d725-414f-84c9-37e5f90be516', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', null, null, '运行消耗2ms', null, 'liuc', '2017-12-29 14:08:15');
INSERT INTO `sys_log` VALUES ('b138b9c4-b946-4480-a8f4-7eeb877c6db4', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:03:28');
INSERT INTO `sys_log` VALUES ('b13a9624-55d0-46c0-a877-84d1f539f5f8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 14:22:31');
INSERT INTO `sys_log` VALUES ('b17f157f-4a15-4e4d-8110-3a708c7cb8f4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:59:43');
INSERT INTO `sys_log` VALUES ('b18adb6f-ed88-42d8-888b-1733533b57c8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 16:05:14');
INSERT INTO `sys_log` VALUES ('b190495a-c217-46f9-b0cc-bb728d2b39ad', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 08:58:39');
INSERT INTO `sys_log` VALUES ('b199f2fa-fa2f-412a-9796-74ab02d9d4be', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-10 09:03:33');
INSERT INTO `sys_log` VALUES ('b2145fa0-3a6a-431e-a645-1798307ebb81', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 21:13:11');
INSERT INTO `sys_log` VALUES ('b227a6eb-04b5-4261-bcae-26d738fb0da1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 11:14:42');
INSERT INTO `sys_log` VALUES ('b2432a4b-1aac-41e6-99e9-c6fd6f0bd5b4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:29:05');
INSERT INTO `sys_log` VALUES ('b268afec-ea81-46ce-a53c-8ad91491bf4b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:24:47');
INSERT INTO `sys_log` VALUES ('b27744ae-1e92-4f63-b13a-baae52180b4e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:17:52');
INSERT INTO `sys_log` VALUES ('b2d1c9be-8c24-490a-98ba-c89598072167', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:35:00');
INSERT INTO `sys_log` VALUES ('b317531c-5cf5-4331-a010-a5bccde0dad8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-31 15:23:10');
INSERT INTO `sys_log` VALUES ('b31b5429-82f8-46e2-856f-fe11b80b3dfe', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:33:28');
INSERT INTO `sys_log` VALUES ('b3883bc5-46fd-4e49-a845-c60871c0d96c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 15:56:50');
INSERT INTO `sys_log` VALUES ('b3c45913-1986-444d-b3b8-a26deef227de', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 15:58:03');
INSERT INTO `sys_log` VALUES ('b4200ede-69e7-47d4-b664-21d0c9bbbd39', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:19:36');
INSERT INTO `sys_log` VALUES ('b43de9a8-50b0-4803-85ac-b567f2b425e0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-02 16:58:40');
INSERT INTO `sys_log` VALUES ('b499f84b-d3ed-4878-83fa-480931ad7cfc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 14:22:26');
INSERT INTO `sys_log` VALUES ('b53f4584-be0c-4caf-bcff-54ccab3c0977', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:08:00');
INSERT INTO `sys_log` VALUES ('b573d3f6-3a11-4405-a836-7b596dfdeef5', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:33:22');
INSERT INTO `sys_log` VALUES ('b578c958-dc28-4d70-8e48-efe40dfbf5d4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-11 10:36:12');
INSERT INTO `sys_log` VALUES ('b59ca8f2-d239-472b-b108-5b6f3ab58ce4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-05 23:38:23');
INSERT INTO `sys_log` VALUES ('b5d13a21-dee8-4509-84cc-9b760014e9a2', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 17:03:21');
INSERT INTO `sys_log` VALUES ('b5d3371b-f324-4ce3-a110-4a7d48944349', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 09:11:55');
INSERT INTO `sys_log` VALUES ('b6324324-bb24-42ad-b4e2-5c6c1119347e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 21:22:00');
INSERT INTO `sys_log` VALUES ('b633df33-448e-495a-af68-8445781c8cf2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:45:46');
INSERT INTO `sys_log` VALUES ('b64c31e0-ff45-4b82-84c6-715ea8457ab5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:44:11');
INSERT INTO `sys_log` VALUES ('b675bd2a-dd1f-4582-83c5-baae2acf1695', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-03 14:34:49');
INSERT INTO `sys_log` VALUES ('b6f31c4b-979e-4bff-b375-4c2de861ff5d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2017-12-29 15:10:12');
INSERT INTO `sys_log` VALUES ('b71fb615-7a4b-45ac-81f9-1eb6069b264c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 16:40:59');
INSERT INTO `sys_log` VALUES ('b79c3190-2fdb-457a-9b06-e76ab8da511f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗17ms', null, 'liuc', '2018-01-08 15:08:29');
INSERT INTO `sys_log` VALUES ('b7b5c553-cf5a-4662-afba-7f3be5abc485', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:03:23');
INSERT INTO `sys_log` VALUES ('b7d8f187-5c29-4e30-9852-19ecaa6bb9ee', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 13:44:55');
INSERT INTO `sys_log` VALUES ('b82cd993-207e-46b9-b859-4f80367262aa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 13:54:56');
INSERT INTO `sys_log` VALUES ('b867141d-e80a-4ba4-bc4a-2807d775dbcc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:45:40');
INSERT INTO `sys_log` VALUES ('b867e955-0985-477d-913d-37000bb77093', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:32:31');
INSERT INTO `sys_log` VALUES ('b8917a1d-20d2-4942-b98e-d27e640439eb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2017-12-29 21:39:52');
INSERT INTO `sys_log` VALUES ('b8a200b3-9b3f-4ca5-99f8-abaae0c72605', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:04:12');
INSERT INTO `sys_log` VALUES ('b8f28424-de1a-4cea-8950-606210cad108', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:34:16');
INSERT INTO `sys_log` VALUES ('b91aae1d-41d8-46a5-9065-c1a97121da58', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 11:18:56');
INSERT INTO `sys_log` VALUES ('b9345511-74d5-47f8-a5bf-9bdf48a925e1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 12:13:11');
INSERT INTO `sys_log` VALUES ('b934b7f8-0724-42f8-a9e9-32250e48def9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗17ms', null, 'liuc', '2018-01-10 16:33:20');
INSERT INTO `sys_log` VALUES ('b96a03ac-c999-4f71-9c65-a6ec92e6810e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 15:31:57');
INSERT INTO `sys_log` VALUES ('b9a7aa2b-2631-4c39-9046-4c918dfe2c89', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:33:26');
INSERT INTO `sys_log` VALUES ('ba7df5fd-6657-47cf-8a59-5dcd399638d4', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:11:22');
INSERT INTO `sys_log` VALUES ('ba7fc4b4-28b5-4944-a82c-cca7d2bc97c5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 17:10:07');
INSERT INTO `sys_log` VALUES ('bab2990b-b326-4489-b5b5-bcda092a4eca', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:31:40');
INSERT INTO `sys_log` VALUES ('bab38371-9664-4d1d-989a-2dc421b89223', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗15ms', null, 'liuc', '2018-01-11 16:45:19');
INSERT INTO `sys_log` VALUES ('bb75c6a8-d787-4745-8245-7892e08feccc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:49:22');
INSERT INTO `sys_log` VALUES ('bb94550e-587e-435f-8cc7-0dc236ef3e4e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-08 16:50:55');
INSERT INTO `sys_log` VALUES ('bc070442-3b9b-41e0-b2a2-953573b00c37', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:35:34');
INSERT INTO `sys_log` VALUES ('bc57fd41-4f9c-4414-94e0-24e04d27b60b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:37:05');
INSERT INTO `sys_log` VALUES ('bc74ca80-c96e-4a54-beee-931c0e6299cb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:14:30');
INSERT INTO `sys_log` VALUES ('bcccec37-4ff6-473f-93de-2108bb51d79c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 10:14:30');
INSERT INTO `sys_log` VALUES ('bd14d2ae-f57e-4a2d-8b8c-7450adbc8c6a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 17:11:02');
INSERT INTO `sys_log` VALUES ('bd15a7a1-28e7-473e-9fba-f1d542dab646', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 16:50:40');
INSERT INTO `sys_log` VALUES ('bd27e76e-9032-4e94-9932-c0fc2a2f192b', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:36:21');
INSERT INTO `sys_log` VALUES ('bdc5e87e-f9df-45e5-b119-7b5335934a4e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-11 09:42:41');
INSERT INTO `sys_log` VALUES ('bde26201-ce2a-4de9-9b33-fc23726e83ad', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:24:11');
INSERT INTO `sys_log` VALUES ('bea174e3-9c9b-46ed-b70a-bc93ce3d686e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 09:33:59');
INSERT INTO `sys_log` VALUES ('bec81d09-e471-4a7c-a263-8a00652d78ff', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:14:19');
INSERT INTO `sys_log` VALUES ('becf153d-e77c-4b53-9633-ca1364ec7ab3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-11 10:33:05');
INSERT INTO `sys_log` VALUES ('bf2f2fe3-f2e0-4469-a757-f0018564c918', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-11 14:43:37');
INSERT INTO `sys_log` VALUES ('bf815463-f5d8-44d8-94c2-61e4ab1e1096', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:31:55');
INSERT INTO `sys_log` VALUES ('bfd57467-f5f8-4911-a4a7-523ecdea9cf6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2017-12-29 15:20:51');
INSERT INTO `sys_log` VALUES ('c01bab3e-69e4-4426-8a6a-4482cb0a65f0', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 09:39:34');
INSERT INTO `sys_log` VALUES ('c024d94e-c472-4ec3-aa6d-52bdb0a44faf', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 16:43:19');
INSERT INTO `sys_log` VALUES ('c094724c-6c5c-48a5-8f44-6cd6d453479a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:12:10');
INSERT INTO `sys_log` VALUES ('c0a04895-8181-40dc-b22f-2203754463ff', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:43:17');
INSERT INTO `sys_log` VALUES ('c0aebd16-85b5-467a-a67c-5995141b747a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:53:55');
INSERT INTO `sys_log` VALUES ('c113e2fb-993d-4e48-89f9-e17489d9341c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-09 08:58:21');
INSERT INTO `sys_log` VALUES ('c12f34de-e71e-4a63-962c-545d8e3a42d7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:29:47');
INSERT INTO `sys_log` VALUES ('c14b972b-7f4f-4f7f-90a5-2e788501927c', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:10:21');
INSERT INTO `sys_log` VALUES ('c173fc38-1dbf-4f88-8c57-e2574ffe6331', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:52:35');
INSERT INTO `sys_log` VALUES ('c1811195-8507-47db-a5f8-0a31508aef84', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 15:22:24');
INSERT INTO `sys_log` VALUES ('c1849464-42a0-4404-b905-fc6f8f3dc504', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:58');
INSERT INTO `sys_log` VALUES ('c1cc8941-c281-454e-9362-7bb04b6be46a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 11:18:16');
INSERT INTO `sys_log` VALUES ('c1d75caa-adfb-47d8-801d-936c2e3f1521', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 16:02:56');
INSERT INTO `sys_log` VALUES ('c2008766-0c64-4b6c-90ca-65f6d8b820ba', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:23:23');
INSERT INTO `sys_log` VALUES ('c275ad43-c883-4b29-ace4-295d7e5a5124', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2017-12-29 21:37:05');
INSERT INTO `sys_log` VALUES ('c299265f-2b10-4eba-87b2-78ed3f6a9570', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:05:10');
INSERT INTO `sys_log` VALUES ('c2b337f9-6ef7-44d8-a033-f6932e5ac584', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:38');
INSERT INTO `sys_log` VALUES ('c2ee1406-b2ac-4e41-9920-d6f9fea78ca0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:37:01');
INSERT INTO `sys_log` VALUES ('c2f23a1e-a7f8-4817-b8e8-c4549514d776', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:17:42');
INSERT INTO `sys_log` VALUES ('c2f83b7a-e145-4e12-a699-4bba6cd35e70', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:54:19');
INSERT INTO `sys_log` VALUES ('c3571b22-8f1f-478f-80bb-cd64a148b03e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:17:30');
INSERT INTO `sys_log` VALUES ('c399f0b2-c2b8-4091-a5e5-d6fcaf56f842', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:15:58');
INSERT INTO `sys_log` VALUES ('c3c6a5d8-4a31-4830-a98d-65e134f102c7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-08 14:23:55');
INSERT INTO `sys_log` VALUES ('c425fed2-9fad-46bd-a184-31439a70f050', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 21:25:37');
INSERT INTO `sys_log` VALUES ('c43f9fd7-458c-41e4-9d69-2063ef72560e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:42:53');
INSERT INTO `sys_log` VALUES ('c458357e-46dc-4c06-8627-ce102a30f261', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 19:45:07');
INSERT INTO `sys_log` VALUES ('c46a4bc3-a510-45e3-947e-8440a9718293', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-03 11:12:56');
INSERT INTO `sys_log` VALUES ('c46d60c2-73c9-4297-95d7-1af785eb94eb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 23:25:33');
INSERT INTO `sys_log` VALUES ('c4f66057-eb05-4cb9-b25e-395dd436bd5e', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 11:00:15');
INSERT INTO `sys_log` VALUES ('c4fed50f-71f7-4bea-8dbf-e93967235323', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 09:32:31');
INSERT INTO `sys_log` VALUES ('c5095515-c837-4f5b-bdc8-cf90a8c14612', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:12:32');
INSERT INTO `sys_log` VALUES ('c53f8d7e-2290-4e68-a34c-df92c8e64bbe', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:52:25');
INSERT INTO `sys_log` VALUES ('c59127df-2a7f-46ff-9935-472c4bbb67bf', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:49:19');
INSERT INTO `sys_log` VALUES ('c59c98e7-2006-43ec-9c48-107cc3d7fa20', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:43:57');
INSERT INTO `sys_log` VALUES ('c60cf628-a2b6-44ff-bab2-69d292f3a42d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:53:58');
INSERT INTO `sys_log` VALUES ('c65d8191-bbe3-4982-a7e4-221549911491', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 15:52:19');
INSERT INTO `sys_log` VALUES ('c68a6f24-6771-4184-853d-d4dd10c91c58', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 10:48:37');
INSERT INTO `sys_log` VALUES ('c70569a1-803a-4b7f-abf6-082e37e6d088', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '0:0:0:0:0:0:0:1', null, '运行消耗7ms', null, 'liuc', '2017-12-29 14:19:56');
INSERT INTO `sys_log` VALUES ('c75bbf6a-3b3c-42dc-9b4a-632083eb8fa4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 09:14:14');
INSERT INTO `sys_log` VALUES ('c811eff4-e01c-480c-ab81-a5d1f7dfa52d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 15:20:48');
INSERT INTO `sys_log` VALUES ('c8b37c47-22cd-413c-b269-7e1b7a2d59d6', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 17:28:26');
INSERT INTO `sys_log` VALUES ('c8c6f306-6a3d-4c19-bbea-8e55800277f3', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:01:28');
INSERT INTO `sys_log` VALUES ('c90b8808-bae2-4c54-afb6-c6b47aa14b20', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:47:21');
INSERT INTO `sys_log` VALUES ('c90e082b-a2ef-47b1-8497-028e56419b0a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:14:57');
INSERT INTO `sys_log` VALUES ('c9299e3c-2856-41e0-8ad5-5d6119ca3850', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:25:04');
INSERT INTO `sys_log` VALUES ('c9ad0612-69e3-4482-b477-f26f9c2226ed', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-02 09:22:29');
INSERT INTO `sys_log` VALUES ('ca29ed64-18fc-4d23-bae5-096fbbaec2e7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:49:13');
INSERT INTO `sys_log` VALUES ('ca9e6b3a-42bf-4e70-82e5-e7c861732c87', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:44:52');
INSERT INTO `sys_log` VALUES ('cace94c9-3588-4242-8889-f6b71554f074', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:30:30');
INSERT INTO `sys_log` VALUES ('cad2f3d1-f4bf-49e6-95f2-0a75a7d91888', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:42:14');
INSERT INTO `sys_log` VALUES ('cbaf9cba-9cf8-49dc-9deb-2cffc59c57f1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:49:46');
INSERT INTO `sys_log` VALUES ('cbb2adc1-405f-4e55-9146-ca4303097fe2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 16:02:53');
INSERT INTO `sys_log` VALUES ('cbd88e8b-ca44-4a80-877c-c6b9e8c57e3e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 17:14:13');
INSERT INTO `sys_log` VALUES ('cbe8a304-751d-453a-b22e-853274e82fcc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 14:17:10');
INSERT INTO `sys_log` VALUES ('cc05c5e3-8866-44f7-aedf-9d7d253fa81f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:51:13');
INSERT INTO `sys_log` VALUES ('cc1f73f6-10fb-4056-bb4e-be836f1466b3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:22:09');
INSERT INTO `sys_log` VALUES ('cc53ea4d-ee18-414c-b572-491121458560', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 17:36:20');
INSERT INTO `sys_log` VALUES ('ccbb840a-cec3-4ad8-9184-ce37b0ee17f7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-31 15:19:55');
INSERT INTO `sys_log` VALUES ('cd162a53-3c63-44aa-8b3a-5a885adf64c2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-08 14:13:39');
INSERT INTO `sys_log` VALUES ('cd20bc53-6030-4546-87a8-03703286ea2a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:51:31');
INSERT INTO `sys_log` VALUES ('cd2e1fa8-6f83-4093-9623-8a0387826e24', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 15:58:46');
INSERT INTO `sys_log` VALUES ('ce0c2d49-b95a-4b3b-8f70-72a5cbc3e2ee', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:33:55');
INSERT INTO `sys_log` VALUES ('ce10e950-abe9-4503-9320-3712d791b140', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:26:07');
INSERT INTO `sys_log` VALUES ('ce6a2596-4dfb-44eb-9f70-fe3f9f42c7a2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-03 16:09:00');
INSERT INTO `sys_log` VALUES ('cef9530e-18ad-44ec-aa7a-bf6dcddad098', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:11:22');
INSERT INTO `sys_log` VALUES ('cf05e2b1-81ec-4bff-abf9-13bdbaddca5c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-10 14:03:29');
INSERT INTO `sys_log` VALUES ('cf844876-10c6-4b39-944c-8e6383f6ab53', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 15:38:09');
INSERT INTO `sys_log` VALUES ('d00b403e-4721-4723-bc48-706548642e8b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 21:09:39');
INSERT INTO `sys_log` VALUES ('d165b621-f1ac-45a4-aaad-0e0746b6f83c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:48:42');
INSERT INTO `sys_log` VALUES ('d187aee9-2afc-4fcd-9d25-7d09f8206cc5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:47:35');
INSERT INTO `sys_log` VALUES ('d1a655ae-cd67-40d1-951b-007d19fd22cb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 10:54:46');
INSERT INTO `sys_log` VALUES ('d2306faa-c487-4bad-b366-226e8cc1c52d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:04:30');
INSERT INTO `sys_log` VALUES ('d237599e-0635-43f1-87dc-9e509d66a3b6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-10 09:03:30');
INSERT INTO `sys_log` VALUES ('d2466f8e-2369-4ebd-b7ec-dfe5d5ae3a17', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:49');
INSERT INTO `sys_log` VALUES ('d29f79df-04d0-4842-ac78-1d3d125ee472', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:26:09');
INSERT INTO `sys_log` VALUES ('d2cbc854-0261-44d0-a410-b9daf99ec6ec', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:47:42');
INSERT INTO `sys_log` VALUES ('d30ffecb-6139-401f-87c2-80123bde5a1a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:33:25');
INSERT INTO `sys_log` VALUES ('d3266c8d-ce12-4638-a052-ec6ce4aec0b2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:26:06');
INSERT INTO `sys_log` VALUES ('d367ffcd-c409-4de2-9965-455d77340e7b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 15:29:51');
INSERT INTO `sys_log` VALUES ('d37d0bf2-ba05-4636-a003-4f0e6c6e38cf', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 14:34:54');
INSERT INTO `sys_log` VALUES ('d3838f19-3a3a-4d57-9a50-abb1672c3a19', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 16:10:33');
INSERT INTO `sys_log` VALUES ('d3b69b20-33ad-42ac-915c-38e315f52770', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:35:03');
INSERT INTO `sys_log` VALUES ('d41de032-f23c-49b8-ba7c-a5a371f9fc71', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:19:49');
INSERT INTO `sys_log` VALUES ('d431faf1-5c7f-40fd-a28d-340e4d7c6a30', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:50:54');
INSERT INTO `sys_log` VALUES ('d432fbca-efd0-417c-bd88-d5278c2e0e29', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 17:21:17');
INSERT INTO `sys_log` VALUES ('d44f57b8-648e-41e9-ae6a-d3b656ba7e36', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-03 15:56:48');
INSERT INTO `sys_log` VALUES ('d4ad1773-6e3e-4a80-9af8-330accb29610', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:43:48');
INSERT INTO `sys_log` VALUES ('d4ad2727-9c68-420f-85d8-bf51af3af5a6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:36:54');
INSERT INTO `sys_log` VALUES ('d4e7170e-dabd-45c8-932c-0525126c9817', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:25:55');
INSERT INTO `sys_log` VALUES ('d50a1fbf-0f1f-4327-ad01-68efe8c4048c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 09:24:50');
INSERT INTO `sys_log` VALUES ('d52a75ad-6a8d-4f61-8a57-6d2807358be3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-02 15:23:06');
INSERT INTO `sys_log` VALUES ('d545131c-0c8a-4724-8cde-fe862a2eb643', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:08:22');
INSERT INTO `sys_log` VALUES ('d563ab9a-996c-45d4-bb70-9f9782fad09b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:43:42');
INSERT INTO `sys_log` VALUES ('d5a923ee-f0c2-499f-a45e-4d65880c2d0b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 08:58:24');
INSERT INTO `sys_log` VALUES ('d5b7d136-3770-433c-8eb6-808981f0e16b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 09:46:58');
INSERT INTO `sys_log` VALUES ('d5cac0c5-838f-4414-8ca7-f04ada298e58', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:24:38');
INSERT INTO `sys_log` VALUES ('d5e6f8ec-07cc-46d9-bf98-a14b1297ff5c', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:49:28');
INSERT INTO `sys_log` VALUES ('d669b5db-50f1-4228-ae1d-28d95e4633e5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 21:12:52');
INSERT INTO `sys_log` VALUES ('d66cf80d-af92-4f95-adc2-63749b83c7cd', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:25:43');
INSERT INTO `sys_log` VALUES ('d6b9b6d3-999f-49eb-815a-2362a9704cde', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:40:54');
INSERT INTO `sys_log` VALUES ('d6c03d94-6e3f-48d0-a80f-de49474429a1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:55:10');
INSERT INTO `sys_log` VALUES ('d6d5a9fd-4165-49c7-9427-81879817991d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 09:53:14');
INSERT INTO `sys_log` VALUES ('d72eccdb-c539-4eb0-8baa-771cd5455704', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:38:30');
INSERT INTO `sys_log` VALUES ('d7761787-28a0-4df2-bd11-5eb23601f490', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:47:54');
INSERT INTO `sys_log` VALUES ('d7a43c87-cc49-46b1-82a8-be47ebf4b4bb', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-10 09:08:17');
INSERT INTO `sys_log` VALUES ('d7acbf76-6ac7-4102-9b03-62f1a0d52ed3', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 10:01:05');
INSERT INTO `sys_log` VALUES ('d7c5d911-da19-44ff-9c1f-3198f9b77015', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:40:32');
INSERT INTO `sys_log` VALUES ('d7dfb8cb-ffe4-43ee-b069-8bb2160abb43', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:52:32');
INSERT INTO `sys_log` VALUES ('d7ede00d-0185-4ab9-bc44-2a57363e6e5b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 17:27:20');
INSERT INTO `sys_log` VALUES ('d848f447-9660-44b1-b756-bb073da8e1be', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:00:20');
INSERT INTO `sys_log` VALUES ('d84e706b-c441-467f-ac31-2992d8fa2434', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-09 09:21:34');
INSERT INTO `sys_log` VALUES ('d89f5d7d-35a9-4f77-848a-139b128a120f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-11 16:52:54');
INSERT INTO `sys_log` VALUES ('d8cad431-c5c2-4adf-9bc6-15d8b8921c6f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:08');
INSERT INTO `sys_log` VALUES ('d8cca675-1985-46ef-922d-b39d2871105a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:13:07');
INSERT INTO `sys_log` VALUES ('d92effec-c6d6-450d-af2a-f596a6077642', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:34:40');
INSERT INTO `sys_log` VALUES ('d9547f07-7da4-4f20-b5d5-ce462f553055', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:45:54');
INSERT INTO `sys_log` VALUES ('d982e6d5-4a8d-4dd0-9cb0-6bc2b817742a', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:48:58');
INSERT INTO `sys_log` VALUES ('d9ce6ab3-0df1-4593-9d1d-7e908200b592', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 09:09:36');
INSERT INTO `sys_log` VALUES ('d9f483ed-18cc-47c9-ab2b-58e2ea5321f5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:37:45');
INSERT INTO `sys_log` VALUES ('da1fa0a6-1b7a-4815-9440-73af81780e24', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:50:50');
INSERT INTO `sys_log` VALUES ('dae42032-1108-4854-ada2-bc55149acef5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:57:20');
INSERT INTO `sys_log` VALUES ('db0b6427-eeb4-4938-8076-aa10e1d880f1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-03 16:30:05');
INSERT INTO `sys_log` VALUES ('db15ad9a-4874-4ba4-b8ef-a7465b0961da', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:45:02');
INSERT INTO `sys_log` VALUES ('db6d67d8-d46c-4ef9-815e-ae1c10a24922', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗16ms', null, 'liuc', '2018-01-09 09:24:01');
INSERT INTO `sys_log` VALUES ('dc8c5fdd-6372-4cc8-af97-fc13f6d5d090', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:51:44');
INSERT INTO `sys_log` VALUES ('dcc193aa-6384-4ca4-b6e5-2d550474cf0b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:10');
INSERT INTO `sys_log` VALUES ('dcd06e96-a2de-41c8-a0ee-00db7eadb4ce', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:10:39');
INSERT INTO `sys_log` VALUES ('dce744a5-caa7-4815-ae7f-49be286421eb', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:34:36');
INSERT INTO `sys_log` VALUES ('dcfc3cc5-81dd-4402-b2bf-099f4491030b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 16:35:18');
INSERT INTO `sys_log` VALUES ('dd06641d-3fda-41b1-ae01-03aecca96ee6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-03 17:25:17');
INSERT INTO `sys_log` VALUES ('dd12a986-3a43-413c-859f-b7191e181c8a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:42:06');
INSERT INTO `sys_log` VALUES ('dd5bf9ce-114f-47bd-9d05-d79f7f289e3e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:41:23');
INSERT INTO `sys_log` VALUES ('dd7a406e-e07e-4e2b-ad51-199671a043d1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 13:05:51');
INSERT INTO `sys_log` VALUES ('ddc71121-d641-4c0c-afd5-d6ecc53b9a30', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:35:17');
INSERT INTO `sys_log` VALUES ('ddcbd9b2-81ba-4bbe-b9cf-3b3cf79485c6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-03 16:02:13');
INSERT INTO `sys_log` VALUES ('de050c7f-b78a-47b1-92e8-8bb295ca0dfa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:40:55');
INSERT INTO `sys_log` VALUES ('de5b7c79-2eaa-41aa-a9e9-36a96513a11f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:50:10');
INSERT INTO `sys_log` VALUES ('defd5a14-00ce-4151-b8f2-81895fdc81a1', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:03');
INSERT INTO `sys_log` VALUES ('df7433ff-2ef0-4e38-bbfb-607d505aab6b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:23:39');
INSERT INTO `sys_log` VALUES ('dfa2aa7b-46bf-46a4-afb0-09b1e99f7dde', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:12:37');
INSERT INTO `sys_log` VALUES ('e04c69e4-8d48-444c-9f58-a75c96db07e8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-09 17:20:29');
INSERT INTO `sys_log` VALUES ('e086bc8f-d797-49f8-9833-1932ebbee37a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 14:35:42');
INSERT INTO `sys_log` VALUES ('e0c0853b-8ff6-4e76-b900-f2a4b807d6b4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-06 17:39:09');
INSERT INTO `sys_log` VALUES ('e0ddab9f-9c7e-4e17-93ff-035873d8bf00', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:32:03');
INSERT INTO `sys_log` VALUES ('e0eece16-abaf-41a3-9c4e-98496ba39007', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:04:48');
INSERT INTO `sys_log` VALUES ('e14e636d-eb0f-4d0f-b5df-603dd68105db', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 14:49:20');
INSERT INTO `sys_log` VALUES ('e1b6dd50-e026-49c1-8937-66f19b20efda', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:59:36');
INSERT INTO `sys_log` VALUES ('e1fec0cb-2f0d-4abc-a4cd-bf4aa1dfe335', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:44:10');
INSERT INTO `sys_log` VALUES ('e2639cd3-3dd8-4bef-8db4-7e7fbbe69fe0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-11 13:45:52');
INSERT INTO `sys_log` VALUES ('e26ea3e7-fe6a-4670-aedf-72f9be11558c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:12:40');
INSERT INTO `sys_log` VALUES ('e2e42d49-443c-49da-8aea-cf77838db462', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 09:55:13');
INSERT INTO `sys_log` VALUES ('e3509822-3e09-40d9-ad64-ab48a9aedc5b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 15:59:17');
INSERT INTO `sys_log` VALUES ('e39d772a-5129-4f3c-aca0-8b58a5e7ed97', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-05 17:18:41');
INSERT INTO `sys_log` VALUES ('e3d06cee-d645-4c66-b8cd-c338e5d7af16', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:49:06');
INSERT INTO `sys_log` VALUES ('e3d2ddb6-c613-4f1a-9b7c-081e98191f64', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:41:11');
INSERT INTO `sys_log` VALUES ('e40bdd4e-a79e-4503-8f08-32528c427835', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 10:57:32');
INSERT INTO `sys_log` VALUES ('e48ccebb-5c0e-4541-9d42-0ee9bbc4a052', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:04:33');
INSERT INTO `sys_log` VALUES ('e4b9d38e-7fd2-4c0d-9165-2fe5151b2233', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:12:30');
INSERT INTO `sys_log` VALUES ('e4cccf6e-87a4-41e3-8ed7-47cc89016e21', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2017-12-29 21:40:41');
INSERT INTO `sys_log` VALUES ('e57b4c77-3f16-4095-990f-d55d5ef89e07', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:24:57');
INSERT INTO `sys_log` VALUES ('e5afd1d5-e7ff-4347-b607-ba691da14652', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 13:36:49');
INSERT INTO `sys_log` VALUES ('e62cff00-24b6-4b4f-b09b-4abf437da4a3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', null, null, '运行消耗7ms', null, 'liuc', null);
INSERT INTO `sys_log` VALUES ('e64a3196-863f-403d-8d35-8942f46ca080', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:54:55');
INSERT INTO `sys_log` VALUES ('e6c64617-ce09-4345-9748-05838891105a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:35:12');
INSERT INTO `sys_log` VALUES ('e6e9d42b-13e9-4269-ab77-ed225c26afc7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 17:19:43');
INSERT INTO `sys_log` VALUES ('e6ff490d-2865-48b8-b716-589801a33df0', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:13');
INSERT INTO `sys_log` VALUES ('e742909c-1f13-47b0-ad63-e152c3994072', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-11 09:25:14');
INSERT INTO `sys_log` VALUES ('e7946c75-5495-45fd-8651-8b2b143f3a28', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 16:43:00');
INSERT INTO `sys_log` VALUES ('e7cf4041-91e0-44b9-a8d7-d65e53957b90', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:49:01');
INSERT INTO `sys_log` VALUES ('e86e7a69-eddc-4ace-9a3a-f5672710bf1a', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:26:18');
INSERT INTO `sys_log` VALUES ('e95799d5-c782-4203-8530-8e84381be8aa', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:26:40');
INSERT INTO `sys_log` VALUES ('e998bf8e-01f6-4360-96c4-eb95ea09476d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-02 16:17:01');
INSERT INTO `sys_log` VALUES ('e9a04da1-ffd9-4b7f-a1ed-3eb47a90050d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:01:59');
INSERT INTO `sys_log` VALUES ('e9dfd835-b8af-4060-8aea-b8854ae6a003', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-10 14:33:46');
INSERT INTO `sys_log` VALUES ('ea638b5a-47b5-4c1b-a210-3a81a051842e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 16:00:43');
INSERT INTO `sys_log` VALUES ('eae50730-a0f0-4c9f-9be1-5858b4ec1c29', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 09:11:04');
INSERT INTO `sys_log` VALUES ('eb299f75-b16e-43af-8514-14bc3f2f5ff3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:00:19');
INSERT INTO `sys_log` VALUES ('eb58ea05-b6c4-460a-8158-0831f5c4c77e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:34:08');
INSERT INTO `sys_log` VALUES ('eb6979a4-c7c7-4629-acf8-5b43decaa800', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 09:33:52');
INSERT INTO `sys_log` VALUES ('eb76be4e-16b5-4861-8727-d38ed1ed2fb7', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗8ms', null, 'liuc', '2018-01-08 11:22:39');
INSERT INTO `sys_log` VALUES ('eb938fc2-61ad-4def-9201-ee7a8070491a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2017-12-29 15:33:58');
INSERT INTO `sys_log` VALUES ('ebccd606-5bb7-4dc7-8b84-3cc8570f1e57', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:00:44');
INSERT INTO `sys_log` VALUES ('ebfc458b-0171-4d32-ace1-e4e652f0adba', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:30:59');
INSERT INTO `sys_log` VALUES ('ec1ee43a-4c2a-4d68-ba32-e857c6e64a0e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-09 16:58:26');
INSERT INTO `sys_log` VALUES ('ec226546-ff90-4f1b-88d4-c66105ed6902', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-08 09:57:55');
INSERT INTO `sys_log` VALUES ('ec2ddd0b-b1fe-448c-b341-9de8208b3522', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 15:57:44');
INSERT INTO `sys_log` VALUES ('ec8a9ba5-6815-479e-8472-5b594429e834', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:13:35');
INSERT INTO `sys_log` VALUES ('ece24451-4d1d-44cb-b97a-2d6db972d24a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 13:53:27');
INSERT INTO `sys_log` VALUES ('ed3c330a-50de-4aaa-bc20-77ce4e31b0d5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:08:14');
INSERT INTO `sys_log` VALUES ('edbf7739-c289-4083-934e-5dd3fe0fe8d5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 14:47:25');
INSERT INTO `sys_log` VALUES ('edd398c6-0e2e-41e1-951e-df838257a9e6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 10:26:37');
INSERT INTO `sys_log` VALUES ('ee01fef9-4606-4fc9-bb77-f1c3b7c4536b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-05 21:08:51');
INSERT INTO `sys_log` VALUES ('ee1f86df-95ea-4a16-9140-af304819c7a1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 10:30:49');
INSERT INTO `sys_log` VALUES ('ee62097b-c09f-4f6a-89aa-79d7f61c30e2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 09:41:15');
INSERT INTO `sys_log` VALUES ('eea85c9f-9ce1-4290-b9c2-4afd186d5b75', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 14:49:30');
INSERT INTO `sys_log` VALUES ('ef17a36f-05e5-48ac-9e9d-6e6a657bd302', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:45:48');
INSERT INTO `sys_log` VALUES ('ef4371ba-5d62-4bb0-a4ba-b4d62bdb48db', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 13:58:30');
INSERT INTO `sys_log` VALUES ('efc8e3ed-f653-44d1-8d07-d8b0f904e661', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:41:56');
INSERT INTO `sys_log` VALUES ('eff1a8a3-31aa-45b7-98c3-9ce2eeb7d924', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗14ms', null, 'liuc', '2018-01-11 10:30:21');
INSERT INTO `sys_log` VALUES ('f04c4e14-83fb-4317-8917-01a3bdc30098', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:15:54');
INSERT INTO `sys_log` VALUES ('f05991d3-1a8a-4f9f-882e-d9e3c2084417', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:34:43');
INSERT INTO `sys_log` VALUES ('f07544ed-8e8e-47d4-8f64-e633f5d16956', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:34:34');
INSERT INTO `sys_log` VALUES ('f0992bbe-fd51-43e1-a68a-3672af6cbc73', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:02:15');
INSERT INTO `sys_log` VALUES ('f10f7731-621a-4917-b34c-86aa19c89ea3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-08 15:21:44');
INSERT INTO `sys_log` VALUES ('f1590eff-1343-4174-83d8-5b6aae3b9b92', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-08 15:51:19');
INSERT INTO `sys_log` VALUES ('f1cd1cd0-f964-4c93-9fdd-9f1a147eb371', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:56:04');
INSERT INTO `sys_log` VALUES ('f209536d-7277-43f0-9c0e-90e7d72bbcce', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-03 16:02:51');
INSERT INTO `sys_log` VALUES ('f23d3cea-a9fa-41ed-ad1e-f30bc211ba39', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:11:31');
INSERT INTO `sys_log` VALUES ('f25510f3-f44b-461c-9808-0bae6ef3f389', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗12ms', null, 'liuc', '2018-01-10 09:38:43');
INSERT INTO `sys_log` VALUES ('f3215975-a916-4168-83fe-db1e12e58e14', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:40:57');
INSERT INTO `sys_log` VALUES ('f32ce160-d46a-47a7-8118-c31d4a5eb281', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2017-12-29 14:59:02');
INSERT INTO `sys_log` VALUES ('f3682e34-63b2-4412-9a35-92c754ac8919', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:02:17');
INSERT INTO `sys_log` VALUES ('f3a75cc1-33b3-46dc-aca4-ddd35c1a0f1d', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 12:13:03');
INSERT INTO `sys_log` VALUES ('f3ba9355-1688-4c20-aa22-34e8a5ebb4b3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:32:41');
INSERT INTO `sys_log` VALUES ('f427c163-ef16-4456-a956-351d2a8ff94a', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 09:10:56');
INSERT INTO `sys_log` VALUES ('f42aebcc-3d79-4f79-8a77-0876a887f618', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:35:34');
INSERT INTO `sys_log` VALUES ('f45f7167-1c24-48cc-bf37-8420fb72ef9c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗7ms', null, 'liuc', '2018-01-03 16:08:18');
INSERT INTO `sys_log` VALUES ('f48bfa33-d7a0-44cc-8fb8-f0dd135f059f', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-10 16:40:52');
INSERT INTO `sys_log` VALUES ('f4bb1e35-c2e7-4a64-b4b9-9711776583ed', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-10 17:11:47');
INSERT INTO `sys_log` VALUES ('f50115af-ced0-4ade-8a4b-a1738241b67c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-10 16:40:50');
INSERT INTO `sys_log` VALUES ('f5645883-bae0-4fc7-95cb-84edbd348161', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 23:37:37');
INSERT INTO `sys_log` VALUES ('f5c44357-26b7-48f8-b725-5b8846db984a', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:10:52');
INSERT INTO `sys_log` VALUES ('f5c6cb48-e51b-4754-9aba-50d28e165785', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 15:32:00');
INSERT INTO `sys_log` VALUES ('f616d087-382b-44aa-9249-cf02efe30f2f', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:59:12');
INSERT INTO `sys_log` VALUES ('f6171da3-6932-4170-b0da-eb933a47adb7', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:16:36');
INSERT INTO `sys_log` VALUES ('f63ca66e-da13-4163-86c4-fc3436c31939', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-11 11:15:24');
INSERT INTO `sys_log` VALUES ('f6ce4f19-32fe-493f-8792-47daaa2aa399', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 17:21:15');
INSERT INTO `sys_log` VALUES ('f788965f-5059-4ec4-ba9c-9c901a4a1b1b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗15ms', null, 'liuc', '2018-01-02 17:04:15');
INSERT INTO `sys_log` VALUES ('f7e72fcd-3cbf-4957-9640-345ebf6311df', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 17:02:03');
INSERT INTO `sys_log` VALUES ('f8182a20-200e-4a58-a416-dd76c0c98bf2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗10ms', null, 'liuc', '2018-01-06 16:50:31');
INSERT INTO `sys_log` VALUES ('f830ebf4-0a7c-4f46-9f60-f5853d118489', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-10 09:08:23');
INSERT INTO `sys_log` VALUES ('f847cf5d-ef44-4e24-a55a-61124a512efe', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 09:12:20');
INSERT INTO `sys_log` VALUES ('f850dcfa-17af-4d8b-91b0-6acdf3528997', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:41:36');
INSERT INTO `sys_log` VALUES ('f87affab-e407-4296-a0e2-b3cf1aaac14b', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-03 11:18:55');
INSERT INTO `sys_log` VALUES ('f8d6b6dd-8b7f-4657-8240-a8a34bb8fbe6', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:44:52');
INSERT INTO `sys_log` VALUES ('f93a5cb3-4c51-4449-a33a-62a23af92223', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 11:16:59');
INSERT INTO `sys_log` VALUES ('f97986af-9c74-479f-902b-fecb72de1e02', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗11ms', null, 'liuc', '2018-01-11 16:32:17');
INSERT INTO `sys_log` VALUES ('f97fd947-44ff-4726-a547-33ed889d3c4e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:06:56');
INSERT INTO `sys_log` VALUES ('f9baa6b5-093e-4b1b-95eb-8a7edefcce23', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-05 23:46:40');
INSERT INTO `sys_log` VALUES ('f9c8666b-b442-4c6e-a1f7-642939a72fe1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 09:47:59');
INSERT INTO `sys_log` VALUES ('fa126179-499f-4fdd-9eab-f99b0b9ca076', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2017-12-29 21:21:24');
INSERT INTO `sys_log` VALUES ('fa2b9ee6-49f4-4149-be0b-9c2a83bc3d18', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-09 17:16:18');
INSERT INTO `sys_log` VALUES ('fa366fc8-36c7-4cf7-b061-c17e787b4dd9', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:11:31');
INSERT INTO `sys_log` VALUES ('fa617aa2-2f4d-4880-9612-061230a4818a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗9ms', null, 'liuc', '2018-01-10 17:28:25');
INSERT INTO `sys_log` VALUES ('fa633ca7-cf5b-44f3-b143-5f31c3bd2be0', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗5ms', null, 'liuc', '2018-01-11 10:30:24');
INSERT INTO `sys_log` VALUES ('fa7df345-d3c3-4577-9a80-c11eb83eb4ef', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗14ms', null, 'liuc', '2018-01-09 17:29:47');
INSERT INTO `sys_log` VALUES ('fa880828-f603-41fb-8ed3-36288d3041d3', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-10 16:02:29');
INSERT INTO `sys_log` VALUES ('fae8bf2e-a111-4656-9291-7aa45639e3d0', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:50:11');
INSERT INTO `sys_log` VALUES ('fbbd12a6-5c88-4114-a1d3-cacf911d6a15', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 14:30:33');
INSERT INTO `sys_log` VALUES ('fc13de97-9478-47c6-ab8c-405e1596696a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗0ms', null, 'liuc', '2018-01-11 16:47:11');
INSERT INTO `sys_log` VALUES ('fc6b7985-dd7e-4be3-ae38-6af5b3f579d4', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:10:55');
INSERT INTO `sys_log` VALUES ('fc7500ad-249f-41bb-9784-8417497d5265', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 09:51:37');
INSERT INTO `sys_log` VALUES ('fcc091cc-4569-4c59-bdf8-bde840a06014', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗6ms', null, 'liuc', '2018-01-08 09:54:43');
INSERT INTO `sys_log` VALUES ('fcd6bb58-c804-4e5c-8417-d25a30e6a31c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:13:02');
INSERT INTO `sys_log` VALUES ('fd3bde25-d3d1-4793-bd12-227f3e9d6414', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-05 21:12:32');
INSERT INTO `sys_log` VALUES ('fd5503c5-dda4-4aea-8227-b78eccf15b54', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-12 15:03:43');
INSERT INTO `sys_log` VALUES ('fd821ebf-c213-46b4-ae83-f32748393f22', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 10:40:19');
INSERT INTO `sys_log` VALUES ('fd8289b9-87bf-4c5c-9097-c8b50e297ee1', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-11 16:41:14');
INSERT INTO `sys_log` VALUES ('fd935d2e-8d76-47a8-b5e7-d813c2c5eeb1', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-10 16:01:54');
INSERT INTO `sys_log` VALUES ('fdc6d77f-4125-46e4-ae4f-24fe417587fc', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-02 17:05:06');
INSERT INTO `sys_log` VALUES ('fe1c108a-eda3-4d04-bce1-eef8e71ad133', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗2ms', null, 'liuc', '2018-01-09 14:43:55');
INSERT INTO `sys_log` VALUES ('fe1c464a-aa9a-4496-ab97-ee7607475710', '获取已发邮件信息列表', 'com.springboot.ybt.toolkit.service.impl.MessageServiceImpl.getMessageSendList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 09:11:47');
INSERT INTO `sys_log` VALUES ('fef1b855-e861-412a-a364-602b0fbbbf6a', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 16:11:46');
INSERT INTO `sys_log` VALUES ('ff3ff94e-48d2-4462-9bf5-e032829ab61e', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 15:29:35');
INSERT INTO `sys_log` VALUES ('ff5751d4-42c0-41e9-97e3-0f490fb17e0c', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 10:32:34');
INSERT INTO `sys_log` VALUES ('ff670b58-c972-4a0a-95f4-4b97048db4f2', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 14:00:24');
INSERT INTO `sys_log` VALUES ('ff97025d-dba8-49fa-a787-ead5ecf7d713', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-09 13:59:46');
INSERT INTO `sys_log` VALUES ('ffb2050f-9d8b-45b6-837d-fbc56737fcb8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-09 13:59:28');
INSERT INTO `sys_log` VALUES ('ffb78557-63ea-4fca-9454-50887e444459', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-12 10:01:07');
INSERT INTO `sys_log` VALUES ('fff1ff31-7857-44c8-9779-394ba70eafb8', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗4ms', null, 'liuc', '2018-01-08 15:22:22');
INSERT INTO `sys_log` VALUES ('fff748dd-7f88-4607-a6f7-7f7ed37b24b5', '获取用户列表', 'com.springboot.ybt.system.service.impl.SysUserServiceImpl.getUserList()', '0', '127.0.0.1', null, '运行消耗3ms', null, 'liuc', '2018-01-11 11:16:23');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(36) NOT NULL,
  `createDateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记(0启用，1禁用)',
  `updateDateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `functype` varchar(255) DEFAULT NULL COMMENT '菜单类型',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `levelCode` varchar(36) DEFAULT NULL COMMENT '层级编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `parentId` varchar(255) DEFAULT NULL COMMENT '父级ID',
  `remark` longtext COMMENT '备注',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('402880e958eb83230158eb85a30f0000', '2016-12-11 09:35:53', '0', '2016-12-11 09:35:53', '0', 'ARTICLE', '1', 'fa fa-edit', '000028000001', '我的文章', '402880eb58d9a6d40158d9a7b21f0000', '', '/markdown/list');
INSERT INTO `sys_menu` VALUES ('402880e95a72d8a4015a738980e30000', '2017-02-25 12:31:15', '0', '2017-02-25 12:31:15', '0', 'FORM', '1', 'fa fa-edit', '000004000002', '表单-form', 'ff80808159ea142c0159ea670fae0000', '表单组件base-form', '/markdown/preview/form');
INSERT INTO `sys_menu` VALUES ('402880e95a72d8a4015a738bb1990001', '2017-02-25 12:33:39', '0', '2017-02-25 12:33:57', '1', 'JOB', '1', 'fa fa-calendar-check-o', '000028000005', '任务管理器', '402880eb58d9a6d40158d9a7b21f0000', '基于Quartz的定时任务管理器', '/job/list');
INSERT INTO `sys_menu` VALUES ('402880ea5aae3edf015ab1b0ec9d0017', '2017-03-09 14:10:46', '0', '2017-03-09 14:10:46', '0', 'FILEINPUT', '1', 'fa fa-file-o', '000004000003', '附件上传-file', 'ff80808159ea142c0159ea670fae0000', '', '/markdown/preview/file');
INSERT INTO `sys_menu` VALUES ('402880eb56875b7f0156876338100000', '2016-08-14 12:50:41', '0', '2016-12-05 15:12:59', '3', 'DEMO', '0', 'fa fa-table', '000002', 'CURD DEMO', '', '', '');
INSERT INTO `sys_menu` VALUES ('402880eb56875b7f01568763ac630001', '2016-08-14 12:51:11', '0', '2016-12-05 16:22:21', '5', 'USER-DIALOG', '1', 'fa fa-user', '000002000001', '用户列表-Dailog', '402880eb56875b7f0156876338100000', '', '/user/list');
INSERT INTO `sys_menu` VALUES ('402880eb58d9a6d40158d9a7b21f0000', '2016-12-07 22:19:55', '0', '2016-12-07 22:19:55', '0', 'TOOL', '0', 'fa fa-wrench', '000028', '系统工具', '', '', '');
INSERT INTO `sys_menu` VALUES ('402880eb58d9a6d40158d9a995130001', '2016-12-07 22:21:59', '0', '2016-12-12 09:59:46', '3', 'MARKDOWN', '1', 'fa fa-pencil', '000028000002', 'Markdown编辑器', '402880eb58d9a6d40158d9a7b21f0000', '', '/markdown/edit');
INSERT INTO `sys_menu` VALUES ('40288182579e398f0157a25ca29a0002', '2016-10-08 11:36:02', '0', '2016-10-08 11:36:02', '0', 'USER-DEMO-TAB', '1', 'fa fa-male', '000002000002', '用户列表-Tab', '402880eb56875b7f0156876338100000', 'CURD-DEMO tab方式', '/user/tab/list');
INSERT INTO `sys_menu` VALUES ('4028818a567745ec0156786cd39e000b', '2016-08-11 15:06:53', '0', '2016-08-30 14:06:15', '5', 'TODO', '0', 'fa fa-calendar-check-o', '000001', '我的待办', '', '', '');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d41352630000', '2016-08-29 10:14:11', '0', '2016-08-29 10:14:11', '0', 'SYSTEM', '0', 'fa fa-tv', '000030', '系统管理', '', '', '');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d41435830001', '2016-08-29 10:15:09', '0', '2017-07-18 18:29:43', '1', 'USER', '1', 'fa fa-user', '000030000001', '用户管理', '4028818a56d407950156d41352630000', null, '/user/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d4160e390002', '2016-08-29 10:17:10', '0', '2016-08-29 10:17:10', '0', 'DICTIONARY', '1', 'fa fa-book', '000030000002', '字典管理', '4028818a56d407950156d41352630000', '', '/dict/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d41d32ab0003', '2016-08-29 10:24:58', '0', '2017-01-03 16:51:49', '2', 'MENU', '1', 'fa fa-cog', '000030000003', '菜单管理', '4028818a56d407950156d41352630000', '', '/menu/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d4ecfafa0004', '2016-08-29 14:11:55', '0', '2016-08-30 13:44:07', '1', 'Role', '1', 'fa fa-street-view', '000030000004', '角色管理', '4028818a56d407950156d41352630000', '', '/role/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d4ecfafa0012', '2016-08-29 14:11:55', '0', '2016-08-30 13:44:07', '1', 'LOG', '1', 'fa fa-street-view', '000030000007', '操作日志管理', '4028818a56d407950156d41352630000', '', '/log/list');
INSERT INTO `sys_menu` VALUES ('402881f25681c52a015681d472ba0000', '2016-08-13 10:56:39', '0', '2016-12-05 09:58:40', '2', 'TEST', '1', 'fa fa-bicycle', '000001000001', 'TEST', '4028818a567745ec0156786cd39e000b', '', 'TEST');
INSERT INTO `sys_menu` VALUES ('8a8a801b58ce0f500158ce14d2c20000', '2016-12-05 16:23:40', '0', '2016-12-05 16:23:40', '0', 'USER-PAGE', '1', 'fa fa-user', '000002000003', '用户列表-Page', '402880eb56875b7f0156876338100000', '', '/user/page/list');
INSERT INTO `sys_menu` VALUES ('8a8a807a59634b2801596364e33d0001', '2017-01-03 16:14:33', '0', '2017-01-03 16:14:33', '0', 'ROLEFUNC', '1', 'fa fa-key', '000030000005', '角色授权', '4028818a56d407950156d41352630000', '', '/rolemenu/list');
INSERT INTO `sys_menu` VALUES ('8a8a807a59634b2801596364e33d0002', '2017-01-03 16:14:33', '0', '2017-01-03 16:14:33', '0', 'ONLINEUSER', '1', 'fa fa-key', '000030000006', '在线用户管理', '4028818a56d407950156d41352630000', null, '/user/onlineUserPage');
INSERT INTO `sys_menu` VALUES ('8a8a81425a1b36e9015a1b42074b0000', '2017-02-08 09:06:36', '0', '2017-02-13 13:40:04', '1', 'CODEGENERATOR', '1', 'fa fa-list', '000028000003', '代码生成器', '402880eb58d9a6d40158d9a7b21f0000', '', '/generator/setting');
INSERT INTO `sys_menu` VALUES ('8a8a81d65a3598d9015a360092e60000', '2017-02-13 13:44:51', '1', '2017-03-01 11:01:46', '2', 'GENERATOR', '1', 'fa fa-edit', '000028000004', '代码生成器测试', '402880eb58d9a6d40158d9a7b21f0000', '本功能菜单为代码生成器生成，时间：2017-02-13 13:44:51', '/generator/list');
INSERT INTO `sys_menu` VALUES ('8a8a83295a83a81a015a843e397b0000', '2017-02-28 18:22:34', '0', '2017-02-28 18:22:34', '0', 'MESSAGE', '1', 'fa fa-list', '000028000006', '消息管理器', '402880eb58d9a6d40158d9a7b21f0000', '', '/message/list');
INSERT INTO `sys_menu` VALUES ('8a8a83295a83a81a015a843e397b0012', '2017-02-28 18:22:34', '0', '2017-02-28 18:22:34', '0', 'MESSAGE', '1', 'fa fa-list', '000028000006', '接口查看器', '402880eb58d9a6d40158d9a7b21f0000', '', '/swagger-ui.html');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea670fae0000', '2017-01-29 21:25:39', '0', '2017-02-06 14:34:24', '2', 'Component', '0', 'fa fa-server', '000004', '组件使用说明', '', '', '');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea68d1e30001', '2017-01-29 21:27:35', '0', '2017-02-25 12:31:32', '3', 'MODALS', '1', 'fa fa-windows', '000004000001', '窗体-modals', 'ff80808159ea142c0159ea670fae0000', '', '/markdown/preview/modal');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea68d1e30002', '2017-01-29 21:27:35', '0', '2017-01-29 21:27:35', '0', 'DRUID', '1', 'fa fa-windows', '000028000007', 'Druid监控', '402880eb58d9a6d40158d9a7b21f0000', 'Druid监控', '/druid');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea68d1e30003', '2017-01-29 21:27:35', '0', '2017-01-29 21:27:35', '0', 'DRUID', '1', 'fa fa-windows', '000028000008', 'Redis监控', '402880eb58d9a6d40158d9a7b21f0000', 'Redis监控', '');

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `id` varchar(36) NOT NULL,
  `createDateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记(0启用，1禁用)',
  `updateDateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `messageFlag` varchar(255) DEFAULT NULL COMMENT '消息标记( 0 重要紧急消息  1一般消息)',
  `messageStatus` varchar(255) DEFAULT NULL COMMENT '消息状态(0  临时保存   1 审批中  2 审批退回  4 已发送（审批通过))',
  `messageType` varchar(255) DEFAULT NULL COMMENT '消息类型(0 系统消息  1 邮件  2 短信)',
  `receiveUsers` longtext,
  `remark` longtext COMMENT '备注',
  `sendContent` longtext COMMENT '内容',
  `sendSubject` varchar(255) DEFAULT NULL COMMENT '主题',
  `sendTime` datetime DEFAULT NULL COMMENT '发送时间',
  `sendUser` varchar(255) DEFAULT NULL COMMENT '发送人',
  `sendUserID` varchar(255) DEFAULT NULL COMMENT '发送人id',
  `fileIds` longtext COMMENT '附件',
  `receiverIds` longtext COMMENT '接收人ID/群组ID',
  `receiverType` varchar(255) DEFAULT NULL COMMENT '接收人类型(0 群组 1用户 接收人类型决定receiverIds是哪类ID)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES ('204ea513-9545-4007-8fad-065c465a9c3e', '2018-01-11 10:59:13', null, null, null, '0', '4', '[1]', 'liuc', null, '<p><img alt=\"\" src=\"https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1515648416504&amp;di=267bbe0071d30d446fbdaa87e0b41477&amp;imgtype=0&amp;src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F0824ab18972bd40738b135da7a899e510fb309a6.jpg\" style=\"width: 171px; height: 256px;\" /></p>', '诱惑', '2018-01-11 10:59:13', null, '2', null, '2', null);
INSERT INTO `sys_message` VALUES ('2c74e6c9-5dfe-4c2d-933d-512d63950548', '2018-01-11 10:45:26', null, null, null, '0', '4', '[1]', 'liuc', null, '<p><img alt=\"\" src=\"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1450195542,3231118873&amp;fm=27&amp;gp=0.jpg\" style=\"width: 333px; height: 187px;\" />，这是个大美女！</p>', '大美女', '2018-01-11 10:45:26', null, '2', null, '2', null);
INSERT INTO `sys_message` VALUES ('73a9d108-ef7b-41b9-bb79-a7b313f9dd0b', '2018-01-10 13:59:05', null, null, null, '0', '4', '[0, 1]', 'liuc,8446666', null, '<p>rtwertwert</p>', '345234', '2018-01-10 13:59:05', null, '2', null, '2,12', null);
INSERT INTO `sys_message` VALUES ('819bbdd0-0fe4-4b80-a779-aee7e5334087', '2018-01-11 10:39:55', null, null, null, '0', '4', '[1]', 'liuc', null, '<p><img alt=\"smiley\" height=\"23\" src=\"http://127.0.0.1:8080/ybt/static/adminlte/plugins/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" /><img alt=\"\" src=\"https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1515648416505&amp;di=794ed3ffe25bf894e90edb62863a62bf&amp;imgtype=0&amp;src=http%3A%2F%2Fimg1.3lian.com%2F2015%2Fa1%2F53%2Fd%2F201.jpg\" style=\"width: 366px; height: 206px;\" />，漂亮吗？</p>', '美女', '2018-01-11 10:39:55', null, '2', null, '2', null);

-- ----------------------------
-- Table structure for sys_message_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_group`;
CREATE TABLE `sys_message_group` (
  `id` varchar(36) NOT NULL,
  `createDateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记(0启用，1禁用)',
  `updateDateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `name` varchar(255) DEFAULT NULL COMMENT '组名',
  `remark` longtext COMMENT '备注',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `user_id` varchar(255) DEFAULT NULL COMMENT '消息组拥有者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_message_group
-- ----------------------------
INSERT INTO `sys_message_group` VALUES ('402880e456223e8f015625231d8e0001', '2017-03-03 14:38:36', '0', '2017-03-03 14:38:41', '0', '好友', 'test', '1', '2');
INSERT INTO `sys_message_group` VALUES ('402880e456223e8f015625231d8e0002', '2017-03-03 14:38:38', '0', '2017-03-03 14:38:44', '0', '同事', 'test', '2', '2');
INSERT INTO `sys_message_group` VALUES ('402880e456223e8f015625231d8e0003', '2017-03-03 14:38:55', '0', '2017-03-03 14:38:59', '0', '项目组', 'test', '3', '2');
INSERT INTO `sys_message_group` VALUES ('402880e45a9c67f5015a9c6a26d10000', '2017-03-05 11:01:26', '0', '2017-03-05 11:01:26', '0', 'test1', 'test1', '5', '2');
INSERT INTO `sys_message_group` VALUES ('402880e55a998466015a99894e020000', '2017-03-04 21:36:36', null, '2017-03-04 21:36:36', '0', '12', null, null, null);
INSERT INTO `sys_message_group` VALUES ('402880e55a998466015a998e208d0003', '2017-03-04 21:41:52', null, '2017-03-04 21:41:52', '0', '33', null, null, '2');
INSERT INTO `sys_message_group` VALUES ('402880e55a99936a015a999463000000', '2017-03-04 21:48:43', '0', '2017-03-04 21:48:43', '0', 'test', 'test', '5', '2');

-- ----------------------------
-- Table structure for sys_message_group_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_group_user`;
CREATE TABLE `sys_message_group_user` (
  `id` varchar(36) NOT NULL,
  `createDateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记(0启用，1禁用)',
  `updateDateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `group_id` varchar(255) DEFAULT NULL COMMENT '消息组',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_message_group_user
-- ----------------------------
INSERT INTO `sys_message_group_user` VALUES ('1', null, '0', null, '0', '402880e456223e8f015625231d8e0001', '1', '4028818458d40f4f0158d4108eb60001');
INSERT INTO `sys_message_group_user` VALUES ('2', null, '0', null, '0', '402880e456223e8f015625231d8e0002', '1', '2');
INSERT INTO `sys_message_group_user` VALUES ('3', null, '0', null, '0', '402880e456223e8f015625231d8e0003', '1', '12');
INSERT INTO `sys_message_group_user` VALUES ('402880e45a9c67f5015a9c6a26e20001', '2017-03-05 11:01:26', '0', '2017-03-05 11:01:26', '0', '402880e45a9c67f5015a9c6a26d10000', null, '4028818458d40f4f0158d4108eb60001');
INSERT INTO `sys_message_group_user` VALUES ('402880e45a9c67f5015a9c6a26f40002', '2017-03-05 11:01:26', '0', '2017-03-05 11:01:26', '0', '402880e45a9c67f5015a9c6a26d10000', null, '4028818458d3f33d0158d40197dd0004');
INSERT INTO `sys_message_group_user` VALUES ('402880e45a9c67f5015a9c6a26f40003', '2017-03-05 11:01:26', '0', '2017-03-05 11:01:26', '0', '402880e45a9c67f5015a9c6a26d10000', null, '402880e65a7facdb015a7fca61830000');
INSERT INTO `sys_message_group_user` VALUES ('402880e45a9c67f5015a9c6a26f40004', '2017-03-05 11:01:26', '0', '2017-03-05 11:01:26', '0', '402880e45a9c67f5015a9c6a26d10000', null, '4028818458d40f4f0158d4169f9d0007');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a998466015a99894e0a0001', '2017-03-04 21:36:36', '0', '2017-03-04 21:36:36', '0', '402880e55a998466015a99894e020000', null, '4028818458d40f4f0158d4108eb60001');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a998466015a99894e170002', '2017-03-04 21:36:36', '0', '2017-03-04 21:36:36', '0', '402880e55a998466015a99894e020000', null, '4028818458d3f33d0158d40197dd0004');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a998466015a998e208e0004', '2017-03-04 21:41:52', '0', '2017-03-04 21:41:52', '0', '402880e55a998466015a998e208d0003', null, '4028818458d40f4f0158d4108eb60001');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a998466015a998e20900005', '2017-03-04 21:41:52', '0', '2017-03-04 21:41:52', '0', '402880e55a998466015a998e208d0003', null, '4028818458d3f33d0158d40197dd0004');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a998466015a998e20900006', '2017-03-04 21:41:52', '0', '2017-03-04 21:41:52', '0', '402880e55a998466015a998e208d0003', null, '402880e65a7facdb015a7fca61830000');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a99936a015a9994630d0001', '2017-03-04 21:48:43', '0', '2017-03-04 21:48:43', '0', '402880e55a99936a015a999463000000', null, '4028818458d40f4f0158d4108eb60001');
INSERT INTO `sys_message_group_user` VALUES ('402880e55a99936a015a9994631b0002', '2017-03-04 21:48:43', '0', '2017-03-04 21:48:43', '0', '402880e55a99936a015a999463000000', null, '4028818458d3f33d0158d40197dd0004');

-- ----------------------------
-- Table structure for sys_message_receiver
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_receiver`;
CREATE TABLE `sys_message_receiver` (
  `id` varchar(36) NOT NULL,
  `createDateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记(0启用，1禁用)',
  `updateDateTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `isRead` varchar(255) DEFAULT NULL,
  `messageFlag` varchar(255) DEFAULT NULL COMMENT '消息标记(0 重要紧急消息  1一般消息)',
  `messageType` varchar(255) DEFAULT NULL COMMENT '消息类型(0 系统消息  1 邮件  2 短信)',
  `readTime` datetime DEFAULT NULL COMMENT '读取时间',
  `receiveAddress` varchar(255) DEFAULT NULL COMMENT '接收地址',
  `receiveUserID` varchar(255) DEFAULT NULL COMMENT '接收人id',
  `remark` longtext COMMENT '备注',
  `message` varchar(36) DEFAULT NULL COMMENT '消息id',
  `readYet` varchar(255) DEFAULT NULL COMMENT '是否已读(0 未读  1 已读)',
  PRIMARY KEY (`id`),
  KEY `FK_4opt20g1s1vej8lay6pb31sdp` (`message`),
  CONSTRAINT `FK_4opt20g1s1vej8lay6pb31sdp` FOREIGN KEY (`message`) REFERENCES `sys_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_message_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(64) NOT NULL,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('10', '/member/changeSessionStatus.shtml', '用户Session踢出');
INSERT INTO `sys_permission` VALUES ('11', '/member/forbidUserById.shtml', '用户激活&禁止');
INSERT INTO `sys_permission` VALUES ('12', '/member/deleteUserById.shtml', '用户删除');
INSERT INTO `sys_permission` VALUES ('16', '/role/deleteRoleById.shtml', '角色列表删除');
INSERT INTO `sys_permission` VALUES ('17', '/role/addRole.shtml', '角色列表添加');
INSERT INTO `sys_permission` VALUES ('18', '/role/index.shtml', '角色列表');
INSERT INTO `sys_permission` VALUES ('19', '/permission/allocation.shtml', '权限分配');
INSERT INTO `sys_permission` VALUES ('20', '/role/allocation.shtml', '角色分配');
INSERT INTO `sys_permission` VALUES ('4', '/permission/index.shtml', '权限列表');
INSERT INTO `sys_permission` VALUES ('6', '/permission/addPermission.shtml', '权限添加');
INSERT INTO `sys_permission` VALUES ('7', '/permission/deletePermissionById.shtml', '权限删除');
INSERT INTO `sys_permission` VALUES ('8', '/member/list.shtml', '用户列表');
INSERT INTO `sys_permission` VALUES ('9', '/member/online.shtml', '在线用户');

-- ----------------------------
-- Table structure for sys_permission_init
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_init`;
CREATE TABLE `sys_permission_init` (
  `id` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `permissionInit` varchar(255) DEFAULT NULL COMMENT '需要具备的权限',
  `sort` int(50) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission_init
-- ----------------------------
INSERT INTO `sys_permission_init` VALUES ('1', '/static/**', 'anon,kickout', '1');
INSERT INTO `sys_permission_init` VALUES ('2', '/ajaxLogin', 'anon,kickout', '2');
INSERT INTO `sys_permission_init` VALUES ('3', '/logout', 'logout,kickout', '3');
INSERT INTO `sys_permission_init` VALUES ('4', '/add', 'perms[权限添加:权限删除],roles[100002],kickout', '4');
INSERT INTO `sys_permission_init` VALUES ('5', '/**', 'user,kickout', '5');
INSERT INTO `sys_permission_init` VALUES ('6', '/getGifCode', 'anon,kickout', '2');
INSERT INTO `sys_permission_init` VALUES ('7', '/kickout', 'anon', '2');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '100004');
INSERT INTO `sys_role` VALUES ('3', '权限角色', '100001');
INSERT INTO `sys_role` VALUES ('4', '用户中心', '100002');
INSERT INTO `sys_role` VALUES ('ae236732036f43cdbad6864cbeefd14a', '角色管理', '100003');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(64) NOT NULL,
  `rid` varchar(64) DEFAULT NULL COMMENT '角色ID',
  `pid` varchar(64) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '4', '8');
INSERT INTO `sys_role_permission` VALUES ('10', '3', '14');
INSERT INTO `sys_role_permission` VALUES ('11', '3', '15');
INSERT INTO `sys_role_permission` VALUES ('12', '3', '16');
INSERT INTO `sys_role_permission` VALUES ('13', '3', '17');
INSERT INTO `sys_role_permission` VALUES ('14', '3', '18');
INSERT INTO `sys_role_permission` VALUES ('15', '3', '19');
INSERT INTO `sys_role_permission` VALUES ('16', '3', '20');
INSERT INTO `sys_role_permission` VALUES ('17', '1', '4');
INSERT INTO `sys_role_permission` VALUES ('18', '1', '6');
INSERT INTO `sys_role_permission` VALUES ('19', '1', '7');
INSERT INTO `sys_role_permission` VALUES ('2', '4', '9');
INSERT INTO `sys_role_permission` VALUES ('20', '1', '8');
INSERT INTO `sys_role_permission` VALUES ('21', '1', '9');
INSERT INTO `sys_role_permission` VALUES ('22', '1', '10');
INSERT INTO `sys_role_permission` VALUES ('23', '1', '11');
INSERT INTO `sys_role_permission` VALUES ('24', '1', '12');
INSERT INTO `sys_role_permission` VALUES ('25', '1', '13');
INSERT INTO `sys_role_permission` VALUES ('26', '1', '14');
INSERT INTO `sys_role_permission` VALUES ('27', '1', '15');
INSERT INTO `sys_role_permission` VALUES ('28', '1', '16');
INSERT INTO `sys_role_permission` VALUES ('29', '1', '17');
INSERT INTO `sys_role_permission` VALUES ('3', '4', '10');
INSERT INTO `sys_role_permission` VALUES ('30', '1', '18');
INSERT INTO `sys_role_permission` VALUES ('31', '1', '19');
INSERT INTO `sys_role_permission` VALUES ('32', '1', '20');
INSERT INTO `sys_role_permission` VALUES ('4', '4', '11');
INSERT INTO `sys_role_permission` VALUES ('5', '4', '12');
INSERT INTO `sys_role_permission` VALUES ('6', '3', '4');
INSERT INTO `sys_role_permission` VALUES ('7', '3', '6');
INSERT INTO `sys_role_permission` VALUES ('8', '3', '7');
INSERT INTO `sys_role_permission` VALUES ('9', '3', '13');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `salt` varchar(60) DEFAULT NULL COMMENT '盐',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱|登录帐号',
  `pswd` varchar(80) DEFAULT NULL COMMENT '密码',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `lastLoginTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` varchar(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  `createNameId` varchar(255) DEFAULT NULL,
  `lastUpdateTime` datetime DEFAULT NULL,
  `lastUpdateNameId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'd85709108a5cd016a95d73f7d6827e1c', 'admin@qq.com', '39df0865f7eb788abe0e75f8873e5fa7', '2016-06-16 11:15:33', '2017-12-22 16:14:42', '1', null, null, null);
INSERT INTO `sys_user` VALUES ('11', 'root', null, '8446666@qq.com', 'CBbObwI8VQ2MrKFGmnWL8w==', '2016-05-26 20:50:54', '2017-02-13 15:49:04', '1', null, null, null);
INSERT INTO `sys_user` VALUES ('12', '8446666', null, '8446666@qq.com', 'x16YjoF1LNE=', '2016-05-27 22:34:19', '2016-06-15 17:03:16', '1', null, null, null);
INSERT INTO `sys_user` VALUES ('13', '123', null, '123', 'KL/QrouuaRWRWlkI0mpwbw==', '2016-05-27 22:34:19', '2016-06-15 17:03:16', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('14', 'haiqin', null, '123123@qq.com', 'zrt4HMxuDq3V8tXGdIBKjA==', '2016-05-27 22:34:19', '2017-03-31 23:04:34', '1', null, null, null);
INSERT INTO `sys_user` VALUES ('2', 'liuc', 'd5e6ab7bb509b17f68f9460cf2cbac22', '13764402356@163.com', 'ec4eb80b5a5e2c16c1afdda6511d2235', '2016-05-27 22:34:19', '2018-01-03 09:56:22', '1', '', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(64) NOT NULL,
  `uid` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `rid` varchar(64) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '12', '4');
INSERT INTO `sys_user_role` VALUES ('2', '11', '3');
INSERT INTO `sys_user_role` VALUES ('3', '11', '4');
INSERT INTO `sys_user_role` VALUES ('4', '1', '1');
