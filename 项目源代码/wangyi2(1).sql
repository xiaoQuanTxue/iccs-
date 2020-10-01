/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : localhost:3306
 Source Schema         : wangyi2

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 29/06/2020 10:53:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1);
INSERT INTO `cart` VALUES (2, 2);
INSERT INTO `cart` VALUES (3, 3);
INSERT INTO `cart` VALUES (4, 5);
INSERT INTO `cart` VALUES (5, 6);
INSERT INTO `cart` VALUES (6, 7);
INSERT INTO `cart` VALUES (7, 8);
INSERT INTO `cart` VALUES (8, 11);

-- ----------------------------
-- Table structure for cartdetails
-- ----------------------------
DROP TABLE IF EXISTS `cartdetails`;
CREATE TABLE `cartdetails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车编号',
  `courseid` int(11) NULL DEFAULT NULL COMMENT '课程编号',
  `cartid` int(11) NULL DEFAULT NULL COMMENT '购物车编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter`  (
  `id` int(11) NOT NULL COMMENT '章节id',
  `chaptername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '章节名字',
  `courseid` int(11) NULL DEFAULT NULL COMMENT '课程编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES (1, '为什么要早点学Excel', 9);
INSERT INTO `chapter` VALUES (2, 'Excel原来可以这样玩', 9);
INSERT INTO `chapter` VALUES (3, '数据选择定位，快准狠', 9);
INSERT INTO `chapter` VALUES (4, '新手：高效录入和编辑', 9);
INSERT INTO `chapter` VALUES (5, '高手：事半功倍的小技巧', 9);
INSERT INTO `chapter` VALUES (6, '高手：Excel知识体系', 9);
INSERT INTO `chapter` VALUES (7, '高手：函数公式入门到阶段', 9);
INSERT INTO `chapter` VALUES (8, '专业： 让数据一目了然', 9);
INSERT INTO `chapter` VALUES (9, '专业： 数据图表入门到精通', 9);
INSERT INTO `chapter` VALUES (10, '专业： 数据透视表轻松统计数据', 9);
INSERT INTO `chapter` VALUES (11, '实战：提高效率，告别陋习', 9);
INSERT INTO `chapter` VALUES (12, '实战：表格打印其实不麻烦', 9);
INSERT INTO `chapter` VALUES (13, '【综合实战】应用强化技能', 9);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `coursename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名字',
  `courseprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `subscribenum` int(11) NULL DEFAULT NULL COMMENT '课程订阅数',
  `coursehour` int(11) NULL DEFAULT NULL COMMENT '学时',
  `category3id` int(11) NULL DEFAULT NULL COMMENT '课程二级分类',
  `viewsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面路径',
  `publish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  `discount` int(2) NULL DEFAULT NULL COMMENT '几折',
  `validtime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '有效时间',
  `institutionid` int(12) NULL DEFAULT NULL COMMENT '机构',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '2019 Unity3D制作《炉石传说》', 299.00, 0, 56, 1, '//edu-image.nosdn.127.net/3605d66a39194c729243d59bbd99c058.jpg?imageView&quality=100&crop=0_0_439_247&thumbnail=120y68', '2020-6-15', 80, '永久', 1);
INSERT INTO `course` VALUES (2, 'Unity5.x创造2D手机游戏入门课程', 89.00, 0, 56, 1, '//img-ph-mirror.nosdn.127.net/_R4qgJTLV1_W5Bp1hoXk1A==/6631477883536608583.jpg?imageView&quality=100&thumbnail=450y250', '2020-6-15', 0, '永久', 1);
INSERT INTO `course` VALUES (3, '交互设计大师之路', 60.00, 0, 23, 1, '////img-ph-mirror.nosdn.127.net/K7O2WKZzX4WT7TsLb60nQw==/4886968545751653084.png?imageView&quality=100&thumbnail=450y250', '2020-6-15', 0, '永久', 1);
INSERT INTO `course` VALUES (4, 'Unity3D 制作《极品飞车》游戏', 1.00, 2, 12, 1, '//edu-image.nosdn.127.net/c677f338aaa1451a844efc8f2affc392.jpg?imageView&quality=100&crop=0_1_1280_716&thumbnail=450y250', '2020-6-15', 0, '永久', 1);
INSERT INTO `course` VALUES (5, 'Web前端,从零基础到全栈工程师', 789.00, 3, 12, 1, 'https://edu-image.nosdn.127.net/030d9c7ba4bc4f829a98b52dbe376901.jpg?imageView&quality=100&crop=1_0_1078_608&thumbnail=450y250', '2020-6-15', 0, '永久', 2);
INSERT INTO `course` VALUES (6, 'jQuery经典教程系列（一）样式篇', 22.50, 0, 3, 1, 'https://edu-image.nosdn.127.net/ddac2ed8c3bd4671b11ef810556bca32.png?imageView&quality=100&crop=0_1_1080_606&thumbnail=450y250', '2020-6-15', 0, '永久', 2);
INSERT INTO `course` VALUES (7, 'jQuery经典教程系列（二）DOM篇', 18.00, 0, 3, 1, 'https://edu-image.nosdn.127.net/0218584345704884b27a4a241f0787fd.jpg?imageView&quality=100&crop=1_0_1078_607&thumbnail=450y250', '2020-6-15', 0, '永久', 2);
INSERT INTO `course` VALUES (8, 'jQuery经典教程系列（三）事件篇', 15.00, 0, 3, 1, 'https://edu-image.nosdn.127.net/8ef49b986d8d45e395df3376eb5738d1.png?imageView&quality=100&crop=1_0_1078_607&thumbnail=450y250', '2020-6-15', 0, '永久', 2);
INSERT INTO `course` VALUES (9, '和秋叶一起学Excel', 169.00, 11, 45, 0, 'https://edu-image.nosdn.127.net/4E00F476EFC28C667F429255701E1B7C.png?imageView&quality=100&thumbnail=225y125&type=webp', '2020-6-23', 0, '永久', 3);
INSERT INTO `course` VALUES (10, '哈哈', 12.00, 0, 11, 1, NULL, '2020-06-29', 121, '永久', 1);

