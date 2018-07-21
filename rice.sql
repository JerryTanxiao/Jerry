/*
Navicat MySQL Data Transfer

Source Server         : owen
Source Server Version : 50717
Source Host           : 192.168.0.237:3306
Source Database       : rice

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-21 17:37:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_consumption`
-- ----------------------------
DROP TABLE IF EXISTS `t_consumption`;
CREATE TABLE `t_consumption` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `cTime` date NOT NULL,
  `cOrderNumber` varchar(255) NOT NULL,
  `cMoney` double NOT NULL,
  `mId` int(11) NOT NULL,
  PRIMARY KEY (`cId`),
  KEY `dasdas` (`mId`),
  CONSTRAINT `dasdas` FOREIGN KEY (`mId`) REFERENCES `t_member` (`mId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_consumption
-- ----------------------------
INSERT INTO `t_consumption` VALUES ('1', '2018-07-13', '323', '3.21', '1');
INSERT INTO `t_consumption` VALUES ('3', '2018-07-12', '3213', '321', '1');
INSERT INTO `t_consumption` VALUES ('4', '2018-07-31', '21', '222', '1');
INSERT INTO `t_consumption` VALUES ('5', '2018-07-25', '423', '21', '2');

-- ----------------------------
-- Table structure for `t_diet`
-- ----------------------------
DROP TABLE IF EXISTS `t_diet`;
CREATE TABLE `t_diet` (
  `diet_theme` varchar(255) NOT NULL,
  `diet_info` text,
  `diet_date` date DEFAULT NULL,
  `diet_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`diet_theme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_diet
-- ----------------------------
INSERT INTO `t_diet` VALUES ('你信吗？玉米让你的眼睛更漂亮', '玉米，是许多人最爱的蔬菜。事实上，玉米不能算是蔬菜，因为它含有许多淀粉，热量较一般蔬菜高，因此在营养学上，玉米被归类为主食类。\r\n\r\n中医认为，玉米性平味甘，有开胃、健脾、除湿、利尿等作用，主治腹泻、消化不良、水肿等。根据营养分析，玉米含有醣类、蛋白质、胡萝卜素、黄体素、玉米黄质、磷、镁、钾、锌等。老年黄斑性病变(AMD)是眼睛老化所造成的疾病，严重时会造成视力缺损。从许多流行病学的研究发现，黄体素、玉米黄质，可以预防老年黄斑性病变的产生。\r\n\r\n根据1994年美国哈佛大学医学院和许多研究中心一起做的研究显示，摄取较高量的黄体素和玉米黄质，能降低43%罹患老年黄斑性病变的机率。玉米含有黄体素、玉米黄质，尤其后者含量较丰，因此玉米可说是抗眼睛老化的极佳补充食物。\r\n\r\n从抗自由基角度来看，美国康乃尔大学在《农业与食品化学期刊》的研究显示，在摄氏115度下，将甜玉米分别加热10分钟、25分钟和50分钟后发现，其抗自由基的活性依序升高了22%、44%和53%。市面上的玉米罐头，可提供不同的烹调使用，但玉米易受潮发霉而易产生黄曲毒素，因此保存时应置于阴凉干燥处。', '2015-12-29', 'five_a.jpg');

-- ----------------------------
-- Table structure for `t_discounts`
-- ----------------------------
DROP TABLE IF EXISTS `t_discounts`;
CREATE TABLE `t_discounts` (
  `discountsname` varchar(255) NOT NULL,
  PRIMARY KEY (`discountsname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_discounts
-- ----------------------------
INSERT INTO `t_discounts` VALUES ('回锅肉');
INSERT INTO `t_discounts` VALUES ('宫保鸡丁');
INSERT INTO `t_discounts` VALUES ('水煮鱼');
INSERT INTO `t_discounts` VALUES ('秘汁月牙骨');
INSERT INTO `t_discounts` VALUES ('红焖羊肉胡萝卜');
INSERT INTO `t_discounts` VALUES ('香煎老鹅干巴');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goodsname` varchar(255) NOT NULL,
  `goodsprice` double(11,0) NOT NULL DEFAULT '0',
  `goodsimage` varchar(255) NOT NULL,
  `goodscontent` varchar(255) NOT NULL,
  `goodsdate` datetime DEFAULT NULL,
  `goodstype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodsname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('五谷杂粮蒸味', '30', 'three_e.jpg', '我不愿意用更多的词语形容这菜好不好次，什么软糯香辣、齿颊留香......都是浮云，它自己会说话，试试你就知道。', '2018-07-12 00:00:00', '经典主食');
INSERT INTO `t_goods` VALUES ('回锅肉', '35', 'one_meat.jpg', '回锅肉作为一道传统川菜，一直被认为是川菜之首，川菜的化身。它色香味俱全，色泽红亮，是最好的下饭菜之首选。', '2018-07-12 14:10:22', '经典主食');
INSERT INTO `t_goods` VALUES ('回锅香辣猪蹄', '46', 'three_b.jpg', '我不愿意用更多的词语形容这菜好不好次，什么软糯香辣、齿颊留香......都是浮云，它自己会说话，试试你就知道。', '2018-07-12 14:10:24', '经典主食');
INSERT INTO `t_goods` VALUES ('奶油培根意面', '20', 'nypgym.jpg', '主料：直身意面150g，培根2片，淡奶油150ml，高汤2大勺（没有可省略），口蘑3个，西兰花30g，洋葱1/4个，大蒜碎1大勺配料：奶酪粉，黑胡椒碎，盐', '2018-07-12 14:10:28', '特色面点');
INSERT INTO `t_goods` VALUES ('宫保鸡丁', '37', 'one_chunk.jpg', '宫保鸡丁是川菜中最具代表性的菜品之一。其红而不辣、辣而不猛、香辣味浓、肉质滑脆。', '2018-07-12 14:10:30', '经典主食');
INSERT INTO `t_goods` VALUES ('意大利肉酱面', '20', 'ydlm.jpg', '意大利面条（如果没有，普通面条也行，就是没有意大利面的味道），甜面酱，番茄酱，黄瓜，洋葱，胡萝卜，大葱，大蒜，肉，香菜', '2018-07-12 14:10:33', '特色面点');
INSERT INTO `t_goods` VALUES ('担担面', '12', 'ddm.jpg', '银丝面，肉末，豌豆尖，辣椒油，花椒面，盐，味精，酱油，蒜泥，葱花，麻油，芽菜末', '2018-07-12 14:10:36', '特色面点');
INSERT INTO `t_goods` VALUES ('排毒美颜汤', '35', 'pdyyt.jpg', '具有排毒养颜功能，适合大多数女士哦', '2018-07-12 14:10:39', '营养汤品');
INSERT INTO `t_goods` VALUES ('枸杞鱼片汤', '30', 'gjypt.jpg', '枸杞叶具有养肝、滋肾、润肺作用，同时对于头晕目眩;目视不清;腰膝酸软等也有好处。', '2018-07-12 14:10:42', '营养汤品');
INSERT INTO `t_goods` VALUES ('水煮鱼', '50', 'one_fish.jpg', '水煮鱼又称江水煮江鱼，是一道四川及重庆市的汉族传统名菜，“麻上头，辣过瘾”，让水煮鱼在全国流行得一塌糊涂。', '2018-07-12 14:10:45', '经典主食');
INSERT INTO `t_goods` VALUES ('炒面', '15', 'cm.jpg', '1.锅内放油烧热，加入葱花和肉丁，待肉丁变白后加入蘑菇2.倒入面条，翻动几下后倒入菠菜，最后放入几勺酱油和适量盐，待炒面变成金黄色后即可出锅。', '2018-07-12 14:10:47', '特色面点');
INSERT INTO `t_goods` VALUES ('炸酱面', '10', 'zjm.jpg', '半肥瘦肉末500克、黄酱、清水150毫升、香葱1根、老抽1勺、绿豆芽200克、黄瓜1根、面条适量、大蒜末适量、醋适量', '2018-07-12 14:10:50', '特色面点');
INSERT INTO `t_goods` VALUES ('番茄蔬菜豆腐汤', '20', 'xqscdft.jpg', '天气开始变冷了 来一锅清甜的番茄蔬菜豆腐汤:) 少了番茄酱或番茄罐头的添加 可以完完全全喝到蔬菜的鲜甜 简单就有好味道;D (食材为3-4人份)', '2018-07-12 14:10:52', '营养汤品');
INSERT INTO `t_goods` VALUES ('秋天的香浓南瓜汤', '50', 'qtdxlngt.jpg', '这道南瓜浓汤有让我对南瓜彻底改观,尝起来不是甜腻而是清甜加上脆脆的南瓜子增加口感,再撒上一点点黑胡椒提味,暖暖的浓汤配上几片面包,在这忽凉忽热的秋天便可是一顿轻松美味的午餐', '2018-07-12 14:11:00', '营养汤品');
INSERT INTO `t_goods` VALUES ('秘汁月牙骨', '37', 'one_e.jpg', '猪月牙骨（取自猪肘骨上方的一节骨头），含有丰富胶原蛋白，也被叫做美人骨。用猪月牙骨烹煮的菜品营养丰富，而且是滋补养颜的佳品。骨头嚼起来比较脆，就像吃脆骨一样，骨脆而且带蜜汁甜味，不仅可佐酒，小朋友也同样爱吃。', '2018-07-12 14:11:04', '经典主食');
INSERT INTO `t_goods` VALUES ('红焖羊肉胡萝卜', '43', 'one_d.jpg', '羊肉是秋冬季进补佳品。其肉质细嫩，味道鲜美，含有丰富的营养。 胡萝卜富含胡萝卜素，与油脂结合能转变为维生素A，具有明目的效果。而油豆腐不但外形漂亮，更是富含植物蛋白质。此道菜虽然简单，但营养价值颇高，是秋冬季的营养美食。', '2018-07-12 14:11:07', '经典主食');
INSERT INTO `t_goods` VALUES ('肉丸豆腐清汤', '30', 'rwdfqt.jpg', '冬季的高丽菜和青葱，凝聚了季节的甘甜和特有的香气，与猪绞肉结合成的肉丸，加上豆腐和高丽菜叶煮成一碗热呼呼的清汤，简单又美味。', '2018-07-12 14:11:09', '营养汤品');
INSERT INTO `t_goods` VALUES ('臊子面', '16', 'szm.jpg', '猪肉末200克，熏干1块，挂面400克，青菜叶6片，姜10克，香醋45毫升，酱油15毫升，料酒30毫升，白糖10克，盐5克，红油15毫升，花椒粉10克，香葱少许，芝麻少许', '2018-07-12 14:11:12', '特色面点');
INSERT INTO `t_goods` VALUES ('菠菜猪肝汤', '25', 'bczgt.jpg', '猪肝先漂烫可以去掉杂质ˊ也可以在真正 下锅煮时ˊ更好控制它的鲜嫩度。另一方面ˊ汤完成也会比较清澈干净ˊ不会太浑浊ˊ蔬菜类最好都先冲洗干净再处理成适当大小ˊ不要先切再洗ˊ这样营养成份会流失哦~提供大家参考~', '2018-07-12 14:11:14', '营养汤品');
INSERT INTO `t_goods` VALUES ('蘸酱腊肉', '50', 'three_c.jpg', '1.肉尽量不要用水清洗，容易变质2.腌制的腊肉，温度一定要低，否则也容易变质3.花椒盐的配方请参考我的方子4.煮腌料的时候火一定要小，不然会糊掉5.腌制的时候，尽量使用搪瓷，陶瓷或者玻璃容器6.花雕尽量选用优质陈年的黄酒，白酒我用的是茅台之类的酱香型，味道绝对会不一样7.黄酒和白酒一定要最后放，不然香味会散掉8.花椒必须用四川大红袍', '2018-07-12 14:11:17', '经典主食');
INSERT INTO `t_goods` VALUES ('香煎老鹅干巴', '49', 'one_f.jpg', '	“鹅，鹅，鹅，曲项向天歌。白毛浮绿水，红掌拨清波。”由农村饲养的土鹅，宰杀后加辣椒粉、花椒粉、茴香粉等香料和盐腌制后晾干而得来的干巴，味道香脆可口，齿颊留香，性质温和，吃了也不易上火。。', '2018-07-12 14:11:19', '经典主食');
INSERT INTO `t_goods` VALUES ('龙虾伴鱼丸', '100', 'three_d.jpg', '我不愿意用更多的词语形容这菜好不好次，什么软糯香辣、齿颊留香......都是浮云，它自己会说话，试试你就知道。', '2018-07-12 14:11:21', '经典主食');

-- ----------------------------
-- Table structure for `t_member`
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `mName` varchar(255) DEFAULT NULL,
  `mVipLevel` varchar(255) NOT NULL,
  `mPhone` varchar(255) DEFAULT NULL,
  `mPrice` double DEFAULT NULL,
  `mDiscount` double DEFAULT NULL,
  `mUsername` varchar(255) NOT NULL,
  PRIMARY KEY (`mId`),
  KEY `sfasdhd` (`mUsername`),
  CONSTRAINT `sfasdhd` FOREIGN KEY (`mUsername`) REFERENCES `t_user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES ('1', 'jjj', '1', '123222', '2', '1', 'tom');
INSERT INTO `t_member` VALUES ('2', '1', '2', '1', '3', '2', 'jerry');
INSERT INTO `t_member` VALUES ('3', null, '9', null, null, null, '12323234343');
INSERT INTO `t_member` VALUES ('4', null, '9', null, null, null, '18798745365');

-- ----------------------------
-- Table structure for `t_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge`;
CREATE TABLE `t_recharge` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `rTime` date NOT NULL,
  `rOrderNumber` varchar(255) NOT NULL,
  `rMoney` double NOT NULL,
  `mId` int(11) NOT NULL,
  PRIMARY KEY (`rId`),
  KEY `ghfs` (`mId`),
  CONSTRAINT `ghfs` FOREIGN KEY (`mId`) REFERENCES `t_member` (`mId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recharge
-- ----------------------------
INSERT INTO `t_recharge` VALUES ('1', '2018-07-17', '231', '41', '1');
INSERT INTO `t_recharge` VALUES ('2', '2018-07-25', '31', '4321', '1');
INSERT INTO `t_recharge` VALUES ('3', '2018-07-24', '3', '312', '2');
INSERT INTO `t_recharge` VALUES ('4', '2018-07-13', '432', '432', '1');
INSERT INTO `t_recharge` VALUES ('5', '2018-07-13', '432', '432', '1');
INSERT INTO `t_recharge` VALUES ('6', '2018-07-13', '534', '5', '1');
INSERT INTO `t_recharge` VALUES ('7', '2018-07-13', '4', '2131', '1');
INSERT INTO `t_recharge` VALUES ('8', '2018-07-25', '4', '523', '1');
INSERT INTO `t_recharge` VALUES ('9', '2018-07-16', '2', '65', '1');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('12323234343', '123');
INSERT INTO `t_user` VALUES ('123', '123');
INSERT INTO `t_user` VALUES ('15223226277', 'pptisppt');
INSERT INTO `t_user` VALUES ('18798745365', 'zxcvbnm');
INSERT INTO `t_user` VALUES ('jerry', 'jerry');
INSERT INTO `t_user` VALUES ('tom', 'tom');
