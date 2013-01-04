/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50509
 Source Host           : localhost
 Source Database       : alpfitre_db

 Target Server Type    : MySQL
 Target Server Version : 50509
 File Encoding         : utf-8

 Date: 01/04/2013 14:46:03 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `AreaPermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `AreaPermissionAssignments`;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `AreaPermissionBlockTypeAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `AreaPermissionBlockTypeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Areas`
-- ----------------------------
DROP TABLE IF EXISTS `Areas`;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Areas`
-- ----------------------------
BEGIN;
INSERT INTO `Areas` VALUES ('1', '105', 'Header', '0', '0', '0'), ('2', '105', 'Column 1', '0', '0', '0'), ('3', '105', 'Column 2', '0', '0', '0'), ('4', '105', 'Column 3', '0', '0', '0'), ('5', '105', 'Column 4', '0', '0', '0'), ('6', '104', 'Primary', '0', '0', '0'), ('7', '104', 'Secondary 1', '0', '0', '0'), ('8', '104', 'Secondary 2', '0', '0', '0'), ('9', '104', 'Secondary 3', '0', '0', '0'), ('10', '104', 'Secondary 4', '0', '0', '0'), ('11', '104', 'Secondary 5', '0', '0', '0'), ('12', '120', 'Main', '0', '0', '0'), ('13', '121', 'Main', '0', '0', '0'), ('14', '122', 'Main', '0', '0', '0'), ('15', '123', 'Main', '0', '0', '0'), ('16', '123', 'Sidebar', '0', '0', '0'), ('17', '123', 'Thumbnail Image', '0', '0', '0'), ('18', '123', 'Header Image', '0', '0', '0'), ('19', '124', 'Header Image', '0', '0', '0'), ('20', '125', 'Header Image', '0', '0', '0'), ('21', '126', 'Header Image', '0', '0', '0'), ('22', '1', 'Header', '0', '0', '0'), ('23', '1', 'Sidebar', '0', '0', '0'), ('24', '1', 'Main', '0', '0', '0'), ('25', '1', 'Header Image', '0', '0', '0'), ('26', '127', 'Header', '0', '0', '0'), ('27', '127', 'Sidebar', '0', '0', '0'), ('28', '127', 'Main', '0', '0', '0'), ('29', '127', 'Header Image', '0', '0', '0'), ('30', '131', 'Header', '0', '0', '0'), ('31', '131', 'Sidebar', '0', '0', '0'), ('32', '131', 'Main', '0', '0', '0'), ('33', '131', 'Header Image', '0', '0', '0'), ('34', '130', 'Header', '0', '0', '0'), ('35', '130', 'Sidebar', '0', '0', '0'), ('36', '130', 'Main', '0', '0', '0'), ('37', '130', 'Header Image', '0', '0', '0'), ('38', '129', 'Header', '0', '0', '0'), ('39', '129', 'Sidebar', '0', '0', '0'), ('40', '129', 'Main', '0', '0', '0'), ('41', '129', 'Header Image', '0', '0', '0'), ('42', '128', 'Main', '0', '0', '0'), ('43', '128', 'Sidebar', '0', '0', '0'), ('44', '128', 'Header Image', '0', '0', '0'), ('45', '133', 'Header Image', '0', '0', '0'), ('46', '133', 'Main', '0', '0', '0'), ('47', '133', 'Thumbnail Image', '0', '0', '0'), ('48', '133', 'Sidebar', '0', '0', '0'), ('49', '132', 'Main', '0', '0', '0'), ('50', '132', 'Sidebar', '0', '0', '0'), ('51', '132', 'Header Image', '0', '0', '0'), ('52', '1', 'Site Name', '0', '0', '1'), ('53', '1', 'Header Nav', '0', '0', '1'), ('54', '127', 'Site Name', '0', '0', '1'), ('55', '127', 'Header Nav', '0', '0', '1'), ('56', '130', 'Site Name', '0', '0', '1'), ('57', '130', 'Header Nav', '0', '0', '1'), ('58', '128', 'Site Name', '0', '0', '1'), ('59', '128', 'Header Nav', '0', '0', '1'), ('60', '129', 'Site Name', '0', '0', '1'), ('61', '129', 'Header Nav', '0', '0', '1'), ('62', '137', 'Header Image', '0', '0', '0'), ('63', '134', 'Header Image', '0', '0', '0'), ('64', '135', 'Header Image', '0', '0', '0'), ('65', '136', 'Header Image', '0', '0', '0'), ('66', '138', 'Header Image', '0', '0', '0'), ('67', '134', 'Site Name', '0', '0', '1'), ('68', '134', 'Header Nav', '0', '0', '1'), ('69', '134', 'Main', '0', '0', '0'), ('70', '136', 'Header Nav', '0', '0', '1'), ('71', '136', 'Main', '0', '0', '0'), ('72', '137', 'Header Nav', '0', '0', '1'), ('73', '137', 'Main', '0', '0', '0'), ('74', '138', 'Header Nav', '0', '0', '1'), ('75', '138', 'Main', '0', '0', '0'), ('76', '140', 'Header Nav', '0', '0', '1'), ('77', '140', 'Header Image', '0', '0', '0'), ('78', '140', 'Main', '0', '0', '0'), ('79', '140', 'Sidebar', '0', '0', '0'), ('80', '139', 'Header Nav', '0', '0', '1'), ('81', '139', 'Header Image', '0', '0', '0'), ('82', '139', 'Main', '0', '0', '0'), ('83', '139', 'Sidebar', '0', '0', '0'), ('84', '126', 'Header Nav', '0', '0', '1'), ('85', '126', 'Main', '0', '0', '0'), ('86', '126', 'Sidebar', '0', '0', '0'), ('87', '1', 'Sol İcerik', '0', '0', '0'), ('88', '1', 'Sağ İçerik', '0', '0', '0'), ('89', '1', 'İçerik', '0', '0', '0'), ('90', '135', 'Header Nav', '0', '0', '1'), ('91', '135', 'Main', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `AttributeKeyCategories`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeKeyCategories`;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeKeyCategories`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeKeyCategories` VALUES ('1', 'collection', '1', null), ('2', 'user', '1', null), ('3', 'file', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `AttributeKeys`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeKeys`;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeKeys`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeKeys` VALUES ('1', 'meta_title', 'Meta Title', '1', '1', '0', '0', '0', '1', '1', '1', '0'), ('2', 'meta_description', 'Meta Description', '1', '1', '0', '0', '0', '1', '2', '1', '0'), ('3', 'meta_keywords', 'Meta Keywords', '1', '1', '0', '0', '0', '1', '2', '1', '0'), ('4', 'icon_dashboard', 'Dashboard Icon', '1', '1', '0', '1', '0', '1', '2', '1', '0'), ('5', 'exclude_nav', 'Exclude From Nav', '1', '1', '0', '0', '0', '1', '3', '1', '0'), ('6', 'exclude_page_list', 'Exclude From Page List', '1', '1', '0', '0', '0', '1', '3', '1', '0'), ('7', 'header_extra_content', 'Header Extra Content', '1', '1', '0', '0', '0', '1', '2', '1', '0'), ('8', 'exclude_search_index', 'Exclude From Search Index', '1', '1', '0', '0', '0', '1', '3', '1', '0'), ('9', 'exclude_sitemapxml', 'Exclude From sitemap.xml', '1', '1', '0', '0', '0', '1', '3', '1', '0'), ('10', 'profile_private_messages_enabled', 'I would like to receive private messages.', '1', '1', '0', '0', '0', '1', '3', '2', '0'), ('11', 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', '1', '1', '0', '0', '0', '1', '3', '2', '0'), ('12', 'width', 'Width', '1', '1', '0', '0', '0', '1', '6', '3', '0'), ('13', 'height', 'Height', '1', '1', '0', '0', '0', '1', '6', '3', '0'), ('14', 'tags', 'Tags', '1', '1', '0', '0', '0', '1', '8', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `AttributeSetKeys`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeSetKeys`;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeSetKeys`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeSetKeys` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '1', '3'), ('5', '2', '1'), ('6', '2', '2'), ('7', '1', '4'), ('8', '2', '3'), ('9', '2', '4');
COMMIT;

-- ----------------------------
--  Table structure for `AttributeSets`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeSets`;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeSets`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeSets` VALUES ('1', 'Page Header', 'page_header', '1', '0', '0', '0'), ('2', 'Navigation and Indexing', 'navigation', '1', '0', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `AttributeTypeCategories`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeTypeCategories`;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeTypeCategories`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeTypeCategories` VALUES ('1', '1'), ('1', '2'), ('1', '3'), ('2', '1'), ('2', '2'), ('2', '3'), ('3', '1'), ('3', '2'), ('3', '3'), ('4', '1'), ('4', '2'), ('4', '3'), ('5', '1'), ('6', '1'), ('6', '2'), ('6', '3'), ('7', '1'), ('7', '3'), ('8', '1'), ('8', '2'), ('8', '3'), ('9', '2');
COMMIT;

