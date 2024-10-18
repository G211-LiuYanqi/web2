
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `CATEGORYID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别标识',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'social impact');
INSERT INTO `category` VALUES ('2', 'medical');
INSERT INTO `category` VALUES ('3', 'Health');
INSERT INTO `category` VALUES ('4', 'education');
INSERT INTO `category` VALUES ('5', 'student');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `FUNDRAISERID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '募捐者 ID (PK)',
  `ORGANIZER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织者',
  `CAPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `TARGET_FUNDING` int NULL DEFAULT NULL COMMENT '目标资金',
  `CURRENT_FUNDING` int NULL DEFAULT NULL COMMENT '当前资金',
  `CITY` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `ACTIVE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '活跃状态',
  `CATEGORYID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES ('John', 'Edward', 'fundraising', 27000000, 20000000, 'GuangZhou', 'Active', '1');
INSERT INTO `fundraiser` VALUES ('Annie', 'William', 'Medical Fundraising', 2300000, 1900000, 'Beijing', 'Active', '2');
INSERT INTO `fundraiser` VALUES ('Bessie', 'Grace', 'Medical Fundraising', 880000, 778888, 'HaiNan', 'Active', '3');
INSERT INTO `fundraiser` VALUES ('Mabel', 'Nellie', 'Medical Fundraising', 300000, 268984, 'HuNan', 'Active', '4');
INSERT INTO `fundraiser` VALUES ('David', 'Louis', 'Medical Fundraising', 980000, 879882, 'Shanghai', 'Active', '5');

SET FOREIGN_KEY_CHECKS = 1;