-- ----------------------------
-- Table structure for coursedetails
-- ----------------------------
DROP TABLE IF EXISTS `coursedetails`;
CREATE TABLE `coursedetails`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '课程详情id',
  `courseid` int(10) NULL DEFAULT NULL COMMENT '课程id',
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用人群',
  `coursedescribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程概述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of coursedetails
-- ----------------------------
INSERT INTO `coursedetails` VALUES (1, 9, '工作中常用到Excel的人，想全面快速提升Excel技能水平的人，想系统学习Excel数据处理的学员。', 'Excel用得好，你就是Office中最牛的职场达人！<br>\r\n▌为你量身打造的Excel精品课程！<br>\r\n课程一次购买，永久有效，不限学习次数。<br>\r\n▌课程模式多种多样，视频讲解+图文课件+配套习题<br>\r\n视频讲解让你学会老师的每一步操作。<br/>\r\n配套的实例练习巩固学习知识。<br/>\r\n助你轻松高效掌握Excel中的核心技能。<br/>');

-- ----------------------------
-- Table structure for coursedetailsicon
-- ----------------------------
DROP TABLE IF EXISTS `coursedetailsicon`;
CREATE TABLE `coursedetailsicon`  (
  `id` int(11) NOT NULL COMMENT '课程详情图片 id',
  `coursedetailsid` int(10) NULL DEFAULT NULL COMMENT '课程详情id',
  `coursedetailsiconsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程详情图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of coursedetailsicon
-- ----------------------------
INSERT INTO `coursedetailsicon` VALUES (1, 1, 'img/qiuyeexcel1.webp');
INSERT INTO `coursedetailsicon` VALUES (2, 1, 'img/qiuyeexcel2.webp');
INSERT INTO `coursedetailsicon` VALUES (3, 1, 'img/qiuyeexcel3.webp');
INSERT INTO `coursedetailsicon` VALUES (4, 1, 'img/qiuyeexcel4.webp');
INSERT INTO `coursedetailsicon` VALUES (5, 1, 'img/qiuyeexcel5.webp');