-- ----------------------------
--  Table structure for `AttributeTypes`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeTypes`;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeTypes`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeTypes` VALUES ('1', 'text', 'Text', '0'), ('2', 'textarea', 'Text Area', '0'), ('3', 'boolean', 'Checkbox', '0'), ('4', 'date_time', 'Date/Time', '0'), ('5', 'image_file', 'Image/File', '0'), ('6', 'number', 'Number', '0'), ('7', 'rating', 'Rating', '0'), ('8', 'select', 'Select', '0'), ('9', 'address', 'Address', '0');
COMMIT;

-- ----------------------------
--  Table structure for `AttributeValues`
-- ----------------------------
DROP TABLE IF EXISTS `AttributeValues`;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `AttributeValues`
-- ----------------------------
BEGIN;
INSERT INTO `AttributeValues` VALUES ('1', '3', '2012-12-28 17:10:12', '1', '2'), ('2', '4', '2012-12-28 17:10:12', '1', '2'), ('3', '3', '2012-12-28 17:10:12', '1', '2'), ('4', '4', '2012-12-28 17:10:12', '1', '2'), ('5', '3', '2012-12-28 17:10:12', '1', '2'), ('6', '4', '2012-12-28 17:10:12', '1', '2'), ('7', '3', '2012-12-28 17:10:12', '1', '2'), ('8', '3', '2012-12-28 17:10:12', '1', '2'), ('9', '4', '2012-12-28 17:10:12', '1', '2'), ('10', '3', '2012-12-28 17:10:12', '1', '2'), ('11', '4', '2012-12-28 17:10:12', '1', '2'), ('12', '3', '2012-12-28 17:10:12', '1', '2'), ('13', '4', '2012-12-28 17:10:12', '1', '2'), ('14', '3', '2012-12-28 17:10:12', '1', '2'), ('15', '4', '2012-12-28 17:10:12', '1', '2'), ('16', '3', '2012-12-28 17:10:12', '1', '2'), ('17', '4', '2012-12-28 17:10:12', '1', '2'), ('18', '3', '2012-12-28 17:10:12', '1', '2'), ('19', '4', '2012-12-28 17:10:12', '1', '2'), ('20', '5', '2012-12-28 17:10:12', '1', '3'), ('21', '3', '2012-12-28 17:10:12', '1', '2'), ('22', '4', '2012-12-28 17:10:12', '1', '2'), ('23', '3', '2012-12-28 17:10:12', '1', '2'), ('24', '3', '2012-12-28 17:10:12', '1', '2'), ('25', '4', '2012-12-28 17:10:12', '1', '2'), ('26', '3', '2012-12-28 17:10:12', '1', '2'), ('27', '4', '2012-12-28 17:10:12', '1', '2'), ('28', '3', '2012-12-28 17:10:12', '1', '2'), ('29', '4', '2012-12-28 17:10:12', '1', '2'), ('30', '3', '2012-12-28 17:10:12', '1', '2'), ('31', '5', '2012-12-28 17:10:12', '1', '3'), ('32', '4', '2012-12-28 17:10:12', '1', '2'), ('33', '3', '2012-12-28 17:10:12', '1', '2'), ('34', '5', '2012-12-28 17:10:12', '1', '3'), ('35', '4', '2012-12-28 17:10:12', '1', '2'), ('36', '3', '2012-12-28 17:10:12', '1', '2'), ('37', '4', '2012-12-28 17:10:12', '1', '2'), ('38', '3', '2012-12-28 17:10:12', '1', '2'), ('39', '3', '2012-12-28 17:10:12', '1', '2'), ('40', '4', '2012-12-28 17:10:12', '1', '2'), ('41', '3', '2012-12-28 17:10:12', '1', '2'), ('42', '4', '2012-12-28 17:10:12', '1', '2'), ('43', '3', '2012-12-28 17:10:12', '1', '2'), ('44', '4', '2012-12-28 17:10:12', '1', '2'), ('45', '3', '2012-12-28 17:10:12', '1', '2'), ('46', '4', '2012-12-28 17:10:12', '1', '2'), ('47', '3', '2012-12-28 17:10:12', '1', '2'), ('48', '4', '2012-12-28 17:10:12', '1', '2'), ('49', '3', '2012-12-28 17:10:12', '1', '2'), ('50', '3', '2012-12-28 17:10:12', '1', '2'), ('51', '3', '2012-12-28 17:10:12', '1', '2'), ('52', '3', '2012-12-28 17:10:12', '1', '2'), ('53', '4', '2012-12-28 17:10:12', '1', '2'), ('54', '3', '2012-12-28 17:10:12', '1', '2'), ('55', '4', '2012-12-28 17:10:12', '1', '2'), ('56', '3', '2012-12-28 17:10:13', '1', '2'), ('57', '4', '2012-12-28 17:10:13', '1', '2'), ('58', '3', '2012-12-28 17:10:13', '1', '2'), ('59', '4', '2012-12-28 17:10:13', '1', '2'), ('60', '4', '2012-12-28 17:10:13', '1', '2'), ('61', '3', '2012-12-28 17:10:13', '1', '2'), ('62', '4', '2012-12-28 17:10:13', '1', '2'), ('63', '4', '2012-12-28 17:10:13', '1', '2'), ('64', '5', '2012-12-28 17:10:13', '1', '3'), ('65', '8', '2012-12-28 17:10:13', '1', '3'), ('66', '3', '2012-12-28 17:10:13', '1', '2'), ('67', '4', '2012-12-28 17:10:13', '1', '2'), ('68', '5', '2012-12-28 17:10:13', '1', '3'), ('69', '5', '2012-12-28 17:10:13', '1', '3'), ('70', '3', '2012-12-28 17:10:13', '1', '2'), ('71', '3', '2012-12-28 17:10:13', '1', '2'), ('72', '3', '2012-12-28 17:10:13', '1', '2'), ('73', '3', '2012-12-28 17:10:13', '1', '2'), ('74', '3', '2012-12-28 17:10:13', '1', '2'), ('75', '5', '2012-12-28 17:10:13', '1', '3'), ('76', '3', '2012-12-28 17:10:13', '1', '2'), ('77', '3', '2012-12-28 17:10:13', '1', '2'), ('78', '3', '2012-12-28 17:10:13', '1', '2'), ('79', '3', '2012-12-28 17:10:13', '1', '2'), ('80', '3', '2012-12-28 17:10:13', '1', '2'), ('81', '3', '2012-12-28 17:10:13', '1', '2'), ('82', '3', '2012-12-28 17:10:13', '1', '2'), ('83', '3', '2012-12-28 17:10:13', '1', '2'), ('84', '3', '2012-12-28 17:10:13', '1', '2'), ('85', '3', '2012-12-28 17:10:13', '1', '2'), ('86', '3', '2012-12-28 17:10:13', '1', '2'), ('87', '3', '2012-12-28 17:10:13', '1', '2'), ('88', '3', '2012-12-28 17:10:13', '1', '2'), ('89', '3', '2012-12-28 17:10:13', '1', '2'), ('90', '3', '2012-12-28 17:10:13', '1', '2'), ('91', '3', '2012-12-28 17:10:13', '1', '2'), ('92', '3', '2012-12-28 17:10:13', '1', '2'), ('93', '3', '2012-12-28 17:10:13', '1', '2'), ('94', '3', '2012-12-28 17:10:13', '1', '2'), ('95', '3', '2012-12-28 17:10:13', '1', '2'), ('96', '3', '2012-12-28 17:10:13', '1', '2'), ('97', '3', '2012-12-28 17:10:13', '1', '2'), ('98', '3', '2012-12-28 17:10:13', '1', '2'), ('99', '3', '2012-12-28 17:10:13', '1', '2'), ('100', '3', '2012-12-28 17:10:13', '1', '2'), ('101', '3', '2012-12-28 17:10:13', '1', '2'), ('102', '3', '2012-12-28 17:10:13', '1', '2'), ('103', '3', '2012-12-28 17:10:13', '1', '2'), ('104', '3', '2012-12-28 17:10:13', '1', '2'), ('105', '3', '2012-12-28 17:10:14', '1', '2'), ('106', '3', '2012-12-28 17:10:14', '1', '2'), ('107', '8', '2012-12-28 17:10:14', '1', '3'), ('108', '3', '2012-12-28 17:10:14', '1', '2'), ('109', '3', '2012-12-28 17:10:14', '1', '2'), ('110', '3', '2012-12-28 17:10:14', '1', '2'), ('111', '3', '2012-12-28 17:10:14', '1', '2'), ('112', '3', '2012-12-28 17:10:14', '1', '2'), ('113', '3', '2012-12-28 17:10:14', '1', '2'), ('114', '3', '2012-12-28 17:10:14', '1', '2'), ('115', '3', '2012-12-28 17:10:14', '1', '2'), ('116', '5', '2012-12-28 17:10:14', '1', '3'), ('117', '5', '2012-12-28 17:10:14', '1', '3'), ('118', '8', '2012-12-28 17:10:14', '1', '3'), ('119', '12', '2012-12-28 17:10:15', '1', '6'), ('120', '13', '2012-12-28 17:10:15', '1', '6'), ('121', '12', '2012-12-28 17:10:15', '1', '6'), ('122', '13', '2012-12-28 17:10:15', '1', '6'), ('123', '12', '2012-12-28 17:10:16', '1', '6'), ('124', '13', '2012-12-28 17:10:16', '1', '6'), ('125', '12', '2012-12-28 17:10:16', '1', '6'), ('126', '13', '2012-12-28 17:10:16', '1', '6'), ('127', '12', '2012-12-28 17:10:16', '1', '6'), ('128', '13', '2012-12-28 17:10:16', '1', '6'), ('129', '12', '2012-12-28 17:10:16', '1', '6'), ('130', '13', '2012-12-28 17:10:16', '1', '6'), ('131', '12', '2012-12-28 17:10:16', '1', '6'), ('132', '13', '2012-12-28 17:10:16', '1', '6'), ('133', '12', '2012-12-28 17:10:16', '1', '6'), ('134', '13', '2012-12-28 17:10:16', '1', '6'), ('135', '14', '2012-12-28 17:10:18', '1', '8'), ('136', '14', '2012-12-28 17:10:18', '1', '8'), ('137', '5', '2012-12-28 17:10:18', '1', '3'), ('138', '6', '2012-12-28 17:10:18', '1', '3'), ('139', '8', '2012-12-28 17:10:18', '1', '3'), ('140', '14', '2012-12-28 17:10:18', '1', '8'), ('141', '1', '2013-01-02 09:34:29', '1', '1'), ('142', '2', '2013-01-02 09:34:29', '1', '2'), ('143', '3', '2013-01-02 09:34:29', '1', '2'), ('144', '4', '2013-01-02 09:34:29', '1', '2'), ('145', '5', '2013-01-02 09:34:29', '1', '3'), ('146', '6', '2013-01-02 09:34:29', '1', '3'), ('147', '7', '2013-01-02 09:34:29', '1', '2'), ('148', '8', '2013-01-02 09:34:29', '1', '3'), ('149', '9', '2013-01-02 09:34:29', '1', '3'), ('150', '14', '2013-01-02 09:34:29', '1', '8');
COMMIT;

-- ----------------------------
--  Table structure for `BasicWorkflowPermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `BasicWorkflowProgressData`
-- ----------------------------
DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `BlockPermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `BlockPermissionAssignments`;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `BlockRelations`
-- ----------------------------
DROP TABLE IF EXISTS `BlockRelations`;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `BlockRelations`
-- ----------------------------
BEGIN;
INSERT INTO `BlockRelations` VALUES ('1', '53', '20', 'DUPLICATE'), ('2', '56', '55', 'DUPLICATE'), ('3', '57', '54', 'DUPLICATE'), ('4', '58', '56', 'DUPLICATE'), ('5', '59', '57', 'DUPLICATE'), ('6', '63', '62', 'DUPLICATE'), ('7', '64', '63', 'DUPLICATE'), ('8', '65', '58', 'DUPLICATE');
COMMIT;

-- ----------------------------
--  Table structure for `BlockTypePermissionBlockTypeAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `BlockTypePermissionBlockTypeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `BlockTypes`
-- ----------------------------
DROP TABLE IF EXISTS `BlockTypes`;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `BlockTypes`
-- ----------------------------
BEGIN;
INSERT INTO `BlockTypes` VALUES ('1', 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', '1', '0', '0', '1', '0', '400', '400', '0'), ('2', 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', '1', '0', '0', '1', '0', '400', '400', '0'), ('3', 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', '1', '0', '0', '1', '0', '300', '100', '0'), ('4', 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', '1', '0', '0', '1', '0', '300', '100', '0'), ('5', 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', '1', '0', '0', '1', '0', '400', '400', '0'), ('6', 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', '1', '0', '0', '1', '0', '400', '400', '0'), ('7', 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', '1', '0', '0', '1', '0', '400', '400', '0'), ('8', 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', '1', '0', '0', '0', '1', '500', '350', '0'), ('9', 'content', 'Content', 'HTML/WYSIWYG Editor Content.', '1', '0', '0', '0', '2', '600', '465', '0'), ('10', 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', '1', '0', '0', '0', '3', '500', '350', '0'), ('11', 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', '1', '0', '0', '0', '4', '370', '100', '0'), ('12', 'file', 'File', 'Link to files stored in the asset library.', '1', '0', '0', '0', '5', '300', '250', '0'), ('13', 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', '1', '0', '0', '0', '6', '380', '200', '0'), ('14', 'form', 'Form', 'Build simple forms and surveys.', '1', '0', '0', '0', '7', '420', '430', '0'), ('15', 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', '1', '0', '0', '0', '8', '400', '200', '0'), ('16', 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', '1', '0', '1', '0', '9', '350', '480', '0'), ('17', 'html', 'HTML', 'For adding HTML by hand.', '1', '0', '0', '0', '10', '600', '465', '0'), ('18', 'image', 'Image', 'Adds images and onstates from the library to pages.', '1', '0', '0', '0', '11', '400', '550', '0'), ('19', 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', '1', '0', '0', '0', '12', '430', '400', '0'), ('20', 'page_list', 'Page List', 'List pages based on type, area.', '1', '0', '0', '0', '13', '500', '350', '0'), ('21', 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', '1', '0', '0', '0', '14', '400', '330', '0'), ('22', 'search', 'Search', 'Add a search box to your site.', '1', '0', '0', '0', '15', '400', '240', '0'), ('23', 'slideshow', 'Slideshow', 'Display a running loop of images.', '1', '0', '0', '0', '16', '550', '400', '0'), ('24', 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', '1', '0', '0', '0', '17', '420', '300', '0'), ('25', 'tags', 'Tags', 'List pages based on type, area.', '1', '0', '0', '0', '18', '450', '260', '0'), ('26', 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', '1', '0', '0', '0', '19', '320', '220', '0'), ('27', 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', '1', '0', '0', '0', '20', '400', '210', '0'), ('28', 'date_archive', 'Blog Date Archive', 'Displays month archive for pages', '1', '0', '0', '0', '21', '500', '350', '0');
COMMIT;

-- ----------------------------
--  Table structure for `Blocks`
-- ----------------------------
DROP TABLE IF EXISTS `Blocks`;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Blocks`
-- ----------------------------
BEGIN;
INSERT INTO `Blocks` VALUES ('1', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '9', '1'), ('2', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '9', '1'), ('3', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '9', '1'), ('4', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '9', '1'), ('5', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '9', '1'), ('6', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '6', '1'), ('7', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '7', '1'), ('8', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '5', '1'), ('9', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '5', '1'), ('10', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '4', '1'), ('11', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '3', '1'), ('12', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', null, '1', '5', '1'), ('13', 'Blog Content', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('14', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '25', '1'), ('15', 'Thumbnail Image', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '18', '1'), ('16', 'Header Image', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '18', '1'), ('17', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '18', '1'), ('18', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '18', '1'), ('19', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '18', '1'), ('20', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '8', '1'), ('21', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('22', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '8', '1'), ('23', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('24', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('25', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('26', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('27', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('28', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '18', '1'), ('29', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null, '1', '9', '1'), ('30', '', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '1', '2', '1'), ('31', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('32', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('33', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '2', '1'), ('34', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '16', '1'), ('35', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('36', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '2', '1'), ('37', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('38', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '14', '1'), ('39', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('40', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('41', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '8', '1'), ('42', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '22', '1'), ('43', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', 'blog_index_thumbnail.php', '1', '20', '1'), ('44', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('45', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '25', '1'), ('46', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '28', '1'), ('47', 'Header Image', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '18', '1'), ('48', 'Blog Content', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '9', '1'), ('49', 'Thumbnail Image', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '18', '1'), ('50', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '22', '1'), ('51', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '25', '1'), ('52', '', '2012-12-28 17:10:18', '2012-12-28 17:10:18', null, '1', '28', '1'), ('53', '', '2012-12-28 17:47:46', '2012-12-28 17:48:27', null, '1', '8', '1'), ('54', null, '2013-01-02 10:21:53', '2013-01-02 10:22:27', null, '1', '9', '1'), ('55', null, '2013-01-02 10:23:19', '2013-01-02 10:24:12', null, '1', '9', '1'), ('56', null, '2013-01-02 10:35:52', '2013-01-02 10:35:52', null, '1', '9', '1'), ('57', null, '2013-01-02 10:35:59', '2013-01-02 10:35:59', null, '1', '9', '1'), ('58', null, '2013-01-02 13:32:57', '2013-01-02 13:32:57', null, '1', '9', '1'), ('59', null, '2013-01-02 13:33:40', '2013-01-02 13:33:40', null, '1', '9', '1'), ('60', null, '2013-01-02 13:40:16', '2013-01-02 13:53:05', null, '1', '9', '1'), ('61', null, '2013-01-02 14:02:12', '2013-01-02 14:02:12', null, '1', '9', '1'), ('62', null, '2013-01-02 15:20:34', '2013-01-02 15:20:34', null, '1', '9', '1'), ('63', null, '2013-01-02 16:08:41', '2013-01-02 16:13:44', null, '1', '9', '1'), ('64', null, '2013-01-02 16:31:18', '2013-01-02 16:34:27', null, '1', '9', '1'), ('65', null, '2013-01-02 16:39:04', '2013-01-02 16:40:32', null, '1', '9', '1');
COMMIT;

-- ----------------------------
--  Table structure for `CollectionAttributeValues`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionAttributeValues`;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `CollectionAttributeValues`
-- ----------------------------
BEGIN;
INSERT INTO `CollectionAttributeValues` VALUES ('3', '1', '3', '1'), ('3', '1', '4', '2'), ('4', '1', '3', '3'), ('4', '1', '4', '4'), ('5', '1', '3', '5'), ('5', '1', '4', '6'), ('6', '1', '3', '7'), ('7', '1', '3', '8'), ('7', '1', '4', '9'), ('8', '1', '3', '10'), ('8', '1', '4', '11'), ('9', '1', '3', '12'), ('9', '1', '4', '13'), ('11', '1', '3', '14'), ('11', '1', '4', '15'), ('12', '1', '3', '16'), ('12', '1', '4', '17'), ('13', '1', '3', '18'), ('13', '1', '4', '19'), ('14', '1', '3', '21'), ('14', '1', '4', '22'), ('14', '1', '5', '20'), ('15', '1', '3', '23'), ('16', '1', '3', '24'), ('16', '1', '4', '25'), ('17', '1', '3', '26'), ('17', '1', '4', '27'), ('18', '1', '3', '28'), ('18', '1', '4', '29'), ('19', '1', '3', '30'), ('19', '1', '4', '32'), ('19', '1', '5', '31'), ('20', '1', '3', '33'), ('20', '1', '4', '35'), ('20', '1', '5', '34'), ('21', '1', '3', '36'), ('21', '1', '4', '37'), ('22', '1', '3', '38'), ('23', '1', '3', '39'), ('23', '1', '4', '40'), ('24', '1', '3', '41'), ('24', '1', '4', '42'), ('25', '1', '3', '43'), ('25', '1', '4', '44'), ('26', '1', '3', '45'), ('26', '1', '4', '46'), ('28', '1', '3', '47'), ('28', '1', '4', '48'), ('29', '1', '3', '49'), ('30', '1', '3', '50'), ('31', '1', '3', '51'), ('32', '1', '3', '52'), ('32', '1', '4', '53'), ('34', '1', '3', '54'), ('34', '1', '4', '55'), ('35', '1', '3', '56'), ('35', '1', '4', '57'), ('36', '1', '3', '58'), ('37', '1', '4', '59'), ('38', '1', '4', '60'), ('40', '1', '3', '61'), ('40', '1', '4', '62'), ('41', '1', '4', '63'), ('42', '1', '5', '64'), ('42', '1', '8', '65'), ('43', '1', '3', '66'), ('43', '1', '4', '67'), ('44', '1', '5', '68'), ('45', '1', '5', '69'), ('46', '1', '3', '70'), ('47', '1', '3', '71'), ('48', '1', '3', '72'), ('49', '1', '3', '73'), ('50', '1', '3', '74'), ('51', '1', '5', '75'), ('53', '1', '3', '76'), ('54', '1', '3', '77'), ('55', '1', '3', '78'), ('56', '1', '3', '79'), ('57', '1', '3', '80'), ('58', '1', '3', '81'), ('60', '1', '3', '82'), ('61', '1', '3', '83'), ('62', '1', '3', '84'), ('63', '1', '3', '85'), ('64', '1', '3', '86'), ('66', '1', '3', '87'), ('67', '1', '3', '88'), ('68', '1', '3', '89'), ('70', '1', '3', '90'), ('71', '1', '3', '91'), ('72', '1', '3', '92'), ('73', '1', '3', '93'), ('76', '1', '3', '94'), ('77', '1', '3', '95'), ('78', '1', '3', '96'), ('79', '1', '3', '97'), ('81', '1', '3', '98'), ('82', '1', '3', '99'), ('83', '1', '3', '100'), ('84', '1', '3', '101'), ('85', '1', '3', '102'), ('86', '1', '3', '103'), ('87', '1', '3', '104'), ('88', '1', '3', '105'), ('89', '1', '3', '106'), ('90', '1', '8', '107'), ('91', '1', '3', '108'), ('92', '1', '3', '109'), ('93', '1', '3', '110'), ('94', '1', '3', '111'), ('95', '1', '3', '112'), ('96', '1', '3', '113'), ('98', '1', '3', '114'), ('99', '1', '3', '115'), ('104', '1', '5', '117'), ('104', '1', '8', '118'), ('105', '1', '5', '116'), ('128', '1', '14', '135'), ('132', '1', '5', '137'), ('132', '1', '6', '138'), ('132', '1', '8', '139'), ('132', '1', '14', '140'), ('133', '1', '14', '136'), ('140', '1', '1', '141'), ('140', '1', '2', '142'), ('140', '1', '3', '143'), ('140', '1', '4', '144'), ('140', '1', '5', '145'), ('140', '1', '6', '146'), ('140', '1', '7', '147'), ('140', '1', '8', '148'), ('140', '1', '9', '149'), ('140', '1', '14', '150');
COMMIT;

-- ----------------------------
--  Table structure for `CollectionSearchIndexAttributes`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `CollectionSearchIndexAttributes`
-- ----------------------------
BEGIN;
INSERT INTO `CollectionSearchIndexAttributes` VALUES ('1', null, null, null, null, '0', '0', null, '0', '0', null), ('3', null, null, 'blog, blogging', 'icon-book', '0', '0', null, '0', '0', null), ('4', null, null, 'new blog, write blog, blogging', 'icon-pencil', '0', '0', null, '0', '0', null), ('5', null, null, 'blog drafts,composer', 'icon-book', '0', '0', null, '0', '0', null), ('6', null, null, 'pages, add page, delete page, copy, move, alias', null, '0', '0', null, '0', '0', null), ('7', null, null, 'pages, add page, delete page, copy, move, alias', 'icon-home', '0', '0', null, '0', '0', null), ('8', null, null, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', '0', '0', null, '0', '0', null), ('9', null, null, 'find page, search page, search, find, pages, sitemap', 'icon-search', '0', '0', null, '0', '0', null), ('11', null, null, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', '0', '0', null, '0', '0', null), ('12', null, null, 'file, file attributes, title, attribute, description, rename', 'icon-cog', '0', '0', null, '0', '0', null), ('13', null, null, 'files, category, categories', 'icon-list-alt', '0', '0', null, '0', '0', null), ('14', null, null, 'new file set', 'icon-plus-sign', '1', '0', null, '0', '0', null), ('15', null, null, 'users, groups, people, find, delete user, remove user, change password, password', null, '0', '0', null, '0', '0', null), ('16', null, null, 'find, search, people, delete user, remove user, change password, password', 'icon-user', '0', '0', null, '0', '0', null), ('17', null, null, 'user, group, people, permissions, access, expire', 'icon-globe', '0', '0', null, '0', '0', null), ('18', null, null, 'user attributes, user data, gather data, registration data', 'icon-cog', '0', '0', null, '0', '0', null), ('19', null, null, 'new user, create', 'icon-plus-sign', '1', '0', null, '0', '0', null), ('20', null, null, 'new user group, new group, group, create', 'icon-plus', '1', '0', null, '0', '0', null), ('21', null, null, 'group set', 'icon-list', '0', '0', null, '0', '0', null), ('22', null, null, 'forms, log, error, email, mysql, exception, survey', null, '0', '0', null, '0', '0', null), ('23', null, null, 'hits, pageviews, visitors, activity', 'icon-signal', '0', '0', null, '0', '0', null), ('24', null, null, 'forms, questions, response, data', 'icon-briefcase', '0', '0', null, '0', '0', null), ('25', null, null, 'questions, quiz, response', 'icon-tasks', '0', '0', null, '0', '0', null), ('26', null, null, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', '0', '0', null, '0', '0', null), ('28', null, null, 'new theme, theme, active theme, change theme, template, css', 'icon-font', '0', '0', null, '0', '0', null), ('29', null, null, 'theme', null, '0', '0', null, '0', '0', null), ('30', null, null, 'page types', null, '0', '0', null, '0', '0', null), ('31', null, null, 'custom theme, change theme, custom css, css', null, '0', '0', null, '0', '0', null), ('32', null, null, 'page type defaults, global block, global area, starter, template', 'icon-file', '0', '0', null, '0', '0', null), ('34', null, null, 'page attributes, custom', 'icon-cog', '0', '0', null, '0', '0', null), ('35', null, null, 'single, page, custom, application', 'icon-wrench', '0', '0', null, '0', '0', null), ('36', null, null, 'add workflow, remove workflow', null, '0', '0', null, '0', '0', null), ('37', null, null, null, 'icon-list', '0', '0', null, '0', '0', null), ('38', null, null, null, 'icon-user', '0', '0', null, '0', '0', null), ('40', null, null, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', '0', '0', null, '0', '0', null), ('41', null, null, null, 'icon-lock', '0', '0', null, '0', '0', null), ('42', null, null, null, null, '1', '0', null, '1', '0', null), ('43', null, null, 'block, refresh, custom', 'icon-wrench', '0', '0', null, '0', '0', null), ('44', null, null, null, null, '1', '0', null, '0', '0', null), ('45', null, null, null, null, '1', '0', null, '0', '0', null), ('46', null, null, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', null, '0', '0', null, '0', '0', null), ('47', null, null, 'update, upgrade', null, '0', '0', null, '0', '0', null), ('48', null, null, 'concrete5.org, my account, marketplace', null, '0', '0', null, '0', '0', null), ('49', null, null, 'buy theme, new theme, marketplace, template', null, '0', '0', null, '0', '0', null), ('50', null, null, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', null, '0', '0', null, '0', '0', null), ('51', null, null, null, null, '1', '0', null, '0', '0', null), ('53', null, null, 'website name, title', null, '0', '0', null, '0', '0', null), ('54', null, null, 'logo, favicon, iphone, icon, bookmark', null, '0', '0', null, '0', '0', null), ('55', null, null, 'tinymce, content block, fonts, editor, tinymce, content, overlay', null, '0', '0', null, '0', '0', null), ('56', null, null, 'translate, translation, internationalization, multilingual, translate', null, '0', '0', null, '0', '0', null), ('57', null, null, 'timezone, profile, locale', null, '0', '0', null, '0', '0', null), ('58', null, null, 'interface, quick nav, dashboard background, background image', null, '0', '0', null, '0', '0', null), ('60', null, null, 'vanity, pretty url, seo, pageview, view', null, '0', '0', null, '0', '0', null), ('61', null, null, 'bulk, seo, change keywords, engine, optimization, search', null, '0', '0', null, '0', '0', null), ('62', null, null, 'traffic, statistics, google analytics, quant, pageviews, hits', null, '0', '0', null, '0', '0', null), ('63', null, null, 'turn off statistics, tracking, statistics, pageviews, hits', null, '0', '0', null, '0', '0', null), ('64', null, null, 'configure search, site search, search option', null, '0', '0', null, '0', '0', null), ('66', null, null, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', null, '0', '0', null, '0', '0', null), ('67', null, null, 'cache option, turn off cache, no cache, page cache, caching', null, '0', '0', null, '0', '0', null), ('68', null, null, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', null, '0', '0', null, '0', '0', null), ('70', null, null, 'editors, hide site, offline, private, public, access', null, '0', '0', null, '0', '0', null), ('71', null, null, 'file options, file manager, upload, modify', null, '0', '0', null, '0', '0', null), ('72', null, null, 'security, files, media, extension, manager, upload', null, '0', '0', null, '0', '0', null), ('73', null, null, 'security, actions, administrator, admin, package, marketplace, search', null, '0', '0', null, '0', '0', null), ('76', null, null, 'security, lock ip, lock out, block ip, address, restrict, access', null, '0', '0', null, '0', '0', null), ('77', null, null, 'security, registration', null, '0', '0', null, '0', '0', null), ('78', null, null, 'antispam, block spam, security', null, '0', '0', null, '0', '0', null), ('79', null, null, 'lock site, under construction, hide, hidden', null, '0', '0', null, '0', '0', null), ('81', null, null, 'profile, login, redirect, specific, dashboard, administrators', null, '0', '0', null, '0', '0', null), ('82', null, null, 'member profile, member page,community, forums, social, avatar', null, '0', '0', null, '0', '0', null), ('83', null, null, 'signup, new user, community', null, '0', '0', null, '0', '0', null), ('84', null, null, 'smtp, mail settings', null, '0', '0', null, '0', '0', null), ('85', null, null, 'email server, mail settings, mail configuration, external, internal', null, '0', '0', null, '0', '0', null), ('86', null, null, 'email server, mail settings, mail configuration, private message, message system, import, email, message', null, '0', '0', null, '0', '0', null), ('87', null, null, 'attribute configuration', null, '0', '0', null, '0', '0', null), ('88', null, null, 'attributes, sets', null, '0', '0', null, '0', '0', null), ('89', null, null, 'attributes, types', null, '0', '0', null, '0', '0', null), ('90', null, null, null, null, '0', '0', null, '1', '0', null), ('91', null, null, 'overrides, system info, debug, support,help', null, '0', '0', null, '0', '0', null), ('92', null, null, 'errors,exceptions, develop, support, help', null, '0', '0', null, '0', '0', null), ('93', null, null, 'email, logging, logs, smtp, pop, errors, mysql, errors, log', null, '0', '0', null, '0', '0', null), ('94', null, null, 'security, alternate storage, hide files', null, '0', '0', null, '0', '0', null), ('95', null, null, 'network, proxy server', null, '0', '0', null, '0', '0', null), ('96', null, null, 'export, backup, database, sql, mysql, encryption, restore', null, '0', '0', null, '0', '0', null), ('98', null, null, 'upgrade, new version, update', null, '0', '0', null, '0', '0', null), ('99', null, null, 'export, database, xml, starting, points, schema, refresh, custom, tables', null, '0', '0', null, '0', '0', null), ('104', null, null, null, null, '1', '0', null, '1', '0', null), ('105', null, null, null, null, '1', '0', null, '0', '0', null), ('127', null, null, null, null, '0', '0', null, '0', '0', null), ('128', null, null, null, null, '0', '0', null, '0', '0', '\n'), ('129', null, null, null, null, '0', '0', null, '0', '0', null), ('130', null, null, null, null, '0', '0', null, '0', '0', null), ('131', null, null, null, null, '0', '0', null, '0', '0', null), ('132', null, null, null, null, '1', '1', null, '1', '0', '\n'), ('133', null, null, null, null, '0', '0', null, '0', '0', '\ncomposer\nhello\nworld\nfirst post\n'), ('134', null, null, null, null, '0', '0', null, '0', '0', null), ('135', null, null, null, null, '0', '0', null, '0', '0', null), ('136', null, null, null, null, '0', '0', null, '0', '0', null), ('137', null, null, null, null, '0', '0', null, '0', '0', null), ('138', null, null, null, null, '0', '0', null, '0', '0', null), ('140', '', '', '', '', '0', '0', '', '0', '0', '\n');
COMMIT;

-- ----------------------------
--  Table structure for `CollectionVersionAreaLayouts`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `CollectionVersionAreaStyles`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `CollectionVersionBlockStyles`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `CollectionVersionBlockStyles`
-- ----------------------------
BEGIN;
INSERT INTO `CollectionVersionBlockStyles` VALUES ('1', '2', '24', 'Header', '0'), ('1', '2', '25', 'Sidebar', '0'), ('1', '2', '26', 'Sidebar', '0'), ('1', '2', '27', 'Main', '0'), ('1', '2', '28', 'Header Image', '0'), ('1', '3', '24', 'Header', '0'), ('1', '3', '25', 'Sidebar', '0'), ('1', '3', '26', 'Sidebar', '0'), ('1', '3', '27', 'Main', '0'), ('1', '3', '28', 'Header Image', '0'), ('1', '4', '24', 'Header', '0'), ('1', '4', '25', 'Sidebar', '0'), ('1', '4', '26', 'Sidebar', '0'), ('1', '4', '27', 'Main', '0'), ('1', '4', '28', 'Header Image', '0'), ('1', '4', '56', 'Sol İcerik', '0'), ('1', '4', '57', 'Sağ İçerik', '0'), ('1', '5', '24', 'Header', '0'), ('1', '5', '25', 'Sidebar', '0'), ('1', '5', '26', 'Sidebar', '0'), ('1', '5', '27', 'Main', '0'), ('1', '5', '28', 'Header Image', '0'), ('1', '5', '58', 'Sol İcerik', '0'), ('1', '5', '59', 'Sağ İçerik', '0'), ('1', '7', '24', 'Header', '0'), ('1', '7', '25', 'Sidebar', '0'), ('1', '7', '26', 'Sidebar', '0'), ('1', '7', '27', 'Main', '0'), ('1', '7', '28', 'Header Image', '0'), ('1', '7', '58', 'Sağ İçerik', '0'), ('1', '7', '59', 'Sol İcerik', '0'), ('1', '7', '60', 'Sol İcerik', '0'), ('1', '7', '61', 'Sağ İçerik', '0'), ('1', '8', '24', 'Header', '0'), ('1', '8', '25', 'Sidebar', '0'), ('1', '8', '26', 'Sidebar', '0'), ('1', '8', '27', 'Main', '0'), ('1', '8', '28', 'Header Image', '0'), ('1', '8', '58', 'Sağ İçerik', '0'), ('1', '8', '59', 'Sol İcerik', '0'), ('1', '8', '60', 'Sol İcerik', '0'), ('1', '8', '61', 'Sağ İçerik', '0'), ('1', '8', '63', 'İçerik', '0'), ('1', '9', '24', 'Header', '0'), ('1', '9', '25', 'Sidebar', '0'), ('1', '9', '26', 'Sidebar', '0'), ('1', '9', '27', 'Main', '0'), ('1', '9', '28', 'Header Image', '0'), ('1', '9', '58', 'Sağ İçerik', '0'), ('1', '9', '59', 'Sol İcerik', '0'), ('1', '9', '60', 'Sol İcerik', '0'), ('1', '9', '61', 'Sağ İçerik', '0'), ('1', '9', '64', 'İçerik', '0'), ('1', '11', '24', 'Header', '0'), ('1', '11', '25', 'Sidebar', '0'), ('1', '11', '26', 'Sidebar', '0'), ('1', '11', '27', 'Main', '0'), ('1', '11', '28', 'Header Image', '0'), ('1', '11', '59', 'Sağ İçerik', '0'), ('1', '11', '60', 'Sol İcerik', '0'), ('1', '11', '61', 'Sol İcerik', '0'), ('1', '11', '64', 'İçerik', '0'), ('1', '11', '65', 'Sağ İçerik', '0'), ('1', '12', '24', 'Header', '0'), ('1', '12', '25', 'Sidebar', '0'), ('1', '12', '26', 'Sidebar', '0'), ('1', '12', '27', 'Main', '0'), ('1', '12', '28', 'Header Image', '0'), ('1', '12', '59', 'Sağ İçerik', '0'), ('1', '12', '60', 'Sol İcerik', '0'), ('1', '12', '61', 'Sol İcerik', '0'), ('1', '12', '64', 'İçerik', '0'), ('1', '12', '65', 'Sağ İçerik', '0'), ('120', '2', '53', 'Main', '0'), ('127', '1', '18', 'Header Image', '0'), ('128', '1', '19', 'Header Image', '0'), ('129', '1', '19', 'Header Image', '0'), ('130', '1', '18', 'Header Image', '0'), ('131', '1', '19', 'Header Image', '0'), ('132', '1', '19', 'Header Image', '0'), ('133', '1', '14', 'Sidebar', '0'), ('134', '1', '17', 'Header Image', '0'), ('134', '2', '17', 'Header Image', '0'), ('135', '1', '17', 'Header Image', '0'), ('135', '2', '17', 'Header Image', '0'), ('136', '1', '17', 'Header Image', '0'), ('136', '2', '17', 'Header Image', '0'), ('137', '1', '17', 'Header Image', '0'), ('137', '2', '17', 'Header Image', '0'), ('137', '3', '17', 'Header Image', '0'), ('138', '1', '17', 'Header Image', '0'), ('138', '2', '17', 'Header Image', '0');
COMMIT;

-- ----------------------------
--  Table structure for `CollectionVersionBlocks`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionVersionBlocks`;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `CollectionVersionBlocks`
-- ----------------------------
BEGIN;
INSERT INTO `CollectionVersionBlocks` VALUES ('1', '1', '24', 'Header', '0', '1', '0', '0'), ('1', '1', '25', 'Sidebar', '0', '1', '0', '0'), ('1', '1', '26', 'Sidebar', '1', '1', '0', '0'), ('1', '1', '27', 'Main', '0', '1', '0', '0'), ('1', '1', '28', 'Header Image', '0', '1', '0', '0'), ('1', '2', '24', 'Header', '0', '0', '0', '0'), ('1', '2', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '2', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '2', '27', 'Main', '0', '0', '0', '0'), ('1', '2', '28', 'Header Image', '0', '0', '0', '0'), ('1', '3', '24', 'Header', '0', '0', '0', '0'), ('1', '3', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '3', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '3', '27', 'Main', '0', '0', '0', '0'), ('1', '3', '28', 'Header Image', '0', '0', '0', '0'), ('1', '3', '54', 'Sağ İçerik', '0', '1', '0', '0'), ('1', '3', '55', 'Sol İcerik', '0', '1', '0', '0'), ('1', '4', '24', 'Header', '0', '0', '0', '0'), ('1', '4', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '4', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '4', '27', 'Main', '0', '0', '0', '0'), ('1', '4', '28', 'Header Image', '0', '0', '0', '0'), ('1', '4', '56', 'Sol İcerik', '0', '1', '0', '0'), ('1', '4', '57', 'Sağ İçerik', '0', '1', '0', '0'), ('1', '5', '24', 'Header', '0', '0', '0', '0'), ('1', '5', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '5', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '5', '27', 'Main', '0', '0', '0', '0'), ('1', '5', '28', 'Header Image', '0', '0', '0', '0'), ('1', '5', '58', 'Sol İcerik', '0', '1', '0', '0'), ('1', '5', '59', 'Sağ İçerik', '0', '1', '0', '0'), ('1', '5', '60', 'Sol İcerik', '1', '1', '0', '0'), ('1', '6', '24', 'Header', '0', '0', '0', '0'), ('1', '6', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '6', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '6', '27', 'Main', '0', '0', '0', '0'), ('1', '6', '28', 'Header Image', '0', '0', '0', '0'), ('1', '6', '58', 'Sağ İçerik', '0', '0', '0', '0'), ('1', '6', '59', 'Sol İcerik', '1', '0', '0', '0'), ('1', '6', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '6', '61', 'Sağ İçerik', '1', '1', '0', '0'), ('1', '7', '24', 'Header', '0', '0', '0', '0'), ('1', '7', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '7', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '7', '27', 'Main', '0', '0', '0', '0'), ('1', '7', '28', 'Header Image', '0', '0', '0', '0'), ('1', '7', '58', 'Sağ İçerik', '0', '0', '0', '0'), ('1', '7', '59', 'Sol İcerik', '1', '0', '0', '0'), ('1', '7', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '7', '61', 'Sağ İçerik', '1', '0', '0', '0'), ('1', '7', '62', 'İçerik', '0', '1', '0', '0'), ('1', '8', '24', 'Header', '0', '0', '0', '0'), ('1', '8', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '8', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '8', '27', 'Main', '0', '0', '0', '0'), ('1', '8', '28', 'Header Image', '0', '0', '0', '0'), ('1', '8', '58', 'Sağ İçerik', '0', '0', '0', '0'), ('1', '8', '59', 'Sol İcerik', '1', '0', '0', '0'), ('1', '8', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '8', '61', 'Sağ İçerik', '1', '0', '0', '0'), ('1', '8', '63', 'İçerik', '0', '1', '0', '0'), ('1', '9', '24', 'Header', '0', '0', '0', '0'), ('1', '9', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '9', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '9', '27', 'Main', '0', '0', '0', '0'), ('1', '9', '28', 'Header Image', '0', '0', '0', '0'), ('1', '9', '58', 'Sağ İçerik', '0', '0', '0', '0'), ('1', '9', '59', 'Sol İcerik', '1', '0', '0', '0'), ('1', '9', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '9', '61', 'Sağ İçerik', '1', '0', '0', '0'), ('1', '9', '64', 'İçerik', '0', '1', '0', '0'), ('1', '10', '24', 'Header', '0', '0', '0', '0'), ('1', '10', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '10', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '10', '27', 'Main', '0', '0', '0', '0'), ('1', '10', '28', 'Header Image', '0', '0', '0', '0'), ('1', '10', '59', 'Sağ İçerik', '1', '0', '0', '0'), ('1', '10', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '10', '61', 'Sol İcerik', '1', '0', '0', '0'), ('1', '10', '64', 'İçerik', '0', '0', '0', '0'), ('1', '10', '65', 'Sağ İçerik', '0', '1', '0', '0'), ('1', '11', '24', 'Header', '0', '0', '0', '0'), ('1', '11', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '11', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '11', '27', 'Main', '0', '0', '0', '0'), ('1', '11', '28', 'Header Image', '0', '0', '0', '0'), ('1', '11', '59', 'Sağ İçerik', '1', '0', '0', '0'), ('1', '11', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '11', '61', 'Sol İcerik', '1', '0', '0', '0'), ('1', '11', '64', 'İçerik', '0', '0', '0', '0'), ('1', '11', '65', 'Sağ İçerik', '0', '0', '0', '0'), ('1', '12', '24', 'Header', '0', '0', '0', '0'), ('1', '12', '25', 'Sidebar', '0', '0', '0', '0'), ('1', '12', '26', 'Sidebar', '1', '0', '0', '0'), ('1', '12', '27', 'Main', '0', '0', '0', '0'), ('1', '12', '28', 'Header Image', '0', '0', '0', '0'), ('1', '12', '59', 'Sağ İçerik', '1', '0', '0', '0'), ('1', '12', '60', 'Sol İcerik', '0', '0', '0', '0'), ('1', '12', '61', 'Sol İcerik', '1', '0', '0', '0'), ('1', '12', '64', 'İçerik', '0', '0', '0', '0'), ('1', '12', '65', 'Sağ İçerik', '0', '0', '0', '0'), ('104', '1', '6', 'Primary', '0', '1', '0', '0'), ('104', '1', '7', 'Primary', '1', '1', '0', '0'), ('104', '1', '8', 'Secondary 1', '0', '1', '0', '0'), ('104', '1', '9', 'Secondary 2', '0', '1', '0', '0'), ('104', '1', '10', 'Secondary 3', '0', '1', '0', '0'), ('104', '1', '11', 'Secondary 4', '0', '1', '0', '0'), ('104', '1', '12', 'Secondary 5', '0', '1', '0', '0'), ('105', '1', '1', 'Header', '0', '1', '0', '0'), ('105', '1', '2', 'Column 1', '0', '1', '0', '0'), ('105', '1', '3', 'Column 2', '0', '1', '0', '0'), ('105', '1', '4', 'Column 3', '0', '1', '0', '0'), ('105', '1', '5', 'Column 4', '0', '1', '0', '0'), ('120', '1', '20', 'Main', '0', '1', '0', '0'), ('120', '2', '53', 'Main', '0', '1', '0', '0'), ('121', '1', '21', 'Main', '0', '1', '0', '0'), ('121', '1', '22', 'Main', '1', '1', '0', '0'), ('122', '1', '23', 'Main', '0', '1', '0', '0'), ('123', '1', '13', 'Main', '0', '1', '0', '0'), ('123', '1', '14', 'Sidebar', '0', '1', '0', '0'), ('123', '1', '15', 'Thumbnail Image', '0', '1', '0', '0'), ('123', '1', '16', 'Header Image', '0', '1', '0', '0'), ('124', '1', '17', 'Header Image', '0', '1', '0', '0'), ('125', '1', '18', 'Header Image', '0', '1', '0', '0'), ('126', '1', '19', 'Header Image', '0', '1', '0', '0'), ('127', '1', '18', 'Header Image', '0', '0', '0', '0'), ('127', '1', '29', 'Header', '0', '1', '0', '0'), ('127', '1', '30', 'Sidebar', '0', '1', '0', '0'), ('127', '1', '31', 'Main', '0', '1', '0', '0'), ('128', '1', '19', 'Header Image', '0', '0', '0', '0'), ('128', '1', '43', 'Main', '0', '1', '0', '0'), ('128', '1', '44', 'Sidebar', '0', '1', '0', '0'), ('128', '1', '45', 'Sidebar', '1', '1', '0', '0'), ('128', '1', '46', 'Sidebar', '2', '1', '0', '0'), ('129', '1', '19', 'Header Image', '0', '0', '0', '0'), ('129', '1', '39', 'Header', '0', '1', '0', '0'), ('129', '1', '40', 'Sidebar', '0', '1', '0', '0'), ('129', '1', '41', 'Sidebar', '1', '1', '0', '0'), ('129', '1', '42', 'Main', '0', '1', '0', '0'), ('130', '1', '18', 'Header Image', '0', '0', '0', '0'), ('130', '1', '35', 'Header', '0', '1', '0', '0'), ('130', '1', '36', 'Sidebar', '0', '1', '0', '0'), ('130', '1', '37', 'Main', '0', '1', '0', '0'), ('130', '1', '38', 'Main', '1', '1', '0', '0'), ('131', '1', '19', 'Header Image', '0', '0', '0', '0'), ('131', '1', '32', 'Header', '0', '1', '0', '0'), ('131', '1', '33', 'Sidebar', '0', '1', '0', '0'), ('131', '1', '34', 'Main', '0', '1', '0', '1'), ('132', '1', '19', 'Header Image', '0', '0', '0', '0'), ('132', '1', '50', 'Main', '0', '1', '0', '0'), ('132', '1', '51', 'Sidebar', '0', '1', '0', '0'), ('132', '1', '52', 'Sidebar', '1', '1', '0', '0'), ('133', '1', '14', 'Sidebar', '0', '0', '0', '0'), ('133', '1', '47', 'Header Image', '0', '1', '0', '0'), ('133', '1', '48', 'Main', '0', '1', '0', '0'), ('133', '1', '49', 'Thumbnail Image', '0', '1', '0', '0'), ('134', '1', '17', 'Header Image', '0', '0', '0', '0'), ('134', '2', '17', 'Header Image', '0', '0', '0', '0'), ('135', '1', '17', 'Header Image', '0', '0', '0', '0'), ('135', '2', '17', 'Header Image', '0', '0', '0', '0'), ('136', '1', '17', 'Header Image', '0', '0', '0', '0'), ('136', '2', '17', 'Header Image', '0', '0', '0', '0'), ('137', '1', '17', 'Header Image', '0', '0', '0', '0'), ('137', '2', '17', 'Header Image', '0', '0', '0', '0'), ('137', '3', '17', 'Header Image', '0', '0', '0', '0'), ('138', '1', '17', 'Header Image', '0', '0', '0', '0'), ('138', '2', '17', 'Header Image', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `CollectionVersionRelatedEdits`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `CollectionVersions`
-- ----------------------------
DROP TABLE IF EXISTS `CollectionVersions`;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `CollectionVersions`
-- ----------------------------
BEGIN;
INSERT INTO `CollectionVersions` VALUES ('1', '1', 'Home', 'home', '', '2012-12-28 17:09:58', '2012-12-28 17:09:58', 'Initial Version', '0', '0', '1', null, '5', '7', null), ('1', '2', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2012-12-28 18:03:15', 'Version 2', '0', '0', '1', '1', '5', '7', null), ('1', '3', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 10:21:53', 'Version 3', '0', '0', '1', '1', '5', '7', null), ('1', '4', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 10:35:51', 'Version 4', '0', '0', '1', '1', '5', '7', null), ('1', '5', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 13:32:56', 'Version 5', '0', '0', '1', '1', '5', '7', null), ('1', '6', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 14:02:11', 'Version 6', '0', '0', '1', '1', '5', '7', null), ('1', '7', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 15:20:29', 'Version 7', '0', '0', '1', '1', '5', '7', null), ('1', '8', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 16:08:40', 'Version 8', '0', '0', '1', '1', '5', '7', null), ('1', '9', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 16:31:13', 'Version 9', '0', '0', '1', '1', '5', '7', null), ('1', '10', 'ANASAYFA', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 16:39:04', 'Version 10', '0', '0', '1', '1', '5', '7', null), ('1', '11', 'Filtreler', 'filtreler', '', '2012-12-28 17:09:00', '2013-01-02 17:28:10', 'Yeni Sürüm 11', '0', '0', '1', '1', '5', '7', null), ('1', '12', 'Anasayfa', 'anasayfa', '', '2012-12-28 17:09:00', '2013-01-02 17:53:59', 'Yeni Sürüm 12', '1', '0', '1', '1', '5', '7', null), ('2', '1', 'Dashboard', 'dashboard', '', '2012-12-28 17:10:06', '2012-12-28 17:10:06', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('3', '1', 'Composer', 'composer', 'Write for your site.', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('4', '1', 'Write', 'write', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('5', '1', 'Drafts', 'drafts', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('6', '1', 'Sitemap', 'sitemap', 'Whole world at a glance.', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('7', '1', 'Full Sitemap', 'full', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('8', '1', 'Flat View', 'explore', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('9', '1', 'Page Search', 'search', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('10', '1', 'Files', 'files', 'All documents and images.', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('11', '1', 'File Manager', 'search', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('12', '1', 'Attributes', 'attributes', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('13', '1', 'File Sets', 'sets', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('14', '1', 'Add File Set', 'add_set', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('15', '1', 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('16', '1', 'Search Users', 'search', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('17', '1', 'User Groups', 'groups', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('18', '1', 'Attributes', 'attributes', '', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('19', '1', 'Add User', 'add', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('20', '1', 'Add Group', 'add_group', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('21', '1', 'Group Sets', 'group_sets', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('22', '1', 'Reports', 'reports', 'Get data from forms and logs.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('23', '1', 'Statistics', 'statistics', 'View your site activity.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('24', '1', 'Form Results', 'forms', 'Get submission data.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('25', '1', 'Surveys', 'surveys', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('26', '1', 'Logs', 'logs', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('27', '1', 'Pages & Themes', 'pages', 'Reskin your site.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('28', '1', 'Themes', 'themes', 'Reskin your site.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('29', '1', 'Add', 'add', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('30', '1', 'Inspect', 'inspect', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('31', '1', 'Customize', 'customize', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('32', '1', 'Page Types', 'types', 'What goes in your site.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('33', '1', 'Add Page Type', 'add', 'Add page types to your site.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('34', '1', 'Attributes', 'attributes', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('35', '1', 'Single Pages', 'single', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('36', '1', 'Workflow', 'workflow', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('37', '1', 'Workflow List', 'list', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('38', '1', 'Waiting for Me', 'me', '', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('39', '1', 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('40', '1', 'Stacks', 'stacks', 'Share content across your site.', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('41', '1', 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('42', '1', 'Stack List', 'list', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('43', '1', 'Block Types', 'types', 'Manage the installed block types in your site.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('44', '1', 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('45', '1', 'Dashboard', 'news', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('46', '1', 'Add Functionality', 'install', 'Install add-ons & themes.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('47', '1', 'Update Add-Ons', 'update', 'Update your installed packages.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('48', '1', 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('49', '1', 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('50', '1', 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('51', '1', 'System & Settings', 'system', 'Secure and setup your site.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('52', '1', 'Basics', 'basics', 'Basic information about your website.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('53', '1', 'Site Name', 'site_name', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('54', '1', 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('55', '1', 'Rich Text Editor', 'editor', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('56', '1', 'Languages', 'multilingual', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('57', '1', 'Time Zone', 'timezone', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('58', '1', 'Interface Preferences', 'interface', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('59', '1', 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('60', '1', 'Pretty URLs', 'urls', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('61', '1', 'Bulk SEO Updater', 'bulk_seo_tool', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('62', '1', 'Tracking Codes', 'tracking_codes', '', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('63', '1', 'Statistics', 'statistics', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('64', '1', 'Search Index', 'search_index', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('65', '1', 'Optimization', 'optimization', 'Keep your site running well.', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('66', '1', 'Cache & Speed Settings', 'cache', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('67', '1', 'Clear Cache', 'clear_cache', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('68', '1', 'Automated Jobs', 'jobs', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('69', '1', 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('70', '1', 'Site Access', 'site', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('71', '1', 'File Manager Permissions', 'files', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('72', '1', 'Allowed File Types', 'file_types', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('73', '1', 'Task Permissions', 'tasks', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('74', '1', 'User Permissions', 'users', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('75', '1', 'Advanced Permissions', 'advanced', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('76', '1', 'IP Blacklist', 'ip_blacklist', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('77', '1', 'Captcha Setup', 'captcha', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('78', '1', 'Spam Control', 'antispam', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('79', '1', 'Maintenance Mode', 'maintenance_mode', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('80', '1', 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('81', '1', 'Login Destination', 'postlogin', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('82', '1', 'Public Profiles', 'profiles', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('83', '1', 'Public Registration', 'public_registration', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('84', '1', 'Email', 'mail', 'Control how your site send and processes mail.', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('85', '1', 'SMTP Method', 'method', '', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('86', '1', 'Email Importers', 'importers', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('87', '1', 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('88', '1', 'Sets', 'sets', 'Group attributes into sets for easier organization', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('89', '1', 'Types', 'types', 'Choose which attribute types are available for different items.', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('90', '1', 'Environment', 'environment', 'Advanced settings for web developers.', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('91', '1', 'Environment Information', 'info', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('92', '1', 'Debug Settings', 'debug', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('93', '1', 'Logging Settings', 'logging', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('94', '1', 'File Storage Locations', 'file_storage_locations', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('95', '1', 'Proxy Server', 'proxy', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('96', '1', 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('97', '1', 'Backup Database', 'backup', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('98', '1', 'Update concrete5', 'update', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('99', '1', 'Database XML', 'database', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('100', '1', 'Composer', 'composer', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('101', '1', '', null, null, '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', null, null, '0', '1', null), ('102', '1', '', null, null, '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', null, null, '0', '2', null), ('103', '1', '', null, null, '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', null, null, '0', '3', null), ('104', '1', 'Customize Dashboard Home', 'home', '', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '2', null), ('105', '1', 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'Initial Version', '1', '0', '1', null, '5', '3', null), ('106', '1', 'Drafts', '!drafts', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('107', '1', 'Trash', '!trash', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('108', '1', 'Stacks', '!stacks', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('109', '1', 'Login', 'login', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('110', '1', 'Register', 'register', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('111', '1', 'Profile', 'profile', '', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('112', '1', 'Edit', 'edit', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('113', '1', 'Avatar', 'avatar', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('114', '1', 'Messages', 'messages', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('115', '1', 'Friends', 'friends', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('116', '1', 'Page Not Found', 'page_not_found', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('117', '1', 'Page Forbidden', 'page_forbidden', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('118', '1', 'Download File', 'download_file', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('119', '1', 'Members', 'members', '', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'Initial Version', '1', '0', '1', null, '5', '0', null), ('120', '1', 'Header Nav', 'header-nav', null, '2012-12-28 17:10:16', '2012-12-28 17:10:16', 'Initial Version', '1', '0', '1', null, '5', '1', null), ('120', '2', 'Header Nav', 'header-nav', null, '2012-12-28 17:10:16', '2012-12-28 17:47:46', 'Yeni Sürüm 2', '0', '1', '1', null, '5', '1', null), ('121', '1', 'Side Nav', 'side-nav', null, '2012-12-28 17:10:16', '2012-12-28 17:10:16', 'Initial Version', '1', '0', '1', null, '5', '1', null), ('122', '1', 'Site Name', 'site-name', null, '2012-12-28 17:10:16', '2012-12-28 17:10:16', 'Initial Version', '1', '0', '1', null, '5', '1', null), ('123', '1', '', null, null, '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', null, null, '0', '4', null), ('124', '1', '', null, null, '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', null, null, '0', '5', null), ('125', '1', '', null, null, '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', null, null, '0', '6', null), ('126', '1', '', null, null, '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', null, null, '0', '7', null), ('127', '1', 'About', 'about', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '6', null), ('128', '1', 'Blog', 'blog', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '7', null), ('129', '1', 'Search', 'search', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '7', null), ('130', '1', 'Contact Us', 'contact-us', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '6', null), ('131', '1', 'Guestbook', 'guestbook', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '7', null), ('132', '1', 'Blog Archives', 'blog-archives', '', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '7', null), ('133', '1', 'Hello World', 'hello-world', 'This is my first blog post!', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'Initial Version', '1', '0', '1', null, '5', '4', null), ('134', '1', 'RULO FİLTRELER', 'rulo-filtreler', '', '2012-12-28 17:39:00', '2012-12-28 17:39:53', 'Version 1', '0', '0', '1', '1', '5', '5', null), ('134', '2', 'Rulo Filtreler', 'rulo-filtreler', '', '2012-12-28 17:39:00', '2012-12-31 11:59:10', 'Yeni Sürüm 2', '1', '0', '1', '1', '5', '5', null), ('135', '1', 'PANEL FİLTRELER', 'panel-filtreler', '', '2012-12-28 17:40:00', '2012-12-28 17:40:14', 'Initial Version', '0', '0', '1', '1', '5', '5', null), ('135', '2', 'Panel Filtreler', 'panel-filtreler', '', '2012-12-28 17:40:00', '2012-12-31 11:59:20', 'Yeni Sürüm 2', '1', '0', '1', '1', '5', '5', null), ('136', '1', 'TORBA & KOMPAKT FİLTRELER', 'torba-kompakt-filtreler', '', '2012-12-28 17:40:00', '2012-12-28 17:40:43', 'Initial Version', '0', '0', '1', '1', '5', '5', null), ('136', '2', 'Torba & Kompakt Filtreler', 'torba-kompakt-filtreler', '', '2012-12-28 17:40:00', '2012-12-31 12:00:04', 'Yeni Sürüm 2', '1', '0', '1', '1', '5', '5', null), ('137', '1', 'HEPA VE ULPA FİLTRELER', 'hepa-ve-ulpa-filtreler', '', '2012-12-28 17:40:00', '2012-12-28 17:41:18', 'Initial Version', '0', '0', '1', '1', '5', '5', null), ('137', '2', 'HEPA & ULPA FİLTRELER', 'hepa-ulpa-filtreler', '', '2012-12-28 17:40:00', '2012-12-28 17:41:45', 'Yeni Sürüm 2', '0', '0', '1', '1', '5', '5', null), ('137', '3', 'Hepa & Ulpa Filtreler', 'hepa-ulpa-filtreler', '', '2012-12-28 17:40:00', '2012-12-31 12:00:19', 'Yeni Sürüm 3', '1', '0', '1', '1', '5', '5', null), ('138', '1', 'AKTİF KARBON FİLTRELER', 'aktif-karbon-filtreler', '', '2012-12-28 17:41:00', '2012-12-28 17:42:04', 'Initial Version', '0', '0', '1', '1', '5', '5', null), ('138', '2', 'Aktif Karbon Filtreler', 'aktif-karbon-filtreler', '', '2012-12-28 17:41:00', '2012-12-31 12:00:36', 'Yeni Sürüm 2', '1', '0', '1', '1', '5', '5', null), ('139', '1', '', null, null, '2013-01-02 09:33:51', '2013-01-02 09:33:51', 'Initial Version', '1', '0', null, null, '0', '8', null), ('140', '1', 'bbbb', 'bbbb', '', '2013-01-02 09:34:00', '2013-01-02 09:34:29', 'Initial Version', '1', '0', '1', '1', '5', '8', null);
COMMIT;

-- ----------------------------
--  Table structure for `Collections`
-- ----------------------------
DROP TABLE IF EXISTS `Collections`;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Collections`
-- ----------------------------
BEGIN;
INSERT INTO `Collections` VALUES ('1', '2012-12-28 17:09:58', '2013-01-02 17:54:02', 'home'), ('2', '2012-12-28 17:10:06', '2012-12-28 17:10:07', 'dashboard'), ('3', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'composer'), ('4', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'write'), ('5', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'drafts'), ('6', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'sitemap'), ('7', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'full'), ('8', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'explore'), ('9', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'search'), ('10', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'files'), ('11', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'search'), ('12', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'attributes'), ('13', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'sets'), ('14', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'add_set'), ('15', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'users'), ('16', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'search'), ('17', '2012-12-28 17:10:07', '2012-12-28 17:10:07', 'groups'), ('18', '2012-12-28 17:10:07', '2012-12-28 17:10:08', 'attributes'), ('19', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'add'), ('20', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'add_group'), ('21', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'group_sets'), ('22', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'reports'), ('23', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'statistics'), ('24', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'forms'), ('25', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'surveys'), ('26', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'logs'), ('27', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'pages'), ('28', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'themes'), ('29', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'add'), ('30', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'inspect'), ('31', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'customize'), ('32', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'types'), ('33', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'add'), ('34', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'attributes'), ('35', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'single'), ('36', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'workflow'), ('37', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'list'), ('38', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'me'), ('39', '2012-12-28 17:10:08', '2012-12-28 17:10:08', 'blocks'), ('40', '2012-12-28 17:10:08', '2012-12-28 17:10:09', 'stacks'), ('41', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'permissions'), ('42', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'list'), ('43', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'types'), ('44', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'extend'), ('45', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'news'), ('46', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'install'), ('47', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'update'), ('48', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'connect'), ('49', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'themes'), ('50', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'add-ons'), ('51', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'system'), ('52', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'basics'), ('53', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'site_name'), ('54', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'icons'), ('55', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'editor'), ('56', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'multilingual'), ('57', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'timezone'), ('58', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'interface'), ('59', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'seo'), ('60', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'urls'), ('61', '2012-12-28 17:10:09', '2012-12-28 17:10:09', 'bulk_seo_tool'), ('62', '2012-12-28 17:10:09', '2012-12-28 17:10:10', 'tracking_codes'), ('63', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'statistics'), ('64', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'search_index'), ('65', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'optimization'), ('66', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'cache'), ('67', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'clear_cache'), ('68', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'jobs'), ('69', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'permissions'), ('70', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'site'), ('71', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'files'), ('72', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'file_types'), ('73', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'tasks'), ('74', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'users'), ('75', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'advanced'), ('76', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'ip_blacklist'), ('77', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'captcha'), ('78', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'antispam'), ('79', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'maintenance_mode'), ('80', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'registration'), ('81', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'postlogin'), ('82', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'profiles'), ('83', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'public_registration'), ('84', '2012-12-28 17:10:10', '2012-12-28 17:10:10', 'mail'), ('85', '2012-12-28 17:10:10', '2012-12-28 17:10:11', 'method'), ('86', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'importers'), ('87', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'attributes'), ('88', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'sets'), ('89', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'types'), ('90', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'environment'), ('91', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'info'), ('92', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'debug'), ('93', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'logging'), ('94', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'file_storage_locations'), ('95', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'proxy'), ('96', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'backup_restore'), ('97', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'backup'), ('98', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'update'), ('99', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'database'), ('100', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'composer'), ('101', '2012-12-28 17:10:11', '2012-12-28 17:10:11', null), ('102', '2012-12-28 17:10:11', '2012-12-28 17:10:11', null), ('103', '2012-12-28 17:10:11', '2012-12-28 17:10:11', null), ('104', '2012-12-28 17:10:11', '2012-12-28 17:10:11', 'home'), ('105', '2012-12-28 17:10:11', '2012-12-28 17:10:12', 'welcome'), ('106', '2012-12-28 17:10:14', '2012-12-28 17:10:14', '!drafts'), ('107', '2012-12-28 17:10:14', '2012-12-28 17:10:14', '!trash'), ('108', '2012-12-28 17:10:14', '2012-12-28 17:10:14', '!stacks'), ('109', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'login'), ('110', '2012-12-28 17:10:14', '2012-12-28 17:10:14', 'register'), ('111', '2012-12-28 17:10:14', '2012-12-28 17:10:15', 'profile'), ('112', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'edit'), ('113', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'avatar'), ('114', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'messages'), ('115', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'friends'), ('116', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'page_not_found'), ('117', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'page_forbidden'), ('118', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'download_file'), ('119', '2012-12-28 17:10:15', '2012-12-28 17:10:15', 'members'), ('120', '2012-12-28 17:10:16', '2012-12-28 17:10:16', 'header-nav'), ('121', '2012-12-28 17:10:16', '2012-12-28 17:10:16', 'side-nav'), ('122', '2012-12-28 17:10:16', '2012-12-28 17:10:16', 'site-name'), ('123', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null), ('124', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null), ('125', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null), ('126', '2012-12-28 17:10:17', '2012-12-28 17:10:17', null), ('127', '2012-12-28 17:10:17', '2012-12-28 17:38:42', 'about'), ('128', '2012-12-28 17:10:17', '2012-12-28 17:38:59', 'blog'), ('129', '2012-12-28 17:10:17', '2012-12-28 18:02:58', 'search'), ('130', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'contact-us'), ('131', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'guestbook'), ('132', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'blog-archives'), ('133', '2012-12-28 17:10:17', '2012-12-28 17:10:17', 'hello-world'), ('134', '2012-12-28 17:39:53', '2012-12-31 11:59:10', 'rulo-filtreler'), ('135', '2012-12-28 17:40:14', '2012-12-31 11:59:20', 'panel-filtreler'), ('136', '2012-12-28 17:40:43', '2012-12-31 12:00:05', 'torba-kompakt-filtreler'), ('137', '2012-12-28 17:41:18', '2012-12-31 12:00:20', 'hepa-ve-ulpa-filtreler'), ('138', '2012-12-28 17:42:04', '2012-12-31 12:00:36', 'aktif-karbon-filtreler'), ('139', '2013-01-02 09:33:51', '2013-01-02 09:33:51', null), ('140', '2013-01-02 09:34:29', '2013-01-02 09:35:54', 'bbbb');
COMMIT;

-- ----------------------------
--  Table structure for `ComposerContentLayout`
-- ----------------------------
DROP TABLE IF EXISTS `ComposerContentLayout`;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ComposerContentLayout`
-- ----------------------------
BEGIN;
INSERT INTO `ComposerContentLayout` VALUES ('1', '16', '0', '1', '4', 'header.php'), ('2', '15', '0', '2', '4', 'thumbnail.php'), ('3', '13', '0', '3', '4', ''), ('4', '0', '14', '4', '4', null);
COMMIT;

-- ----------------------------
--  Table structure for `ComposerDrafts`
-- ----------------------------
DROP TABLE IF EXISTS `ComposerDrafts`;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ComposerTypes`
-- ----------------------------
DROP TABLE IF EXISTS `ComposerTypes`;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ComposerTypes`
-- ----------------------------
BEGIN;
INSERT INTO `ComposerTypes` VALUES ('4', 'PARENT', '0', '128');
COMMIT;

-- ----------------------------
--  Table structure for `Config`
-- ----------------------------
DROP TABLE IF EXISTS `Config`;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Config`
-- ----------------------------
BEGIN;
INSERT INTO `Config` VALUES ('ACCESS_ENTITY_UPDATED', '2012-12-28 17:10:15', '1356707415', '0', '0'), ('ANTISPAM_LOG_SPAM', '2012-12-28 17:10:15', '1', '0', '0'), ('APP_VERSION_LATEST', '2012-12-31 09:37:10', '5.6.0.2', '0', '0'), ('DO_PAGE_REINDEX_CHECK', '2013-01-02 17:54:21', '0', '0', '0'), ('ENABLE_CACHE', '2012-12-28 17:10:15', '1', '0', '0'), ('ENABLE_LOG_EMAILS', '2012-12-28 17:10:15', '1', '0', '0'), ('ENABLE_LOG_ERRORS', '2012-12-28 17:10:15', '1', '0', '0'), ('ENABLE_MARKETPLACE_SUPPORT', '2012-12-28 17:10:15', '1', '0', '0'), ('ENABLE_OVERRIDE_CACHE', '2012-12-28 17:10:15', '1', '0', '0'), ('ENVIRONMENT_CACHE', '2012-12-28 17:19:29', 'O:11:\"Environment\":7:{s:16:\"\0*\0coreOverrides\";a:8:{i:0;s:31:\"themes/alp_fitre/blog_entry.php\";i:1;s:28:\"themes/alp_fitre/default.php\";i:2;s:41:\"themes/alp_fitre/elements/blog_header.php\";i:3;s:36:\"themes/alp_fitre/elements/footer.php\";i:4;s:36:\"themes/alp_fitre/elements/header.php\";i:5;s:25:\"themes/alp_fitre/full.php\";i:6;s:33:\"themes/alp_fitre/left_sidebar.php\";i:7;s:25:\"themes/alp_fitre/view.php\";}s:15:\"\0*\0corePackages\";a:0:{}s:25:\"\0*\0coreOverridesByPackage\";a:0:{}s:19:\"\0*\0overridesScanned\";b:1;s:18:\"\0*\0cachedOverrides\";a:0:{}s:13:\"\0*\0autoLoaded\";b:0;s:14:\"\0*\0ignoreFiles\";a:1:{i:0;s:8:\"__MACOSX\";}}', '0', '0'), ('FULL_PAGE_CACHE_GLOBAL', '2012-12-28 17:10:15', '0', '0', '0'), ('NEWSFLOW_LAST_VIEWED', '2013-01-02 09:31:43', '1357111903', '1', '0'), ('SEEN_INTRODUCTION', '2012-12-28 17:10:58', '1', '0', '0'), ('SITE', '2012-12-28 17:10:19', 'Alp Filtre', '0', '0'), ('SITE_APP_VERSION', '2012-12-28 17:10:19', '5.6.0.2', '0', '0'), ('SITE_DEBUG_LEVEL', '2012-12-28 17:10:15', '1', '0', '0'), ('SITE_INSTALLED_APP_VERSION', '2012-12-28 17:10:19', '5.6.0.2', '0', '0'), ('SITE_LOCALE', '2012-12-28 17:10:19', 'tr_TR', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `CustomStylePresets`
-- ----------------------------
DROP TABLE IF EXISTS `CustomStylePresets`;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `CustomStyleRules`
-- ----------------------------
DROP TABLE IF EXISTS `CustomStyleRules`;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `DashboardHomepage`
-- ----------------------------
DROP TABLE IF EXISTS `DashboardHomepage`;
CREATE TABLE `DashboardHomepage` (
  `dbhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbhModule` varchar(255) NOT NULL,
  `dbhDisplayName` varchar(255) DEFAULT NULL,
  `dbhDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `DownloadStatistics`
-- ----------------------------
DROP TABLE IF EXISTS `DownloadStatistics`;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileAttributeValues`
-- ----------------------------
DROP TABLE IF EXISTS `FileAttributeValues`;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `FileAttributeValues`
-- ----------------------------
BEGIN;
INSERT INTO `FileAttributeValues` VALUES ('1', '1', '12', '119'), ('1', '1', '13', '120'), ('2', '1', '12', '121'), ('2', '1', '13', '122'), ('3', '1', '12', '123'), ('3', '1', '13', '124'), ('4', '1', '12', '125'), ('4', '1', '13', '126'), ('5', '1', '12', '127'), ('5', '1', '13', '128'), ('6', '1', '12', '129'), ('6', '1', '13', '130'), ('7', '1', '12', '131'), ('7', '1', '13', '132'), ('8', '1', '12', '133'), ('8', '1', '13', '134');
COMMIT;

-- ----------------------------
--  Table structure for `FilePermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `FilePermissionAssignments`;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FilePermissionFileTypes`
-- ----------------------------
DROP TABLE IF EXISTS `FilePermissionFileTypes`;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FilePermissions`
-- ----------------------------
DROP TABLE IF EXISTS `FilePermissions`;
CREATE TABLE `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileSearchIndexAttributes`
-- ----------------------------
DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `FileSearchIndexAttributes`
-- ----------------------------
BEGIN;
INSERT INTO `FileSearchIndexAttributes` VALUES ('1', '960.0000', '212.0000'), ('2', '960.0000', '212.0000'), ('3', '960.0000', '212.0000'), ('4', '960.0000', '212.0000'), ('5', '960.0000', '212.0000'), ('6', '960.0000', '212.0000'), ('7', '960.0000', '212.0000'), ('8', '150.0000', '150.0000');
COMMIT;

-- ----------------------------
--  Table structure for `FileSetFiles`
-- ----------------------------
DROP TABLE IF EXISTS `FileSetFiles`;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileSetPermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `FileSetPermissionAssignments`
-- ----------------------------
BEGIN;
INSERT INTO `FileSetPermissionAssignments` VALUES ('0', '36', '34'), ('0', '37', '35'), ('0', '38', '36'), ('0', '39', '37'), ('0', '40', '38'), ('0', '41', '39'), ('0', '42', '41'), ('0', '43', '40'), ('0', '44', '42');
COMMIT;

-- ----------------------------
--  Table structure for `FileSetPermissionFileTypeAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileSetPermissionFileTypeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileSetSavedSearches`
-- ----------------------------
DROP TABLE IF EXISTS `FileSetSavedSearches`;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileSets`
-- ----------------------------
DROP TABLE IF EXISTS `FileSets`;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileStorageLocations`
-- ----------------------------
DROP TABLE IF EXISTS `FileStorageLocations`;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `FileVersionLog`
-- ----------------------------
DROP TABLE IF EXISTS `FileVersionLog`;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `FileVersionLog`
-- ----------------------------
BEGIN;
INSERT INTO `FileVersionLog` VALUES ('1', '1', '1', '5', '12'), ('2', '1', '1', '5', '13'), ('3', '2', '1', '5', '12'), ('4', '2', '1', '5', '13'), ('5', '3', '1', '5', '12'), ('6', '3', '1', '5', '13'), ('7', '4', '1', '5', '12'), ('8', '4', '1', '5', '13'), ('9', '5', '1', '5', '12'), ('10', '5', '1', '5', '13'), ('11', '6', '1', '5', '12'), ('12', '6', '1', '5', '13'), ('13', '7', '1', '5', '12'), ('14', '7', '1', '5', '13'), ('15', '8', '1', '5', '12'), ('16', '8', '1', '5', '13');
COMMIT;

-- ----------------------------
--  Table structure for `FileVersions`
-- ----------------------------
DROP TABLE IF EXISTS `FileVersions`;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `FileVersions`
-- ----------------------------
BEGIN;
INSERT INTO `FileVersions` VALUES ('1', '1', 'england_village.jpg', '281356707415', '1', '333117', 'england_village.jpg', '', '', '1', '2012-12-28 17:10:15', '1', '1', '2012-12-28 17:10:15', '1', '1', '0', 'jpg', '1'), ('2', '1', 'europe_england_stonehenge.jpg', '741356707415', '1', '286856', 'europe_england_stonehenge.jpg', '', '', '1', '2012-12-28 17:10:15', '1', '1', '2012-12-28 17:10:15', '1', '1', '0', 'jpg', '1'), ('3', '1', 'europe_germany_munich_arch.jpg', '281356707416', '1', '229235', 'europe_germany_munich_arch.jpg', '', '', '1', '2012-12-28 17:10:16', '1', '1', '2012-12-28 17:10:16', '1', '1', '0', 'jpg', '1'), ('4', '1', 'europe_rotterdam_port.jpg', '171356707416', '1', '203784', 'europe_rotterdam_port.jpg', '', '', '1', '2012-12-28 17:10:16', '1', '1', '2012-12-28 17:10:16', '1', '1', '0', 'jpg', '1'), ('5', '1', 'europe_spain_grenada_alhambra.jpg', '201356707416', '1', '320805', 'europe_spain_grenada_alhambra.jpg', '', '', '1', '2012-12-28 17:10:16', '1', '1', '2012-12-28 17:10:16', '1', '1', '0', 'jpg', '1'), ('6', '1', 'europe_valencia_hemispheric.jpg', '201356707416', '1', '262679', 'europe_valencia_hemispheric.jpg', '', '', '1', '2012-12-28 17:10:16', '1', '1', '2012-12-28 17:10:16', '1', '1', '0', 'jpg', '1'), ('7', '1', 'northern_az_lake_powell_house_boats.jpg', '681356707416', '1', '226976', 'northern_az_lake_powell_house_boats.jpg', '', '', '1', '2012-12-28 17:10:16', '1', '1', '2012-12-28 17:10:16', '1', '1', '0', 'jpg', '1'), ('8', '1', 'sh_thumbnail.jpg', '751356707416', '1', '15243', 'sh_thumbnail.jpg', '', '', '1', '2012-12-28 17:10:16', '1', '1', '2012-12-28 17:10:16', '1', '1', '0', 'jpg', '1');
COMMIT;

-- ----------------------------
--  Table structure for `Files`
-- ----------------------------
DROP TABLE IF EXISTS `Files`;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Files`
-- ----------------------------
BEGIN;
INSERT INTO `Files` VALUES ('1', '2012-12-28 17:10:15', '1', '0', '0', '0', null), ('2', '2012-12-28 17:10:15', '1', '0', '0', '0', null), ('3', '2012-12-28 17:10:16', '1', '0', '0', '0', null), ('4', '2012-12-28 17:10:16', '1', '0', '0', '0', null), ('5', '2012-12-28 17:10:16', '1', '0', '0', '0', null), ('6', '2012-12-28 17:10:16', '1', '0', '0', '0', null), ('7', '2012-12-28 17:10:16', '1', '0', '0', '0', null), ('8', '2012-12-28 17:10:16', '1', '0', '0', '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `GroupSetGroups`
-- ----------------------------
DROP TABLE IF EXISTS `GroupSetGroups`;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `GroupSets`
-- ----------------------------
DROP TABLE IF EXISTS `GroupSets`;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Groups`
-- ----------------------------
DROP TABLE IF EXISTS `Groups`;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Groups`
-- ----------------------------
BEGIN;
INSERT INTO `Groups` VALUES ('1', 'Guest', 'The guest group represents unregistered visitors to your site.', '0', null, null, '0', null), ('2', 'Registered Users', 'The registered users group represents all user accounts.', '0', null, null, '0', null), ('3', 'Administrators', '', '0', null, null, '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `Jobs`
-- ----------------------------
DROP TABLE IF EXISTS `Jobs`;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Jobs`
-- ----------------------------
BEGIN;
INSERT INTO `Jobs` VALUES ('1', 'Index Search Engine', 'Index the site to allow searching to work quickly and accurately.', '2012-12-28 17:10:06', null, '0', null, '0', 'ENABLED', 'index_search', '1'), ('2', 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2012-12-28 17:10:06', null, '0', null, '0', 'ENABLED', 'generate_sitemap', '0'), ('3', 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2012-12-28 17:10:06', null, '0', null, '0', 'ENABLED', 'process_email', '0'), ('4', 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2012-12-28 17:10:06', null, '0', null, '0', 'ENABLED', 'remove_old_page_versions', '0');
COMMIT;

-- ----------------------------
--  Table structure for `JobsLog`
-- ----------------------------
DROP TABLE IF EXISTS `JobsLog`;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `LayoutPresets`
-- ----------------------------
DROP TABLE IF EXISTS `LayoutPresets`;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Layouts`
-- ----------------------------
DROP TABLE IF EXISTS `Layouts`;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Logs`
-- ----------------------------
DROP TABLE IF EXISTS `Logs`;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Logs`
-- ----------------------------
BEGIN;
INSERT INTO `Logs` VALUES ('1', 'exceptions', '2013-01-02 16:39:07', 'Exception Occurred: /Users/imacuser/Sites/clients/com/Alp Fitre/concrete/core/models/permissions.php:71 Unable to get permission key for view_edit_interface (0)\n\n#0 /Users/imacuser/Sites/clients/com/Alp Fitre/concrete/tools/edit_block_popup.php(18): Concrete5_Model_Permissions-&gt;__call(\'canViewEditInte...\', Array)\n#1 /Users/imacuser/Sites/clients/com/Alp Fitre/concrete/tools/edit_block_popup.php(18): Permissions-&gt;canViewEditInterface()\n#2 /Users/imacuser/Sites/clients/com/Alp Fitre/concrete/startup/tools.php(29): include(\'/Users/imacuser...\')\n#3 /Users/imacuser/Sites/clients/com/Alp Fitre/concrete/dispatcher.php(122): require(\'/Users/imacuser...\')\n#4 /Users/imacuser/Sites/clients/com/Alp Fitre/index.php(2): require(\'/Users/imacuser...\')\n#5 {main}\n', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `MailImporters`
-- ----------------------------
DROP TABLE IF EXISTS `MailImporters`;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `MailImporters`
-- ----------------------------
BEGIN;
INSERT INTO `MailImporters` VALUES ('1', 'private_message', null, null, null, null, '0', null, '0', '0', 'POP');
COMMIT;

-- ----------------------------
--  Table structure for `MailValidationHashes`
-- ----------------------------
DROP TABLE IF EXISTS `MailValidationHashes`;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Packages`
-- ----------------------------
DROP TABLE IF EXISTS `Packages`;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PagePaths`
-- ----------------------------
DROP TABLE IF EXISTS `PagePaths`;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PagePaths`
-- ----------------------------
BEGIN;
INSERT INTO `PagePaths` VALUES ('1', '2', '/dashboard', '1'), ('2', '3', '/dashboard/composer', '1'), ('3', '4', '/dashboard/composer/write', '1'), ('4', '5', '/dashboard/composer/drafts', '1'), ('5', '6', '/dashboard/sitemap', '1'), ('6', '7', '/dashboard/sitemap/full', '1'), ('7', '8', '/dashboard/sitemap/explore', '1'), ('8', '9', '/dashboard/sitemap/search', '1'), ('9', '10', '/dashboard/files', '1'), ('10', '11', '/dashboard/files/search', '1'), ('11', '12', '/dashboard/files/attributes', '1'), ('12', '13', '/dashboard/files/sets', '1'), ('13', '14', '/dashboard/files/add_set', '1'), ('14', '15', '/dashboard/users', '1'), ('15', '16', '/dashboard/users/search', '1'), ('16', '17', '/dashboard/users/groups', '1'), ('17', '18', '/dashboard/users/attributes', '1'), ('18', '19', '/dashboard/users/add', '1'), ('19', '20', '/dashboard/users/add_group', '1'), ('20', '21', '/dashboard/users/group_sets', '1'), ('21', '22', '/dashboard/reports', '1'), ('22', '23', '/dashboard/reports/statistics', '1'), ('23', '24', '/dashboard/reports/forms', '1'), ('24', '25', '/dashboard/reports/surveys', '1'), ('25', '26', '/dashboard/reports/logs', '1'), ('26', '27', '/dashboard/pages', '1'), ('27', '28', '/dashboard/pages/themes', '1'), ('28', '29', '/dashboard/pages/themes/add', '1'), ('29', '30', '/dashboard/pages/themes/inspect', '1'), ('30', '31', '/dashboard/pages/themes/customize', '1'), ('31', '32', '/dashboard/pages/types', '1'), ('32', '33', '/dashboard/pages/types/add', '1'), ('33', '34', '/dashboard/pages/attributes', '1'), ('34', '35', '/dashboard/pages/single', '1'), ('35', '36', '/dashboard/workflow', '1'), ('36', '37', '/dashboard/workflow/list', '1'), ('37', '38', '/dashboard/workflow/me', '1'), ('38', '39', '/dashboard/blocks', '1'), ('39', '40', '/dashboard/blocks/stacks', '1'), ('40', '41', '/dashboard/blocks/permissions', '1'), ('41', '42', '/dashboard/blocks/stacks/list', '1'), ('42', '43', '/dashboard/blocks/types', '1'), ('43', '44', '/dashboard/extend', '1'), ('44', '45', '/dashboard/news', '1'), ('45', '46', '/dashboard/extend/install', '1'), ('46', '47', '/dashboard/extend/update', '1'), ('47', '48', '/dashboard/extend/connect', '1'), ('48', '49', '/dashboard/extend/themes', '1'), ('49', '50', '/dashboard/extend/add-ons', '1'), ('50', '51', '/dashboard/system', '1'), ('51', '52', '/dashboard/system/basics', '1'), ('52', '53', '/dashboard/system/basics/site_name', '1'), ('53', '54', '/dashboard/system/basics/icons', '1'), ('54', '55', '/dashboard/system/basics/editor', '1'), ('55', '56', '/dashboard/system/basics/multilingual', '1'), ('56', '57', '/dashboard/system/basics/timezone', '1'), ('57', '58', '/dashboard/system/basics/interface', '1'), ('58', '59', '/dashboard/system/seo', '1'), ('59', '60', '/dashboard/system/seo/urls', '1'), ('60', '61', '/dashboard/system/seo/bulk_seo_tool', '1'), ('61', '62', '/dashboard/system/seo/tracking_codes', '1'), ('62', '63', '/dashboard/system/seo/statistics', '1'), ('63', '64', '/dashboard/system/seo/search_index', '1'), ('64', '65', '/dashboard/system/optimization', '1'), ('65', '66', '/dashboard/system/optimization/cache', '1'), ('66', '67', '/dashboard/system/optimization/clear_cache', '1'), ('67', '68', '/dashboard/system/optimization/jobs', '1'), ('68', '69', '/dashboard/system/permissions', '1'), ('69', '70', '/dashboard/system/permissions/site', '1'), ('70', '71', '/dashboard/system/permissions/files', '1'), ('71', '72', '/dashboard/system/permissions/file_types', '1'), ('72', '73', '/dashboard/system/permissions/tasks', '1'), ('73', '74', '/dashboard/system/permissions/users', '1'), ('74', '75', '/dashboard/system/permissions/advanced', '1'), ('75', '76', '/dashboard/system/permissions/ip_blacklist', '1'), ('76', '77', '/dashboard/system/permissions/captcha', '1'), ('77', '78', '/dashboard/system/permissions/antispam', '1'), ('78', '79', '/dashboard/system/permissions/maintenance_mode', '1'), ('79', '80', '/dashboard/system/registration', '1'), ('80', '81', '/dashboard/system/registration/postlogin', '1'), ('81', '82', '/dashboard/system/registration/profiles', '1'), ('82', '83', '/dashboard/system/registration/public_registration', '1'), ('83', '84', '/dashboard/system/mail', '1'), ('84', '85', '/dashboard/system/mail/method', '1'), ('85', '86', '/dashboard/system/mail/importers', '1'), ('86', '87', '/dashboard/system/attributes', '1'), ('87', '88', '/dashboard/system/attributes/sets', '1'), ('88', '89', '/dashboard/system/attributes/types', '1'), ('89', '90', '/dashboard/system/environment', '1'), ('90', '91', '/dashboard/system/environment/info', '1'), ('91', '92', '/dashboard/system/environment/debug', '1'), ('92', '93', '/dashboard/system/environment/logging', '1'), ('93', '94', '/dashboard/system/environment/file_storage_locations', '1'), ('94', '95', '/dashboard/system/environment/proxy', '1'), ('95', '96', '/dashboard/system/backup_restore', '1'), ('96', '97', '/dashboard/system/backup_restore/backup', '1'), ('97', '98', '/dashboard/system/backup_restore/update', '1'), ('98', '99', '/dashboard/system/backup_restore/database', '1'), ('99', '100', '/dashboard/pages/types/composer', '1'), ('100', '104', '/dashboard/home', '1'), ('101', '105', '/dashboard/welcome', '1'), ('102', '106', '/!drafts', '1'), ('103', '107', '/!trash', '1'), ('104', '108', '/!stacks', '1'), ('105', '109', '/login', '1'), ('106', '110', '/register', '1'), ('107', '111', '/profile', '1'), ('108', '112', '/profile/edit', '1'), ('109', '113', '/profile/avatar', '1'), ('110', '114', '/profile/messages', '1'), ('111', '115', '/profile/friends', '1'), ('112', '116', '/page_not_found', '1'), ('113', '117', '/page_forbidden', '1'), ('114', '118', '/download_file', '1'), ('115', '119', '/members', '1'), ('116', '120', '/!stacks/header-nav', '1'), ('117', '121', '/!stacks/side-nav', '1'), ('118', '122', '/!stacks/site-name', '1'), ('126', '127', '/!trash/about', '1'), ('127', '130', '/!trash/about/contact-us', '1'), ('128', '131', '/!trash/about/guestbook', '1'), ('129', '128', '/!trash/blog', '1'), ('130', '132', '/!trash/blog/blog-archives', '1'), ('131', '133', '/!trash/blog/hello-world', '1'), ('138', '129', '/!trash/search', '1'), ('139', '134', '/rulo-filtreler', '1'), ('140', '135', '/panel-filtreler', '1'), ('141', '136', '/torba-kompakt-filtreler', '1'), ('142', '137', '/hepa-ulpa-filtreler', '1'), ('143', '138', '/aktif-karbon-filtreler', '1'), ('145', '140', '/!trash/bbbb', '1');
COMMIT;

-- ----------------------------
--  Table structure for `PagePermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionAssignments`;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PagePermissionAssignments`
-- ----------------------------
BEGIN;
INSERT INTO `PagePermissionAssignments` VALUES ('1', '1', '45'), ('1', '2', '46'), ('1', '3', '47'), ('1', '4', '48'), ('1', '5', '49'), ('1', '6', '50'), ('1', '7', '51'), ('1', '8', '52'), ('1', '9', '53'), ('1', '10', '54'), ('1', '11', '55'), ('1', '12', '56'), ('1', '13', '57'), ('1', '14', '58'), ('1', '15', '59'), ('2', '1', '18'), ('2', '2', '19'), ('2', '3', '24'), ('2', '4', '20'), ('2', '5', '21'), ('2', '6', '26'), ('2', '7', '28'), ('2', '8', '30'), ('2', '9', '27'), ('2', '10', '31'), ('2', '11', '32'), ('2', '12', '22'), ('2', '13', '25'), ('2', '14', '23'), ('2', '15', '29'), ('42', '1', '33'), ('109', '1', '34'), ('110', '1', '35');
COMMIT;

-- ----------------------------
--  Table structure for `PagePermissionPageTypeAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PagePermissionPageTypeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PagePermissionPropertyAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PagePermissionPropertyAttributeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PagePermissionThemeAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PagePermissionThemeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PageSearchIndex`
-- ----------------------------
DROP TABLE IF EXISTS `PageSearchIndex`;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PageSearchIndex`
-- ----------------------------
BEGIN;
INSERT INTO `PageSearchIndex` VALUES ('3', '', 'Composer', 'Write for your site.', '/dashboard/composer', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('4', '', 'Write', '', '/dashboard/composer/write', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('5', '', 'Drafts', '', '/dashboard/composer/drafts', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('6', '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('7', '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('8', '', 'Flat View', '', '/dashboard/sitemap/explore', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('9', '', 'Page Search', '', '/dashboard/sitemap/search', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('11', '', 'File Manager', '', '/dashboard/files/search', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('12', '', 'Attributes', '', '/dashboard/files/attributes', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('13', '', 'File Sets', '', '/dashboard/files/sets', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('14', '', 'Add File Set', '', '/dashboard/files/add_set', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('15', '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('16', '', 'Search Users', '', '/dashboard/users/search', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('17', '', 'User Groups', '', '/dashboard/users/groups', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('18', '', 'Attributes', '', '/dashboard/users/attributes', '2012-12-28 17:10:07', '2012-12-28 17:10:12', null, '0'), ('19', '', 'Add User', '', '/dashboard/users/add', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('20', '', 'Add Group', '', '/dashboard/users/add_group', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('21', '', 'Group Sets', '', '/dashboard/users/group_sets', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('22', '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('23', '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('24', '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('25', '', 'Surveys', '', '/dashboard/reports/surveys', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('26', '', 'Logs', '', '/dashboard/reports/logs', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('28', '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('29', '', 'Add', '', '/dashboard/pages/themes/add', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('30', '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('31', '', 'Customize', '', '/dashboard/pages/themes/customize', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('32', '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2012-12-28 17:10:08', '2012-12-28 17:10:12', null, '0'), ('34', '', 'Attributes', '', '/dashboard/pages/attributes', '2012-12-28 17:10:08', '2012-12-28 17:10:13', null, '0'), ('35', '', 'Single Pages', '', '/dashboard/pages/single', '2012-12-28 17:10:08', '2012-12-28 17:10:13', null, '0'), ('36', '', 'Workflow', '', '/dashboard/workflow', '2012-12-28 17:10:08', '2012-12-28 17:10:13', null, '0'), ('37', '', 'Workflow List', '', '/dashboard/workflow/list', '2012-12-28 17:10:08', '2012-12-28 17:10:13', null, '0'), ('38', '', 'Waiting for Me', '', '/dashboard/workflow/me', '2012-12-28 17:10:08', '2012-12-28 17:10:13', null, '0'), ('40', '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2012-12-28 17:10:08', '2012-12-28 17:10:13', null, '0'), ('41', '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('42', '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('43', '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('44', '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('45', '', 'Dashboard', '', '/dashboard/news', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('46', '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('47', '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('48', '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('49', '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('50', '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('51', '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('53', '', 'Site Name', '', '/dashboard/system/basics/site_name', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('54', '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('55', '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('56', '', 'Languages', '', '/dashboard/system/basics/multilingual', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('57', '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('58', '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('60', '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('61', '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('62', '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2012-12-28 17:10:09', '2012-12-28 17:10:13', null, '0'), ('63', '', 'Statistics', '', '/dashboard/system/seo/statistics', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('64', '', 'Search Index', '', '/dashboard/system/seo/search_index', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('66', '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('67', '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('68', '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('70', '', 'Site Access', '', '/dashboard/system/permissions/site', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('71', '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('72', '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('73', '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('76', '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('77', '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('78', '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('79', '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('81', '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('82', '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('83', '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('84', '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('85', '', 'SMTP Method', '', '/dashboard/system/mail/method', '2012-12-28 17:10:10', '2012-12-28 17:10:13', null, '0'), ('86', '', 'Email Importers', '', '/dashboard/system/mail/importers', '2012-12-28 17:10:11', '2012-12-28 17:10:13', null, '0'), ('87', '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2012-12-28 17:10:11', '2012-12-28 17:10:13', null, '0'), ('88', '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('89', '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('90', '', 'Environment', 'Advanced settings for web developers.', '/dashboard/system/environment', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('91', '', 'Environment Information', '', '/dashboard/system/environment/info', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('92', '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('93', '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('94', '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('95', '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('96', '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('98', '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('99', '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('105', '	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('104', '', 'Customize Dashboard Home', '', '/dashboard/home', '2012-12-28 17:10:11', '2012-12-28 17:10:14', null, '0'), ('1', 'Welcome to concrete5 - an Open Source CMS Sidebar  Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;drag and drop blocks&nbsp;like this around your layout.  Welcome to concrete5!\n                                         Content Management is easy with concrete5\'s in-context editing. Just login and you can change things as you browse your site. \n                                         You can watch videos and learn how to: \n                                        \n                                        Edit&nbsp;this page.\n                                        Add a new page.\n                                        Add some basic functionality, like&nbsp;a Form.\n                                        Finding &amp; adding&nbsp;more functionality and themes.\n                                        \n                                         We\'ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;Sitemap and quickly delete the parts you don\'t want.  Torba Filtre Nedir?\r\n Sentetik elyaf malzemeden mamul torba filtreler, yüksek toz tutma kapasitesi ile üstün performans gösterirler. 500 mm ve 600 mm derinliklerinde imal edilen torba filtreler, Özel ebatJarda da imal edilirler. Sentetik elyaflı torba filtreler, havalandırma sistemlerinde kullanılırlar. Hijyenik klima sisteminde ise büyük partiküllerin tutulması ve hepa filtrenin korunması amacıyla klima santralinin içine monte edilirler. Sentetik efyaflı torba filtreler G3 (EU4) - G4 (EU4) - F5 (EU5) - F6 (EU6) - F7 (EU7) - F8 (EU8) - F9 (EU9) sınıfında filtreleme yaparlar.  Hepa ve Ulpa Filtre Nedir?\r\n Hepa\'nın açılımı High Efficiency Particulate Arresting\'dir. Yüksek etkinlikte partikül yakalayıcı anlamına gelir. Hepa filtreler, 0,3 mikrona kadar partikülleri %85 ve üzeri oranlarda havadan arındırabilen filtrelerdir. Hepa filtrelerden daha hassas ve %99,999 oranına sahip olan filtrelere ise ULPA filtre denir. Hepa ve ulpa filtreler bakım gerektirmeyen, özel liflerden oluþan ve kağıda benzer bir yapıya sahiptir. Bu filtrelerin belirli bir zaman dilimi içerisinde yenisi ile değiþtirilmesi gerekir. Hepa ve ulpa filtrelerin kullanıldığı ortam havası kirliliğine, kullanım sıklığına ve basınç kaybına bağlı olarak 6-12 ayda bir değiþtirilmesi önerilir. Günümüzde ameliyathanelerde, hastahanelerde ve temiz oda uygulamalarında filtreleme performansı, güvenilirliği ve bakım gerektirmeyen yapısından dolayı hepa ve ulpa filtreler kullanılmaktadır. Hepa ve ulpa filtrelerin MDF, plastik veya metal çerçeveli modelleri mevcuttur.  Kaset Filtre Nedir?\r\n Kaset panel filtreler, kontrollü ve yenilenebilir özellikte özel ham elyaf harmanından yapılmıştı ve son derece dayanıklı bir yapıya sahiptir. Etrafındaki koruma kafesi, filtreleme özelliğini darbelerden korumak amacıyla yarleştirilmiştir. Kaset filtreler G2 [EU2], G3 [EU3], G4 [EU4], F5 [EU5] sınıfındaki filrelerdir. Kaset filtreler, selülozik esaslı ve fiber glass esaslı olarak üretilir.  Hangi filtreyi kullanmalıyım ?\r\n\r\nYukarıdaki filtre seçim cizelgesi bu konuda size yardımcı olacaktır. Ayrıca alperen@alperen.com.tr elektronik posta adresimizden veya 0121 503 53 36 pbx numaralı telefonumuzdan bizlere ulaştığınızda teknik destek yetkililerimiz sizlere yardımcı olmaktan memnuniyet duyacaktır.\r\n\r\nFiltreler ne zaman değişrilimelidir.\r\n\r\nFiltrelerin hava akımına karşı temizken oluştıurduğu dirence başlangıç direnci veya basınç düşümü denir. Bu değer Pa [pascal] olarak ölçülür. Filtreler kirlendikçe bu değer artar. Direnç değeri önerilen son derece ulaşan filtre değiştirilmelidir. Ön filtre ve torba filtreler için önerilen son direnç değerleri EN 779 Avrupa standartlarına göre belirlenmiş olup bu teknik değerleri web sitemizde de inceleyebilirsiniz.\r\n\r\nFiltrelerin ömrü nekadardır?\r\n\r\nBu sorunun cevabı filtrelerin monte edildiği yerdeki havanın kirliliğine bağlıdır. Havadaki kirleticilerin artması ya da eksilmesi ve mevsimler gibi faktörler de ömrüne etki etmektedir.\r\nDeneyimlerimizi esas alarak kaset filtrelerin 2-3 ay, torba filtrelerin 4-6 ay, hepa filrelerin de 6-12 ay ömürlü olduklarını söyleyebiliriz.\r\n\r\nHangi filtreler yıkanma özelliğine sahiptir?\r\n\r\nİç yapısı poliüretan veya metal olan ön filtreler yıkanabilr. Torba, hepa ve ulpa filtreler gözle görülmeyen partikülleri filtre liflerine. moleküler çekim esasına göre çekip yapıştırarak filtrelemektedir. Bu tip filtrelerin temizlenmesi mümkün değil, yenisi ile değiştirilmelidir.\r\n\r\nFiltreler ile ilgili diğer sorularıma nasıl yanıt bulabilirim?\r\n\r\nalperen@alperen.com.tr adresine e-posta göndererek veya 0212 503 35 36 telefon numaramızı arayarak filtrelerle ilgili teknik sorularınızı bizlere iletirseniz teknik destek yetkililerimiz sizlere yardımcı olmaktan memnuniyet duyacaktır.\r\n Aktif Karbon Filtre Nedir?\r\n Aktif karbon filtrenin gaz moleküllerini yakalama ve tutma özelliği vardır. Aktif karbon filtrenin yüzeyi milyonlarca ufak gözenekten oluşmaktadır. Bu gözenekler sayesinde bir çok koku yayan zehirli gazlar yakalanır. Aktif karbon filtreler kullanıldığı ortam havası kirliliğine ve kullanım sıklığına bağlı olarak değiştirilmelidir. Ömeğin, sigara içilen bir ortamda aktif karbon filtrelerin 3 ila 6 ayda bir değiştirilmesi gerekmektedir. Aktif granul karbon filtreler ağır kokuların oluştuğu mekanlarda koku tutucu filtre olarak kullanılırlar. Aktif granül karbon filtrelerde, filtre kirlendiğinde sadece granül karbonlar değiştirilir. Filtrenin hücrelerini değiştirmeye gerek yoktur.  ', 'Anasayfa', '', null, '2012-12-28 17:09:00', '2013-01-02 17:54:20', null, '0'), ('127', 'About Us Learn More\n																 Visit&nbsp;concrete5.org&nbsp;to learn more from the&nbsp;community&nbsp;and the&nbsp;documentation. You can also browse our&nbsp;marketplace&nbsp;for more&nbsp;add-ons&nbsp;and&nbsp;themes&nbsp;to quickly build the site you really need.&nbsp; \n																&nbsp;\n																Getting Help\n																 You can get free help in the forums and post for free to the&nbsp;jobs board.&nbsp; \n																 You can also pay the concrete5 team of developers to help with&nbsp;any problem&nbsp;you run into. We offer training courses&nbsp;and&nbsp;hosting packages, just let us know how we can help.  ', 'About', '', '/about', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('131', 'Guestbook ', 'Guestbook', '', '/about/guestbook', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('130', 'Contact Us Contact Us\n									 Building a form is easy to do. Learn how to add a form block.  ', 'Contact Us', '', '/about/contact-us', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('129', 'Sitemap Site Map ', 'Search', '', '/search', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('128', 'Tags ', 'Blog', '', '/blog', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('133', ' Here is some sample content! I\'m writing it using composer!  ', 'Hello World', 'This is my first blog post!', '/blog/hello-world', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('132', '', 'Blog Archives', '', '/blog/blog-archives', '2012-12-28 17:10:17', '2012-12-28 17:10:18', null, '0'), ('134', '', 'Rulo Filtreler', '', '/rulo-filtreler', '2012-12-28 17:39:00', '2012-12-31 11:59:24', null, '0'), ('135', '', 'Panel Filtreler', '', '/panel-filtreler', '2012-12-28 17:40:00', '2012-12-31 11:59:24', null, '0'), ('136', '', 'Torba & Kompakt Filtreler', '', '/torba-kompakt-filtreler', '2012-12-28 17:40:00', '2012-12-31 12:00:42', null, '0'), ('137', '', 'Hepa & Ulpa Filtreler', '', '/hepa-ulpa-filtreler', '2012-12-28 17:40:00', '2012-12-31 12:00:42', null, '0'), ('138', '', 'Aktif Karbon Filtreler', '', '/aktif-karbon-filtreler', '2012-12-28 17:41:00', '2012-12-31 12:00:42', null, '0'), ('140', '', 'bbbb', '', '/bbbb', '2013-01-02 09:34:00', '2013-01-02 09:34:37', null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `PageStatistics`
-- ----------------------------
DROP TABLE IF EXISTS `PageStatistics`;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=523 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PageStatistics`
-- ----------------------------
BEGIN;
INSERT INTO `PageStatistics` VALUES ('1', '1', '2012-12-28', '2012-12-28 17:10:58', '1'), ('2', '105', '2012-12-28', '2012-12-28 17:10:59', '1'), ('3', '2', '2012-12-28', '2012-12-28 17:11:04', '1'), ('4', '16', '2012-12-28', '2012-12-28 17:11:07', '1'), ('5', '16', '2012-12-28', '2012-12-28 17:11:13', '1'), ('6', '16', '2012-12-28', '2012-12-28 17:11:16', '1'), ('7', '16', '2012-12-28', '2012-12-28 17:11:29', '1'), ('8', '1', '2012-12-28', '2012-12-28 17:11:37', '1'), ('9', '1', '2012-12-28', '2012-12-28 17:12:32', '1'), ('10', '1', '2012-12-28', '2012-12-28 17:12:33', '1'), ('11', '2', '2012-12-28', '2012-12-28 17:12:35', '1'), ('12', '51', '2012-12-28', '2012-12-28 17:12:39', '1'), ('13', '2', '2012-12-28', '2012-12-28 17:12:41', '1'), ('14', '28', '2012-12-28', '2012-12-28 17:14:13', '1'), ('15', '28', '2012-12-28', '2012-12-28 17:14:22', '1'), ('16', '28', '2012-12-28', '2012-12-28 17:14:26', '1'), ('17', '1', '2012-12-28', '2012-12-28 17:14:33', '1'), ('18', '28', '2012-12-28', '2012-12-28 17:14:39', '1'), ('19', '28', '2012-12-28', '2012-12-28 17:14:41', '1'), ('20', '1', '2012-12-28', '2012-12-28 17:14:44', '1'), ('21', '28', '2012-12-28', '2012-12-28 17:19:26', '1'), ('22', '28', '2012-12-28', '2012-12-28 17:19:29', '1'), ('23', '30', '2012-12-28', '2012-12-28 17:19:29', '1'), ('24', '28', '2012-12-28', '2012-12-28 17:19:36', '1'), ('25', '28', '2012-12-28', '2012-12-28 17:19:39', '1'), ('26', '28', '2012-12-28', '2012-12-28 17:19:41', '1'), ('27', '1', '2012-12-28', '2012-12-28 17:19:43', '1'), ('28', '2', '2012-12-28', '2012-12-28 17:36:43', '1'), ('29', '1', '2012-12-28', '2012-12-28 17:37:59', '1'), ('30', '7', '2012-12-28', '2012-12-28 17:38:05', '1'), ('31', '127', '2012-12-28', '2012-12-28 17:38:12', '1'), ('32', '130', '2012-12-28', '2012-12-28 17:38:16', '1'), ('33', '130', '2012-12-28', '2012-12-28 17:38:26', '1'), ('34', '128', '2012-12-28', '2012-12-28 17:38:50', '1'), ('35', '129', '2012-12-28', '2012-12-28 17:39:03', '1'), ('36', '6', '2012-12-28', '2012-12-28 17:39:53', '1'), ('37', '7', '2012-12-28', '2012-12-28 17:39:53', '1'), ('38', '6', '2012-12-28', '2012-12-28 17:40:14', '1'), ('39', '7', '2012-12-28', '2012-12-28 17:40:14', '1'), ('40', '6', '2012-12-28', '2012-12-28 17:40:43', '1'), ('41', '7', '2012-12-28', '2012-12-28 17:40:43', '1'), ('42', '6', '2012-12-28', '2012-12-28 17:41:19', '1'), ('43', '7', '2012-12-28', '2012-12-28 17:41:19', '1'), ('44', '6', '2012-12-28', '2012-12-28 17:42:04', '1'), ('45', '7', '2012-12-28', '2012-12-28 17:42:04', '1'), ('46', '1', '2012-12-28', '2012-12-28 17:42:14', '1'), ('47', '134', '2012-12-28', '2012-12-28 17:42:26', '1'), ('48', '134', '2012-12-28', '2012-12-28 17:42:30', '1'), ('49', '134', '2012-12-28', '2012-12-28 17:42:36', '1'), ('50', '1', '2012-12-28', '2012-12-28 17:43:23', '1'), ('51', '1', '2012-12-28', '2012-12-28 17:45:51', '1'), ('52', '1', '2012-12-28', '2012-12-28 17:46:05', '1'), ('53', '1', '2012-12-28', '2012-12-28 17:47:28', '1'), ('54', '1', '2012-12-28', '2012-12-28 17:47:37', '1'), ('55', '1', '2012-12-28', '2012-12-28 17:48:33', '1'), ('56', '1', '2012-12-28', '2012-12-28 17:58:46', '1'), ('57', '1', '2012-12-28', '2012-12-28 17:59:18', '1'), ('58', '129', '2012-12-28', '2012-12-28 17:59:53', '1'), ('59', '1', '2012-12-28', '2012-12-28 17:59:57', '1'), ('60', '1', '2012-12-28', '2012-12-28 18:01:05', '1'), ('61', '1', '2012-12-28', '2012-12-28 18:01:50', '1'), ('62', '1', '2012-12-28', '2012-12-28 18:02:42', '1'), ('63', '1', '2012-12-28', '2012-12-28 18:03:19', '1'), ('64', '1', '2012-12-28', '2012-12-28 18:03:21', '1'), ('65', '1', '2012-12-28', '2012-12-28 18:06:23', '1'), ('66', '109', '2012-12-28', '2012-12-28 18:06:41', '1'), ('67', '1', '2012-12-28', '2012-12-28 18:06:41', '0'), ('68', '1', '2012-12-31', '2012-12-31 09:36:25', '0'), ('69', '1', '2012-12-31', '2012-12-31 09:36:37', '0'), ('70', '109', '2012-12-31', '2012-12-31 09:36:58', '0'), ('71', '109', '2012-12-31', '2012-12-31 09:37:05', '0'), ('72', '1', '2012-12-31', '2012-12-31 09:37:07', '1'), ('73', '104', '2012-12-31', '2012-12-31 09:37:08', '1'), ('74', '1', '2012-12-31', '2012-12-31 09:44:18', '1'), ('75', '1', '2012-12-31', '2012-12-31 11:02:06', '1'), ('76', '1', '2012-12-31', '2012-12-31 11:02:36', '1'), ('77', '1', '2012-12-31', '2012-12-31 11:03:31', '1'), ('78', '1', '2012-12-31', '2012-12-31 11:04:34', '1'), ('79', '1', '2012-12-31', '2012-12-31 11:05:18', '1'), ('80', '1', '2012-12-31', '2012-12-31 11:07:15', '1'), ('81', '136', '2012-12-31', '2012-12-31 11:07:30', '1'), ('82', '1', '2012-12-31', '2012-12-31 11:07:35', '1'), ('83', '1', '2012-12-31', '2012-12-31 11:08:20', '1'), ('84', '1', '2012-12-31', '2012-12-31 11:46:15', '1'), ('85', '1', '2012-12-31', '2012-12-31 11:46:59', '1'), ('86', '1', '2012-12-31', '2012-12-31 11:47:50', '1'), ('87', '1', '2012-12-31', '2012-12-31 11:49:13', '1'), ('88', '1', '2012-12-31', '2012-12-31 11:49:25', '1'), ('89', '1', '2012-12-31', '2012-12-31 11:51:00', '1'), ('90', '1', '2012-12-31', '2012-12-31 11:52:15', '1'), ('91', '1', '2012-12-31', '2012-12-31 11:52:32', '1'), ('92', '1', '2012-12-31', '2012-12-31 11:54:53', '1'), ('93', '2', '2012-12-31', '2012-12-31 11:58:03', '1'), ('94', '7', '2012-12-31', '2012-12-31 11:58:08', '1'), ('95', '7', '2012-12-31', '2012-12-31 11:58:23', '1'), ('96', '7', '2012-12-31', '2012-12-31 11:58:25', '1'), ('97', '136', '2012-12-31', '2012-12-31 11:59:22', '1'), ('98', '7', '2012-12-31', '2012-12-31 11:59:23', '1'), ('99', '1', '2012-12-31', '2012-12-31 12:00:40', '1'), ('100', '1', '2012-12-31', '2012-12-31 12:01:07', '1'), ('101', '1', '2012-12-31', '2012-12-31 12:03:17', '1'), ('102', '1', '2012-12-31', '2012-12-31 12:04:00', '1'), ('103', '1', '2012-12-31', '2012-12-31 12:04:12', '1'), ('104', '7', '2012-12-31', '2012-12-31 12:05:50', '1'), ('105', '1', '2012-12-31', '2012-12-31 12:05:51', '1'), ('106', '1', '2012-12-31', '2012-12-31 12:05:54', '1'), ('107', '1', '2012-12-31', '2012-12-31 12:06:15', '1'), ('108', '1', '2012-12-31', '2012-12-31 12:06:17', '1'), ('109', '1', '2012-12-31', '2012-12-31 12:06:19', '1'), ('110', '1', '2012-12-31', '2012-12-31 12:06:59', '1'), ('111', '1', '2012-12-31', '2012-12-31 12:07:19', '1'), ('112', '1', '2012-12-31', '2012-12-31 12:07:53', '1'), ('113', '1', '2012-12-31', '2012-12-31 12:11:25', '1'), ('114', '1', '2012-12-31', '2012-12-31 12:11:29', '1'), ('115', '1', '2012-12-31', '2012-12-31 12:12:00', '1'), ('116', '134', '2012-12-31', '2012-12-31 12:12:11', '1'), ('117', '134', '2012-12-31', '2012-12-31 12:12:33', '1'), ('118', '1', '2012-12-31', '2012-12-31 12:12:35', '1'), ('119', '1', '2012-12-31', '2012-12-31 12:14:00', '1'), ('120', '134', '2012-12-31', '2012-12-31 12:14:11', '1'), ('121', '136', '2012-12-31', '2012-12-31 12:14:15', '1'), ('122', '137', '2012-12-31', '2012-12-31 12:14:20', '1'), ('123', '136', '2012-12-31', '2012-12-31 12:14:22', '1'), ('124', '134', '2012-12-31', '2012-12-31 12:14:34', '1'), ('125', '136', '2012-12-31', '2012-12-31 12:14:37', '1'), ('126', '1', '2012-12-31', '2012-12-31 12:15:06', '1'), ('127', '1', '2012-12-31', '2012-12-31 12:15:37', '1'), ('128', '1', '2012-12-31', '2012-12-31 12:15:58', '1'), ('129', '136', '2012-12-31', '2012-12-31 12:16:11', '1'), ('130', '1', '2012-12-31', '2012-12-31 12:17:03', '1'), ('131', '1', '2012-12-31', '2012-12-31 12:17:11', '1'), ('132', '1', '2012-12-31', '2012-12-31 12:17:55', '1'), ('133', '1', '2012-12-31', '2012-12-31 12:19:06', '1'), ('134', '1', '2012-12-31', '2012-12-31 12:20:41', '1'), ('135', '1', '2012-12-31', '2012-12-31 12:21:12', '1'), ('136', '1', '2012-12-31', '2012-12-31 12:22:00', '1'), ('137', '1', '2012-12-31', '2012-12-31 12:22:57', '1'), ('138', '1', '2012-12-31', '2012-12-31 12:23:54', '1'), ('139', '1', '2012-12-31', '2012-12-31 12:24:47', '1'), ('140', '136', '2012-12-31', '2012-12-31 12:25:08', '1'), ('141', '1', '2012-12-31', '2012-12-31 12:25:13', '1'), ('142', '1', '2012-12-31', '2012-12-31 12:25:58', '1'), ('143', '138', '2012-12-31', '2012-12-31 12:26:04', '1'), ('144', '1', '2012-12-31', '2012-12-31 12:26:07', '1'), ('145', '1', '2012-12-31', '2012-12-31 12:28:14', '1'), ('146', '1', '2012-12-31', '2012-12-31 12:29:26', '1'), ('147', '1', '2012-12-31', '2012-12-31 13:10:07', '1'), ('148', '1', '2012-12-31', '2012-12-31 13:10:33', '1'), ('149', '1', '2012-12-31', '2012-12-31 13:10:58', '1'), ('150', '1', '2012-12-31', '2012-12-31 13:11:24', '1'), ('151', '1', '2012-12-31', '2012-12-31 13:11:53', '1'), ('152', '1', '2012-12-31', '2012-12-31 13:12:38', '1'), ('153', '1', '2012-12-31', '2012-12-31 13:13:16', '1'), ('154', '1', '2012-12-31', '2012-12-31 13:14:04', '1'), ('155', '1', '2012-12-31', '2012-12-31 13:14:17', '1'), ('156', '1', '2012-12-31', '2012-12-31 13:15:23', '1'), ('157', '1', '2012-12-31', '2012-12-31 13:15:48', '1'), ('158', '1', '2012-12-31', '2012-12-31 13:16:49', '1'), ('159', '1', '2012-12-31', '2012-12-31 13:17:57', '1'), ('160', '1', '2012-12-31', '2012-12-31 13:18:49', '1'), ('161', '1', '2012-12-31', '2012-12-31 13:19:45', '1'), ('162', '1', '2012-12-31', '2012-12-31 13:20:20', '1'), ('163', '1', '2012-12-31', '2012-12-31 13:20:36', '1'), ('164', '1', '2012-12-31', '2012-12-31 13:21:12', '0'), ('165', '1', '2012-12-31', '2012-12-31 13:21:47', '0'), ('166', '1', '2012-12-31', '2012-12-31 13:22:56', '0'), ('167', '1', '2012-12-31', '2012-12-31 13:23:15', '0'), ('168', '1', '2012-12-31', '2012-12-31 13:23:18', '0'), ('169', '1', '2012-12-31', '2012-12-31 13:23:26', '0'), ('170', '1', '2012-12-31', '2012-12-31 13:23:26', '0'), ('171', '1', '2012-12-31', '2012-12-31 13:23:27', '0'), ('172', '1', '2012-12-31', '2012-12-31 13:23:27', '0'), ('173', '1', '2012-12-31', '2012-12-31 13:23:27', '0'), ('174', '1', '2012-12-31', '2012-12-31 13:25:20', '0'), ('175', '1', '2012-12-31', '2012-12-31 13:25:54', '0'), ('176', '1', '2012-12-31', '2012-12-31 13:26:23', '0'), ('177', '1', '2012-12-31', '2012-12-31 13:26:26', '0'), ('178', '1', '2012-12-31', '2012-12-31 13:26:27', '0'), ('179', '1', '2012-12-31', '2012-12-31 13:26:27', '0'), ('180', '1', '2012-12-31', '2012-12-31 13:26:41', '0'), ('181', '1', '2012-12-31', '2012-12-31 13:26:43', '0'), ('182', '1', '2012-12-31', '2012-12-31 13:26:44', '0'), ('183', '1', '2012-12-31', '2012-12-31 13:26:44', '0'), ('184', '1', '2012-12-31', '2012-12-31 13:28:14', '0'), ('185', '1', '2012-12-31', '2012-12-31 13:28:31', '0'), ('186', '1', '2012-12-31', '2012-12-31 13:29:59', '0'), ('187', '1', '2012-12-31', '2012-12-31 13:30:02', '0'), ('188', '1', '2012-12-31', '2012-12-31 13:31:23', '0'), ('189', '1', '2012-12-31', '2012-12-31 13:31:50', '0'), ('190', '1', '2012-12-31', '2012-12-31 13:32:04', '0'), ('191', '1', '2012-12-31', '2012-12-31 13:32:36', '0'), ('192', '1', '2012-12-31', '2012-12-31 13:33:32', '0'), ('193', '1', '2012-12-31', '2012-12-31 13:38:37', '0'), ('194', '1', '2012-12-31', '2012-12-31 13:42:07', '0'), ('195', '1', '2012-12-31', '2012-12-31 13:42:49', '0'), ('196', '1', '2012-12-31', '2012-12-31 13:43:21', '0'), ('197', '1', '2012-12-31', '2012-12-31 13:44:09', '0'), ('198', '1', '2012-12-31', '2012-12-31 13:45:11', '0'), ('199', '1', '2012-12-31', '2012-12-31 13:45:21', '0'), ('200', '1', '2012-12-31', '2012-12-31 13:47:27', '0'), ('201', '1', '2012-12-31', '2012-12-31 13:48:04', '0'), ('202', '1', '2012-12-31', '2012-12-31 13:48:49', '0'), ('203', '1', '2012-12-31', '2012-12-31 13:50:19', '0'), ('204', '1', '2012-12-31', '2012-12-31 13:51:38', '0'), ('205', '1', '2012-12-31', '2012-12-31 13:52:08', '0'), ('206', '1', '2012-12-31', '2012-12-31 13:54:17', '0'), ('207', '1', '2012-12-31', '2012-12-31 13:55:08', '0'), ('208', '1', '2012-12-31', '2012-12-31 13:56:11', '0'), ('209', '1', '2012-12-31', '2012-12-31 13:57:15', '0'), ('210', '1', '2012-12-31', '2012-12-31 13:58:38', '0'), ('211', '1', '2012-12-31', '2012-12-31 13:59:22', '0'), ('212', '1', '2012-12-31', '2012-12-31 14:00:11', '0'), ('213', '1', '2012-12-31', '2012-12-31 14:01:11', '0'), ('214', '1', '2012-12-31', '2012-12-31 14:02:46', '0'), ('215', '1', '2012-12-31', '2012-12-31 14:03:20', '0'), ('216', '136', '2012-12-31', '2012-12-31 14:03:42', '0'), ('217', '1', '2012-12-31', '2012-12-31 14:03:45', '0'), ('218', '1', '2012-12-31', '2012-12-31 14:04:42', '0'), ('219', '1', '2012-12-31', '2012-12-31 14:05:17', '0'), ('220', '1', '2012-12-31', '2012-12-31 14:06:01', '0'), ('221', '1', '2012-12-31', '2012-12-31 14:07:13', '0'), ('222', '1', '2012-12-31', '2012-12-31 14:07:29', '0'), ('223', '1', '2012-12-31', '2012-12-31 14:08:39', '0'), ('224', '1', '2012-12-31', '2012-12-31 14:08:59', '0'), ('225', '1', '2012-12-31', '2012-12-31 14:11:07', '0'), ('226', '1', '2012-12-31', '2012-12-31 14:11:34', '0'), ('227', '1', '2012-12-31', '2012-12-31 14:12:15', '0'), ('228', '1', '2012-12-31', '2012-12-31 14:13:38', '0'), ('229', '1', '2012-12-31', '2012-12-31 14:13:51', '0'), ('230', '1', '2012-12-31', '2012-12-31 14:14:26', '0'), ('231', '1', '2012-12-31', '2012-12-31 14:15:06', '0'), ('232', '1', '2012-12-31', '2012-12-31 14:15:34', '0'), ('233', '1', '2012-12-31', '2012-12-31 14:18:36', '0'), ('234', '1', '2012-12-31', '2012-12-31 14:19:38', '0'), ('235', '1', '2012-12-31', '2012-12-31 14:19:55', '0'), ('236', '1', '2012-12-31', '2012-12-31 14:24:53', '0'), ('237', '1', '2012-12-31', '2012-12-31 14:25:12', '0'), ('238', '1', '2012-12-31', '2012-12-31 14:27:50', '0'), ('239', '1', '2012-12-31', '2012-12-31 14:28:57', '0'), ('240', '1', '2012-12-31', '2012-12-31 14:30:07', '0'), ('241', '1', '2012-12-31', '2012-12-31 14:30:55', '0'), ('242', '1', '2012-12-31', '2012-12-31 14:31:14', '0'), ('243', '1', '2012-12-31', '2012-12-31 14:31:47', '0'), ('244', '1', '2012-12-31', '2012-12-31 14:41:35', '0'), ('245', '134', '2012-12-31', '2012-12-31 14:43:01', '0'), ('246', '138', '2012-12-31', '2012-12-31 14:43:15', '0'), ('247', '1', '2012-12-31', '2012-12-31 14:43:19', '0'), ('248', '1', '2012-12-31', '2012-12-31 14:52:21', '0'), ('249', '1', '2012-12-31', '2012-12-31 14:52:26', '0'), ('250', '1', '2012-12-31', '2012-12-31 14:53:16', '0'), ('251', '138', '2012-12-31', '2012-12-31 14:53:22', '0'), ('252', '1', '2012-12-31', '2012-12-31 14:53:24', '0'), ('253', '1', '2012-12-31', '2012-12-31 14:54:17', '0'), ('254', '1', '2012-12-31', '2012-12-31 14:55:25', '0'), ('255', '1', '2012-12-31', '2012-12-31 14:57:10', '0'), ('256', '1', '2013-01-02', '2013-01-02 09:23:34', '0'), ('257', '109', '2013-01-02', '2013-01-02 09:31:31', '0'), ('258', '109', '2013-01-02', '2013-01-02 09:31:40', '0'), ('259', '1', '2013-01-02', '2013-01-02 09:31:41', '1'), ('260', '104', '2013-01-02', '2013-01-02 09:31:42', '1'), ('261', '2', '2013-01-02', '2013-01-02 09:32:13', '1'), ('262', '32', '2013-01-02', '2013-01-02 09:32:21', '1'), ('263', '33', '2013-01-02', '2013-01-02 09:32:46', '1'), ('264', '33', '2013-01-02', '2013-01-02 09:33:51', '1'), ('265', '32', '2013-01-02', '2013-01-02 09:33:51', '1'), ('266', '7', '2013-01-02', '2013-01-02 09:34:15', '1'), ('267', '6', '2013-01-02', '2013-01-02 09:34:30', '1'), ('268', '7', '2013-01-02', '2013-01-02 09:34:30', '1'), ('269', '140', '2013-01-02', '2013-01-02 09:34:36', '1'), ('270', '140', '2013-01-02', '2013-01-02 09:34:48', '1'), ('271', '1', '2013-01-02', '2013-01-02 09:35:58', '1'), ('272', '1', '2013-01-02', '2013-01-02 09:36:27', '1'), ('273', '109', '2013-01-02', '2013-01-02 09:36:33', '1'), ('274', '1', '2013-01-02', '2013-01-02 09:36:35', '1'), ('275', '2', '2013-01-02', '2013-01-02 09:36:50', '1'), ('276', '32', '2013-01-02', '2013-01-02 09:36:53', '1'), ('277', '32', '2013-01-02', '2013-01-02 09:37:02', '1'), ('278', '32', '2013-01-02', '2013-01-02 09:37:07', '1'), ('279', '1', '2013-01-02', '2013-01-02 09:38:17', '1'), ('280', '32', '2013-01-02', '2013-01-02 09:38:23', '1'), ('281', '32', '2013-01-02', '2013-01-02 09:38:26', '1'), ('282', '32', '2013-01-02', '2013-01-02 09:38:28', '1'), ('283', '27', '2013-01-02', '2013-01-02 09:38:35', '1'), ('284', '28', '2013-01-02', '2013-01-02 09:38:35', '1'), ('285', '32', '2013-01-02', '2013-01-02 09:38:46', '1'), ('286', '32', '2013-01-02', '2013-01-02 09:38:50', '1'), ('287', '32', '2013-01-02', '2013-01-02 09:38:53', '1'), ('288', '32', '2013-01-02', '2013-01-02 09:39:01', '1'), ('289', '139', '2013-01-02', '2013-01-02 09:39:01', '1'), ('290', '32', '2013-01-02', '2013-01-02 09:39:08', '1'), ('291', '32', '2013-01-02', '2013-01-02 09:39:11', '1'), ('292', '139', '2013-01-02', '2013-01-02 09:39:12', '1'), ('293', '139', '2013-01-02', '2013-01-02 09:39:29', '1'), ('294', '2', '2013-01-02', '2013-01-02 09:40:04', '1'), ('295', '51', '2013-01-02', '2013-01-02 09:40:20', '1'), ('296', '2', '2013-01-02', '2013-01-02 09:40:30', '1'), ('297', '32', '2013-01-02', '2013-01-02 09:40:45', '1'), ('298', '100', '2013-01-02', '2013-01-02 09:40:49', '1'), ('299', '32', '2013-01-02', '2013-01-02 09:40:56', '1'), ('300', '32', '2013-01-02', '2013-01-02 09:40:58', '1'), ('301', '32', '2013-01-02', '2013-01-02 09:41:06', '1'), ('302', '32', '2013-01-02', '2013-01-02 09:41:34', '1'), ('303', '32', '2013-01-02', '2013-01-02 09:41:39', '1'), ('304', '126', '2013-01-02', '2013-01-02 09:41:39', '1'), ('305', '32', '2013-01-02', '2013-01-02 09:41:42', '1'), ('306', '32', '2013-01-02', '2013-01-02 09:41:44', '1'), ('307', '32', '2013-01-02', '2013-01-02 09:41:58', '1'), ('308', '32', '2013-01-02', '2013-01-02 09:42:10', '1'), ('309', '1', '2013-01-02', '2013-01-02 09:42:36', '1'), ('310', '1', '2013-01-02', '2013-01-02 09:44:44', '1'), ('311', '1', '2013-01-02', '2013-01-02 09:45:44', '1'), ('312', '1', '2013-01-02', '2013-01-02 09:47:16', '1'), ('313', '1', '2013-01-02', '2013-01-02 09:47:19', '1'), ('314', '1', '2013-01-02', '2013-01-02 09:48:00', '1'), ('315', '1', '2013-01-02', '2013-01-02 09:48:17', '1'), ('316', '1', '2013-01-02', '2013-01-02 09:50:51', '1'), ('317', '1', '2013-01-02', '2013-01-02 09:52:36', '1'), ('318', '1', '2013-01-02', '2013-01-02 09:53:56', '1'), ('319', '1', '2013-01-02', '2013-01-02 09:55:29', '1'), ('320', '134', '2013-01-02', '2013-01-02 09:55:36', '1'), ('321', '1', '2013-01-02', '2013-01-02 10:19:25', '1'), ('322', '1', '2013-01-02', '2013-01-02 10:24:16', '1'), ('323', '1', '2013-01-02', '2013-01-02 10:30:58', '1'), ('324', '1', '2013-01-02', '2013-01-02 10:32:36', '1'), ('325', '1', '2013-01-02', '2013-01-02 10:34:16', '1'), ('326', '1', '2013-01-02', '2013-01-02 10:34:59', '1'), ('327', '1', '2013-01-02', '2013-01-02 10:35:16', '1'), ('328', '1', '2013-01-02', '2013-01-02 10:35:41', '1'), ('329', '1', '2013-01-02', '2013-01-02 10:36:02', '1'), ('330', '1', '2013-01-02', '2013-01-02 10:45:04', '1'), ('331', '1', '2013-01-02', '2013-01-02 10:45:59', '1'), ('332', '1', '2013-01-02', '2013-01-02 10:46:35', '1'), ('333', '1', '2013-01-02', '2013-01-02 11:54:21', '1'), ('334', '1', '2013-01-02', '2013-01-02 12:01:45', '1'), ('335', '1', '2013-01-02', '2013-01-02 12:04:08', '1'), ('336', '1', '2013-01-02', '2013-01-02 12:07:07', '1'), ('337', '1', '2013-01-02', '2013-01-02 12:11:44', '1'), ('338', '1', '2013-01-02', '2013-01-02 12:12:10', '1'), ('339', '1', '2013-01-02', '2013-01-02 12:12:19', '1'), ('340', '1', '2013-01-02', '2013-01-02 12:13:02', '1'), ('341', '109', '2013-01-02', '2013-01-02 12:13:28', '1'), ('342', '1', '2013-01-02', '2013-01-02 12:13:28', '0'), ('343', '1', '2013-01-02', '2013-01-02 12:13:42', '0'), ('344', '1', '2013-01-02', '2013-01-02 12:13:53', '0'), ('345', '1', '2013-01-02', '2013-01-02 12:17:39', '0'), ('346', '1', '2013-01-02', '2013-01-02 12:17:57', '0'), ('347', '1', '2013-01-02', '2013-01-02 12:18:25', '0'), ('348', '1', '2013-01-02', '2013-01-02 12:18:59', '0'), ('349', '1', '2013-01-02', '2013-01-02 12:19:27', '0'), ('350', '1', '2013-01-02', '2013-01-02 12:20:40', '0'), ('351', '1', '2013-01-02', '2013-01-02 12:22:29', '0'), ('352', '1', '2013-01-02', '2013-01-02 12:22:31', '0'), ('353', '1', '2013-01-02', '2013-01-02 12:23:05', '0'), ('354', '1', '2013-01-02', '2013-01-02 12:25:36', '0'), ('355', '1', '2013-01-02', '2013-01-02 12:26:56', '0'), ('356', '1', '2013-01-02', '2013-01-02 12:27:54', '0'), ('357', '1', '2013-01-02', '2013-01-02 12:29:17', '0'), ('358', '1', '2013-01-02', '2013-01-02 12:30:09', '0'), ('359', '1', '2013-01-02', '2013-01-02 12:30:55', '0'), ('360', '1', '2013-01-02', '2013-01-02 12:31:15', '0'), ('361', '1', '2013-01-02', '2013-01-02 12:31:53', '0'), ('362', '1', '2013-01-02', '2013-01-02 12:32:30', '0'), ('363', '1', '2013-01-02', '2013-01-02 12:33:31', '0'), ('364', '1', '2013-01-02', '2013-01-02 12:34:01', '0'), ('365', '1', '2013-01-02', '2013-01-02 12:35:39', '0'), ('366', '1', '2013-01-02', '2013-01-02 12:36:10', '0'), ('367', '1', '2013-01-02', '2013-01-02 12:36:51', '0'), ('368', '1', '2013-01-02', '2013-01-02 12:37:50', '0'), ('369', '1', '2013-01-02', '2013-01-02 12:38:55', '0'), ('370', '1', '2013-01-02', '2013-01-02 12:39:51', '0'), ('371', '1', '2013-01-02', '2013-01-02 12:45:28', '0'), ('372', '1', '2013-01-02', '2013-01-02 12:47:46', '0'), ('373', '1', '2013-01-02', '2013-01-02 12:48:11', '0'), ('374', '1', '2013-01-02', '2013-01-02 12:49:18', '0'), ('375', '1', '2013-01-02', '2013-01-02 12:49:37', '0'), ('376', '1', '2013-01-02', '2013-01-02 12:52:08', '0'), ('377', '1', '2013-01-02', '2013-01-02 12:52:25', '0'), ('378', '1', '2013-01-02', '2013-01-02 12:53:11', '0'), ('379', '1', '2013-01-02', '2013-01-02 12:54:09', '0'), ('380', '1', '2013-01-02', '2013-01-02 12:55:44', '0'), ('381', '1', '2013-01-02', '2013-01-02 12:56:41', '0'), ('382', '1', '2013-01-02', '2013-01-02 12:58:00', '0'), ('383', '1', '2013-01-02', '2013-01-02 12:58:24', '0'), ('384', '1', '2013-01-02', '2013-01-02 12:58:41', '0'), ('385', '1', '2013-01-02', '2013-01-02 12:58:55', '0'), ('386', '1', '2013-01-02', '2013-01-02 12:59:20', '0'), ('387', '1', '2013-01-02', '2013-01-02 12:59:41', '0'), ('388', '1', '2013-01-02', '2013-01-02 12:59:48', '0'), ('389', '1', '2013-01-02', '2013-01-02 13:00:00', '0'), ('390', '1', '2013-01-02', '2013-01-02 13:00:18', '0'), ('391', '1', '2013-01-02', '2013-01-02 13:00:56', '0'), ('392', '1', '2013-01-02', '2013-01-02 13:01:29', '0'), ('393', '1', '2013-01-02', '2013-01-02 13:01:54', '0'), ('394', '1', '2013-01-02', '2013-01-02 13:02:14', '0'), ('395', '138', '2013-01-02', '2013-01-02 13:02:22', '0'), ('396', '1', '2013-01-02', '2013-01-02 13:02:25', '0'), ('397', '1', '2013-01-02', '2013-01-02 13:04:28', '0'), ('398', '1', '2013-01-02', '2013-01-02 13:04:50', '0'), ('399', '1', '2013-01-02', '2013-01-02 13:09:07', '0'), ('400', '1', '2013-01-02', '2013-01-02 13:10:16', '0'), ('401', '1', '2013-01-02', '2013-01-02 13:11:18', '0'), ('402', '1', '2013-01-02', '2013-01-02 13:15:31', '0'), ('403', '1', '2013-01-02', '2013-01-02 13:15:34', '0'), ('404', '1', '2013-01-02', '2013-01-02 13:18:03', '0'), ('405', '1', '2013-01-02', '2013-01-02 13:18:55', '0'), ('406', '1', '2013-01-02', '2013-01-02 13:20:00', '0'), ('407', '1', '2013-01-02', '2013-01-02 13:21:33', '0'), ('408', '1', '2013-01-02', '2013-01-02 13:23:02', '0'), ('409', '109', '2013-01-02', '2013-01-02 13:32:20', '0'), ('410', '109', '2013-01-02', '2013-01-02 13:32:27', '0'), ('411', '1', '2013-01-02', '2013-01-02 13:32:29', '1'), ('412', '1', '2013-01-02', '2013-01-02 13:32:38', '1'), ('413', '1', '2013-01-02', '2013-01-02 13:53:15', '1'), ('414', '1', '2013-01-02', '2013-01-02 13:56:52', '1'), ('415', '1', '2013-01-02', '2013-01-02 14:03:31', '1'), ('416', '1', '2013-01-02', '2013-01-02 14:04:43', '1'), ('417', '1', '2013-01-02', '2013-01-02 14:05:06', '1'), ('418', '1', '2013-01-02', '2013-01-02 14:06:47', '1'), ('419', '1', '2013-01-02', '2013-01-02 14:07:15', '1'), ('420', '1', '2013-01-02', '2013-01-02 14:07:42', '1'), ('421', '1', '2013-01-02', '2013-01-02 14:13:52', '1'), ('422', '1', '2013-01-02', '2013-01-02 14:15:30', '1'), ('423', '1', '2013-01-02', '2013-01-02 14:16:13', '1'), ('424', '1', '2013-01-02', '2013-01-02 14:16:33', '1'), ('425', '1', '2013-01-02', '2013-01-02 14:17:01', '1'), ('426', '1', '2013-01-02', '2013-01-02 14:17:23', '1'), ('427', '1', '2013-01-02', '2013-01-02 14:18:52', '1'), ('428', '1', '2013-01-02', '2013-01-02 14:18:55', '1'), ('429', '1', '2013-01-02', '2013-01-02 14:19:44', '1'), ('430', '1', '2013-01-02', '2013-01-02 14:20:13', '1'), ('431', '1', '2013-01-02', '2013-01-02 14:20:25', '1'), ('432', '1', '2013-01-02', '2013-01-02 14:22:00', '1'), ('433', '1', '2013-01-02', '2013-01-02 14:23:46', '0'), ('434', '1', '2013-01-02', '2013-01-02 14:36:44', '1'), ('435', '1', '2013-01-02', '2013-01-02 14:37:00', '0'), ('436', '1', '2013-01-02', '2013-01-02 14:48:52', '1'), ('437', '1', '2013-01-02', '2013-01-02 14:51:13', '1'), ('438', '1', '2013-01-02', '2013-01-02 14:52:12', '1'), ('439', '1', '2013-01-02', '2013-01-02 14:53:05', '1'), ('440', '1', '2013-01-02', '2013-01-02 14:53:48', '1'), ('441', '1', '2013-01-02', '2013-01-02 14:54:45', '1'), ('442', '1', '2013-01-02', '2013-01-02 14:56:45', '1'), ('443', '1', '2013-01-02', '2013-01-02 14:58:01', '1'), ('444', '1', '2013-01-02', '2013-01-02 15:11:46', '1'), ('445', '1', '2013-01-02', '2013-01-02 15:11:54', '1'), ('446', '1', '2013-01-02', '2013-01-02 15:12:52', '1'), ('447', '1', '2013-01-02', '2013-01-02 15:13:35', '1'), ('448', '1', '2013-01-02', '2013-01-02 15:13:57', '1'), ('449', '1', '2013-01-02', '2013-01-02 15:14:41', '1'), ('450', '1', '2013-01-02', '2013-01-02 15:15:58', '1'), ('451', '1', '2013-01-02', '2013-01-02 15:20:43', '1'), ('452', '1', '2013-01-02', '2013-01-02 16:02:44', '1'), ('453', '1', '2013-01-02', '2013-01-02 16:13:53', '1'), ('454', '1', '2013-01-02', '2013-01-02 16:15:07', '1'), ('455', '1', '2013-01-02', '2013-01-02 16:34:31', '1'), ('456', '1', '2013-01-02', '2013-01-02 16:36:14', '1'), ('457', '1', '2013-01-02', '2013-01-02 16:38:31', '1'), ('458', '1', '2013-01-02', '2013-01-02 16:38:46', '1'), ('459', '1', '2013-01-02', '2013-01-02 16:40:35', '1'), ('460', '1', '2013-01-02', '2013-01-02 16:41:49', '1'), ('461', '1', '2013-01-02', '2013-01-02 16:42:55', '1'), ('462', '1', '2013-01-02', '2013-01-02 16:45:37', '1'), ('463', '1', '2013-01-02', '2013-01-02 16:48:33', '1'), ('464', '1', '2013-01-02', '2013-01-02 16:50:30', '1'), ('465', '1', '2013-01-02', '2013-01-02 16:51:54', '1'), ('466', '1', '2013-01-02', '2013-01-02 16:54:19', '1'), ('467', '1', '2013-01-02', '2013-01-02 16:54:41', '1'), ('468', '1', '2013-01-02', '2013-01-02 16:54:44', '1'), ('469', '1', '2013-01-02', '2013-01-02 16:56:05', '1'), ('470', '1', '2013-01-02', '2013-01-02 16:57:01', '1'), ('471', '1', '2013-01-02', '2013-01-02 16:59:04', '1'), ('472', '1', '2013-01-02', '2013-01-02 16:59:26', '1'), ('473', '1', '2013-01-02', '2013-01-02 16:59:40', '1'), ('474', '134', '2013-01-02', '2013-01-02 17:26:01', '1'), ('475', '2', '2013-01-02', '2013-01-02 17:27:44', '1'), ('476', '7', '2013-01-02', '2013-01-02 17:27:50', '1'), ('477', '1', '2013-01-02', '2013-01-02 17:28:16', '1'), ('478', '1', '2013-01-02', '2013-01-02 17:31:00', '1'), ('479', '134', '2013-01-02', '2013-01-02 17:31:07', '1'), ('480', '136', '2013-01-02', '2013-01-02 17:31:19', '1'), ('481', '136', '2013-01-02', '2013-01-02 17:34:16', '1'), ('482', '1', '2013-01-02', '2013-01-02 17:34:22', '1'), ('483', '138', '2013-01-02', '2013-01-02 17:34:49', '1'), ('484', '135', '2013-01-02', '2013-01-02 17:34:57', '1'), ('485', '134', '2013-01-02', '2013-01-02 17:35:06', '1'), ('486', '137', '2013-01-02', '2013-01-02 17:35:11', '1'), ('487', '136', '2013-01-02', '2013-01-02 17:35:14', '1'), ('488', '1', '2013-01-02', '2013-01-02 17:35:17', '1'), ('489', '1', '2013-01-02', '2013-01-02 17:36:03', '1'), ('490', '1', '2013-01-02', '2013-01-02 17:38:17', '1'), ('491', '1', '2013-01-02', '2013-01-02 17:39:46', '1'), ('492', '1', '2013-01-02', '2013-01-02 17:39:52', '1'), ('493', '1', '2013-01-02', '2013-01-02 17:40:30', '1'), ('494', '1', '2013-01-02', '2013-01-02 17:40:51', '1'), ('495', '1', '2013-01-02', '2013-01-02 17:40:52', '1'), ('496', '1', '2013-01-02', '2013-01-02 17:40:57', '1'), ('497', '1', '2013-01-02', '2013-01-02 17:41:01', '1'), ('498', '1', '2013-01-02', '2013-01-02 17:42:26', '1'), ('499', '109', '2013-01-02', '2013-01-02 17:43:03', '1'), ('500', '1', '2013-01-02', '2013-01-02 17:43:05', '0'), ('501', '1', '2013-01-02', '2013-01-02 17:45:21', '0'), ('502', '1', '2013-01-02', '2013-01-02 17:46:18', '0'), ('503', '1', '2013-01-02', '2013-01-02 17:47:28', '0'), ('504', '1', '2013-01-02', '2013-01-02 17:47:38', '0'), ('505', '1', '2013-01-02', '2013-01-02 17:48:51', '0'), ('506', '1', '2013-01-02', '2013-01-02 17:50:08', '0'), ('507', '1', '2013-01-02', '2013-01-02 17:52:45', '0'), ('508', '109', '2013-01-02', '2013-01-02 17:53:04', '0'), ('509', '109', '2013-01-02', '2013-01-02 17:53:17', '0'), ('510', '1', '2013-01-02', '2013-01-02 17:53:20', '1'), ('511', '7', '2013-01-02', '2013-01-02 17:53:27', '1'), ('512', '1', '2013-01-02', '2013-01-02 17:54:09', '1'), ('513', '1', '2013-01-02', '2013-01-02 17:55:36', '1'), ('514', '109', '2013-01-02', '2013-01-02 17:56:00', '1'), ('515', '1', '2013-01-02', '2013-01-02 17:56:00', '0'), ('516', '137', '2013-01-02', '2013-01-02 17:56:07', '0'), ('517', '1', '2013-01-02', '2013-01-02 17:56:21', '0'), ('518', '1', '2013-01-02', '2013-01-02 17:58:53', '0'), ('519', '1', '2013-01-02', '2013-01-02 18:00:28', '0'), ('520', '1', '2013-01-02', '2013-01-02 18:00:30', '0'), ('521', '1', '2013-01-02', '2013-01-02 18:00:55', '0'), ('522', '1', '2013-01-04', '2013-01-04 12:55:45', '0');
COMMIT;

-- ----------------------------
--  Table structure for `PageThemeStyles`
-- ----------------------------
DROP TABLE IF EXISTS `PageThemeStyles`;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PageThemes`
-- ----------------------------
DROP TABLE IF EXISTS `PageThemes`;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PageThemes`
-- ----------------------------
BEGIN;
INSERT INTO `PageThemes` VALUES ('1', 'default', 'Plain Yogurt', 'Plain Yogurt is concrete5\'s default theme.', '0'), ('2', 'greensalad', 'Green Salad Theme', 'This is concrete5\'s Green Salad site theme.', '0'), ('3', 'dark_chocolate', 'Dark Chocolate', 'Dark Chocolate is concrete5\'s default theme in black.', '0'), ('4', 'greek_yogurt', 'Greek Yogurt', 'An elegant theme for concrete5.', '0'), ('5', 'alp_fitre', 'Greek Yogurt', 'An elegant theme for concrete5.', '0');
COMMIT;

-- ----------------------------
--  Table structure for `PageTypeAttributes`
-- ----------------------------
DROP TABLE IF EXISTS `PageTypeAttributes`;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PageTypeAttributes`
-- ----------------------------
BEGIN;
INSERT INTO `PageTypeAttributes` VALUES ('8', '1'), ('8', '2'), ('8', '3'), ('8', '4'), ('8', '5'), ('8', '6'), ('8', '7'), ('8', '8'), ('8', '9'), ('8', '14');
COMMIT;

-- ----------------------------
--  Table structure for `PageTypes`
-- ----------------------------
DROP TABLE IF EXISTS `PageTypes`;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PageTypes`
-- ----------------------------
BEGIN;
INSERT INTO `PageTypes` VALUES ('1', 'core_stack', 'main.png', 'Stack', '1', '0'), ('2', 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', '1', '0'), ('3', 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', '1', '0'), ('4', 'blog_entry', 'template1.png', 'Blog Entry', '0', '0'), ('5', 'full', 'main.png', 'Full', '0', '0'), ('6', 'left_sidebar', 'template1.png', 'Left Sidebar', '0', '0'), ('7', 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', '0', '0'), ('8', 'anasayfa', 'template2.png', 'Anasayfa', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `PageWorkflowProgress`
-- ----------------------------
DROP TABLE IF EXISTS `PageWorkflowProgress`;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Pages`
-- ----------------------------
DROP TABLE IF EXISTS `Pages`;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Pages`
-- ----------------------------
BEGIN;
INSERT INTO `Pages` VALUES ('1', '0', '1', '0', null, null, null, '1', '1', 'OVERRIDE', null, '0', null, '0', '1', '16', '0', '0', '0', '-1', '0', '0', '0'), ('2', '0', '1', '0', null, null, null, '1', '2', 'OVERRIDE', '/dashboard/view.php', '0', null, '0', '1', '13', '0', '0', '0', '-1', '0', '0', '1'), ('3', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/composer/view.php', '0', null, '0', '1', '2', '0', '2', '0', '-1', '0', '0', '1'), ('4', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/composer/write.php', '0', null, '0', '1', '0', '0', '3', '0', '-1', '0', '0', '1'), ('5', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/composer/drafts.php', '0', null, '0', '1', '0', '1', '3', '0', '-1', '0', '0', '1'), ('6', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/sitemap/view.php', '0', null, '0', '1', '3', '1', '2', '0', '-1', '0', '0', '1'), ('7', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/sitemap/full.php', '0', null, '0', '1', '0', '0', '6', '0', '-1', '0', '0', '1'), ('8', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/sitemap/explore.php', '0', null, '0', '1', '0', '1', '6', '0', '-1', '0', '0', '1'), ('9', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/sitemap/search.php', '0', null, '0', '1', '0', '2', '6', '0', '-1', '0', '0', '1'), ('10', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/files/view.php', '0', null, '0', '1', '4', '2', '2', '0', '-1', '0', '0', '1'), ('11', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/files/search.php', '0', null, '0', '1', '0', '0', '10', '0', '-1', '0', '0', '1'), ('12', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/files/attributes.php', '0', null, '0', '1', '0', '1', '10', '0', '-1', '0', '0', '1'), ('13', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/files/sets.php', '0', null, '0', '1', '0', '2', '10', '0', '-1', '0', '0', '1'), ('14', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/files/add_set.php', '0', null, '0', '1', '0', '3', '10', '0', '-1', '0', '0', '1'), ('15', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/view.php', '0', null, '0', '1', '6', '3', '2', '0', '-1', '0', '0', '1'), ('16', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/search.php', '0', null, '0', '1', '0', '0', '15', '0', '-1', '0', '0', '1'), ('17', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/groups.php', '0', null, '0', '1', '0', '1', '15', '0', '-1', '0', '0', '1'), ('18', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/attributes.php', '0', null, '0', '1', '0', '2', '15', '0', '-1', '0', '0', '1'), ('19', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/add.php', '0', null, '0', '1', '0', '3', '15', '0', '-1', '0', '0', '1'), ('20', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/add_group.php', '0', null, '0', '1', '0', '4', '15', '0', '-1', '0', '0', '1'), ('21', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/users/group_sets.php', '0', null, '0', '1', '0', '5', '15', '0', '-1', '0', '0', '1'), ('22', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/reports.php', '0', null, '0', '1', '4', '4', '2', '0', '-1', '0', '0', '1'), ('23', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/reports/statistics.php', '0', null, '0', '1', '0', '0', '22', '0', '-1', '0', '0', '1'), ('24', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/reports/forms.php', '0', null, '0', '1', '0', '1', '22', '0', '-1', '0', '0', '1'), ('25', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/reports/surveys.php', '0', null, '0', '1', '0', '2', '22', '0', '-1', '0', '0', '1'), ('26', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/reports/logs.php', '0', null, '0', '1', '0', '3', '22', '0', '-1', '0', '0', '1'), ('27', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/view.php', '0', null, '0', '1', '4', '5', '2', '0', '-1', '0', '0', '1'), ('28', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/themes/view.php', '0', null, '0', '1', '3', '0', '27', '0', '-1', '0', '0', '1'), ('29', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/themes/add.php', '0', null, '0', '1', '0', '0', '28', '0', '-1', '0', '0', '1'), ('30', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/themes/inspect.php', '0', null, '0', '1', '0', '1', '28', '0', '-1', '0', '0', '1'), ('31', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/themes/customize.php', '0', null, '0', '1', '0', '2', '28', '0', '-1', '0', '0', '1'), ('32', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/types/view.php', '0', null, '0', '1', '2', '1', '27', '0', '-1', '0', '0', '1'), ('33', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/types/add.php', '0', null, '0', '1', '0', '0', '32', '0', '-1', '0', '0', '1'), ('34', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/attributes.php', '0', null, '0', '1', '0', '2', '27', '0', '-1', '0', '0', '1'), ('35', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/single.php', '0', null, '0', '1', '0', '3', '27', '0', '-1', '0', '0', '1'), ('36', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/workflow/view.php', '0', null, '0', '1', '2', '6', '2', '0', '-1', '0', '0', '1'), ('37', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/workflow/list.php', '0', null, '0', '1', '0', '0', '36', '0', '-1', '0', '0', '1'), ('38', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/workflow/me.php', '0', null, '0', '1', '0', '1', '36', '0', '-1', '0', '0', '1'), ('39', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/blocks/view.php', '0', null, '0', '1', '3', '7', '2', '0', '-1', '0', '0', '1'), ('40', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/blocks/stacks/view.php', '0', null, '0', '1', '1', '0', '39', '0', '-1', '0', '0', '1'), ('41', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/blocks/permissions.php', '0', null, '0', '1', '0', '1', '39', '0', '-1', '0', '0', '1'), ('42', '0', '1', '0', null, null, null, '1', '42', 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', '0', null, '0', '1', '0', '0', '40', '0', '-1', '0', '0', '1'), ('43', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/blocks/types/view.php', '0', null, '0', '1', '0', '2', '39', '0', '-1', '0', '0', '1'), ('44', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/extend/view.php', '0', null, '0', '1', '5', '8', '2', '0', '-1', '0', '0', '1'), ('45', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/news.php', '0', null, '0', '1', '0', '9', '2', '0', '-1', '0', '0', '1'), ('46', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/extend/install.php', '0', null, '0', '1', '0', '0', '44', '0', '-1', '0', '0', '1'), ('47', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/extend/update.php', '0', null, '0', '1', '0', '1', '44', '0', '-1', '0', '0', '1'), ('48', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/extend/connect.php', '0', null, '0', '1', '0', '2', '44', '0', '-1', '0', '0', '1'), ('49', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/extend/themes.php', '0', null, '0', '1', '0', '3', '44', '0', '-1', '0', '0', '1'), ('50', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/extend/add-ons.php', '0', null, '0', '1', '0', '4', '44', '0', '-1', '0', '0', '1'), ('51', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/view.php', '0', null, '0', '1', '9', '10', '2', '0', '-1', '0', '0', '1'), ('52', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/view.php', '0', null, '0', '1', '6', '0', '51', '0', '-1', '0', '0', '1'), ('53', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/site_name.php', '0', null, '0', '1', '0', '0', '52', '0', '-1', '0', '0', '1'), ('54', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/icons.php', '0', null, '0', '1', '0', '1', '52', '0', '-1', '0', '0', '1'), ('55', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/editor.php', '0', null, '0', '1', '0', '2', '52', '0', '-1', '0', '0', '1'), ('56', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/multilingual/view.php', '0', null, '0', '1', '0', '3', '52', '0', '-1', '0', '0', '1'), ('57', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/timezone.php', '0', null, '0', '1', '0', '4', '52', '0', '-1', '0', '0', '1'), ('58', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/basics/interface.php', '0', null, '0', '1', '0', '5', '52', '0', '-1', '0', '0', '1'), ('59', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/seo/view.php', '0', null, '0', '1', '5', '1', '51', '0', '-1', '0', '0', '1'), ('60', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/seo/urls.php', '0', null, '0', '1', '0', '0', '59', '0', '-1', '0', '0', '1'), ('61', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', '0', null, '0', '1', '0', '1', '59', '0', '-1', '0', '0', '1'), ('62', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/seo/tracking_codes.php', '0', null, '0', '1', '0', '2', '59', '0', '-1', '0', '0', '1'), ('63', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/seo/statistics.php', '0', null, '0', '1', '0', '3', '59', '0', '-1', '0', '0', '1'), ('64', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/seo/search_index.php', '0', null, '0', '1', '0', '4', '59', '0', '-1', '0', '0', '1'), ('65', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/optimization/view.php', '0', null, '0', '1', '3', '2', '51', '0', '-1', '0', '0', '1'), ('66', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/optimization/cache.php', '0', null, '0', '1', '0', '0', '65', '0', '-1', '0', '0', '1'), ('67', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/optimization/clear_cache.php', '0', null, '0', '1', '0', '1', '65', '0', '-1', '0', '0', '1'), ('68', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/optimization/jobs.php', '0', null, '0', '1', '0', '2', '65', '0', '-1', '0', '0', '1'), ('69', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/view.php', '0', null, '0', '1', '10', '3', '51', '0', '-1', '0', '0', '1'), ('70', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/site.php', '0', null, '0', '1', '0', '0', '69', '0', '-1', '0', '0', '1'), ('71', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/files.php', '0', null, '0', '1', '0', '1', '69', '0', '-1', '0', '0', '1'), ('72', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/file_types.php', '0', null, '0', '1', '0', '2', '69', '0', '-1', '0', '0', '1'), ('73', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/tasks.php', '0', null, '0', '1', '0', '3', '69', '0', '-1', '0', '0', '1'), ('74', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/users.php', '0', null, '0', '1', '0', '4', '69', '0', '-1', '0', '0', '1'), ('75', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/advanced.php', '0', null, '0', '1', '0', '5', '69', '0', '-1', '0', '0', '1'), ('76', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', '0', null, '0', '1', '0', '6', '69', '0', '-1', '0', '0', '1'), ('77', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/captcha.php', '0', null, '0', '1', '0', '7', '69', '0', '-1', '0', '0', '1'), ('78', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/antispam.php', '0', null, '0', '1', '0', '8', '69', '0', '-1', '0', '0', '1'), ('79', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', '0', null, '0', '1', '0', '9', '69', '0', '-1', '0', '0', '1'), ('80', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/registration/view.php', '0', null, '0', '1', '3', '4', '51', '0', '-1', '0', '0', '1'), ('81', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/registration/postlogin.php', '0', null, '0', '1', '0', '0', '80', '0', '-1', '0', '0', '1'), ('82', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/registration/profiles.php', '0', null, '0', '1', '0', '1', '80', '0', '-1', '0', '0', '1'), ('83', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/registration/public_registration.php', '0', null, '0', '1', '0', '2', '80', '0', '-1', '0', '0', '1'), ('84', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/mail/view.php', '0', null, '0', '1', '2', '5', '51', '0', '-1', '0', '0', '1'), ('85', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/mail/method.php', '0', null, '0', '1', '0', '0', '84', '0', '-1', '0', '0', '1'), ('86', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/mail/importers.php', '0', null, '0', '1', '0', '1', '84', '0', '-1', '0', '0', '1'), ('87', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/attributes/view.php', '0', null, '0', '1', '2', '6', '51', '0', '-1', '0', '0', '1'), ('88', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/attributes/sets.php', '0', null, '0', '1', '0', '0', '87', '0', '-1', '0', '0', '1'), ('89', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/attributes/types.php', '0', null, '0', '1', '0', '1', '87', '0', '-1', '0', '0', '1'), ('90', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/environment/view.php', '0', null, '0', '1', '5', '7', '51', '0', '-1', '0', '0', '1'), ('91', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/environment/info.php', '0', null, '0', '1', '0', '0', '90', '0', '-1', '0', '0', '1'), ('92', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/environment/debug.php', '0', null, '0', '1', '0', '1', '90', '0', '-1', '0', '0', '1'), ('93', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/environment/logging.php', '0', null, '0', '1', '0', '2', '90', '0', '-1', '0', '0', '1'), ('94', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/environment/file_storage_locations.php', '0', null, '0', '1', '0', '3', '90', '0', '-1', '0', '0', '1'), ('95', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/environment/proxy.php', '0', null, '0', '1', '0', '4', '90', '0', '-1', '0', '0', '1'), ('96', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/backup_restore/view.php', '0', null, '0', '1', '3', '8', '51', '0', '-1', '0', '0', '1'), ('97', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/backup_restore/backup.php', '0', null, '0', '1', '0', '0', '96', '0', '-1', '0', '0', '1'), ('98', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/backup_restore/update.php', '0', null, '0', '1', '0', '1', '96', '0', '-1', '0', '0', '1'), ('99', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/system/backup_restore/database.php', '0', null, '0', '1', '0', '2', '96', '0', '-1', '0', '0', '1'), ('100', '0', '1', '0', null, null, null, '1', '2', 'PARENT', '/dashboard/pages/types/composer.php', '0', null, '0', '1', '0', '1', '32', '0', '-1', '0', '0', '1'), ('101', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('102', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('103', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('104', '0', '1', '0', null, null, null, '1', '2', 'PARENT', null, '0', null, '0', '1', '0', '11', '2', '0', '-1', '0', '0', '1'), ('105', '0', '1', '0', null, null, null, '1', '2', 'PARENT', null, '0', null, '0', '1', '0', '12', '2', '0', '-1', '0', '0', '1'), ('106', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/!drafts/view.php', '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '1'), ('107', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/!trash/view.php', '0', null, '0', '1', '4', '0', '0', '0', '-1', '0', '0', '1'), ('108', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/!stacks/view.php', '0', null, '0', '1', '3', '0', '0', '0', '-1', '0', '0', '1'), ('109', '0', '1', '0', null, null, null, '1', '109', 'OVERRIDE', '/login.php', '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '1'), ('110', '0', '1', '0', null, null, null, '1', '110', 'OVERRIDE', '/register.php', '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '1'), ('111', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/profile/view.php', '0', null, '0', '1', '4', '0', '1', '0', '-1', '0', '0', '1'), ('112', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/profile/edit.php', '0', null, '0', '1', '0', '0', '111', '0', '-1', '0', '0', '1'), ('113', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/profile/avatar.php', '0', null, '0', '1', '0', '1', '111', '0', '-1', '0', '0', '1'), ('114', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/profile/messages.php', '0', null, '0', '1', '0', '2', '111', '0', '-1', '0', '0', '1'), ('115', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/profile/friends.php', '0', null, '0', '1', '0', '3', '111', '0', '-1', '0', '0', '1'), ('116', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/page_not_found.php', '0', null, '0', '1', '0', '1', '0', '0', '-1', '0', '0', '1'), ('117', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/page_forbidden.php', '0', null, '0', '1', '0', '1', '0', '0', '-1', '0', '0', '1'), ('118', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/download_file.php', '0', null, '0', '1', '0', '1', '1', '0', '-1', '0', '0', '1'), ('119', '0', '1', '0', null, null, null, '1', '1', 'PARENT', '/members.php', '0', null, '0', '1', '0', '2', '1', '0', '-1', '0', '0', '1'), ('120', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '0', '108', '0', '-1', '0', '0', '1'), ('121', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '1', '108', '0', '-1', '0', '0', '1'), ('122', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '2', '108', '0', '-1', '0', '0', '1'), ('123', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('124', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('125', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('126', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('127', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '0', '2', '0', '107', '0', '-1', '0', '0', '1'), ('128', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '0', '2', '1', '107', '0', '-1', '0', '0', '1'), ('129', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '0', '0', '2', '107', '0', '-1', '0', '0', '1'), ('130', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '0', '127', '0', '-1', '0', '0', '1'), ('131', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '1', '127', '0', '-1', '0', '0', '1'), ('132', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '0', '128', '0', '-1', '0', '0', '1'), ('133', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '1', '128', '0', '-1', '0', '0', '1'), ('134', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '6', '1', '0', '-1', '0', '0', '0'), ('135', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '7', '1', '0', '-1', '0', '0', '0'), ('136', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '8', '1', '0', '-1', '0', '0', '0'), ('137', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '9', '1', '0', '-1', '0', '0', '0'), ('138', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '1', '0', '10', '1', '0', '-1', '0', '0', '0'), ('139', '1', null, '0', null, null, null, '1', '0', 'PARENT', null, '0', null, '0', '1', '0', '0', '0', '0', '-1', '0', '0', '0'), ('140', '0', '1', '0', null, null, null, '1', '1', 'PARENT', null, '0', null, '0', '0', '0', '3', '107', '0', '-1', '0', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccess`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccess`;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`),
  KEY `paID_peID` (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAccess`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAccess` VALUES ('1', '1'), ('2', '1'), ('3', '1'), ('4', '1'), ('5', '1'), ('6', '1'), ('7', '1'), ('8', '1'), ('9', '1'), ('10', '1'), ('11', '1'), ('12', '1'), ('13', '1'), ('14', '1'), ('15', '1'), ('16', '1'), ('17', '1'), ('18', '1'), ('19', '1'), ('20', '1'), ('21', '1'), ('22', '1'), ('23', '1'), ('24', '1'), ('25', '1'), ('26', '1'), ('27', '1'), ('28', '1'), ('29', '1'), ('30', '1'), ('31', '1'), ('32', '1'), ('33', '1'), ('34', '1'), ('35', '1'), ('36', '1'), ('37', '1'), ('38', '1'), ('39', '1'), ('40', '1'), ('41', '1'), ('42', '1'), ('43', '1'), ('44', '1'), ('45', '1'), ('46', '1'), ('47', '1'), ('48', '1'), ('49', '1'), ('50', '1'), ('51', '1'), ('52', '1'), ('53', '1'), ('54', '1'), ('55', '1'), ('56', '1'), ('57', '1'), ('58', '1'), ('59', '1');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccessEntities`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessEntities`;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAccessEntities`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAccessEntities` VALUES ('1', '1'), ('2', '1'), ('3', '1'), ('4', '5'), ('5', '6');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccessEntityGroupSets`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PermissionAccessEntityGroups`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAccessEntityGroups`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAccessEntityGroups` VALUES ('1', '1', '3'), ('2', '2', '1'), ('3', '3', '2');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccessEntityTypeCategories`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAccessEntityTypeCategories`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES ('1', '1'), ('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'), ('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('2', '1'), ('2', '5'), ('2', '6'), ('2', '7'), ('2', '8'), ('2', '9'), ('2', '10'), ('2', '11'), ('2', '12'), ('2', '13'), ('2', '14'), ('3', '1'), ('3', '5'), ('3', '6'), ('3', '7'), ('3', '8'), ('3', '9'), ('3', '10'), ('3', '11'), ('3', '12'), ('3', '13'), ('3', '14'), ('4', '1'), ('4', '5'), ('4', '6'), ('4', '7'), ('4', '8'), ('4', '9'), ('4', '10'), ('4', '11'), ('4', '12'), ('4', '13'), ('4', '14'), ('5', '1'), ('6', '6'), ('6', '7');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccessEntityTypes`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAccessEntityTypes`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAccessEntityTypes` VALUES ('1', 'group', 'Group', '0'), ('2', 'user', 'User', '0'), ('3', 'group_set', 'Group Set', '0'), ('4', 'group_combination', 'Group Combination', '0'), ('5', 'page_owner', 'Page Owner', '0'), ('6', 'file_uploader', 'File Uploader', '0');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccessEntityUsers`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PermissionAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessList`;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAccessList`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAccessList` VALUES ('1', '1', '0', '10'), ('2', '1', '0', '10'), ('3', '1', '0', '10'), ('4', '1', '0', '10'), ('5', '1', '0', '10'), ('6', '1', '0', '10'), ('7', '1', '0', '10'), ('8', '1', '0', '10'), ('9', '1', '0', '10'), ('10', '1', '0', '10'), ('11', '1', '0', '10'), ('12', '1', '0', '10'), ('13', '1', '0', '10'), ('14', '1', '0', '10'), ('15', '1', '0', '10'), ('16', '1', '0', '10'), ('17', '1', '0', '10'), ('18', '1', '0', '10'), ('19', '1', '0', '10'), ('20', '1', '0', '10'), ('21', '1', '0', '10'), ('22', '1', '0', '10'), ('23', '1', '0', '10'), ('24', '1', '0', '10'), ('25', '1', '0', '10'), ('26', '1', '0', '10'), ('27', '1', '0', '10'), ('28', '1', '0', '10'), ('29', '1', '0', '10'), ('30', '1', '0', '10'), ('31', '1', '0', '10'), ('32', '1', '0', '10'), ('33', '2', '0', '10'), ('34', '2', '0', '10'), ('34', '3', '0', '10'), ('35', '2', '0', '10'), ('36', '1', '0', '10'), ('36', '2', '0', '10'), ('37', '1', '0', '10'), ('38', '1', '0', '10'), ('39', '1', '0', '10'), ('40', '1', '0', '10'), ('41', '1', '0', '10'), ('42', '1', '0', '10'), ('43', '1', '0', '10'), ('44', '1', '0', '10'), ('45', '2', '0', '10'), ('46', '1', '0', '10'), ('47', '1', '0', '10'), ('48', '1', '0', '10'), ('49', '1', '0', '10'), ('50', '1', '0', '10'), ('51', '1', '0', '10'), ('52', '1', '0', '10'), ('53', '1', '0', '10'), ('54', '1', '0', '10'), ('55', '1', '0', '10'), ('56', '1', '0', '10'), ('57', '1', '0', '10'), ('58', '1', '0', '10'), ('59', '1', '0', '10');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionAccessWorkflows`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PermissionAssignments`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionAssignments`;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionAssignments`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionAssignments` VALUES ('1', '16'), ('2', '17'), ('3', '54'), ('4', '55'), ('5', '56'), ('6', '57'), ('7', '59'), ('8', '60'), ('9', '61'), ('10', '62'), ('11', '63'), ('12', '65'), ('13', '66'), ('14', '67'), ('15', '68'), ('16', '69'), ('17', '70');
COMMIT;

-- ----------------------------
--  Table structure for `PermissionDurationObjects`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionDurationObjects`;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `PermissionKeyCategories`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionKeyCategories`;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionKeyCategories`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionKeyCategories` VALUES ('1', 'page', null), ('2', 'single_page', null), ('3', 'stack', null), ('4', 'composer_page', null), ('5', 'user', null), ('6', 'file_set', null), ('7', 'file', null), ('8', 'area', null), ('9', 'block_type', null), ('10', 'block', null), ('11', 'admin', null), ('12', 'sitemap', null), ('13', 'marketplace_newsflow', null), ('14', 'basic_workflow', null);
COMMIT;

-- ----------------------------
--  Table structure for `PermissionKeys`
-- ----------------------------
DROP TABLE IF EXISTS `PermissionKeys`;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PermissionKeys`
-- ----------------------------
BEGIN;
INSERT INTO `PermissionKeys` VALUES ('1', 'view_page', 'View', '0', '0', 'Can see a page exists and read its content.', '1', '0'), ('2', 'view_page_versions', 'View Versions', '0', '0', 'Can view the page versions dialog and read past versions of a page.', '1', '0'), ('3', 'preview_page_as_user', 'Preview Page As User', '0', '0', 'Ability to see what this page will look like at a specific time in the future as a specific user.', '1', '0'), ('4', 'edit_page_properties', 'Edit Properties', '0', '1', 'Ability to change anything in the Page Properties menu.', '1', '0'), ('5', 'edit_page_contents', 'Edit Contents', '0', '0', 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', '1', '0'), ('6', 'edit_page_speed_settings', 'Edit Speed Settings', '0', '0', 'Ability to change caching settings.', '1', '0'), ('7', 'edit_page_theme', 'Change Theme', '0', '1', 'Ability to change just the theme for this page.', '1', '0'), ('8', 'edit_page_type', 'Change Page Type', '0', '0', 'Ability to change just the page type for this page, also check out Theme permissions.', '1', '0'), ('9', 'edit_page_permissions', 'Edit Permissions', '1', '0', 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', '1', '0'), ('10', 'delete_page', 'Delete', '1', '0', 'Ability to move this page to the site\'s Trash.', '1', '0'), ('11', 'delete_page_versions', 'Delete Versions', '1', '0', 'Ability to remove old versions of this page.', '1', '0'), ('12', 'approve_page_versions', 'Approve Changes', '1', '0', 'Can publish an unapproved version of the page.', '1', '0'), ('13', 'add_subpage', 'Add Sub-Page', '0', '1', 'Can add a page beneath the current page.', '1', '0'), ('14', 'move_or_copy_page', 'Move or Copy Page', '1', '0', 'Can move or copy this page to another location.', '1', '0'), ('15', 'schedule_page_contents_guest_access', 'Schedule Guest Access', '0', '0', 'Can control scheduled guest access to this page.', '1', '0'), ('16', 'add_block', 'Add Block', '0', '1', 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', '9', '0'), ('17', 'add_stack', 'Add Stack', '0', '0', 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', '9', '0'), ('18', 'view_area', 'View Area', '0', '0', 'Can view the area and its contents.', '8', '0'), ('19', 'edit_area_contents', 'Edit Area Contents', '0', '0', 'Can edit blocks within this area.', '8', '0'), ('20', 'add_block_to_area', 'Add Block to Area', '0', '1', 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', '8', '0'), ('21', 'add_stack_to_area', 'Add Stack to Area', '0', '0', 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', '8', '0'), ('22', 'add_layout_to_area', 'Add Layouts to Area', '0', '0', 'Controls whether users get the ability to add layouts to a particular area.', '8', '0'), ('23', 'edit_area_design', 'Edit Area Design', '0', '0', 'Controls whether users see design controls and can modify an area\'s custom CSS.', '8', '0'), ('24', 'edit_area_permissions', 'Edit Area Permissions', '0', '0', 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', '8', '0'), ('25', 'delete_area_contents', 'Delete Area Contents', '0', '0', 'Controls whether users can delete blocks from this area.', '8', '0'), ('26', 'schedule_area_contents_guest_access', 'Schedule Guest Access', '0', '0', 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', '8', '0'), ('27', 'view_block', 'View Block', '0', '0', 'Controls whether users can view this block in the page.', '10', '0'), ('28', 'edit_block', 'Edit Block', '0', '0', 'Controls whether users can edit this block. This overrides any area or page permissions.', '10', '0'), ('29', 'edit_block_custom_template', 'Change Custom Template', '0', '0', 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', '10', '0'), ('30', 'delete_block', 'Delete Block', '0', '0', 'Controls whether users can delete this block. This overrides any area or page permissions.', '10', '0'), ('31', 'edit_block_design', 'Edit Design', '0', '0', 'Controls whether users can set custom design properties or CSS on this block.', '10', '0'), ('32', 'edit_block_permissions', 'Edit Permissions', '0', '0', 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', '10', '0'), ('33', 'schedule_guest_access', 'Schedule Guest Access', '0', '0', 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', '10', '0'), ('34', 'view_file_set_file', 'View Files', '0', '0', 'Can view and download files in the site.', '6', '0'), ('35', 'search_file_set', 'Search Files in File Manager', '0', '0', 'Can access the file manager', '6', '0'), ('36', 'edit_file_set_file_properties', 'Edit File Properties', '0', '0', 'Can edit a file\'s properties.', '6', '0'), ('37', 'edit_file_set_file_contents', 'Edit File Contents', '0', '0', 'Can edit or replace files in set.', '6', '0'), ('38', 'copy_file_set_files', 'Copy File', '0', '0', 'Can copy files in file set.', '6', '0'), ('39', 'edit_file_set_permissions', 'Edit File Access', '0', '0', 'Can edit access to file sets.', '6', '0'), ('40', 'delete_file_set', 'Delete File Set', '0', '0', '', '6', '0'), ('41', 'delete_file_set_files', 'Delete File', '0', '0', 'Can delete files in set.', '6', '0'), ('42', 'add_file', 'Add File', '0', '1', 'Can add files to set.', '6', '0'), ('43', 'view_file', 'View Files', '0', '0', 'Can view and download files.', '7', '0'), ('44', 'view_file_in_file_manager', 'View File in File Manager', '0', '0', 'Can access the File Manager.', '7', '0'), ('45', 'edit_file_properties', 'Edit File Properties', '0', '0', 'Can edit a file\'s properties.', '7', '0'), ('46', 'edit_file_contents', 'Edit File Contents', '0', '0', 'Can edit or replace files.', '7', '0'), ('47', 'copy_file', 'Copy File', '0', '0', 'Can copy file.', '7', '0'), ('48', 'edit_file_permissions', 'Edit File Access', '0', '0', 'Can edit access to file.', '7', '0'), ('49', 'delete_file', 'Delete File', '0', '0', 'Can delete file.', '7', '0'), ('50', 'approve_basic_workflow_action', 'Approve or Deny', '0', '0', 'Grant ability to approve workflow.', '14', '0'), ('51', 'notify_on_basic_workflow_entry', 'Notify on Entry', '0', '0', 'Notify approvers that a change has entered the workflow.', '14', '0'), ('52', 'notify_on_basic_workflow_approve', 'Notify on Approve', '0', '0', 'Notify approvers that a change has been approved.', '14', '0'), ('53', 'notify_on_basic_workflow_deny', 'Notify on Deny', '0', '0', 'Notify approvers that a change has been denied.', '14', '0'), ('54', 'access_user_search', 'Access User Search', '0', '1', '', '5', '0'), ('55', 'edit_user_properties', 'Edit User Details', '0', '1', null, '5', '0'), ('56', 'view_user_attributes', 'View User Attributes', '0', '1', null, '5', '0'), ('57', 'activate_user', 'Activate/Deactivate User', '0', '0', null, '5', '0'), ('58', 'sudo', 'Sign in as User', '0', '0', null, '5', '0'), ('59', 'delete_user', 'Delete User', '0', '0', null, '5', '0'), ('60', 'access_group_search', 'Access Group Search', '0', '0', '', '5', '0'), ('61', 'edit_groups', 'Edit Groups', '0', '0', '', '5', '0'), ('62', 'assign_user_groups', 'Assign Groups to User', '0', '1', '', '5', '0'), ('63', 'backup', 'Perform Backups', '0', '0', null, '11', '0'), ('64', 'access_task_permissions', 'Access Task Permissions', '0', '0', null, '11', '0'), ('65', 'access_sitemap', 'Access Sitemap', '0', '0', null, '12', '0'), ('66', 'access_page_defaults', 'Access Page Type Defaults', '0', '0', null, '11', '0'), ('67', 'empty_trash', 'Empty Trash', '0', '0', null, '11', '0'), ('68', 'uninstall_packages', 'Uninstall Packages', '0', '0', null, '13', '0'), ('69', 'install_packages', 'Install Packages', '0', '0', null, '13', '0'), ('70', 'view_newsflow', 'View Newsflow', '0', '0', null, '13', '0');
COMMIT;

-- ----------------------------
--  Table structure for `PileContents`
-- ----------------------------
DROP TABLE IF EXISTS `PileContents`;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Piles`
-- ----------------------------
DROP TABLE IF EXISTS `Piles`;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `SignupRequests`
-- ----------------------------
DROP TABLE IF EXISTS `SignupRequests`;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Stacks`
-- ----------------------------
DROP TABLE IF EXISTS `Stacks`;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Stacks`
-- ----------------------------
BEGIN;
INSERT INTO `Stacks` VALUES ('1', 'Header Nav', '20', '120'), ('2', 'Side Nav', '0', '121'), ('3', 'Site Name', '20', '122');
COMMIT;

-- ----------------------------
--  Table structure for `SystemAntispamLibraries`
-- ----------------------------
DROP TABLE IF EXISTS `SystemAntispamLibraries`;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `SystemCaptchaLibraries`
-- ----------------------------
DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `SystemCaptchaLibraries`
-- ----------------------------
BEGIN;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage', 'SecurImage (Default)', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `SystemNotifications`
-- ----------------------------
DROP TABLE IF EXISTS `SystemNotifications`;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserAttributeKeys`
-- ----------------------------
DROP TABLE IF EXISTS `UserAttributeKeys`;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `UserAttributeKeys`
-- ----------------------------
BEGIN;
INSERT INTO `UserAttributeKeys` VALUES ('10', '0', '0', '1', '0', '1', '0', '1', '1'), ('11', '0', '0', '1', '0', '1', '0', '2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `UserAttributeValues`
-- ----------------------------
DROP TABLE IF EXISTS `UserAttributeValues`;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserBannedIPs`
-- ----------------------------
DROP TABLE IF EXISTS `UserBannedIPs`;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserGroups`
-- ----------------------------
DROP TABLE IF EXISTS `UserGroups`;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserOpenIDs`
-- ----------------------------
DROP TABLE IF EXISTS `UserOpenIDs`;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionAssignGroupAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionAssignGroupAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionEditPropertyAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionEditPropertyAttributeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionUserSearchAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionUserSearchAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionViewAttributeAccessList`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPermissionViewAttributeAccessListCustom`
-- ----------------------------
DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPrivateMessages`
-- ----------------------------
DROP TABLE IF EXISTS `UserPrivateMessages`;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserPrivateMessagesTo`
-- ----------------------------
DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserSearchIndexAttributes`
-- ----------------------------
DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `UserValidationHashes`
-- ----------------------------
DROP TABLE IF EXISTS `UserValidationHashes`;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Users`
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Users`
-- ----------------------------
BEGIN;
INSERT INTO `Users` VALUES ('1', 'admin', 'birsen@alokartvizit.com', '19334485b08d6eb892e2cdfb44393e2f', '1', '-1', '1', '2012-12-28 17:09:57', '0', '1357142160', '1357141997', '2130706433', '1357126347', '5', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `UsersFriends`
-- ----------------------------
DROP TABLE IF EXISTS `UsersFriends`;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `WorkflowProgress`
-- ----------------------------
DROP TABLE IF EXISTS `WorkflowProgress`;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `WorkflowProgressCategories`
-- ----------------------------
DROP TABLE IF EXISTS `WorkflowProgressCategories`;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `WorkflowProgressCategories`
-- ----------------------------
BEGIN;
INSERT INTO `WorkflowProgressCategories` VALUES ('1', 'page', null), ('2', 'file', null), ('3', 'user', null);
COMMIT;

-- ----------------------------
--  Table structure for `WorkflowProgressHistory`
-- ----------------------------
DROP TABLE IF EXISTS `WorkflowProgressHistory`;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `WorkflowProgressHistory`
-- ----------------------------
BEGIN;
INSERT INTO `WorkflowProgressHistory` VALUES ('1', '1', '2012-12-28 17:38:41', 'O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"127\";s:4:\"wrID\";s:1:\"1\";}'), ('2', '2', '2012-12-28 17:38:59', 'O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"128\";s:4:\"wrID\";s:1:\"2\";}'), ('3', '3', '2012-12-28 17:39:53', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"134\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}'), ('4', '4', '2012-12-28 17:40:14', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"135\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"4\";}'), ('5', '5', '2012-12-28 17:40:43', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"5\";}'), ('6', '6', '2012-12-28 17:41:18', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"6\";}'), ('7', '7', '2012-12-28 17:41:45', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"7\";}'), ('8', '8', '2012-12-28 17:42:04', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"8\";}'), ('9', '9', '2012-12-28 18:02:58', 'O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"129\";s:4:\"wrID\";s:1:\"9\";}'), ('10', '10', '2012-12-28 18:03:15', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"10\";}'), ('11', '1', '2012-12-31 11:58:52', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"1\";}'), ('12', '2', '2012-12-31 11:59:10', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"134\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"2\";}'), ('13', '3', '2012-12-31 11:59:20', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"135\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"3\";}'), ('14', '4', '2012-12-31 12:00:05', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}'), ('15', '5', '2012-12-31 12:00:20', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"5\";}'), ('16', '6', '2012-12-31 12:00:36', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"6\";}'), ('17', '1', '2013-01-02 09:34:29', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}'), ('18', '2', '2013-01-02 09:35:54', 'O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"140\";s:4:\"wrID\";s:1:\"2\";}'), ('19', '3', '2013-01-02 09:38:05', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"3\";}'), ('20', '4', '2013-01-02 10:24:16', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"4\";}'), ('21', '5', '2013-01-02 10:36:02', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"5\";}'), ('22', '6', '2013-01-02 13:53:15', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"6\";}'), ('23', '7', '2013-01-02 14:03:30', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"7\";}'), ('24', '8', '2013-01-02 15:20:43', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"8\";}'), ('25', '9', '2013-01-02 16:13:53', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"9\";}'), ('26', '10', '2013-01-02 16:34:31', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"10\";}'), ('27', '11', '2013-01-02 16:40:35', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"11\";}'), ('28', '12', '2013-01-02 17:28:11', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"12\";}'), ('29', '13', '2013-01-02 17:54:02', 'O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"13\";}');
COMMIT;

-- ----------------------------
--  Table structure for `WorkflowRequestObjects`
-- ----------------------------
DROP TABLE IF EXISTS `WorkflowRequestObjects`;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `WorkflowTypes`
-- ----------------------------
DROP TABLE IF EXISTS `WorkflowTypes`;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `WorkflowTypes`
-- ----------------------------
BEGIN;
INSERT INTO `WorkflowTypes` VALUES ('1', 'basic', 'Basic Workflow', '0');
COMMIT;

-- ----------------------------
--  Table structure for `Workflows`
-- ----------------------------
DROP TABLE IF EXISTS `Workflows`;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atAddress`
-- ----------------------------
DROP TABLE IF EXISTS `atAddress`;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atAddressCustomCountries`
-- ----------------------------
DROP TABLE IF EXISTS `atAddressCustomCountries`;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atAddressSettings`
-- ----------------------------
DROP TABLE IF EXISTS `atAddressSettings`;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atBoolean`
-- ----------------------------
DROP TABLE IF EXISTS `atBoolean`;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atBoolean`
-- ----------------------------
BEGIN;
INSERT INTO `atBoolean` VALUES ('20', '1'), ('31', '1'), ('34', '1'), ('64', '1'), ('65', '1'), ('68', '1'), ('69', '1'), ('75', '1'), ('107', '1'), ('116', '1'), ('117', '1'), ('118', '1'), ('137', '1'), ('138', '1'), ('139', '1'), ('145', '0'), ('146', '0'), ('148', '0'), ('149', '0');
COMMIT;

-- ----------------------------
--  Table structure for `atBooleanSettings`
-- ----------------------------
DROP TABLE IF EXISTS `atBooleanSettings`;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atBooleanSettings`
-- ----------------------------
BEGIN;
INSERT INTO `atBooleanSettings` VALUES ('5', '0'), ('6', '0'), ('8', '0'), ('9', '0'), ('10', '1'), ('11', '1');
COMMIT;

-- ----------------------------
--  Table structure for `atDateTime`
-- ----------------------------
DROP TABLE IF EXISTS `atDateTime`;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atDateTimeSettings`
-- ----------------------------
DROP TABLE IF EXISTS `atDateTimeSettings`;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atDefault`
-- ----------------------------
DROP TABLE IF EXISTS `atDefault`;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atDefault`
-- ----------------------------
BEGIN;
INSERT INTO `atDefault` VALUES ('1', 'blog, blogging'), ('2', 'icon-book'), ('3', 'new blog, write blog, blogging'), ('4', 'icon-pencil'), ('5', 'blog drafts,composer'), ('6', 'icon-book'), ('7', 'pages, add page, delete page, copy, move, alias'), ('8', 'pages, add page, delete page, copy, move, alias'), ('9', 'icon-home'), ('10', 'pages, add page, delete page, copy, move, alias, bulk'), ('11', 'icon-road'), ('12', 'find page, search page, search, find, pages, sitemap'), ('13', 'icon-search'), ('14', 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'), ('15', 'icon-picture'), ('16', 'file, file attributes, title, attribute, description, rename'), ('17', 'icon-cog'), ('18', 'files, category, categories'), ('19', 'icon-list-alt'), ('21', 'new file set'), ('22', 'icon-plus-sign'), ('23', 'users, groups, people, find, delete user, remove user, change password, password'), ('24', 'find, search, people, delete user, remove user, change password, password'), ('25', 'icon-user'), ('26', 'user, group, people, permissions, access, expire'), ('27', 'icon-globe'), ('28', 'user attributes, user data, gather data, registration data'), ('29', 'icon-cog'), ('30', 'new user, create'), ('32', 'icon-plus-sign'), ('33', 'new user group, new group, group, create'), ('35', 'icon-plus'), ('36', 'group set'), ('37', 'icon-list'), ('38', 'forms, log, error, email, mysql, exception, survey'), ('39', 'hits, pageviews, visitors, activity'), ('40', 'icon-signal'), ('41', 'forms, questions, response, data'), ('42', 'icon-briefcase'), ('43', 'questions, quiz, response'), ('44', 'icon-tasks'), ('45', 'forms, log, error, email, mysql, exception, survey, history'), ('46', 'icon-time'), ('47', 'new theme, theme, active theme, change theme, template, css'), ('48', 'icon-font'), ('49', 'theme'), ('50', 'page types'), ('51', 'custom theme, change theme, custom css, css'), ('52', 'page type defaults, global block, global area, starter, template'), ('53', 'icon-file'), ('54', 'page attributes, custom'), ('55', 'icon-cog'), ('56', 'single, page, custom, application'), ('57', 'icon-wrench'), ('58', 'add workflow, remove workflow'), ('59', 'icon-list'), ('60', 'icon-user'), ('61', 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'), ('62', 'icon-th'), ('63', 'icon-lock'), ('66', 'block, refresh, custom'), ('67', 'icon-wrench'), ('70', 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'), ('71', 'update, upgrade'), ('72', 'concrete5.org, my account, marketplace'), ('73', 'buy theme, new theme, marketplace, template'), ('74', 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'), ('76', 'website name, title'), ('77', 'logo, favicon, iphone, icon, bookmark'), ('78', 'tinymce, content block, fonts, editor, tinymce, content, overlay'), ('79', 'translate, translation, internationalization, multilingual, translate'), ('80', 'timezone, profile, locale'), ('81', 'interface, quick nav, dashboard background, background image'), ('82', 'vanity, pretty url, seo, pageview, view'), ('83', 'bulk, seo, change keywords, engine, optimization, search'), ('84', 'traffic, statistics, google analytics, quant, pageviews, hits'), ('85', 'turn off statistics, tracking, statistics, pageviews, hits'), ('86', 'configure search, site search, search option'), ('87', 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'), ('88', 'cache option, turn off cache, no cache, page cache, caching'), ('89', 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'), ('90', 'editors, hide site, offline, private, public, access'), ('91', 'file options, file manager, upload, modify'), ('92', 'security, files, media, extension, manager, upload'), ('93', 'security, actions, administrator, admin, package, marketplace, search'), ('94', 'security, lock ip, lock out, block ip, address, restrict, access'), ('95', 'security, registration'), ('96', 'antispam, block spam, security'), ('97', 'lock site, under construction, hide, hidden'), ('98', 'profile, login, redirect, specific, dashboard, administrators'), ('99', 'member profile, member page,community, forums, social, avatar'), ('100', 'signup, new user, community'), ('101', 'smtp, mail settings'), ('102', 'email server, mail settings, mail configuration, external, internal'), ('103', 'email server, mail settings, mail configuration, private message, message system, import, email, message'), ('104', 'attribute configuration'), ('105', 'attributes, sets'), ('106', 'attributes, types'), ('108', 'overrides, system info, debug, support,help'), ('109', 'errors,exceptions, develop, support, help'), ('110', 'email, logging, logs, smtp, pop, errors, mysql, errors, log'), ('111', 'security, alternate storage, hide files'), ('112', 'network, proxy server'), ('113', 'export, backup, database, sql, mysql, encryption, restore'), ('114', 'upgrade, new version, update'), ('115', 'export, database, xml, starting, points, schema, refresh, custom, tables'), ('141', ''), ('142', ''), ('143', ''), ('144', ''), ('147', '');
COMMIT;

-- ----------------------------
--  Table structure for `atFile`
-- ----------------------------
DROP TABLE IF EXISTS `atFile`;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `atNumber`
-- ----------------------------
DROP TABLE IF EXISTS `atNumber`;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atNumber`
-- ----------------------------
BEGIN;
INSERT INTO `atNumber` VALUES ('119', '960.0000'), ('120', '212.0000'), ('121', '960.0000'), ('122', '212.0000'), ('123', '960.0000'), ('124', '212.0000'), ('125', '960.0000'), ('126', '212.0000'), ('127', '960.0000'), ('128', '212.0000'), ('129', '960.0000'), ('130', '212.0000'), ('131', '960.0000'), ('132', '212.0000'), ('133', '150.0000'), ('134', '150.0000');
COMMIT;

-- ----------------------------
--  Table structure for `atSelectOptions`
-- ----------------------------
DROP TABLE IF EXISTS `atSelectOptions`;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atSelectOptions`
-- ----------------------------
BEGIN;
INSERT INTO `atSelectOptions` VALUES ('1', '14', 'composer', '0', '1'), ('2', '14', 'hello', '1', '1'), ('3', '14', 'world', '2', '1'), ('4', '14', 'first post', '3', '1');
COMMIT;

-- ----------------------------
--  Table structure for `atSelectOptionsSelected`
-- ----------------------------
DROP TABLE IF EXISTS `atSelectOptionsSelected`;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atSelectOptionsSelected`
-- ----------------------------
BEGIN;
INSERT INTO `atSelectOptionsSelected` VALUES ('136', '1'), ('136', '2'), ('136', '3'), ('136', '4');
COMMIT;

-- ----------------------------
--  Table structure for `atSelectSettings`
-- ----------------------------
DROP TABLE IF EXISTS `atSelectSettings`;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atSelectSettings`
-- ----------------------------
BEGIN;
INSERT INTO `atSelectSettings` VALUES ('14', '1', 'display_asc', '1');
COMMIT;

-- ----------------------------
--  Table structure for `atTextareaSettings`
-- ----------------------------
DROP TABLE IF EXISTS `atTextareaSettings`;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `atTextareaSettings`
-- ----------------------------
BEGIN;
INSERT INTO `atTextareaSettings` VALUES ('2', ''), ('3', ''), ('4', ''), ('7', '');
COMMIT;

-- ----------------------------
--  Table structure for `btContentFile`
-- ----------------------------
DROP TABLE IF EXISTS `btContentFile`;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btContentImage`
-- ----------------------------
DROP TABLE IF EXISTS `btContentImage`;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btContentImage`
-- ----------------------------
BEGIN;
INSERT INTO `btContentImage` VALUES ('15', '8', '0', '0', '0', '', '0', null, ''), ('16', '2', '0', '960', '212', '', '0', '1', 'My concrete5 Blog'), ('17', '7', '0', '960', '212', '', '0', '1', ''), ('18', '6', '0', '960', '212', '', '0', '1', ''), ('19', '4', '0', '960', '212', '', '0', '1', ''), ('28', '1', '0', '960', '212', '', '0', '1', ''), ('47', '2', '0', '960', '212', '', '0', '1', 'My concrete5 Blog'), ('49', '8', '0', '0', '0', '', '0', null, '');
COMMIT;

-- ----------------------------
--  Table structure for `btContentLocal`
-- ----------------------------
DROP TABLE IF EXISTS `btContentLocal`;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btContentLocal`
-- ----------------------------
BEGIN;
INSERT INTO `btContentLocal` VALUES ('1', '	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'), ('2', '<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'), ('3', '<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'), ('4', '<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'), ('5', '\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'), ('13', '<p>This is my first blog post.</p>'), ('21', '<h3>Links:</h3>'), ('23', '<h1><a title=\"Home\" \n                                	href=\"{CCM:CID_1}\"\n                                >Alp Filtre</a></h1>'), ('24', '<h1>Welcome to concrete5 - an Open Source CMS</h1>'), ('25', '<h3>Sidebar</h3>'), ('26', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title=\"Move blocks in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/blocks-and-areas\" target=\"_blank\">drag and drop blocks</a>&nbsp;like this around your layout.</p>'), ('27', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5\'s in-context editing. Just <a href=\"{CCM:CID_109}\">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title=\"In-context editing CMS\" href=\"http://www.concrete5.org/documentation/general-topics/in-context-editing/\" target=\"_blank\">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title=\"Add a page in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/add-a-page/\" target=\"_blank\">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title=\"Add a simple form in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/add_a_form\" target=\"_blank\">a Form</a>.</li>\n                                        <li><a title=\"add-on marketplace for concrete5\" href=\"http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/\" target=\"_blank\">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We\'ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href=\"{CCM:CID_6}\">Sitemap</a> and quickly delete the parts you don\'t want.</p>'), ('29', '<h1>About Us</h1>'), ('31', '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title=\"concrete5 Content Management System\" href=\"http://www.concrete5.org/\" target=\"_blank\">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title=\"open source content management system\" href=\"http://www.concrete5.org/community\" target=\"_blank\">community</a>&nbsp;and the&nbsp;<a href=\"http://www.concrete5.org/documentation/general-topics/\" target=\"_blank\">documentation</a>. You can also browse our&nbsp;<a title=\"concrete5 marketplace\" href=\"http://www.concrete5.org/marketplace/\" target=\"_blank\">marketplace</a>&nbsp;for more&nbsp;<a title=\"Add-ons for concrete5\" href=\"http://www.concrete5.org/marketplace/addons/\" target=\"_blank\">add-ons</a>&nbsp;and&nbsp;<a title=\"Themes for concrete5\" href=\"http://www.concrete5.org/marketplace/themes/\" target=\"_blank\">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href=\"http://www.concrete5.org/community/forums/\" target=\"_blank\">forums</a> and post for free to the&nbsp;<a href=\"http://www.concrete5.org/community/forums/jobs1/\" target=\"_blank\">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href=\"http://www.concrete5.org/services/support/\" target=\"_blank\">any problem</a>&nbsp;you run into. We offer <a href=\"http://www.concrete5.org/services/training/\" target=\"_blank\">training courses</a>&nbsp;and&nbsp;<a href=\"http://www.concrete5.org/services/hosting/\" target=\"_blank\">hosting packages</a>, just let us know <a href=\"http://www.concrete5.org/services/professional_services/\" target=\"_blank\">how we can help</a>.</p>'), ('32', '<h1>Guestbook</h1>'), ('35', '<h1>Contact Us</h1>'), ('37', '<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href=\"http://www.concrete5.org/documentation/general-topics/add_a_form\" target=\"_blank\">add a form block</a>.</p>'), ('39', '<h1>Sitemap</h1>'), ('40', '<h3>Site Map</h3>'), ('44', '<h3>Tags</h3>'), ('48', '<p>Here is some sample content! I\'m writing it using composer!</p>'), ('54', '<h2>Torba Filtre Nedir?</h2>\r\n<p style=\"text-align: justify;\">Sentetik elyaf malzemeden mamul torba filtreler, yüksek toz tutma kapasitesi ile üstün performans gösterirler. 500 mm ve 600 mm derinliklerinde imal edilen torba filtreler, Özel ebatJarda da imal edilirler. Sentetik elyaflı torba filtreler, havalandırma sistemlerinde kullanılırlar. Hijyenik klima sisteminde ise büyük partiküllerin tutulması ve hepa filtrenin korunması amacıyla klima santralinin içine monte edilirler. Sentetik efyaflı torba filtreler G3 (EU4) - G4 (EU4) - F5 (EU5) - F6 (EU6) - F7(EU7) - F8 (EU8) - F9(EU9) sınıfında filtreleme yaparlar</p>'), ('55', '<h2>Aktif Karbon Filtre Nedir?</h2>\r\n<p style=\"text-align: justify;\">Aktif karbon filtrenin gaz moleküllerini yakalama ve tutma Özelliði vardýr. Aktif karbon filtrenin yüzeyi milyonlarca ufak gözenekten oluþmaktadýr. Bu gözenekler sayesinde bir çok koku yayan zehirli gazlar yakalanýr. Aktif karbon filtreler kullanýldýðý ortam havasý kirliliðine ve kullaným sýklýðýna baðlý olarak deðiþtirilmelidir. Ûmeðin, sigara içilen bir ortamda aktif karbon filtrelerin 3 ila 6 ayda bir deðiþtirilmesi gerekmektedir. Aktif granul karbon filtreler aðýr kokularýn oluþtuðu mekanlarda koku tutucu filtre olarak kullanýlýrlar. Aktif granül karbon filtrelerde, filtre kirlendiðinde sadece granül karbonlar deðiþtirilir. Filtrenin hücrelerini deðiþtirmeye gerek yoktur.</p>'), ('56', '<h4>Aktif Karbon Filtre Nedir?</h4>\r\n<p style=\"text-align: justify;\">Aktif karbon filtrenin gaz moleküllerini yakalama ve tutma Özelliði vardýr. Aktif karbon filtrenin yüzeyi milyonlarca ufak gözenekten oluþmaktadýr. Bu gözenekler sayesinde bir çok koku yayan zehirli gazlar yakalanýr. Aktif karbon filtreler kullanýldýðý ortam havasý kirliliðine ve kullaným sýklýðýna baðlý olarak deðiþtirilmelidir. Ûmeðin, sigara içilen bir ortamda aktif karbon filtrelerin 3 ila 6 ayda bir deðiþtirilmesi gerekmektedir. Aktif granul karbon filtreler aðýr kokularýn oluþtuðu mekanlarda koku tutucu filtre olarak kullanýlýrlar. Aktif granül karbon filtrelerde, filtre kirlendiðinde sadece granül karbonlar deðiþtirilir. Filtrenin hücrelerini deðiþtirmeye gerek yoktur.</p>'), ('57', '<h4>Torba Filtre Nedir?</h4>\r\n<p style=\"text-align: justify;\">Sentetik elyaf malzemeden mamul torba filtreler, yüksek toz tutma kapasitesi ile üstün performans gösterirler. 500 mm ve 600 mm derinliklerinde imal edilen torba filtreler, Özel ebatJarda da imal edilirler. Sentetik elyaflı torba filtreler, havalandırma sistemlerinde kullanılırlar. Hijyenik klima sisteminde ise büyük partiküllerin tutulması ve hepa filtrenin korunması amacıyla klima santralinin içine monte edilirler. Sentetik efyaflı torba filtreler G3 (EU4) - G4 (EU4) - F5 (EU5) - F6 (EU6) - F7(EU7) - F8 (EU8) - F9(EU9) sınıfında filtreleme yaparlar</p>'), ('58', '<h4>Aktif Karbon Filtre Nedir?</h4>\r\n<p>Aktif karbon filtrenin gaz moleküllerini yakalama ve tutma Özelliği vardır. Aktif karbon filtrenin yüzeyi milyonlarca ufak gözenekten oluþmaktadır. Bu gözenekler sayesinde bir çok koku yayan zehirli gazlar yakalanır. Aktif karbon filtreler kullanıldığı ortam havası kirliliğine ve kullanım sıklığına bağlı olarak değiþtirilmelidir. Ömeğin, sigara içilen bir ortamda aktif karbon filtrelerin 3 ila 6 ayda bir değiþtirilmesi gerekmektedir. Aktif granul karbon filtreler ağır kokuların oluþtuğu mekanlarda koku tutucu filtre olarak kullanılırlar. Aktif granül karbon filtrelerde, filtre kirlendiğinde sadece granül karbonlar değiþtirilir. Filtrenin hücrelerini değiþtirmeye gerek yoktur.</p>'), ('59', '<h4>Torba Filtre Nedir?</h4>\r\n<p>Sentetik elyaf malzemeden mamul torba filtreler, yüksek toz tutma kapasitesi ile üstün performans gösterirler. 500 mm ve 600 mm derinliklerinde imal edilen torba filtreler, Özel ebatJarda da imal edilirler. Sentetik elyaflı torba filtreler, havalandırma sistemlerinde kullanılırlar. Hijyenik klima sisteminde ise büyük partiküllerin tutulması ve hepa filtrenin korunması amacıyla klima santralinin içine monte edilirler. Sentetik efyaflı torba filtreler G3 (EU4) - G4 (EU4) - F5 (EU5) - F6 (EU6) - F7 (EU7) - F8 (EU8) - F9 (EU9) sınıfında filtreleme yaparlar.</p>'), ('60', '<h4>Hepa ve Ulpa Filtre Nedir?</h4>\r\n<p>Hepa\'nın açılımı High Efficiency Particulate Arresting\'dir. Yüksek etkinlikte partikül yakalayıcı anlamına gelir. Hepa filtreler, 0,3 mikrona kadar partikülleri %85 ve üzeri oranlarda havadan arındırabilen filtrelerdir. Hepa filtrelerden daha hassas ve %99,999 oranına sahip olan filtrelere ise ULPA filtre denir. Hepa ve ulpa filtreler bakım gerektirmeyen, özel liflerden oluþan ve kağıda benzer bir yapıya sahiptir. Bu filtrelerin belirli bir zaman dilimi içerisinde yenisi ile değiþtirilmesi gerekir. Hepa ve ulpa filtrelerin kullanıldığı ortam havası kirliliğine, kullanım sıklığına ve basınç kaybına bağlı olarak 6-12 ayda bir değiþtirilmesi önerilir. Günümüzde ameliyathanelerde, hastahanelerde ve temiz oda uygulamalarında filtreleme performansı, güvenilirliği ve bakım gerektirmeyen yapısından dolayı hepa ve ulpa filtreler kullanılmaktadır. Hepa ve ulpa filtrelerin MDF, plastik veya metal çerçeveli modelleri mevcuttur.</p>'), ('61', '<h4>Kaset Filtre Nedir?</h4>\r\n<p>Kaset panel filtreler, kontrollü ve yenilenebilir özellikte özel ham elyaf harmanından yapılmıştı ve son derece dayanıklı bir yapıya sahiptir. Etrafındaki koruma kafesi, filtreleme özelliğini darbelerden korumak amacıyla yarleştirilmiştir. Kaset filtreler G2 [EU2], G3 [EU3], G4 [EU4], F5 [EU5] sınıfındaki filrelerdir. Kaset filtreler, selülozik esaslı ve fiber glass esaslı olarak üretilir.</p>'), ('62', '<h6>Hangi filtreyi kullanmalıyım ?</h6>\r\n<ul>\r\n<li>Yukarıdaki filtre seçim cizelgesi bu konuda size yardımcı olacaktır. Ayrıca <strong><a href=\"mailto:alperen@alperen.com.tr\">alperen@alperen.com.tr</a></strong> elektronik posta adresimizden veya <strong>0121 503 53 36 pbx</strong> numaralı telefonumuzdan bizlere ulaştığınızda teknik destek yetkililerimiz sizlere yardımcı olmaktan memnuniyet duyacaktır.</li>\r\n</ul>'), ('63', '<h6>Hangi filtreyi kullanmalıyım ?</h6>\r\n<ul>\r\n<li>Yukarıdaki filtre seçim cizelgesi bu konuda size yardımcı olacaktır. Ayrıca <strong><a href=\"mailto:alperen@alperen.com.tr\">alperen@alperen.com.tr</a></strong> elektronik posta adresimizden veya <strong>0121 503 53 36 pbx</strong> numaralı telefonumuzdan bizlere ulaştığınızda teknik destek yetkililerimiz sizlere yardımcı olmaktan memnuniyet duyacaktır.</li>\r\n</ul>\r\n<h6>Filtreler ne zaman değişrilimelidir.</h6>\r\n<ul>\r\n<li>Filtrelerin hava akımına karşı temizken oluştıurduğu dirence başlangıç direnci veya basınç düşümü denir. Bu değer Pa [pascal] olarak ölçülür. Filtreler kirlendikçe bu değer artar. Direnç değeri önerilen son derece ulaşan filtre değiştirilmelidir. Ön filtre ve torba filtreler için önerilen son direnç değerleri <strong>EN 779</strong> Avrupa standartlarına göre belirlenmiş olup bu teknik değerleri web sitemizde de inceleyebilirsiniz.</li>\r\n</ul>\r\n<h6>Filtrelerin ömrü nekadardır?</h6>\r\n<ul>\r\n<li>Bu sorunun cevabı filtrelerin monte edildiği yerdeki havanın kirliliğine bağlıdır. Havadaki kirleticilerin artması ya da eksilmesi ve mevsimler gibi faktörler de ömrüne etki etmektedir.</li>\r\n<li>Deneyimlerimizi esas alarak kaset filtrelerin 2-3 ay,m torba filtrelerin 4-6 ay, hepa filrelerin de 6-12 ay ömürlü olduklarını söyleyebiliriz.</li>\r\n</ul>'), ('64', '<h6>Hangi filtreyi kullanmalıyım ?</h6>\r\n<ul>\r\n<li>Yukarıdaki filtre seçim cizelgesi bu konuda size yardımcı olacaktır. Ayrıca <strong><a href=\"mailto:alperen@alperen.com.tr\">alperen@alperen.com.tr</a></strong> elektronik posta adresimizden veya <strong>0121 503 53 36 pbx</strong> numaralı telefonumuzdan bizlere ulaştığınızda teknik destek yetkililerimiz sizlere yardımcı olmaktan memnuniyet duyacaktır.</li>\r\n</ul>\r\n<h6>Filtreler ne zaman değişrilimelidir.</h6>\r\n<ul>\r\n<li>Filtrelerin hava akımına karşı temizken oluştıurduğu dirence başlangıç direnci veya basınç düşümü denir. Bu değer Pa [pascal] olarak ölçülür. Filtreler kirlendikçe bu değer artar. Direnç değeri önerilen son derece ulaşan filtre değiştirilmelidir. Ön filtre ve torba filtreler için önerilen son direnç değerleri <strong>EN 779</strong> Avrupa standartlarına göre belirlenmiş olup bu teknik değerleri web sitemizde de inceleyebilirsiniz.</li>\r\n</ul>\r\n<h6>Filtrelerin ömrü nekadardır?</h6>\r\n<ul>\r\n<li>Bu sorunun cevabı filtrelerin monte edildiği yerdeki havanın kirliliğine bağlıdır. Havadaki kirleticilerin artması ya da eksilmesi ve mevsimler gibi faktörler de ömrüne etki etmektedir.</li>\r\n<li>Deneyimlerimizi esas alarak kaset filtrelerin 2-3 ay, torba filtrelerin 4-6 ay, hepa filrelerin de 6-12 ay ömürlü olduklarını söyleyebiliriz.</li>\r\n</ul>\r\n<h6>Hangi filtreler yıkanma özelliğine sahiptir?</h6>\r\n<ul>\r\n<li>İç yapısı poliüretan veya metal olan ön filtreler yıkanabilr. Torba, hepa ve ulpa filtreler gözle görülmeyen partikülleri filtre liflerine. moleküler çekim esasına göre çekip yapıştırarak filtrelemektedir. Bu tip filtrelerin temizlenmesi mümkün değil, yenisi ile değiştirilmelidir.</li>\r\n</ul>\r\n<h6>Filtreler ile ilgili diğer sorularıma nasıl yanıt bulabilirim?</h6>\r\n<ul>\r\n<li><strong><a href=\"mailto:alperen@alperen.com.tr\">alperen@alperen.com.tr</a></strong> adresine e-posta göndererek veya <strong>0212 503 35 36</strong> telefon numaramızı arayarak filtrelerle ilgili teknik sorularınızı bizlere iletirseniz teknik destek yetkililerimiz sizlere yardımcı olmaktan memnuniyet duyacaktır.</li>\r\n</ul>'), ('65', '<h4>Aktif Karbon Filtre Nedir?</h4>\r\n<p>Aktif karbon filtrenin gaz moleküllerini yakalama ve tutma özelliği vardır. Aktif karbon filtrenin yüzeyi milyonlarca ufak gözenekten oluşmaktadır. Bu gözenekler sayesinde bir çok koku yayan zehirli gazlar yakalanır. Aktif karbon filtreler kullanıldığı ortam havası kirliliğine ve kullanım sıklığına bağlı olarak değiştirilmelidir. Ömeğin, sigara içilen bir ortamda aktif karbon filtrelerin 3 ila 6 ayda bir değiştirilmesi gerekmektedir. Aktif granul karbon filtreler ağır kokuların oluştuğu mekanlarda koku tutucu filtre olarak kullanılırlar. Aktif granül karbon filtrelerde, filtre kirlendiğinde sadece granül karbonlar değiştirilir. Filtrenin hücrelerini değiştirmeye gerek yoktur.</p>');
COMMIT;

-- ----------------------------
--  Table structure for `btCoreScrapbookDisplay`
-- ----------------------------
DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btCoreStackDisplay`
-- ----------------------------
DROP TABLE IF EXISTS `btCoreStackDisplay`;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btCoreStackDisplay`
-- ----------------------------
BEGIN;
INSERT INTO `btCoreStackDisplay` VALUES ('30', '121'), ('33', '121'), ('36', '121');
COMMIT;

-- ----------------------------
--  Table structure for `btDashboardNewsflowLatest`
-- ----------------------------
DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btDashboardNewsflowLatest`
-- ----------------------------
BEGIN;
INSERT INTO `btDashboardNewsflowLatest` VALUES ('8', 'A'), ('9', 'B'), ('12', 'C');
COMMIT;

-- ----------------------------
--  Table structure for `btDateArchive`
-- ----------------------------
DROP TABLE IF EXISTS `btDateArchive`;
CREATE TABLE `btDateArchive` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `numMonths` int(11) DEFAULT '12',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btDateArchive`
-- ----------------------------
BEGIN;
INSERT INTO `btDateArchive` VALUES ('46', 'Archives', '132', '12'), ('52', 'Archives', '132', '12');
COMMIT;

-- ----------------------------
--  Table structure for `btDateNav`
-- ----------------------------
DROP TABLE IF EXISTS `btDateNav`;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btExternalForm`
-- ----------------------------
DROP TABLE IF EXISTS `btExternalForm`;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btFlashContent`
-- ----------------------------
DROP TABLE IF EXISTS `btFlashContent`;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btForm`
-- ----------------------------
DROP TABLE IF EXISTS `btForm`;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btForm`
-- ----------------------------
BEGIN;
INSERT INTO `btForm` VALUES ('38', '1356707418', 'Contact Us', 'Thanks!', '0', '', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `btFormAnswerSet`
-- ----------------------------
DROP TABLE IF EXISTS `btFormAnswerSet`;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btFormAnswers`
-- ----------------------------
DROP TABLE IF EXISTS `btFormAnswers`;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btFormQuestions`
-- ----------------------------
DROP TABLE IF EXISTS `btFormQuestions`;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btFormQuestions`
-- ----------------------------
BEGIN;
INSERT INTO `btFormQuestions` VALUES ('5', '4', '38', '1356707418', 'Name', 'field', '', '0', '50', '3', '1'), ('6', '5', '38', '1356707418', 'Email:', 'email', '', '0', '50', '3', '1'), ('7', '6', '38', '1356707418', 'What are you contacting us about?', 'radios', 'Question%%Comment%%Urgent Issue%%To Say Hello%%Other', '0', '50', '3', '1'), ('8', '7', '38', '1356707418', 'Message', 'text', '', '0', '50', '3', '1');
COMMIT;

-- ----------------------------
--  Table structure for `btGoogleMap`
-- ----------------------------
DROP TABLE IF EXISTS `btGoogleMap`;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btGuestBook`
-- ----------------------------
DROP TABLE IF EXISTS `btGuestBook`;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btGuestBook`
-- ----------------------------
BEGIN;
INSERT INTO `btGuestBook` VALUES ('34', '0', 'Tell us what you think', 'M jS, Y', '1', '1', '0', '');
COMMIT;

-- ----------------------------
--  Table structure for `btGuestBookEntries`
-- ----------------------------
DROP TABLE IF EXISTS `btGuestBookEntries`;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btNavigation`
-- ----------------------------
DROP TABLE IF EXISTS `btNavigation`;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btNavigation`
-- ----------------------------
BEGIN;
INSERT INTO `btNavigation` VALUES ('20', 'display_asc', 'top', '0', '0', 'none', 'enough', '0', '0'), ('22', 'display_asc', 'second_level', '0', '0', 'all', 'all', '0', '0'), ('41', 'display_asc', 'top', '0', '0', 'all', 'all', '0', '0'), ('53', 'display_asc', 'custom', '1', '0', 'relevant', 'enough', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `btNextPrevious`
-- ----------------------------
DROP TABLE IF EXISTS `btNextPrevious`;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btPageList`
-- ----------------------------
DROP TABLE IF EXISTS `btPageList`;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btPageList`
-- ----------------------------
BEGIN;
INSERT INTO `btPageList` VALUES ('43', '12', 'chrono_desc', '128', '0', '0', '1', '0', '4', '0', '', '', '1', '0', '128');
COMMIT;

-- ----------------------------
--  Table structure for `btRssDisplay`
-- ----------------------------
DROP TABLE IF EXISTS `btRssDisplay`;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btSearch`
-- ----------------------------
DROP TABLE IF EXISTS `btSearch`;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btSearch`
-- ----------------------------
BEGIN;
INSERT INTO `btSearch` VALUES ('42', 'Search This Site', 'Search', '', '', ''), ('50', 'Search Blog', 'Search', '/blog', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `btSlideshow`
-- ----------------------------
DROP TABLE IF EXISTS `btSlideshow`;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btSlideshowImg`
-- ----------------------------
DROP TABLE IF EXISTS `btSlideshowImg`;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btSurvey`
-- ----------------------------
DROP TABLE IF EXISTS `btSurvey`;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btSurveyOptions`
-- ----------------------------
DROP TABLE IF EXISTS `btSurveyOptions`;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btSurveyResults`
-- ----------------------------
DROP TABLE IF EXISTS `btSurveyResults`;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btTags`
-- ----------------------------
DROP TABLE IF EXISTS `btTags`;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `btTags`
-- ----------------------------
BEGIN;
INSERT INTO `btTags` VALUES ('14', 'Tags', '132', 'page', '0'), ('45', '', '132', 'cloud', '0'), ('51', 'Tags', '132', 'cloud', '0');
COMMIT;

-- ----------------------------
--  Table structure for `btVideo`
-- ----------------------------
DROP TABLE IF EXISTS `btVideo`;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `btYouTube`
-- ----------------------------
DROP TABLE IF EXISTS `btYouTube`;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
