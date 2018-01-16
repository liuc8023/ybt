/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : ssmybt

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-16 16:08:47
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
  `parentName` varchar(50) DEFAULT NULL,
  `remark` longtext COMMENT '备注',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('402880e958eb83230158eb85a30f0000', '2016-12-11 09:35:53', '0', '2016-12-11 09:35:53', '0', 'ARTICLE', '1', 'fa fa-edit', '000028000001', '我的文章', '402880eb58d9a6d40158d9a7b21f0000', null, '', '/markdown/list');
INSERT INTO `sys_menu` VALUES ('402880e95a72d8a4015a738980e30000', '2017-02-25 12:31:15', '0', '2017-02-25 12:31:15', '0', 'FORM', '1', 'fa fa-edit', '000004000002', '表单-form', 'ff80808159ea142c0159ea670fae0000', null, '表单组件base-form', '/markdown/preview/form');
INSERT INTO `sys_menu` VALUES ('402880e95a72d8a4015a738bb1990001', '2017-02-25 12:33:39', '0', '2017-02-25 12:33:57', '1', 'JOB', '1', 'fa fa-calendar-check-o', '000028000005', '任务管理器', '402880eb58d9a6d40158d9a7b21f0000', null, '基于Quartz的定时任务管理器', '/job/list');
INSERT INTO `sys_menu` VALUES ('402880ea5aae3edf015ab1b0ec9d0017', '2017-03-09 14:10:46', '0', '2017-03-09 14:10:46', '0', 'FILEINPUT', '1', 'fa fa-file-o', '000004000003', '附件上传-file', 'ff80808159ea142c0159ea670fae0000', null, '', '/markdown/preview/file');
INSERT INTO `sys_menu` VALUES ('402880eb56875b7f0156876338100000', '2016-08-14 12:50:41', '0', '2016-12-05 15:12:59', '3', 'DEMO', '0', 'fa fa-table', '000002', 'CURD DEMO', '', null, '', '');
INSERT INTO `sys_menu` VALUES ('402880eb56875b7f01568763ac630001', '2016-08-14 12:51:11', '0', '2016-12-05 16:22:21', '5', 'USER-DIALOG', '1', 'fa fa-user', '000002000001', '用户列表-Dailog', '402880eb56875b7f0156876338100000', null, '', '/user/list');
INSERT INTO `sys_menu` VALUES ('402880eb58d9a6d40158d9a7b21f0000', '2016-12-07 22:19:55', '0', '2016-12-07 22:19:55', '0', 'TOOL', '0', 'fa fa-wrench', '000028', '系统工具', '', null, '', '');
INSERT INTO `sys_menu` VALUES ('402880eb58d9a6d40158d9a995130001', '2016-12-07 22:21:59', '0', '2016-12-12 09:59:46', '3', 'MARKDOWN', '1', 'fa fa-pencil', '000028000002', 'Markdown编辑器', '402880eb58d9a6d40158d9a7b21f0000', null, '', '/markdown/edit');
INSERT INTO `sys_menu` VALUES ('40288182579e398f0157a25ca29a0002', '2016-10-08 11:36:02', '0', '2016-10-08 11:36:02', '0', 'USER-DEMO-TAB', '1', 'fa fa-male', '000002000002', '用户列表-Tab', '402880eb56875b7f0156876338100000', null, 'CURD-DEMO tab方式', '/user/tab/list');
INSERT INTO `sys_menu` VALUES ('4028818a567745ec0156786cd39e000b', '2016-08-11 15:06:53', '0', '2016-08-30 14:06:15', '5', 'TODO', '0', 'fa fa-calendar-check-o', '000001', '我的待办', '', null, '', '');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d41352630000', '2016-08-29 10:14:11', '0', '2016-08-29 10:14:11', '0', 'SYSTEM', '0', 'fa fa-tv', '000030', '系统管理', '', null, '', '');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d41435830001', '2016-08-29 10:15:09', '0', '2017-07-18 18:29:43', '1', 'USER', '1', 'fa fa-user', '000030000001', '用户管理', '4028818a56d407950156d41352630000', null, null, '/user/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d4160e390002', '2016-08-29 10:17:10', '0', '2016-08-29 10:17:10', '0', 'DICTIONARY', '1', 'fa fa-book', '000030000002', '字典管理', '4028818a56d407950156d41352630000', null, '', '/dict/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d41d32ab0003', '2016-08-29 10:24:58', '0', '2017-01-03 16:51:49', '2', 'MENU', '1', 'fa fa-cog', '000030000003', '菜单管理', '4028818a56d407950156d41352630000', null, '', '/menu/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d4ecfafa0004', '2016-08-29 14:11:55', '0', '2016-08-30 13:44:07', '1', 'Role', '1', 'fa fa-street-view', '000030000004', '角色管理', '4028818a56d407950156d41352630000', null, '', '/role/list');
INSERT INTO `sys_menu` VALUES ('4028818a56d407950156d4ecfafa0012', '2016-08-29 14:11:55', '0', '2016-08-30 13:44:07', '1', 'LOG', '1', 'fa fa-street-view', '000030000007', '操作日志管理', '4028818a56d407950156d41352630000', null, '', '/log/list');
INSERT INTO `sys_menu` VALUES ('402881f25681c52a015681d472ba0000', '2016-08-13 10:56:39', '0', '2016-12-05 09:58:40', '2', 'TEST', '1', 'fa fa-bicycle', '000001000001', 'TEST', '4028818a567745ec0156786cd39e000b', null, '', 'TEST');
INSERT INTO `sys_menu` VALUES ('8a8a801b58ce0f500158ce14d2c20000', '2016-12-05 16:23:40', '0', '2016-12-05 16:23:40', '0', 'USER-PAGE', '1', 'fa fa-user', '000002000003', '用户列表-Page', '402880eb56875b7f0156876338100000', null, '', '/user/page/list');
INSERT INTO `sys_menu` VALUES ('8a8a807a59634b2801596364e33d0001', '2017-01-03 16:14:33', '0', '2017-01-03 16:14:33', '0', 'ROLEFUNC', '1', 'fa fa-key', '000030000005', '角色授权', '4028818a56d407950156d41352630000', null, '', '/rolemenu/list');
INSERT INTO `sys_menu` VALUES ('8a8a807a59634b2801596364e33d0002', '2017-01-03 16:14:33', '0', '2017-01-03 16:14:33', '0', 'ONLINEUSER', '1', 'fa fa-key', '000030000006', '在线用户管理', '4028818a56d407950156d41352630000', null, null, '/user/onlineUserPage');
INSERT INTO `sys_menu` VALUES ('8a8a81425a1b36e9015a1b42074b0000', '2017-02-08 09:06:36', '0', '2017-02-13 13:40:04', '1', 'CODEGENERATOR', '1', 'fa fa-list', '000028000003', '代码生成器', '402880eb58d9a6d40158d9a7b21f0000', null, '', '/generator/setting');
INSERT INTO `sys_menu` VALUES ('8a8a81d65a3598d9015a360092e60000', '2017-02-13 13:44:51', '1', '2017-03-01 11:01:46', '2', 'GENERATOR', '1', 'fa fa-edit', '000028000004', '代码生成器测试', '402880eb58d9a6d40158d9a7b21f0000', null, '本功能菜单为代码生成器生成，时间：2017-02-13 13:44:51', '/generator/list');
INSERT INTO `sys_menu` VALUES ('8a8a83295a83a81a015a843e397b0000', '2017-02-28 18:22:34', '0', '2017-02-28 18:22:34', '0', 'MESSAGE', '1', 'fa fa-list', '000028000006', '消息管理器', '402880eb58d9a6d40158d9a7b21f0000', null, '', '/message/list');
INSERT INTO `sys_menu` VALUES ('8a8a83295a83a81a015a843e397b0012', '2017-02-28 18:22:34', '0', '2017-02-28 18:22:34', '0', 'MESSAGE', '1', 'fa fa-list', '000028000006', '接口查看器', '402880eb58d9a6d40158d9a7b21f0000', null, '', '/swagger-ui.html');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea670fae0000', '2017-01-29 21:25:39', '0', '2017-02-06 14:34:24', '2', 'Component', '0', 'fa fa-server', '000004', '组件使用说明', '', null, '', '');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea68d1e30001', '2017-01-29 21:27:35', '0', '2017-02-25 12:31:32', '3', 'MODALS', '1', 'fa fa-windows', '000004000001', '窗体-modals', 'ff80808159ea142c0159ea670fae0000', null, '', '/markdown/preview/modal');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea68d1e30002', '2017-01-29 21:27:35', '0', '2017-01-29 21:27:35', '0', 'DRUID', '1', 'fa fa-windows', '000028000007', 'Druid监控', '402880eb58d9a6d40158d9a7b21f0000', null, 'Druid监控', '/druid');
INSERT INTO `sys_menu` VALUES ('ff80808159ea142c0159ea68d1e30003', '2017-01-29 21:27:35', '0', '2017-01-29 21:27:35', '0', 'DRUID', '1', 'fa fa-windows', '000028000008', 'Redis监控', '402880eb58d9a6d40158d9a7b21f0000', null, 'Redis监控', '');

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