-- ----------------------------
-- Table structure for direction
-- ----------------------------
DROP TABLE IF EXISTS `direction`;
CREATE TABLE `direction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '方向编号',
  `directionname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方向名称',
  `imgsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of direction
-- ----------------------------
INSERT INTO `direction` VALUES (1, '活动预告：好好学习节 底价将启', NULL);
INSERT INTO `direction` VALUES (2, '数据分析：6步规划快速上岗', NULL);
INSERT INTO `direction` VALUES (3, 'java开发：带你玩转架构核心技术', NULL);
INSERT INTO `direction` VALUES (4, '从零开店：14周打造能赚钱的店', NULL);
INSERT INTO `direction` VALUES (5, '投资理财：普通人投资股票的方法', NULL);
INSERT INTO `direction` VALUES (6, '限时赠书：用演讲力引爆全场！', NULL);
INSERT INTO `direction` VALUES (7, '自动化测试：Python接口实战', NULL);

-- ----------------------------
-- Table structure for institution
-- ----------------------------
DROP TABLE IF EXISTS `institution`;
CREATE TABLE `institution`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机构编号',
  `inname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `inpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构密码',
  `describee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构描述',
  `iconsrc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of institution
-- ----------------------------
INSERT INTO `institution` VALUES (1, '瑞亚游戏学院', '111', NULL, NULL, '已启用');
INSERT INTO `institution` VALUES (2, '李游Leo', '222', NULL, NULL, '已启用');
INSERT INTO `institution` VALUES (3, '幻方秋叶PPT', '333', '秋叶PPT团队官方账号\r\n国内Office领域领导品牌\r\n网易云课堂金牌讲师团队\r\n已开发有秋叶系列版权课程（零基础学office、和秋叶一起学Office等系列），超百万学员选择和秋叶一起学PPT', 'https://edu-image.nosdn.127.net/223E2D0D9D0AD15D8FBFE6D792B52218.png?imageView&quality=100&thumbnail=75y75', '已启用');
INSERT INTO `institution` VALUES (4, '流沙', '123', '聚散流沙', NULL, '已删除');
INSERT INTO `institution` VALUES (5, '鬼谷', '123', '一怒则诸侯惧，安居则天下息', NULL, '已启用');
INSERT INTO `institution` VALUES (6, 'a', '123', '123', NULL, '已启用');
INSERT INTO `institution` VALUES (7, '夜袭', '123', '123', NULL, '已启用');

-- ----------------------------
-- Table structure for lecturer
-- ----------------------------
DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE `lecturer`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '讲师编号',
  `lecturername` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '讲师名字',
  `lecturepassword` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '讲师密码',
  `institutionid` int(10) NULL DEFAULT NULL COMMENT '机构编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lecturer
-- ----------------------------
INSERT INTO `lecturer` VALUES (00000000001, 'zhangsan', '123', NULL);
INSERT INTO `lecturer` VALUES (00000000002, 'liwu', '321', NULL);

-- ----------------------------
-- Table structure for mystudy
-- ----------------------------
DROP TABLE IF EXISTS `mystudy`;
CREATE TABLE `mystudy`  (
  `courseStudyId` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(255) NULL DEFAULT NULL COMMENT '用户id',
  `courseid` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`courseStudyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mystudy
-- ----------------------------
INSERT INTO `mystudy` VALUES (1, 1, 1);
INSERT INTO `mystudy` VALUES (2, 2, 2);
INSERT INTO `mystudy` VALUES (3, 1, 5);
INSERT INTO `mystudy` VALUES (6, 3, 9);
INSERT INTO `mystudy` VALUES (9, 2, 9);
INSERT INTO `mystudy` VALUES (10, 2, 4);
INSERT INTO `mystudy` VALUES (11, 2, 5);
INSERT INTO `mystudy` VALUES (12, 2, 4);
INSERT INTO `mystudy` VALUES (13, 2, 5);
INSERT INTO `mystudy` VALUES (14, 1, 9);
INSERT INTO `mystudy` VALUES (15, 4, 9);
INSERT INTO `mystudy` VALUES (16, 5, 9);
INSERT INTO `mystudy` VALUES (17, 6, 9);
INSERT INTO `mystudy` VALUES (19, 7, 9);
INSERT INTO `mystudy` VALUES (21, 11, 9);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单列表id',
  `courseid` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `ordernum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单长编号',
  `secondordernum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '次级订单编号\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (90, 5, '20200622202542343', '20200622202542555');
INSERT INTO `orderitem` VALUES (91, 4, '20200622202542343', '20200622202542067');
INSERT INTO `orderitem` VALUES (92, 4, '20200622204948815', '20200622204948572');
INSERT INTO `orderitem` VALUES (93, 5, '20200622204948815', '20200622204948923');
INSERT INTO `orderitem` VALUES (98, 5, '20200625205506044', '20200625205506138');
INSERT INTO `orderitem` VALUES (99, 9, '20200625205506044', '20200625205506364');
INSERT INTO `orderitem` VALUES (100, 9, '20200625232034721', '20200625232034185');
INSERT INTO `orderitem` VALUES (101, 9, '20200626085428886', '20200626085428996');
INSERT INTO `orderitem` VALUES (102, 9, '20200626085441870', '20200626085441319');
INSERT INTO `orderitem` VALUES (104, 9, '20200626135927965', '20200626135927697');
INSERT INTO `orderitem` VALUES (106, 9, '20200626154133653', '20200626154133782');
INSERT INTO `orderitem` VALUES (107, 4, '20200626154549182', '20200626154549881');
INSERT INTO `orderitem` VALUES (108, 5, '20200626154549182', '20200626154549399');
INSERT INTO `orderitem` VALUES (110, 9, '20200626174849558', '20200626174849089');
INSERT INTO `orderitem` VALUES (112, 9, '20200626215722265', '20200626215722070');
INSERT INTO `orderitem` VALUES (113, 9, '20200626230326464', '20200626230326806');
INSERT INTO `orderitem` VALUES (114, 9, '20200627084519052', '20200627084519469');
INSERT INTO `orderitem` VALUES (115, 9, '20200627093517327', '20200627093517991');
INSERT INTO `orderitem` VALUES (116, 9, '20200627093540691', '20200627093540203');
INSERT INTO `orderitem` VALUES (117, 36, '20200627192647997', '20200627192647212');
INSERT INTO `orderitem` VALUES (118, 9, '20200629091451850', '20200629091451823');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `ordernum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `totalprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总价',
  `userid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态：交易成功，待支付，交易关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (21, '20200622154625130', '2020-06-22 00:00:00', 300.00, 1, '待支付');
INSERT INTO `orders` VALUES (22, '20200622154924547', '2020-06-22 00:00:00', 89.00, 1, '待支付');
INSERT INTO `orders` VALUES (24, '20200622170843726', '2020-06-22 00:00:00', 448.00, 1, '待支付');
INSERT INTO `orders` VALUES (27, '20200622202542343', '2020-06-22 00:00:00', 1.00, 2, '交易关闭');
INSERT INTO `orders` VALUES (28, '20200622204948815', '2020-06-22 00:00:00', 789.00, 2, '交易关闭');
INSERT INTO `orders` VALUES (30, '20200625205506044', '2020-06-25 00:00:00', 169.00, 1, '交易成功');
INSERT INTO `orders` VALUES (31, '20200625232034721', '2020-06-25 00:00:00', 169.00, 1, '交易成功');
INSERT INTO `orders` VALUES (32, '20200626085428886', '2020-06-26 00:00:00', 169.00, 3, '交易关闭');
INSERT INTO `orders` VALUES (33, '20200626085441870', '2020-06-26 00:00:00', 169.00, 3, '交易成功');
INSERT INTO `orders` VALUES (35, '20200626135927965', '2020-06-26 00:00:00', 169.00, 1, '交易成功');
INSERT INTO `orders` VALUES (37, '20200626154133653', '2020-06-26 00:00:00', 169.00, 2, '交易成功');
INSERT INTO `orders` VALUES (38, '20200626154549182', '2020-06-26 00:00:00', 789.00, 2, '交易成功');
INSERT INTO `orders` VALUES (40, '20200626174849558', '2020-06-26 17:48:49', 169.00, 1, '交易成功');
INSERT INTO `orders` VALUES (42, '20200626215722265', '2020-06-26 21:57:22', 169.00, 4, '交易成功');
INSERT INTO `orders` VALUES (43, '20200626230326464', '2020-06-26 23:03:26', 169.00, 5, '交易成功');
INSERT INTO `orders` VALUES (44, '20200627084519052', '2020-06-27 08:45:19', 169.00, 6, '交易成功');
INSERT INTO `orders` VALUES (45, '20200627093517327', '2020-06-27 09:35:17', 169.00, 7, '交易关闭');
INSERT INTO `orders` VALUES (46, '20200627093540691', '2020-06-27 09:35:40', 169.00, 7, '交易成功');
INSERT INTO `orders` VALUES (47, '20200627192647997', '2020-06-27 00:00:00', 0.00, 1, '待支付');
INSERT INTO `orders` VALUES (48, '20200629091451850', '2020-06-29 09:14:51', 169.00, 11, '交易成功');

-- ----------------------------
-- Table structure for pictures
-- ----------------------------
DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片标题',
  `pictureid` int(11) NULL DEFAULT NULL COMMENT '图片id',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图片所在页面',
  `des1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述1或课程名',
  `des2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pictures
-- ----------------------------
INSERT INTO `pictures` VALUES (1, '轮播图', 1, 'images/aa/轮播图1.jpg', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (2, '轮播图', 2, 'images/aa/轮播图2.jpg', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (3, '轮播图', 3, 'images/aa/轮播图3.jpg', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (4, '轮播图', 4, 'images/aa/轮播图4.jpg', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (5, '轮播图', 5, 'images/aa/轮播图5.jpg', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (6, '系统化学习路径', 6, 'images/aa/路径图1.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (7, '系统化学习路径', 7, 'images/aa/路径图2.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (8, '系统化学习路径', 8, 'images/aa/路径图3.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (9, '系统化学习路径', 9, 'images/aa/路径图4.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (10, '系统化学习路径', 10, 'images/aa/路径图5.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (11, '课堂直播1', 11, 'images/aa/教师1.jpg', '首页', '用程序做股票指标分析', '王冕 资深大数据架构工程师');
INSERT INTO `pictures` VALUES (12, '课堂直播1', 12, 'images/aa/教师2.jpg', '首页', '用商业智能报表分析服装业利润', '杨洁 网页特聘数据分析讲师');
INSERT INTO `pictures` VALUES (13, '课堂直播1', 13, 'images/aa/教师3.jpg', '首页', '如何成为合格的工程师', '张峰 网易云课堂专家讲师');
INSERT INTO `pictures` VALUES (14, '课堂直播2', 14, 'images/aa/教师4.png', '首页', '巧用PS搞定酷炫3D设计', '木松子旭 网易特邀设计师');
INSERT INTO `pictures` VALUES (15, '课堂直播2', 15, 'images/aa/教师5.png', '首页', '一节课掌握Excel动态分析报表', '王佩丰 微软全球MVP');
INSERT INTO `pictures` VALUES (16, '课堂直播2', 16, 'images/aa/教师6.jpg', '首页', '摄影人实用“摆摊”指南', '叶梓 知名旅行纪实摄影人');
INSERT INTO `pictures` VALUES (17, '微专业', 17, 'images/aa/微专业1.webp', '首页', '大数据开发工程师', '实战网易大数据项目，掌握大数据核心技巧');
INSERT INTO `pictures` VALUES (18, '微专业', 18, 'images/aa/微专业2.webp', '首页', 'UI设计师', '打通全链路，成为独当一面的核心设计师');
INSERT INTO `pictures` VALUES (19, '微专业', 19, 'images/aa/微专业3.webp', '首页', 'Java高级架构师', '精通Java/高并发/微服务/分布式/中间件');
INSERT INTO `pictures` VALUES (20, '微专业', 20, 'images/aa/微专业4.webp', '首页', '数据分析师', '从理论到实战，全技能数据分析人才培养');
INSERT INTO `pictures` VALUES (21, '限时秒杀1', 21, 'images/miaosha/ms1-1.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (22, '限时秒杀1', 22, 'images/miaosha/ms2-1.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (23, '限时秒杀1', 23, 'images/miaosha/ms3-1.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (24, '限时秒杀1', 24, 'images/miaosha/ms4.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (25, '限时秒杀1', 25, 'images/miaosha/ms5.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (26, '限时秒杀2', 26, 'images/miaosha/ms6.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (27, '限时秒杀3', 27, 'images/miaosha/ms7.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (28, '限时秒杀4', 28, 'images/miaosha/ms8.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (29, '限时秒杀5', 29, 'images/miaosha/ms9.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (30, '限时秒杀6', 30, 'images/miaosha/ms10.png', '首页', NULL, NULL);
INSERT INTO `pictures` VALUES (31, '系列课程', 31, 'images/xlkc/系列课程1.webp', '首页', '杨洋老师课程大合集', '全民一起玩Python');
INSERT INTO `pictures` VALUES (32, '系列课程', 32, 'images/xlkc/系列课程2.webp', '首页', '和顾领中一起玩设计', '平面设计入门到精通');
INSERT INTO `pictures` VALUES (33, '系列课程', 33, 'images/xlkc/系列课程3.webp', '首页', '张连永Project系列课程', '教你最地道的Project项目');
INSERT INTO `pictures` VALUES (34, '系列课程', 34, 'images/xlkc/系列课程4.webp', '首页', '影视制作进阶版', '学会自媒体的普世技能');
INSERT INTO `pictures` VALUES (35, '精选好课', 35, 'images/jxhk/精选好课1.webp', '首页', '跟橘子学PS', '云课堂行家精品课，PS入门必备');
INSERT INTO `pictures` VALUES (36, '精选好课', 36, 'images/jxhk/精选好课2.webp', '首页', '计量经济学及Stata应用', '直观解释计量方法');
INSERT INTO `pictures` VALUES (37, '精选好课', 9, 'images/jxhk/精选好课3.webp', '首页', '和秋叶一起学Excel', '为你量身打造精品课程');
INSERT INTO `pictures` VALUES (38, '精选好课', 38, 'images/jxhk/精选好课4.webp', '首页', 'PowerBI零售通用业务', '你身边的零售分析行家');
INSERT INTO `pictures` VALUES (39, '精选好课', 39, 'images/jxhk/精选好课5.webp', '首页', '学Excel图标做数据汇报', '面对一堆数据，不知道如何视觉化');
INSERT INTO `pictures` VALUES (40, '新课推荐', 40, 'images/xktj/新课推荐.webp', '首页', 'Excel实战训练营', '专属社群 全场陪伴');
INSERT INTO `pictures` VALUES (41, '新课推荐', 41, 'images/xktj/新课推荐2.webp', '首页', 'Power BI数据可视化', '提升报表整体设计');
INSERT INTO `pictures` VALUES (42, '新课推荐', 42, 'images/xktj/新课推荐3.webp', '首页', '电吉他三部曲', '带电吉他小白演奏');
INSERT INTO `pictures` VALUES (43, '新课推荐', 43, 'images/xktj/新课推荐4.webp', '首页', '抖音新媒体', '案例实战教学');
INSERT INTO `pictures` VALUES (44, '新课推荐', 44, 'images/xktj/新课推荐5.webp', '首页', '敏捷项目管理', '年项目管理经验');
INSERT INTO `pictures` VALUES (45, '免费好课', 45, 'images/mfhk5/免费好课.webp', '首页', '小白理财入门', '从入门到进阶');
INSERT INTO `pictures` VALUES (46, '免费好课', 46, 'images/mfhk5/免费好课2.webp', '首页', '跟王佩丰学Excel', '1800分钟Excel视频教程');
INSERT INTO `pictures` VALUES (47, '免费好课', 47, 'images/mfhk5/免费好课3.webp', '首页', 'Word高手技巧锦集', '提高办公效率');
INSERT INTO `pictures` VALUES (48, '免费好课', 48, 'images/mfhk5/免费好课5.webp', '首页', '免费学Python', '最好的Python基础教育');
INSERT INTO `pictures` VALUES (49, '免费好课', 49, 'images/mfhk5/免费好课4.webp', '首页', '从0到1做微信公众号', '深度学习模型');
INSERT INTO `pictures` VALUES (51, 'java', 51, 'images/search/java1.jpg', '搜索页', 'java开发工程师', '本微专业包含java基础入门，前端基础入门');
INSERT INTO `pictures` VALUES (52, 'java', 52, 'images/search/java2.jpg', '搜索页', 'java高级架构师', '采用场景化学习，明确在工作中的问题');
INSERT INTO `pictures` VALUES (53, 'java', 53, 'images/search/java3.jpg', '搜索页', 'javaee三大框架优惠套餐', '套餐主要介绍三大框架的知识点。');
INSERT INTO `pictures` VALUES (54, 'java', 54, 'images/search/java4.jpg', '搜索页', 'java学习指南系列', 'java学习指南，从入门语法到行业级技,');
INSERT INTO `pictures` VALUES (55, 'python', 55, 'images/search/python.jpg', '搜索页', 'python爬虫工程师', '从入门到进阶,知识点全面覆盖');
INSERT INTO `pictures` VALUES (56, 'python', 56, 'images/search/python2.jpg', '搜索页', 'python使用技能', '4大模块,28个专题,带你玩转python');
INSERT INTO `pictures` VALUES (57, 'python', 57, 'images/search/python3.jpg', '搜索页', 'python应用基础', '培养实战能力,确保学员学以致用');
INSERT INTO `pictures` VALUES (58, 'java', 58, 'images/search/java5.jpg', '搜索页', 'javaee就业实战框架系列', '从零基础开始,逐步带你进入javaee的世界');
INSERT INTO `pictures` VALUES (59, '头像', 59, NULL, NULL, NULL, NULL);
INSERT INTO `pictures` VALUES (60, '头像', 60, 'images/aa/教师1.jpg', '头像', '1', '');
INSERT INTO `pictures` VALUES (61, '头像', 61, 'images/aa/教师2.jpg', '头像', '2', NULL);

-- ----------------------------
-- Table structure for preorder
-- ----------------------------
DROP TABLE IF EXISTS `preorder`;
CREATE TABLE `preorder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseid` int(11) NOT NULL COMMENT '课程id',
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chapterId` int(11) NULL DEFAULT NULL,
  `vedio` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `inputtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, '秋叶老师带你一起学Excel', 1, 'video/课时一.wmv', '15:00');
INSERT INTO `section` VALUES (2, 'Excel的正确学习姿势', 1, 'https://vodm0pihssv.vod.126.net/edu-video/nos/mp4/2018/06/06/1009560242_1892d02ffd7e4ae096807865a5053cf9_sd.mp4?ak=7909bff134372bffca53cdc2c17adc27a4c38c6336120510aea1ae1790819de8d8cb7c597063d3c466116a8c5465f6de8fdf3f72006e612bf850876a7a19779f3059f726dc7bb86b92adbc3d5b34b132ea08614294bb42c50719db2a0dbcb5e34426afeac364f76a817da3b2623cd41e', '17:21');
INSERT INTO `section` VALUES (3, '早点学习Excel的四个理由', 1, 'video/课时三.wmv', '12:00');
INSERT INTO `section` VALUES (4, '如何下载练习资料？如何加入学员群', 1, 'video/课时四.mp4', '28:22');
INSERT INTO `section` VALUES (5, 'S02-1 五个案例看透Excel', 2, 'video/课时五.mp4', '11:20');
INSERT INTO `section` VALUES (6, ' S02-1 五个案例看透Excel', 2, 'video/课时六.mp4', '12:09');
INSERT INTO `section` VALUES (7, 'S02-2漂亮好用的Excel模板，你知道吗？-01', 2, 'video/课时七.mp4', '22:08');
INSERT INTO `section` VALUES (8, 'S02-2漂亮好用的Excel模板，你知道吗？-02', 2, 'video/课时八.mp4', '28:28');
INSERT INTO `section` VALUES (9, ' S03-1 快速选择数据四种方法-01', 3, 'video/课时九.mp4', '28:12');
INSERT INTO `section` VALUES (10, ' S03-1 快速选择数据四种方法-02', 3, 'video/课时十.mp4', '22:20');
INSERT INTO `section` VALUES (11, ' S03-2 高效查看数据的3个妙招-01', 3, 'video/课时11.mp4', '56:20');
INSERT INTO `section` VALUES (12, ' S03-2 高效查看数据的3个妙招-02', 3, 'video/课时12.mp4', '28:20');
INSERT INTO `section` VALUES (13, 'S04-1 纸张、图片上的表格怎么转入Excel-01', 4, 'video/课时13.mp4', '28:20');
INSERT INTO `section` VALUES (14, 'S04-1 纸张、图片上的表格怎么转入Excel-02', 4, 'video/课时14.mp4', '22:12');
INSERT INTO `section` VALUES (15, 'S04-2 PDF中的表格如何导入Excel?-01', 4, 'video/课时15.mp4', '22:21');
INSERT INTO `section` VALUES (16, 'S04-2 PDF中的表格如何导入Excel?-02', 4, 'video/课时16.mp4', '10;22');
INSERT INTO `section` VALUES (17, ' S04-3 网页和外部文件的数量批量带入Excel-01', 4, 'video/课时17.mp4', '20:56');
INSERT INTO `section` VALUES (18, ' S04-3 网页和外部文件的数量批量带入Excel-02', 4, 'video/课时18.mp4', '65:37');
INSERT INTO `section` VALUES (19, 'S04-4 手工录入数据，巧用填充能偷懒-01', 4, 'video/课时19.mp4', '8:39');
INSERT INTO `section` VALUES (20, ' S04-4 手工录入数据，巧用填充能偷懒-02', 4, 'video/课时20.mp4', '37:38');
INSERT INTO `section` VALUES (21, ' S04-5 批量输入数据，得活用键和公式-01', 4, 'video/课时21.mp4', '29:30');
INSERT INTO `section` VALUES (22, ' S04-5 批量输入数据，得活用键和公式-02', 4, 'video/课时22.mp4', '38:30');
INSERT INTO `section` VALUES (23, ' S04-6 别告诉我你懂复制粘贴-01', 4, 'video/课时23.mp4', '38:20');
INSERT INTO `section` VALUES (24, ' S04-6 别告诉我你懂复制粘贴-02', 4, 'video/课时24.mp4', '23:20');
INSERT INTO `section` VALUES (25, ' S05-1 身份证为什么会变乱码-01', 5, 'video/课时25.mp4', '29:20');
INSERT INTO `section` VALUES (26, 'S05-2 省时省事的下拉列表怎么做-02', 5, 'video/课时26.mp4', '37:49');
INSERT INTO `section` VALUES (27, 'S05-3 批量插入图片怎么最快？', 5, 'video/课时27.mp4', '47:30');
INSERT INTO `section` VALUES (28, 'S05-4 一键删除所有重复项', 5, 'video/课时28.mp4', '39:23');
INSERT INTO `section` VALUES (29, ' S05-5 如何筛选和统计重复项', 5, 'video/课时29.mp4', '27:29');
INSERT INTO `section` VALUES (30, ' S05-6 按颜色筛选和统计重复你会吗？', 5, 'video/课时30.mp4', '29:29');
INSERT INTO `section` VALUES (31, ' S05-7 一列拆成多列可以批量完成', 5, 'video/课时31.mp4', '29:40');
INSERT INTO `section` VALUES (32, ' S05-8 批量整理数据的技巧', 5, 'video/课时32.mp4', '38:30');
INSERT INTO `section` VALUES (33, 'S06  快速成长为Excel高手的秘诀', 6, 'video/课时33.mp4', '38:49');
INSERT INTO `section` VALUES (34, 'S07-1 比赛记分和排名轻松搞定', 7, 'video/课时34.mp4', '26:39');
INSERT INTO `section` VALUES (35, 'S07-2 别怕，函数公式并不难', 7, 'video/课时35.mp4', '37:20');
INSERT INTO `section` VALUES (36, 'S07-3 核对数据必备', 7, 'video/课时36.mp4', '20:39');
INSERT INTO `section` VALUES (37, 'S07-4 抽奖这样玩：Rand函数', 7, 'video/课时37.mp4', '29:20');
INSERT INTO `section` VALUES (38, ' S07-5 让Excel自动判断：if函数', 7, 'video/课时38.mp4', '20:20');
INSERT INTO `section` VALUES (39, ' S07-6 自动统计重复次数', 7, 'video/课时39.mp4', '20:20');
INSERT INTO `section` VALUES (40, 'S08-1 图形化呈现数据', 8, 'video/课时40.mp4', '27:30');
INSERT INTO `section` VALUES (41, ' S08-2 突出显示重点和异常数据', 8, 'video/课时41.mp4', '29:34');
INSERT INTO `section` VALUES (42, ' S08-3 自定义规则，让数据更好看', 8, 'video/课时42.mp4', '42:09');
INSERT INTO `section` VALUES (43, ' S09-1 如何制作图标', 9, 'video/课时43.mp4', '29:20');
INSERT INTO `section` VALUES (44, ' S09-2 必会的六种基础图表', 9, 'video/课时44.mp4', '83:20');
INSERT INTO `section` VALUES (45, 'S09-3 玩转组合图表，让表现力升级', 9, 'video/课时45.mp4', '9:20');
INSERT INTO `section` VALUES (46, 'S09-4 创意图表只需一招', 9, 'video/课时46.mp4', '20:20');
INSERT INTO `section` VALUES (47, 'S09-5 简单好用的mini图表', 9, 'video/课时47.mp4', '29:20');
INSERT INTO `section` VALUES (48, '  S09-6 高大上的交互式图表：PowerBI', 9, 'video/课时48.mp4', '30:27');
INSERT INTO `section` VALUES (49, ' S10-1 用透视表统计分析 点击拖拽就够了', 10, 'video/课时49.mp4', '28:02');
INSERT INTO `section` VALUES (50, '  S10-2 分组统计，透视表一键搞定', 10, 'video/课时50.mp4', '27:20');
INSERT INTO `section` VALUES (51, '  S10-3 巧用透视表统计按部门拆分表格', 10, 'video/课时51.mp4', '36:03');
INSERT INTO `section` VALUES (52, '  S11-1 公式为什么会计算失灵', 11, 'video/课时52.mp4', '92:02');
INSERT INTO `section` VALUES (53, '  S11-2 统计数据为什么会出现错漏', 11, 'video/课时53.mp4', '82:20');
INSERT INTO `section` VALUES (54, '   S11-3 函数计算、透视表统计怎么出错了？', 11, 'video/课时54.mp4', '28:20');
INSERT INTO `section` VALUES (55, '   S12 快速搞定表格打印疑难杂症', 12, 'video/课时55.mp4', '37:38');
INSERT INTO `section` VALUES (56, '   S13-1 如何快速合并多个Excel表', 13, 'video/课时56.mp4', '36:40');
INSERT INTO `section` VALUES (57, '   S13-2 管理项目进度就用甘特图', 13, 'video/课时57.mp4', '39:49');
INSERT INTO `section` VALUES (58, '   S13-3 强化技能小技巧', 13, 'video/课时58.mp4', '29:40');
INSERT INTO `section` VALUES (59, '   S13-4 工作中碰到的更多问题该如何解决？', 13, 'video/课时59.mp4', '28:29');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userid` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `truename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自我介绍',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq号码',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态（是否删除）',
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份（教师或学生）',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `spare` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '路西法', NULL, '男', NULL, '123', '1415990264@qq.com', '15757585652', NULL, 'images/aa/教师1.jpg', '删除', NULL, '2020-06-21 10:32:26', NULL);
INSERT INTO `users` VALUES (2, '德玛西亚', NULL, '男', NULL, '123', '', '', NULL, NULL, '删除', NULL, '2020-06-21 10:33:27', NULL);
INSERT INTO `users` VALUES (3, '该隐', NULL, '男', NULL, '123', '', '', NULL, NULL, '删除', NULL, '2020-06-21 10:33:50', NULL);
INSERT INTO `users` VALUES (4, '天山童姥', NULL, '女', NULL, '123', 'gong164@6755.com', '152525252252', NULL, NULL, '启用', NULL, '2020-06-26 09:55:39', NULL);
INSERT INTO `users` VALUES (5, '聂小倩', NULL, '女', NULL, '123', 'ningCaiCheng@liaozhai.com', '18844445555', NULL, NULL, '删除', NULL, '2020-06-26 11:02:06', NULL);
INSERT INTO `users` VALUES (6, '段誉', NULL, '男', NULL, '123', 'duanyu@tianlong.com', '13323332333', NULL, NULL, '启用', NULL, '2020-06-27 08:44:25', NULL);
INSERT INTO `users` VALUES (7, '小龙女', NULL, '女', NULL, '123', 'fefdfd', '12345456767', NULL, NULL, '启用', NULL, '2020-06-27 09:33:23', NULL);
INSERT INTO `users` VALUES (9, '赤瞳', '', '女', '夜袭', '123', '', '', '123', NULL, '启用', NULL, '2020-06-29 08:53:31', NULL);
INSERT INTO `users` VALUES (11, '三笠', '', '女', '调查兵团', '123', '', '', '123', NULL, '启用', NULL, '2020-06-29 09:14:11', NULL);
INSERT INTO `users` VALUES (12, '柯拉松', NULL, '男', NULL, '123', '123', '123', NULL, NULL, '启用', NULL, '2020-06-29 10:22:26', NULL);

SET FOREIGN_KEY_CHECKS = 1;
